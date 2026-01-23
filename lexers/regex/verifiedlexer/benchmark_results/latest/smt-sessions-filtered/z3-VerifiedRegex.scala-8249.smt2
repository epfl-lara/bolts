; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!428144 () Bool)

(assert start!428144)

(declare-datatypes ((K!10650 0))(
  ( (K!10651 (val!16791 Int)) )
))
(declare-datatypes ((V!10896 0))(
  ( (V!10897 (val!16792 Int)) )
))
(declare-datatypes ((tuple2!48902 0))(
  ( (tuple2!48903 (_1!27745 K!10650) (_2!27745 V!10896)) )
))
(declare-datatypes ((List!49418 0))(
  ( (Nil!49294) (Cons!49294 (h!54923 tuple2!48902) (t!356352 List!49418)) )
))
(declare-datatypes ((ListMap!2493 0))(
  ( (ListMap!2494 (toList!3249 List!49418)) )
))
(declare-fun lt!1607082 () ListMap!2493)

(declare-fun lt!1607086 () ListMap!2493)

(declare-datatypes ((tuple2!48904 0))(
  ( (tuple2!48905 (_1!27746 (_ BitVec 64)) (_2!27746 List!49418)) )
))
(declare-datatypes ((List!49419 0))(
  ( (Nil!49295) (Cons!49295 (h!54924 tuple2!48904) (t!356353 List!49419)) )
))
(declare-datatypes ((ListLongMap!1899 0))(
  ( (ListLongMap!1900 (toList!3250 List!49419)) )
))
(declare-fun lm!1707 () ListLongMap!1899)

(declare-fun b!4402443 () Bool)

(declare-fun e!2741248 () Bool)

(declare-fun addToMapMapFromBucket!299 (List!49418 ListMap!2493) ListMap!2493)

(assert (=> b!4402443 (= e!2741248 (= lt!1607086 (addToMapMapFromBucket!299 (_2!27746 (h!54924 (toList!3250 lm!1707))) lt!1607082)))))

(declare-fun e!2741253 () Bool)

(assert (=> b!4402443 e!2741253))

(declare-fun res!1816040 () Bool)

(assert (=> b!4402443 (=> (not res!1816040) (not e!2741253))))

(declare-fun lt!1607074 () ListLongMap!1899)

(declare-fun lt!1607073 () tuple2!48904)

(declare-fun lt!1607083 () tuple2!48902)

(declare-fun eq!339 (ListMap!2493 ListMap!2493) Bool)

(declare-fun extractMap!692 (List!49419) ListMap!2493)

(declare-fun +!881 (ListLongMap!1899 tuple2!48904) ListLongMap!1899)

(declare-fun +!882 (ListMap!2493 tuple2!48902) ListMap!2493)

(assert (=> b!4402443 (= res!1816040 (eq!339 (extractMap!692 (toList!3250 (+!881 lt!1607074 lt!1607073))) (+!882 lt!1607082 lt!1607083)))))

(declare-fun hash!377 () (_ BitVec 64))

(declare-datatypes ((Unit!79009 0))(
  ( (Unit!79010) )
))
(declare-fun lt!1607079 () Unit!79009)

(declare-datatypes ((Hashable!5025 0))(
  ( (HashableExt!5024 (__x!30728 Int)) )
))
(declare-fun hashF!1247 () Hashable!5025)

(declare-fun key!3918 () K!10650)

(declare-fun newValue!99 () V!10896)

(declare-fun newBucket!200 () List!49418)

(declare-fun lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!137 (ListLongMap!1899 (_ BitVec 64) List!49418 K!10650 V!10896 Hashable!5025) Unit!79009)

(assert (=> b!4402443 (= lt!1607079 (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!137 lt!1607074 hash!377 newBucket!200 key!3918 newValue!99 hashF!1247))))

(declare-fun contains!11691 (ListMap!2493 K!10650) Bool)

(assert (=> b!4402443 (contains!11691 lt!1607082 key!3918)))

(assert (=> b!4402443 (= lt!1607082 (extractMap!692 (toList!3250 lt!1607074)))))

(declare-fun tail!7123 (ListLongMap!1899) ListLongMap!1899)

(assert (=> b!4402443 (= lt!1607074 (tail!7123 lm!1707))))

(declare-fun lt!1607072 () ListMap!2493)

(assert (=> b!4402443 (contains!11691 lt!1607072 key!3918)))

(declare-fun lt!1607085 () Unit!79009)

(declare-fun lemmaAddToMapContainsAndNotInListThenInAcc!92 (List!49418 K!10650 V!10896 ListMap!2493) Unit!79009)

(assert (=> b!4402443 (= lt!1607085 (lemmaAddToMapContainsAndNotInListThenInAcc!92 (_2!27746 (h!54924 (toList!3250 lm!1707))) key!3918 newValue!99 lt!1607072))))

(assert (=> b!4402443 (= lt!1607072 (extractMap!692 (t!356353 (toList!3250 lm!1707))))))

(declare-fun e!2741250 () Bool)

(assert (=> b!4402443 e!2741250))

(declare-fun res!1816035 () Bool)

(assert (=> b!4402443 (=> (not res!1816035) (not e!2741250))))

(declare-fun containsKey!947 (List!49418 K!10650) Bool)

(declare-fun apply!11485 (ListLongMap!1899 (_ BitVec 64)) List!49418)

(assert (=> b!4402443 (= res!1816035 (not (containsKey!947 (apply!11485 lm!1707 (_1!27746 (h!54924 (toList!3250 lm!1707)))) key!3918)))))

(declare-fun lt!1607084 () Unit!79009)

(declare-fun lemmaNotSameHashThenCannotContainKey!104 (ListLongMap!1899 K!10650 (_ BitVec 64) Hashable!5025) Unit!79009)

(assert (=> b!4402443 (= lt!1607084 (lemmaNotSameHashThenCannotContainKey!104 lm!1707 key!3918 (_1!27746 (h!54924 (toList!3250 lm!1707))) hashF!1247))))

(declare-fun b!4402444 () Bool)

(declare-fun res!1816039 () Bool)

(declare-fun e!2741249 () Bool)

(assert (=> b!4402444 (=> (not res!1816039) (not e!2741249))))

(declare-fun contains!11692 (ListLongMap!1899 (_ BitVec 64)) Bool)

(assert (=> b!4402444 (= res!1816039 (contains!11692 lm!1707 hash!377))))

(declare-fun b!4402445 () Bool)

(declare-fun tp_is_empty!25769 () Bool)

(declare-fun tp_is_empty!25771 () Bool)

(declare-fun tp!1331899 () Bool)

(declare-fun e!2741255 () Bool)

(assert (=> b!4402445 (= e!2741255 (and tp_is_empty!25769 tp_is_empty!25771 tp!1331899))))

(declare-fun b!4402446 () Bool)

(assert (=> b!4402446 (= e!2741250 (not (containsKey!947 (_2!27746 (h!54924 (toList!3250 lm!1707))) key!3918)))))

(declare-fun b!4402447 () Bool)

(declare-fun res!1816038 () Bool)

(declare-fun e!2741256 () Bool)

(assert (=> b!4402447 (=> res!1816038 e!2741256)))

(declare-fun noDuplicateKeys!633 (List!49418) Bool)

(assert (=> b!4402447 (= res!1816038 (not (noDuplicateKeys!633 newBucket!200)))))

(declare-fun b!4402448 () Bool)

(assert (=> b!4402448 (= e!2741256 e!2741248)))

(declare-fun res!1816041 () Bool)

(assert (=> b!4402448 (=> res!1816041 e!2741248)))

(get-info :version)

(assert (=> b!4402448 (= res!1816041 (or (and ((_ is Cons!49295) (toList!3250 lm!1707)) (= (_1!27746 (h!54924 (toList!3250 lm!1707))) hash!377)) (not ((_ is Cons!49295) (toList!3250 lm!1707))) (= (_1!27746 (h!54924 (toList!3250 lm!1707))) hash!377)))))

(declare-fun e!2741251 () Bool)

(assert (=> b!4402448 e!2741251))

(declare-fun res!1816045 () Bool)

(assert (=> b!4402448 (=> (not res!1816045) (not e!2741251))))

(declare-fun lt!1607080 () ListLongMap!1899)

(declare-fun lambda!149221 () Int)

(declare-fun forall!9378 (List!49419 Int) Bool)

(assert (=> b!4402448 (= res!1816045 (forall!9378 (toList!3250 lt!1607080) lambda!149221))))

(assert (=> b!4402448 (= lt!1607080 (+!881 lm!1707 lt!1607073))))

(assert (=> b!4402448 (= lt!1607073 (tuple2!48905 hash!377 newBucket!200))))

(declare-fun lt!1607075 () Unit!79009)

(declare-fun addValidProp!279 (ListLongMap!1899 Int (_ BitVec 64) List!49418) Unit!79009)

(assert (=> b!4402448 (= lt!1607075 (addValidProp!279 lm!1707 lambda!149221 hash!377 newBucket!200))))

(assert (=> b!4402448 (forall!9378 (toList!3250 lm!1707) lambda!149221)))

(declare-fun b!4402449 () Bool)

(declare-fun e!2741252 () Bool)

(assert (=> b!4402449 (= e!2741252 e!2741249)))

(declare-fun res!1816042 () Bool)

(assert (=> b!4402449 (=> (not res!1816042) (not e!2741249))))

(assert (=> b!4402449 (= res!1816042 (contains!11691 lt!1607086 key!3918))))

(assert (=> b!4402449 (= lt!1607086 (extractMap!692 (toList!3250 lm!1707)))))

(declare-fun b!4402450 () Bool)

(declare-fun head!9112 (ListLongMap!1899) tuple2!48904)

(assert (=> b!4402450 (= e!2741253 (not (= (head!9112 lm!1707) lt!1607073)))))

(declare-fun b!4402451 () Bool)

(declare-fun res!1816037 () Bool)

(assert (=> b!4402451 (=> (not res!1816037) (not e!2741252))))

(declare-fun allKeysSameHash!591 (List!49418 (_ BitVec 64) Hashable!5025) Bool)

(assert (=> b!4402451 (= res!1816037 (allKeysSameHash!591 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4402452 () Bool)

(assert (=> b!4402452 (= e!2741251 (forall!9378 (toList!3250 lt!1607080) lambda!149221))))

(declare-fun b!4402453 () Bool)

(declare-fun res!1816043 () Bool)

(assert (=> b!4402453 (=> (not res!1816043) (not e!2741252))))

(declare-fun allKeysSameHashInMap!737 (ListLongMap!1899 Hashable!5025) Bool)

(assert (=> b!4402453 (= res!1816043 (allKeysSameHashInMap!737 lm!1707 hashF!1247))))

(declare-fun b!4402454 () Bool)

(declare-fun res!1816034 () Bool)

(assert (=> b!4402454 (=> (not res!1816034) (not e!2741252))))

(declare-fun hash!1889 (Hashable!5025 K!10650) (_ BitVec 64))

(assert (=> b!4402454 (= res!1816034 (= (hash!1889 hashF!1247 key!3918) hash!377))))

(declare-fun res!1816044 () Bool)

(assert (=> start!428144 (=> (not res!1816044) (not e!2741252))))

(assert (=> start!428144 (= res!1816044 (forall!9378 (toList!3250 lm!1707) lambda!149221))))

(assert (=> start!428144 e!2741252))

(assert (=> start!428144 e!2741255))

(assert (=> start!428144 true))

(declare-fun e!2741254 () Bool)

(declare-fun inv!64836 (ListLongMap!1899) Bool)

(assert (=> start!428144 (and (inv!64836 lm!1707) e!2741254)))

(assert (=> start!428144 tp_is_empty!25769))

(assert (=> start!428144 tp_is_empty!25771))

(declare-fun b!4402455 () Bool)

(assert (=> b!4402455 (= e!2741249 (not e!2741256))))

(declare-fun res!1816036 () Bool)

(assert (=> b!4402455 (=> res!1816036 e!2741256)))

(declare-fun lt!1607077 () List!49418)

(declare-fun removePairForKey!601 (List!49418 K!10650) List!49418)

(assert (=> b!4402455 (= res!1816036 (not (= newBucket!200 (Cons!49294 lt!1607083 (removePairForKey!601 lt!1607077 key!3918)))))))

(assert (=> b!4402455 (= lt!1607083 (tuple2!48903 key!3918 newValue!99))))

(declare-fun lt!1607078 () Unit!79009)

(declare-fun lt!1607081 () tuple2!48904)

(declare-fun forallContained!2013 (List!49419 Int tuple2!48904) Unit!79009)

(assert (=> b!4402455 (= lt!1607078 (forallContained!2013 (toList!3250 lm!1707) lambda!149221 lt!1607081))))

(declare-fun contains!11693 (List!49419 tuple2!48904) Bool)

(assert (=> b!4402455 (contains!11693 (toList!3250 lm!1707) lt!1607081)))

(assert (=> b!4402455 (= lt!1607081 (tuple2!48905 hash!377 lt!1607077))))

(declare-fun lt!1607076 () Unit!79009)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!478 (List!49419 (_ BitVec 64) List!49418) Unit!79009)

(assert (=> b!4402455 (= lt!1607076 (lemmaGetValueByKeyImpliesContainsTuple!478 (toList!3250 lm!1707) hash!377 lt!1607077))))

(assert (=> b!4402455 (= lt!1607077 (apply!11485 lm!1707 hash!377))))

(declare-fun b!4402456 () Bool)

(declare-fun tp!1331900 () Bool)

(assert (=> b!4402456 (= e!2741254 tp!1331900)))

(assert (= (and start!428144 res!1816044) b!4402453))

(assert (= (and b!4402453 res!1816043) b!4402454))

(assert (= (and b!4402454 res!1816034) b!4402451))

(assert (= (and b!4402451 res!1816037) b!4402449))

(assert (= (and b!4402449 res!1816042) b!4402444))

(assert (= (and b!4402444 res!1816039) b!4402455))

(assert (= (and b!4402455 (not res!1816036)) b!4402447))

(assert (= (and b!4402447 (not res!1816038)) b!4402448))

(assert (= (and b!4402448 res!1816045) b!4402452))

(assert (= (and b!4402448 (not res!1816041)) b!4402443))

(assert (= (and b!4402443 res!1816035) b!4402446))

(assert (= (and b!4402443 res!1816040) b!4402450))

(assert (= (and start!428144 ((_ is Cons!49294) newBucket!200)) b!4402445))

(assert (= start!428144 b!4402456))

(declare-fun m!5066357 () Bool)

(assert (=> b!4402454 m!5066357))

(declare-fun m!5066359 () Bool)

(assert (=> b!4402448 m!5066359))

(declare-fun m!5066361 () Bool)

(assert (=> b!4402448 m!5066361))

(declare-fun m!5066363 () Bool)

(assert (=> b!4402448 m!5066363))

(declare-fun m!5066365 () Bool)

(assert (=> b!4402448 m!5066365))

(declare-fun m!5066367 () Bool)

(assert (=> b!4402446 m!5066367))

(declare-fun m!5066369 () Bool)

(assert (=> b!4402450 m!5066369))

(declare-fun m!5066371 () Bool)

(assert (=> b!4402451 m!5066371))

(declare-fun m!5066373 () Bool)

(assert (=> b!4402453 m!5066373))

(declare-fun m!5066375 () Bool)

(assert (=> b!4402455 m!5066375))

(declare-fun m!5066377 () Bool)

(assert (=> b!4402455 m!5066377))

(declare-fun m!5066379 () Bool)

(assert (=> b!4402455 m!5066379))

(declare-fun m!5066381 () Bool)

(assert (=> b!4402455 m!5066381))

(declare-fun m!5066383 () Bool)

(assert (=> b!4402455 m!5066383))

(assert (=> start!428144 m!5066365))

(declare-fun m!5066385 () Bool)

(assert (=> start!428144 m!5066385))

(declare-fun m!5066387 () Bool)

(assert (=> b!4402449 m!5066387))

(declare-fun m!5066389 () Bool)

(assert (=> b!4402449 m!5066389))

(declare-fun m!5066391 () Bool)

(assert (=> b!4402444 m!5066391))

(declare-fun m!5066393 () Bool)

(assert (=> b!4402447 m!5066393))

(declare-fun m!5066395 () Bool)

(assert (=> b!4402443 m!5066395))

(declare-fun m!5066397 () Bool)

(assert (=> b!4402443 m!5066397))

(declare-fun m!5066399 () Bool)

(assert (=> b!4402443 m!5066399))

(declare-fun m!5066401 () Bool)

(assert (=> b!4402443 m!5066401))

(declare-fun m!5066403 () Bool)

(assert (=> b!4402443 m!5066403))

(declare-fun m!5066405 () Bool)

(assert (=> b!4402443 m!5066405))

(declare-fun m!5066407 () Bool)

(assert (=> b!4402443 m!5066407))

(declare-fun m!5066409 () Bool)

(assert (=> b!4402443 m!5066409))

(declare-fun m!5066411 () Bool)

(assert (=> b!4402443 m!5066411))

(declare-fun m!5066413 () Bool)

(assert (=> b!4402443 m!5066413))

(declare-fun m!5066415 () Bool)

(assert (=> b!4402443 m!5066415))

(declare-fun m!5066417 () Bool)

(assert (=> b!4402443 m!5066417))

(assert (=> b!4402443 m!5066417))

(declare-fun m!5066419 () Bool)

(assert (=> b!4402443 m!5066419))

(assert (=> b!4402443 m!5066407))

(assert (=> b!4402443 m!5066409))

(declare-fun m!5066421 () Bool)

(assert (=> b!4402443 m!5066421))

(declare-fun m!5066423 () Bool)

(assert (=> b!4402443 m!5066423))

(assert (=> b!4402452 m!5066359))

(check-sat (not b!4402456) (not start!428144) (not b!4402452) (not b!4402448) (not b!4402449) (not b!4402447) (not b!4402451) (not b!4402454) (not b!4402445) (not b!4402443) (not b!4402450) tp_is_empty!25769 (not b!4402453) (not b!4402446) tp_is_empty!25771 (not b!4402444) (not b!4402455))
(check-sat)
(get-model)

(declare-fun d!1327894 () Bool)

(declare-fun res!1816056 () Bool)

(declare-fun e!2741267 () Bool)

(assert (=> d!1327894 (=> res!1816056 e!2741267)))

(assert (=> d!1327894 (= res!1816056 (and ((_ is Cons!49294) (_2!27746 (h!54924 (toList!3250 lm!1707)))) (= (_1!27745 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707))))) key!3918)))))

(assert (=> d!1327894 (= (containsKey!947 (_2!27746 (h!54924 (toList!3250 lm!1707))) key!3918) e!2741267)))

(declare-fun b!4402467 () Bool)

(declare-fun e!2741268 () Bool)

(assert (=> b!4402467 (= e!2741267 e!2741268)))

(declare-fun res!1816057 () Bool)

(assert (=> b!4402467 (=> (not res!1816057) (not e!2741268))))

(assert (=> b!4402467 (= res!1816057 ((_ is Cons!49294) (_2!27746 (h!54924 (toList!3250 lm!1707)))))))

(declare-fun b!4402468 () Bool)

(assert (=> b!4402468 (= e!2741268 (containsKey!947 (t!356352 (_2!27746 (h!54924 (toList!3250 lm!1707)))) key!3918))))

(assert (= (and d!1327894 (not res!1816056)) b!4402467))

(assert (= (and b!4402467 res!1816057) b!4402468))

(declare-fun m!5066431 () Bool)

(assert (=> b!4402468 m!5066431))

(assert (=> b!4402446 d!1327894))

(declare-fun d!1327900 () Bool)

(declare-datatypes ((Option!10620 0))(
  ( (None!10619) (Some!10619 (v!43739 List!49418)) )
))
(declare-fun get!16049 (Option!10620) List!49418)

(declare-fun getValueByKey!606 (List!49419 (_ BitVec 64)) Option!10620)

(assert (=> d!1327900 (= (apply!11485 lm!1707 hash!377) (get!16049 (getValueByKey!606 (toList!3250 lm!1707) hash!377)))))

(declare-fun bs!729178 () Bool)

(assert (= bs!729178 d!1327900))

(declare-fun m!5066433 () Bool)

(assert (=> bs!729178 m!5066433))

(assert (=> bs!729178 m!5066433))

(declare-fun m!5066435 () Bool)

(assert (=> bs!729178 m!5066435))

(assert (=> b!4402455 d!1327900))

(declare-fun d!1327902 () Bool)

(declare-fun lt!1607101 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7879 (List!49419) (InoxSet tuple2!48904))

(assert (=> d!1327902 (= lt!1607101 (select (content!7879 (toList!3250 lm!1707)) lt!1607081))))

(declare-fun e!2741286 () Bool)

(assert (=> d!1327902 (= lt!1607101 e!2741286)))

(declare-fun res!1816071 () Bool)

(assert (=> d!1327902 (=> (not res!1816071) (not e!2741286))))

(assert (=> d!1327902 (= res!1816071 ((_ is Cons!49295) (toList!3250 lm!1707)))))

(assert (=> d!1327902 (= (contains!11693 (toList!3250 lm!1707) lt!1607081) lt!1607101)))

(declare-fun b!4402492 () Bool)

(declare-fun e!2741285 () Bool)

(assert (=> b!4402492 (= e!2741286 e!2741285)))

(declare-fun res!1816072 () Bool)

(assert (=> b!4402492 (=> res!1816072 e!2741285)))

(assert (=> b!4402492 (= res!1816072 (= (h!54924 (toList!3250 lm!1707)) lt!1607081))))

(declare-fun b!4402493 () Bool)

(assert (=> b!4402493 (= e!2741285 (contains!11693 (t!356353 (toList!3250 lm!1707)) lt!1607081))))

(assert (= (and d!1327902 res!1816071) b!4402492))

(assert (= (and b!4402492 (not res!1816072)) b!4402493))

(declare-fun m!5066453 () Bool)

(assert (=> d!1327902 m!5066453))

(declare-fun m!5066455 () Bool)

(assert (=> d!1327902 m!5066455))

(declare-fun m!5066457 () Bool)

(assert (=> b!4402493 m!5066457))

(assert (=> b!4402455 d!1327902))

(declare-fun d!1327914 () Bool)

(declare-fun dynLambda!20770 (Int tuple2!48904) Bool)

(assert (=> d!1327914 (dynLambda!20770 lambda!149221 lt!1607081)))

(declare-fun lt!1607110 () Unit!79009)

(declare-fun choose!27628 (List!49419 Int tuple2!48904) Unit!79009)

(assert (=> d!1327914 (= lt!1607110 (choose!27628 (toList!3250 lm!1707) lambda!149221 lt!1607081))))

(declare-fun e!2741298 () Bool)

(assert (=> d!1327914 e!2741298))

(declare-fun res!1816078 () Bool)

(assert (=> d!1327914 (=> (not res!1816078) (not e!2741298))))

(assert (=> d!1327914 (= res!1816078 (forall!9378 (toList!3250 lm!1707) lambda!149221))))

(assert (=> d!1327914 (= (forallContained!2013 (toList!3250 lm!1707) lambda!149221 lt!1607081) lt!1607110)))

(declare-fun b!4402511 () Bool)

(assert (=> b!4402511 (= e!2741298 (contains!11693 (toList!3250 lm!1707) lt!1607081))))

(assert (= (and d!1327914 res!1816078) b!4402511))

(declare-fun b_lambda!139989 () Bool)

(assert (=> (not b_lambda!139989) (not d!1327914)))

(declare-fun m!5066469 () Bool)

(assert (=> d!1327914 m!5066469))

(declare-fun m!5066471 () Bool)

(assert (=> d!1327914 m!5066471))

(assert (=> d!1327914 m!5066365))

(assert (=> b!4402511 m!5066381))

(assert (=> b!4402455 d!1327914))

(declare-fun d!1327920 () Bool)

(assert (=> d!1327920 (contains!11693 (toList!3250 lm!1707) (tuple2!48905 hash!377 lt!1607077))))

(declare-fun lt!1607119 () Unit!79009)

(declare-fun choose!27629 (List!49419 (_ BitVec 64) List!49418) Unit!79009)

(assert (=> d!1327920 (= lt!1607119 (choose!27629 (toList!3250 lm!1707) hash!377 lt!1607077))))

(declare-fun e!2741316 () Bool)

(assert (=> d!1327920 e!2741316))

(declare-fun res!1816096 () Bool)

(assert (=> d!1327920 (=> (not res!1816096) (not e!2741316))))

(declare-fun isStrictlySorted!180 (List!49419) Bool)

(assert (=> d!1327920 (= res!1816096 (isStrictlySorted!180 (toList!3250 lm!1707)))))

(assert (=> d!1327920 (= (lemmaGetValueByKeyImpliesContainsTuple!478 (toList!3250 lm!1707) hash!377 lt!1607077) lt!1607119)))

(declare-fun b!4402529 () Bool)

(assert (=> b!4402529 (= e!2741316 (= (getValueByKey!606 (toList!3250 lm!1707) hash!377) (Some!10619 lt!1607077)))))

(assert (= (and d!1327920 res!1816096) b!4402529))

(declare-fun m!5066489 () Bool)

(assert (=> d!1327920 m!5066489))

(declare-fun m!5066491 () Bool)

(assert (=> d!1327920 m!5066491))

(declare-fun m!5066493 () Bool)

(assert (=> d!1327920 m!5066493))

(assert (=> b!4402529 m!5066433))

(assert (=> b!4402455 d!1327920))

(declare-fun b!4402540 () Bool)

(declare-fun e!2741322 () List!49418)

(assert (=> b!4402540 (= e!2741322 (t!356352 lt!1607077))))

(declare-fun b!4402543 () Bool)

(declare-fun e!2741321 () List!49418)

(assert (=> b!4402543 (= e!2741321 Nil!49294)))

(declare-fun b!4402542 () Bool)

(assert (=> b!4402542 (= e!2741321 (Cons!49294 (h!54923 lt!1607077) (removePairForKey!601 (t!356352 lt!1607077) key!3918)))))

(declare-fun d!1327930 () Bool)

(declare-fun lt!1607122 () List!49418)

(assert (=> d!1327930 (not (containsKey!947 lt!1607122 key!3918))))

(assert (=> d!1327930 (= lt!1607122 e!2741322)))

(declare-fun c!749572 () Bool)

(assert (=> d!1327930 (= c!749572 (and ((_ is Cons!49294) lt!1607077) (= (_1!27745 (h!54923 lt!1607077)) key!3918)))))

(assert (=> d!1327930 (noDuplicateKeys!633 lt!1607077)))

(assert (=> d!1327930 (= (removePairForKey!601 lt!1607077 key!3918) lt!1607122)))

(declare-fun b!4402541 () Bool)

(assert (=> b!4402541 (= e!2741322 e!2741321)))

(declare-fun c!749573 () Bool)

(assert (=> b!4402541 (= c!749573 ((_ is Cons!49294) lt!1607077))))

(assert (= (and d!1327930 c!749572) b!4402540))

(assert (= (and d!1327930 (not c!749572)) b!4402541))

(assert (= (and b!4402541 c!749573) b!4402542))

(assert (= (and b!4402541 (not c!749573)) b!4402543))

(declare-fun m!5066497 () Bool)

(assert (=> b!4402542 m!5066497))

(declare-fun m!5066499 () Bool)

(assert (=> d!1327930 m!5066499))

(declare-fun m!5066501 () Bool)

(assert (=> d!1327930 m!5066501))

(assert (=> b!4402455 d!1327930))

(declare-fun d!1327934 () Bool)

(declare-fun e!2741345 () Bool)

(assert (=> d!1327934 e!2741345))

(declare-fun res!1816108 () Bool)

(assert (=> d!1327934 (=> res!1816108 e!2741345)))

(declare-fun lt!1607156 () Bool)

(assert (=> d!1327934 (= res!1816108 (not lt!1607156))))

(declare-fun lt!1607158 () Bool)

(assert (=> d!1327934 (= lt!1607156 lt!1607158)))

(declare-fun lt!1607155 () Unit!79009)

(declare-fun e!2741346 () Unit!79009)

(assert (=> d!1327934 (= lt!1607155 e!2741346)))

(declare-fun c!749585 () Bool)

(assert (=> d!1327934 (= c!749585 lt!1607158)))

(declare-fun containsKey!950 (List!49419 (_ BitVec 64)) Bool)

(assert (=> d!1327934 (= lt!1607158 (containsKey!950 (toList!3250 lm!1707) hash!377))))

(assert (=> d!1327934 (= (contains!11692 lm!1707 hash!377) lt!1607156)))

(declare-fun b!4402577 () Bool)

(declare-fun lt!1607157 () Unit!79009)

(assert (=> b!4402577 (= e!2741346 lt!1607157)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!516 (List!49419 (_ BitVec 64)) Unit!79009)

(assert (=> b!4402577 (= lt!1607157 (lemmaContainsKeyImpliesGetValueByKeyDefined!516 (toList!3250 lm!1707) hash!377))))

(declare-fun isDefined!7913 (Option!10620) Bool)

(assert (=> b!4402577 (isDefined!7913 (getValueByKey!606 (toList!3250 lm!1707) hash!377))))

(declare-fun b!4402578 () Bool)

(declare-fun Unit!79014 () Unit!79009)

(assert (=> b!4402578 (= e!2741346 Unit!79014)))

(declare-fun b!4402579 () Bool)

(assert (=> b!4402579 (= e!2741345 (isDefined!7913 (getValueByKey!606 (toList!3250 lm!1707) hash!377)))))

(assert (= (and d!1327934 c!749585) b!4402577))

(assert (= (and d!1327934 (not c!749585)) b!4402578))

(assert (= (and d!1327934 (not res!1816108)) b!4402579))

(declare-fun m!5066523 () Bool)

(assert (=> d!1327934 m!5066523))

(declare-fun m!5066525 () Bool)

(assert (=> b!4402577 m!5066525))

(assert (=> b!4402577 m!5066433))

(assert (=> b!4402577 m!5066433))

(declare-fun m!5066527 () Bool)

(assert (=> b!4402577 m!5066527))

(assert (=> b!4402579 m!5066433))

(assert (=> b!4402579 m!5066433))

(assert (=> b!4402579 m!5066527))

(assert (=> b!4402444 d!1327934))

(declare-fun d!1327938 () Bool)

(declare-fun content!7880 (List!49418) (InoxSet tuple2!48902))

(assert (=> d!1327938 (= (eq!339 (extractMap!692 (toList!3250 (+!881 lt!1607074 lt!1607073))) (+!882 lt!1607082 lt!1607083)) (= (content!7880 (toList!3249 (extractMap!692 (toList!3250 (+!881 lt!1607074 lt!1607073))))) (content!7880 (toList!3249 (+!882 lt!1607082 lt!1607083)))))))

(declare-fun bs!729185 () Bool)

(assert (= bs!729185 d!1327938))

(declare-fun m!5066529 () Bool)

(assert (=> bs!729185 m!5066529))

(declare-fun m!5066531 () Bool)

(assert (=> bs!729185 m!5066531))

(assert (=> b!4402443 d!1327938))

(declare-fun d!1327940 () Bool)

(assert (=> d!1327940 (= (apply!11485 lm!1707 (_1!27746 (h!54924 (toList!3250 lm!1707)))) (get!16049 (getValueByKey!606 (toList!3250 lm!1707) (_1!27746 (h!54924 (toList!3250 lm!1707))))))))

(declare-fun bs!729186 () Bool)

(assert (= bs!729186 d!1327940))

(declare-fun m!5066533 () Bool)

(assert (=> bs!729186 m!5066533))

(assert (=> bs!729186 m!5066533))

(declare-fun m!5066535 () Bool)

(assert (=> bs!729186 m!5066535))

(assert (=> b!4402443 d!1327940))

(declare-fun d!1327942 () Bool)

(declare-fun res!1816109 () Bool)

(declare-fun e!2741347 () Bool)

(assert (=> d!1327942 (=> res!1816109 e!2741347)))

(assert (=> d!1327942 (= res!1816109 (and ((_ is Cons!49294) (apply!11485 lm!1707 (_1!27746 (h!54924 (toList!3250 lm!1707))))) (= (_1!27745 (h!54923 (apply!11485 lm!1707 (_1!27746 (h!54924 (toList!3250 lm!1707)))))) key!3918)))))

(assert (=> d!1327942 (= (containsKey!947 (apply!11485 lm!1707 (_1!27746 (h!54924 (toList!3250 lm!1707)))) key!3918) e!2741347)))

(declare-fun b!4402580 () Bool)

(declare-fun e!2741348 () Bool)

(assert (=> b!4402580 (= e!2741347 e!2741348)))

(declare-fun res!1816110 () Bool)

(assert (=> b!4402580 (=> (not res!1816110) (not e!2741348))))

(assert (=> b!4402580 (= res!1816110 ((_ is Cons!49294) (apply!11485 lm!1707 (_1!27746 (h!54924 (toList!3250 lm!1707))))))))

(declare-fun b!4402581 () Bool)

(assert (=> b!4402581 (= e!2741348 (containsKey!947 (t!356352 (apply!11485 lm!1707 (_1!27746 (h!54924 (toList!3250 lm!1707))))) key!3918))))

(assert (= (and d!1327942 (not res!1816109)) b!4402580))

(assert (= (and b!4402580 res!1816110) b!4402581))

(declare-fun m!5066537 () Bool)

(assert (=> b!4402581 m!5066537))

(assert (=> b!4402443 d!1327942))

(declare-fun b!4402628 () Bool)

(assert (=> b!4402628 false))

(declare-fun lt!1607204 () Unit!79009)

(declare-fun lt!1607209 () Unit!79009)

(assert (=> b!4402628 (= lt!1607204 lt!1607209)))

(declare-fun containsKey!951 (List!49418 K!10650) Bool)

(assert (=> b!4402628 (containsKey!951 (toList!3249 lt!1607072) key!3918)))

(declare-fun lemmaInGetKeysListThenContainsKey!199 (List!49418 K!10650) Unit!79009)

(assert (=> b!4402628 (= lt!1607209 (lemmaInGetKeysListThenContainsKey!199 (toList!3249 lt!1607072) key!3918))))

(declare-fun e!2741379 () Unit!79009)

(declare-fun Unit!79019 () Unit!79009)

(assert (=> b!4402628 (= e!2741379 Unit!79019)))

(declare-fun b!4402629 () Bool)

(declare-fun e!2741380 () Bool)

(declare-datatypes ((List!49421 0))(
  ( (Nil!49297) (Cons!49297 (h!54928 K!10650) (t!356355 List!49421)) )
))
(declare-fun contains!11695 (List!49421 K!10650) Bool)

(declare-fun keys!16757 (ListMap!2493) List!49421)

(assert (=> b!4402629 (= e!2741380 (not (contains!11695 (keys!16757 lt!1607072) key!3918)))))

(declare-fun d!1327944 () Bool)

(declare-fun e!2741382 () Bool)

(assert (=> d!1327944 e!2741382))

(declare-fun res!1816132 () Bool)

(assert (=> d!1327944 (=> res!1816132 e!2741382)))

(assert (=> d!1327944 (= res!1816132 e!2741380)))

(declare-fun res!1816133 () Bool)

(assert (=> d!1327944 (=> (not res!1816133) (not e!2741380))))

(declare-fun lt!1607206 () Bool)

(assert (=> d!1327944 (= res!1816133 (not lt!1607206))))

(declare-fun lt!1607205 () Bool)

(assert (=> d!1327944 (= lt!1607206 lt!1607205)))

(declare-fun lt!1607208 () Unit!79009)

(declare-fun e!2741378 () Unit!79009)

(assert (=> d!1327944 (= lt!1607208 e!2741378)))

(declare-fun c!749598 () Bool)

(assert (=> d!1327944 (= c!749598 lt!1607205)))

(assert (=> d!1327944 (= lt!1607205 (containsKey!951 (toList!3249 lt!1607072) key!3918))))

(assert (=> d!1327944 (= (contains!11691 lt!1607072 key!3918) lt!1607206)))

(declare-fun b!4402630 () Bool)

(declare-fun Unit!79025 () Unit!79009)

(assert (=> b!4402630 (= e!2741379 Unit!79025)))

(declare-fun bm!306366 () Bool)

(declare-fun call!306371 () Bool)

(declare-fun e!2741381 () List!49421)

(assert (=> bm!306366 (= call!306371 (contains!11695 e!2741381 key!3918))))

(declare-fun c!749599 () Bool)

(assert (=> bm!306366 (= c!749599 c!749598)))

(declare-fun b!4402631 () Bool)

(declare-fun e!2741383 () Bool)

(assert (=> b!4402631 (= e!2741383 (contains!11695 (keys!16757 lt!1607072) key!3918))))

(declare-fun b!4402632 () Bool)

(assert (=> b!4402632 (= e!2741378 e!2741379)))

(declare-fun c!749600 () Bool)

(assert (=> b!4402632 (= c!749600 call!306371)))

(declare-fun b!4402633 () Bool)

(declare-fun getKeysList!201 (List!49418) List!49421)

(assert (=> b!4402633 (= e!2741381 (getKeysList!201 (toList!3249 lt!1607072)))))

(declare-fun b!4402634 () Bool)

(assert (=> b!4402634 (= e!2741382 e!2741383)))

(declare-fun res!1816134 () Bool)

(assert (=> b!4402634 (=> (not res!1816134) (not e!2741383))))

(declare-datatypes ((Option!10621 0))(
  ( (None!10620) (Some!10620 (v!43740 V!10896)) )
))
(declare-fun isDefined!7914 (Option!10621) Bool)

(declare-fun getValueByKey!607 (List!49418 K!10650) Option!10621)

(assert (=> b!4402634 (= res!1816134 (isDefined!7914 (getValueByKey!607 (toList!3249 lt!1607072) key!3918)))))

(declare-fun b!4402635 () Bool)

(assert (=> b!4402635 (= e!2741381 (keys!16757 lt!1607072))))

(declare-fun b!4402636 () Bool)

(declare-fun lt!1607203 () Unit!79009)

(assert (=> b!4402636 (= e!2741378 lt!1607203)))

(declare-fun lt!1607210 () Unit!79009)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!517 (List!49418 K!10650) Unit!79009)

(assert (=> b!4402636 (= lt!1607210 (lemmaContainsKeyImpliesGetValueByKeyDefined!517 (toList!3249 lt!1607072) key!3918))))

(assert (=> b!4402636 (isDefined!7914 (getValueByKey!607 (toList!3249 lt!1607072) key!3918))))

(declare-fun lt!1607207 () Unit!79009)

(assert (=> b!4402636 (= lt!1607207 lt!1607210)))

(declare-fun lemmaInListThenGetKeysListContains!198 (List!49418 K!10650) Unit!79009)

(assert (=> b!4402636 (= lt!1607203 (lemmaInListThenGetKeysListContains!198 (toList!3249 lt!1607072) key!3918))))

(assert (=> b!4402636 call!306371))

(assert (= (and d!1327944 c!749598) b!4402636))

(assert (= (and d!1327944 (not c!749598)) b!4402632))

(assert (= (and b!4402632 c!749600) b!4402628))

(assert (= (and b!4402632 (not c!749600)) b!4402630))

(assert (= (or b!4402636 b!4402632) bm!306366))

(assert (= (and bm!306366 c!749599) b!4402633))

(assert (= (and bm!306366 (not c!749599)) b!4402635))

(assert (= (and d!1327944 res!1816133) b!4402629))

(assert (= (and d!1327944 (not res!1816132)) b!4402634))

(assert (= (and b!4402634 res!1816134) b!4402631))

(declare-fun m!5066629 () Bool)

(assert (=> b!4402629 m!5066629))

(assert (=> b!4402629 m!5066629))

(declare-fun m!5066631 () Bool)

(assert (=> b!4402629 m!5066631))

(declare-fun m!5066633 () Bool)

(assert (=> bm!306366 m!5066633))

(assert (=> b!4402635 m!5066629))

(declare-fun m!5066635 () Bool)

(assert (=> b!4402634 m!5066635))

(assert (=> b!4402634 m!5066635))

(declare-fun m!5066637 () Bool)

(assert (=> b!4402634 m!5066637))

(declare-fun m!5066639 () Bool)

(assert (=> b!4402636 m!5066639))

(assert (=> b!4402636 m!5066635))

(assert (=> b!4402636 m!5066635))

(assert (=> b!4402636 m!5066637))

(declare-fun m!5066641 () Bool)

(assert (=> b!4402636 m!5066641))

(declare-fun m!5066643 () Bool)

(assert (=> d!1327944 m!5066643))

(assert (=> b!4402631 m!5066629))

(assert (=> b!4402631 m!5066629))

(assert (=> b!4402631 m!5066631))

(assert (=> b!4402628 m!5066643))

(declare-fun m!5066645 () Bool)

(assert (=> b!4402628 m!5066645))

(declare-fun m!5066647 () Bool)

(assert (=> b!4402633 m!5066647))

(assert (=> b!4402443 d!1327944))

(declare-fun d!1327972 () Bool)

(declare-fun e!2741386 () Bool)

(assert (=> d!1327972 e!2741386))

(declare-fun res!1816139 () Bool)

(assert (=> d!1327972 (=> (not res!1816139) (not e!2741386))))

(declare-fun lt!1607221 () ListLongMap!1899)

(assert (=> d!1327972 (= res!1816139 (contains!11692 lt!1607221 (_1!27746 lt!1607073)))))

(declare-fun lt!1607220 () List!49419)

(assert (=> d!1327972 (= lt!1607221 (ListLongMap!1900 lt!1607220))))

(declare-fun lt!1607222 () Unit!79009)

(declare-fun lt!1607219 () Unit!79009)

(assert (=> d!1327972 (= lt!1607222 lt!1607219)))

(assert (=> d!1327972 (= (getValueByKey!606 lt!1607220 (_1!27746 lt!1607073)) (Some!10619 (_2!27746 lt!1607073)))))

(declare-fun lemmaContainsTupThenGetReturnValue!351 (List!49419 (_ BitVec 64) List!49418) Unit!79009)

(assert (=> d!1327972 (= lt!1607219 (lemmaContainsTupThenGetReturnValue!351 lt!1607220 (_1!27746 lt!1607073) (_2!27746 lt!1607073)))))

(declare-fun insertStrictlySorted!208 (List!49419 (_ BitVec 64) List!49418) List!49419)

(assert (=> d!1327972 (= lt!1607220 (insertStrictlySorted!208 (toList!3250 lt!1607074) (_1!27746 lt!1607073) (_2!27746 lt!1607073)))))

(assert (=> d!1327972 (= (+!881 lt!1607074 lt!1607073) lt!1607221)))

(declare-fun b!4402641 () Bool)

(declare-fun res!1816140 () Bool)

(assert (=> b!4402641 (=> (not res!1816140) (not e!2741386))))

(assert (=> b!4402641 (= res!1816140 (= (getValueByKey!606 (toList!3250 lt!1607221) (_1!27746 lt!1607073)) (Some!10619 (_2!27746 lt!1607073))))))

(declare-fun b!4402642 () Bool)

(assert (=> b!4402642 (= e!2741386 (contains!11693 (toList!3250 lt!1607221) lt!1607073))))

(assert (= (and d!1327972 res!1816139) b!4402641))

(assert (= (and b!4402641 res!1816140) b!4402642))

(declare-fun m!5066649 () Bool)

(assert (=> d!1327972 m!5066649))

(declare-fun m!5066651 () Bool)

(assert (=> d!1327972 m!5066651))

(declare-fun m!5066653 () Bool)

(assert (=> d!1327972 m!5066653))

(declare-fun m!5066655 () Bool)

(assert (=> d!1327972 m!5066655))

(declare-fun m!5066657 () Bool)

(assert (=> b!4402641 m!5066657))

(declare-fun m!5066659 () Bool)

(assert (=> b!4402642 m!5066659))

(assert (=> b!4402443 d!1327972))

(declare-fun d!1327974 () Bool)

(declare-fun e!2741389 () Bool)

(assert (=> d!1327974 e!2741389))

(declare-fun res!1816146 () Bool)

(assert (=> d!1327974 (=> (not res!1816146) (not e!2741389))))

(declare-fun lt!1607232 () ListMap!2493)

(assert (=> d!1327974 (= res!1816146 (contains!11691 lt!1607232 (_1!27745 lt!1607083)))))

(declare-fun lt!1607233 () List!49418)

(assert (=> d!1327974 (= lt!1607232 (ListMap!2494 lt!1607233))))

(declare-fun lt!1607234 () Unit!79009)

(declare-fun lt!1607231 () Unit!79009)

(assert (=> d!1327974 (= lt!1607234 lt!1607231)))

(assert (=> d!1327974 (= (getValueByKey!607 lt!1607233 (_1!27745 lt!1607083)) (Some!10620 (_2!27745 lt!1607083)))))

(declare-fun lemmaContainsTupThenGetReturnValue!353 (List!49418 K!10650 V!10896) Unit!79009)

(assert (=> d!1327974 (= lt!1607231 (lemmaContainsTupThenGetReturnValue!353 lt!1607233 (_1!27745 lt!1607083) (_2!27745 lt!1607083)))))

(declare-fun insertNoDuplicatedKeys!153 (List!49418 K!10650 V!10896) List!49418)

(assert (=> d!1327974 (= lt!1607233 (insertNoDuplicatedKeys!153 (toList!3249 lt!1607082) (_1!27745 lt!1607083) (_2!27745 lt!1607083)))))

(assert (=> d!1327974 (= (+!882 lt!1607082 lt!1607083) lt!1607232)))

(declare-fun b!4402647 () Bool)

(declare-fun res!1816145 () Bool)

(assert (=> b!4402647 (=> (not res!1816145) (not e!2741389))))

(assert (=> b!4402647 (= res!1816145 (= (getValueByKey!607 (toList!3249 lt!1607232) (_1!27745 lt!1607083)) (Some!10620 (_2!27745 lt!1607083))))))

(declare-fun b!4402648 () Bool)

(declare-fun contains!11697 (List!49418 tuple2!48902) Bool)

(assert (=> b!4402648 (= e!2741389 (contains!11697 (toList!3249 lt!1607232) lt!1607083))))

(assert (= (and d!1327974 res!1816146) b!4402647))

(assert (= (and b!4402647 res!1816145) b!4402648))

(declare-fun m!5066661 () Bool)

(assert (=> d!1327974 m!5066661))

(declare-fun m!5066663 () Bool)

(assert (=> d!1327974 m!5066663))

(declare-fun m!5066665 () Bool)

(assert (=> d!1327974 m!5066665))

(declare-fun m!5066667 () Bool)

(assert (=> d!1327974 m!5066667))

(declare-fun m!5066669 () Bool)

(assert (=> b!4402647 m!5066669))

(declare-fun m!5066671 () Bool)

(assert (=> b!4402648 m!5066671))

(assert (=> b!4402443 d!1327974))

(declare-fun b!4402649 () Bool)

(assert (=> b!4402649 false))

(declare-fun lt!1607236 () Unit!79009)

(declare-fun lt!1607241 () Unit!79009)

(assert (=> b!4402649 (= lt!1607236 lt!1607241)))

(assert (=> b!4402649 (containsKey!951 (toList!3249 lt!1607082) key!3918)))

(assert (=> b!4402649 (= lt!1607241 (lemmaInGetKeysListThenContainsKey!199 (toList!3249 lt!1607082) key!3918))))

(declare-fun e!2741391 () Unit!79009)

(declare-fun Unit!79028 () Unit!79009)

(assert (=> b!4402649 (= e!2741391 Unit!79028)))

(declare-fun b!4402650 () Bool)

(declare-fun e!2741392 () Bool)

(assert (=> b!4402650 (= e!2741392 (not (contains!11695 (keys!16757 lt!1607082) key!3918)))))

(declare-fun d!1327976 () Bool)

(declare-fun e!2741394 () Bool)

(assert (=> d!1327976 e!2741394))

(declare-fun res!1816147 () Bool)

(assert (=> d!1327976 (=> res!1816147 e!2741394)))

(assert (=> d!1327976 (= res!1816147 e!2741392)))

(declare-fun res!1816148 () Bool)

(assert (=> d!1327976 (=> (not res!1816148) (not e!2741392))))

(declare-fun lt!1607238 () Bool)

(assert (=> d!1327976 (= res!1816148 (not lt!1607238))))

(declare-fun lt!1607237 () Bool)

(assert (=> d!1327976 (= lt!1607238 lt!1607237)))

(declare-fun lt!1607240 () Unit!79009)

(declare-fun e!2741390 () Unit!79009)

(assert (=> d!1327976 (= lt!1607240 e!2741390)))

(declare-fun c!749601 () Bool)

(assert (=> d!1327976 (= c!749601 lt!1607237)))

(assert (=> d!1327976 (= lt!1607237 (containsKey!951 (toList!3249 lt!1607082) key!3918))))

(assert (=> d!1327976 (= (contains!11691 lt!1607082 key!3918) lt!1607238)))

(declare-fun b!4402651 () Bool)

(declare-fun Unit!79029 () Unit!79009)

(assert (=> b!4402651 (= e!2741391 Unit!79029)))

(declare-fun bm!306367 () Bool)

(declare-fun call!306372 () Bool)

(declare-fun e!2741393 () List!49421)

(assert (=> bm!306367 (= call!306372 (contains!11695 e!2741393 key!3918))))

(declare-fun c!749602 () Bool)

(assert (=> bm!306367 (= c!749602 c!749601)))

(declare-fun b!4402652 () Bool)

(declare-fun e!2741395 () Bool)

(assert (=> b!4402652 (= e!2741395 (contains!11695 (keys!16757 lt!1607082) key!3918))))

(declare-fun b!4402653 () Bool)

(assert (=> b!4402653 (= e!2741390 e!2741391)))

(declare-fun c!749603 () Bool)

(assert (=> b!4402653 (= c!749603 call!306372)))

(declare-fun b!4402654 () Bool)

(assert (=> b!4402654 (= e!2741393 (getKeysList!201 (toList!3249 lt!1607082)))))

(declare-fun b!4402655 () Bool)

(assert (=> b!4402655 (= e!2741394 e!2741395)))

(declare-fun res!1816149 () Bool)

(assert (=> b!4402655 (=> (not res!1816149) (not e!2741395))))

(assert (=> b!4402655 (= res!1816149 (isDefined!7914 (getValueByKey!607 (toList!3249 lt!1607082) key!3918)))))

(declare-fun b!4402656 () Bool)

(assert (=> b!4402656 (= e!2741393 (keys!16757 lt!1607082))))

(declare-fun b!4402657 () Bool)

(declare-fun lt!1607235 () Unit!79009)

(assert (=> b!4402657 (= e!2741390 lt!1607235)))

(declare-fun lt!1607242 () Unit!79009)

(assert (=> b!4402657 (= lt!1607242 (lemmaContainsKeyImpliesGetValueByKeyDefined!517 (toList!3249 lt!1607082) key!3918))))

(assert (=> b!4402657 (isDefined!7914 (getValueByKey!607 (toList!3249 lt!1607082) key!3918))))

(declare-fun lt!1607239 () Unit!79009)

(assert (=> b!4402657 (= lt!1607239 lt!1607242)))

(assert (=> b!4402657 (= lt!1607235 (lemmaInListThenGetKeysListContains!198 (toList!3249 lt!1607082) key!3918))))

(assert (=> b!4402657 call!306372))

(assert (= (and d!1327976 c!749601) b!4402657))

(assert (= (and d!1327976 (not c!749601)) b!4402653))

(assert (= (and b!4402653 c!749603) b!4402649))

(assert (= (and b!4402653 (not c!749603)) b!4402651))

(assert (= (or b!4402657 b!4402653) bm!306367))

(assert (= (and bm!306367 c!749602) b!4402654))

(assert (= (and bm!306367 (not c!749602)) b!4402656))

(assert (= (and d!1327976 res!1816148) b!4402650))

(assert (= (and d!1327976 (not res!1816147)) b!4402655))

(assert (= (and b!4402655 res!1816149) b!4402652))

(declare-fun m!5066673 () Bool)

(assert (=> b!4402650 m!5066673))

(assert (=> b!4402650 m!5066673))

(declare-fun m!5066675 () Bool)

(assert (=> b!4402650 m!5066675))

(declare-fun m!5066677 () Bool)

(assert (=> bm!306367 m!5066677))

(assert (=> b!4402656 m!5066673))

(declare-fun m!5066679 () Bool)

(assert (=> b!4402655 m!5066679))

(assert (=> b!4402655 m!5066679))

(declare-fun m!5066681 () Bool)

(assert (=> b!4402655 m!5066681))

(declare-fun m!5066683 () Bool)

(assert (=> b!4402657 m!5066683))

(assert (=> b!4402657 m!5066679))

(assert (=> b!4402657 m!5066679))

(assert (=> b!4402657 m!5066681))

(declare-fun m!5066685 () Bool)

(assert (=> b!4402657 m!5066685))

(declare-fun m!5066687 () Bool)

(assert (=> d!1327976 m!5066687))

(assert (=> b!4402652 m!5066673))

(assert (=> b!4402652 m!5066673))

(assert (=> b!4402652 m!5066675))

(assert (=> b!4402649 m!5066687))

(declare-fun m!5066689 () Bool)

(assert (=> b!4402649 m!5066689))

(declare-fun m!5066691 () Bool)

(assert (=> b!4402654 m!5066691))

(assert (=> b!4402443 d!1327976))

(declare-fun bs!729211 () Bool)

(declare-fun d!1327978 () Bool)

(assert (= bs!729211 (and d!1327978 start!428144)))

(declare-fun lambda!149239 () Int)

(assert (=> bs!729211 (= lambda!149239 lambda!149221)))

(assert (=> d!1327978 (not (containsKey!947 (apply!11485 lm!1707 (_1!27746 (h!54924 (toList!3250 lm!1707)))) key!3918))))

(declare-fun lt!1607245 () Unit!79009)

(declare-fun choose!27632 (ListLongMap!1899 K!10650 (_ BitVec 64) Hashable!5025) Unit!79009)

(assert (=> d!1327978 (= lt!1607245 (choose!27632 lm!1707 key!3918 (_1!27746 (h!54924 (toList!3250 lm!1707))) hashF!1247))))

(assert (=> d!1327978 (forall!9378 (toList!3250 lm!1707) lambda!149239)))

(assert (=> d!1327978 (= (lemmaNotSameHashThenCannotContainKey!104 lm!1707 key!3918 (_1!27746 (h!54924 (toList!3250 lm!1707))) hashF!1247) lt!1607245)))

(declare-fun bs!729212 () Bool)

(assert (= bs!729212 d!1327978))

(assert (=> bs!729212 m!5066417))

(assert (=> bs!729212 m!5066417))

(assert (=> bs!729212 m!5066419))

(declare-fun m!5066693 () Bool)

(assert (=> bs!729212 m!5066693))

(declare-fun m!5066695 () Bool)

(assert (=> bs!729212 m!5066695))

(assert (=> b!4402443 d!1327978))

(declare-fun d!1327980 () Bool)

(assert (=> d!1327980 (contains!11691 lt!1607072 key!3918)))

(declare-fun lt!1607248 () Unit!79009)

(declare-fun choose!27633 (List!49418 K!10650 V!10896 ListMap!2493) Unit!79009)

(assert (=> d!1327980 (= lt!1607248 (choose!27633 (_2!27746 (h!54924 (toList!3250 lm!1707))) key!3918 newValue!99 lt!1607072))))

(assert (=> d!1327980 (noDuplicateKeys!633 (_2!27746 (h!54924 (toList!3250 lm!1707))))))

(assert (=> d!1327980 (= (lemmaAddToMapContainsAndNotInListThenInAcc!92 (_2!27746 (h!54924 (toList!3250 lm!1707))) key!3918 newValue!99 lt!1607072) lt!1607248)))

(declare-fun bs!729213 () Bool)

(assert (= bs!729213 d!1327980))

(assert (=> bs!729213 m!5066401))

(declare-fun m!5066697 () Bool)

(assert (=> bs!729213 m!5066697))

(declare-fun m!5066699 () Bool)

(assert (=> bs!729213 m!5066699))

(assert (=> b!4402443 d!1327980))

(declare-fun bs!729214 () Bool)

(declare-fun d!1327982 () Bool)

(assert (= bs!729214 (and d!1327982 start!428144)))

(declare-fun lambda!149242 () Int)

(assert (=> bs!729214 (= lambda!149242 lambda!149221)))

(declare-fun bs!729215 () Bool)

(assert (= bs!729215 (and d!1327982 d!1327978)))

(assert (=> bs!729215 (= lambda!149242 lambda!149239)))

(assert (=> d!1327982 (eq!339 (extractMap!692 (toList!3250 (+!881 lt!1607074 (tuple2!48905 hash!377 newBucket!200)))) (+!882 (extractMap!692 (toList!3250 lt!1607074)) (tuple2!48903 key!3918 newValue!99)))))

(declare-fun lt!1607251 () Unit!79009)

(declare-fun choose!27634 (ListLongMap!1899 (_ BitVec 64) List!49418 K!10650 V!10896 Hashable!5025) Unit!79009)

(assert (=> d!1327982 (= lt!1607251 (choose!27634 lt!1607074 hash!377 newBucket!200 key!3918 newValue!99 hashF!1247))))

(assert (=> d!1327982 (forall!9378 (toList!3250 lt!1607074) lambda!149242)))

(assert (=> d!1327982 (= (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!137 lt!1607074 hash!377 newBucket!200 key!3918 newValue!99 hashF!1247) lt!1607251)))

(declare-fun bs!729216 () Bool)

(assert (= bs!729216 d!1327982))

(declare-fun m!5066701 () Bool)

(assert (=> bs!729216 m!5066701))

(assert (=> bs!729216 m!5066415))

(declare-fun m!5066703 () Bool)

(assert (=> bs!729216 m!5066703))

(declare-fun m!5066705 () Bool)

(assert (=> bs!729216 m!5066705))

(assert (=> bs!729216 m!5066415))

(declare-fun m!5066707 () Bool)

(assert (=> bs!729216 m!5066707))

(assert (=> bs!729216 m!5066701))

(assert (=> bs!729216 m!5066703))

(declare-fun m!5066709 () Bool)

(assert (=> bs!729216 m!5066709))

(declare-fun m!5066711 () Bool)

(assert (=> bs!729216 m!5066711))

(assert (=> b!4402443 d!1327982))

(declare-fun d!1327984 () Bool)

(declare-fun tail!7125 (List!49419) List!49419)

(assert (=> d!1327984 (= (tail!7123 lm!1707) (ListLongMap!1900 (tail!7125 (toList!3250 lm!1707))))))

(declare-fun bs!729217 () Bool)

(assert (= bs!729217 d!1327984))

(declare-fun m!5066713 () Bool)

(assert (=> bs!729217 m!5066713))

(assert (=> b!4402443 d!1327984))

(declare-fun b!4402722 () Bool)

(assert (=> b!4402722 true))

(declare-fun bs!729237 () Bool)

(declare-fun b!4402719 () Bool)

(assert (= bs!729237 (and b!4402719 b!4402722)))

(declare-fun lambda!149307 () Int)

(declare-fun lambda!149306 () Int)

(assert (=> bs!729237 (= lambda!149307 lambda!149306)))

(assert (=> b!4402719 true))

(declare-fun lt!1607393 () ListMap!2493)

(declare-fun lambda!149308 () Int)

(assert (=> bs!729237 (= (= lt!1607393 lt!1607082) (= lambda!149308 lambda!149306))))

(assert (=> b!4402719 (= (= lt!1607393 lt!1607082) (= lambda!149308 lambda!149307))))

(assert (=> b!4402719 true))

(declare-fun bs!729238 () Bool)

(declare-fun d!1327986 () Bool)

(assert (= bs!729238 (and d!1327986 b!4402722)))

(declare-fun lambda!149309 () Int)

(declare-fun lt!1607400 () ListMap!2493)

(assert (=> bs!729238 (= (= lt!1607400 lt!1607082) (= lambda!149309 lambda!149306))))

(declare-fun bs!729239 () Bool)

(assert (= bs!729239 (and d!1327986 b!4402719)))

(assert (=> bs!729239 (= (= lt!1607400 lt!1607082) (= lambda!149309 lambda!149307))))

(assert (=> bs!729239 (= (= lt!1607400 lt!1607393) (= lambda!149309 lambda!149308))))

(assert (=> d!1327986 true))

(declare-fun c!749615 () Bool)

(declare-fun call!306392 () Bool)

(declare-fun bm!306385 () Bool)

(declare-fun forall!9380 (List!49418 Int) Bool)

(assert (=> bm!306385 (= call!306392 (forall!9380 (toList!3249 lt!1607082) (ite c!749615 lambda!149306 lambda!149308)))))

(declare-fun call!306390 () Bool)

(declare-fun bm!306386 () Bool)

(assert (=> bm!306386 (= call!306390 (forall!9380 (toList!3249 lt!1607082) (ite c!749615 lambda!149306 lambda!149308)))))

(declare-fun e!2741432 () Bool)

(assert (=> d!1327986 e!2741432))

(declare-fun res!1816179 () Bool)

(assert (=> d!1327986 (=> (not res!1816179) (not e!2741432))))

(assert (=> d!1327986 (= res!1816179 (forall!9380 (_2!27746 (h!54924 (toList!3250 lm!1707))) lambda!149309))))

(declare-fun e!2741434 () ListMap!2493)

(assert (=> d!1327986 (= lt!1607400 e!2741434)))

(assert (=> d!1327986 (= c!749615 ((_ is Nil!49294) (_2!27746 (h!54924 (toList!3250 lm!1707)))))))

(assert (=> d!1327986 (noDuplicateKeys!633 (_2!27746 (h!54924 (toList!3250 lm!1707))))))

(assert (=> d!1327986 (= (addToMapMapFromBucket!299 (_2!27746 (h!54924 (toList!3250 lm!1707))) lt!1607082) lt!1607400)))

(assert (=> b!4402719 (= e!2741434 lt!1607393)))

(declare-fun lt!1607404 () ListMap!2493)

(assert (=> b!4402719 (= lt!1607404 (+!882 lt!1607082 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707))))))))

(assert (=> b!4402719 (= lt!1607393 (addToMapMapFromBucket!299 (t!356352 (_2!27746 (h!54924 (toList!3250 lm!1707)))) (+!882 lt!1607082 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707)))))))))

(declare-fun lt!1607411 () Unit!79009)

(declare-fun call!306391 () Unit!79009)

(assert (=> b!4402719 (= lt!1607411 call!306391)))

(assert (=> b!4402719 (forall!9380 (toList!3249 lt!1607082) lambda!149307)))

(declare-fun lt!1607406 () Unit!79009)

(assert (=> b!4402719 (= lt!1607406 lt!1607411)))

(assert (=> b!4402719 (forall!9380 (toList!3249 lt!1607404) lambda!149308)))

(declare-fun lt!1607394 () Unit!79009)

(declare-fun Unit!79034 () Unit!79009)

(assert (=> b!4402719 (= lt!1607394 Unit!79034)))

(assert (=> b!4402719 (forall!9380 (t!356352 (_2!27746 (h!54924 (toList!3250 lm!1707)))) lambda!149308)))

(declare-fun lt!1607396 () Unit!79009)

(declare-fun Unit!79035 () Unit!79009)

(assert (=> b!4402719 (= lt!1607396 Unit!79035)))

(declare-fun lt!1607395 () Unit!79009)

(declare-fun Unit!79036 () Unit!79009)

(assert (=> b!4402719 (= lt!1607395 Unit!79036)))

(declare-fun lt!1607391 () Unit!79009)

(declare-fun forallContained!2015 (List!49418 Int tuple2!48902) Unit!79009)

(assert (=> b!4402719 (= lt!1607391 (forallContained!2015 (toList!3249 lt!1607404) lambda!149308 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707))))))))

(assert (=> b!4402719 (contains!11691 lt!1607404 (_1!27745 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707))))))))

(declare-fun lt!1607410 () Unit!79009)

(declare-fun Unit!79037 () Unit!79009)

(assert (=> b!4402719 (= lt!1607410 Unit!79037)))

(assert (=> b!4402719 (contains!11691 lt!1607393 (_1!27745 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707))))))))

(declare-fun lt!1607407 () Unit!79009)

(declare-fun Unit!79038 () Unit!79009)

(assert (=> b!4402719 (= lt!1607407 Unit!79038)))

(assert (=> b!4402719 (forall!9380 (_2!27746 (h!54924 (toList!3250 lm!1707))) lambda!149308)))

(declare-fun lt!1607401 () Unit!79009)

(declare-fun Unit!79039 () Unit!79009)

(assert (=> b!4402719 (= lt!1607401 Unit!79039)))

(assert (=> b!4402719 (forall!9380 (toList!3249 lt!1607404) lambda!149308)))

(declare-fun lt!1607398 () Unit!79009)

(declare-fun Unit!79040 () Unit!79009)

(assert (=> b!4402719 (= lt!1607398 Unit!79040)))

(declare-fun lt!1607409 () Unit!79009)

(declare-fun Unit!79041 () Unit!79009)

(assert (=> b!4402719 (= lt!1607409 Unit!79041)))

(declare-fun lt!1607403 () Unit!79009)

(declare-fun addForallContainsKeyThenBeforeAdding!133 (ListMap!2493 ListMap!2493 K!10650 V!10896) Unit!79009)

(assert (=> b!4402719 (= lt!1607403 (addForallContainsKeyThenBeforeAdding!133 lt!1607082 lt!1607393 (_1!27745 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707))))) (_2!27745 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707)))))))))

(assert (=> b!4402719 call!306390))

(declare-fun lt!1607408 () Unit!79009)

(assert (=> b!4402719 (= lt!1607408 lt!1607403)))

(assert (=> b!4402719 (forall!9380 (toList!3249 lt!1607082) lambda!149308)))

(declare-fun lt!1607405 () Unit!79009)

(declare-fun Unit!79042 () Unit!79009)

(assert (=> b!4402719 (= lt!1607405 Unit!79042)))

(declare-fun res!1816177 () Bool)

(assert (=> b!4402719 (= res!1816177 (forall!9380 (_2!27746 (h!54924 (toList!3250 lm!1707))) lambda!149308))))

(declare-fun e!2741433 () Bool)

(assert (=> b!4402719 (=> (not res!1816177) (not e!2741433))))

(assert (=> b!4402719 e!2741433))

(declare-fun lt!1607402 () Unit!79009)

(declare-fun Unit!79043 () Unit!79009)

(assert (=> b!4402719 (= lt!1607402 Unit!79043)))

(declare-fun b!4402720 () Bool)

(declare-fun invariantList!754 (List!49418) Bool)

(assert (=> b!4402720 (= e!2741432 (invariantList!754 (toList!3249 lt!1607400)))))

(declare-fun b!4402721 () Bool)

(assert (=> b!4402721 (= e!2741433 call!306392)))

(declare-fun bm!306387 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!133 (ListMap!2493) Unit!79009)

(assert (=> bm!306387 (= call!306391 (lemmaContainsAllItsOwnKeys!133 lt!1607082))))

(assert (=> b!4402722 (= e!2741434 lt!1607082)))

(declare-fun lt!1607399 () Unit!79009)

(assert (=> b!4402722 (= lt!1607399 call!306391)))

(assert (=> b!4402722 call!306390))

(declare-fun lt!1607397 () Unit!79009)

(assert (=> b!4402722 (= lt!1607397 lt!1607399)))

(assert (=> b!4402722 call!306392))

(declare-fun lt!1607392 () Unit!79009)

(declare-fun Unit!79044 () Unit!79009)

(assert (=> b!4402722 (= lt!1607392 Unit!79044)))

(declare-fun b!4402723 () Bool)

(declare-fun res!1816178 () Bool)

(assert (=> b!4402723 (=> (not res!1816178) (not e!2741432))))

(assert (=> b!4402723 (= res!1816178 (forall!9380 (toList!3249 lt!1607082) lambda!149309))))

(assert (= (and d!1327986 c!749615) b!4402722))

(assert (= (and d!1327986 (not c!749615)) b!4402719))

(assert (= (and b!4402719 res!1816177) b!4402721))

(assert (= (or b!4402722 b!4402719) bm!306387))

(assert (= (or b!4402722 b!4402719) bm!306386))

(assert (= (or b!4402722 b!4402721) bm!306385))

(assert (= (and d!1327986 res!1816179) b!4402723))

(assert (= (and b!4402723 res!1816178) b!4402720))

(declare-fun m!5066815 () Bool)

(assert (=> bm!306385 m!5066815))

(declare-fun m!5066817 () Bool)

(assert (=> b!4402723 m!5066817))

(declare-fun m!5066819 () Bool)

(assert (=> b!4402719 m!5066819))

(declare-fun m!5066821 () Bool)

(assert (=> b!4402719 m!5066821))

(declare-fun m!5066823 () Bool)

(assert (=> b!4402719 m!5066823))

(declare-fun m!5066825 () Bool)

(assert (=> b!4402719 m!5066825))

(declare-fun m!5066827 () Bool)

(assert (=> b!4402719 m!5066827))

(declare-fun m!5066829 () Bool)

(assert (=> b!4402719 m!5066829))

(declare-fun m!5066831 () Bool)

(assert (=> b!4402719 m!5066831))

(declare-fun m!5066833 () Bool)

(assert (=> b!4402719 m!5066833))

(assert (=> b!4402719 m!5066823))

(declare-fun m!5066835 () Bool)

(assert (=> b!4402719 m!5066835))

(assert (=> b!4402719 m!5066831))

(declare-fun m!5066837 () Bool)

(assert (=> b!4402719 m!5066837))

(declare-fun m!5066839 () Bool)

(assert (=> b!4402719 m!5066839))

(assert (=> b!4402719 m!5066837))

(declare-fun m!5066841 () Bool)

(assert (=> d!1327986 m!5066841))

(assert (=> d!1327986 m!5066699))

(declare-fun m!5066843 () Bool)

(assert (=> b!4402720 m!5066843))

(assert (=> bm!306386 m!5066815))

(declare-fun m!5066845 () Bool)

(assert (=> bm!306387 m!5066845))

(assert (=> b!4402443 d!1327986))

(declare-fun bs!729240 () Bool)

(declare-fun d!1328006 () Bool)

(assert (= bs!729240 (and d!1328006 start!428144)))

(declare-fun lambda!149312 () Int)

(assert (=> bs!729240 (= lambda!149312 lambda!149221)))

(declare-fun bs!729241 () Bool)

(assert (= bs!729241 (and d!1328006 d!1327978)))

(assert (=> bs!729241 (= lambda!149312 lambda!149239)))

(declare-fun bs!729242 () Bool)

(assert (= bs!729242 (and d!1328006 d!1327982)))

(assert (=> bs!729242 (= lambda!149312 lambda!149242)))

(declare-fun lt!1607414 () ListMap!2493)

(assert (=> d!1328006 (invariantList!754 (toList!3249 lt!1607414))))

(declare-fun e!2741437 () ListMap!2493)

(assert (=> d!1328006 (= lt!1607414 e!2741437)))

(declare-fun c!749618 () Bool)

(assert (=> d!1328006 (= c!749618 ((_ is Cons!49295) (toList!3250 (+!881 lt!1607074 lt!1607073))))))

(assert (=> d!1328006 (forall!9378 (toList!3250 (+!881 lt!1607074 lt!1607073)) lambda!149312)))

(assert (=> d!1328006 (= (extractMap!692 (toList!3250 (+!881 lt!1607074 lt!1607073))) lt!1607414)))

(declare-fun b!4402730 () Bool)

(assert (=> b!4402730 (= e!2741437 (addToMapMapFromBucket!299 (_2!27746 (h!54924 (toList!3250 (+!881 lt!1607074 lt!1607073)))) (extractMap!692 (t!356353 (toList!3250 (+!881 lt!1607074 lt!1607073))))))))

(declare-fun b!4402731 () Bool)

(assert (=> b!4402731 (= e!2741437 (ListMap!2494 Nil!49294))))

(assert (= (and d!1328006 c!749618) b!4402730))

(assert (= (and d!1328006 (not c!749618)) b!4402731))

(declare-fun m!5066847 () Bool)

(assert (=> d!1328006 m!5066847))

(declare-fun m!5066849 () Bool)

(assert (=> d!1328006 m!5066849))

(declare-fun m!5066851 () Bool)

(assert (=> b!4402730 m!5066851))

(assert (=> b!4402730 m!5066851))

(declare-fun m!5066853 () Bool)

(assert (=> b!4402730 m!5066853))

(assert (=> b!4402443 d!1328006))

(declare-fun bs!729243 () Bool)

(declare-fun d!1328008 () Bool)

(assert (= bs!729243 (and d!1328008 start!428144)))

(declare-fun lambda!149313 () Int)

(assert (=> bs!729243 (= lambda!149313 lambda!149221)))

(declare-fun bs!729244 () Bool)

(assert (= bs!729244 (and d!1328008 d!1327978)))

(assert (=> bs!729244 (= lambda!149313 lambda!149239)))

(declare-fun bs!729245 () Bool)

(assert (= bs!729245 (and d!1328008 d!1327982)))

(assert (=> bs!729245 (= lambda!149313 lambda!149242)))

(declare-fun bs!729246 () Bool)

(assert (= bs!729246 (and d!1328008 d!1328006)))

(assert (=> bs!729246 (= lambda!149313 lambda!149312)))

(declare-fun lt!1607415 () ListMap!2493)

(assert (=> d!1328008 (invariantList!754 (toList!3249 lt!1607415))))

(declare-fun e!2741438 () ListMap!2493)

(assert (=> d!1328008 (= lt!1607415 e!2741438)))

(declare-fun c!749619 () Bool)

(assert (=> d!1328008 (= c!749619 ((_ is Cons!49295) (t!356353 (toList!3250 lm!1707))))))

(assert (=> d!1328008 (forall!9378 (t!356353 (toList!3250 lm!1707)) lambda!149313)))

(assert (=> d!1328008 (= (extractMap!692 (t!356353 (toList!3250 lm!1707))) lt!1607415)))

(declare-fun b!4402732 () Bool)

(assert (=> b!4402732 (= e!2741438 (addToMapMapFromBucket!299 (_2!27746 (h!54924 (t!356353 (toList!3250 lm!1707)))) (extractMap!692 (t!356353 (t!356353 (toList!3250 lm!1707))))))))

(declare-fun b!4402733 () Bool)

(assert (=> b!4402733 (= e!2741438 (ListMap!2494 Nil!49294))))

(assert (= (and d!1328008 c!749619) b!4402732))

(assert (= (and d!1328008 (not c!749619)) b!4402733))

(declare-fun m!5066855 () Bool)

(assert (=> d!1328008 m!5066855))

(declare-fun m!5066857 () Bool)

(assert (=> d!1328008 m!5066857))

(declare-fun m!5066859 () Bool)

(assert (=> b!4402732 m!5066859))

(assert (=> b!4402732 m!5066859))

(declare-fun m!5066861 () Bool)

(assert (=> b!4402732 m!5066861))

(assert (=> b!4402443 d!1328008))

(declare-fun bs!729247 () Bool)

(declare-fun d!1328010 () Bool)

(assert (= bs!729247 (and d!1328010 d!1327978)))

(declare-fun lambda!149314 () Int)

(assert (=> bs!729247 (= lambda!149314 lambda!149239)))

(declare-fun bs!729248 () Bool)

(assert (= bs!729248 (and d!1328010 d!1328006)))

(assert (=> bs!729248 (= lambda!149314 lambda!149312)))

(declare-fun bs!729249 () Bool)

(assert (= bs!729249 (and d!1328010 d!1328008)))

(assert (=> bs!729249 (= lambda!149314 lambda!149313)))

(declare-fun bs!729250 () Bool)

(assert (= bs!729250 (and d!1328010 d!1327982)))

(assert (=> bs!729250 (= lambda!149314 lambda!149242)))

(declare-fun bs!729251 () Bool)

(assert (= bs!729251 (and d!1328010 start!428144)))

(assert (=> bs!729251 (= lambda!149314 lambda!149221)))

(declare-fun lt!1607416 () ListMap!2493)

(assert (=> d!1328010 (invariantList!754 (toList!3249 lt!1607416))))

(declare-fun e!2741439 () ListMap!2493)

(assert (=> d!1328010 (= lt!1607416 e!2741439)))

(declare-fun c!749620 () Bool)

(assert (=> d!1328010 (= c!749620 ((_ is Cons!49295) (toList!3250 lt!1607074)))))

(assert (=> d!1328010 (forall!9378 (toList!3250 lt!1607074) lambda!149314)))

(assert (=> d!1328010 (= (extractMap!692 (toList!3250 lt!1607074)) lt!1607416)))

(declare-fun b!4402734 () Bool)

(assert (=> b!4402734 (= e!2741439 (addToMapMapFromBucket!299 (_2!27746 (h!54924 (toList!3250 lt!1607074))) (extractMap!692 (t!356353 (toList!3250 lt!1607074)))))))

(declare-fun b!4402735 () Bool)

(assert (=> b!4402735 (= e!2741439 (ListMap!2494 Nil!49294))))

(assert (= (and d!1328010 c!749620) b!4402734))

(assert (= (and d!1328010 (not c!749620)) b!4402735))

(declare-fun m!5066863 () Bool)

(assert (=> d!1328010 m!5066863))

(declare-fun m!5066865 () Bool)

(assert (=> d!1328010 m!5066865))

(declare-fun m!5066867 () Bool)

(assert (=> b!4402734 m!5066867))

(assert (=> b!4402734 m!5066867))

(declare-fun m!5066869 () Bool)

(assert (=> b!4402734 m!5066869))

(assert (=> b!4402443 d!1328010))

(declare-fun d!1328012 () Bool)

(declare-fun hash!1895 (Hashable!5025 K!10650) (_ BitVec 64))

(assert (=> d!1328012 (= (hash!1889 hashF!1247 key!3918) (hash!1895 hashF!1247 key!3918))))

(declare-fun bs!729252 () Bool)

(assert (= bs!729252 d!1328012))

(declare-fun m!5066871 () Bool)

(assert (=> bs!729252 m!5066871))

(assert (=> b!4402454 d!1328012))

(declare-fun d!1328014 () Bool)

(declare-fun res!1816184 () Bool)

(declare-fun e!2741444 () Bool)

(assert (=> d!1328014 (=> res!1816184 e!2741444)))

(assert (=> d!1328014 (= res!1816184 ((_ is Nil!49295) (toList!3250 lm!1707)))))

(assert (=> d!1328014 (= (forall!9378 (toList!3250 lm!1707) lambda!149221) e!2741444)))

(declare-fun b!4402740 () Bool)

(declare-fun e!2741445 () Bool)

(assert (=> b!4402740 (= e!2741444 e!2741445)))

(declare-fun res!1816185 () Bool)

(assert (=> b!4402740 (=> (not res!1816185) (not e!2741445))))

(assert (=> b!4402740 (= res!1816185 (dynLambda!20770 lambda!149221 (h!54924 (toList!3250 lm!1707))))))

(declare-fun b!4402741 () Bool)

(assert (=> b!4402741 (= e!2741445 (forall!9378 (t!356353 (toList!3250 lm!1707)) lambda!149221))))

(assert (= (and d!1328014 (not res!1816184)) b!4402740))

(assert (= (and b!4402740 res!1816185) b!4402741))

(declare-fun b_lambda!140003 () Bool)

(assert (=> (not b_lambda!140003) (not b!4402740)))

(declare-fun m!5066873 () Bool)

(assert (=> b!4402740 m!5066873))

(declare-fun m!5066875 () Bool)

(assert (=> b!4402741 m!5066875))

(assert (=> start!428144 d!1328014))

(declare-fun d!1328016 () Bool)

(assert (=> d!1328016 (= (inv!64836 lm!1707) (isStrictlySorted!180 (toList!3250 lm!1707)))))

(declare-fun bs!729253 () Bool)

(assert (= bs!729253 d!1328016))

(assert (=> bs!729253 m!5066493))

(assert (=> start!428144 d!1328016))

(declare-fun d!1328018 () Bool)

(declare-fun res!1816186 () Bool)

(declare-fun e!2741446 () Bool)

(assert (=> d!1328018 (=> res!1816186 e!2741446)))

(assert (=> d!1328018 (= res!1816186 ((_ is Nil!49295) (toList!3250 lt!1607080)))))

(assert (=> d!1328018 (= (forall!9378 (toList!3250 lt!1607080) lambda!149221) e!2741446)))

(declare-fun b!4402742 () Bool)

(declare-fun e!2741447 () Bool)

(assert (=> b!4402742 (= e!2741446 e!2741447)))

(declare-fun res!1816187 () Bool)

(assert (=> b!4402742 (=> (not res!1816187) (not e!2741447))))

(assert (=> b!4402742 (= res!1816187 (dynLambda!20770 lambda!149221 (h!54924 (toList!3250 lt!1607080))))))

(declare-fun b!4402743 () Bool)

(assert (=> b!4402743 (= e!2741447 (forall!9378 (t!356353 (toList!3250 lt!1607080)) lambda!149221))))

(assert (= (and d!1328018 (not res!1816186)) b!4402742))

(assert (= (and b!4402742 res!1816187) b!4402743))

(declare-fun b_lambda!140005 () Bool)

(assert (=> (not b_lambda!140005) (not b!4402742)))

(declare-fun m!5066877 () Bool)

(assert (=> b!4402742 m!5066877))

(declare-fun m!5066879 () Bool)

(assert (=> b!4402743 m!5066879))

(assert (=> b!4402452 d!1328018))

(declare-fun bs!729254 () Bool)

(declare-fun d!1328020 () Bool)

(assert (= bs!729254 (and d!1328020 d!1327978)))

(declare-fun lambda!149317 () Int)

(assert (=> bs!729254 (not (= lambda!149317 lambda!149239))))

(declare-fun bs!729255 () Bool)

(assert (= bs!729255 (and d!1328020 d!1328006)))

(assert (=> bs!729255 (not (= lambda!149317 lambda!149312))))

(declare-fun bs!729256 () Bool)

(assert (= bs!729256 (and d!1328020 d!1328008)))

(assert (=> bs!729256 (not (= lambda!149317 lambda!149313))))

(declare-fun bs!729257 () Bool)

(assert (= bs!729257 (and d!1328020 start!428144)))

(assert (=> bs!729257 (not (= lambda!149317 lambda!149221))))

(declare-fun bs!729258 () Bool)

(assert (= bs!729258 (and d!1328020 d!1328010)))

(assert (=> bs!729258 (not (= lambda!149317 lambda!149314))))

(declare-fun bs!729259 () Bool)

(assert (= bs!729259 (and d!1328020 d!1327982)))

(assert (=> bs!729259 (not (= lambda!149317 lambda!149242))))

(assert (=> d!1328020 true))

(assert (=> d!1328020 (= (allKeysSameHashInMap!737 lm!1707 hashF!1247) (forall!9378 (toList!3250 lm!1707) lambda!149317))))

(declare-fun bs!729260 () Bool)

(assert (= bs!729260 d!1328020))

(declare-fun m!5066881 () Bool)

(assert (=> bs!729260 m!5066881))

(assert (=> b!4402453 d!1328020))

(declare-fun bs!729261 () Bool)

(declare-fun d!1328022 () Bool)

(assert (= bs!729261 (and d!1328022 b!4402722)))

(declare-fun lambda!149320 () Int)

(assert (=> bs!729261 (not (= lambda!149320 lambda!149306))))

(declare-fun bs!729262 () Bool)

(assert (= bs!729262 (and d!1328022 b!4402719)))

(assert (=> bs!729262 (not (= lambda!149320 lambda!149307))))

(assert (=> bs!729262 (not (= lambda!149320 lambda!149308))))

(declare-fun bs!729263 () Bool)

(assert (= bs!729263 (and d!1328022 d!1327986)))

(assert (=> bs!729263 (not (= lambda!149320 lambda!149309))))

(assert (=> d!1328022 true))

(assert (=> d!1328022 true))

(assert (=> d!1328022 (= (allKeysSameHash!591 newBucket!200 hash!377 hashF!1247) (forall!9380 newBucket!200 lambda!149320))))

(declare-fun bs!729264 () Bool)

(assert (= bs!729264 d!1328022))

(declare-fun m!5066883 () Bool)

(assert (=> bs!729264 m!5066883))

(assert (=> b!4402451 d!1328022))

(declare-fun d!1328024 () Bool)

(declare-fun head!9114 (List!49419) tuple2!48904)

(assert (=> d!1328024 (= (head!9112 lm!1707) (head!9114 (toList!3250 lm!1707)))))

(declare-fun bs!729265 () Bool)

(assert (= bs!729265 d!1328024))

(declare-fun m!5066885 () Bool)

(assert (=> bs!729265 m!5066885))

(assert (=> b!4402450 d!1328024))

(assert (=> b!4402448 d!1328018))

(declare-fun d!1328026 () Bool)

(declare-fun e!2741448 () Bool)

(assert (=> d!1328026 e!2741448))

(declare-fun res!1816188 () Bool)

(assert (=> d!1328026 (=> (not res!1816188) (not e!2741448))))

(declare-fun lt!1607419 () ListLongMap!1899)

(assert (=> d!1328026 (= res!1816188 (contains!11692 lt!1607419 (_1!27746 lt!1607073)))))

(declare-fun lt!1607418 () List!49419)

(assert (=> d!1328026 (= lt!1607419 (ListLongMap!1900 lt!1607418))))

(declare-fun lt!1607420 () Unit!79009)

(declare-fun lt!1607417 () Unit!79009)

(assert (=> d!1328026 (= lt!1607420 lt!1607417)))

(assert (=> d!1328026 (= (getValueByKey!606 lt!1607418 (_1!27746 lt!1607073)) (Some!10619 (_2!27746 lt!1607073)))))

(assert (=> d!1328026 (= lt!1607417 (lemmaContainsTupThenGetReturnValue!351 lt!1607418 (_1!27746 lt!1607073) (_2!27746 lt!1607073)))))

(assert (=> d!1328026 (= lt!1607418 (insertStrictlySorted!208 (toList!3250 lm!1707) (_1!27746 lt!1607073) (_2!27746 lt!1607073)))))

(assert (=> d!1328026 (= (+!881 lm!1707 lt!1607073) lt!1607419)))

(declare-fun b!4402750 () Bool)

(declare-fun res!1816189 () Bool)

(assert (=> b!4402750 (=> (not res!1816189) (not e!2741448))))

(assert (=> b!4402750 (= res!1816189 (= (getValueByKey!606 (toList!3250 lt!1607419) (_1!27746 lt!1607073)) (Some!10619 (_2!27746 lt!1607073))))))

(declare-fun b!4402751 () Bool)

(assert (=> b!4402751 (= e!2741448 (contains!11693 (toList!3250 lt!1607419) lt!1607073))))

(assert (= (and d!1328026 res!1816188) b!4402750))

(assert (= (and b!4402750 res!1816189) b!4402751))

(declare-fun m!5066887 () Bool)

(assert (=> d!1328026 m!5066887))

(declare-fun m!5066889 () Bool)

(assert (=> d!1328026 m!5066889))

(declare-fun m!5066891 () Bool)

(assert (=> d!1328026 m!5066891))

(declare-fun m!5066893 () Bool)

(assert (=> d!1328026 m!5066893))

(declare-fun m!5066895 () Bool)

(assert (=> b!4402750 m!5066895))

(declare-fun m!5066897 () Bool)

(assert (=> b!4402751 m!5066897))

(assert (=> b!4402448 d!1328026))

(declare-fun d!1328028 () Bool)

(assert (=> d!1328028 (forall!9378 (toList!3250 (+!881 lm!1707 (tuple2!48905 hash!377 newBucket!200))) lambda!149221)))

(declare-fun lt!1607423 () Unit!79009)

(declare-fun choose!27635 (ListLongMap!1899 Int (_ BitVec 64) List!49418) Unit!79009)

(assert (=> d!1328028 (= lt!1607423 (choose!27635 lm!1707 lambda!149221 hash!377 newBucket!200))))

(declare-fun e!2741451 () Bool)

(assert (=> d!1328028 e!2741451))

(declare-fun res!1816192 () Bool)

(assert (=> d!1328028 (=> (not res!1816192) (not e!2741451))))

(assert (=> d!1328028 (= res!1816192 (forall!9378 (toList!3250 lm!1707) lambda!149221))))

(assert (=> d!1328028 (= (addValidProp!279 lm!1707 lambda!149221 hash!377 newBucket!200) lt!1607423)))

(declare-fun b!4402755 () Bool)

(assert (=> b!4402755 (= e!2741451 (dynLambda!20770 lambda!149221 (tuple2!48905 hash!377 newBucket!200)))))

(assert (= (and d!1328028 res!1816192) b!4402755))

(declare-fun b_lambda!140007 () Bool)

(assert (=> (not b_lambda!140007) (not b!4402755)))

(declare-fun m!5066899 () Bool)

(assert (=> d!1328028 m!5066899))

(declare-fun m!5066901 () Bool)

(assert (=> d!1328028 m!5066901))

(declare-fun m!5066903 () Bool)

(assert (=> d!1328028 m!5066903))

(assert (=> d!1328028 m!5066365))

(declare-fun m!5066905 () Bool)

(assert (=> b!4402755 m!5066905))

(assert (=> b!4402448 d!1328028))

(assert (=> b!4402448 d!1328014))

(declare-fun b!4402756 () Bool)

(assert (=> b!4402756 false))

(declare-fun lt!1607425 () Unit!79009)

(declare-fun lt!1607430 () Unit!79009)

(assert (=> b!4402756 (= lt!1607425 lt!1607430)))

(assert (=> b!4402756 (containsKey!951 (toList!3249 lt!1607086) key!3918)))

(assert (=> b!4402756 (= lt!1607430 (lemmaInGetKeysListThenContainsKey!199 (toList!3249 lt!1607086) key!3918))))

(declare-fun e!2741453 () Unit!79009)

(declare-fun Unit!79045 () Unit!79009)

(assert (=> b!4402756 (= e!2741453 Unit!79045)))

(declare-fun b!4402757 () Bool)

(declare-fun e!2741454 () Bool)

(assert (=> b!4402757 (= e!2741454 (not (contains!11695 (keys!16757 lt!1607086) key!3918)))))

(declare-fun d!1328030 () Bool)

(declare-fun e!2741456 () Bool)

(assert (=> d!1328030 e!2741456))

(declare-fun res!1816193 () Bool)

(assert (=> d!1328030 (=> res!1816193 e!2741456)))

(assert (=> d!1328030 (= res!1816193 e!2741454)))

(declare-fun res!1816194 () Bool)

(assert (=> d!1328030 (=> (not res!1816194) (not e!2741454))))

(declare-fun lt!1607427 () Bool)

(assert (=> d!1328030 (= res!1816194 (not lt!1607427))))

(declare-fun lt!1607426 () Bool)

(assert (=> d!1328030 (= lt!1607427 lt!1607426)))

(declare-fun lt!1607429 () Unit!79009)

(declare-fun e!2741452 () Unit!79009)

(assert (=> d!1328030 (= lt!1607429 e!2741452)))

(declare-fun c!749621 () Bool)

(assert (=> d!1328030 (= c!749621 lt!1607426)))

(assert (=> d!1328030 (= lt!1607426 (containsKey!951 (toList!3249 lt!1607086) key!3918))))

(assert (=> d!1328030 (= (contains!11691 lt!1607086 key!3918) lt!1607427)))

(declare-fun b!4402758 () Bool)

(declare-fun Unit!79046 () Unit!79009)

(assert (=> b!4402758 (= e!2741453 Unit!79046)))

(declare-fun bm!306388 () Bool)

(declare-fun call!306393 () Bool)

(declare-fun e!2741455 () List!49421)

(assert (=> bm!306388 (= call!306393 (contains!11695 e!2741455 key!3918))))

(declare-fun c!749622 () Bool)

(assert (=> bm!306388 (= c!749622 c!749621)))

(declare-fun b!4402759 () Bool)

(declare-fun e!2741457 () Bool)

(assert (=> b!4402759 (= e!2741457 (contains!11695 (keys!16757 lt!1607086) key!3918))))

(declare-fun b!4402760 () Bool)

(assert (=> b!4402760 (= e!2741452 e!2741453)))

(declare-fun c!749623 () Bool)

(assert (=> b!4402760 (= c!749623 call!306393)))

(declare-fun b!4402761 () Bool)

(assert (=> b!4402761 (= e!2741455 (getKeysList!201 (toList!3249 lt!1607086)))))

(declare-fun b!4402762 () Bool)

(assert (=> b!4402762 (= e!2741456 e!2741457)))

(declare-fun res!1816195 () Bool)

(assert (=> b!4402762 (=> (not res!1816195) (not e!2741457))))

(assert (=> b!4402762 (= res!1816195 (isDefined!7914 (getValueByKey!607 (toList!3249 lt!1607086) key!3918)))))

(declare-fun b!4402763 () Bool)

(assert (=> b!4402763 (= e!2741455 (keys!16757 lt!1607086))))

(declare-fun b!4402764 () Bool)

(declare-fun lt!1607424 () Unit!79009)

(assert (=> b!4402764 (= e!2741452 lt!1607424)))

(declare-fun lt!1607431 () Unit!79009)

(assert (=> b!4402764 (= lt!1607431 (lemmaContainsKeyImpliesGetValueByKeyDefined!517 (toList!3249 lt!1607086) key!3918))))

(assert (=> b!4402764 (isDefined!7914 (getValueByKey!607 (toList!3249 lt!1607086) key!3918))))

(declare-fun lt!1607428 () Unit!79009)

(assert (=> b!4402764 (= lt!1607428 lt!1607431)))

(assert (=> b!4402764 (= lt!1607424 (lemmaInListThenGetKeysListContains!198 (toList!3249 lt!1607086) key!3918))))

(assert (=> b!4402764 call!306393))

(assert (= (and d!1328030 c!749621) b!4402764))

(assert (= (and d!1328030 (not c!749621)) b!4402760))

(assert (= (and b!4402760 c!749623) b!4402756))

(assert (= (and b!4402760 (not c!749623)) b!4402758))

(assert (= (or b!4402764 b!4402760) bm!306388))

(assert (= (and bm!306388 c!749622) b!4402761))

(assert (= (and bm!306388 (not c!749622)) b!4402763))

(assert (= (and d!1328030 res!1816194) b!4402757))

(assert (= (and d!1328030 (not res!1816193)) b!4402762))

(assert (= (and b!4402762 res!1816195) b!4402759))

(declare-fun m!5066907 () Bool)

(assert (=> b!4402757 m!5066907))

(assert (=> b!4402757 m!5066907))

(declare-fun m!5066909 () Bool)

(assert (=> b!4402757 m!5066909))

(declare-fun m!5066911 () Bool)

(assert (=> bm!306388 m!5066911))

(assert (=> b!4402763 m!5066907))

(declare-fun m!5066913 () Bool)

(assert (=> b!4402762 m!5066913))

(assert (=> b!4402762 m!5066913))

(declare-fun m!5066915 () Bool)

(assert (=> b!4402762 m!5066915))

(declare-fun m!5066917 () Bool)

(assert (=> b!4402764 m!5066917))

(assert (=> b!4402764 m!5066913))

(assert (=> b!4402764 m!5066913))

(assert (=> b!4402764 m!5066915))

(declare-fun m!5066919 () Bool)

(assert (=> b!4402764 m!5066919))

(declare-fun m!5066921 () Bool)

(assert (=> d!1328030 m!5066921))

(assert (=> b!4402759 m!5066907))

(assert (=> b!4402759 m!5066907))

(assert (=> b!4402759 m!5066909))

(assert (=> b!4402756 m!5066921))

(declare-fun m!5066923 () Bool)

(assert (=> b!4402756 m!5066923))

(declare-fun m!5066925 () Bool)

(assert (=> b!4402761 m!5066925))

(assert (=> b!4402449 d!1328030))

(declare-fun bs!729266 () Bool)

(declare-fun d!1328032 () Bool)

(assert (= bs!729266 (and d!1328032 d!1327978)))

(declare-fun lambda!149321 () Int)

(assert (=> bs!729266 (= lambda!149321 lambda!149239)))

(declare-fun bs!729267 () Bool)

(assert (= bs!729267 (and d!1328032 d!1328020)))

(assert (=> bs!729267 (not (= lambda!149321 lambda!149317))))

(declare-fun bs!729268 () Bool)

(assert (= bs!729268 (and d!1328032 d!1328006)))

(assert (=> bs!729268 (= lambda!149321 lambda!149312)))

(declare-fun bs!729269 () Bool)

(assert (= bs!729269 (and d!1328032 d!1328008)))

(assert (=> bs!729269 (= lambda!149321 lambda!149313)))

(declare-fun bs!729270 () Bool)

(assert (= bs!729270 (and d!1328032 start!428144)))

(assert (=> bs!729270 (= lambda!149321 lambda!149221)))

(declare-fun bs!729271 () Bool)

(assert (= bs!729271 (and d!1328032 d!1328010)))

(assert (=> bs!729271 (= lambda!149321 lambda!149314)))

(declare-fun bs!729272 () Bool)

(assert (= bs!729272 (and d!1328032 d!1327982)))

(assert (=> bs!729272 (= lambda!149321 lambda!149242)))

(declare-fun lt!1607432 () ListMap!2493)

(assert (=> d!1328032 (invariantList!754 (toList!3249 lt!1607432))))

(declare-fun e!2741458 () ListMap!2493)

(assert (=> d!1328032 (= lt!1607432 e!2741458)))

(declare-fun c!749624 () Bool)

(assert (=> d!1328032 (= c!749624 ((_ is Cons!49295) (toList!3250 lm!1707)))))

(assert (=> d!1328032 (forall!9378 (toList!3250 lm!1707) lambda!149321)))

(assert (=> d!1328032 (= (extractMap!692 (toList!3250 lm!1707)) lt!1607432)))

(declare-fun b!4402765 () Bool)

(assert (=> b!4402765 (= e!2741458 (addToMapMapFromBucket!299 (_2!27746 (h!54924 (toList!3250 lm!1707))) (extractMap!692 (t!356353 (toList!3250 lm!1707)))))))

(declare-fun b!4402766 () Bool)

(assert (=> b!4402766 (= e!2741458 (ListMap!2494 Nil!49294))))

(assert (= (and d!1328032 c!749624) b!4402765))

(assert (= (and d!1328032 (not c!749624)) b!4402766))

(declare-fun m!5066927 () Bool)

(assert (=> d!1328032 m!5066927))

(declare-fun m!5066929 () Bool)

(assert (=> d!1328032 m!5066929))

(assert (=> b!4402765 m!5066397))

(assert (=> b!4402765 m!5066397))

(declare-fun m!5066931 () Bool)

(assert (=> b!4402765 m!5066931))

(assert (=> b!4402449 d!1328032))

(declare-fun d!1328034 () Bool)

(declare-fun res!1816200 () Bool)

(declare-fun e!2741463 () Bool)

(assert (=> d!1328034 (=> res!1816200 e!2741463)))

(assert (=> d!1328034 (= res!1816200 (not ((_ is Cons!49294) newBucket!200)))))

(assert (=> d!1328034 (= (noDuplicateKeys!633 newBucket!200) e!2741463)))

(declare-fun b!4402771 () Bool)

(declare-fun e!2741464 () Bool)

(assert (=> b!4402771 (= e!2741463 e!2741464)))

(declare-fun res!1816201 () Bool)

(assert (=> b!4402771 (=> (not res!1816201) (not e!2741464))))

(assert (=> b!4402771 (= res!1816201 (not (containsKey!947 (t!356352 newBucket!200) (_1!27745 (h!54923 newBucket!200)))))))

(declare-fun b!4402772 () Bool)

(assert (=> b!4402772 (= e!2741464 (noDuplicateKeys!633 (t!356352 newBucket!200)))))

(assert (= (and d!1328034 (not res!1816200)) b!4402771))

(assert (= (and b!4402771 res!1816201) b!4402772))

(declare-fun m!5066933 () Bool)

(assert (=> b!4402771 m!5066933))

(declare-fun m!5066935 () Bool)

(assert (=> b!4402772 m!5066935))

(assert (=> b!4402447 d!1328034))

(declare-fun b!4402777 () Bool)

(declare-fun e!2741467 () Bool)

(declare-fun tp!1331914 () Bool)

(declare-fun tp!1331915 () Bool)

(assert (=> b!4402777 (= e!2741467 (and tp!1331914 tp!1331915))))

(assert (=> b!4402456 (= tp!1331900 e!2741467)))

(assert (= (and b!4402456 ((_ is Cons!49295) (toList!3250 lm!1707))) b!4402777))

(declare-fun tp!1331918 () Bool)

(declare-fun b!4402782 () Bool)

(declare-fun e!2741470 () Bool)

(assert (=> b!4402782 (= e!2741470 (and tp_is_empty!25769 tp_is_empty!25771 tp!1331918))))

(assert (=> b!4402445 (= tp!1331899 e!2741470)))

(assert (= (and b!4402445 ((_ is Cons!49294) (t!356352 newBucket!200))) b!4402782))

(declare-fun b_lambda!140009 () Bool)

(assert (= b_lambda!140007 (or start!428144 b_lambda!140009)))

(declare-fun bs!729273 () Bool)

(declare-fun d!1328036 () Bool)

(assert (= bs!729273 (and d!1328036 start!428144)))

(assert (=> bs!729273 (= (dynLambda!20770 lambda!149221 (tuple2!48905 hash!377 newBucket!200)) (noDuplicateKeys!633 (_2!27746 (tuple2!48905 hash!377 newBucket!200))))))

(declare-fun m!5066937 () Bool)

(assert (=> bs!729273 m!5066937))

(assert (=> b!4402755 d!1328036))

(declare-fun b_lambda!140011 () Bool)

(assert (= b_lambda!140005 (or start!428144 b_lambda!140011)))

(declare-fun bs!729274 () Bool)

(declare-fun d!1328038 () Bool)

(assert (= bs!729274 (and d!1328038 start!428144)))

(assert (=> bs!729274 (= (dynLambda!20770 lambda!149221 (h!54924 (toList!3250 lt!1607080))) (noDuplicateKeys!633 (_2!27746 (h!54924 (toList!3250 lt!1607080)))))))

(declare-fun m!5066939 () Bool)

(assert (=> bs!729274 m!5066939))

(assert (=> b!4402742 d!1328038))

(declare-fun b_lambda!140013 () Bool)

(assert (= b_lambda!139989 (or start!428144 b_lambda!140013)))

(declare-fun bs!729275 () Bool)

(declare-fun d!1328040 () Bool)

(assert (= bs!729275 (and d!1328040 start!428144)))

(assert (=> bs!729275 (= (dynLambda!20770 lambda!149221 lt!1607081) (noDuplicateKeys!633 (_2!27746 lt!1607081)))))

(declare-fun m!5066941 () Bool)

(assert (=> bs!729275 m!5066941))

(assert (=> d!1327914 d!1328040))

(declare-fun b_lambda!140015 () Bool)

(assert (= b_lambda!140003 (or start!428144 b_lambda!140015)))

(declare-fun bs!729276 () Bool)

(declare-fun d!1328042 () Bool)

(assert (= bs!729276 (and d!1328042 start!428144)))

(assert (=> bs!729276 (= (dynLambda!20770 lambda!149221 (h!54924 (toList!3250 lm!1707))) (noDuplicateKeys!633 (_2!27746 (h!54924 (toList!3250 lm!1707)))))))

(assert (=> bs!729276 m!5066699))

(assert (=> b!4402740 d!1328042))

(check-sat (not b!4402647) (not b!4402777) (not d!1327902) (not d!1327976) (not b!4402743) (not b!4402635) (not d!1327944) (not bm!306366) (not d!1328030) (not b!4402641) (not d!1328006) (not b!4402649) (not d!1327980) (not d!1328022) (not bm!306386) (not bs!729275) (not b!4402511) (not b!4402636) (not bm!306388) (not b!4402741) (not b!4402542) (not d!1327900) (not b!4402529) (not d!1327914) (not d!1327984) (not b!4402734) (not b!4402493) (not bm!306385) (not b!4402652) (not b!4402581) (not d!1327920) (not d!1327974) (not b!4402719) (not d!1327938) (not b!4402468) (not b!4402759) (not b!4402757) (not b_lambda!140011) (not b!4402642) (not b!4402650) (not b!4402634) (not b!4402723) (not b!4402628) (not b!4402763) (not b_lambda!140015) (not b!4402750) (not d!1328024) (not b!4402629) (not b!4402756) (not b!4402657) tp_is_empty!25769 (not d!1327934) (not d!1328028) (not d!1328032) (not b!4402656) (not d!1328008) (not b!4402655) (not b!4402732) (not bm!306367) (not b_lambda!140009) (not d!1327978) (not d!1327986) tp_is_empty!25771 (not d!1328016) (not bs!729274) (not b!4402765) (not b!4402761) (not d!1328026) (not b!4402772) (not b_lambda!140013) (not d!1328010) (not b!4402751) (not d!1327940) (not b!4402654) (not b!4402648) (not d!1328012) (not b!4402730) (not b!4402782) (not bs!729276) (not d!1327982) (not d!1327930) (not b!4402577) (not bs!729273) (not b!4402720) (not b!4402762) (not b!4402579) (not d!1328020) (not b!4402764) (not bm!306387) (not b!4402771) (not b!4402631) (not b!4402633) (not d!1327972))
(check-sat)
(get-model)

(declare-fun b!4402841 () Bool)

(assert (=> b!4402841 true))

(declare-fun bs!729277 () Bool)

(declare-fun b!4402838 () Bool)

(assert (= bs!729277 (and b!4402838 b!4402841)))

(declare-fun lambda!149331 () Int)

(declare-fun lambda!149330 () Int)

(assert (=> bs!729277 (= (= (Cons!49294 (h!54923 (toList!3249 lt!1607082)) (t!356352 (toList!3249 lt!1607082))) (t!356352 (toList!3249 lt!1607082))) (= lambda!149331 lambda!149330))))

(assert (=> b!4402838 true))

(declare-fun bs!729278 () Bool)

(declare-fun b!4402840 () Bool)

(assert (= bs!729278 (and b!4402840 b!4402841)))

(declare-fun lambda!149332 () Int)

(assert (=> bs!729278 (= (= (toList!3249 lt!1607082) (t!356352 (toList!3249 lt!1607082))) (= lambda!149332 lambda!149330))))

(declare-fun bs!729279 () Bool)

(assert (= bs!729279 (and b!4402840 b!4402838)))

(assert (=> bs!729279 (= (= (toList!3249 lt!1607082) (Cons!49294 (h!54923 (toList!3249 lt!1607082)) (t!356352 (toList!3249 lt!1607082)))) (= lambda!149332 lambda!149331))))

(assert (=> b!4402840 true))

(declare-fun b!4402836 () Bool)

(declare-fun e!2741503 () Unit!79009)

(declare-fun Unit!79047 () Unit!79009)

(assert (=> b!4402836 (= e!2741503 Unit!79047)))

(declare-fun b!4402837 () Bool)

(assert (=> b!4402837 false))

(declare-fun Unit!79048 () Unit!79009)

(assert (=> b!4402837 (= e!2741503 Unit!79048)))

(declare-fun d!1328054 () Bool)

(declare-fun e!2741502 () Bool)

(assert (=> d!1328054 e!2741502))

(declare-fun res!1816226 () Bool)

(assert (=> d!1328054 (=> (not res!1816226) (not e!2741502))))

(declare-fun lt!1607462 () List!49421)

(declare-fun noDuplicate!641 (List!49421) Bool)

(assert (=> d!1328054 (= res!1816226 (noDuplicate!641 lt!1607462))))

(declare-fun e!2741505 () List!49421)

(assert (=> d!1328054 (= lt!1607462 e!2741505)))

(declare-fun c!749641 () Bool)

(assert (=> d!1328054 (= c!749641 ((_ is Cons!49294) (toList!3249 lt!1607082)))))

(assert (=> d!1328054 (invariantList!754 (toList!3249 lt!1607082))))

(assert (=> d!1328054 (= (getKeysList!201 (toList!3249 lt!1607082)) lt!1607462)))

(assert (=> b!4402838 (= e!2741505 (Cons!49297 (_1!27745 (h!54923 (toList!3249 lt!1607082))) (getKeysList!201 (t!356352 (toList!3249 lt!1607082)))))))

(declare-fun c!749642 () Bool)

(assert (=> b!4402838 (= c!749642 (containsKey!951 (t!356352 (toList!3249 lt!1607082)) (_1!27745 (h!54923 (toList!3249 lt!1607082)))))))

(declare-fun lt!1607459 () Unit!79009)

(assert (=> b!4402838 (= lt!1607459 e!2741503)))

(declare-fun c!749640 () Bool)

(assert (=> b!4402838 (= c!749640 (contains!11695 (getKeysList!201 (t!356352 (toList!3249 lt!1607082))) (_1!27745 (h!54923 (toList!3249 lt!1607082)))))))

(declare-fun lt!1607461 () Unit!79009)

(declare-fun e!2741504 () Unit!79009)

(assert (=> b!4402838 (= lt!1607461 e!2741504)))

(declare-fun lt!1607460 () List!49421)

(assert (=> b!4402838 (= lt!1607460 (getKeysList!201 (t!356352 (toList!3249 lt!1607082))))))

(declare-fun lt!1607458 () Unit!79009)

(declare-fun lemmaForallContainsAddHeadPreserves!63 (List!49418 List!49421 tuple2!48902) Unit!79009)

(assert (=> b!4402838 (= lt!1607458 (lemmaForallContainsAddHeadPreserves!63 (t!356352 (toList!3249 lt!1607082)) lt!1607460 (h!54923 (toList!3249 lt!1607082))))))

(declare-fun forall!9381 (List!49421 Int) Bool)

(assert (=> b!4402838 (forall!9381 lt!1607460 lambda!149331)))

(declare-fun lt!1607464 () Unit!79009)

(assert (=> b!4402838 (= lt!1607464 lt!1607458)))

(declare-fun b!4402839 () Bool)

(assert (=> b!4402839 (= e!2741505 Nil!49297)))

(declare-fun res!1816225 () Bool)

(assert (=> b!4402840 (=> (not res!1816225) (not e!2741502))))

(assert (=> b!4402840 (= res!1816225 (forall!9381 lt!1607462 lambda!149332))))

(assert (=> b!4402841 false))

(declare-fun lt!1607463 () Unit!79009)

(declare-fun forallContained!2016 (List!49421 Int K!10650) Unit!79009)

(assert (=> b!4402841 (= lt!1607463 (forallContained!2016 (getKeysList!201 (t!356352 (toList!3249 lt!1607082))) lambda!149330 (_1!27745 (h!54923 (toList!3249 lt!1607082)))))))

(declare-fun Unit!79049 () Unit!79009)

(assert (=> b!4402841 (= e!2741504 Unit!79049)))

(declare-fun b!4402842 () Bool)

(declare-fun res!1816227 () Bool)

(assert (=> b!4402842 (=> (not res!1816227) (not e!2741502))))

(declare-fun length!138 (List!49421) Int)

(declare-fun length!139 (List!49418) Int)

(assert (=> b!4402842 (= res!1816227 (= (length!138 lt!1607462) (length!139 (toList!3249 lt!1607082))))))

(declare-fun b!4402843 () Bool)

(declare-fun Unit!79050 () Unit!79009)

(assert (=> b!4402843 (= e!2741504 Unit!79050)))

(declare-fun lambda!149333 () Int)

(declare-fun b!4402844 () Bool)

(declare-fun content!7881 (List!49421) (InoxSet K!10650))

(declare-fun map!10754 (List!49418 Int) List!49421)

(assert (=> b!4402844 (= e!2741502 (= (content!7881 lt!1607462) (content!7881 (map!10754 (toList!3249 lt!1607082) lambda!149333))))))

(assert (= (and d!1328054 c!749641) b!4402838))

(assert (= (and d!1328054 (not c!749641)) b!4402839))

(assert (= (and b!4402838 c!749642) b!4402837))

(assert (= (and b!4402838 (not c!749642)) b!4402836))

(assert (= (and b!4402838 c!749640) b!4402841))

(assert (= (and b!4402838 (not c!749640)) b!4402843))

(assert (= (and d!1328054 res!1816226) b!4402842))

(assert (= (and b!4402842 res!1816227) b!4402840))

(assert (= (and b!4402840 res!1816225) b!4402844))

(declare-fun m!5066975 () Bool)

(assert (=> b!4402842 m!5066975))

(declare-fun m!5066977 () Bool)

(assert (=> b!4402842 m!5066977))

(declare-fun m!5066979 () Bool)

(assert (=> d!1328054 m!5066979))

(declare-fun m!5066981 () Bool)

(assert (=> d!1328054 m!5066981))

(declare-fun m!5066983 () Bool)

(assert (=> b!4402840 m!5066983))

(declare-fun m!5066985 () Bool)

(assert (=> b!4402841 m!5066985))

(assert (=> b!4402841 m!5066985))

(declare-fun m!5066987 () Bool)

(assert (=> b!4402841 m!5066987))

(declare-fun m!5066989 () Bool)

(assert (=> b!4402844 m!5066989))

(declare-fun m!5066991 () Bool)

(assert (=> b!4402844 m!5066991))

(assert (=> b!4402844 m!5066991))

(declare-fun m!5066993 () Bool)

(assert (=> b!4402844 m!5066993))

(declare-fun m!5066995 () Bool)

(assert (=> b!4402838 m!5066995))

(declare-fun m!5066997 () Bool)

(assert (=> b!4402838 m!5066997))

(assert (=> b!4402838 m!5066985))

(declare-fun m!5066999 () Bool)

(assert (=> b!4402838 m!5066999))

(assert (=> b!4402838 m!5066985))

(declare-fun m!5067001 () Bool)

(assert (=> b!4402838 m!5067001))

(assert (=> b!4402654 d!1328054))

(declare-fun d!1328058 () Bool)

(assert (=> d!1328058 (= (get!16049 (getValueByKey!606 (toList!3250 lm!1707) (_1!27746 (h!54924 (toList!3250 lm!1707))))) (v!43739 (getValueByKey!606 (toList!3250 lm!1707) (_1!27746 (h!54924 (toList!3250 lm!1707))))))))

(assert (=> d!1327940 d!1328058))

(declare-fun b!4402858 () Bool)

(declare-fun e!2741511 () Option!10620)

(assert (=> b!4402858 (= e!2741511 None!10619)))

(declare-fun d!1328060 () Bool)

(declare-fun c!749647 () Bool)

(assert (=> d!1328060 (= c!749647 (and ((_ is Cons!49295) (toList!3250 lm!1707)) (= (_1!27746 (h!54924 (toList!3250 lm!1707))) (_1!27746 (h!54924 (toList!3250 lm!1707))))))))

(declare-fun e!2741510 () Option!10620)

(assert (=> d!1328060 (= (getValueByKey!606 (toList!3250 lm!1707) (_1!27746 (h!54924 (toList!3250 lm!1707)))) e!2741510)))

(declare-fun b!4402857 () Bool)

(assert (=> b!4402857 (= e!2741511 (getValueByKey!606 (t!356353 (toList!3250 lm!1707)) (_1!27746 (h!54924 (toList!3250 lm!1707)))))))

(declare-fun b!4402855 () Bool)

(assert (=> b!4402855 (= e!2741510 (Some!10619 (_2!27746 (h!54924 (toList!3250 lm!1707)))))))

(declare-fun b!4402856 () Bool)

(assert (=> b!4402856 (= e!2741510 e!2741511)))

(declare-fun c!749648 () Bool)

(assert (=> b!4402856 (= c!749648 (and ((_ is Cons!49295) (toList!3250 lm!1707)) (not (= (_1!27746 (h!54924 (toList!3250 lm!1707))) (_1!27746 (h!54924 (toList!3250 lm!1707)))))))))

(assert (= (and d!1328060 c!749647) b!4402855))

(assert (= (and d!1328060 (not c!749647)) b!4402856))

(assert (= (and b!4402856 c!749648) b!4402857))

(assert (= (and b!4402856 (not c!749648)) b!4402858))

(declare-fun m!5067003 () Bool)

(assert (=> b!4402857 m!5067003))

(assert (=> d!1327940 d!1328060))

(declare-fun d!1328062 () Bool)

(declare-fun res!1816232 () Bool)

(declare-fun e!2741516 () Bool)

(assert (=> d!1328062 (=> res!1816232 e!2741516)))

(assert (=> d!1328062 (= res!1816232 (and ((_ is Cons!49294) (toList!3249 lt!1607072)) (= (_1!27745 (h!54923 (toList!3249 lt!1607072))) key!3918)))))

(assert (=> d!1328062 (= (containsKey!951 (toList!3249 lt!1607072) key!3918) e!2741516)))

(declare-fun b!4402863 () Bool)

(declare-fun e!2741517 () Bool)

(assert (=> b!4402863 (= e!2741516 e!2741517)))

(declare-fun res!1816233 () Bool)

(assert (=> b!4402863 (=> (not res!1816233) (not e!2741517))))

(assert (=> b!4402863 (= res!1816233 ((_ is Cons!49294) (toList!3249 lt!1607072)))))

(declare-fun b!4402864 () Bool)

(assert (=> b!4402864 (= e!2741517 (containsKey!951 (t!356352 (toList!3249 lt!1607072)) key!3918))))

(assert (= (and d!1328062 (not res!1816232)) b!4402863))

(assert (= (and b!4402863 res!1816233) b!4402864))

(declare-fun m!5067005 () Bool)

(assert (=> b!4402864 m!5067005))

(assert (=> b!4402628 d!1328062))

(declare-fun d!1328064 () Bool)

(assert (=> d!1328064 (containsKey!951 (toList!3249 lt!1607072) key!3918)))

(declare-fun lt!1607467 () Unit!79009)

(declare-fun choose!27636 (List!49418 K!10650) Unit!79009)

(assert (=> d!1328064 (= lt!1607467 (choose!27636 (toList!3249 lt!1607072) key!3918))))

(assert (=> d!1328064 (invariantList!754 (toList!3249 lt!1607072))))

(assert (=> d!1328064 (= (lemmaInGetKeysListThenContainsKey!199 (toList!3249 lt!1607072) key!3918) lt!1607467)))

(declare-fun bs!729280 () Bool)

(assert (= bs!729280 d!1328064))

(assert (=> bs!729280 m!5066643))

(declare-fun m!5067007 () Bool)

(assert (=> bs!729280 m!5067007))

(declare-fun m!5067009 () Bool)

(assert (=> bs!729280 m!5067009))

(assert (=> b!4402628 d!1328064))

(declare-fun d!1328066 () Bool)

(assert (=> d!1328066 (isDefined!7913 (getValueByKey!606 (toList!3250 lm!1707) hash!377))))

(declare-fun lt!1607470 () Unit!79009)

(declare-fun choose!27637 (List!49419 (_ BitVec 64)) Unit!79009)

(assert (=> d!1328066 (= lt!1607470 (choose!27637 (toList!3250 lm!1707) hash!377))))

(declare-fun e!2741520 () Bool)

(assert (=> d!1328066 e!2741520))

(declare-fun res!1816236 () Bool)

(assert (=> d!1328066 (=> (not res!1816236) (not e!2741520))))

(assert (=> d!1328066 (= res!1816236 (isStrictlySorted!180 (toList!3250 lm!1707)))))

(assert (=> d!1328066 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!516 (toList!3250 lm!1707) hash!377) lt!1607470)))

(declare-fun b!4402867 () Bool)

(assert (=> b!4402867 (= e!2741520 (containsKey!950 (toList!3250 lm!1707) hash!377))))

(assert (= (and d!1328066 res!1816236) b!4402867))

(assert (=> d!1328066 m!5066433))

(assert (=> d!1328066 m!5066433))

(assert (=> d!1328066 m!5066527))

(declare-fun m!5067011 () Bool)

(assert (=> d!1328066 m!5067011))

(assert (=> d!1328066 m!5066493))

(assert (=> b!4402867 m!5066523))

(assert (=> b!4402577 d!1328066))

(declare-fun d!1328068 () Bool)

(declare-fun isEmpty!28288 (Option!10620) Bool)

(assert (=> d!1328068 (= (isDefined!7913 (getValueByKey!606 (toList!3250 lm!1707) hash!377)) (not (isEmpty!28288 (getValueByKey!606 (toList!3250 lm!1707) hash!377))))))

(declare-fun bs!729281 () Bool)

(assert (= bs!729281 d!1328068))

(assert (=> bs!729281 m!5066433))

(declare-fun m!5067013 () Bool)

(assert (=> bs!729281 m!5067013))

(assert (=> b!4402577 d!1328068))

(declare-fun b!4402871 () Bool)

(declare-fun e!2741522 () Option!10620)

(assert (=> b!4402871 (= e!2741522 None!10619)))

(declare-fun d!1328070 () Bool)

(declare-fun c!749649 () Bool)

(assert (=> d!1328070 (= c!749649 (and ((_ is Cons!49295) (toList!3250 lm!1707)) (= (_1!27746 (h!54924 (toList!3250 lm!1707))) hash!377)))))

(declare-fun e!2741521 () Option!10620)

(assert (=> d!1328070 (= (getValueByKey!606 (toList!3250 lm!1707) hash!377) e!2741521)))

(declare-fun b!4402870 () Bool)

(assert (=> b!4402870 (= e!2741522 (getValueByKey!606 (t!356353 (toList!3250 lm!1707)) hash!377))))

(declare-fun b!4402868 () Bool)

(assert (=> b!4402868 (= e!2741521 (Some!10619 (_2!27746 (h!54924 (toList!3250 lm!1707)))))))

(declare-fun b!4402869 () Bool)

(assert (=> b!4402869 (= e!2741521 e!2741522)))

(declare-fun c!749650 () Bool)

(assert (=> b!4402869 (= c!749650 (and ((_ is Cons!49295) (toList!3250 lm!1707)) (not (= (_1!27746 (h!54924 (toList!3250 lm!1707))) hash!377))))))

(assert (= (and d!1328070 c!749649) b!4402868))

(assert (= (and d!1328070 (not c!749649)) b!4402869))

(assert (= (and b!4402869 c!749650) b!4402870))

(assert (= (and b!4402869 (not c!749650)) b!4402871))

(declare-fun m!5067015 () Bool)

(assert (=> b!4402870 m!5067015))

(assert (=> b!4402577 d!1328070))

(declare-fun d!1328072 () Bool)

(declare-fun lt!1607481 () Bool)

(assert (=> d!1328072 (= lt!1607481 (select (content!7880 (toList!3249 lt!1607232)) lt!1607083))))

(declare-fun e!2741534 () Bool)

(assert (=> d!1328072 (= lt!1607481 e!2741534)))

(declare-fun res!1816243 () Bool)

(assert (=> d!1328072 (=> (not res!1816243) (not e!2741534))))

(assert (=> d!1328072 (= res!1816243 ((_ is Cons!49294) (toList!3249 lt!1607232)))))

(assert (=> d!1328072 (= (contains!11697 (toList!3249 lt!1607232) lt!1607083) lt!1607481)))

(declare-fun b!4402886 () Bool)

(declare-fun e!2741533 () Bool)

(assert (=> b!4402886 (= e!2741534 e!2741533)))

(declare-fun res!1816244 () Bool)

(assert (=> b!4402886 (=> res!1816244 e!2741533)))

(assert (=> b!4402886 (= res!1816244 (= (h!54923 (toList!3249 lt!1607232)) lt!1607083))))

(declare-fun b!4402887 () Bool)

(assert (=> b!4402887 (= e!2741533 (contains!11697 (t!356352 (toList!3249 lt!1607232)) lt!1607083))))

(assert (= (and d!1328072 res!1816243) b!4402886))

(assert (= (and b!4402886 (not res!1816244)) b!4402887))

(declare-fun m!5067017 () Bool)

(assert (=> d!1328072 m!5067017))

(declare-fun m!5067019 () Bool)

(assert (=> d!1328072 m!5067019))

(declare-fun m!5067021 () Bool)

(assert (=> b!4402887 m!5067021))

(assert (=> b!4402648 d!1328072))

(declare-fun d!1328074 () Bool)

(assert (=> d!1328074 (eq!339 (extractMap!692 (toList!3250 (+!881 lt!1607074 (tuple2!48905 hash!377 newBucket!200)))) (+!882 (extractMap!692 (toList!3250 lt!1607074)) (tuple2!48903 key!3918 newValue!99)))))

(assert (=> d!1328074 true))

(declare-fun _$10!182 () Unit!79009)

(assert (=> d!1328074 (= (choose!27634 lt!1607074 hash!377 newBucket!200 key!3918 newValue!99 hashF!1247) _$10!182)))

(declare-fun bs!729282 () Bool)

(assert (= bs!729282 d!1328074))

(assert (=> bs!729282 m!5066705))

(assert (=> bs!729282 m!5066415))

(assert (=> bs!729282 m!5066701))

(assert (=> bs!729282 m!5066703))

(assert (=> bs!729282 m!5066709))

(assert (=> bs!729282 m!5066415))

(assert (=> bs!729282 m!5066703))

(assert (=> bs!729282 m!5066701))

(assert (=> d!1327982 d!1328074))

(declare-fun d!1328076 () Bool)

(assert (=> d!1328076 (= (eq!339 (extractMap!692 (toList!3250 (+!881 lt!1607074 (tuple2!48905 hash!377 newBucket!200)))) (+!882 (extractMap!692 (toList!3250 lt!1607074)) (tuple2!48903 key!3918 newValue!99))) (= (content!7880 (toList!3249 (extractMap!692 (toList!3250 (+!881 lt!1607074 (tuple2!48905 hash!377 newBucket!200)))))) (content!7880 (toList!3249 (+!882 (extractMap!692 (toList!3250 lt!1607074)) (tuple2!48903 key!3918 newValue!99))))))))

(declare-fun bs!729283 () Bool)

(assert (= bs!729283 d!1328076))

(declare-fun m!5067061 () Bool)

(assert (=> bs!729283 m!5067061))

(declare-fun m!5067063 () Bool)

(assert (=> bs!729283 m!5067063))

(assert (=> d!1327982 d!1328076))

(assert (=> d!1327982 d!1328010))

(declare-fun d!1328080 () Bool)

(declare-fun res!1816255 () Bool)

(declare-fun e!2741550 () Bool)

(assert (=> d!1328080 (=> res!1816255 e!2741550)))

(assert (=> d!1328080 (= res!1816255 ((_ is Nil!49295) (toList!3250 lt!1607074)))))

(assert (=> d!1328080 (= (forall!9378 (toList!3250 lt!1607074) lambda!149242) e!2741550)))

(declare-fun b!4402920 () Bool)

(declare-fun e!2741551 () Bool)

(assert (=> b!4402920 (= e!2741550 e!2741551)))

(declare-fun res!1816256 () Bool)

(assert (=> b!4402920 (=> (not res!1816256) (not e!2741551))))

(assert (=> b!4402920 (= res!1816256 (dynLambda!20770 lambda!149242 (h!54924 (toList!3250 lt!1607074))))))

(declare-fun b!4402921 () Bool)

(assert (=> b!4402921 (= e!2741551 (forall!9378 (t!356353 (toList!3250 lt!1607074)) lambda!149242))))

(assert (= (and d!1328080 (not res!1816255)) b!4402920))

(assert (= (and b!4402920 res!1816256) b!4402921))

(declare-fun b_lambda!140017 () Bool)

(assert (=> (not b_lambda!140017) (not b!4402920)))

(declare-fun m!5067065 () Bool)

(assert (=> b!4402920 m!5067065))

(declare-fun m!5067067 () Bool)

(assert (=> b!4402921 m!5067067))

(assert (=> d!1327982 d!1328080))

(declare-fun bs!729284 () Bool)

(declare-fun d!1328082 () Bool)

(assert (= bs!729284 (and d!1328082 d!1327978)))

(declare-fun lambda!149334 () Int)

(assert (=> bs!729284 (= lambda!149334 lambda!149239)))

(declare-fun bs!729285 () Bool)

(assert (= bs!729285 (and d!1328082 d!1328020)))

(assert (=> bs!729285 (not (= lambda!149334 lambda!149317))))

(declare-fun bs!729286 () Bool)

(assert (= bs!729286 (and d!1328082 d!1328032)))

(assert (=> bs!729286 (= lambda!149334 lambda!149321)))

(declare-fun bs!729287 () Bool)

(assert (= bs!729287 (and d!1328082 d!1328006)))

(assert (=> bs!729287 (= lambda!149334 lambda!149312)))

(declare-fun bs!729288 () Bool)

(assert (= bs!729288 (and d!1328082 d!1328008)))

(assert (=> bs!729288 (= lambda!149334 lambda!149313)))

(declare-fun bs!729289 () Bool)

(assert (= bs!729289 (and d!1328082 start!428144)))

(assert (=> bs!729289 (= lambda!149334 lambda!149221)))

(declare-fun bs!729290 () Bool)

(assert (= bs!729290 (and d!1328082 d!1328010)))

(assert (=> bs!729290 (= lambda!149334 lambda!149314)))

(declare-fun bs!729291 () Bool)

(assert (= bs!729291 (and d!1328082 d!1327982)))

(assert (=> bs!729291 (= lambda!149334 lambda!149242)))

(declare-fun lt!1607507 () ListMap!2493)

(assert (=> d!1328082 (invariantList!754 (toList!3249 lt!1607507))))

(declare-fun e!2741552 () ListMap!2493)

(assert (=> d!1328082 (= lt!1607507 e!2741552)))

(declare-fun c!749666 () Bool)

(assert (=> d!1328082 (= c!749666 ((_ is Cons!49295) (toList!3250 (+!881 lt!1607074 (tuple2!48905 hash!377 newBucket!200)))))))

(assert (=> d!1328082 (forall!9378 (toList!3250 (+!881 lt!1607074 (tuple2!48905 hash!377 newBucket!200))) lambda!149334)))

(assert (=> d!1328082 (= (extractMap!692 (toList!3250 (+!881 lt!1607074 (tuple2!48905 hash!377 newBucket!200)))) lt!1607507)))

(declare-fun b!4402922 () Bool)

(assert (=> b!4402922 (= e!2741552 (addToMapMapFromBucket!299 (_2!27746 (h!54924 (toList!3250 (+!881 lt!1607074 (tuple2!48905 hash!377 newBucket!200))))) (extractMap!692 (t!356353 (toList!3250 (+!881 lt!1607074 (tuple2!48905 hash!377 newBucket!200)))))))))

(declare-fun b!4402923 () Bool)

(assert (=> b!4402923 (= e!2741552 (ListMap!2494 Nil!49294))))

(assert (= (and d!1328082 c!749666) b!4402922))

(assert (= (and d!1328082 (not c!749666)) b!4402923))

(declare-fun m!5067069 () Bool)

(assert (=> d!1328082 m!5067069))

(declare-fun m!5067071 () Bool)

(assert (=> d!1328082 m!5067071))

(declare-fun m!5067073 () Bool)

(assert (=> b!4402922 m!5067073))

(assert (=> b!4402922 m!5067073))

(declare-fun m!5067075 () Bool)

(assert (=> b!4402922 m!5067075))

(assert (=> d!1327982 d!1328082))

(declare-fun d!1328084 () Bool)

(declare-fun e!2741553 () Bool)

(assert (=> d!1328084 e!2741553))

(declare-fun res!1816257 () Bool)

(assert (=> d!1328084 (=> (not res!1816257) (not e!2741553))))

(declare-fun lt!1607510 () ListLongMap!1899)

(assert (=> d!1328084 (= res!1816257 (contains!11692 lt!1607510 (_1!27746 (tuple2!48905 hash!377 newBucket!200))))))

(declare-fun lt!1607509 () List!49419)

(assert (=> d!1328084 (= lt!1607510 (ListLongMap!1900 lt!1607509))))

(declare-fun lt!1607511 () Unit!79009)

(declare-fun lt!1607508 () Unit!79009)

(assert (=> d!1328084 (= lt!1607511 lt!1607508)))

(assert (=> d!1328084 (= (getValueByKey!606 lt!1607509 (_1!27746 (tuple2!48905 hash!377 newBucket!200))) (Some!10619 (_2!27746 (tuple2!48905 hash!377 newBucket!200))))))

(assert (=> d!1328084 (= lt!1607508 (lemmaContainsTupThenGetReturnValue!351 lt!1607509 (_1!27746 (tuple2!48905 hash!377 newBucket!200)) (_2!27746 (tuple2!48905 hash!377 newBucket!200))))))

(assert (=> d!1328084 (= lt!1607509 (insertStrictlySorted!208 (toList!3250 lt!1607074) (_1!27746 (tuple2!48905 hash!377 newBucket!200)) (_2!27746 (tuple2!48905 hash!377 newBucket!200))))))

(assert (=> d!1328084 (= (+!881 lt!1607074 (tuple2!48905 hash!377 newBucket!200)) lt!1607510)))

(declare-fun b!4402924 () Bool)

(declare-fun res!1816258 () Bool)

(assert (=> b!4402924 (=> (not res!1816258) (not e!2741553))))

(assert (=> b!4402924 (= res!1816258 (= (getValueByKey!606 (toList!3250 lt!1607510) (_1!27746 (tuple2!48905 hash!377 newBucket!200))) (Some!10619 (_2!27746 (tuple2!48905 hash!377 newBucket!200)))))))

(declare-fun b!4402925 () Bool)

(assert (=> b!4402925 (= e!2741553 (contains!11693 (toList!3250 lt!1607510) (tuple2!48905 hash!377 newBucket!200)))))

(assert (= (and d!1328084 res!1816257) b!4402924))

(assert (= (and b!4402924 res!1816258) b!4402925))

(declare-fun m!5067077 () Bool)

(assert (=> d!1328084 m!5067077))

(declare-fun m!5067079 () Bool)

(assert (=> d!1328084 m!5067079))

(declare-fun m!5067081 () Bool)

(assert (=> d!1328084 m!5067081))

(declare-fun m!5067083 () Bool)

(assert (=> d!1328084 m!5067083))

(declare-fun m!5067085 () Bool)

(assert (=> b!4402924 m!5067085))

(declare-fun m!5067087 () Bool)

(assert (=> b!4402925 m!5067087))

(assert (=> d!1327982 d!1328084))

(declare-fun d!1328086 () Bool)

(declare-fun e!2741554 () Bool)

(assert (=> d!1328086 e!2741554))

(declare-fun res!1816260 () Bool)

(assert (=> d!1328086 (=> (not res!1816260) (not e!2741554))))

(declare-fun lt!1607513 () ListMap!2493)

(assert (=> d!1328086 (= res!1816260 (contains!11691 lt!1607513 (_1!27745 (tuple2!48903 key!3918 newValue!99))))))

(declare-fun lt!1607514 () List!49418)

(assert (=> d!1328086 (= lt!1607513 (ListMap!2494 lt!1607514))))

(declare-fun lt!1607515 () Unit!79009)

(declare-fun lt!1607512 () Unit!79009)

(assert (=> d!1328086 (= lt!1607515 lt!1607512)))

(assert (=> d!1328086 (= (getValueByKey!607 lt!1607514 (_1!27745 (tuple2!48903 key!3918 newValue!99))) (Some!10620 (_2!27745 (tuple2!48903 key!3918 newValue!99))))))

(assert (=> d!1328086 (= lt!1607512 (lemmaContainsTupThenGetReturnValue!353 lt!1607514 (_1!27745 (tuple2!48903 key!3918 newValue!99)) (_2!27745 (tuple2!48903 key!3918 newValue!99))))))

(assert (=> d!1328086 (= lt!1607514 (insertNoDuplicatedKeys!153 (toList!3249 (extractMap!692 (toList!3250 lt!1607074))) (_1!27745 (tuple2!48903 key!3918 newValue!99)) (_2!27745 (tuple2!48903 key!3918 newValue!99))))))

(assert (=> d!1328086 (= (+!882 (extractMap!692 (toList!3250 lt!1607074)) (tuple2!48903 key!3918 newValue!99)) lt!1607513)))

(declare-fun b!4402926 () Bool)

(declare-fun res!1816259 () Bool)

(assert (=> b!4402926 (=> (not res!1816259) (not e!2741554))))

(assert (=> b!4402926 (= res!1816259 (= (getValueByKey!607 (toList!3249 lt!1607513) (_1!27745 (tuple2!48903 key!3918 newValue!99))) (Some!10620 (_2!27745 (tuple2!48903 key!3918 newValue!99)))))))

(declare-fun b!4402927 () Bool)

(assert (=> b!4402927 (= e!2741554 (contains!11697 (toList!3249 lt!1607513) (tuple2!48903 key!3918 newValue!99)))))

(assert (= (and d!1328086 res!1816260) b!4402926))

(assert (= (and b!4402926 res!1816259) b!4402927))

(declare-fun m!5067089 () Bool)

(assert (=> d!1328086 m!5067089))

(declare-fun m!5067091 () Bool)

(assert (=> d!1328086 m!5067091))

(declare-fun m!5067093 () Bool)

(assert (=> d!1328086 m!5067093))

(declare-fun m!5067095 () Bool)

(assert (=> d!1328086 m!5067095))

(declare-fun m!5067097 () Bool)

(assert (=> b!4402926 m!5067097))

(declare-fun m!5067099 () Bool)

(assert (=> b!4402927 m!5067099))

(assert (=> d!1327982 d!1328086))

(declare-fun bs!729292 () Bool)

(declare-fun b!4402935 () Bool)

(assert (= bs!729292 (and b!4402935 b!4402841)))

(declare-fun lambda!149335 () Int)

(assert (=> bs!729292 (= (= (t!356352 (toList!3249 lt!1607086)) (t!356352 (toList!3249 lt!1607082))) (= lambda!149335 lambda!149330))))

(declare-fun bs!729293 () Bool)

(assert (= bs!729293 (and b!4402935 b!4402838)))

(assert (=> bs!729293 (= (= (t!356352 (toList!3249 lt!1607086)) (Cons!49294 (h!54923 (toList!3249 lt!1607082)) (t!356352 (toList!3249 lt!1607082)))) (= lambda!149335 lambda!149331))))

(declare-fun bs!729294 () Bool)

(assert (= bs!729294 (and b!4402935 b!4402840)))

(assert (=> bs!729294 (= (= (t!356352 (toList!3249 lt!1607086)) (toList!3249 lt!1607082)) (= lambda!149335 lambda!149332))))

(assert (=> b!4402935 true))

(declare-fun bs!729295 () Bool)

(declare-fun b!4402932 () Bool)

(assert (= bs!729295 (and b!4402932 b!4402841)))

(declare-fun lambda!149338 () Int)

(assert (=> bs!729295 (= (= (Cons!49294 (h!54923 (toList!3249 lt!1607086)) (t!356352 (toList!3249 lt!1607086))) (t!356352 (toList!3249 lt!1607082))) (= lambda!149338 lambda!149330))))

(declare-fun bs!729296 () Bool)

(assert (= bs!729296 (and b!4402932 b!4402838)))

(assert (=> bs!729296 (= (= (Cons!49294 (h!54923 (toList!3249 lt!1607086)) (t!356352 (toList!3249 lt!1607086))) (Cons!49294 (h!54923 (toList!3249 lt!1607082)) (t!356352 (toList!3249 lt!1607082)))) (= lambda!149338 lambda!149331))))

(declare-fun bs!729297 () Bool)

(assert (= bs!729297 (and b!4402932 b!4402840)))

(assert (=> bs!729297 (= (= (Cons!49294 (h!54923 (toList!3249 lt!1607086)) (t!356352 (toList!3249 lt!1607086))) (toList!3249 lt!1607082)) (= lambda!149338 lambda!149332))))

(declare-fun bs!729298 () Bool)

(assert (= bs!729298 (and b!4402932 b!4402935)))

(assert (=> bs!729298 (= (= (Cons!49294 (h!54923 (toList!3249 lt!1607086)) (t!356352 (toList!3249 lt!1607086))) (t!356352 (toList!3249 lt!1607086))) (= lambda!149338 lambda!149335))))

(assert (=> b!4402932 true))

(declare-fun bs!729299 () Bool)

(declare-fun b!4402934 () Bool)

(assert (= bs!729299 (and b!4402934 b!4402841)))

(declare-fun lambda!149341 () Int)

(assert (=> bs!729299 (= (= (toList!3249 lt!1607086) (t!356352 (toList!3249 lt!1607082))) (= lambda!149341 lambda!149330))))

(declare-fun bs!729300 () Bool)

(assert (= bs!729300 (and b!4402934 b!4402935)))

(assert (=> bs!729300 (= (= (toList!3249 lt!1607086) (t!356352 (toList!3249 lt!1607086))) (= lambda!149341 lambda!149335))))

(declare-fun bs!729301 () Bool)

(assert (= bs!729301 (and b!4402934 b!4402840)))

(assert (=> bs!729301 (= (= (toList!3249 lt!1607086) (toList!3249 lt!1607082)) (= lambda!149341 lambda!149332))))

(declare-fun bs!729302 () Bool)

(assert (= bs!729302 (and b!4402934 b!4402838)))

(assert (=> bs!729302 (= (= (toList!3249 lt!1607086) (Cons!49294 (h!54923 (toList!3249 lt!1607082)) (t!356352 (toList!3249 lt!1607082)))) (= lambda!149341 lambda!149331))))

(declare-fun bs!729303 () Bool)

(assert (= bs!729303 (and b!4402934 b!4402932)))

(assert (=> bs!729303 (= (= (toList!3249 lt!1607086) (Cons!49294 (h!54923 (toList!3249 lt!1607086)) (t!356352 (toList!3249 lt!1607086)))) (= lambda!149341 lambda!149338))))

(assert (=> b!4402934 true))

(declare-fun bs!729304 () Bool)

(declare-fun b!4402938 () Bool)

(assert (= bs!729304 (and b!4402938 b!4402844)))

(declare-fun lambda!149342 () Int)

(assert (=> bs!729304 (= lambda!149342 lambda!149333)))

(declare-fun b!4402930 () Bool)

(declare-fun e!2741558 () Unit!79009)

(declare-fun Unit!79055 () Unit!79009)

(assert (=> b!4402930 (= e!2741558 Unit!79055)))

(declare-fun b!4402931 () Bool)

(assert (=> b!4402931 false))

(declare-fun Unit!79056 () Unit!79009)

(assert (=> b!4402931 (= e!2741558 Unit!79056)))

(declare-fun d!1328088 () Bool)

(declare-fun e!2741557 () Bool)

(assert (=> d!1328088 e!2741557))

(declare-fun res!1816262 () Bool)

(assert (=> d!1328088 (=> (not res!1816262) (not e!2741557))))

(declare-fun lt!1607522 () List!49421)

(assert (=> d!1328088 (= res!1816262 (noDuplicate!641 lt!1607522))))

(declare-fun e!2741560 () List!49421)

(assert (=> d!1328088 (= lt!1607522 e!2741560)))

(declare-fun c!749668 () Bool)

(assert (=> d!1328088 (= c!749668 ((_ is Cons!49294) (toList!3249 lt!1607086)))))

(assert (=> d!1328088 (invariantList!754 (toList!3249 lt!1607086))))

(assert (=> d!1328088 (= (getKeysList!201 (toList!3249 lt!1607086)) lt!1607522)))

(assert (=> b!4402932 (= e!2741560 (Cons!49297 (_1!27745 (h!54923 (toList!3249 lt!1607086))) (getKeysList!201 (t!356352 (toList!3249 lt!1607086)))))))

(declare-fun c!749669 () Bool)

(assert (=> b!4402932 (= c!749669 (containsKey!951 (t!356352 (toList!3249 lt!1607086)) (_1!27745 (h!54923 (toList!3249 lt!1607086)))))))

(declare-fun lt!1607519 () Unit!79009)

(assert (=> b!4402932 (= lt!1607519 e!2741558)))

(declare-fun c!749667 () Bool)

(assert (=> b!4402932 (= c!749667 (contains!11695 (getKeysList!201 (t!356352 (toList!3249 lt!1607086))) (_1!27745 (h!54923 (toList!3249 lt!1607086)))))))

(declare-fun lt!1607521 () Unit!79009)

(declare-fun e!2741559 () Unit!79009)

(assert (=> b!4402932 (= lt!1607521 e!2741559)))

(declare-fun lt!1607520 () List!49421)

(assert (=> b!4402932 (= lt!1607520 (getKeysList!201 (t!356352 (toList!3249 lt!1607086))))))

(declare-fun lt!1607518 () Unit!79009)

(assert (=> b!4402932 (= lt!1607518 (lemmaForallContainsAddHeadPreserves!63 (t!356352 (toList!3249 lt!1607086)) lt!1607520 (h!54923 (toList!3249 lt!1607086))))))

(assert (=> b!4402932 (forall!9381 lt!1607520 lambda!149338)))

(declare-fun lt!1607524 () Unit!79009)

(assert (=> b!4402932 (= lt!1607524 lt!1607518)))

(declare-fun b!4402933 () Bool)

(assert (=> b!4402933 (= e!2741560 Nil!49297)))

(declare-fun res!1816261 () Bool)

(assert (=> b!4402934 (=> (not res!1816261) (not e!2741557))))

(assert (=> b!4402934 (= res!1816261 (forall!9381 lt!1607522 lambda!149341))))

(assert (=> b!4402935 false))

(declare-fun lt!1607523 () Unit!79009)

(assert (=> b!4402935 (= lt!1607523 (forallContained!2016 (getKeysList!201 (t!356352 (toList!3249 lt!1607086))) lambda!149335 (_1!27745 (h!54923 (toList!3249 lt!1607086)))))))

(declare-fun Unit!79057 () Unit!79009)

(assert (=> b!4402935 (= e!2741559 Unit!79057)))

(declare-fun b!4402936 () Bool)

(declare-fun res!1816265 () Bool)

(assert (=> b!4402936 (=> (not res!1816265) (not e!2741557))))

(assert (=> b!4402936 (= res!1816265 (= (length!138 lt!1607522) (length!139 (toList!3249 lt!1607086))))))

(declare-fun b!4402937 () Bool)

(declare-fun Unit!79058 () Unit!79009)

(assert (=> b!4402937 (= e!2741559 Unit!79058)))

(assert (=> b!4402938 (= e!2741557 (= (content!7881 lt!1607522) (content!7881 (map!10754 (toList!3249 lt!1607086) lambda!149342))))))

(assert (= (and d!1328088 c!749668) b!4402932))

(assert (= (and d!1328088 (not c!749668)) b!4402933))

(assert (= (and b!4402932 c!749669) b!4402931))

(assert (= (and b!4402932 (not c!749669)) b!4402930))

(assert (= (and b!4402932 c!749667) b!4402935))

(assert (= (and b!4402932 (not c!749667)) b!4402937))

(assert (= (and d!1328088 res!1816262) b!4402936))

(assert (= (and b!4402936 res!1816265) b!4402934))

(assert (= (and b!4402934 res!1816261) b!4402938))

(declare-fun m!5067101 () Bool)

(assert (=> b!4402936 m!5067101))

(declare-fun m!5067103 () Bool)

(assert (=> b!4402936 m!5067103))

(declare-fun m!5067105 () Bool)

(assert (=> d!1328088 m!5067105))

(declare-fun m!5067107 () Bool)

(assert (=> d!1328088 m!5067107))

(declare-fun m!5067109 () Bool)

(assert (=> b!4402934 m!5067109))

(declare-fun m!5067111 () Bool)

(assert (=> b!4402935 m!5067111))

(assert (=> b!4402935 m!5067111))

(declare-fun m!5067113 () Bool)

(assert (=> b!4402935 m!5067113))

(declare-fun m!5067115 () Bool)

(assert (=> b!4402938 m!5067115))

(declare-fun m!5067117 () Bool)

(assert (=> b!4402938 m!5067117))

(assert (=> b!4402938 m!5067117))

(declare-fun m!5067119 () Bool)

(assert (=> b!4402938 m!5067119))

(declare-fun m!5067121 () Bool)

(assert (=> b!4402932 m!5067121))

(declare-fun m!5067123 () Bool)

(assert (=> b!4402932 m!5067123))

(assert (=> b!4402932 m!5067111))

(declare-fun m!5067125 () Bool)

(assert (=> b!4402932 m!5067125))

(assert (=> b!4402932 m!5067111))

(declare-fun m!5067127 () Bool)

(assert (=> b!4402932 m!5067127))

(assert (=> b!4402761 d!1328088))

(declare-fun b!4402951 () Bool)

(declare-fun e!2741563 () Option!10620)

(assert (=> b!4402951 (= e!2741563 None!10619)))

(declare-fun d!1328090 () Bool)

(declare-fun c!749670 () Bool)

(assert (=> d!1328090 (= c!749670 (and ((_ is Cons!49295) (toList!3250 lt!1607221)) (= (_1!27746 (h!54924 (toList!3250 lt!1607221))) (_1!27746 lt!1607073))))))

(declare-fun e!2741562 () Option!10620)

(assert (=> d!1328090 (= (getValueByKey!606 (toList!3250 lt!1607221) (_1!27746 lt!1607073)) e!2741562)))

(declare-fun b!4402950 () Bool)

(assert (=> b!4402950 (= e!2741563 (getValueByKey!606 (t!356353 (toList!3250 lt!1607221)) (_1!27746 lt!1607073)))))

(declare-fun b!4402948 () Bool)

(assert (=> b!4402948 (= e!2741562 (Some!10619 (_2!27746 (h!54924 (toList!3250 lt!1607221)))))))

(declare-fun b!4402949 () Bool)

(assert (=> b!4402949 (= e!2741562 e!2741563)))

(declare-fun c!749671 () Bool)

(assert (=> b!4402949 (= c!749671 (and ((_ is Cons!49295) (toList!3250 lt!1607221)) (not (= (_1!27746 (h!54924 (toList!3250 lt!1607221))) (_1!27746 lt!1607073)))))))

(assert (= (and d!1328090 c!749670) b!4402948))

(assert (= (and d!1328090 (not c!749670)) b!4402949))

(assert (= (and b!4402949 c!749671) b!4402950))

(assert (= (and b!4402949 (not c!749671)) b!4402951))

(declare-fun m!5067129 () Bool)

(assert (=> b!4402950 m!5067129))

(assert (=> b!4402641 d!1328090))

(declare-fun d!1328092 () Bool)

(declare-fun lt!1607528 () Bool)

(assert (=> d!1328092 (= lt!1607528 (select (content!7881 (keys!16757 lt!1607082)) key!3918))))

(declare-fun e!2741573 () Bool)

(assert (=> d!1328092 (= lt!1607528 e!2741573)))

(declare-fun res!1816279 () Bool)

(assert (=> d!1328092 (=> (not res!1816279) (not e!2741573))))

(assert (=> d!1328092 (= res!1816279 ((_ is Cons!49297) (keys!16757 lt!1607082)))))

(assert (=> d!1328092 (= (contains!11695 (keys!16757 lt!1607082) key!3918) lt!1607528)))

(declare-fun b!4402964 () Bool)

(declare-fun e!2741574 () Bool)

(assert (=> b!4402964 (= e!2741573 e!2741574)))

(declare-fun res!1816280 () Bool)

(assert (=> b!4402964 (=> res!1816280 e!2741574)))

(assert (=> b!4402964 (= res!1816280 (= (h!54928 (keys!16757 lt!1607082)) key!3918))))

(declare-fun b!4402965 () Bool)

(assert (=> b!4402965 (= e!2741574 (contains!11695 (t!356355 (keys!16757 lt!1607082)) key!3918))))

(assert (= (and d!1328092 res!1816279) b!4402964))

(assert (= (and b!4402964 (not res!1816280)) b!4402965))

(assert (=> d!1328092 m!5066673))

(declare-fun m!5067153 () Bool)

(assert (=> d!1328092 m!5067153))

(declare-fun m!5067155 () Bool)

(assert (=> d!1328092 m!5067155))

(declare-fun m!5067157 () Bool)

(assert (=> b!4402965 m!5067157))

(assert (=> b!4402652 d!1328092))

(declare-fun bs!729305 () Bool)

(declare-fun b!4402989 () Bool)

(assert (= bs!729305 (and b!4402989 b!4402841)))

(declare-fun lambda!149349 () Int)

(assert (=> bs!729305 (= (= (toList!3249 lt!1607082) (t!356352 (toList!3249 lt!1607082))) (= lambda!149349 lambda!149330))))

(declare-fun bs!729306 () Bool)

(assert (= bs!729306 (and b!4402989 b!4402935)))

(assert (=> bs!729306 (= (= (toList!3249 lt!1607082) (t!356352 (toList!3249 lt!1607086))) (= lambda!149349 lambda!149335))))

(declare-fun bs!729307 () Bool)

(assert (= bs!729307 (and b!4402989 b!4402840)))

(assert (=> bs!729307 (= lambda!149349 lambda!149332)))

(declare-fun bs!729308 () Bool)

(assert (= bs!729308 (and b!4402989 b!4402934)))

(assert (=> bs!729308 (= (= (toList!3249 lt!1607082) (toList!3249 lt!1607086)) (= lambda!149349 lambda!149341))))

(declare-fun bs!729309 () Bool)

(assert (= bs!729309 (and b!4402989 b!4402838)))

(assert (=> bs!729309 (= (= (toList!3249 lt!1607082) (Cons!49294 (h!54923 (toList!3249 lt!1607082)) (t!356352 (toList!3249 lt!1607082)))) (= lambda!149349 lambda!149331))))

(declare-fun bs!729310 () Bool)

(assert (= bs!729310 (and b!4402989 b!4402932)))

(assert (=> bs!729310 (= (= (toList!3249 lt!1607082) (Cons!49294 (h!54923 (toList!3249 lt!1607086)) (t!356352 (toList!3249 lt!1607086)))) (= lambda!149349 lambda!149338))))

(assert (=> b!4402989 true))

(declare-fun bs!729311 () Bool)

(declare-fun b!4402990 () Bool)

(assert (= bs!729311 (and b!4402990 b!4402844)))

(declare-fun lambda!149350 () Int)

(assert (=> bs!729311 (= lambda!149350 lambda!149333)))

(declare-fun bs!729312 () Bool)

(assert (= bs!729312 (and b!4402990 b!4402938)))

(assert (=> bs!729312 (= lambda!149350 lambda!149342)))

(declare-fun d!1328100 () Bool)

(declare-fun e!2741588 () Bool)

(assert (=> d!1328100 e!2741588))

(declare-fun res!1816294 () Bool)

(assert (=> d!1328100 (=> (not res!1816294) (not e!2741588))))

(declare-fun lt!1607531 () List!49421)

(assert (=> d!1328100 (= res!1816294 (noDuplicate!641 lt!1607531))))

(assert (=> d!1328100 (= lt!1607531 (getKeysList!201 (toList!3249 lt!1607082)))))

(assert (=> d!1328100 (= (keys!16757 lt!1607082) lt!1607531)))

(declare-fun b!4402988 () Bool)

(declare-fun res!1816295 () Bool)

(assert (=> b!4402988 (=> (not res!1816295) (not e!2741588))))

(assert (=> b!4402988 (= res!1816295 (= (length!138 lt!1607531) (length!139 (toList!3249 lt!1607082))))))

(declare-fun res!1816293 () Bool)

(assert (=> b!4402989 (=> (not res!1816293) (not e!2741588))))

(assert (=> b!4402989 (= res!1816293 (forall!9381 lt!1607531 lambda!149349))))

(assert (=> b!4402990 (= e!2741588 (= (content!7881 lt!1607531) (content!7881 (map!10754 (toList!3249 lt!1607082) lambda!149350))))))

(assert (= (and d!1328100 res!1816294) b!4402988))

(assert (= (and b!4402988 res!1816295) b!4402989))

(assert (= (and b!4402989 res!1816293) b!4402990))

(declare-fun m!5067169 () Bool)

(assert (=> d!1328100 m!5067169))

(assert (=> d!1328100 m!5066691))

(declare-fun m!5067171 () Bool)

(assert (=> b!4402988 m!5067171))

(assert (=> b!4402988 m!5066977))

(declare-fun m!5067173 () Bool)

(assert (=> b!4402989 m!5067173))

(declare-fun m!5067175 () Bool)

(assert (=> b!4402990 m!5067175))

(declare-fun m!5067177 () Bool)

(assert (=> b!4402990 m!5067177))

(assert (=> b!4402990 m!5067177))

(declare-fun m!5067179 () Bool)

(assert (=> b!4402990 m!5067179))

(assert (=> b!4402652 d!1328100))

(assert (=> b!4402511 d!1327902))

(declare-fun d!1328112 () Bool)

(declare-fun res!1816296 () Bool)

(declare-fun e!2741591 () Bool)

(assert (=> d!1328112 (=> res!1816296 e!2741591)))

(assert (=> d!1328112 (= res!1816296 (not ((_ is Cons!49294) (_2!27746 lt!1607081))))))

(assert (=> d!1328112 (= (noDuplicateKeys!633 (_2!27746 lt!1607081)) e!2741591)))

(declare-fun b!4402997 () Bool)

(declare-fun e!2741592 () Bool)

(assert (=> b!4402997 (= e!2741591 e!2741592)))

(declare-fun res!1816297 () Bool)

(assert (=> b!4402997 (=> (not res!1816297) (not e!2741592))))

(assert (=> b!4402997 (= res!1816297 (not (containsKey!947 (t!356352 (_2!27746 lt!1607081)) (_1!27745 (h!54923 (_2!27746 lt!1607081))))))))

(declare-fun b!4402998 () Bool)

(assert (=> b!4402998 (= e!2741592 (noDuplicateKeys!633 (t!356352 (_2!27746 lt!1607081))))))

(assert (= (and d!1328112 (not res!1816296)) b!4402997))

(assert (= (and b!4402997 res!1816297) b!4402998))

(declare-fun m!5067181 () Bool)

(assert (=> b!4402997 m!5067181))

(declare-fun m!5067183 () Bool)

(assert (=> b!4402998 m!5067183))

(assert (=> bs!729275 d!1328112))

(assert (=> d!1327944 d!1328062))

(declare-fun d!1328114 () Bool)

(declare-fun lt!1607532 () Bool)

(assert (=> d!1328114 (= lt!1607532 (select (content!7881 (keys!16757 lt!1607086)) key!3918))))

(declare-fun e!2741593 () Bool)

(assert (=> d!1328114 (= lt!1607532 e!2741593)))

(declare-fun res!1816298 () Bool)

(assert (=> d!1328114 (=> (not res!1816298) (not e!2741593))))

(assert (=> d!1328114 (= res!1816298 ((_ is Cons!49297) (keys!16757 lt!1607086)))))

(assert (=> d!1328114 (= (contains!11695 (keys!16757 lt!1607086) key!3918) lt!1607532)))

(declare-fun b!4402999 () Bool)

(declare-fun e!2741594 () Bool)

(assert (=> b!4402999 (= e!2741593 e!2741594)))

(declare-fun res!1816299 () Bool)

(assert (=> b!4402999 (=> res!1816299 e!2741594)))

(assert (=> b!4402999 (= res!1816299 (= (h!54928 (keys!16757 lt!1607086)) key!3918))))

(declare-fun b!4403000 () Bool)

(assert (=> b!4403000 (= e!2741594 (contains!11695 (t!356355 (keys!16757 lt!1607086)) key!3918))))

(assert (= (and d!1328114 res!1816298) b!4402999))

(assert (= (and b!4402999 (not res!1816299)) b!4403000))

(assert (=> d!1328114 m!5066907))

(declare-fun m!5067185 () Bool)

(assert (=> d!1328114 m!5067185))

(declare-fun m!5067187 () Bool)

(assert (=> d!1328114 m!5067187))

(declare-fun m!5067189 () Bool)

(assert (=> b!4403000 m!5067189))

(assert (=> b!4402759 d!1328114))

(declare-fun bs!729314 () Bool)

(declare-fun b!4403002 () Bool)

(assert (= bs!729314 (and b!4403002 b!4402841)))

(declare-fun lambda!149351 () Int)

(assert (=> bs!729314 (= (= (toList!3249 lt!1607086) (t!356352 (toList!3249 lt!1607082))) (= lambda!149351 lambda!149330))))

(declare-fun bs!729315 () Bool)

(assert (= bs!729315 (and b!4403002 b!4402935)))

(assert (=> bs!729315 (= (= (toList!3249 lt!1607086) (t!356352 (toList!3249 lt!1607086))) (= lambda!149351 lambda!149335))))

(declare-fun bs!729316 () Bool)

(assert (= bs!729316 (and b!4403002 b!4402840)))

(assert (=> bs!729316 (= (= (toList!3249 lt!1607086) (toList!3249 lt!1607082)) (= lambda!149351 lambda!149332))))

(declare-fun bs!729317 () Bool)

(assert (= bs!729317 (and b!4403002 b!4402934)))

(assert (=> bs!729317 (= lambda!149351 lambda!149341)))

(declare-fun bs!729318 () Bool)

(assert (= bs!729318 (and b!4403002 b!4402989)))

(assert (=> bs!729318 (= (= (toList!3249 lt!1607086) (toList!3249 lt!1607082)) (= lambda!149351 lambda!149349))))

(declare-fun bs!729319 () Bool)

(assert (= bs!729319 (and b!4403002 b!4402838)))

(assert (=> bs!729319 (= (= (toList!3249 lt!1607086) (Cons!49294 (h!54923 (toList!3249 lt!1607082)) (t!356352 (toList!3249 lt!1607082)))) (= lambda!149351 lambda!149331))))

(declare-fun bs!729320 () Bool)

(assert (= bs!729320 (and b!4403002 b!4402932)))

(assert (=> bs!729320 (= (= (toList!3249 lt!1607086) (Cons!49294 (h!54923 (toList!3249 lt!1607086)) (t!356352 (toList!3249 lt!1607086)))) (= lambda!149351 lambda!149338))))

(assert (=> b!4403002 true))

(declare-fun bs!729321 () Bool)

(declare-fun b!4403003 () Bool)

(assert (= bs!729321 (and b!4403003 b!4402844)))

(declare-fun lambda!149352 () Int)

(assert (=> bs!729321 (= lambda!149352 lambda!149333)))

(declare-fun bs!729322 () Bool)

(assert (= bs!729322 (and b!4403003 b!4402938)))

(assert (=> bs!729322 (= lambda!149352 lambda!149342)))

(declare-fun bs!729323 () Bool)

(assert (= bs!729323 (and b!4403003 b!4402990)))

(assert (=> bs!729323 (= lambda!149352 lambda!149350)))

(declare-fun d!1328116 () Bool)

(declare-fun e!2741595 () Bool)

(assert (=> d!1328116 e!2741595))

(declare-fun res!1816301 () Bool)

(assert (=> d!1328116 (=> (not res!1816301) (not e!2741595))))

(declare-fun lt!1607533 () List!49421)

(assert (=> d!1328116 (= res!1816301 (noDuplicate!641 lt!1607533))))

(assert (=> d!1328116 (= lt!1607533 (getKeysList!201 (toList!3249 lt!1607086)))))

(assert (=> d!1328116 (= (keys!16757 lt!1607086) lt!1607533)))

(declare-fun b!4403001 () Bool)

(declare-fun res!1816302 () Bool)

(assert (=> b!4403001 (=> (not res!1816302) (not e!2741595))))

(assert (=> b!4403001 (= res!1816302 (= (length!138 lt!1607533) (length!139 (toList!3249 lt!1607086))))))

(declare-fun res!1816300 () Bool)

(assert (=> b!4403002 (=> (not res!1816300) (not e!2741595))))

(assert (=> b!4403002 (= res!1816300 (forall!9381 lt!1607533 lambda!149351))))

(assert (=> b!4403003 (= e!2741595 (= (content!7881 lt!1607533) (content!7881 (map!10754 (toList!3249 lt!1607086) lambda!149352))))))

(assert (= (and d!1328116 res!1816301) b!4403001))

(assert (= (and b!4403001 res!1816302) b!4403002))

(assert (= (and b!4403002 res!1816300) b!4403003))

(declare-fun m!5067193 () Bool)

(assert (=> d!1328116 m!5067193))

(assert (=> d!1328116 m!5066925))

(declare-fun m!5067199 () Bool)

(assert (=> b!4403001 m!5067199))

(assert (=> b!4403001 m!5067103))

(declare-fun m!5067201 () Bool)

(assert (=> b!4403002 m!5067201))

(declare-fun m!5067203 () Bool)

(assert (=> b!4403003 m!5067203))

(declare-fun m!5067205 () Bool)

(assert (=> b!4403003 m!5067205))

(assert (=> b!4403003 m!5067205))

(declare-fun m!5067207 () Bool)

(assert (=> b!4403003 m!5067207))

(assert (=> b!4402759 d!1328116))

(declare-fun d!1328120 () Bool)

(declare-fun res!1816312 () Bool)

(declare-fun e!2741603 () Bool)

(assert (=> d!1328120 (=> res!1816312 e!2741603)))

(assert (=> d!1328120 (= res!1816312 (and ((_ is Cons!49294) (toList!3249 lt!1607086)) (= (_1!27745 (h!54923 (toList!3249 lt!1607086))) key!3918)))))

(assert (=> d!1328120 (= (containsKey!951 (toList!3249 lt!1607086) key!3918) e!2741603)))

(declare-fun b!4403013 () Bool)

(declare-fun e!2741604 () Bool)

(assert (=> b!4403013 (= e!2741603 e!2741604)))

(declare-fun res!1816313 () Bool)

(assert (=> b!4403013 (=> (not res!1816313) (not e!2741604))))

(assert (=> b!4403013 (= res!1816313 ((_ is Cons!49294) (toList!3249 lt!1607086)))))

(declare-fun b!4403014 () Bool)

(assert (=> b!4403014 (= e!2741604 (containsKey!951 (t!356352 (toList!3249 lt!1607086)) key!3918))))

(assert (= (and d!1328120 (not res!1816312)) b!4403013))

(assert (= (and b!4403013 res!1816313) b!4403014))

(declare-fun m!5067209 () Bool)

(assert (=> b!4403014 m!5067209))

(assert (=> b!4402756 d!1328120))

(declare-fun d!1328122 () Bool)

(assert (=> d!1328122 (containsKey!951 (toList!3249 lt!1607086) key!3918)))

(declare-fun lt!1607538 () Unit!79009)

(assert (=> d!1328122 (= lt!1607538 (choose!27636 (toList!3249 lt!1607086) key!3918))))

(assert (=> d!1328122 (invariantList!754 (toList!3249 lt!1607086))))

(assert (=> d!1328122 (= (lemmaInGetKeysListThenContainsKey!199 (toList!3249 lt!1607086) key!3918) lt!1607538)))

(declare-fun bs!729326 () Bool)

(assert (= bs!729326 d!1328122))

(assert (=> bs!729326 m!5066921))

(declare-fun m!5067211 () Bool)

(assert (=> bs!729326 m!5067211))

(assert (=> bs!729326 m!5067107))

(assert (=> b!4402756 d!1328122))

(declare-fun d!1328124 () Bool)

(assert (=> d!1328124 (= (head!9114 (toList!3250 lm!1707)) (h!54924 (toList!3250 lm!1707)))))

(assert (=> d!1328024 d!1328124))

(declare-fun d!1328128 () Bool)

(declare-fun res!1816314 () Bool)

(declare-fun e!2741605 () Bool)

(assert (=> d!1328128 (=> res!1816314 e!2741605)))

(assert (=> d!1328128 (= res!1816314 (and ((_ is Cons!49294) (toList!3249 lt!1607082)) (= (_1!27745 (h!54923 (toList!3249 lt!1607082))) key!3918)))))

(assert (=> d!1328128 (= (containsKey!951 (toList!3249 lt!1607082) key!3918) e!2741605)))

(declare-fun b!4403015 () Bool)

(declare-fun e!2741606 () Bool)

(assert (=> b!4403015 (= e!2741605 e!2741606)))

(declare-fun res!1816315 () Bool)

(assert (=> b!4403015 (=> (not res!1816315) (not e!2741606))))

(assert (=> b!4403015 (= res!1816315 ((_ is Cons!49294) (toList!3249 lt!1607082)))))

(declare-fun b!4403016 () Bool)

(assert (=> b!4403016 (= e!2741606 (containsKey!951 (t!356352 (toList!3249 lt!1607082)) key!3918))))

(assert (= (and d!1328128 (not res!1816314)) b!4403015))

(assert (= (and b!4403015 res!1816315) b!4403016))

(declare-fun m!5067227 () Bool)

(assert (=> b!4403016 m!5067227))

(assert (=> b!4402649 d!1328128))

(declare-fun d!1328130 () Bool)

(assert (=> d!1328130 (containsKey!951 (toList!3249 lt!1607082) key!3918)))

(declare-fun lt!1607539 () Unit!79009)

(assert (=> d!1328130 (= lt!1607539 (choose!27636 (toList!3249 lt!1607082) key!3918))))

(assert (=> d!1328130 (invariantList!754 (toList!3249 lt!1607082))))

(assert (=> d!1328130 (= (lemmaInGetKeysListThenContainsKey!199 (toList!3249 lt!1607082) key!3918) lt!1607539)))

(declare-fun bs!729327 () Bool)

(assert (= bs!729327 d!1328130))

(assert (=> bs!729327 m!5066687))

(declare-fun m!5067229 () Bool)

(assert (=> bs!729327 m!5067229))

(assert (=> bs!729327 m!5066981))

(assert (=> b!4402649 d!1328130))

(declare-fun d!1328132 () Bool)

(declare-fun res!1816316 () Bool)

(declare-fun e!2741607 () Bool)

(assert (=> d!1328132 (=> res!1816316 e!2741607)))

(assert (=> d!1328132 (= res!1816316 (and ((_ is Cons!49294) (t!356352 (apply!11485 lm!1707 (_1!27746 (h!54924 (toList!3250 lm!1707)))))) (= (_1!27745 (h!54923 (t!356352 (apply!11485 lm!1707 (_1!27746 (h!54924 (toList!3250 lm!1707))))))) key!3918)))))

(assert (=> d!1328132 (= (containsKey!947 (t!356352 (apply!11485 lm!1707 (_1!27746 (h!54924 (toList!3250 lm!1707))))) key!3918) e!2741607)))

(declare-fun b!4403017 () Bool)

(declare-fun e!2741608 () Bool)

(assert (=> b!4403017 (= e!2741607 e!2741608)))

(declare-fun res!1816317 () Bool)

(assert (=> b!4403017 (=> (not res!1816317) (not e!2741608))))

(assert (=> b!4403017 (= res!1816317 ((_ is Cons!49294) (t!356352 (apply!11485 lm!1707 (_1!27746 (h!54924 (toList!3250 lm!1707)))))))))

(declare-fun b!4403018 () Bool)

(assert (=> b!4403018 (= e!2741608 (containsKey!947 (t!356352 (t!356352 (apply!11485 lm!1707 (_1!27746 (h!54924 (toList!3250 lm!1707)))))) key!3918))))

(assert (= (and d!1328132 (not res!1816316)) b!4403017))

(assert (= (and b!4403017 res!1816317) b!4403018))

(declare-fun m!5067231 () Bool)

(assert (=> b!4403018 m!5067231))

(assert (=> b!4402581 d!1328132))

(declare-fun d!1328134 () Bool)

(declare-fun lt!1607540 () Bool)

(assert (=> d!1328134 (= lt!1607540 (select (content!7879 (toList!3250 lt!1607419)) lt!1607073))))

(declare-fun e!2741614 () Bool)

(assert (=> d!1328134 (= lt!1607540 e!2741614)))

(declare-fun res!1816322 () Bool)

(assert (=> d!1328134 (=> (not res!1816322) (not e!2741614))))

(assert (=> d!1328134 (= res!1816322 ((_ is Cons!49295) (toList!3250 lt!1607419)))))

(assert (=> d!1328134 (= (contains!11693 (toList!3250 lt!1607419) lt!1607073) lt!1607540)))

(declare-fun b!4403023 () Bool)

(declare-fun e!2741613 () Bool)

(assert (=> b!4403023 (= e!2741614 e!2741613)))

(declare-fun res!1816323 () Bool)

(assert (=> b!4403023 (=> res!1816323 e!2741613)))

(assert (=> b!4403023 (= res!1816323 (= (h!54924 (toList!3250 lt!1607419)) lt!1607073))))

(declare-fun b!4403024 () Bool)

(assert (=> b!4403024 (= e!2741613 (contains!11693 (t!356353 (toList!3250 lt!1607419)) lt!1607073))))

(assert (= (and d!1328134 res!1816322) b!4403023))

(assert (= (and b!4403023 (not res!1816323)) b!4403024))

(declare-fun m!5067233 () Bool)

(assert (=> d!1328134 m!5067233))

(declare-fun m!5067235 () Bool)

(assert (=> d!1328134 m!5067235))

(declare-fun m!5067237 () Bool)

(assert (=> b!4403024 m!5067237))

(assert (=> b!4402751 d!1328134))

(declare-fun d!1328136 () Bool)

(declare-fun res!1816324 () Bool)

(declare-fun e!2741615 () Bool)

(assert (=> d!1328136 (=> res!1816324 e!2741615)))

(assert (=> d!1328136 (= res!1816324 ((_ is Nil!49295) (t!356353 (toList!3250 lm!1707))))))

(assert (=> d!1328136 (= (forall!9378 (t!356353 (toList!3250 lm!1707)) lambda!149221) e!2741615)))

(declare-fun b!4403025 () Bool)

(declare-fun e!2741616 () Bool)

(assert (=> b!4403025 (= e!2741615 e!2741616)))

(declare-fun res!1816325 () Bool)

(assert (=> b!4403025 (=> (not res!1816325) (not e!2741616))))

(assert (=> b!4403025 (= res!1816325 (dynLambda!20770 lambda!149221 (h!54924 (t!356353 (toList!3250 lm!1707)))))))

(declare-fun b!4403026 () Bool)

(assert (=> b!4403026 (= e!2741616 (forall!9378 (t!356353 (t!356353 (toList!3250 lm!1707))) lambda!149221))))

(assert (= (and d!1328136 (not res!1816324)) b!4403025))

(assert (= (and b!4403025 res!1816325) b!4403026))

(declare-fun b_lambda!140019 () Bool)

(assert (=> (not b_lambda!140019) (not b!4403025)))

(declare-fun m!5067239 () Bool)

(assert (=> b!4403025 m!5067239))

(declare-fun m!5067241 () Bool)

(assert (=> b!4403026 m!5067241))

(assert (=> b!4402741 d!1328136))

(declare-fun b!4403027 () Bool)

(assert (=> b!4403027 false))

(declare-fun lt!1607542 () Unit!79009)

(declare-fun lt!1607547 () Unit!79009)

(assert (=> b!4403027 (= lt!1607542 lt!1607547)))

(assert (=> b!4403027 (containsKey!951 (toList!3249 lt!1607232) (_1!27745 lt!1607083))))

(assert (=> b!4403027 (= lt!1607547 (lemmaInGetKeysListThenContainsKey!199 (toList!3249 lt!1607232) (_1!27745 lt!1607083)))))

(declare-fun e!2741618 () Unit!79009)

(declare-fun Unit!79063 () Unit!79009)

(assert (=> b!4403027 (= e!2741618 Unit!79063)))

(declare-fun b!4403028 () Bool)

(declare-fun e!2741619 () Bool)

(assert (=> b!4403028 (= e!2741619 (not (contains!11695 (keys!16757 lt!1607232) (_1!27745 lt!1607083))))))

(declare-fun d!1328138 () Bool)

(declare-fun e!2741621 () Bool)

(assert (=> d!1328138 e!2741621))

(declare-fun res!1816326 () Bool)

(assert (=> d!1328138 (=> res!1816326 e!2741621)))

(assert (=> d!1328138 (= res!1816326 e!2741619)))

(declare-fun res!1816327 () Bool)

(assert (=> d!1328138 (=> (not res!1816327) (not e!2741619))))

(declare-fun lt!1607544 () Bool)

(assert (=> d!1328138 (= res!1816327 (not lt!1607544))))

(declare-fun lt!1607543 () Bool)

(assert (=> d!1328138 (= lt!1607544 lt!1607543)))

(declare-fun lt!1607546 () Unit!79009)

(declare-fun e!2741617 () Unit!79009)

(assert (=> d!1328138 (= lt!1607546 e!2741617)))

(declare-fun c!749682 () Bool)

(assert (=> d!1328138 (= c!749682 lt!1607543)))

(assert (=> d!1328138 (= lt!1607543 (containsKey!951 (toList!3249 lt!1607232) (_1!27745 lt!1607083)))))

(assert (=> d!1328138 (= (contains!11691 lt!1607232 (_1!27745 lt!1607083)) lt!1607544)))

(declare-fun b!4403029 () Bool)

(declare-fun Unit!79064 () Unit!79009)

(assert (=> b!4403029 (= e!2741618 Unit!79064)))

(declare-fun bm!306402 () Bool)

(declare-fun call!306407 () Bool)

(declare-fun e!2741620 () List!49421)

(assert (=> bm!306402 (= call!306407 (contains!11695 e!2741620 (_1!27745 lt!1607083)))))

(declare-fun c!749683 () Bool)

(assert (=> bm!306402 (= c!749683 c!749682)))

(declare-fun b!4403030 () Bool)

(declare-fun e!2741622 () Bool)

(assert (=> b!4403030 (= e!2741622 (contains!11695 (keys!16757 lt!1607232) (_1!27745 lt!1607083)))))

(declare-fun b!4403031 () Bool)

(assert (=> b!4403031 (= e!2741617 e!2741618)))

(declare-fun c!749684 () Bool)

(assert (=> b!4403031 (= c!749684 call!306407)))

(declare-fun b!4403032 () Bool)

(assert (=> b!4403032 (= e!2741620 (getKeysList!201 (toList!3249 lt!1607232)))))

(declare-fun b!4403033 () Bool)

(assert (=> b!4403033 (= e!2741621 e!2741622)))

(declare-fun res!1816328 () Bool)

(assert (=> b!4403033 (=> (not res!1816328) (not e!2741622))))

(assert (=> b!4403033 (= res!1816328 (isDefined!7914 (getValueByKey!607 (toList!3249 lt!1607232) (_1!27745 lt!1607083))))))

(declare-fun b!4403034 () Bool)

(assert (=> b!4403034 (= e!2741620 (keys!16757 lt!1607232))))

(declare-fun b!4403035 () Bool)

(declare-fun lt!1607541 () Unit!79009)

(assert (=> b!4403035 (= e!2741617 lt!1607541)))

(declare-fun lt!1607548 () Unit!79009)

(assert (=> b!4403035 (= lt!1607548 (lemmaContainsKeyImpliesGetValueByKeyDefined!517 (toList!3249 lt!1607232) (_1!27745 lt!1607083)))))

(assert (=> b!4403035 (isDefined!7914 (getValueByKey!607 (toList!3249 lt!1607232) (_1!27745 lt!1607083)))))

(declare-fun lt!1607545 () Unit!79009)

(assert (=> b!4403035 (= lt!1607545 lt!1607548)))

(assert (=> b!4403035 (= lt!1607541 (lemmaInListThenGetKeysListContains!198 (toList!3249 lt!1607232) (_1!27745 lt!1607083)))))

(assert (=> b!4403035 call!306407))

(assert (= (and d!1328138 c!749682) b!4403035))

(assert (= (and d!1328138 (not c!749682)) b!4403031))

(assert (= (and b!4403031 c!749684) b!4403027))

(assert (= (and b!4403031 (not c!749684)) b!4403029))

(assert (= (or b!4403035 b!4403031) bm!306402))

(assert (= (and bm!306402 c!749683) b!4403032))

(assert (= (and bm!306402 (not c!749683)) b!4403034))

(assert (= (and d!1328138 res!1816327) b!4403028))

(assert (= (and d!1328138 (not res!1816326)) b!4403033))

(assert (= (and b!4403033 res!1816328) b!4403030))

(declare-fun m!5067247 () Bool)

(assert (=> b!4403028 m!5067247))

(assert (=> b!4403028 m!5067247))

(declare-fun m!5067249 () Bool)

(assert (=> b!4403028 m!5067249))

(declare-fun m!5067251 () Bool)

(assert (=> bm!306402 m!5067251))

(assert (=> b!4403034 m!5067247))

(assert (=> b!4403033 m!5066669))

(assert (=> b!4403033 m!5066669))

(declare-fun m!5067253 () Bool)

(assert (=> b!4403033 m!5067253))

(declare-fun m!5067255 () Bool)

(assert (=> b!4403035 m!5067255))

(assert (=> b!4403035 m!5066669))

(assert (=> b!4403035 m!5066669))

(assert (=> b!4403035 m!5067253))

(declare-fun m!5067257 () Bool)

(assert (=> b!4403035 m!5067257))

(declare-fun m!5067259 () Bool)

(assert (=> d!1328138 m!5067259))

(assert (=> b!4403030 m!5067247))

(assert (=> b!4403030 m!5067247))

(assert (=> b!4403030 m!5067249))

(assert (=> b!4403027 m!5067259))

(declare-fun m!5067261 () Bool)

(assert (=> b!4403027 m!5067261))

(declare-fun m!5067263 () Bool)

(assert (=> b!4403032 m!5067263))

(assert (=> d!1327974 d!1328138))

(declare-fun b!4403072 () Bool)

(declare-fun e!2741646 () Option!10621)

(declare-fun e!2741647 () Option!10621)

(assert (=> b!4403072 (= e!2741646 e!2741647)))

(declare-fun c!749697 () Bool)

(assert (=> b!4403072 (= c!749697 (and ((_ is Cons!49294) lt!1607233) (not (= (_1!27745 (h!54923 lt!1607233)) (_1!27745 lt!1607083)))))))

(declare-fun b!4403074 () Bool)

(assert (=> b!4403074 (= e!2741647 None!10620)))

(declare-fun b!4403073 () Bool)

(assert (=> b!4403073 (= e!2741647 (getValueByKey!607 (t!356352 lt!1607233) (_1!27745 lt!1607083)))))

(declare-fun b!4403071 () Bool)

(assert (=> b!4403071 (= e!2741646 (Some!10620 (_2!27745 (h!54923 lt!1607233))))))

(declare-fun d!1328142 () Bool)

(declare-fun c!749696 () Bool)

(assert (=> d!1328142 (= c!749696 (and ((_ is Cons!49294) lt!1607233) (= (_1!27745 (h!54923 lt!1607233)) (_1!27745 lt!1607083))))))

(assert (=> d!1328142 (= (getValueByKey!607 lt!1607233 (_1!27745 lt!1607083)) e!2741646)))

(assert (= (and d!1328142 c!749696) b!4403071))

(assert (= (and d!1328142 (not c!749696)) b!4403072))

(assert (= (and b!4403072 c!749697) b!4403073))

(assert (= (and b!4403072 (not c!749697)) b!4403074))

(declare-fun m!5067309 () Bool)

(assert (=> b!4403073 m!5067309))

(assert (=> d!1327974 d!1328142))

(declare-fun d!1328150 () Bool)

(assert (=> d!1328150 (= (getValueByKey!607 lt!1607233 (_1!27745 lt!1607083)) (Some!10620 (_2!27745 lt!1607083)))))

(declare-fun lt!1607588 () Unit!79009)

(declare-fun choose!27639 (List!49418 K!10650 V!10896) Unit!79009)

(assert (=> d!1328150 (= lt!1607588 (choose!27639 lt!1607233 (_1!27745 lt!1607083) (_2!27745 lt!1607083)))))

(declare-fun e!2741650 () Bool)

(assert (=> d!1328150 e!2741650))

(declare-fun res!1816346 () Bool)

(assert (=> d!1328150 (=> (not res!1816346) (not e!2741650))))

(assert (=> d!1328150 (= res!1816346 (invariantList!754 lt!1607233))))

(assert (=> d!1328150 (= (lemmaContainsTupThenGetReturnValue!353 lt!1607233 (_1!27745 lt!1607083) (_2!27745 lt!1607083)) lt!1607588)))

(declare-fun b!4403079 () Bool)

(declare-fun res!1816347 () Bool)

(assert (=> b!4403079 (=> (not res!1816347) (not e!2741650))))

(assert (=> b!4403079 (= res!1816347 (containsKey!951 lt!1607233 (_1!27745 lt!1607083)))))

(declare-fun b!4403080 () Bool)

(assert (=> b!4403080 (= e!2741650 (contains!11697 lt!1607233 (tuple2!48903 (_1!27745 lt!1607083) (_2!27745 lt!1607083))))))

(assert (= (and d!1328150 res!1816346) b!4403079))

(assert (= (and b!4403079 res!1816347) b!4403080))

(assert (=> d!1328150 m!5066663))

(declare-fun m!5067311 () Bool)

(assert (=> d!1328150 m!5067311))

(declare-fun m!5067313 () Bool)

(assert (=> d!1328150 m!5067313))

(declare-fun m!5067315 () Bool)

(assert (=> b!4403079 m!5067315))

(declare-fun m!5067317 () Bool)

(assert (=> b!4403080 m!5067317))

(assert (=> d!1327974 d!1328150))

(declare-fun b!4403151 () Bool)

(declare-fun e!2741706 () List!49418)

(declare-fun e!2741702 () List!49418)

(assert (=> b!4403151 (= e!2741706 e!2741702)))

(declare-fun res!1816398 () Bool)

(assert (=> b!4403151 (= res!1816398 ((_ is Cons!49294) (toList!3249 lt!1607082)))))

(declare-fun e!2741703 () Bool)

(assert (=> b!4403151 (=> (not res!1816398) (not e!2741703))))

(declare-fun c!749713 () Bool)

(assert (=> b!4403151 (= c!749713 e!2741703)))

(declare-fun call!306425 () List!49418)

(declare-fun c!749710 () Bool)

(declare-fun c!749712 () Bool)

(declare-fun e!2741707 () List!49418)

(declare-fun bm!306419 () Bool)

(declare-fun $colon$colon!757 (List!49418 tuple2!48902) List!49418)

(assert (=> bm!306419 (= call!306425 ($colon$colon!757 (ite c!749712 (t!356352 (toList!3249 lt!1607082)) (ite c!749713 (toList!3249 lt!1607082) e!2741707)) (ite (or c!749712 c!749713) (tuple2!48903 (_1!27745 lt!1607083) (_2!27745 lt!1607083)) (ite c!749710 (h!54923 (toList!3249 lt!1607082)) (tuple2!48903 (_1!27745 lt!1607083) (_2!27745 lt!1607083))))))))

(declare-fun b!4403152 () Bool)

(assert (=> b!4403152 (= e!2741707 (insertNoDuplicatedKeys!153 (t!356352 (toList!3249 lt!1607082)) (_1!27745 lt!1607083) (_2!27745 lt!1607083)))))

(declare-fun b!4403153 () Bool)

(assert (=> b!4403153 (= e!2741706 call!306425)))

(declare-fun lt!1607653 () List!49421)

(declare-fun call!306424 () List!49421)

(assert (=> b!4403153 (= lt!1607653 call!306424)))

(declare-fun lt!1607661 () Unit!79009)

(declare-fun lemmaSubseqRefl!90 (List!49421) Unit!79009)

(assert (=> b!4403153 (= lt!1607661 (lemmaSubseqRefl!90 lt!1607653))))

(declare-fun subseq!606 (List!49421 List!49421) Bool)

(assert (=> b!4403153 (subseq!606 lt!1607653 lt!1607653)))

(declare-fun lt!1607659 () Unit!79009)

(assert (=> b!4403153 (= lt!1607659 lt!1607661)))

(declare-fun bm!306420 () Bool)

(declare-fun call!306426 () List!49418)

(assert (=> bm!306420 (= call!306426 call!306425)))

(declare-fun b!4403154 () Bool)

(declare-fun e!2741704 () List!49418)

(declare-fun call!306427 () List!49418)

(assert (=> b!4403154 (= e!2741704 call!306427)))

(declare-fun b!4403156 () Bool)

(declare-fun lt!1607654 () List!49418)

(assert (=> b!4403156 (= e!2741704 lt!1607654)))

(assert (=> b!4403156 (= lt!1607654 call!306427)))

(declare-fun c!749709 () Bool)

(assert (=> b!4403156 (= c!749709 (containsKey!951 (insertNoDuplicatedKeys!153 (t!356352 (toList!3249 lt!1607082)) (_1!27745 lt!1607083) (_2!27745 lt!1607083)) (_1!27745 (h!54923 (toList!3249 lt!1607082)))))))

(declare-fun lt!1607655 () Unit!79009)

(declare-fun e!2741701 () Unit!79009)

(assert (=> b!4403156 (= lt!1607655 e!2741701)))

(declare-fun b!4403157 () Bool)

(declare-fun res!1816397 () Bool)

(declare-fun e!2741705 () Bool)

(assert (=> b!4403157 (=> (not res!1816397) (not e!2741705))))

(declare-fun lt!1607652 () List!49418)

(assert (=> b!4403157 (= res!1816397 (contains!11697 lt!1607652 (tuple2!48903 (_1!27745 lt!1607083) (_2!27745 lt!1607083))))))

(declare-fun b!4403158 () Bool)

(assert (=> b!4403158 (= e!2741707 Nil!49294)))

(declare-fun bm!306421 () Bool)

(declare-fun lt!1607656 () List!49418)

(assert (=> bm!306421 (= call!306424 (getKeysList!201 (ite c!749712 (toList!3249 lt!1607082) lt!1607656)))))

(declare-fun b!4403159 () Bool)

(declare-fun res!1816395 () Bool)

(assert (=> b!4403159 (=> (not res!1816395) (not e!2741705))))

(assert (=> b!4403159 (= res!1816395 (containsKey!951 lt!1607652 (_1!27745 lt!1607083)))))

(declare-fun bm!306422 () Bool)

(assert (=> bm!306422 (= call!306427 call!306426)))

(declare-fun c!749711 () Bool)

(assert (=> bm!306422 (= c!749711 c!749710)))

(declare-fun b!4403160 () Bool)

(assert (=> b!4403160 (= c!749710 ((_ is Cons!49294) (toList!3249 lt!1607082)))))

(assert (=> b!4403160 (= e!2741702 e!2741704)))

(declare-fun b!4403161 () Bool)

(declare-fun Unit!79075 () Unit!79009)

(assert (=> b!4403161 (= e!2741701 Unit!79075)))

(declare-fun b!4403162 () Bool)

(assert (=> b!4403162 (= e!2741702 call!306426)))

(declare-fun d!1328152 () Bool)

(assert (=> d!1328152 e!2741705))

(declare-fun res!1816396 () Bool)

(assert (=> d!1328152 (=> (not res!1816396) (not e!2741705))))

(assert (=> d!1328152 (= res!1816396 (invariantList!754 lt!1607652))))

(assert (=> d!1328152 (= lt!1607652 e!2741706)))

(assert (=> d!1328152 (= c!749712 (and ((_ is Cons!49294) (toList!3249 lt!1607082)) (= (_1!27745 (h!54923 (toList!3249 lt!1607082))) (_1!27745 lt!1607083))))))

(assert (=> d!1328152 (invariantList!754 (toList!3249 lt!1607082))))

(assert (=> d!1328152 (= (insertNoDuplicatedKeys!153 (toList!3249 lt!1607082) (_1!27745 lt!1607083) (_2!27745 lt!1607083)) lt!1607652)))

(declare-fun b!4403155 () Bool)

(assert (=> b!4403155 (= e!2741703 (not (containsKey!951 (toList!3249 lt!1607082) (_1!27745 lt!1607083))))))

(declare-fun b!4403163 () Bool)

(assert (=> b!4403163 false))

(declare-fun lt!1607658 () Unit!79009)

(declare-fun lt!1607657 () Unit!79009)

(assert (=> b!4403163 (= lt!1607658 lt!1607657)))

(assert (=> b!4403163 (containsKey!951 (t!356352 (toList!3249 lt!1607082)) (_1!27745 (h!54923 (toList!3249 lt!1607082))))))

(assert (=> b!4403163 (= lt!1607657 (lemmaInGetKeysListThenContainsKey!199 (t!356352 (toList!3249 lt!1607082)) (_1!27745 (h!54923 (toList!3249 lt!1607082)))))))

(declare-fun lt!1607660 () Unit!79009)

(declare-fun lt!1607662 () Unit!79009)

(assert (=> b!4403163 (= lt!1607660 lt!1607662)))

(assert (=> b!4403163 (contains!11695 call!306424 (_1!27745 (h!54923 (toList!3249 lt!1607082))))))

(assert (=> b!4403163 (= lt!1607662 (lemmaInListThenGetKeysListContains!198 lt!1607656 (_1!27745 (h!54923 (toList!3249 lt!1607082)))))))

(assert (=> b!4403163 (= lt!1607656 (insertNoDuplicatedKeys!153 (t!356352 (toList!3249 lt!1607082)) (_1!27745 lt!1607083) (_2!27745 lt!1607083)))))

(declare-fun Unit!79077 () Unit!79009)

(assert (=> b!4403163 (= e!2741701 Unit!79077)))

(declare-fun b!4403164 () Bool)

(assert (=> b!4403164 (= e!2741705 (= (content!7881 (getKeysList!201 lt!1607652)) ((_ map or) (content!7881 (getKeysList!201 (toList!3249 lt!1607082))) (store ((as const (Array K!10650 Bool)) false) (_1!27745 lt!1607083) true))))))

(assert (= (and d!1328152 c!749712) b!4403153))

(assert (= (and d!1328152 (not c!749712)) b!4403151))

(assert (= (and b!4403151 res!1816398) b!4403155))

(assert (= (and b!4403151 c!749713) b!4403162))

(assert (= (and b!4403151 (not c!749713)) b!4403160))

(assert (= (and b!4403160 c!749710) b!4403156))

(assert (= (and b!4403160 (not c!749710)) b!4403154))

(assert (= (and b!4403156 c!749709) b!4403163))

(assert (= (and b!4403156 (not c!749709)) b!4403161))

(assert (= (or b!4403156 b!4403154) bm!306422))

(assert (= (and bm!306422 c!749711) b!4403152))

(assert (= (and bm!306422 (not c!749711)) b!4403158))

(assert (= (or b!4403162 bm!306422) bm!306420))

(assert (= (or b!4403153 b!4403163) bm!306421))

(assert (= (or b!4403153 bm!306420) bm!306419))

(assert (= (and d!1328152 res!1816396) b!4403159))

(assert (= (and b!4403159 res!1816395) b!4403157))

(assert (= (and b!4403157 res!1816397) b!4403164))

(declare-fun m!5067443 () Bool)

(assert (=> bm!306421 m!5067443))

(declare-fun m!5067445 () Bool)

(assert (=> bm!306419 m!5067445))

(declare-fun m!5067447 () Bool)

(assert (=> b!4403155 m!5067447))

(declare-fun m!5067449 () Bool)

(assert (=> b!4403157 m!5067449))

(declare-fun m!5067451 () Bool)

(assert (=> b!4403163 m!5067451))

(assert (=> b!4403163 m!5067001))

(declare-fun m!5067453 () Bool)

(assert (=> b!4403163 m!5067453))

(declare-fun m!5067455 () Bool)

(assert (=> b!4403163 m!5067455))

(declare-fun m!5067457 () Bool)

(assert (=> b!4403163 m!5067457))

(assert (=> b!4403152 m!5067457))

(declare-fun m!5067459 () Bool)

(assert (=> b!4403164 m!5067459))

(declare-fun m!5067461 () Bool)

(assert (=> b!4403164 m!5067461))

(assert (=> b!4403164 m!5066691))

(declare-fun m!5067463 () Bool)

(assert (=> b!4403164 m!5067463))

(assert (=> b!4403164 m!5066691))

(declare-fun m!5067465 () Bool)

(assert (=> b!4403164 m!5067465))

(assert (=> b!4403164 m!5067459))

(declare-fun m!5067467 () Bool)

(assert (=> b!4403153 m!5067467))

(declare-fun m!5067469 () Bool)

(assert (=> b!4403153 m!5067469))

(declare-fun m!5067471 () Bool)

(assert (=> b!4403159 m!5067471))

(assert (=> b!4403156 m!5067457))

(assert (=> b!4403156 m!5067457))

(declare-fun m!5067473 () Bool)

(assert (=> b!4403156 m!5067473))

(declare-fun m!5067475 () Bool)

(assert (=> d!1328152 m!5067475))

(assert (=> d!1328152 m!5066981))

(assert (=> d!1327974 d!1328152))

(declare-fun bs!729374 () Bool)

(declare-fun b!4403168 () Bool)

(assert (= bs!729374 (and b!4403168 b!4402719)))

(declare-fun lambda!149369 () Int)

(assert (=> bs!729374 (= (= (extractMap!692 (t!356353 (toList!3250 (+!881 lt!1607074 lt!1607073)))) lt!1607393) (= lambda!149369 lambda!149308))))

(declare-fun bs!729375 () Bool)

(assert (= bs!729375 (and b!4403168 b!4402722)))

(assert (=> bs!729375 (= (= (extractMap!692 (t!356353 (toList!3250 (+!881 lt!1607074 lt!1607073)))) lt!1607082) (= lambda!149369 lambda!149306))))

(declare-fun bs!729376 () Bool)

(assert (= bs!729376 (and b!4403168 d!1327986)))

(assert (=> bs!729376 (= (= (extractMap!692 (t!356353 (toList!3250 (+!881 lt!1607074 lt!1607073)))) lt!1607400) (= lambda!149369 lambda!149309))))

(declare-fun bs!729377 () Bool)

(assert (= bs!729377 (and b!4403168 d!1328022)))

(assert (=> bs!729377 (not (= lambda!149369 lambda!149320))))

(assert (=> bs!729374 (= (= (extractMap!692 (t!356353 (toList!3250 (+!881 lt!1607074 lt!1607073)))) lt!1607082) (= lambda!149369 lambda!149307))))

(assert (=> b!4403168 true))

(declare-fun bs!729378 () Bool)

(declare-fun b!4403165 () Bool)

(assert (= bs!729378 (and b!4403165 b!4402719)))

(declare-fun lambda!149370 () Int)

(assert (=> bs!729378 (= (= (extractMap!692 (t!356353 (toList!3250 (+!881 lt!1607074 lt!1607073)))) lt!1607393) (= lambda!149370 lambda!149308))))

(declare-fun bs!729380 () Bool)

(assert (= bs!729380 (and b!4403165 b!4402722)))

(assert (=> bs!729380 (= (= (extractMap!692 (t!356353 (toList!3250 (+!881 lt!1607074 lt!1607073)))) lt!1607082) (= lambda!149370 lambda!149306))))

(declare-fun bs!729381 () Bool)

(assert (= bs!729381 (and b!4403165 d!1327986)))

(assert (=> bs!729381 (= (= (extractMap!692 (t!356353 (toList!3250 (+!881 lt!1607074 lt!1607073)))) lt!1607400) (= lambda!149370 lambda!149309))))

(declare-fun bs!729383 () Bool)

(assert (= bs!729383 (and b!4403165 b!4403168)))

(assert (=> bs!729383 (= lambda!149370 lambda!149369)))

(declare-fun bs!729385 () Bool)

(assert (= bs!729385 (and b!4403165 d!1328022)))

(assert (=> bs!729385 (not (= lambda!149370 lambda!149320))))

(assert (=> bs!729378 (= (= (extractMap!692 (t!356353 (toList!3250 (+!881 lt!1607074 lt!1607073)))) lt!1607082) (= lambda!149370 lambda!149307))))

(assert (=> b!4403165 true))

(declare-fun lt!1607665 () ListMap!2493)

(declare-fun lambda!149372 () Int)

(assert (=> bs!729378 (= (= lt!1607665 lt!1607393) (= lambda!149372 lambda!149308))))

(assert (=> bs!729380 (= (= lt!1607665 lt!1607082) (= lambda!149372 lambda!149306))))

(assert (=> b!4403165 (= (= lt!1607665 (extractMap!692 (t!356353 (toList!3250 (+!881 lt!1607074 lt!1607073))))) (= lambda!149372 lambda!149370))))

(assert (=> bs!729381 (= (= lt!1607665 lt!1607400) (= lambda!149372 lambda!149309))))

(assert (=> bs!729383 (= (= lt!1607665 (extractMap!692 (t!356353 (toList!3250 (+!881 lt!1607074 lt!1607073))))) (= lambda!149372 lambda!149369))))

(assert (=> bs!729385 (not (= lambda!149372 lambda!149320))))

(assert (=> bs!729378 (= (= lt!1607665 lt!1607082) (= lambda!149372 lambda!149307))))

(assert (=> b!4403165 true))

(declare-fun bs!729393 () Bool)

(declare-fun d!1328192 () Bool)

(assert (= bs!729393 (and d!1328192 b!4403165)))

(declare-fun lt!1607672 () ListMap!2493)

(declare-fun lambda!149373 () Int)

(assert (=> bs!729393 (= (= lt!1607672 lt!1607665) (= lambda!149373 lambda!149372))))

(declare-fun bs!729394 () Bool)

(assert (= bs!729394 (and d!1328192 b!4402719)))

(assert (=> bs!729394 (= (= lt!1607672 lt!1607393) (= lambda!149373 lambda!149308))))

(declare-fun bs!729395 () Bool)

(assert (= bs!729395 (and d!1328192 b!4402722)))

(assert (=> bs!729395 (= (= lt!1607672 lt!1607082) (= lambda!149373 lambda!149306))))

(assert (=> bs!729393 (= (= lt!1607672 (extractMap!692 (t!356353 (toList!3250 (+!881 lt!1607074 lt!1607073))))) (= lambda!149373 lambda!149370))))

(declare-fun bs!729396 () Bool)

(assert (= bs!729396 (and d!1328192 d!1327986)))

(assert (=> bs!729396 (= (= lt!1607672 lt!1607400) (= lambda!149373 lambda!149309))))

(declare-fun bs!729397 () Bool)

(assert (= bs!729397 (and d!1328192 b!4403168)))

(assert (=> bs!729397 (= (= lt!1607672 (extractMap!692 (t!356353 (toList!3250 (+!881 lt!1607074 lt!1607073))))) (= lambda!149373 lambda!149369))))

(declare-fun bs!729398 () Bool)

(assert (= bs!729398 (and d!1328192 d!1328022)))

(assert (=> bs!729398 (not (= lambda!149373 lambda!149320))))

(assert (=> bs!729394 (= (= lt!1607672 lt!1607082) (= lambda!149373 lambda!149307))))

(assert (=> d!1328192 true))

(declare-fun call!306430 () Bool)

(declare-fun c!749714 () Bool)

(declare-fun bm!306423 () Bool)

(assert (=> bm!306423 (= call!306430 (forall!9380 (toList!3249 (extractMap!692 (t!356353 (toList!3250 (+!881 lt!1607074 lt!1607073))))) (ite c!749714 lambda!149369 lambda!149372)))))

(declare-fun call!306428 () Bool)

(declare-fun bm!306424 () Bool)

(assert (=> bm!306424 (= call!306428 (forall!9380 (toList!3249 (extractMap!692 (t!356353 (toList!3250 (+!881 lt!1607074 lt!1607073))))) (ite c!749714 lambda!149369 lambda!149372)))))

(declare-fun e!2741708 () Bool)

(assert (=> d!1328192 e!2741708))

(declare-fun res!1816401 () Bool)

(assert (=> d!1328192 (=> (not res!1816401) (not e!2741708))))

(assert (=> d!1328192 (= res!1816401 (forall!9380 (_2!27746 (h!54924 (toList!3250 (+!881 lt!1607074 lt!1607073)))) lambda!149373))))

(declare-fun e!2741710 () ListMap!2493)

(assert (=> d!1328192 (= lt!1607672 e!2741710)))

(assert (=> d!1328192 (= c!749714 ((_ is Nil!49294) (_2!27746 (h!54924 (toList!3250 (+!881 lt!1607074 lt!1607073))))))))

(assert (=> d!1328192 (noDuplicateKeys!633 (_2!27746 (h!54924 (toList!3250 (+!881 lt!1607074 lt!1607073)))))))

(assert (=> d!1328192 (= (addToMapMapFromBucket!299 (_2!27746 (h!54924 (toList!3250 (+!881 lt!1607074 lt!1607073)))) (extractMap!692 (t!356353 (toList!3250 (+!881 lt!1607074 lt!1607073))))) lt!1607672)))

(assert (=> b!4403165 (= e!2741710 lt!1607665)))

(declare-fun lt!1607676 () ListMap!2493)

(assert (=> b!4403165 (= lt!1607676 (+!882 (extractMap!692 (t!356353 (toList!3250 (+!881 lt!1607074 lt!1607073)))) (h!54923 (_2!27746 (h!54924 (toList!3250 (+!881 lt!1607074 lt!1607073)))))))))

(assert (=> b!4403165 (= lt!1607665 (addToMapMapFromBucket!299 (t!356352 (_2!27746 (h!54924 (toList!3250 (+!881 lt!1607074 lt!1607073))))) (+!882 (extractMap!692 (t!356353 (toList!3250 (+!881 lt!1607074 lt!1607073)))) (h!54923 (_2!27746 (h!54924 (toList!3250 (+!881 lt!1607074 lt!1607073))))))))))

(declare-fun lt!1607683 () Unit!79009)

(declare-fun call!306429 () Unit!79009)

(assert (=> b!4403165 (= lt!1607683 call!306429)))

(assert (=> b!4403165 (forall!9380 (toList!3249 (extractMap!692 (t!356353 (toList!3250 (+!881 lt!1607074 lt!1607073))))) lambda!149370)))

(declare-fun lt!1607678 () Unit!79009)

(assert (=> b!4403165 (= lt!1607678 lt!1607683)))

(assert (=> b!4403165 (forall!9380 (toList!3249 lt!1607676) lambda!149372)))

(declare-fun lt!1607666 () Unit!79009)

(declare-fun Unit!79078 () Unit!79009)

(assert (=> b!4403165 (= lt!1607666 Unit!79078)))

(assert (=> b!4403165 (forall!9380 (t!356352 (_2!27746 (h!54924 (toList!3250 (+!881 lt!1607074 lt!1607073))))) lambda!149372)))

(declare-fun lt!1607668 () Unit!79009)

(declare-fun Unit!79079 () Unit!79009)

(assert (=> b!4403165 (= lt!1607668 Unit!79079)))

(declare-fun lt!1607667 () Unit!79009)

(declare-fun Unit!79080 () Unit!79009)

(assert (=> b!4403165 (= lt!1607667 Unit!79080)))

(declare-fun lt!1607663 () Unit!79009)

(assert (=> b!4403165 (= lt!1607663 (forallContained!2015 (toList!3249 lt!1607676) lambda!149372 (h!54923 (_2!27746 (h!54924 (toList!3250 (+!881 lt!1607074 lt!1607073)))))))))

(assert (=> b!4403165 (contains!11691 lt!1607676 (_1!27745 (h!54923 (_2!27746 (h!54924 (toList!3250 (+!881 lt!1607074 lt!1607073)))))))))

(declare-fun lt!1607682 () Unit!79009)

(declare-fun Unit!79081 () Unit!79009)

(assert (=> b!4403165 (= lt!1607682 Unit!79081)))

(assert (=> b!4403165 (contains!11691 lt!1607665 (_1!27745 (h!54923 (_2!27746 (h!54924 (toList!3250 (+!881 lt!1607074 lt!1607073)))))))))

(declare-fun lt!1607679 () Unit!79009)

(declare-fun Unit!79082 () Unit!79009)

(assert (=> b!4403165 (= lt!1607679 Unit!79082)))

(assert (=> b!4403165 (forall!9380 (_2!27746 (h!54924 (toList!3250 (+!881 lt!1607074 lt!1607073)))) lambda!149372)))

(declare-fun lt!1607673 () Unit!79009)

(declare-fun Unit!79083 () Unit!79009)

(assert (=> b!4403165 (= lt!1607673 Unit!79083)))

(assert (=> b!4403165 (forall!9380 (toList!3249 lt!1607676) lambda!149372)))

(declare-fun lt!1607670 () Unit!79009)

(declare-fun Unit!79084 () Unit!79009)

(assert (=> b!4403165 (= lt!1607670 Unit!79084)))

(declare-fun lt!1607681 () Unit!79009)

(declare-fun Unit!79085 () Unit!79009)

(assert (=> b!4403165 (= lt!1607681 Unit!79085)))

(declare-fun lt!1607675 () Unit!79009)

(assert (=> b!4403165 (= lt!1607675 (addForallContainsKeyThenBeforeAdding!133 (extractMap!692 (t!356353 (toList!3250 (+!881 lt!1607074 lt!1607073)))) lt!1607665 (_1!27745 (h!54923 (_2!27746 (h!54924 (toList!3250 (+!881 lt!1607074 lt!1607073)))))) (_2!27745 (h!54923 (_2!27746 (h!54924 (toList!3250 (+!881 lt!1607074 lt!1607073))))))))))

(assert (=> b!4403165 call!306428))

(declare-fun lt!1607680 () Unit!79009)

(assert (=> b!4403165 (= lt!1607680 lt!1607675)))

(assert (=> b!4403165 (forall!9380 (toList!3249 (extractMap!692 (t!356353 (toList!3250 (+!881 lt!1607074 lt!1607073))))) lambda!149372)))

(declare-fun lt!1607677 () Unit!79009)

(declare-fun Unit!79086 () Unit!79009)

(assert (=> b!4403165 (= lt!1607677 Unit!79086)))

(declare-fun res!1816399 () Bool)

(assert (=> b!4403165 (= res!1816399 (forall!9380 (_2!27746 (h!54924 (toList!3250 (+!881 lt!1607074 lt!1607073)))) lambda!149372))))

(declare-fun e!2741709 () Bool)

(assert (=> b!4403165 (=> (not res!1816399) (not e!2741709))))

(assert (=> b!4403165 e!2741709))

(declare-fun lt!1607674 () Unit!79009)

(declare-fun Unit!79087 () Unit!79009)

(assert (=> b!4403165 (= lt!1607674 Unit!79087)))

(declare-fun b!4403166 () Bool)

(assert (=> b!4403166 (= e!2741708 (invariantList!754 (toList!3249 lt!1607672)))))

(declare-fun b!4403167 () Bool)

(assert (=> b!4403167 (= e!2741709 call!306430)))

(declare-fun bm!306425 () Bool)

(assert (=> bm!306425 (= call!306429 (lemmaContainsAllItsOwnKeys!133 (extractMap!692 (t!356353 (toList!3250 (+!881 lt!1607074 lt!1607073))))))))

(assert (=> b!4403168 (= e!2741710 (extractMap!692 (t!356353 (toList!3250 (+!881 lt!1607074 lt!1607073)))))))

(declare-fun lt!1607671 () Unit!79009)

(assert (=> b!4403168 (= lt!1607671 call!306429)))

(assert (=> b!4403168 call!306428))

(declare-fun lt!1607669 () Unit!79009)

(assert (=> b!4403168 (= lt!1607669 lt!1607671)))

(assert (=> b!4403168 call!306430))

(declare-fun lt!1607664 () Unit!79009)

(declare-fun Unit!79088 () Unit!79009)

(assert (=> b!4403168 (= lt!1607664 Unit!79088)))

(declare-fun b!4403169 () Bool)

(declare-fun res!1816400 () Bool)

(assert (=> b!4403169 (=> (not res!1816400) (not e!2741708))))

(assert (=> b!4403169 (= res!1816400 (forall!9380 (toList!3249 (extractMap!692 (t!356353 (toList!3250 (+!881 lt!1607074 lt!1607073))))) lambda!149373))))

(assert (= (and d!1328192 c!749714) b!4403168))

(assert (= (and d!1328192 (not c!749714)) b!4403165))

(assert (= (and b!4403165 res!1816399) b!4403167))

(assert (= (or b!4403168 b!4403165) bm!306425))

(assert (= (or b!4403168 b!4403165) bm!306424))

(assert (= (or b!4403168 b!4403167) bm!306423))

(assert (= (and d!1328192 res!1816401) b!4403169))

(assert (= (and b!4403169 res!1816400) b!4403166))

(declare-fun m!5067519 () Bool)

(assert (=> bm!306423 m!5067519))

(declare-fun m!5067523 () Bool)

(assert (=> b!4403169 m!5067523))

(declare-fun m!5067525 () Bool)

(assert (=> b!4403165 m!5067525))

(declare-fun m!5067527 () Bool)

(assert (=> b!4403165 m!5067527))

(declare-fun m!5067529 () Bool)

(assert (=> b!4403165 m!5067529))

(declare-fun m!5067531 () Bool)

(assert (=> b!4403165 m!5067531))

(assert (=> b!4403165 m!5066851))

(declare-fun m!5067533 () Bool)

(assert (=> b!4403165 m!5067533))

(declare-fun m!5067535 () Bool)

(assert (=> b!4403165 m!5067535))

(declare-fun m!5067537 () Bool)

(assert (=> b!4403165 m!5067537))

(declare-fun m!5067541 () Bool)

(assert (=> b!4403165 m!5067541))

(assert (=> b!4403165 m!5067529))

(declare-fun m!5067545 () Bool)

(assert (=> b!4403165 m!5067545))

(assert (=> b!4403165 m!5067537))

(declare-fun m!5067547 () Bool)

(assert (=> b!4403165 m!5067547))

(declare-fun m!5067549 () Bool)

(assert (=> b!4403165 m!5067549))

(assert (=> b!4403165 m!5066851))

(assert (=> b!4403165 m!5067547))

(declare-fun m!5067551 () Bool)

(assert (=> d!1328192 m!5067551))

(declare-fun m!5067553 () Bool)

(assert (=> d!1328192 m!5067553))

(declare-fun m!5067555 () Bool)

(assert (=> b!4403166 m!5067555))

(assert (=> bm!306424 m!5067519))

(assert (=> bm!306425 m!5066851))

(declare-fun m!5067557 () Bool)

(assert (=> bm!306425 m!5067557))

(assert (=> b!4402730 d!1328192))

(declare-fun bs!729408 () Bool)

(declare-fun d!1328200 () Bool)

(assert (= bs!729408 (and d!1328200 d!1327978)))

(declare-fun lambda!149375 () Int)

(assert (=> bs!729408 (= lambda!149375 lambda!149239)))

(declare-fun bs!729409 () Bool)

(assert (= bs!729409 (and d!1328200 d!1328020)))

(assert (=> bs!729409 (not (= lambda!149375 lambda!149317))))

(declare-fun bs!729410 () Bool)

(assert (= bs!729410 (and d!1328200 d!1328032)))

(assert (=> bs!729410 (= lambda!149375 lambda!149321)))

(declare-fun bs!729411 () Bool)

(assert (= bs!729411 (and d!1328200 d!1328006)))

(assert (=> bs!729411 (= lambda!149375 lambda!149312)))

(declare-fun bs!729412 () Bool)

(assert (= bs!729412 (and d!1328200 d!1328008)))

(assert (=> bs!729412 (= lambda!149375 lambda!149313)))

(declare-fun bs!729413 () Bool)

(assert (= bs!729413 (and d!1328200 d!1328082)))

(assert (=> bs!729413 (= lambda!149375 lambda!149334)))

(declare-fun bs!729414 () Bool)

(assert (= bs!729414 (and d!1328200 start!428144)))

(assert (=> bs!729414 (= lambda!149375 lambda!149221)))

(declare-fun bs!729415 () Bool)

(assert (= bs!729415 (and d!1328200 d!1328010)))

(assert (=> bs!729415 (= lambda!149375 lambda!149314)))

(declare-fun bs!729416 () Bool)

(assert (= bs!729416 (and d!1328200 d!1327982)))

(assert (=> bs!729416 (= lambda!149375 lambda!149242)))

(declare-fun lt!1607685 () ListMap!2493)

(assert (=> d!1328200 (invariantList!754 (toList!3249 lt!1607685))))

(declare-fun e!2741714 () ListMap!2493)

(assert (=> d!1328200 (= lt!1607685 e!2741714)))

(declare-fun c!749716 () Bool)

(assert (=> d!1328200 (= c!749716 ((_ is Cons!49295) (t!356353 (toList!3250 (+!881 lt!1607074 lt!1607073)))))))

(assert (=> d!1328200 (forall!9378 (t!356353 (toList!3250 (+!881 lt!1607074 lt!1607073))) lambda!149375)))

(assert (=> d!1328200 (= (extractMap!692 (t!356353 (toList!3250 (+!881 lt!1607074 lt!1607073)))) lt!1607685)))

(declare-fun b!4403174 () Bool)

(assert (=> b!4403174 (= e!2741714 (addToMapMapFromBucket!299 (_2!27746 (h!54924 (t!356353 (toList!3250 (+!881 lt!1607074 lt!1607073))))) (extractMap!692 (t!356353 (t!356353 (toList!3250 (+!881 lt!1607074 lt!1607073)))))))))

(declare-fun b!4403175 () Bool)

(assert (=> b!4403175 (= e!2741714 (ListMap!2494 Nil!49294))))

(assert (= (and d!1328200 c!749716) b!4403174))

(assert (= (and d!1328200 (not c!749716)) b!4403175))

(declare-fun m!5067565 () Bool)

(assert (=> d!1328200 m!5067565))

(declare-fun m!5067567 () Bool)

(assert (=> d!1328200 m!5067567))

(declare-fun m!5067569 () Bool)

(assert (=> b!4403174 m!5067569))

(assert (=> b!4403174 m!5067569))

(declare-fun m!5067571 () Bool)

(assert (=> b!4403174 m!5067571))

(assert (=> b!4402730 d!1328200))

(declare-fun d!1328208 () Bool)

(declare-fun c!749723 () Bool)

(assert (=> d!1328208 (= c!749723 ((_ is Nil!49294) (toList!3249 (extractMap!692 (toList!3250 (+!881 lt!1607074 lt!1607073))))))))

(declare-fun e!2741721 () (InoxSet tuple2!48902))

(assert (=> d!1328208 (= (content!7880 (toList!3249 (extractMap!692 (toList!3250 (+!881 lt!1607074 lt!1607073))))) e!2741721)))

(declare-fun b!4403188 () Bool)

(assert (=> b!4403188 (= e!2741721 ((as const (Array tuple2!48902 Bool)) false))))

(declare-fun b!4403189 () Bool)

(assert (=> b!4403189 (= e!2741721 ((_ map or) (store ((as const (Array tuple2!48902 Bool)) false) (h!54923 (toList!3249 (extractMap!692 (toList!3250 (+!881 lt!1607074 lt!1607073))))) true) (content!7880 (t!356352 (toList!3249 (extractMap!692 (toList!3250 (+!881 lt!1607074 lt!1607073))))))))))

(assert (= (and d!1328208 c!749723) b!4403188))

(assert (= (and d!1328208 (not c!749723)) b!4403189))

(declare-fun m!5067575 () Bool)

(assert (=> b!4403189 m!5067575))

(declare-fun m!5067577 () Bool)

(assert (=> b!4403189 m!5067577))

(assert (=> d!1327938 d!1328208))

(declare-fun d!1328212 () Bool)

(declare-fun c!749724 () Bool)

(assert (=> d!1328212 (= c!749724 ((_ is Nil!49294) (toList!3249 (+!882 lt!1607082 lt!1607083))))))

(declare-fun e!2741724 () (InoxSet tuple2!48902))

(assert (=> d!1328212 (= (content!7880 (toList!3249 (+!882 lt!1607082 lt!1607083))) e!2741724)))

(declare-fun b!4403192 () Bool)

(assert (=> b!4403192 (= e!2741724 ((as const (Array tuple2!48902 Bool)) false))))

(declare-fun b!4403193 () Bool)

(assert (=> b!4403193 (= e!2741724 ((_ map or) (store ((as const (Array tuple2!48902 Bool)) false) (h!54923 (toList!3249 (+!882 lt!1607082 lt!1607083))) true) (content!7880 (t!356352 (toList!3249 (+!882 lt!1607082 lt!1607083))))))))

(assert (= (and d!1328212 c!749724) b!4403192))

(assert (= (and d!1328212 (not c!749724)) b!4403193))

(declare-fun m!5067579 () Bool)

(assert (=> b!4403193 m!5067579))

(declare-fun m!5067581 () Bool)

(assert (=> b!4403193 m!5067581))

(assert (=> d!1327938 d!1328212))

(declare-fun d!1328214 () Bool)

(assert (=> d!1328214 (= (tail!7125 (toList!3250 lm!1707)) (t!356353 (toList!3250 lm!1707)))))

(assert (=> d!1327984 d!1328214))

(declare-fun d!1328216 () Bool)

(declare-fun c!749727 () Bool)

(assert (=> d!1328216 (= c!749727 ((_ is Nil!49295) (toList!3250 lm!1707)))))

(declare-fun e!2741728 () (InoxSet tuple2!48904))

(assert (=> d!1328216 (= (content!7879 (toList!3250 lm!1707)) e!2741728)))

(declare-fun b!4403199 () Bool)

(assert (=> b!4403199 (= e!2741728 ((as const (Array tuple2!48904 Bool)) false))))

(declare-fun b!4403200 () Bool)

(assert (=> b!4403200 (= e!2741728 ((_ map or) (store ((as const (Array tuple2!48904 Bool)) false) (h!54924 (toList!3250 lm!1707)) true) (content!7879 (t!356353 (toList!3250 lm!1707)))))))

(assert (= (and d!1328216 c!749727) b!4403199))

(assert (= (and d!1328216 (not c!749727)) b!4403200))

(declare-fun m!5067585 () Bool)

(assert (=> b!4403200 m!5067585))

(declare-fun m!5067587 () Bool)

(assert (=> b!4403200 m!5067587))

(assert (=> d!1327902 d!1328216))

(declare-fun d!1328220 () Bool)

(declare-fun res!1816411 () Bool)

(declare-fun e!2741733 () Bool)

(assert (=> d!1328220 (=> res!1816411 e!2741733)))

(assert (=> d!1328220 (= res!1816411 ((_ is Nil!49294) (toList!3249 lt!1607082)))))

(assert (=> d!1328220 (= (forall!9380 (toList!3249 lt!1607082) lambda!149309) e!2741733)))

(declare-fun b!4403205 () Bool)

(declare-fun e!2741734 () Bool)

(assert (=> b!4403205 (= e!2741733 e!2741734)))

(declare-fun res!1816412 () Bool)

(assert (=> b!4403205 (=> (not res!1816412) (not e!2741734))))

(declare-fun dynLambda!20772 (Int tuple2!48902) Bool)

(assert (=> b!4403205 (= res!1816412 (dynLambda!20772 lambda!149309 (h!54923 (toList!3249 lt!1607082))))))

(declare-fun b!4403206 () Bool)

(assert (=> b!4403206 (= e!2741734 (forall!9380 (t!356352 (toList!3249 lt!1607082)) lambda!149309))))

(assert (= (and d!1328220 (not res!1816411)) b!4403205))

(assert (= (and b!4403205 res!1816412) b!4403206))

(declare-fun b_lambda!140039 () Bool)

(assert (=> (not b_lambda!140039) (not b!4403205)))

(declare-fun m!5067593 () Bool)

(assert (=> b!4403205 m!5067593))

(declare-fun m!5067595 () Bool)

(assert (=> b!4403206 m!5067595))

(assert (=> b!4402723 d!1328220))

(declare-fun b!4403210 () Bool)

(declare-fun e!2741736 () Option!10620)

(assert (=> b!4403210 (= e!2741736 None!10619)))

(declare-fun d!1328224 () Bool)

(declare-fun c!749728 () Bool)

(assert (=> d!1328224 (= c!749728 (and ((_ is Cons!49295) (toList!3250 lt!1607419)) (= (_1!27746 (h!54924 (toList!3250 lt!1607419))) (_1!27746 lt!1607073))))))

(declare-fun e!2741735 () Option!10620)

(assert (=> d!1328224 (= (getValueByKey!606 (toList!3250 lt!1607419) (_1!27746 lt!1607073)) e!2741735)))

(declare-fun b!4403209 () Bool)

(assert (=> b!4403209 (= e!2741736 (getValueByKey!606 (t!356353 (toList!3250 lt!1607419)) (_1!27746 lt!1607073)))))

(declare-fun b!4403207 () Bool)

(assert (=> b!4403207 (= e!2741735 (Some!10619 (_2!27746 (h!54924 (toList!3250 lt!1607419)))))))

(declare-fun b!4403208 () Bool)

(assert (=> b!4403208 (= e!2741735 e!2741736)))

(declare-fun c!749729 () Bool)

(assert (=> b!4403208 (= c!749729 (and ((_ is Cons!49295) (toList!3250 lt!1607419)) (not (= (_1!27746 (h!54924 (toList!3250 lt!1607419))) (_1!27746 lt!1607073)))))))

(assert (= (and d!1328224 c!749728) b!4403207))

(assert (= (and d!1328224 (not c!749728)) b!4403208))

(assert (= (and b!4403208 c!749729) b!4403209))

(assert (= (and b!4403208 (not c!749729)) b!4403210))

(declare-fun m!5067597 () Bool)

(assert (=> b!4403209 m!5067597))

(assert (=> b!4402750 d!1328224))

(declare-fun lt!1607692 () Bool)

(declare-fun d!1328226 () Bool)

(assert (=> d!1328226 (= lt!1607692 (select (content!7879 (toList!3250 lm!1707)) (tuple2!48905 hash!377 lt!1607077)))))

(declare-fun e!2741738 () Bool)

(assert (=> d!1328226 (= lt!1607692 e!2741738)))

(declare-fun res!1816413 () Bool)

(assert (=> d!1328226 (=> (not res!1816413) (not e!2741738))))

(assert (=> d!1328226 (= res!1816413 ((_ is Cons!49295) (toList!3250 lm!1707)))))

(assert (=> d!1328226 (= (contains!11693 (toList!3250 lm!1707) (tuple2!48905 hash!377 lt!1607077)) lt!1607692)))

(declare-fun b!4403211 () Bool)

(declare-fun e!2741737 () Bool)

(assert (=> b!4403211 (= e!2741738 e!2741737)))

(declare-fun res!1816414 () Bool)

(assert (=> b!4403211 (=> res!1816414 e!2741737)))

(assert (=> b!4403211 (= res!1816414 (= (h!54924 (toList!3250 lm!1707)) (tuple2!48905 hash!377 lt!1607077)))))

(declare-fun b!4403212 () Bool)

(assert (=> b!4403212 (= e!2741737 (contains!11693 (t!356353 (toList!3250 lm!1707)) (tuple2!48905 hash!377 lt!1607077)))))

(assert (= (and d!1328226 res!1816413) b!4403211))

(assert (= (and b!4403211 (not res!1816414)) b!4403212))

(assert (=> d!1328226 m!5066453))

(declare-fun m!5067599 () Bool)

(assert (=> d!1328226 m!5067599))

(declare-fun m!5067601 () Bool)

(assert (=> b!4403212 m!5067601))

(assert (=> d!1327920 d!1328226))

(declare-fun d!1328228 () Bool)

(assert (=> d!1328228 (contains!11693 (toList!3250 lm!1707) (tuple2!48905 hash!377 lt!1607077))))

(assert (=> d!1328228 true))

(declare-fun _$14!909 () Unit!79009)

(assert (=> d!1328228 (= (choose!27629 (toList!3250 lm!1707) hash!377 lt!1607077) _$14!909)))

(declare-fun bs!729421 () Bool)

(assert (= bs!729421 d!1328228))

(assert (=> bs!729421 m!5066489))

(assert (=> d!1327920 d!1328228))

(declare-fun d!1328236 () Bool)

(declare-fun res!1816425 () Bool)

(declare-fun e!2741749 () Bool)

(assert (=> d!1328236 (=> res!1816425 e!2741749)))

(assert (=> d!1328236 (= res!1816425 (or ((_ is Nil!49295) (toList!3250 lm!1707)) ((_ is Nil!49295) (t!356353 (toList!3250 lm!1707)))))))

(assert (=> d!1328236 (= (isStrictlySorted!180 (toList!3250 lm!1707)) e!2741749)))

(declare-fun b!4403223 () Bool)

(declare-fun e!2741750 () Bool)

(assert (=> b!4403223 (= e!2741749 e!2741750)))

(declare-fun res!1816426 () Bool)

(assert (=> b!4403223 (=> (not res!1816426) (not e!2741750))))

(assert (=> b!4403223 (= res!1816426 (bvslt (_1!27746 (h!54924 (toList!3250 lm!1707))) (_1!27746 (h!54924 (t!356353 (toList!3250 lm!1707))))))))

(declare-fun b!4403224 () Bool)

(assert (=> b!4403224 (= e!2741750 (isStrictlySorted!180 (t!356353 (toList!3250 lm!1707))))))

(assert (= (and d!1328236 (not res!1816425)) b!4403223))

(assert (= (and b!4403223 res!1816426) b!4403224))

(declare-fun m!5067623 () Bool)

(assert (=> b!4403224 m!5067623))

(assert (=> d!1327920 d!1328236))

(declare-fun d!1328244 () Bool)

(declare-fun e!2741751 () Bool)

(assert (=> d!1328244 e!2741751))

(declare-fun res!1816427 () Bool)

(assert (=> d!1328244 (=> res!1816427 e!2741751)))

(declare-fun lt!1607698 () Bool)

(assert (=> d!1328244 (= res!1816427 (not lt!1607698))))

(declare-fun lt!1607700 () Bool)

(assert (=> d!1328244 (= lt!1607698 lt!1607700)))

(declare-fun lt!1607697 () Unit!79009)

(declare-fun e!2741752 () Unit!79009)

(assert (=> d!1328244 (= lt!1607697 e!2741752)))

(declare-fun c!749730 () Bool)

(assert (=> d!1328244 (= c!749730 lt!1607700)))

(assert (=> d!1328244 (= lt!1607700 (containsKey!950 (toList!3250 lt!1607221) (_1!27746 lt!1607073)))))

(assert (=> d!1328244 (= (contains!11692 lt!1607221 (_1!27746 lt!1607073)) lt!1607698)))

(declare-fun b!4403225 () Bool)

(declare-fun lt!1607699 () Unit!79009)

(assert (=> b!4403225 (= e!2741752 lt!1607699)))

(assert (=> b!4403225 (= lt!1607699 (lemmaContainsKeyImpliesGetValueByKeyDefined!516 (toList!3250 lt!1607221) (_1!27746 lt!1607073)))))

(assert (=> b!4403225 (isDefined!7913 (getValueByKey!606 (toList!3250 lt!1607221) (_1!27746 lt!1607073)))))

(declare-fun b!4403226 () Bool)

(declare-fun Unit!79089 () Unit!79009)

(assert (=> b!4403226 (= e!2741752 Unit!79089)))

(declare-fun b!4403227 () Bool)

(assert (=> b!4403227 (= e!2741751 (isDefined!7913 (getValueByKey!606 (toList!3250 lt!1607221) (_1!27746 lt!1607073))))))

(assert (= (and d!1328244 c!749730) b!4403225))

(assert (= (and d!1328244 (not c!749730)) b!4403226))

(assert (= (and d!1328244 (not res!1816427)) b!4403227))

(declare-fun m!5067625 () Bool)

(assert (=> d!1328244 m!5067625))

(declare-fun m!5067627 () Bool)

(assert (=> b!4403225 m!5067627))

(assert (=> b!4403225 m!5066657))

(assert (=> b!4403225 m!5066657))

(declare-fun m!5067629 () Bool)

(assert (=> b!4403225 m!5067629))

(assert (=> b!4403227 m!5066657))

(assert (=> b!4403227 m!5066657))

(assert (=> b!4403227 m!5067629))

(assert (=> d!1327972 d!1328244))

(declare-fun b!4403231 () Bool)

(declare-fun e!2741754 () Option!10620)

(assert (=> b!4403231 (= e!2741754 None!10619)))

(declare-fun d!1328246 () Bool)

(declare-fun c!749731 () Bool)

(assert (=> d!1328246 (= c!749731 (and ((_ is Cons!49295) lt!1607220) (= (_1!27746 (h!54924 lt!1607220)) (_1!27746 lt!1607073))))))

(declare-fun e!2741753 () Option!10620)

(assert (=> d!1328246 (= (getValueByKey!606 lt!1607220 (_1!27746 lt!1607073)) e!2741753)))

(declare-fun b!4403230 () Bool)

(assert (=> b!4403230 (= e!2741754 (getValueByKey!606 (t!356353 lt!1607220) (_1!27746 lt!1607073)))))

(declare-fun b!4403228 () Bool)

(assert (=> b!4403228 (= e!2741753 (Some!10619 (_2!27746 (h!54924 lt!1607220))))))

(declare-fun b!4403229 () Bool)

(assert (=> b!4403229 (= e!2741753 e!2741754)))

(declare-fun c!749732 () Bool)

(assert (=> b!4403229 (= c!749732 (and ((_ is Cons!49295) lt!1607220) (not (= (_1!27746 (h!54924 lt!1607220)) (_1!27746 lt!1607073)))))))

(assert (= (and d!1328246 c!749731) b!4403228))

(assert (= (and d!1328246 (not c!749731)) b!4403229))

(assert (= (and b!4403229 c!749732) b!4403230))

(assert (= (and b!4403229 (not c!749732)) b!4403231))

(declare-fun m!5067631 () Bool)

(assert (=> b!4403230 m!5067631))

(assert (=> d!1327972 d!1328246))

(declare-fun d!1328248 () Bool)

(assert (=> d!1328248 (= (getValueByKey!606 lt!1607220 (_1!27746 lt!1607073)) (Some!10619 (_2!27746 lt!1607073)))))

(declare-fun lt!1607703 () Unit!79009)

(declare-fun choose!27643 (List!49419 (_ BitVec 64) List!49418) Unit!79009)

(assert (=> d!1328248 (= lt!1607703 (choose!27643 lt!1607220 (_1!27746 lt!1607073) (_2!27746 lt!1607073)))))

(declare-fun e!2741757 () Bool)

(assert (=> d!1328248 e!2741757))

(declare-fun res!1816432 () Bool)

(assert (=> d!1328248 (=> (not res!1816432) (not e!2741757))))

(assert (=> d!1328248 (= res!1816432 (isStrictlySorted!180 lt!1607220))))

(assert (=> d!1328248 (= (lemmaContainsTupThenGetReturnValue!351 lt!1607220 (_1!27746 lt!1607073) (_2!27746 lt!1607073)) lt!1607703)))

(declare-fun b!4403236 () Bool)

(declare-fun res!1816433 () Bool)

(assert (=> b!4403236 (=> (not res!1816433) (not e!2741757))))

(assert (=> b!4403236 (= res!1816433 (containsKey!950 lt!1607220 (_1!27746 lt!1607073)))))

(declare-fun b!4403237 () Bool)

(assert (=> b!4403237 (= e!2741757 (contains!11693 lt!1607220 (tuple2!48905 (_1!27746 lt!1607073) (_2!27746 lt!1607073))))))

(assert (= (and d!1328248 res!1816432) b!4403236))

(assert (= (and b!4403236 res!1816433) b!4403237))

(assert (=> d!1328248 m!5066651))

(declare-fun m!5067633 () Bool)

(assert (=> d!1328248 m!5067633))

(declare-fun m!5067635 () Bool)

(assert (=> d!1328248 m!5067635))

(declare-fun m!5067637 () Bool)

(assert (=> b!4403236 m!5067637))

(declare-fun m!5067639 () Bool)

(assert (=> b!4403237 m!5067639))

(assert (=> d!1327972 d!1328248))

(declare-fun bm!306432 () Bool)

(declare-fun call!306438 () List!49419)

(declare-fun call!306439 () List!49419)

(assert (=> bm!306432 (= call!306438 call!306439)))

(declare-fun b!4403276 () Bool)

(declare-fun e!2741777 () List!49419)

(declare-fun e!2741778 () List!49419)

(assert (=> b!4403276 (= e!2741777 e!2741778)))

(declare-fun c!749747 () Bool)

(assert (=> b!4403276 (= c!749747 (and ((_ is Cons!49295) (toList!3250 lt!1607074)) (= (_1!27746 (h!54924 (toList!3250 lt!1607074))) (_1!27746 lt!1607073))))))

(declare-fun bm!306433 () Bool)

(declare-fun call!306437 () List!49419)

(assert (=> bm!306433 (= call!306437 call!306438)))

(declare-fun d!1328250 () Bool)

(declare-fun e!2741780 () Bool)

(assert (=> d!1328250 e!2741780))

(declare-fun res!1816445 () Bool)

(assert (=> d!1328250 (=> (not res!1816445) (not e!2741780))))

(declare-fun lt!1607720 () List!49419)

(assert (=> d!1328250 (= res!1816445 (isStrictlySorted!180 lt!1607720))))

(assert (=> d!1328250 (= lt!1607720 e!2741777)))

(declare-fun c!749750 () Bool)

(assert (=> d!1328250 (= c!749750 (and ((_ is Cons!49295) (toList!3250 lt!1607074)) (bvslt (_1!27746 (h!54924 (toList!3250 lt!1607074))) (_1!27746 lt!1607073))))))

(assert (=> d!1328250 (isStrictlySorted!180 (toList!3250 lt!1607074))))

(assert (=> d!1328250 (= (insertStrictlySorted!208 (toList!3250 lt!1607074) (_1!27746 lt!1607073) (_2!27746 lt!1607073)) lt!1607720)))

(declare-fun b!4403277 () Bool)

(declare-fun e!2741779 () List!49419)

(assert (=> b!4403277 (= e!2741779 (insertStrictlySorted!208 (t!356353 (toList!3250 lt!1607074)) (_1!27746 lt!1607073) (_2!27746 lt!1607073)))))

(declare-fun b!4403278 () Bool)

(declare-fun e!2741776 () List!49419)

(assert (=> b!4403278 (= e!2741776 call!306437)))

(declare-fun b!4403279 () Bool)

(assert (=> b!4403279 (= e!2741777 call!306439)))

(declare-fun b!4403280 () Bool)

(declare-fun res!1816444 () Bool)

(assert (=> b!4403280 (=> (not res!1816444) (not e!2741780))))

(assert (=> b!4403280 (= res!1816444 (containsKey!950 lt!1607720 (_1!27746 lt!1607073)))))

(declare-fun b!4403281 () Bool)

(declare-fun c!749748 () Bool)

(assert (=> b!4403281 (= e!2741779 (ite c!749747 (t!356353 (toList!3250 lt!1607074)) (ite c!749748 (Cons!49295 (h!54924 (toList!3250 lt!1607074)) (t!356353 (toList!3250 lt!1607074))) Nil!49295)))))

(declare-fun b!4403282 () Bool)

(assert (=> b!4403282 (= e!2741776 call!306437)))

(declare-fun b!4403283 () Bool)

(assert (=> b!4403283 (= e!2741780 (contains!11693 lt!1607720 (tuple2!48905 (_1!27746 lt!1607073) (_2!27746 lt!1607073))))))

(declare-fun b!4403284 () Bool)

(assert (=> b!4403284 (= e!2741778 call!306438)))

(declare-fun bm!306434 () Bool)

(declare-fun $colon$colon!758 (List!49419 tuple2!48904) List!49419)

(assert (=> bm!306434 (= call!306439 ($colon$colon!758 e!2741779 (ite c!749750 (h!54924 (toList!3250 lt!1607074)) (tuple2!48905 (_1!27746 lt!1607073) (_2!27746 lt!1607073)))))))

(declare-fun c!749749 () Bool)

(assert (=> bm!306434 (= c!749749 c!749750)))

(declare-fun b!4403285 () Bool)

(assert (=> b!4403285 (= c!749748 (and ((_ is Cons!49295) (toList!3250 lt!1607074)) (bvsgt (_1!27746 (h!54924 (toList!3250 lt!1607074))) (_1!27746 lt!1607073))))))

(assert (=> b!4403285 (= e!2741778 e!2741776)))

(assert (= (and d!1328250 c!749750) b!4403279))

(assert (= (and d!1328250 (not c!749750)) b!4403276))

(assert (= (and b!4403276 c!749747) b!4403284))

(assert (= (and b!4403276 (not c!749747)) b!4403285))

(assert (= (and b!4403285 c!749748) b!4403282))

(assert (= (and b!4403285 (not c!749748)) b!4403278))

(assert (= (or b!4403282 b!4403278) bm!306433))

(assert (= (or b!4403284 bm!306433) bm!306432))

(assert (= (or b!4403279 bm!306432) bm!306434))

(assert (= (and bm!306434 c!749749) b!4403277))

(assert (= (and bm!306434 (not c!749749)) b!4403281))

(assert (= (and d!1328250 res!1816445) b!4403280))

(assert (= (and b!4403280 res!1816444) b!4403283))

(declare-fun m!5067641 () Bool)

(assert (=> b!4403280 m!5067641))

(declare-fun m!5067643 () Bool)

(assert (=> b!4403277 m!5067643))

(declare-fun m!5067645 () Bool)

(assert (=> b!4403283 m!5067645))

(declare-fun m!5067647 () Bool)

(assert (=> bm!306434 m!5067647))

(declare-fun m!5067649 () Bool)

(assert (=> d!1328250 m!5067649))

(declare-fun m!5067651 () Bool)

(assert (=> d!1328250 m!5067651))

(assert (=> d!1327972 d!1328250))

(declare-fun bs!729423 () Bool)

(declare-fun b!4403289 () Bool)

(assert (= bs!729423 (and b!4403289 b!4403165)))

(declare-fun lambda!149384 () Int)

(assert (=> bs!729423 (= (= (extractMap!692 (t!356353 (toList!3250 lm!1707))) lt!1607665) (= lambda!149384 lambda!149372))))

(declare-fun bs!729424 () Bool)

(assert (= bs!729424 (and b!4403289 d!1328192)))

(assert (=> bs!729424 (= (= (extractMap!692 (t!356353 (toList!3250 lm!1707))) lt!1607672) (= lambda!149384 lambda!149373))))

(declare-fun bs!729425 () Bool)

(assert (= bs!729425 (and b!4403289 b!4402719)))

(assert (=> bs!729425 (= (= (extractMap!692 (t!356353 (toList!3250 lm!1707))) lt!1607393) (= lambda!149384 lambda!149308))))

(declare-fun bs!729426 () Bool)

(assert (= bs!729426 (and b!4403289 b!4402722)))

(assert (=> bs!729426 (= (= (extractMap!692 (t!356353 (toList!3250 lm!1707))) lt!1607082) (= lambda!149384 lambda!149306))))

(assert (=> bs!729423 (= (= (extractMap!692 (t!356353 (toList!3250 lm!1707))) (extractMap!692 (t!356353 (toList!3250 (+!881 lt!1607074 lt!1607073))))) (= lambda!149384 lambda!149370))))

(declare-fun bs!729427 () Bool)

(assert (= bs!729427 (and b!4403289 d!1327986)))

(assert (=> bs!729427 (= (= (extractMap!692 (t!356353 (toList!3250 lm!1707))) lt!1607400) (= lambda!149384 lambda!149309))))

(declare-fun bs!729428 () Bool)

(assert (= bs!729428 (and b!4403289 b!4403168)))

(assert (=> bs!729428 (= (= (extractMap!692 (t!356353 (toList!3250 lm!1707))) (extractMap!692 (t!356353 (toList!3250 (+!881 lt!1607074 lt!1607073))))) (= lambda!149384 lambda!149369))))

(declare-fun bs!729429 () Bool)

(assert (= bs!729429 (and b!4403289 d!1328022)))

(assert (=> bs!729429 (not (= lambda!149384 lambda!149320))))

(assert (=> bs!729425 (= (= (extractMap!692 (t!356353 (toList!3250 lm!1707))) lt!1607082) (= lambda!149384 lambda!149307))))

(assert (=> b!4403289 true))

(declare-fun bs!729430 () Bool)

(declare-fun b!4403286 () Bool)

(assert (= bs!729430 (and b!4403286 b!4403165)))

(declare-fun lambda!149385 () Int)

(assert (=> bs!729430 (= (= (extractMap!692 (t!356353 (toList!3250 lm!1707))) lt!1607665) (= lambda!149385 lambda!149372))))

(declare-fun bs!729431 () Bool)

(assert (= bs!729431 (and b!4403286 d!1328192)))

(assert (=> bs!729431 (= (= (extractMap!692 (t!356353 (toList!3250 lm!1707))) lt!1607672) (= lambda!149385 lambda!149373))))

(declare-fun bs!729432 () Bool)

(assert (= bs!729432 (and b!4403286 b!4402719)))

(assert (=> bs!729432 (= (= (extractMap!692 (t!356353 (toList!3250 lm!1707))) lt!1607393) (= lambda!149385 lambda!149308))))

(declare-fun bs!729433 () Bool)

(assert (= bs!729433 (and b!4403286 b!4402722)))

(assert (=> bs!729433 (= (= (extractMap!692 (t!356353 (toList!3250 lm!1707))) lt!1607082) (= lambda!149385 lambda!149306))))

(declare-fun bs!729434 () Bool)

(assert (= bs!729434 (and b!4403286 d!1327986)))

(assert (=> bs!729434 (= (= (extractMap!692 (t!356353 (toList!3250 lm!1707))) lt!1607400) (= lambda!149385 lambda!149309))))

(declare-fun bs!729435 () Bool)

(assert (= bs!729435 (and b!4403286 b!4403168)))

(assert (=> bs!729435 (= (= (extractMap!692 (t!356353 (toList!3250 lm!1707))) (extractMap!692 (t!356353 (toList!3250 (+!881 lt!1607074 lt!1607073))))) (= lambda!149385 lambda!149369))))

(declare-fun bs!729436 () Bool)

(assert (= bs!729436 (and b!4403286 d!1328022)))

(assert (=> bs!729436 (not (= lambda!149385 lambda!149320))))

(assert (=> bs!729432 (= (= (extractMap!692 (t!356353 (toList!3250 lm!1707))) lt!1607082) (= lambda!149385 lambda!149307))))

(assert (=> bs!729430 (= (= (extractMap!692 (t!356353 (toList!3250 lm!1707))) (extractMap!692 (t!356353 (toList!3250 (+!881 lt!1607074 lt!1607073))))) (= lambda!149385 lambda!149370))))

(declare-fun bs!729437 () Bool)

(assert (= bs!729437 (and b!4403286 b!4403289)))

(assert (=> bs!729437 (= lambda!149385 lambda!149384)))

(assert (=> b!4403286 true))

(declare-fun lt!1607723 () ListMap!2493)

(declare-fun lambda!149386 () Int)

(assert (=> bs!729430 (= (= lt!1607723 lt!1607665) (= lambda!149386 lambda!149372))))

(assert (=> bs!729431 (= (= lt!1607723 lt!1607672) (= lambda!149386 lambda!149373))))

(assert (=> bs!729432 (= (= lt!1607723 lt!1607393) (= lambda!149386 lambda!149308))))

(assert (=> bs!729433 (= (= lt!1607723 lt!1607082) (= lambda!149386 lambda!149306))))

(assert (=> bs!729434 (= (= lt!1607723 lt!1607400) (= lambda!149386 lambda!149309))))

(assert (=> bs!729435 (= (= lt!1607723 (extractMap!692 (t!356353 (toList!3250 (+!881 lt!1607074 lt!1607073))))) (= lambda!149386 lambda!149369))))

(assert (=> b!4403286 (= (= lt!1607723 (extractMap!692 (t!356353 (toList!3250 lm!1707)))) (= lambda!149386 lambda!149385))))

(assert (=> bs!729436 (not (= lambda!149386 lambda!149320))))

(assert (=> bs!729432 (= (= lt!1607723 lt!1607082) (= lambda!149386 lambda!149307))))

(assert (=> bs!729430 (= (= lt!1607723 (extractMap!692 (t!356353 (toList!3250 (+!881 lt!1607074 lt!1607073))))) (= lambda!149386 lambda!149370))))

(assert (=> bs!729437 (= (= lt!1607723 (extractMap!692 (t!356353 (toList!3250 lm!1707)))) (= lambda!149386 lambda!149384))))

(assert (=> b!4403286 true))

(declare-fun bs!729451 () Bool)

(declare-fun d!1328252 () Bool)

(assert (= bs!729451 (and d!1328252 b!4403165)))

(declare-fun lt!1607730 () ListMap!2493)

(declare-fun lambda!149390 () Int)

(assert (=> bs!729451 (= (= lt!1607730 lt!1607665) (= lambda!149390 lambda!149372))))

(declare-fun bs!729453 () Bool)

(assert (= bs!729453 (and d!1328252 d!1328192)))

(assert (=> bs!729453 (= (= lt!1607730 lt!1607672) (= lambda!149390 lambda!149373))))

(declare-fun bs!729455 () Bool)

(assert (= bs!729455 (and d!1328252 b!4402719)))

(assert (=> bs!729455 (= (= lt!1607730 lt!1607393) (= lambda!149390 lambda!149308))))

(declare-fun bs!729456 () Bool)

(assert (= bs!729456 (and d!1328252 b!4402722)))

(assert (=> bs!729456 (= (= lt!1607730 lt!1607082) (= lambda!149390 lambda!149306))))

(declare-fun bs!729457 () Bool)

(assert (= bs!729457 (and d!1328252 d!1327986)))

(assert (=> bs!729457 (= (= lt!1607730 lt!1607400) (= lambda!149390 lambda!149309))))

(declare-fun bs!729458 () Bool)

(assert (= bs!729458 (and d!1328252 b!4403168)))

(assert (=> bs!729458 (= (= lt!1607730 (extractMap!692 (t!356353 (toList!3250 (+!881 lt!1607074 lt!1607073))))) (= lambda!149390 lambda!149369))))

(declare-fun bs!729459 () Bool)

(assert (= bs!729459 (and d!1328252 b!4403286)))

(assert (=> bs!729459 (= (= lt!1607730 (extractMap!692 (t!356353 (toList!3250 lm!1707)))) (= lambda!149390 lambda!149385))))

(declare-fun bs!729460 () Bool)

(assert (= bs!729460 (and d!1328252 d!1328022)))

(assert (=> bs!729460 (not (= lambda!149390 lambda!149320))))

(assert (=> bs!729455 (= (= lt!1607730 lt!1607082) (= lambda!149390 lambda!149307))))

(assert (=> bs!729459 (= (= lt!1607730 lt!1607723) (= lambda!149390 lambda!149386))))

(assert (=> bs!729451 (= (= lt!1607730 (extractMap!692 (t!356353 (toList!3250 (+!881 lt!1607074 lt!1607073))))) (= lambda!149390 lambda!149370))))

(declare-fun bs!729461 () Bool)

(assert (= bs!729461 (and d!1328252 b!4403289)))

(assert (=> bs!729461 (= (= lt!1607730 (extractMap!692 (t!356353 (toList!3250 lm!1707)))) (= lambda!149390 lambda!149384))))

(assert (=> d!1328252 true))

(declare-fun call!306442 () Bool)

(declare-fun bm!306435 () Bool)

(declare-fun c!749751 () Bool)

(assert (=> bm!306435 (= call!306442 (forall!9380 (toList!3249 (extractMap!692 (t!356353 (toList!3250 lm!1707)))) (ite c!749751 lambda!149384 lambda!149386)))))

(declare-fun bm!306436 () Bool)

(declare-fun call!306440 () Bool)

(assert (=> bm!306436 (= call!306440 (forall!9380 (toList!3249 (extractMap!692 (t!356353 (toList!3250 lm!1707)))) (ite c!749751 lambda!149384 lambda!149386)))))

(declare-fun e!2741781 () Bool)

(assert (=> d!1328252 e!2741781))

(declare-fun res!1816448 () Bool)

(assert (=> d!1328252 (=> (not res!1816448) (not e!2741781))))

(assert (=> d!1328252 (= res!1816448 (forall!9380 (_2!27746 (h!54924 (toList!3250 lm!1707))) lambda!149390))))

(declare-fun e!2741783 () ListMap!2493)

(assert (=> d!1328252 (= lt!1607730 e!2741783)))

(assert (=> d!1328252 (= c!749751 ((_ is Nil!49294) (_2!27746 (h!54924 (toList!3250 lm!1707)))))))

(assert (=> d!1328252 (noDuplicateKeys!633 (_2!27746 (h!54924 (toList!3250 lm!1707))))))

(assert (=> d!1328252 (= (addToMapMapFromBucket!299 (_2!27746 (h!54924 (toList!3250 lm!1707))) (extractMap!692 (t!356353 (toList!3250 lm!1707)))) lt!1607730)))

(assert (=> b!4403286 (= e!2741783 lt!1607723)))

(declare-fun lt!1607734 () ListMap!2493)

(assert (=> b!4403286 (= lt!1607734 (+!882 (extractMap!692 (t!356353 (toList!3250 lm!1707))) (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707))))))))

(assert (=> b!4403286 (= lt!1607723 (addToMapMapFromBucket!299 (t!356352 (_2!27746 (h!54924 (toList!3250 lm!1707)))) (+!882 (extractMap!692 (t!356353 (toList!3250 lm!1707))) (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707)))))))))

(declare-fun lt!1607741 () Unit!79009)

(declare-fun call!306441 () Unit!79009)

(assert (=> b!4403286 (= lt!1607741 call!306441)))

(assert (=> b!4403286 (forall!9380 (toList!3249 (extractMap!692 (t!356353 (toList!3250 lm!1707)))) lambda!149385)))

(declare-fun lt!1607736 () Unit!79009)

(assert (=> b!4403286 (= lt!1607736 lt!1607741)))

(assert (=> b!4403286 (forall!9380 (toList!3249 lt!1607734) lambda!149386)))

(declare-fun lt!1607724 () Unit!79009)

(declare-fun Unit!79100 () Unit!79009)

(assert (=> b!4403286 (= lt!1607724 Unit!79100)))

(assert (=> b!4403286 (forall!9380 (t!356352 (_2!27746 (h!54924 (toList!3250 lm!1707)))) lambda!149386)))

(declare-fun lt!1607726 () Unit!79009)

(declare-fun Unit!79102 () Unit!79009)

(assert (=> b!4403286 (= lt!1607726 Unit!79102)))

(declare-fun lt!1607725 () Unit!79009)

(declare-fun Unit!79103 () Unit!79009)

(assert (=> b!4403286 (= lt!1607725 Unit!79103)))

(declare-fun lt!1607721 () Unit!79009)

(assert (=> b!4403286 (= lt!1607721 (forallContained!2015 (toList!3249 lt!1607734) lambda!149386 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707))))))))

(assert (=> b!4403286 (contains!11691 lt!1607734 (_1!27745 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707))))))))

(declare-fun lt!1607740 () Unit!79009)

(declare-fun Unit!79104 () Unit!79009)

(assert (=> b!4403286 (= lt!1607740 Unit!79104)))

(assert (=> b!4403286 (contains!11691 lt!1607723 (_1!27745 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707))))))))

(declare-fun lt!1607737 () Unit!79009)

(declare-fun Unit!79105 () Unit!79009)

(assert (=> b!4403286 (= lt!1607737 Unit!79105)))

(assert (=> b!4403286 (forall!9380 (_2!27746 (h!54924 (toList!3250 lm!1707))) lambda!149386)))

(declare-fun lt!1607731 () Unit!79009)

(declare-fun Unit!79106 () Unit!79009)

(assert (=> b!4403286 (= lt!1607731 Unit!79106)))

(assert (=> b!4403286 (forall!9380 (toList!3249 lt!1607734) lambda!149386)))

(declare-fun lt!1607728 () Unit!79009)

(declare-fun Unit!79107 () Unit!79009)

(assert (=> b!4403286 (= lt!1607728 Unit!79107)))

(declare-fun lt!1607739 () Unit!79009)

(declare-fun Unit!79108 () Unit!79009)

(assert (=> b!4403286 (= lt!1607739 Unit!79108)))

(declare-fun lt!1607733 () Unit!79009)

(assert (=> b!4403286 (= lt!1607733 (addForallContainsKeyThenBeforeAdding!133 (extractMap!692 (t!356353 (toList!3250 lm!1707))) lt!1607723 (_1!27745 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707))))) (_2!27745 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707)))))))))

(assert (=> b!4403286 call!306440))

(declare-fun lt!1607738 () Unit!79009)

(assert (=> b!4403286 (= lt!1607738 lt!1607733)))

(assert (=> b!4403286 (forall!9380 (toList!3249 (extractMap!692 (t!356353 (toList!3250 lm!1707)))) lambda!149386)))

(declare-fun lt!1607735 () Unit!79009)

(declare-fun Unit!79109 () Unit!79009)

(assert (=> b!4403286 (= lt!1607735 Unit!79109)))

(declare-fun res!1816446 () Bool)

(assert (=> b!4403286 (= res!1816446 (forall!9380 (_2!27746 (h!54924 (toList!3250 lm!1707))) lambda!149386))))

(declare-fun e!2741782 () Bool)

(assert (=> b!4403286 (=> (not res!1816446) (not e!2741782))))

(assert (=> b!4403286 e!2741782))

(declare-fun lt!1607732 () Unit!79009)

(declare-fun Unit!79110 () Unit!79009)

(assert (=> b!4403286 (= lt!1607732 Unit!79110)))

(declare-fun b!4403287 () Bool)

(assert (=> b!4403287 (= e!2741781 (invariantList!754 (toList!3249 lt!1607730)))))

(declare-fun b!4403288 () Bool)

(assert (=> b!4403288 (= e!2741782 call!306442)))

(declare-fun bm!306437 () Bool)

(assert (=> bm!306437 (= call!306441 (lemmaContainsAllItsOwnKeys!133 (extractMap!692 (t!356353 (toList!3250 lm!1707)))))))

(assert (=> b!4403289 (= e!2741783 (extractMap!692 (t!356353 (toList!3250 lm!1707))))))

(declare-fun lt!1607729 () Unit!79009)

(assert (=> b!4403289 (= lt!1607729 call!306441)))

(assert (=> b!4403289 call!306440))

(declare-fun lt!1607727 () Unit!79009)

(assert (=> b!4403289 (= lt!1607727 lt!1607729)))

(assert (=> b!4403289 call!306442))

(declare-fun lt!1607722 () Unit!79009)

(declare-fun Unit!79111 () Unit!79009)

(assert (=> b!4403289 (= lt!1607722 Unit!79111)))

(declare-fun b!4403290 () Bool)

(declare-fun res!1816447 () Bool)

(assert (=> b!4403290 (=> (not res!1816447) (not e!2741781))))

(assert (=> b!4403290 (= res!1816447 (forall!9380 (toList!3249 (extractMap!692 (t!356353 (toList!3250 lm!1707)))) lambda!149390))))

(assert (= (and d!1328252 c!749751) b!4403289))

(assert (= (and d!1328252 (not c!749751)) b!4403286))

(assert (= (and b!4403286 res!1816446) b!4403288))

(assert (= (or b!4403289 b!4403286) bm!306437))

(assert (= (or b!4403289 b!4403286) bm!306436))

(assert (= (or b!4403289 b!4403288) bm!306435))

(assert (= (and d!1328252 res!1816448) b!4403290))

(assert (= (and b!4403290 res!1816447) b!4403287))

(declare-fun m!5067679 () Bool)

(assert (=> bm!306435 m!5067679))

(declare-fun m!5067681 () Bool)

(assert (=> b!4403290 m!5067681))

(declare-fun m!5067683 () Bool)

(assert (=> b!4403286 m!5067683))

(declare-fun m!5067685 () Bool)

(assert (=> b!4403286 m!5067685))

(declare-fun m!5067687 () Bool)

(assert (=> b!4403286 m!5067687))

(declare-fun m!5067689 () Bool)

(assert (=> b!4403286 m!5067689))

(assert (=> b!4403286 m!5066397))

(declare-fun m!5067691 () Bool)

(assert (=> b!4403286 m!5067691))

(declare-fun m!5067693 () Bool)

(assert (=> b!4403286 m!5067693))

(declare-fun m!5067695 () Bool)

(assert (=> b!4403286 m!5067695))

(declare-fun m!5067697 () Bool)

(assert (=> b!4403286 m!5067697))

(assert (=> b!4403286 m!5067687))

(declare-fun m!5067699 () Bool)

(assert (=> b!4403286 m!5067699))

(assert (=> b!4403286 m!5067695))

(declare-fun m!5067701 () Bool)

(assert (=> b!4403286 m!5067701))

(declare-fun m!5067703 () Bool)

(assert (=> b!4403286 m!5067703))

(assert (=> b!4403286 m!5066397))

(assert (=> b!4403286 m!5067701))

(declare-fun m!5067707 () Bool)

(assert (=> d!1328252 m!5067707))

(assert (=> d!1328252 m!5066699))

(declare-fun m!5067711 () Bool)

(assert (=> b!4403287 m!5067711))

(assert (=> bm!306436 m!5067679))

(assert (=> bm!306437 m!5066397))

(declare-fun m!5067715 () Bool)

(assert (=> bm!306437 m!5067715))

(assert (=> b!4402765 d!1328252))

(assert (=> b!4402765 d!1328008))

(declare-fun bs!729463 () Bool)

(declare-fun d!1328258 () Bool)

(assert (= bs!729463 (and d!1328258 b!4403165)))

(declare-fun lambda!149394 () Int)

(assert (=> bs!729463 (= (= lt!1607082 lt!1607665) (= lambda!149394 lambda!149372))))

(declare-fun bs!729464 () Bool)

(assert (= bs!729464 (and d!1328258 d!1328192)))

(assert (=> bs!729464 (= (= lt!1607082 lt!1607672) (= lambda!149394 lambda!149373))))

(declare-fun bs!729465 () Bool)

(assert (= bs!729465 (and d!1328258 b!4402719)))

(assert (=> bs!729465 (= (= lt!1607082 lt!1607393) (= lambda!149394 lambda!149308))))

(declare-fun bs!729466 () Bool)

(assert (= bs!729466 (and d!1328258 b!4402722)))

(assert (=> bs!729466 (= lambda!149394 lambda!149306)))

(declare-fun bs!729467 () Bool)

(assert (= bs!729467 (and d!1328258 d!1327986)))

(assert (=> bs!729467 (= (= lt!1607082 lt!1607400) (= lambda!149394 lambda!149309))))

(declare-fun bs!729468 () Bool)

(assert (= bs!729468 (and d!1328258 b!4403168)))

(assert (=> bs!729468 (= (= lt!1607082 (extractMap!692 (t!356353 (toList!3250 (+!881 lt!1607074 lt!1607073))))) (= lambda!149394 lambda!149369))))

(declare-fun bs!729469 () Bool)

(assert (= bs!729469 (and d!1328258 b!4403286)))

(assert (=> bs!729469 (= (= lt!1607082 (extractMap!692 (t!356353 (toList!3250 lm!1707)))) (= lambda!149394 lambda!149385))))

(declare-fun bs!729470 () Bool)

(assert (= bs!729470 (and d!1328258 d!1328022)))

(assert (=> bs!729470 (not (= lambda!149394 lambda!149320))))

(assert (=> bs!729465 (= lambda!149394 lambda!149307)))

(assert (=> bs!729469 (= (= lt!1607082 lt!1607723) (= lambda!149394 lambda!149386))))

(declare-fun bs!729471 () Bool)

(assert (= bs!729471 (and d!1328258 d!1328252)))

(assert (=> bs!729471 (= (= lt!1607082 lt!1607730) (= lambda!149394 lambda!149390))))

(assert (=> bs!729463 (= (= lt!1607082 (extractMap!692 (t!356353 (toList!3250 (+!881 lt!1607074 lt!1607073))))) (= lambda!149394 lambda!149370))))

(declare-fun bs!729472 () Bool)

(assert (= bs!729472 (and d!1328258 b!4403289)))

(assert (=> bs!729472 (= (= lt!1607082 (extractMap!692 (t!356353 (toList!3250 lm!1707)))) (= lambda!149394 lambda!149384))))

(assert (=> d!1328258 true))

(assert (=> d!1328258 (forall!9380 (toList!3249 lt!1607082) lambda!149394)))

(declare-fun lt!1607758 () Unit!79009)

(declare-fun choose!27644 (ListMap!2493) Unit!79009)

(assert (=> d!1328258 (= lt!1607758 (choose!27644 lt!1607082))))

(assert (=> d!1328258 (= (lemmaContainsAllItsOwnKeys!133 lt!1607082) lt!1607758)))

(declare-fun bs!729473 () Bool)

(assert (= bs!729473 d!1328258))

(declare-fun m!5067727 () Bool)

(assert (=> bs!729473 m!5067727))

(declare-fun m!5067729 () Bool)

(assert (=> bs!729473 m!5067729))

(assert (=> bm!306387 d!1328258))

(declare-fun bs!729474 () Bool)

(declare-fun b!4403316 () Bool)

(assert (= bs!729474 (and b!4403316 b!4402841)))

(declare-fun lambda!149395 () Int)

(assert (=> bs!729474 (= (= (toList!3249 lt!1607072) (t!356352 (toList!3249 lt!1607082))) (= lambda!149395 lambda!149330))))

(declare-fun bs!729475 () Bool)

(assert (= bs!729475 (and b!4403316 b!4402840)))

(assert (=> bs!729475 (= (= (toList!3249 lt!1607072) (toList!3249 lt!1607082)) (= lambda!149395 lambda!149332))))

(declare-fun bs!729476 () Bool)

(assert (= bs!729476 (and b!4403316 b!4402934)))

(assert (=> bs!729476 (= (= (toList!3249 lt!1607072) (toList!3249 lt!1607086)) (= lambda!149395 lambda!149341))))

(declare-fun bs!729477 () Bool)

(assert (= bs!729477 (and b!4403316 b!4402989)))

(assert (=> bs!729477 (= (= (toList!3249 lt!1607072) (toList!3249 lt!1607082)) (= lambda!149395 lambda!149349))))

(declare-fun bs!729478 () Bool)

(assert (= bs!729478 (and b!4403316 b!4403002)))

(assert (=> bs!729478 (= (= (toList!3249 lt!1607072) (toList!3249 lt!1607086)) (= lambda!149395 lambda!149351))))

(declare-fun bs!729479 () Bool)

(assert (= bs!729479 (and b!4403316 b!4402935)))

(assert (=> bs!729479 (= (= (toList!3249 lt!1607072) (t!356352 (toList!3249 lt!1607086))) (= lambda!149395 lambda!149335))))

(declare-fun bs!729480 () Bool)

(assert (= bs!729480 (and b!4403316 b!4402838)))

(assert (=> bs!729480 (= (= (toList!3249 lt!1607072) (Cons!49294 (h!54923 (toList!3249 lt!1607082)) (t!356352 (toList!3249 lt!1607082)))) (= lambda!149395 lambda!149331))))

(declare-fun bs!729481 () Bool)

(assert (= bs!729481 (and b!4403316 b!4402932)))

(assert (=> bs!729481 (= (= (toList!3249 lt!1607072) (Cons!49294 (h!54923 (toList!3249 lt!1607086)) (t!356352 (toList!3249 lt!1607086)))) (= lambda!149395 lambda!149338))))

(assert (=> b!4403316 true))

(declare-fun bs!729482 () Bool)

(declare-fun b!4403317 () Bool)

(assert (= bs!729482 (and b!4403317 b!4402844)))

(declare-fun lambda!149396 () Int)

(assert (=> bs!729482 (= lambda!149396 lambda!149333)))

(declare-fun bs!729483 () Bool)

(assert (= bs!729483 (and b!4403317 b!4402938)))

(assert (=> bs!729483 (= lambda!149396 lambda!149342)))

(declare-fun bs!729484 () Bool)

(assert (= bs!729484 (and b!4403317 b!4402990)))

(assert (=> bs!729484 (= lambda!149396 lambda!149350)))

(declare-fun bs!729485 () Bool)

(assert (= bs!729485 (and b!4403317 b!4403003)))

(assert (=> bs!729485 (= lambda!149396 lambda!149352)))

(declare-fun d!1328266 () Bool)

(declare-fun e!2741795 () Bool)

(assert (=> d!1328266 e!2741795))

(declare-fun res!1816460 () Bool)

(assert (=> d!1328266 (=> (not res!1816460) (not e!2741795))))

(declare-fun lt!1607759 () List!49421)

(assert (=> d!1328266 (= res!1816460 (noDuplicate!641 lt!1607759))))

(assert (=> d!1328266 (= lt!1607759 (getKeysList!201 (toList!3249 lt!1607072)))))

(assert (=> d!1328266 (= (keys!16757 lt!1607072) lt!1607759)))

(declare-fun b!4403315 () Bool)

(declare-fun res!1816461 () Bool)

(assert (=> b!4403315 (=> (not res!1816461) (not e!2741795))))

(assert (=> b!4403315 (= res!1816461 (= (length!138 lt!1607759) (length!139 (toList!3249 lt!1607072))))))

(declare-fun res!1816459 () Bool)

(assert (=> b!4403316 (=> (not res!1816459) (not e!2741795))))

(assert (=> b!4403316 (= res!1816459 (forall!9381 lt!1607759 lambda!149395))))

(assert (=> b!4403317 (= e!2741795 (= (content!7881 lt!1607759) (content!7881 (map!10754 (toList!3249 lt!1607072) lambda!149396))))))

(assert (= (and d!1328266 res!1816460) b!4403315))

(assert (= (and b!4403315 res!1816461) b!4403316))

(assert (= (and b!4403316 res!1816459) b!4403317))

(declare-fun m!5067731 () Bool)

(assert (=> d!1328266 m!5067731))

(assert (=> d!1328266 m!5066647))

(declare-fun m!5067733 () Bool)

(assert (=> b!4403315 m!5067733))

(declare-fun m!5067735 () Bool)

(assert (=> b!4403315 m!5067735))

(declare-fun m!5067737 () Bool)

(assert (=> b!4403316 m!5067737))

(declare-fun m!5067739 () Bool)

(assert (=> b!4403317 m!5067739))

(declare-fun m!5067741 () Bool)

(assert (=> b!4403317 m!5067741))

(assert (=> b!4403317 m!5067741))

(declare-fun m!5067743 () Bool)

(assert (=> b!4403317 m!5067743))

(assert (=> b!4402635 d!1328266))

(assert (=> b!4402529 d!1328070))

(declare-fun bs!729486 () Bool)

(declare-fun b!4403323 () Bool)

(assert (= bs!729486 (and b!4403323 b!4402841)))

(declare-fun lambda!149397 () Int)

(assert (=> bs!729486 (= (= (t!356352 (toList!3249 lt!1607072)) (t!356352 (toList!3249 lt!1607082))) (= lambda!149397 lambda!149330))))

(declare-fun bs!729487 () Bool)

(assert (= bs!729487 (and b!4403323 b!4402840)))

(assert (=> bs!729487 (= (= (t!356352 (toList!3249 lt!1607072)) (toList!3249 lt!1607082)) (= lambda!149397 lambda!149332))))

(declare-fun bs!729488 () Bool)

(assert (= bs!729488 (and b!4403323 b!4403316)))

(assert (=> bs!729488 (= (= (t!356352 (toList!3249 lt!1607072)) (toList!3249 lt!1607072)) (= lambda!149397 lambda!149395))))

(declare-fun bs!729489 () Bool)

(assert (= bs!729489 (and b!4403323 b!4402934)))

(assert (=> bs!729489 (= (= (t!356352 (toList!3249 lt!1607072)) (toList!3249 lt!1607086)) (= lambda!149397 lambda!149341))))

(declare-fun bs!729490 () Bool)

(assert (= bs!729490 (and b!4403323 b!4402989)))

(assert (=> bs!729490 (= (= (t!356352 (toList!3249 lt!1607072)) (toList!3249 lt!1607082)) (= lambda!149397 lambda!149349))))

(declare-fun bs!729491 () Bool)

(assert (= bs!729491 (and b!4403323 b!4403002)))

(assert (=> bs!729491 (= (= (t!356352 (toList!3249 lt!1607072)) (toList!3249 lt!1607086)) (= lambda!149397 lambda!149351))))

(declare-fun bs!729492 () Bool)

(assert (= bs!729492 (and b!4403323 b!4402935)))

(assert (=> bs!729492 (= (= (t!356352 (toList!3249 lt!1607072)) (t!356352 (toList!3249 lt!1607086))) (= lambda!149397 lambda!149335))))

(declare-fun bs!729493 () Bool)

(assert (= bs!729493 (and b!4403323 b!4402838)))

(assert (=> bs!729493 (= (= (t!356352 (toList!3249 lt!1607072)) (Cons!49294 (h!54923 (toList!3249 lt!1607082)) (t!356352 (toList!3249 lt!1607082)))) (= lambda!149397 lambda!149331))))

(declare-fun bs!729494 () Bool)

(assert (= bs!729494 (and b!4403323 b!4402932)))

(assert (=> bs!729494 (= (= (t!356352 (toList!3249 lt!1607072)) (Cons!49294 (h!54923 (toList!3249 lt!1607086)) (t!356352 (toList!3249 lt!1607086)))) (= lambda!149397 lambda!149338))))

(assert (=> b!4403323 true))

(declare-fun bs!729495 () Bool)

(declare-fun b!4403320 () Bool)

(assert (= bs!729495 (and b!4403320 b!4402841)))

(declare-fun lambda!149398 () Int)

(assert (=> bs!729495 (= (= (Cons!49294 (h!54923 (toList!3249 lt!1607072)) (t!356352 (toList!3249 lt!1607072))) (t!356352 (toList!3249 lt!1607082))) (= lambda!149398 lambda!149330))))

(declare-fun bs!729496 () Bool)

(assert (= bs!729496 (and b!4403320 b!4403323)))

(assert (=> bs!729496 (= (= (Cons!49294 (h!54923 (toList!3249 lt!1607072)) (t!356352 (toList!3249 lt!1607072))) (t!356352 (toList!3249 lt!1607072))) (= lambda!149398 lambda!149397))))

(declare-fun bs!729497 () Bool)

(assert (= bs!729497 (and b!4403320 b!4402840)))

(assert (=> bs!729497 (= (= (Cons!49294 (h!54923 (toList!3249 lt!1607072)) (t!356352 (toList!3249 lt!1607072))) (toList!3249 lt!1607082)) (= lambda!149398 lambda!149332))))

(declare-fun bs!729498 () Bool)

(assert (= bs!729498 (and b!4403320 b!4403316)))

(assert (=> bs!729498 (= (= (Cons!49294 (h!54923 (toList!3249 lt!1607072)) (t!356352 (toList!3249 lt!1607072))) (toList!3249 lt!1607072)) (= lambda!149398 lambda!149395))))

(declare-fun bs!729499 () Bool)

(assert (= bs!729499 (and b!4403320 b!4402934)))

(assert (=> bs!729499 (= (= (Cons!49294 (h!54923 (toList!3249 lt!1607072)) (t!356352 (toList!3249 lt!1607072))) (toList!3249 lt!1607086)) (= lambda!149398 lambda!149341))))

(declare-fun bs!729500 () Bool)

(assert (= bs!729500 (and b!4403320 b!4402989)))

(assert (=> bs!729500 (= (= (Cons!49294 (h!54923 (toList!3249 lt!1607072)) (t!356352 (toList!3249 lt!1607072))) (toList!3249 lt!1607082)) (= lambda!149398 lambda!149349))))

(declare-fun bs!729501 () Bool)

(assert (= bs!729501 (and b!4403320 b!4403002)))

(assert (=> bs!729501 (= (= (Cons!49294 (h!54923 (toList!3249 lt!1607072)) (t!356352 (toList!3249 lt!1607072))) (toList!3249 lt!1607086)) (= lambda!149398 lambda!149351))))

(declare-fun bs!729502 () Bool)

(assert (= bs!729502 (and b!4403320 b!4402935)))

(assert (=> bs!729502 (= (= (Cons!49294 (h!54923 (toList!3249 lt!1607072)) (t!356352 (toList!3249 lt!1607072))) (t!356352 (toList!3249 lt!1607086))) (= lambda!149398 lambda!149335))))

(declare-fun bs!729503 () Bool)

(assert (= bs!729503 (and b!4403320 b!4402838)))

(assert (=> bs!729503 (= (= (Cons!49294 (h!54923 (toList!3249 lt!1607072)) (t!356352 (toList!3249 lt!1607072))) (Cons!49294 (h!54923 (toList!3249 lt!1607082)) (t!356352 (toList!3249 lt!1607082)))) (= lambda!149398 lambda!149331))))

(declare-fun bs!729504 () Bool)

(assert (= bs!729504 (and b!4403320 b!4402932)))

(assert (=> bs!729504 (= (= (Cons!49294 (h!54923 (toList!3249 lt!1607072)) (t!356352 (toList!3249 lt!1607072))) (Cons!49294 (h!54923 (toList!3249 lt!1607086)) (t!356352 (toList!3249 lt!1607086)))) (= lambda!149398 lambda!149338))))

(assert (=> b!4403320 true))

(declare-fun bs!729505 () Bool)

(declare-fun b!4403322 () Bool)

(assert (= bs!729505 (and b!4403322 b!4402841)))

(declare-fun lambda!149399 () Int)

(assert (=> bs!729505 (= (= (toList!3249 lt!1607072) (t!356352 (toList!3249 lt!1607082))) (= lambda!149399 lambda!149330))))

(declare-fun bs!729506 () Bool)

(assert (= bs!729506 (and b!4403322 b!4403323)))

(assert (=> bs!729506 (= (= (toList!3249 lt!1607072) (t!356352 (toList!3249 lt!1607072))) (= lambda!149399 lambda!149397))))

(declare-fun bs!729507 () Bool)

(assert (= bs!729507 (and b!4403322 b!4403316)))

(assert (=> bs!729507 (= lambda!149399 lambda!149395)))

(declare-fun bs!729508 () Bool)

(assert (= bs!729508 (and b!4403322 b!4402934)))

(assert (=> bs!729508 (= (= (toList!3249 lt!1607072) (toList!3249 lt!1607086)) (= lambda!149399 lambda!149341))))

(declare-fun bs!729509 () Bool)

(assert (= bs!729509 (and b!4403322 b!4402989)))

(assert (=> bs!729509 (= (= (toList!3249 lt!1607072) (toList!3249 lt!1607082)) (= lambda!149399 lambda!149349))))

(declare-fun bs!729510 () Bool)

(assert (= bs!729510 (and b!4403322 b!4403002)))

(assert (=> bs!729510 (= (= (toList!3249 lt!1607072) (toList!3249 lt!1607086)) (= lambda!149399 lambda!149351))))

(declare-fun bs!729511 () Bool)

(assert (= bs!729511 (and b!4403322 b!4402935)))

(assert (=> bs!729511 (= (= (toList!3249 lt!1607072) (t!356352 (toList!3249 lt!1607086))) (= lambda!149399 lambda!149335))))

(declare-fun bs!729512 () Bool)

(assert (= bs!729512 (and b!4403322 b!4403320)))

(assert (=> bs!729512 (= (= (toList!3249 lt!1607072) (Cons!49294 (h!54923 (toList!3249 lt!1607072)) (t!356352 (toList!3249 lt!1607072)))) (= lambda!149399 lambda!149398))))

(declare-fun bs!729513 () Bool)

(assert (= bs!729513 (and b!4403322 b!4402840)))

(assert (=> bs!729513 (= (= (toList!3249 lt!1607072) (toList!3249 lt!1607082)) (= lambda!149399 lambda!149332))))

(declare-fun bs!729514 () Bool)

(assert (= bs!729514 (and b!4403322 b!4402838)))

(assert (=> bs!729514 (= (= (toList!3249 lt!1607072) (Cons!49294 (h!54923 (toList!3249 lt!1607082)) (t!356352 (toList!3249 lt!1607082)))) (= lambda!149399 lambda!149331))))

(declare-fun bs!729515 () Bool)

(assert (= bs!729515 (and b!4403322 b!4402932)))

(assert (=> bs!729515 (= (= (toList!3249 lt!1607072) (Cons!49294 (h!54923 (toList!3249 lt!1607086)) (t!356352 (toList!3249 lt!1607086)))) (= lambda!149399 lambda!149338))))

(assert (=> b!4403322 true))

(declare-fun bs!729516 () Bool)

(declare-fun b!4403326 () Bool)

(assert (= bs!729516 (and b!4403326 b!4403317)))

(declare-fun lambda!149400 () Int)

(assert (=> bs!729516 (= lambda!149400 lambda!149396)))

(declare-fun bs!729517 () Bool)

(assert (= bs!729517 (and b!4403326 b!4402844)))

(assert (=> bs!729517 (= lambda!149400 lambda!149333)))

(declare-fun bs!729518 () Bool)

(assert (= bs!729518 (and b!4403326 b!4403003)))

(assert (=> bs!729518 (= lambda!149400 lambda!149352)))

(declare-fun bs!729519 () Bool)

(assert (= bs!729519 (and b!4403326 b!4402938)))

(assert (=> bs!729519 (= lambda!149400 lambda!149342)))

(declare-fun bs!729520 () Bool)

(assert (= bs!729520 (and b!4403326 b!4402990)))

(assert (=> bs!729520 (= lambda!149400 lambda!149350)))

(declare-fun b!4403318 () Bool)

(declare-fun e!2741797 () Unit!79009)

(declare-fun Unit!79112 () Unit!79009)

(assert (=> b!4403318 (= e!2741797 Unit!79112)))

(declare-fun b!4403319 () Bool)

(assert (=> b!4403319 false))

(declare-fun Unit!79113 () Unit!79009)

(assert (=> b!4403319 (= e!2741797 Unit!79113)))

(declare-fun d!1328268 () Bool)

(declare-fun e!2741796 () Bool)

(assert (=> d!1328268 e!2741796))

(declare-fun res!1816463 () Bool)

(assert (=> d!1328268 (=> (not res!1816463) (not e!2741796))))

(declare-fun lt!1607764 () List!49421)

(assert (=> d!1328268 (= res!1816463 (noDuplicate!641 lt!1607764))))

(declare-fun e!2741799 () List!49421)

(assert (=> d!1328268 (= lt!1607764 e!2741799)))

(declare-fun c!749759 () Bool)

(assert (=> d!1328268 (= c!749759 ((_ is Cons!49294) (toList!3249 lt!1607072)))))

(assert (=> d!1328268 (invariantList!754 (toList!3249 lt!1607072))))

(assert (=> d!1328268 (= (getKeysList!201 (toList!3249 lt!1607072)) lt!1607764)))

(assert (=> b!4403320 (= e!2741799 (Cons!49297 (_1!27745 (h!54923 (toList!3249 lt!1607072))) (getKeysList!201 (t!356352 (toList!3249 lt!1607072)))))))

(declare-fun c!749760 () Bool)

(assert (=> b!4403320 (= c!749760 (containsKey!951 (t!356352 (toList!3249 lt!1607072)) (_1!27745 (h!54923 (toList!3249 lt!1607072)))))))

(declare-fun lt!1607761 () Unit!79009)

(assert (=> b!4403320 (= lt!1607761 e!2741797)))

(declare-fun c!749758 () Bool)

(assert (=> b!4403320 (= c!749758 (contains!11695 (getKeysList!201 (t!356352 (toList!3249 lt!1607072))) (_1!27745 (h!54923 (toList!3249 lt!1607072)))))))

(declare-fun lt!1607763 () Unit!79009)

(declare-fun e!2741798 () Unit!79009)

(assert (=> b!4403320 (= lt!1607763 e!2741798)))

(declare-fun lt!1607762 () List!49421)

(assert (=> b!4403320 (= lt!1607762 (getKeysList!201 (t!356352 (toList!3249 lt!1607072))))))

(declare-fun lt!1607760 () Unit!79009)

(assert (=> b!4403320 (= lt!1607760 (lemmaForallContainsAddHeadPreserves!63 (t!356352 (toList!3249 lt!1607072)) lt!1607762 (h!54923 (toList!3249 lt!1607072))))))

(assert (=> b!4403320 (forall!9381 lt!1607762 lambda!149398)))

(declare-fun lt!1607766 () Unit!79009)

(assert (=> b!4403320 (= lt!1607766 lt!1607760)))

(declare-fun b!4403321 () Bool)

(assert (=> b!4403321 (= e!2741799 Nil!49297)))

(declare-fun res!1816462 () Bool)

(assert (=> b!4403322 (=> (not res!1816462) (not e!2741796))))

(assert (=> b!4403322 (= res!1816462 (forall!9381 lt!1607764 lambda!149399))))

(assert (=> b!4403323 false))

(declare-fun lt!1607765 () Unit!79009)

(assert (=> b!4403323 (= lt!1607765 (forallContained!2016 (getKeysList!201 (t!356352 (toList!3249 lt!1607072))) lambda!149397 (_1!27745 (h!54923 (toList!3249 lt!1607072)))))))

(declare-fun Unit!79114 () Unit!79009)

(assert (=> b!4403323 (= e!2741798 Unit!79114)))

(declare-fun b!4403324 () Bool)

(declare-fun res!1816464 () Bool)

(assert (=> b!4403324 (=> (not res!1816464) (not e!2741796))))

(assert (=> b!4403324 (= res!1816464 (= (length!138 lt!1607764) (length!139 (toList!3249 lt!1607072))))))

(declare-fun b!4403325 () Bool)

(declare-fun Unit!79115 () Unit!79009)

(assert (=> b!4403325 (= e!2741798 Unit!79115)))

(assert (=> b!4403326 (= e!2741796 (= (content!7881 lt!1607764) (content!7881 (map!10754 (toList!3249 lt!1607072) lambda!149400))))))

(assert (= (and d!1328268 c!749759) b!4403320))

(assert (= (and d!1328268 (not c!749759)) b!4403321))

(assert (= (and b!4403320 c!749760) b!4403319))

(assert (= (and b!4403320 (not c!749760)) b!4403318))

(assert (= (and b!4403320 c!749758) b!4403323))

(assert (= (and b!4403320 (not c!749758)) b!4403325))

(assert (= (and d!1328268 res!1816463) b!4403324))

(assert (= (and b!4403324 res!1816464) b!4403322))

(assert (= (and b!4403322 res!1816462) b!4403326))

(declare-fun m!5067745 () Bool)

(assert (=> b!4403324 m!5067745))

(assert (=> b!4403324 m!5067735))

(declare-fun m!5067747 () Bool)

(assert (=> d!1328268 m!5067747))

(assert (=> d!1328268 m!5067009))

(declare-fun m!5067749 () Bool)

(assert (=> b!4403322 m!5067749))

(declare-fun m!5067751 () Bool)

(assert (=> b!4403323 m!5067751))

(assert (=> b!4403323 m!5067751))

(declare-fun m!5067753 () Bool)

(assert (=> b!4403323 m!5067753))

(declare-fun m!5067755 () Bool)

(assert (=> b!4403326 m!5067755))

(declare-fun m!5067757 () Bool)

(assert (=> b!4403326 m!5067757))

(assert (=> b!4403326 m!5067757))

(declare-fun m!5067759 () Bool)

(assert (=> b!4403326 m!5067759))

(declare-fun m!5067761 () Bool)

(assert (=> b!4403320 m!5067761))

(declare-fun m!5067763 () Bool)

(assert (=> b!4403320 m!5067763))

(assert (=> b!4403320 m!5067751))

(declare-fun m!5067765 () Bool)

(assert (=> b!4403320 m!5067765))

(assert (=> b!4403320 m!5067751))

(declare-fun m!5067767 () Bool)

(assert (=> b!4403320 m!5067767))

(assert (=> b!4402633 d!1328268))

(declare-fun bs!729521 () Bool)

(declare-fun b!4403350 () Bool)

(assert (= bs!729521 (and b!4403350 b!4403165)))

(declare-fun lambda!149401 () Int)

(assert (=> bs!729521 (= (= (extractMap!692 (t!356353 (t!356353 (toList!3250 lm!1707)))) lt!1607665) (= lambda!149401 lambda!149372))))

(declare-fun bs!729522 () Bool)

(assert (= bs!729522 (and b!4403350 d!1328192)))

(assert (=> bs!729522 (= (= (extractMap!692 (t!356353 (t!356353 (toList!3250 lm!1707)))) lt!1607672) (= lambda!149401 lambda!149373))))

(declare-fun bs!729523 () Bool)

(assert (= bs!729523 (and b!4403350 b!4402719)))

(assert (=> bs!729523 (= (= (extractMap!692 (t!356353 (t!356353 (toList!3250 lm!1707)))) lt!1607393) (= lambda!149401 lambda!149308))))

(declare-fun bs!729524 () Bool)

(assert (= bs!729524 (and b!4403350 b!4402722)))

(assert (=> bs!729524 (= (= (extractMap!692 (t!356353 (t!356353 (toList!3250 lm!1707)))) lt!1607082) (= lambda!149401 lambda!149306))))

(declare-fun bs!729525 () Bool)

(assert (= bs!729525 (and b!4403350 d!1327986)))

(assert (=> bs!729525 (= (= (extractMap!692 (t!356353 (t!356353 (toList!3250 lm!1707)))) lt!1607400) (= lambda!149401 lambda!149309))))

(declare-fun bs!729526 () Bool)

(assert (= bs!729526 (and b!4403350 b!4403168)))

(assert (=> bs!729526 (= (= (extractMap!692 (t!356353 (t!356353 (toList!3250 lm!1707)))) (extractMap!692 (t!356353 (toList!3250 (+!881 lt!1607074 lt!1607073))))) (= lambda!149401 lambda!149369))))

(declare-fun bs!729527 () Bool)

(assert (= bs!729527 (and b!4403350 b!4403286)))

(assert (=> bs!729527 (= (= (extractMap!692 (t!356353 (t!356353 (toList!3250 lm!1707)))) (extractMap!692 (t!356353 (toList!3250 lm!1707)))) (= lambda!149401 lambda!149385))))

(assert (=> bs!729523 (= (= (extractMap!692 (t!356353 (t!356353 (toList!3250 lm!1707)))) lt!1607082) (= lambda!149401 lambda!149307))))

(assert (=> bs!729527 (= (= (extractMap!692 (t!356353 (t!356353 (toList!3250 lm!1707)))) lt!1607723) (= lambda!149401 lambda!149386))))

(declare-fun bs!729528 () Bool)

(assert (= bs!729528 (and b!4403350 d!1328252)))

(assert (=> bs!729528 (= (= (extractMap!692 (t!356353 (t!356353 (toList!3250 lm!1707)))) lt!1607730) (= lambda!149401 lambda!149390))))

(assert (=> bs!729521 (= (= (extractMap!692 (t!356353 (t!356353 (toList!3250 lm!1707)))) (extractMap!692 (t!356353 (toList!3250 (+!881 lt!1607074 lt!1607073))))) (= lambda!149401 lambda!149370))))

(declare-fun bs!729529 () Bool)

(assert (= bs!729529 (and b!4403350 b!4403289)))

(assert (=> bs!729529 (= (= (extractMap!692 (t!356353 (t!356353 (toList!3250 lm!1707)))) (extractMap!692 (t!356353 (toList!3250 lm!1707)))) (= lambda!149401 lambda!149384))))

(declare-fun bs!729530 () Bool)

(assert (= bs!729530 (and b!4403350 d!1328258)))

(assert (=> bs!729530 (= (= (extractMap!692 (t!356353 (t!356353 (toList!3250 lm!1707)))) lt!1607082) (= lambda!149401 lambda!149394))))

(declare-fun bs!729531 () Bool)

(assert (= bs!729531 (and b!4403350 d!1328022)))

(assert (=> bs!729531 (not (= lambda!149401 lambda!149320))))

(assert (=> b!4403350 true))

(declare-fun bs!729532 () Bool)

(declare-fun b!4403347 () Bool)

(assert (= bs!729532 (and b!4403347 b!4403165)))

(declare-fun lambda!149402 () Int)

(assert (=> bs!729532 (= (= (extractMap!692 (t!356353 (t!356353 (toList!3250 lm!1707)))) lt!1607665) (= lambda!149402 lambda!149372))))

(declare-fun bs!729533 () Bool)

(assert (= bs!729533 (and b!4403347 d!1328192)))

(assert (=> bs!729533 (= (= (extractMap!692 (t!356353 (t!356353 (toList!3250 lm!1707)))) lt!1607672) (= lambda!149402 lambda!149373))))

(declare-fun bs!729534 () Bool)

(assert (= bs!729534 (and b!4403347 b!4403350)))

(assert (=> bs!729534 (= lambda!149402 lambda!149401)))

(declare-fun bs!729535 () Bool)

(assert (= bs!729535 (and b!4403347 b!4402719)))

(assert (=> bs!729535 (= (= (extractMap!692 (t!356353 (t!356353 (toList!3250 lm!1707)))) lt!1607393) (= lambda!149402 lambda!149308))))

(declare-fun bs!729536 () Bool)

(assert (= bs!729536 (and b!4403347 b!4402722)))

(assert (=> bs!729536 (= (= (extractMap!692 (t!356353 (t!356353 (toList!3250 lm!1707)))) lt!1607082) (= lambda!149402 lambda!149306))))

(declare-fun bs!729537 () Bool)

(assert (= bs!729537 (and b!4403347 d!1327986)))

(assert (=> bs!729537 (= (= (extractMap!692 (t!356353 (t!356353 (toList!3250 lm!1707)))) lt!1607400) (= lambda!149402 lambda!149309))))

(declare-fun bs!729538 () Bool)

(assert (= bs!729538 (and b!4403347 b!4403168)))

(assert (=> bs!729538 (= (= (extractMap!692 (t!356353 (t!356353 (toList!3250 lm!1707)))) (extractMap!692 (t!356353 (toList!3250 (+!881 lt!1607074 lt!1607073))))) (= lambda!149402 lambda!149369))))

(declare-fun bs!729539 () Bool)

(assert (= bs!729539 (and b!4403347 b!4403286)))

(assert (=> bs!729539 (= (= (extractMap!692 (t!356353 (t!356353 (toList!3250 lm!1707)))) (extractMap!692 (t!356353 (toList!3250 lm!1707)))) (= lambda!149402 lambda!149385))))

(assert (=> bs!729535 (= (= (extractMap!692 (t!356353 (t!356353 (toList!3250 lm!1707)))) lt!1607082) (= lambda!149402 lambda!149307))))

(assert (=> bs!729539 (= (= (extractMap!692 (t!356353 (t!356353 (toList!3250 lm!1707)))) lt!1607723) (= lambda!149402 lambda!149386))))

(declare-fun bs!729540 () Bool)

(assert (= bs!729540 (and b!4403347 d!1328252)))

(assert (=> bs!729540 (= (= (extractMap!692 (t!356353 (t!356353 (toList!3250 lm!1707)))) lt!1607730) (= lambda!149402 lambda!149390))))

(assert (=> bs!729532 (= (= (extractMap!692 (t!356353 (t!356353 (toList!3250 lm!1707)))) (extractMap!692 (t!356353 (toList!3250 (+!881 lt!1607074 lt!1607073))))) (= lambda!149402 lambda!149370))))

(declare-fun bs!729541 () Bool)

(assert (= bs!729541 (and b!4403347 b!4403289)))

(assert (=> bs!729541 (= (= (extractMap!692 (t!356353 (t!356353 (toList!3250 lm!1707)))) (extractMap!692 (t!356353 (toList!3250 lm!1707)))) (= lambda!149402 lambda!149384))))

(declare-fun bs!729542 () Bool)

(assert (= bs!729542 (and b!4403347 d!1328258)))

(assert (=> bs!729542 (= (= (extractMap!692 (t!356353 (t!356353 (toList!3250 lm!1707)))) lt!1607082) (= lambda!149402 lambda!149394))))

(declare-fun bs!729543 () Bool)

(assert (= bs!729543 (and b!4403347 d!1328022)))

(assert (=> bs!729543 (not (= lambda!149402 lambda!149320))))

(assert (=> b!4403347 true))

(declare-fun lt!1607771 () ListMap!2493)

(declare-fun lambda!149403 () Int)

(assert (=> bs!729532 (= (= lt!1607771 lt!1607665) (= lambda!149403 lambda!149372))))

(assert (=> bs!729533 (= (= lt!1607771 lt!1607672) (= lambda!149403 lambda!149373))))

(assert (=> bs!729534 (= (= lt!1607771 (extractMap!692 (t!356353 (t!356353 (toList!3250 lm!1707))))) (= lambda!149403 lambda!149401))))

(assert (=> bs!729535 (= (= lt!1607771 lt!1607393) (= lambda!149403 lambda!149308))))

(assert (=> bs!729536 (= (= lt!1607771 lt!1607082) (= lambda!149403 lambda!149306))))

(assert (=> bs!729537 (= (= lt!1607771 lt!1607400) (= lambda!149403 lambda!149309))))

(assert (=> bs!729538 (= (= lt!1607771 (extractMap!692 (t!356353 (toList!3250 (+!881 lt!1607074 lt!1607073))))) (= lambda!149403 lambda!149369))))

(assert (=> bs!729539 (= (= lt!1607771 (extractMap!692 (t!356353 (toList!3250 lm!1707)))) (= lambda!149403 lambda!149385))))

(assert (=> b!4403347 (= (= lt!1607771 (extractMap!692 (t!356353 (t!356353 (toList!3250 lm!1707))))) (= lambda!149403 lambda!149402))))

(assert (=> bs!729535 (= (= lt!1607771 lt!1607082) (= lambda!149403 lambda!149307))))

(assert (=> bs!729539 (= (= lt!1607771 lt!1607723) (= lambda!149403 lambda!149386))))

(assert (=> bs!729540 (= (= lt!1607771 lt!1607730) (= lambda!149403 lambda!149390))))

(assert (=> bs!729532 (= (= lt!1607771 (extractMap!692 (t!356353 (toList!3250 (+!881 lt!1607074 lt!1607073))))) (= lambda!149403 lambda!149370))))

(assert (=> bs!729541 (= (= lt!1607771 (extractMap!692 (t!356353 (toList!3250 lm!1707)))) (= lambda!149403 lambda!149384))))

(assert (=> bs!729542 (= (= lt!1607771 lt!1607082) (= lambda!149403 lambda!149394))))

(assert (=> bs!729543 (not (= lambda!149403 lambda!149320))))

(assert (=> b!4403347 true))

(declare-fun bs!729545 () Bool)

(declare-fun d!1328270 () Bool)

(assert (= bs!729545 (and d!1328270 b!4403165)))

(declare-fun lt!1607778 () ListMap!2493)

(declare-fun lambda!149404 () Int)

(assert (=> bs!729545 (= (= lt!1607778 lt!1607665) (= lambda!149404 lambda!149372))))

(declare-fun bs!729546 () Bool)

(assert (= bs!729546 (and d!1328270 d!1328192)))

(assert (=> bs!729546 (= (= lt!1607778 lt!1607672) (= lambda!149404 lambda!149373))))

(declare-fun bs!729547 () Bool)

(assert (= bs!729547 (and d!1328270 b!4402719)))

(assert (=> bs!729547 (= (= lt!1607778 lt!1607393) (= lambda!149404 lambda!149308))))

(declare-fun bs!729548 () Bool)

(assert (= bs!729548 (and d!1328270 b!4402722)))

(assert (=> bs!729548 (= (= lt!1607778 lt!1607082) (= lambda!149404 lambda!149306))))

(declare-fun bs!729549 () Bool)

(assert (= bs!729549 (and d!1328270 d!1327986)))

(assert (=> bs!729549 (= (= lt!1607778 lt!1607400) (= lambda!149404 lambda!149309))))

(declare-fun bs!729550 () Bool)

(assert (= bs!729550 (and d!1328270 b!4403168)))

(assert (=> bs!729550 (= (= lt!1607778 (extractMap!692 (t!356353 (toList!3250 (+!881 lt!1607074 lt!1607073))))) (= lambda!149404 lambda!149369))))

(declare-fun bs!729551 () Bool)

(assert (= bs!729551 (and d!1328270 b!4403286)))

(assert (=> bs!729551 (= (= lt!1607778 (extractMap!692 (t!356353 (toList!3250 lm!1707)))) (= lambda!149404 lambda!149385))))

(declare-fun bs!729552 () Bool)

(assert (= bs!729552 (and d!1328270 b!4403347)))

(assert (=> bs!729552 (= (= lt!1607778 (extractMap!692 (t!356353 (t!356353 (toList!3250 lm!1707))))) (= lambda!149404 lambda!149402))))

(assert (=> bs!729547 (= (= lt!1607778 lt!1607082) (= lambda!149404 lambda!149307))))

(assert (=> bs!729551 (= (= lt!1607778 lt!1607723) (= lambda!149404 lambda!149386))))

(declare-fun bs!729553 () Bool)

(assert (= bs!729553 (and d!1328270 d!1328252)))

(assert (=> bs!729553 (= (= lt!1607778 lt!1607730) (= lambda!149404 lambda!149390))))

(declare-fun bs!729554 () Bool)

(assert (= bs!729554 (and d!1328270 b!4403350)))

(assert (=> bs!729554 (= (= lt!1607778 (extractMap!692 (t!356353 (t!356353 (toList!3250 lm!1707))))) (= lambda!149404 lambda!149401))))

(assert (=> bs!729552 (= (= lt!1607778 lt!1607771) (= lambda!149404 lambda!149403))))

(assert (=> bs!729545 (= (= lt!1607778 (extractMap!692 (t!356353 (toList!3250 (+!881 lt!1607074 lt!1607073))))) (= lambda!149404 lambda!149370))))

(declare-fun bs!729555 () Bool)

(assert (= bs!729555 (and d!1328270 b!4403289)))

(assert (=> bs!729555 (= (= lt!1607778 (extractMap!692 (t!356353 (toList!3250 lm!1707)))) (= lambda!149404 lambda!149384))))

(declare-fun bs!729556 () Bool)

(assert (= bs!729556 (and d!1328270 d!1328258)))

(assert (=> bs!729556 (= (= lt!1607778 lt!1607082) (= lambda!149404 lambda!149394))))

(declare-fun bs!729557 () Bool)

(assert (= bs!729557 (and d!1328270 d!1328022)))

(assert (=> bs!729557 (not (= lambda!149404 lambda!149320))))

(assert (=> d!1328270 true))

(declare-fun call!306451 () Bool)

(declare-fun c!749769 () Bool)

(declare-fun bm!306444 () Bool)

(assert (=> bm!306444 (= call!306451 (forall!9380 (toList!3249 (extractMap!692 (t!356353 (t!356353 (toList!3250 lm!1707))))) (ite c!749769 lambda!149401 lambda!149403)))))

(declare-fun call!306449 () Bool)

(declare-fun bm!306445 () Bool)

(assert (=> bm!306445 (= call!306449 (forall!9380 (toList!3249 (extractMap!692 (t!356353 (t!356353 (toList!3250 lm!1707))))) (ite c!749769 lambda!149401 lambda!149403)))))

(declare-fun e!2741810 () Bool)

(assert (=> d!1328270 e!2741810))

(declare-fun res!1816471 () Bool)

(assert (=> d!1328270 (=> (not res!1816471) (not e!2741810))))

(assert (=> d!1328270 (= res!1816471 (forall!9380 (_2!27746 (h!54924 (t!356353 (toList!3250 lm!1707)))) lambda!149404))))

(declare-fun e!2741812 () ListMap!2493)

(assert (=> d!1328270 (= lt!1607778 e!2741812)))

(assert (=> d!1328270 (= c!749769 ((_ is Nil!49294) (_2!27746 (h!54924 (t!356353 (toList!3250 lm!1707))))))))

(assert (=> d!1328270 (noDuplicateKeys!633 (_2!27746 (h!54924 (t!356353 (toList!3250 lm!1707)))))))

(assert (=> d!1328270 (= (addToMapMapFromBucket!299 (_2!27746 (h!54924 (t!356353 (toList!3250 lm!1707)))) (extractMap!692 (t!356353 (t!356353 (toList!3250 lm!1707))))) lt!1607778)))

(assert (=> b!4403347 (= e!2741812 lt!1607771)))

(declare-fun lt!1607782 () ListMap!2493)

(assert (=> b!4403347 (= lt!1607782 (+!882 (extractMap!692 (t!356353 (t!356353 (toList!3250 lm!1707)))) (h!54923 (_2!27746 (h!54924 (t!356353 (toList!3250 lm!1707)))))))))

(assert (=> b!4403347 (= lt!1607771 (addToMapMapFromBucket!299 (t!356352 (_2!27746 (h!54924 (t!356353 (toList!3250 lm!1707))))) (+!882 (extractMap!692 (t!356353 (t!356353 (toList!3250 lm!1707)))) (h!54923 (_2!27746 (h!54924 (t!356353 (toList!3250 lm!1707))))))))))

(declare-fun lt!1607789 () Unit!79009)

(declare-fun call!306450 () Unit!79009)

(assert (=> b!4403347 (= lt!1607789 call!306450)))

(assert (=> b!4403347 (forall!9380 (toList!3249 (extractMap!692 (t!356353 (t!356353 (toList!3250 lm!1707))))) lambda!149402)))

(declare-fun lt!1607784 () Unit!79009)

(assert (=> b!4403347 (= lt!1607784 lt!1607789)))

(assert (=> b!4403347 (forall!9380 (toList!3249 lt!1607782) lambda!149403)))

(declare-fun lt!1607772 () Unit!79009)

(declare-fun Unit!79121 () Unit!79009)

(assert (=> b!4403347 (= lt!1607772 Unit!79121)))

(assert (=> b!4403347 (forall!9380 (t!356352 (_2!27746 (h!54924 (t!356353 (toList!3250 lm!1707))))) lambda!149403)))

(declare-fun lt!1607774 () Unit!79009)

(declare-fun Unit!79122 () Unit!79009)

(assert (=> b!4403347 (= lt!1607774 Unit!79122)))

(declare-fun lt!1607773 () Unit!79009)

(declare-fun Unit!79123 () Unit!79009)

(assert (=> b!4403347 (= lt!1607773 Unit!79123)))

(declare-fun lt!1607769 () Unit!79009)

(assert (=> b!4403347 (= lt!1607769 (forallContained!2015 (toList!3249 lt!1607782) lambda!149403 (h!54923 (_2!27746 (h!54924 (t!356353 (toList!3250 lm!1707)))))))))

(assert (=> b!4403347 (contains!11691 lt!1607782 (_1!27745 (h!54923 (_2!27746 (h!54924 (t!356353 (toList!3250 lm!1707)))))))))

(declare-fun lt!1607788 () Unit!79009)

(declare-fun Unit!79124 () Unit!79009)

(assert (=> b!4403347 (= lt!1607788 Unit!79124)))

(assert (=> b!4403347 (contains!11691 lt!1607771 (_1!27745 (h!54923 (_2!27746 (h!54924 (t!356353 (toList!3250 lm!1707)))))))))

(declare-fun lt!1607785 () Unit!79009)

(declare-fun Unit!79125 () Unit!79009)

(assert (=> b!4403347 (= lt!1607785 Unit!79125)))

(assert (=> b!4403347 (forall!9380 (_2!27746 (h!54924 (t!356353 (toList!3250 lm!1707)))) lambda!149403)))

(declare-fun lt!1607779 () Unit!79009)

(declare-fun Unit!79126 () Unit!79009)

(assert (=> b!4403347 (= lt!1607779 Unit!79126)))

(assert (=> b!4403347 (forall!9380 (toList!3249 lt!1607782) lambda!149403)))

(declare-fun lt!1607776 () Unit!79009)

(declare-fun Unit!79127 () Unit!79009)

(assert (=> b!4403347 (= lt!1607776 Unit!79127)))

(declare-fun lt!1607787 () Unit!79009)

(declare-fun Unit!79128 () Unit!79009)

(assert (=> b!4403347 (= lt!1607787 Unit!79128)))

(declare-fun lt!1607781 () Unit!79009)

(assert (=> b!4403347 (= lt!1607781 (addForallContainsKeyThenBeforeAdding!133 (extractMap!692 (t!356353 (t!356353 (toList!3250 lm!1707)))) lt!1607771 (_1!27745 (h!54923 (_2!27746 (h!54924 (t!356353 (toList!3250 lm!1707)))))) (_2!27745 (h!54923 (_2!27746 (h!54924 (t!356353 (toList!3250 lm!1707))))))))))

(assert (=> b!4403347 call!306449))

(declare-fun lt!1607786 () Unit!79009)

(assert (=> b!4403347 (= lt!1607786 lt!1607781)))

(assert (=> b!4403347 (forall!9380 (toList!3249 (extractMap!692 (t!356353 (t!356353 (toList!3250 lm!1707))))) lambda!149403)))

(declare-fun lt!1607783 () Unit!79009)

(declare-fun Unit!79129 () Unit!79009)

(assert (=> b!4403347 (= lt!1607783 Unit!79129)))

(declare-fun res!1816469 () Bool)

(assert (=> b!4403347 (= res!1816469 (forall!9380 (_2!27746 (h!54924 (t!356353 (toList!3250 lm!1707)))) lambda!149403))))

(declare-fun e!2741811 () Bool)

(assert (=> b!4403347 (=> (not res!1816469) (not e!2741811))))

(assert (=> b!4403347 e!2741811))

(declare-fun lt!1607780 () Unit!79009)

(declare-fun Unit!79130 () Unit!79009)

(assert (=> b!4403347 (= lt!1607780 Unit!79130)))

(declare-fun b!4403348 () Bool)

(assert (=> b!4403348 (= e!2741810 (invariantList!754 (toList!3249 lt!1607778)))))

(declare-fun b!4403349 () Bool)

(assert (=> b!4403349 (= e!2741811 call!306451)))

(declare-fun bm!306446 () Bool)

(assert (=> bm!306446 (= call!306450 (lemmaContainsAllItsOwnKeys!133 (extractMap!692 (t!356353 (t!356353 (toList!3250 lm!1707))))))))

(assert (=> b!4403350 (= e!2741812 (extractMap!692 (t!356353 (t!356353 (toList!3250 lm!1707)))))))

(declare-fun lt!1607777 () Unit!79009)

(assert (=> b!4403350 (= lt!1607777 call!306450)))

(assert (=> b!4403350 call!306449))

(declare-fun lt!1607775 () Unit!79009)

(assert (=> b!4403350 (= lt!1607775 lt!1607777)))

(assert (=> b!4403350 call!306451))

(declare-fun lt!1607770 () Unit!79009)

(declare-fun Unit!79131 () Unit!79009)

(assert (=> b!4403350 (= lt!1607770 Unit!79131)))

(declare-fun b!4403351 () Bool)

(declare-fun res!1816470 () Bool)

(assert (=> b!4403351 (=> (not res!1816470) (not e!2741810))))

(assert (=> b!4403351 (= res!1816470 (forall!9380 (toList!3249 (extractMap!692 (t!356353 (t!356353 (toList!3250 lm!1707))))) lambda!149404))))

(assert (= (and d!1328270 c!749769) b!4403350))

(assert (= (and d!1328270 (not c!749769)) b!4403347))

(assert (= (and b!4403347 res!1816469) b!4403349))

(assert (= (or b!4403350 b!4403347) bm!306446))

(assert (= (or b!4403350 b!4403347) bm!306445))

(assert (= (or b!4403350 b!4403349) bm!306444))

(assert (= (and d!1328270 res!1816471) b!4403351))

(assert (= (and b!4403351 res!1816470) b!4403348))

(declare-fun m!5067785 () Bool)

(assert (=> bm!306444 m!5067785))

(declare-fun m!5067787 () Bool)

(assert (=> b!4403351 m!5067787))

(declare-fun m!5067789 () Bool)

(assert (=> b!4403347 m!5067789))

(declare-fun m!5067791 () Bool)

(assert (=> b!4403347 m!5067791))

(declare-fun m!5067795 () Bool)

(assert (=> b!4403347 m!5067795))

(declare-fun m!5067799 () Bool)

(assert (=> b!4403347 m!5067799))

(assert (=> b!4403347 m!5066859))

(declare-fun m!5067801 () Bool)

(assert (=> b!4403347 m!5067801))

(declare-fun m!5067803 () Bool)

(assert (=> b!4403347 m!5067803))

(declare-fun m!5067805 () Bool)

(assert (=> b!4403347 m!5067805))

(declare-fun m!5067807 () Bool)

(assert (=> b!4403347 m!5067807))

(assert (=> b!4403347 m!5067795))

(declare-fun m!5067809 () Bool)

(assert (=> b!4403347 m!5067809))

(assert (=> b!4403347 m!5067805))

(declare-fun m!5067811 () Bool)

(assert (=> b!4403347 m!5067811))

(declare-fun m!5067813 () Bool)

(assert (=> b!4403347 m!5067813))

(assert (=> b!4403347 m!5066859))

(assert (=> b!4403347 m!5067811))

(declare-fun m!5067817 () Bool)

(assert (=> d!1328270 m!5067817))

(declare-fun m!5067819 () Bool)

(assert (=> d!1328270 m!5067819))

(declare-fun m!5067821 () Bool)

(assert (=> b!4403348 m!5067821))

(assert (=> bm!306445 m!5067785))

(assert (=> bm!306446 m!5066859))

(declare-fun m!5067825 () Bool)

(assert (=> bm!306446 m!5067825))

(assert (=> b!4402732 d!1328270))

(declare-fun bs!729558 () Bool)

(declare-fun d!1328284 () Bool)

(assert (= bs!729558 (and d!1328284 d!1327978)))

(declare-fun lambda!149405 () Int)

(assert (=> bs!729558 (= lambda!149405 lambda!149239)))

(declare-fun bs!729560 () Bool)

(assert (= bs!729560 (and d!1328284 d!1328200)))

(assert (=> bs!729560 (= lambda!149405 lambda!149375)))

(declare-fun bs!729561 () Bool)

(assert (= bs!729561 (and d!1328284 d!1328020)))

(assert (=> bs!729561 (not (= lambda!149405 lambda!149317))))

(declare-fun bs!729562 () Bool)

(assert (= bs!729562 (and d!1328284 d!1328032)))

(assert (=> bs!729562 (= lambda!149405 lambda!149321)))

(declare-fun bs!729563 () Bool)

(assert (= bs!729563 (and d!1328284 d!1328006)))

(assert (=> bs!729563 (= lambda!149405 lambda!149312)))

(declare-fun bs!729564 () Bool)

(assert (= bs!729564 (and d!1328284 d!1328008)))

(assert (=> bs!729564 (= lambda!149405 lambda!149313)))

(declare-fun bs!729565 () Bool)

(assert (= bs!729565 (and d!1328284 d!1328082)))

(assert (=> bs!729565 (= lambda!149405 lambda!149334)))

(declare-fun bs!729566 () Bool)

(assert (= bs!729566 (and d!1328284 start!428144)))

(assert (=> bs!729566 (= lambda!149405 lambda!149221)))

(declare-fun bs!729567 () Bool)

(assert (= bs!729567 (and d!1328284 d!1328010)))

(assert (=> bs!729567 (= lambda!149405 lambda!149314)))

(declare-fun bs!729568 () Bool)

(assert (= bs!729568 (and d!1328284 d!1327982)))

(assert (=> bs!729568 (= lambda!149405 lambda!149242)))

(declare-fun lt!1607793 () ListMap!2493)

(assert (=> d!1328284 (invariantList!754 (toList!3249 lt!1607793))))

(declare-fun e!2741832 () ListMap!2493)

(assert (=> d!1328284 (= lt!1607793 e!2741832)))

(declare-fun c!749774 () Bool)

(assert (=> d!1328284 (= c!749774 ((_ is Cons!49295) (t!356353 (t!356353 (toList!3250 lm!1707)))))))

(assert (=> d!1328284 (forall!9378 (t!356353 (t!356353 (toList!3250 lm!1707))) lambda!149405)))

(assert (=> d!1328284 (= (extractMap!692 (t!356353 (t!356353 (toList!3250 lm!1707)))) lt!1607793)))

(declare-fun b!4403376 () Bool)

(assert (=> b!4403376 (= e!2741832 (addToMapMapFromBucket!299 (_2!27746 (h!54924 (t!356353 (t!356353 (toList!3250 lm!1707))))) (extractMap!692 (t!356353 (t!356353 (t!356353 (toList!3250 lm!1707)))))))))

(declare-fun b!4403377 () Bool)

(assert (=> b!4403377 (= e!2741832 (ListMap!2494 Nil!49294))))

(assert (= (and d!1328284 c!749774) b!4403376))

(assert (= (and d!1328284 (not c!749774)) b!4403377))

(declare-fun m!5067847 () Bool)

(assert (=> d!1328284 m!5067847))

(declare-fun m!5067849 () Bool)

(assert (=> d!1328284 m!5067849))

(declare-fun m!5067853 () Bool)

(assert (=> b!4403376 m!5067853))

(assert (=> b!4403376 m!5067853))

(declare-fun m!5067855 () Bool)

(assert (=> b!4403376 m!5067855))

(assert (=> b!4402732 d!1328284))

(declare-fun d!1328298 () Bool)

(declare-fun res!1816492 () Bool)

(declare-fun e!2741841 () Bool)

(assert (=> d!1328298 (=> res!1816492 e!2741841)))

(assert (=> d!1328298 (= res!1816492 ((_ is Nil!49295) (toList!3250 (+!881 lm!1707 (tuple2!48905 hash!377 newBucket!200)))))))

(assert (=> d!1328298 (= (forall!9378 (toList!3250 (+!881 lm!1707 (tuple2!48905 hash!377 newBucket!200))) lambda!149221) e!2741841)))

(declare-fun b!4403390 () Bool)

(declare-fun e!2741842 () Bool)

(assert (=> b!4403390 (= e!2741841 e!2741842)))

(declare-fun res!1816493 () Bool)

(assert (=> b!4403390 (=> (not res!1816493) (not e!2741842))))

(assert (=> b!4403390 (= res!1816493 (dynLambda!20770 lambda!149221 (h!54924 (toList!3250 (+!881 lm!1707 (tuple2!48905 hash!377 newBucket!200))))))))

(declare-fun b!4403391 () Bool)

(assert (=> b!4403391 (= e!2741842 (forall!9378 (t!356353 (toList!3250 (+!881 lm!1707 (tuple2!48905 hash!377 newBucket!200)))) lambda!149221))))

(assert (= (and d!1328298 (not res!1816492)) b!4403390))

(assert (= (and b!4403390 res!1816493) b!4403391))

(declare-fun b_lambda!140049 () Bool)

(assert (=> (not b_lambda!140049) (not b!4403390)))

(declare-fun m!5067865 () Bool)

(assert (=> b!4403390 m!5067865))

(declare-fun m!5067867 () Bool)

(assert (=> b!4403391 m!5067867))

(assert (=> d!1328028 d!1328298))

(declare-fun d!1328304 () Bool)

(declare-fun e!2741848 () Bool)

(assert (=> d!1328304 e!2741848))

(declare-fun res!1816499 () Bool)

(assert (=> d!1328304 (=> (not res!1816499) (not e!2741848))))

(declare-fun lt!1607819 () ListLongMap!1899)

(assert (=> d!1328304 (= res!1816499 (contains!11692 lt!1607819 (_1!27746 (tuple2!48905 hash!377 newBucket!200))))))

(declare-fun lt!1607818 () List!49419)

(assert (=> d!1328304 (= lt!1607819 (ListLongMap!1900 lt!1607818))))

(declare-fun lt!1607820 () Unit!79009)

(declare-fun lt!1607817 () Unit!79009)

(assert (=> d!1328304 (= lt!1607820 lt!1607817)))

(assert (=> d!1328304 (= (getValueByKey!606 lt!1607818 (_1!27746 (tuple2!48905 hash!377 newBucket!200))) (Some!10619 (_2!27746 (tuple2!48905 hash!377 newBucket!200))))))

(assert (=> d!1328304 (= lt!1607817 (lemmaContainsTupThenGetReturnValue!351 lt!1607818 (_1!27746 (tuple2!48905 hash!377 newBucket!200)) (_2!27746 (tuple2!48905 hash!377 newBucket!200))))))

(assert (=> d!1328304 (= lt!1607818 (insertStrictlySorted!208 (toList!3250 lm!1707) (_1!27746 (tuple2!48905 hash!377 newBucket!200)) (_2!27746 (tuple2!48905 hash!377 newBucket!200))))))

(assert (=> d!1328304 (= (+!881 lm!1707 (tuple2!48905 hash!377 newBucket!200)) lt!1607819)))

(declare-fun b!4403399 () Bool)

(declare-fun res!1816500 () Bool)

(assert (=> b!4403399 (=> (not res!1816500) (not e!2741848))))

(assert (=> b!4403399 (= res!1816500 (= (getValueByKey!606 (toList!3250 lt!1607819) (_1!27746 (tuple2!48905 hash!377 newBucket!200))) (Some!10619 (_2!27746 (tuple2!48905 hash!377 newBucket!200)))))))

(declare-fun b!4403400 () Bool)

(assert (=> b!4403400 (= e!2741848 (contains!11693 (toList!3250 lt!1607819) (tuple2!48905 hash!377 newBucket!200)))))

(assert (= (and d!1328304 res!1816499) b!4403399))

(assert (= (and b!4403399 res!1816500) b!4403400))

(declare-fun m!5067869 () Bool)

(assert (=> d!1328304 m!5067869))

(declare-fun m!5067871 () Bool)

(assert (=> d!1328304 m!5067871))

(declare-fun m!5067873 () Bool)

(assert (=> d!1328304 m!5067873))

(declare-fun m!5067875 () Bool)

(assert (=> d!1328304 m!5067875))

(declare-fun m!5067877 () Bool)

(assert (=> b!4403399 m!5067877))

(declare-fun m!5067879 () Bool)

(assert (=> b!4403400 m!5067879))

(assert (=> d!1328028 d!1328304))

(declare-fun d!1328306 () Bool)

(assert (=> d!1328306 (forall!9378 (toList!3250 (+!881 lm!1707 (tuple2!48905 hash!377 newBucket!200))) lambda!149221)))

(assert (=> d!1328306 true))

(declare-fun _$31!337 () Unit!79009)

(assert (=> d!1328306 (= (choose!27635 lm!1707 lambda!149221 hash!377 newBucket!200) _$31!337)))

(declare-fun bs!729593 () Bool)

(assert (= bs!729593 d!1328306))

(assert (=> bs!729593 m!5066899))

(assert (=> bs!729593 m!5066901))

(assert (=> d!1328028 d!1328306))

(assert (=> d!1328028 d!1328014))

(declare-fun d!1328308 () Bool)

(assert (=> d!1328308 (= (get!16049 (getValueByKey!606 (toList!3250 lm!1707) hash!377)) (v!43739 (getValueByKey!606 (toList!3250 lm!1707) hash!377)))))

(assert (=> d!1327900 d!1328308))

(assert (=> d!1327900 d!1328070))

(declare-fun d!1328310 () Bool)

(declare-fun noDuplicatedKeys!158 (List!49418) Bool)

(assert (=> d!1328310 (= (invariantList!754 (toList!3249 lt!1607415)) (noDuplicatedKeys!158 (toList!3249 lt!1607415)))))

(declare-fun bs!729594 () Bool)

(assert (= bs!729594 d!1328310))

(declare-fun m!5067881 () Bool)

(assert (=> bs!729594 m!5067881))

(assert (=> d!1328008 d!1328310))

(declare-fun d!1328312 () Bool)

(declare-fun res!1816501 () Bool)

(declare-fun e!2741849 () Bool)

(assert (=> d!1328312 (=> res!1816501 e!2741849)))

(assert (=> d!1328312 (= res!1816501 ((_ is Nil!49295) (t!356353 (toList!3250 lm!1707))))))

(assert (=> d!1328312 (= (forall!9378 (t!356353 (toList!3250 lm!1707)) lambda!149313) e!2741849)))

(declare-fun b!4403402 () Bool)

(declare-fun e!2741850 () Bool)

(assert (=> b!4403402 (= e!2741849 e!2741850)))

(declare-fun res!1816502 () Bool)

(assert (=> b!4403402 (=> (not res!1816502) (not e!2741850))))

(assert (=> b!4403402 (= res!1816502 (dynLambda!20770 lambda!149313 (h!54924 (t!356353 (toList!3250 lm!1707)))))))

(declare-fun b!4403403 () Bool)

(assert (=> b!4403403 (= e!2741850 (forall!9378 (t!356353 (t!356353 (toList!3250 lm!1707))) lambda!149313))))

(assert (= (and d!1328312 (not res!1816501)) b!4403402))

(assert (= (and b!4403402 res!1816502) b!4403403))

(declare-fun b_lambda!140051 () Bool)

(assert (=> (not b_lambda!140051) (not b!4403402)))

(declare-fun m!5067883 () Bool)

(assert (=> b!4403402 m!5067883))

(declare-fun m!5067885 () Bool)

(assert (=> b!4403403 m!5067885))

(assert (=> d!1328008 d!1328312))

(assert (=> d!1327978 d!1327942))

(assert (=> d!1327978 d!1327940))

(declare-fun d!1328314 () Bool)

(assert (=> d!1328314 (not (containsKey!947 (apply!11485 lm!1707 (_1!27746 (h!54924 (toList!3250 lm!1707)))) key!3918))))

(assert (=> d!1328314 true))

(declare-fun _$39!337 () Unit!79009)

(assert (=> d!1328314 (= (choose!27632 lm!1707 key!3918 (_1!27746 (h!54924 (toList!3250 lm!1707))) hashF!1247) _$39!337)))

(declare-fun bs!729608 () Bool)

(assert (= bs!729608 d!1328314))

(assert (=> bs!729608 m!5066417))

(assert (=> bs!729608 m!5066417))

(assert (=> bs!729608 m!5066419))

(assert (=> d!1327978 d!1328314))

(declare-fun d!1328316 () Bool)

(declare-fun res!1816503 () Bool)

(declare-fun e!2741851 () Bool)

(assert (=> d!1328316 (=> res!1816503 e!2741851)))

(assert (=> d!1328316 (= res!1816503 ((_ is Nil!49295) (toList!3250 lm!1707)))))

(assert (=> d!1328316 (= (forall!9378 (toList!3250 lm!1707) lambda!149239) e!2741851)))

(declare-fun b!4403404 () Bool)

(declare-fun e!2741852 () Bool)

(assert (=> b!4403404 (= e!2741851 e!2741852)))

(declare-fun res!1816504 () Bool)

(assert (=> b!4403404 (=> (not res!1816504) (not e!2741852))))

(assert (=> b!4403404 (= res!1816504 (dynLambda!20770 lambda!149239 (h!54924 (toList!3250 lm!1707))))))

(declare-fun b!4403405 () Bool)

(assert (=> b!4403405 (= e!2741852 (forall!9378 (t!356353 (toList!3250 lm!1707)) lambda!149239))))

(assert (= (and d!1328316 (not res!1816503)) b!4403404))

(assert (= (and b!4403404 res!1816504) b!4403405))

(declare-fun b_lambda!140053 () Bool)

(assert (=> (not b_lambda!140053) (not b!4403404)))

(declare-fun m!5067887 () Bool)

(assert (=> b!4403404 m!5067887))

(declare-fun m!5067889 () Bool)

(assert (=> b!4403405 m!5067889))

(assert (=> d!1327978 d!1328316))

(declare-fun d!1328318 () Bool)

(declare-fun lt!1607821 () Bool)

(assert (=> d!1328318 (= lt!1607821 (select (content!7881 (keys!16757 lt!1607072)) key!3918))))

(declare-fun e!2741853 () Bool)

(assert (=> d!1328318 (= lt!1607821 e!2741853)))

(declare-fun res!1816505 () Bool)

(assert (=> d!1328318 (=> (not res!1816505) (not e!2741853))))

(assert (=> d!1328318 (= res!1816505 ((_ is Cons!49297) (keys!16757 lt!1607072)))))

(assert (=> d!1328318 (= (contains!11695 (keys!16757 lt!1607072) key!3918) lt!1607821)))

(declare-fun b!4403406 () Bool)

(declare-fun e!2741854 () Bool)

(assert (=> b!4403406 (= e!2741853 e!2741854)))

(declare-fun res!1816506 () Bool)

(assert (=> b!4403406 (=> res!1816506 e!2741854)))

(assert (=> b!4403406 (= res!1816506 (= (h!54928 (keys!16757 lt!1607072)) key!3918))))

(declare-fun b!4403407 () Bool)

(assert (=> b!4403407 (= e!2741854 (contains!11695 (t!356355 (keys!16757 lt!1607072)) key!3918))))

(assert (= (and d!1328318 res!1816505) b!4403406))

(assert (= (and b!4403406 (not res!1816506)) b!4403407))

(assert (=> d!1328318 m!5066629))

(declare-fun m!5067891 () Bool)

(assert (=> d!1328318 m!5067891))

(declare-fun m!5067893 () Bool)

(assert (=> d!1328318 m!5067893))

(declare-fun m!5067895 () Bool)

(assert (=> b!4403407 m!5067895))

(assert (=> b!4402631 d!1328318))

(assert (=> b!4402631 d!1328266))

(declare-fun d!1328320 () Bool)

(assert (=> d!1328320 (= (invariantList!754 (toList!3249 lt!1607400)) (noDuplicatedKeys!158 (toList!3249 lt!1607400)))))

(declare-fun bs!729609 () Bool)

(assert (= bs!729609 d!1328320))

(declare-fun m!5067897 () Bool)

(assert (=> bs!729609 m!5067897))

(assert (=> b!4402720 d!1328320))

(assert (=> b!4402579 d!1328068))

(assert (=> b!4402579 d!1328070))

(assert (=> b!4402763 d!1328116))

(declare-fun d!1328322 () Bool)

(assert (=> d!1328322 (= (invariantList!754 (toList!3249 lt!1607432)) (noDuplicatedKeys!158 (toList!3249 lt!1607432)))))

(declare-fun bs!729610 () Bool)

(assert (= bs!729610 d!1328322))

(declare-fun m!5067899 () Bool)

(assert (=> bs!729610 m!5067899))

(assert (=> d!1328032 d!1328322))

(declare-fun d!1328324 () Bool)

(declare-fun res!1816507 () Bool)

(declare-fun e!2741855 () Bool)

(assert (=> d!1328324 (=> res!1816507 e!2741855)))

(assert (=> d!1328324 (= res!1816507 ((_ is Nil!49295) (toList!3250 lm!1707)))))

(assert (=> d!1328324 (= (forall!9378 (toList!3250 lm!1707) lambda!149321) e!2741855)))

(declare-fun b!4403408 () Bool)

(declare-fun e!2741856 () Bool)

(assert (=> b!4403408 (= e!2741855 e!2741856)))

(declare-fun res!1816508 () Bool)

(assert (=> b!4403408 (=> (not res!1816508) (not e!2741856))))

(assert (=> b!4403408 (= res!1816508 (dynLambda!20770 lambda!149321 (h!54924 (toList!3250 lm!1707))))))

(declare-fun b!4403409 () Bool)

(assert (=> b!4403409 (= e!2741856 (forall!9378 (t!356353 (toList!3250 lm!1707)) lambda!149321))))

(assert (= (and d!1328324 (not res!1816507)) b!4403408))

(assert (= (and b!4403408 res!1816508) b!4403409))

(declare-fun b_lambda!140055 () Bool)

(assert (=> (not b_lambda!140055) (not b!4403408)))

(declare-fun m!5067901 () Bool)

(assert (=> b!4403408 m!5067901))

(declare-fun m!5067905 () Bool)

(assert (=> b!4403409 m!5067905))

(assert (=> d!1328032 d!1328324))

(declare-fun d!1328326 () Bool)

(declare-fun res!1816509 () Bool)

(declare-fun e!2741857 () Bool)

(assert (=> d!1328326 (=> res!1816509 e!2741857)))

(assert (=> d!1328326 (= res!1816509 ((_ is Nil!49294) (toList!3249 lt!1607082)))))

(assert (=> d!1328326 (= (forall!9380 (toList!3249 lt!1607082) (ite c!749615 lambda!149306 lambda!149308)) e!2741857)))

(declare-fun b!4403410 () Bool)

(declare-fun e!2741858 () Bool)

(assert (=> b!4403410 (= e!2741857 e!2741858)))

(declare-fun res!1816510 () Bool)

(assert (=> b!4403410 (=> (not res!1816510) (not e!2741858))))

(assert (=> b!4403410 (= res!1816510 (dynLambda!20772 (ite c!749615 lambda!149306 lambda!149308) (h!54923 (toList!3249 lt!1607082))))))

(declare-fun b!4403411 () Bool)

(assert (=> b!4403411 (= e!2741858 (forall!9380 (t!356352 (toList!3249 lt!1607082)) (ite c!749615 lambda!149306 lambda!149308)))))

(assert (= (and d!1328326 (not res!1816509)) b!4403410))

(assert (= (and b!4403410 res!1816510) b!4403411))

(declare-fun b_lambda!140057 () Bool)

(assert (=> (not b_lambda!140057) (not b!4403410)))

(declare-fun m!5067939 () Bool)

(assert (=> b!4403410 m!5067939))

(declare-fun m!5067941 () Bool)

(assert (=> b!4403411 m!5067941))

(assert (=> bm!306386 d!1328326))

(declare-fun d!1328330 () Bool)

(declare-fun e!2741861 () Bool)

(assert (=> d!1328330 e!2741861))

(declare-fun res!1816511 () Bool)

(assert (=> d!1328330 (=> res!1816511 e!2741861)))

(declare-fun lt!1607824 () Bool)

(assert (=> d!1328330 (= res!1816511 (not lt!1607824))))

(declare-fun lt!1607826 () Bool)

(assert (=> d!1328330 (= lt!1607824 lt!1607826)))

(declare-fun lt!1607822 () Unit!79009)

(declare-fun e!2741862 () Unit!79009)

(assert (=> d!1328330 (= lt!1607822 e!2741862)))

(declare-fun c!749780 () Bool)

(assert (=> d!1328330 (= c!749780 lt!1607826)))

(assert (=> d!1328330 (= lt!1607826 (containsKey!950 (toList!3250 lt!1607419) (_1!27746 lt!1607073)))))

(assert (=> d!1328330 (= (contains!11692 lt!1607419 (_1!27746 lt!1607073)) lt!1607824)))

(declare-fun b!4403414 () Bool)

(declare-fun lt!1607825 () Unit!79009)

(assert (=> b!4403414 (= e!2741862 lt!1607825)))

(assert (=> b!4403414 (= lt!1607825 (lemmaContainsKeyImpliesGetValueByKeyDefined!516 (toList!3250 lt!1607419) (_1!27746 lt!1607073)))))

(assert (=> b!4403414 (isDefined!7913 (getValueByKey!606 (toList!3250 lt!1607419) (_1!27746 lt!1607073)))))

(declare-fun b!4403415 () Bool)

(declare-fun Unit!79132 () Unit!79009)

(assert (=> b!4403415 (= e!2741862 Unit!79132)))

(declare-fun b!4403416 () Bool)

(assert (=> b!4403416 (= e!2741861 (isDefined!7913 (getValueByKey!606 (toList!3250 lt!1607419) (_1!27746 lt!1607073))))))

(assert (= (and d!1328330 c!749780) b!4403414))

(assert (= (and d!1328330 (not c!749780)) b!4403415))

(assert (= (and d!1328330 (not res!1816511)) b!4403416))

(declare-fun m!5067949 () Bool)

(assert (=> d!1328330 m!5067949))

(declare-fun m!5067951 () Bool)

(assert (=> b!4403414 m!5067951))

(assert (=> b!4403414 m!5066895))

(assert (=> b!4403414 m!5066895))

(declare-fun m!5067953 () Bool)

(assert (=> b!4403414 m!5067953))

(assert (=> b!4403416 m!5066895))

(assert (=> b!4403416 m!5066895))

(assert (=> b!4403416 m!5067953))

(assert (=> d!1328026 d!1328330))

(declare-fun b!4403420 () Bool)

(declare-fun e!2741864 () Option!10620)

(assert (=> b!4403420 (= e!2741864 None!10619)))

(declare-fun d!1328334 () Bool)

(declare-fun c!749781 () Bool)

(assert (=> d!1328334 (= c!749781 (and ((_ is Cons!49295) lt!1607418) (= (_1!27746 (h!54924 lt!1607418)) (_1!27746 lt!1607073))))))

(declare-fun e!2741863 () Option!10620)

(assert (=> d!1328334 (= (getValueByKey!606 lt!1607418 (_1!27746 lt!1607073)) e!2741863)))

(declare-fun b!4403419 () Bool)

(assert (=> b!4403419 (= e!2741864 (getValueByKey!606 (t!356353 lt!1607418) (_1!27746 lt!1607073)))))

(declare-fun b!4403417 () Bool)

(assert (=> b!4403417 (= e!2741863 (Some!10619 (_2!27746 (h!54924 lt!1607418))))))

(declare-fun b!4403418 () Bool)

(assert (=> b!4403418 (= e!2741863 e!2741864)))

(declare-fun c!749782 () Bool)

(assert (=> b!4403418 (= c!749782 (and ((_ is Cons!49295) lt!1607418) (not (= (_1!27746 (h!54924 lt!1607418)) (_1!27746 lt!1607073)))))))

(assert (= (and d!1328334 c!749781) b!4403417))

(assert (= (and d!1328334 (not c!749781)) b!4403418))

(assert (= (and b!4403418 c!749782) b!4403419))

(assert (= (and b!4403418 (not c!749782)) b!4403420))

(declare-fun m!5067961 () Bool)

(assert (=> b!4403419 m!5067961))

(assert (=> d!1328026 d!1328334))

(declare-fun d!1328340 () Bool)

(assert (=> d!1328340 (= (getValueByKey!606 lt!1607418 (_1!27746 lt!1607073)) (Some!10619 (_2!27746 lt!1607073)))))

(declare-fun lt!1607830 () Unit!79009)

(assert (=> d!1328340 (= lt!1607830 (choose!27643 lt!1607418 (_1!27746 lt!1607073) (_2!27746 lt!1607073)))))

(declare-fun e!2741865 () Bool)

(assert (=> d!1328340 e!2741865))

(declare-fun res!1816514 () Bool)

(assert (=> d!1328340 (=> (not res!1816514) (not e!2741865))))

(assert (=> d!1328340 (= res!1816514 (isStrictlySorted!180 lt!1607418))))

(assert (=> d!1328340 (= (lemmaContainsTupThenGetReturnValue!351 lt!1607418 (_1!27746 lt!1607073) (_2!27746 lt!1607073)) lt!1607830)))

(declare-fun b!4403421 () Bool)

(declare-fun res!1816515 () Bool)

(assert (=> b!4403421 (=> (not res!1816515) (not e!2741865))))

(assert (=> b!4403421 (= res!1816515 (containsKey!950 lt!1607418 (_1!27746 lt!1607073)))))

(declare-fun b!4403422 () Bool)

(assert (=> b!4403422 (= e!2741865 (contains!11693 lt!1607418 (tuple2!48905 (_1!27746 lt!1607073) (_2!27746 lt!1607073))))))

(assert (= (and d!1328340 res!1816514) b!4403421))

(assert (= (and b!4403421 res!1816515) b!4403422))

(assert (=> d!1328340 m!5066889))

(declare-fun m!5067969 () Bool)

(assert (=> d!1328340 m!5067969))

(declare-fun m!5067971 () Bool)

(assert (=> d!1328340 m!5067971))

(declare-fun m!5067973 () Bool)

(assert (=> b!4403421 m!5067973))

(declare-fun m!5067975 () Bool)

(assert (=> b!4403422 m!5067975))

(assert (=> d!1328026 d!1328340))

(declare-fun bm!306453 () Bool)

(declare-fun call!306459 () List!49419)

(declare-fun call!306460 () List!49419)

(assert (=> bm!306453 (= call!306459 call!306460)))

(declare-fun b!4403427 () Bool)

(declare-fun e!2741869 () List!49419)

(declare-fun e!2741870 () List!49419)

(assert (=> b!4403427 (= e!2741869 e!2741870)))

(declare-fun c!749785 () Bool)

(assert (=> b!4403427 (= c!749785 (and ((_ is Cons!49295) (toList!3250 lm!1707)) (= (_1!27746 (h!54924 (toList!3250 lm!1707))) (_1!27746 lt!1607073))))))

(declare-fun bm!306454 () Bool)

(declare-fun call!306458 () List!49419)

(assert (=> bm!306454 (= call!306458 call!306459)))

(declare-fun d!1328346 () Bool)

(declare-fun e!2741872 () Bool)

(assert (=> d!1328346 e!2741872))

(declare-fun res!1816517 () Bool)

(assert (=> d!1328346 (=> (not res!1816517) (not e!2741872))))

(declare-fun lt!1607833 () List!49419)

(assert (=> d!1328346 (= res!1816517 (isStrictlySorted!180 lt!1607833))))

(assert (=> d!1328346 (= lt!1607833 e!2741869)))

(declare-fun c!749788 () Bool)

(assert (=> d!1328346 (= c!749788 (and ((_ is Cons!49295) (toList!3250 lm!1707)) (bvslt (_1!27746 (h!54924 (toList!3250 lm!1707))) (_1!27746 lt!1607073))))))

(assert (=> d!1328346 (isStrictlySorted!180 (toList!3250 lm!1707))))

(assert (=> d!1328346 (= (insertStrictlySorted!208 (toList!3250 lm!1707) (_1!27746 lt!1607073) (_2!27746 lt!1607073)) lt!1607833)))

(declare-fun b!4403428 () Bool)

(declare-fun e!2741871 () List!49419)

(assert (=> b!4403428 (= e!2741871 (insertStrictlySorted!208 (t!356353 (toList!3250 lm!1707)) (_1!27746 lt!1607073) (_2!27746 lt!1607073)))))

(declare-fun b!4403429 () Bool)

(declare-fun e!2741868 () List!49419)

(assert (=> b!4403429 (= e!2741868 call!306458)))

(declare-fun b!4403430 () Bool)

(assert (=> b!4403430 (= e!2741869 call!306460)))

(declare-fun b!4403431 () Bool)

(declare-fun res!1816516 () Bool)

(assert (=> b!4403431 (=> (not res!1816516) (not e!2741872))))

(assert (=> b!4403431 (= res!1816516 (containsKey!950 lt!1607833 (_1!27746 lt!1607073)))))

(declare-fun b!4403432 () Bool)

(declare-fun c!749786 () Bool)

(assert (=> b!4403432 (= e!2741871 (ite c!749785 (t!356353 (toList!3250 lm!1707)) (ite c!749786 (Cons!49295 (h!54924 (toList!3250 lm!1707)) (t!356353 (toList!3250 lm!1707))) Nil!49295)))))

(declare-fun b!4403433 () Bool)

(assert (=> b!4403433 (= e!2741868 call!306458)))

(declare-fun b!4403434 () Bool)

(assert (=> b!4403434 (= e!2741872 (contains!11693 lt!1607833 (tuple2!48905 (_1!27746 lt!1607073) (_2!27746 lt!1607073))))))

(declare-fun b!4403435 () Bool)

(assert (=> b!4403435 (= e!2741870 call!306459)))

(declare-fun bm!306455 () Bool)

(assert (=> bm!306455 (= call!306460 ($colon$colon!758 e!2741871 (ite c!749788 (h!54924 (toList!3250 lm!1707)) (tuple2!48905 (_1!27746 lt!1607073) (_2!27746 lt!1607073)))))))

(declare-fun c!749787 () Bool)

(assert (=> bm!306455 (= c!749787 c!749788)))

(declare-fun b!4403436 () Bool)

(assert (=> b!4403436 (= c!749786 (and ((_ is Cons!49295) (toList!3250 lm!1707)) (bvsgt (_1!27746 (h!54924 (toList!3250 lm!1707))) (_1!27746 lt!1607073))))))

(assert (=> b!4403436 (= e!2741870 e!2741868)))

(assert (= (and d!1328346 c!749788) b!4403430))

(assert (= (and d!1328346 (not c!749788)) b!4403427))

(assert (= (and b!4403427 c!749785) b!4403435))

(assert (= (and b!4403427 (not c!749785)) b!4403436))

(assert (= (and b!4403436 c!749786) b!4403433))

(assert (= (and b!4403436 (not c!749786)) b!4403429))

(assert (= (or b!4403433 b!4403429) bm!306454))

(assert (= (or b!4403435 bm!306454) bm!306453))

(assert (= (or b!4403430 bm!306453) bm!306455))

(assert (= (and bm!306455 c!749787) b!4403428))

(assert (= (and bm!306455 (not c!749787)) b!4403432))

(assert (= (and d!1328346 res!1816517) b!4403431))

(assert (= (and b!4403431 res!1816516) b!4403434))

(declare-fun m!5067987 () Bool)

(assert (=> b!4403431 m!5067987))

(declare-fun m!5067989 () Bool)

(assert (=> b!4403428 m!5067989))

(declare-fun m!5067991 () Bool)

(assert (=> b!4403434 m!5067991))

(declare-fun m!5067993 () Bool)

(assert (=> bm!306455 m!5067993))

(declare-fun m!5067995 () Bool)

(assert (=> d!1328346 m!5067995))

(assert (=> d!1328346 m!5066493))

(assert (=> d!1328026 d!1328346))

(declare-fun d!1328352 () Bool)

(declare-fun res!1816520 () Bool)

(declare-fun e!2741875 () Bool)

(assert (=> d!1328352 (=> res!1816520 e!2741875)))

(assert (=> d!1328352 (= res!1816520 (and ((_ is Cons!49294) (t!356352 (_2!27746 (h!54924 (toList!3250 lm!1707))))) (= (_1!27745 (h!54923 (t!356352 (_2!27746 (h!54924 (toList!3250 lm!1707)))))) key!3918)))))

(assert (=> d!1328352 (= (containsKey!947 (t!356352 (_2!27746 (h!54924 (toList!3250 lm!1707)))) key!3918) e!2741875)))

(declare-fun b!4403439 () Bool)

(declare-fun e!2741876 () Bool)

(assert (=> b!4403439 (= e!2741875 e!2741876)))

(declare-fun res!1816521 () Bool)

(assert (=> b!4403439 (=> (not res!1816521) (not e!2741876))))

(assert (=> b!4403439 (= res!1816521 ((_ is Cons!49294) (t!356352 (_2!27746 (h!54924 (toList!3250 lm!1707))))))))

(declare-fun b!4403440 () Bool)

(assert (=> b!4403440 (= e!2741876 (containsKey!947 (t!356352 (t!356352 (_2!27746 (h!54924 (toList!3250 lm!1707))))) key!3918))))

(assert (= (and d!1328352 (not res!1816520)) b!4403439))

(assert (= (and b!4403439 res!1816521) b!4403440))

(declare-fun m!5067997 () Bool)

(assert (=> b!4403440 m!5067997))

(assert (=> b!4402468 d!1328352))

(declare-fun d!1328354 () Bool)

(declare-fun res!1816522 () Bool)

(declare-fun e!2741877 () Bool)

(assert (=> d!1328354 (=> res!1816522 e!2741877)))

(assert (=> d!1328354 (= res!1816522 (and ((_ is Cons!49294) (t!356352 newBucket!200)) (= (_1!27745 (h!54923 (t!356352 newBucket!200))) (_1!27745 (h!54923 newBucket!200)))))))

(assert (=> d!1328354 (= (containsKey!947 (t!356352 newBucket!200) (_1!27745 (h!54923 newBucket!200))) e!2741877)))

(declare-fun b!4403441 () Bool)

(declare-fun e!2741878 () Bool)

(assert (=> b!4403441 (= e!2741877 e!2741878)))

(declare-fun res!1816523 () Bool)

(assert (=> b!4403441 (=> (not res!1816523) (not e!2741878))))

(assert (=> b!4403441 (= res!1816523 ((_ is Cons!49294) (t!356352 newBucket!200)))))

(declare-fun b!4403442 () Bool)

(assert (=> b!4403442 (= e!2741878 (containsKey!947 (t!356352 (t!356352 newBucket!200)) (_1!27745 (h!54923 newBucket!200))))))

(assert (= (and d!1328354 (not res!1816522)) b!4403441))

(assert (= (and b!4403441 res!1816523) b!4403442))

(declare-fun m!5067999 () Bool)

(assert (=> b!4403442 m!5067999))

(assert (=> b!4402771 d!1328354))

(assert (=> b!4402656 d!1328100))

(declare-fun b!4403444 () Bool)

(declare-fun e!2741879 () Option!10621)

(declare-fun e!2741880 () Option!10621)

(assert (=> b!4403444 (= e!2741879 e!2741880)))

(declare-fun c!749790 () Bool)

(assert (=> b!4403444 (= c!749790 (and ((_ is Cons!49294) (toList!3249 lt!1607232)) (not (= (_1!27745 (h!54923 (toList!3249 lt!1607232))) (_1!27745 lt!1607083)))))))

(declare-fun b!4403446 () Bool)

(assert (=> b!4403446 (= e!2741880 None!10620)))

(declare-fun b!4403445 () Bool)

(assert (=> b!4403445 (= e!2741880 (getValueByKey!607 (t!356352 (toList!3249 lt!1607232)) (_1!27745 lt!1607083)))))

(declare-fun b!4403443 () Bool)

(assert (=> b!4403443 (= e!2741879 (Some!10620 (_2!27745 (h!54923 (toList!3249 lt!1607232)))))))

(declare-fun d!1328356 () Bool)

(declare-fun c!749789 () Bool)

(assert (=> d!1328356 (= c!749789 (and ((_ is Cons!49294) (toList!3249 lt!1607232)) (= (_1!27745 (h!54923 (toList!3249 lt!1607232))) (_1!27745 lt!1607083))))))

(assert (=> d!1328356 (= (getValueByKey!607 (toList!3249 lt!1607232) (_1!27745 lt!1607083)) e!2741879)))

(assert (= (and d!1328356 c!749789) b!4403443))

(assert (= (and d!1328356 (not c!749789)) b!4403444))

(assert (= (and b!4403444 c!749790) b!4403445))

(assert (= (and b!4403444 (not c!749790)) b!4403446))

(declare-fun m!5068001 () Bool)

(assert (=> b!4403445 m!5068001))

(assert (=> b!4402647 d!1328356))

(assert (=> d!1328016 d!1328236))

(declare-fun d!1328358 () Bool)

(declare-fun res!1816524 () Bool)

(declare-fun e!2741881 () Bool)

(assert (=> d!1328358 (=> res!1816524 e!2741881)))

(assert (=> d!1328358 (= res!1816524 ((_ is Nil!49295) (toList!3250 lm!1707)))))

(assert (=> d!1328358 (= (forall!9378 (toList!3250 lm!1707) lambda!149317) e!2741881)))

(declare-fun b!4403447 () Bool)

(declare-fun e!2741882 () Bool)

(assert (=> b!4403447 (= e!2741881 e!2741882)))

(declare-fun res!1816525 () Bool)

(assert (=> b!4403447 (=> (not res!1816525) (not e!2741882))))

(assert (=> b!4403447 (= res!1816525 (dynLambda!20770 lambda!149317 (h!54924 (toList!3250 lm!1707))))))

(declare-fun b!4403448 () Bool)

(assert (=> b!4403448 (= e!2741882 (forall!9378 (t!356353 (toList!3250 lm!1707)) lambda!149317))))

(assert (= (and d!1328358 (not res!1816524)) b!4403447))

(assert (= (and b!4403447 res!1816525) b!4403448))

(declare-fun b_lambda!140059 () Bool)

(assert (=> (not b_lambda!140059) (not b!4403447)))

(declare-fun m!5068003 () Bool)

(assert (=> b!4403447 m!5068003))

(declare-fun m!5068005 () Bool)

(assert (=> b!4403448 m!5068005))

(assert (=> d!1328020 d!1328358))

(declare-fun d!1328360 () Bool)

(declare-fun lt!1607835 () Bool)

(assert (=> d!1328360 (= lt!1607835 (select (content!7879 (toList!3250 lt!1607221)) lt!1607073))))

(declare-fun e!2741884 () Bool)

(assert (=> d!1328360 (= lt!1607835 e!2741884)))

(declare-fun res!1816526 () Bool)

(assert (=> d!1328360 (=> (not res!1816526) (not e!2741884))))

(assert (=> d!1328360 (= res!1816526 ((_ is Cons!49295) (toList!3250 lt!1607221)))))

(assert (=> d!1328360 (= (contains!11693 (toList!3250 lt!1607221) lt!1607073) lt!1607835)))

(declare-fun b!4403449 () Bool)

(declare-fun e!2741883 () Bool)

(assert (=> b!4403449 (= e!2741884 e!2741883)))

(declare-fun res!1816527 () Bool)

(assert (=> b!4403449 (=> res!1816527 e!2741883)))

(assert (=> b!4403449 (= res!1816527 (= (h!54924 (toList!3250 lt!1607221)) lt!1607073))))

(declare-fun b!4403450 () Bool)

(assert (=> b!4403450 (= e!2741883 (contains!11693 (t!356353 (toList!3250 lt!1607221)) lt!1607073))))

(assert (= (and d!1328360 res!1816526) b!4403449))

(assert (= (and b!4403449 (not res!1816527)) b!4403450))

(declare-fun m!5068007 () Bool)

(assert (=> d!1328360 m!5068007))

(declare-fun m!5068009 () Bool)

(assert (=> d!1328360 m!5068009))

(declare-fun m!5068011 () Bool)

(assert (=> b!4403450 m!5068011))

(assert (=> b!4402642 d!1328360))

(declare-fun d!1328362 () Bool)

(declare-fun isEmpty!28291 (Option!10621) Bool)

(assert (=> d!1328362 (= (isDefined!7914 (getValueByKey!607 (toList!3249 lt!1607086) key!3918)) (not (isEmpty!28291 (getValueByKey!607 (toList!3249 lt!1607086) key!3918))))))

(declare-fun bs!729615 () Bool)

(assert (= bs!729615 d!1328362))

(assert (=> bs!729615 m!5066913))

(declare-fun m!5068013 () Bool)

(assert (=> bs!729615 m!5068013))

(assert (=> b!4402762 d!1328362))

(declare-fun b!4403452 () Bool)

(declare-fun e!2741885 () Option!10621)

(declare-fun e!2741886 () Option!10621)

(assert (=> b!4403452 (= e!2741885 e!2741886)))

(declare-fun c!749792 () Bool)

(assert (=> b!4403452 (= c!749792 (and ((_ is Cons!49294) (toList!3249 lt!1607086)) (not (= (_1!27745 (h!54923 (toList!3249 lt!1607086))) key!3918))))))

(declare-fun b!4403454 () Bool)

(assert (=> b!4403454 (= e!2741886 None!10620)))

(declare-fun b!4403453 () Bool)

(assert (=> b!4403453 (= e!2741886 (getValueByKey!607 (t!356352 (toList!3249 lt!1607086)) key!3918))))

(declare-fun b!4403451 () Bool)

(assert (=> b!4403451 (= e!2741885 (Some!10620 (_2!27745 (h!54923 (toList!3249 lt!1607086)))))))

(declare-fun d!1328364 () Bool)

(declare-fun c!749791 () Bool)

(assert (=> d!1328364 (= c!749791 (and ((_ is Cons!49294) (toList!3249 lt!1607086)) (= (_1!27745 (h!54923 (toList!3249 lt!1607086))) key!3918)))))

(assert (=> d!1328364 (= (getValueByKey!607 (toList!3249 lt!1607086) key!3918) e!2741885)))

(assert (= (and d!1328364 c!749791) b!4403451))

(assert (= (and d!1328364 (not c!749791)) b!4403452))

(assert (= (and b!4403452 c!749792) b!4403453))

(assert (= (and b!4403452 (not c!749792)) b!4403454))

(declare-fun m!5068015 () Bool)

(assert (=> b!4403453 m!5068015))

(assert (=> b!4402762 d!1328364))

(declare-fun d!1328366 () Bool)

(declare-fun lt!1607836 () Bool)

(assert (=> d!1328366 (= lt!1607836 (select (content!7879 (t!356353 (toList!3250 lm!1707))) lt!1607081))))

(declare-fun e!2741888 () Bool)

(assert (=> d!1328366 (= lt!1607836 e!2741888)))

(declare-fun res!1816528 () Bool)

(assert (=> d!1328366 (=> (not res!1816528) (not e!2741888))))

(assert (=> d!1328366 (= res!1816528 ((_ is Cons!49295) (t!356353 (toList!3250 lm!1707))))))

(assert (=> d!1328366 (= (contains!11693 (t!356353 (toList!3250 lm!1707)) lt!1607081) lt!1607836)))

(declare-fun b!4403455 () Bool)

(declare-fun e!2741887 () Bool)

(assert (=> b!4403455 (= e!2741888 e!2741887)))

(declare-fun res!1816529 () Bool)

(assert (=> b!4403455 (=> res!1816529 e!2741887)))

(assert (=> b!4403455 (= res!1816529 (= (h!54924 (t!356353 (toList!3250 lm!1707))) lt!1607081))))

(declare-fun b!4403456 () Bool)

(assert (=> b!4403456 (= e!2741887 (contains!11693 (t!356353 (t!356353 (toList!3250 lm!1707))) lt!1607081))))

(assert (= (and d!1328366 res!1816528) b!4403455))

(assert (= (and b!4403455 (not res!1816529)) b!4403456))

(assert (=> d!1328366 m!5067587))

(declare-fun m!5068017 () Bool)

(assert (=> d!1328366 m!5068017))

(declare-fun m!5068019 () Bool)

(assert (=> b!4403456 m!5068019))

(assert (=> b!4402493 d!1328366))

(declare-fun d!1328368 () Bool)

(declare-fun res!1816530 () Bool)

(declare-fun e!2741889 () Bool)

(assert (=> d!1328368 (=> res!1816530 e!2741889)))

(assert (=> d!1328368 (= res!1816530 (and ((_ is Cons!49294) lt!1607122) (= (_1!27745 (h!54923 lt!1607122)) key!3918)))))

(assert (=> d!1328368 (= (containsKey!947 lt!1607122 key!3918) e!2741889)))

(declare-fun b!4403457 () Bool)

(declare-fun e!2741890 () Bool)

(assert (=> b!4403457 (= e!2741889 e!2741890)))

(declare-fun res!1816531 () Bool)

(assert (=> b!4403457 (=> (not res!1816531) (not e!2741890))))

(assert (=> b!4403457 (= res!1816531 ((_ is Cons!49294) lt!1607122))))

(declare-fun b!4403458 () Bool)

(assert (=> b!4403458 (= e!2741890 (containsKey!947 (t!356352 lt!1607122) key!3918))))

(assert (= (and d!1328368 (not res!1816530)) b!4403457))

(assert (= (and b!4403457 res!1816531) b!4403458))

(declare-fun m!5068021 () Bool)

(assert (=> b!4403458 m!5068021))

(assert (=> d!1327930 d!1328368))

(declare-fun d!1328370 () Bool)

(declare-fun res!1816532 () Bool)

(declare-fun e!2741891 () Bool)

(assert (=> d!1328370 (=> res!1816532 e!2741891)))

(assert (=> d!1328370 (= res!1816532 (not ((_ is Cons!49294) lt!1607077)))))

(assert (=> d!1328370 (= (noDuplicateKeys!633 lt!1607077) e!2741891)))

(declare-fun b!4403459 () Bool)

(declare-fun e!2741892 () Bool)

(assert (=> b!4403459 (= e!2741891 e!2741892)))

(declare-fun res!1816533 () Bool)

(assert (=> b!4403459 (=> (not res!1816533) (not e!2741892))))

(assert (=> b!4403459 (= res!1816533 (not (containsKey!947 (t!356352 lt!1607077) (_1!27745 (h!54923 lt!1607077)))))))

(declare-fun b!4403460 () Bool)

(assert (=> b!4403460 (= e!2741892 (noDuplicateKeys!633 (t!356352 lt!1607077)))))

(assert (= (and d!1328370 (not res!1816532)) b!4403459))

(assert (= (and b!4403459 res!1816533) b!4403460))

(declare-fun m!5068023 () Bool)

(assert (=> b!4403459 m!5068023))

(declare-fun m!5068025 () Bool)

(assert (=> b!4403460 m!5068025))

(assert (=> d!1327930 d!1328370))

(declare-fun d!1328372 () Bool)

(declare-fun lt!1607839 () Bool)

(assert (=> d!1328372 (= lt!1607839 (select (content!7881 e!2741393) key!3918))))

(declare-fun e!2741893 () Bool)

(assert (=> d!1328372 (= lt!1607839 e!2741893)))

(declare-fun res!1816534 () Bool)

(assert (=> d!1328372 (=> (not res!1816534) (not e!2741893))))

(assert (=> d!1328372 (= res!1816534 ((_ is Cons!49297) e!2741393))))

(assert (=> d!1328372 (= (contains!11695 e!2741393 key!3918) lt!1607839)))

(declare-fun b!4403461 () Bool)

(declare-fun e!2741894 () Bool)

(assert (=> b!4403461 (= e!2741893 e!2741894)))

(declare-fun res!1816535 () Bool)

(assert (=> b!4403461 (=> res!1816535 e!2741894)))

(assert (=> b!4403461 (= res!1816535 (= (h!54928 e!2741393) key!3918))))

(declare-fun b!4403462 () Bool)

(assert (=> b!4403462 (= e!2741894 (contains!11695 (t!356355 e!2741393) key!3918))))

(assert (= (and d!1328372 res!1816534) b!4403461))

(assert (= (and b!4403461 (not res!1816535)) b!4403462))

(declare-fun m!5068027 () Bool)

(assert (=> d!1328372 m!5068027))

(declare-fun m!5068029 () Bool)

(assert (=> d!1328372 m!5068029))

(declare-fun m!5068031 () Bool)

(assert (=> b!4403462 m!5068031))

(assert (=> bm!306367 d!1328372))

(declare-fun d!1328374 () Bool)

(declare-fun lt!1607840 () Bool)

(assert (=> d!1328374 (= lt!1607840 (select (content!7881 e!2741455) key!3918))))

(declare-fun e!2741895 () Bool)

(assert (=> d!1328374 (= lt!1607840 e!2741895)))

(declare-fun res!1816536 () Bool)

(assert (=> d!1328374 (=> (not res!1816536) (not e!2741895))))

(assert (=> d!1328374 (= res!1816536 ((_ is Cons!49297) e!2741455))))

(assert (=> d!1328374 (= (contains!11695 e!2741455 key!3918) lt!1607840)))

(declare-fun b!4403463 () Bool)

(declare-fun e!2741896 () Bool)

(assert (=> b!4403463 (= e!2741895 e!2741896)))

(declare-fun res!1816537 () Bool)

(assert (=> b!4403463 (=> res!1816537 e!2741896)))

(assert (=> b!4403463 (= res!1816537 (= (h!54928 e!2741455) key!3918))))

(declare-fun b!4403464 () Bool)

(assert (=> b!4403464 (= e!2741896 (contains!11695 (t!356355 e!2741455) key!3918))))

(assert (= (and d!1328374 res!1816536) b!4403463))

(assert (= (and b!4403463 (not res!1816537)) b!4403464))

(declare-fun m!5068033 () Bool)

(assert (=> d!1328374 m!5068033))

(declare-fun m!5068035 () Bool)

(assert (=> d!1328374 m!5068035))

(declare-fun m!5068037 () Bool)

(assert (=> b!4403464 m!5068037))

(assert (=> bm!306388 d!1328374))

(declare-fun d!1328376 () Bool)

(declare-fun res!1816538 () Bool)

(declare-fun e!2741897 () Bool)

(assert (=> d!1328376 (=> res!1816538 e!2741897)))

(assert (=> d!1328376 (= res!1816538 ((_ is Nil!49294) (_2!27746 (h!54924 (toList!3250 lm!1707)))))))

(assert (=> d!1328376 (= (forall!9380 (_2!27746 (h!54924 (toList!3250 lm!1707))) lambda!149309) e!2741897)))

(declare-fun b!4403465 () Bool)

(declare-fun e!2741898 () Bool)

(assert (=> b!4403465 (= e!2741897 e!2741898)))

(declare-fun res!1816539 () Bool)

(assert (=> b!4403465 (=> (not res!1816539) (not e!2741898))))

(assert (=> b!4403465 (= res!1816539 (dynLambda!20772 lambda!149309 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707))))))))

(declare-fun b!4403466 () Bool)

(assert (=> b!4403466 (= e!2741898 (forall!9380 (t!356352 (_2!27746 (h!54924 (toList!3250 lm!1707)))) lambda!149309))))

(assert (= (and d!1328376 (not res!1816538)) b!4403465))

(assert (= (and b!4403465 res!1816539) b!4403466))

(declare-fun b_lambda!140061 () Bool)

(assert (=> (not b_lambda!140061) (not b!4403465)))

(declare-fun m!5068039 () Bool)

(assert (=> b!4403465 m!5068039))

(declare-fun m!5068041 () Bool)

(assert (=> b!4403466 m!5068041))

(assert (=> d!1327986 d!1328376))

(declare-fun d!1328378 () Bool)

(declare-fun res!1816540 () Bool)

(declare-fun e!2741899 () Bool)

(assert (=> d!1328378 (=> res!1816540 e!2741899)))

(assert (=> d!1328378 (= res!1816540 (not ((_ is Cons!49294) (_2!27746 (h!54924 (toList!3250 lm!1707))))))))

(assert (=> d!1328378 (= (noDuplicateKeys!633 (_2!27746 (h!54924 (toList!3250 lm!1707)))) e!2741899)))

(declare-fun b!4403467 () Bool)

(declare-fun e!2741900 () Bool)

(assert (=> b!4403467 (= e!2741899 e!2741900)))

(declare-fun res!1816541 () Bool)

(assert (=> b!4403467 (=> (not res!1816541) (not e!2741900))))

(assert (=> b!4403467 (= res!1816541 (not (containsKey!947 (t!356352 (_2!27746 (h!54924 (toList!3250 lm!1707)))) (_1!27745 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707))))))))))

(declare-fun b!4403468 () Bool)

(assert (=> b!4403468 (= e!2741900 (noDuplicateKeys!633 (t!356352 (_2!27746 (h!54924 (toList!3250 lm!1707))))))))

(assert (= (and d!1328378 (not res!1816540)) b!4403467))

(assert (= (and b!4403467 res!1816541) b!4403468))

(declare-fun m!5068043 () Bool)

(assert (=> b!4403467 m!5068043))

(declare-fun m!5068045 () Bool)

(assert (=> b!4403468 m!5068045))

(assert (=> d!1327986 d!1328378))

(declare-fun d!1328380 () Bool)

(declare-fun res!1816548 () Bool)

(declare-fun e!2741907 () Bool)

(assert (=> d!1328380 (=> res!1816548 e!2741907)))

(assert (=> d!1328380 (= res!1816548 (and ((_ is Cons!49295) (toList!3250 lm!1707)) (= (_1!27746 (h!54924 (toList!3250 lm!1707))) hash!377)))))

(assert (=> d!1328380 (= (containsKey!950 (toList!3250 lm!1707) hash!377) e!2741907)))

(declare-fun b!4403475 () Bool)

(declare-fun e!2741908 () Bool)

(assert (=> b!4403475 (= e!2741907 e!2741908)))

(declare-fun res!1816549 () Bool)

(assert (=> b!4403475 (=> (not res!1816549) (not e!2741908))))

(assert (=> b!4403475 (= res!1816549 (and (or (not ((_ is Cons!49295) (toList!3250 lm!1707))) (bvsle (_1!27746 (h!54924 (toList!3250 lm!1707))) hash!377)) ((_ is Cons!49295) (toList!3250 lm!1707)) (bvslt (_1!27746 (h!54924 (toList!3250 lm!1707))) hash!377)))))

(declare-fun b!4403476 () Bool)

(assert (=> b!4403476 (= e!2741908 (containsKey!950 (t!356353 (toList!3250 lm!1707)) hash!377))))

(assert (= (and d!1328380 (not res!1816548)) b!4403475))

(assert (= (and b!4403475 res!1816549) b!4403476))

(declare-fun m!5068057 () Bool)

(assert (=> b!4403476 m!5068057))

(assert (=> d!1327934 d!1328380))

(assert (=> b!4402650 d!1328092))

(assert (=> b!4402650 d!1328100))

(assert (=> d!1328030 d!1328120))

(assert (=> d!1327976 d!1328128))

(assert (=> b!4402757 d!1328114))

(assert (=> b!4402757 d!1328116))

(declare-fun d!1328390 () Bool)

(declare-fun res!1816553 () Bool)

(declare-fun e!2741913 () Bool)

(assert (=> d!1328390 (=> res!1816553 e!2741913)))

(assert (=> d!1328390 (= res!1816553 ((_ is Nil!49295) (t!356353 (toList!3250 lt!1607080))))))

(assert (=> d!1328390 (= (forall!9378 (t!356353 (toList!3250 lt!1607080)) lambda!149221) e!2741913)))

(declare-fun b!4403486 () Bool)

(declare-fun e!2741914 () Bool)

(assert (=> b!4403486 (= e!2741913 e!2741914)))

(declare-fun res!1816554 () Bool)

(assert (=> b!4403486 (=> (not res!1816554) (not e!2741914))))

(assert (=> b!4403486 (= res!1816554 (dynLambda!20770 lambda!149221 (h!54924 (t!356353 (toList!3250 lt!1607080)))))))

(declare-fun b!4403487 () Bool)

(assert (=> b!4403487 (= e!2741914 (forall!9378 (t!356353 (t!356353 (toList!3250 lt!1607080))) lambda!149221))))

(assert (= (and d!1328390 (not res!1816553)) b!4403486))

(assert (= (and b!4403486 res!1816554) b!4403487))

(declare-fun b_lambda!140065 () Bool)

(assert (=> (not b_lambda!140065) (not b!4403486)))

(declare-fun m!5068059 () Bool)

(assert (=> b!4403486 m!5068059))

(declare-fun m!5068061 () Bool)

(assert (=> b!4403487 m!5068061))

(assert (=> b!4402743 d!1328390))

(declare-fun d!1328392 () Bool)

(declare-fun res!1816555 () Bool)

(declare-fun e!2741915 () Bool)

(assert (=> d!1328392 (=> res!1816555 e!2741915)))

(assert (=> d!1328392 (= res!1816555 (not ((_ is Cons!49294) (_2!27746 (h!54924 (toList!3250 lt!1607080))))))))

(assert (=> d!1328392 (= (noDuplicateKeys!633 (_2!27746 (h!54924 (toList!3250 lt!1607080)))) e!2741915)))

(declare-fun b!4403488 () Bool)

(declare-fun e!2741916 () Bool)

(assert (=> b!4403488 (= e!2741915 e!2741916)))

(declare-fun res!1816556 () Bool)

(assert (=> b!4403488 (=> (not res!1816556) (not e!2741916))))

(assert (=> b!4403488 (= res!1816556 (not (containsKey!947 (t!356352 (_2!27746 (h!54924 (toList!3250 lt!1607080)))) (_1!27745 (h!54923 (_2!27746 (h!54924 (toList!3250 lt!1607080))))))))))

(declare-fun b!4403489 () Bool)

(assert (=> b!4403489 (= e!2741916 (noDuplicateKeys!633 (t!356352 (_2!27746 (h!54924 (toList!3250 lt!1607080))))))))

(assert (= (and d!1328392 (not res!1816555)) b!4403488))

(assert (= (and b!4403488 res!1816556) b!4403489))

(declare-fun m!5068063 () Bool)

(assert (=> b!4403488 m!5068063))

(declare-fun m!5068065 () Bool)

(assert (=> b!4403489 m!5068065))

(assert (=> bs!729274 d!1328392))

(declare-fun d!1328394 () Bool)

(declare-fun res!1816557 () Bool)

(declare-fun e!2741917 () Bool)

(assert (=> d!1328394 (=> res!1816557 e!2741917)))

(assert (=> d!1328394 (= res!1816557 (not ((_ is Cons!49294) (_2!27746 (tuple2!48905 hash!377 newBucket!200)))))))

(assert (=> d!1328394 (= (noDuplicateKeys!633 (_2!27746 (tuple2!48905 hash!377 newBucket!200))) e!2741917)))

(declare-fun b!4403490 () Bool)

(declare-fun e!2741918 () Bool)

(assert (=> b!4403490 (= e!2741917 e!2741918)))

(declare-fun res!1816558 () Bool)

(assert (=> b!4403490 (=> (not res!1816558) (not e!2741918))))

(assert (=> b!4403490 (= res!1816558 (not (containsKey!947 (t!356352 (_2!27746 (tuple2!48905 hash!377 newBucket!200))) (_1!27745 (h!54923 (_2!27746 (tuple2!48905 hash!377 newBucket!200)))))))))

(declare-fun b!4403491 () Bool)

(assert (=> b!4403491 (= e!2741918 (noDuplicateKeys!633 (t!356352 (_2!27746 (tuple2!48905 hash!377 newBucket!200)))))))

(assert (= (and d!1328394 (not res!1816557)) b!4403490))

(assert (= (and b!4403490 res!1816558) b!4403491))

(declare-fun m!5068067 () Bool)

(assert (=> b!4403490 m!5068067))

(declare-fun m!5068069 () Bool)

(assert (=> b!4403491 m!5068069))

(assert (=> bs!729273 d!1328394))

(declare-fun d!1328396 () Bool)

(assert (=> d!1328396 (isDefined!7914 (getValueByKey!607 (toList!3249 lt!1607072) key!3918))))

(declare-fun lt!1607851 () Unit!79009)

(declare-fun choose!27651 (List!49418 K!10650) Unit!79009)

(assert (=> d!1328396 (= lt!1607851 (choose!27651 (toList!3249 lt!1607072) key!3918))))

(assert (=> d!1328396 (invariantList!754 (toList!3249 lt!1607072))))

(assert (=> d!1328396 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!517 (toList!3249 lt!1607072) key!3918) lt!1607851)))

(declare-fun bs!729657 () Bool)

(assert (= bs!729657 d!1328396))

(assert (=> bs!729657 m!5066635))

(assert (=> bs!729657 m!5066635))

(assert (=> bs!729657 m!5066637))

(declare-fun m!5068071 () Bool)

(assert (=> bs!729657 m!5068071))

(assert (=> bs!729657 m!5067009))

(assert (=> b!4402636 d!1328396))

(declare-fun d!1328398 () Bool)

(assert (=> d!1328398 (= (isDefined!7914 (getValueByKey!607 (toList!3249 lt!1607072) key!3918)) (not (isEmpty!28291 (getValueByKey!607 (toList!3249 lt!1607072) key!3918))))))

(declare-fun bs!729658 () Bool)

(assert (= bs!729658 d!1328398))

(assert (=> bs!729658 m!5066635))

(declare-fun m!5068073 () Bool)

(assert (=> bs!729658 m!5068073))

(assert (=> b!4402636 d!1328398))

(declare-fun b!4403493 () Bool)

(declare-fun e!2741919 () Option!10621)

(declare-fun e!2741920 () Option!10621)

(assert (=> b!4403493 (= e!2741919 e!2741920)))

(declare-fun c!749797 () Bool)

(assert (=> b!4403493 (= c!749797 (and ((_ is Cons!49294) (toList!3249 lt!1607072)) (not (= (_1!27745 (h!54923 (toList!3249 lt!1607072))) key!3918))))))

(declare-fun b!4403495 () Bool)

(assert (=> b!4403495 (= e!2741920 None!10620)))

(declare-fun b!4403494 () Bool)

(assert (=> b!4403494 (= e!2741920 (getValueByKey!607 (t!356352 (toList!3249 lt!1607072)) key!3918))))

(declare-fun b!4403492 () Bool)

(assert (=> b!4403492 (= e!2741919 (Some!10620 (_2!27745 (h!54923 (toList!3249 lt!1607072)))))))

(declare-fun d!1328400 () Bool)

(declare-fun c!749796 () Bool)

(assert (=> d!1328400 (= c!749796 (and ((_ is Cons!49294) (toList!3249 lt!1607072)) (= (_1!27745 (h!54923 (toList!3249 lt!1607072))) key!3918)))))

(assert (=> d!1328400 (= (getValueByKey!607 (toList!3249 lt!1607072) key!3918) e!2741919)))

(assert (= (and d!1328400 c!749796) b!4403492))

(assert (= (and d!1328400 (not c!749796)) b!4403493))

(assert (= (and b!4403493 c!749797) b!4403494))

(assert (= (and b!4403493 (not c!749797)) b!4403495))

(declare-fun m!5068093 () Bool)

(assert (=> b!4403494 m!5068093))

(assert (=> b!4402636 d!1328400))

(declare-fun d!1328402 () Bool)

(assert (=> d!1328402 (contains!11695 (getKeysList!201 (toList!3249 lt!1607072)) key!3918)))

(declare-fun lt!1607854 () Unit!79009)

(declare-fun choose!27652 (List!49418 K!10650) Unit!79009)

(assert (=> d!1328402 (= lt!1607854 (choose!27652 (toList!3249 lt!1607072) key!3918))))

(assert (=> d!1328402 (invariantList!754 (toList!3249 lt!1607072))))

(assert (=> d!1328402 (= (lemmaInListThenGetKeysListContains!198 (toList!3249 lt!1607072) key!3918) lt!1607854)))

(declare-fun bs!729659 () Bool)

(assert (= bs!729659 d!1328402))

(assert (=> bs!729659 m!5066647))

(assert (=> bs!729659 m!5066647))

(declare-fun m!5068107 () Bool)

(assert (=> bs!729659 m!5068107))

(declare-fun m!5068109 () Bool)

(assert (=> bs!729659 m!5068109))

(assert (=> bs!729659 m!5067009))

(assert (=> b!4402636 d!1328402))

(declare-fun d!1328412 () Bool)

(assert (=> d!1328412 (= (invariantList!754 (toList!3249 lt!1607414)) (noDuplicatedKeys!158 (toList!3249 lt!1607414)))))

(declare-fun bs!729660 () Bool)

(assert (= bs!729660 d!1328412))

(declare-fun m!5068111 () Bool)

(assert (=> bs!729660 m!5068111))

(assert (=> d!1328006 d!1328412))

(declare-fun d!1328414 () Bool)

(declare-fun res!1816561 () Bool)

(declare-fun e!2741928 () Bool)

(assert (=> d!1328414 (=> res!1816561 e!2741928)))

(assert (=> d!1328414 (= res!1816561 ((_ is Nil!49295) (toList!3250 (+!881 lt!1607074 lt!1607073))))))

(assert (=> d!1328414 (= (forall!9378 (toList!3250 (+!881 lt!1607074 lt!1607073)) lambda!149312) e!2741928)))

(declare-fun b!4403508 () Bool)

(declare-fun e!2741929 () Bool)

(assert (=> b!4403508 (= e!2741928 e!2741929)))

(declare-fun res!1816562 () Bool)

(assert (=> b!4403508 (=> (not res!1816562) (not e!2741929))))

(assert (=> b!4403508 (= res!1816562 (dynLambda!20770 lambda!149312 (h!54924 (toList!3250 (+!881 lt!1607074 lt!1607073)))))))

(declare-fun b!4403509 () Bool)

(assert (=> b!4403509 (= e!2741929 (forall!9378 (t!356353 (toList!3250 (+!881 lt!1607074 lt!1607073))) lambda!149312))))

(assert (= (and d!1328414 (not res!1816561)) b!4403508))

(assert (= (and b!4403508 res!1816562) b!4403509))

(declare-fun b_lambda!140069 () Bool)

(assert (=> (not b_lambda!140069) (not b!4403508)))

(declare-fun m!5068115 () Bool)

(assert (=> b!4403508 m!5068115))

(declare-fun m!5068117 () Bool)

(assert (=> b!4403509 m!5068117))

(assert (=> d!1328006 d!1328414))

(declare-fun b!4403512 () Bool)

(declare-fun e!2741933 () List!49418)

(assert (=> b!4403512 (= e!2741933 (t!356352 (t!356352 lt!1607077)))))

(declare-fun b!4403515 () Bool)

(declare-fun e!2741932 () List!49418)

(assert (=> b!4403515 (= e!2741932 Nil!49294)))

(declare-fun b!4403514 () Bool)

(assert (=> b!4403514 (= e!2741932 (Cons!49294 (h!54923 (t!356352 lt!1607077)) (removePairForKey!601 (t!356352 (t!356352 lt!1607077)) key!3918)))))

(declare-fun d!1328418 () Bool)

(declare-fun lt!1607855 () List!49418)

(assert (=> d!1328418 (not (containsKey!947 lt!1607855 key!3918))))

(assert (=> d!1328418 (= lt!1607855 e!2741933)))

(declare-fun c!749803 () Bool)

(assert (=> d!1328418 (= c!749803 (and ((_ is Cons!49294) (t!356352 lt!1607077)) (= (_1!27745 (h!54923 (t!356352 lt!1607077))) key!3918)))))

(assert (=> d!1328418 (noDuplicateKeys!633 (t!356352 lt!1607077))))

(assert (=> d!1328418 (= (removePairForKey!601 (t!356352 lt!1607077) key!3918) lt!1607855)))

(declare-fun b!4403513 () Bool)

(assert (=> b!4403513 (= e!2741933 e!2741932)))

(declare-fun c!749804 () Bool)

(assert (=> b!4403513 (= c!749804 ((_ is Cons!49294) (t!356352 lt!1607077)))))

(assert (= (and d!1328418 c!749803) b!4403512))

(assert (= (and d!1328418 (not c!749803)) b!4403513))

(assert (= (and b!4403513 c!749804) b!4403514))

(assert (= (and b!4403513 (not c!749804)) b!4403515))

(declare-fun m!5068125 () Bool)

(assert (=> b!4403514 m!5068125))

(declare-fun m!5068129 () Bool)

(assert (=> d!1328418 m!5068129))

(assert (=> d!1328418 m!5068025))

(assert (=> b!4402542 d!1328418))

(declare-fun bs!729664 () Bool)

(declare-fun b!4403530 () Bool)

(assert (= bs!729664 (and b!4403530 b!4403165)))

(declare-fun lambda!149418 () Int)

(assert (=> bs!729664 (= (= (extractMap!692 (t!356353 (toList!3250 lt!1607074))) lt!1607665) (= lambda!149418 lambda!149372))))

(declare-fun bs!729666 () Bool)

(assert (= bs!729666 (and b!4403530 d!1328192)))

(assert (=> bs!729666 (= (= (extractMap!692 (t!356353 (toList!3250 lt!1607074))) lt!1607672) (= lambda!149418 lambda!149373))))

(declare-fun bs!729669 () Bool)

(assert (= bs!729669 (and b!4403530 b!4402719)))

(assert (=> bs!729669 (= (= (extractMap!692 (t!356353 (toList!3250 lt!1607074))) lt!1607393) (= lambda!149418 lambda!149308))))

(declare-fun bs!729671 () Bool)

(assert (= bs!729671 (and b!4403530 b!4402722)))

(assert (=> bs!729671 (= (= (extractMap!692 (t!356353 (toList!3250 lt!1607074))) lt!1607082) (= lambda!149418 lambda!149306))))

(declare-fun bs!729673 () Bool)

(assert (= bs!729673 (and b!4403530 d!1327986)))

(assert (=> bs!729673 (= (= (extractMap!692 (t!356353 (toList!3250 lt!1607074))) lt!1607400) (= lambda!149418 lambda!149309))))

(declare-fun bs!729675 () Bool)

(assert (= bs!729675 (and b!4403530 b!4403168)))

(assert (=> bs!729675 (= (= (extractMap!692 (t!356353 (toList!3250 lt!1607074))) (extractMap!692 (t!356353 (toList!3250 (+!881 lt!1607074 lt!1607073))))) (= lambda!149418 lambda!149369))))

(declare-fun bs!729676 () Bool)

(assert (= bs!729676 (and b!4403530 b!4403286)))

(assert (=> bs!729676 (= (= (extractMap!692 (t!356353 (toList!3250 lt!1607074))) (extractMap!692 (t!356353 (toList!3250 lm!1707)))) (= lambda!149418 lambda!149385))))

(declare-fun bs!729677 () Bool)

(assert (= bs!729677 (and b!4403530 b!4403347)))

(assert (=> bs!729677 (= (= (extractMap!692 (t!356353 (toList!3250 lt!1607074))) (extractMap!692 (t!356353 (t!356353 (toList!3250 lm!1707))))) (= lambda!149418 lambda!149402))))

(assert (=> bs!729676 (= (= (extractMap!692 (t!356353 (toList!3250 lt!1607074))) lt!1607723) (= lambda!149418 lambda!149386))))

(declare-fun bs!729678 () Bool)

(assert (= bs!729678 (and b!4403530 d!1328252)))

(assert (=> bs!729678 (= (= (extractMap!692 (t!356353 (toList!3250 lt!1607074))) lt!1607730) (= lambda!149418 lambda!149390))))

(declare-fun bs!729680 () Bool)

(assert (= bs!729680 (and b!4403530 b!4403350)))

(assert (=> bs!729680 (= (= (extractMap!692 (t!356353 (toList!3250 lt!1607074))) (extractMap!692 (t!356353 (t!356353 (toList!3250 lm!1707))))) (= lambda!149418 lambda!149401))))

(assert (=> bs!729677 (= (= (extractMap!692 (t!356353 (toList!3250 lt!1607074))) lt!1607771) (= lambda!149418 lambda!149403))))

(assert (=> bs!729664 (= (= (extractMap!692 (t!356353 (toList!3250 lt!1607074))) (extractMap!692 (t!356353 (toList!3250 (+!881 lt!1607074 lt!1607073))))) (= lambda!149418 lambda!149370))))

(declare-fun bs!729684 () Bool)

(assert (= bs!729684 (and b!4403530 b!4403289)))

(assert (=> bs!729684 (= (= (extractMap!692 (t!356353 (toList!3250 lt!1607074))) (extractMap!692 (t!356353 (toList!3250 lm!1707)))) (= lambda!149418 lambda!149384))))

(declare-fun bs!729686 () Bool)

(assert (= bs!729686 (and b!4403530 d!1328258)))

(assert (=> bs!729686 (= (= (extractMap!692 (t!356353 (toList!3250 lt!1607074))) lt!1607082) (= lambda!149418 lambda!149394))))

(declare-fun bs!729688 () Bool)

(assert (= bs!729688 (and b!4403530 d!1328022)))

(assert (=> bs!729688 (not (= lambda!149418 lambda!149320))))

(declare-fun bs!729690 () Bool)

(assert (= bs!729690 (and b!4403530 d!1328270)))

(assert (=> bs!729690 (= (= (extractMap!692 (t!356353 (toList!3250 lt!1607074))) lt!1607778) (= lambda!149418 lambda!149404))))

(assert (=> bs!729669 (= (= (extractMap!692 (t!356353 (toList!3250 lt!1607074))) lt!1607082) (= lambda!149418 lambda!149307))))

(assert (=> b!4403530 true))

(declare-fun bs!729697 () Bool)

(declare-fun b!4403527 () Bool)

(assert (= bs!729697 (and b!4403527 b!4403165)))

(declare-fun lambda!149421 () Int)

(assert (=> bs!729697 (= (= (extractMap!692 (t!356353 (toList!3250 lt!1607074))) lt!1607665) (= lambda!149421 lambda!149372))))

(declare-fun bs!729699 () Bool)

(assert (= bs!729699 (and b!4403527 d!1328192)))

(assert (=> bs!729699 (= (= (extractMap!692 (t!356353 (toList!3250 lt!1607074))) lt!1607672) (= lambda!149421 lambda!149373))))

(declare-fun bs!729701 () Bool)

(assert (= bs!729701 (and b!4403527 b!4402719)))

(assert (=> bs!729701 (= (= (extractMap!692 (t!356353 (toList!3250 lt!1607074))) lt!1607393) (= lambda!149421 lambda!149308))))

(declare-fun bs!729703 () Bool)

(assert (= bs!729703 (and b!4403527 b!4402722)))

(assert (=> bs!729703 (= (= (extractMap!692 (t!356353 (toList!3250 lt!1607074))) lt!1607082) (= lambda!149421 lambda!149306))))

(declare-fun bs!729705 () Bool)

(assert (= bs!729705 (and b!4403527 b!4403530)))

(assert (=> bs!729705 (= lambda!149421 lambda!149418)))

(declare-fun bs!729707 () Bool)

(assert (= bs!729707 (and b!4403527 d!1327986)))

(assert (=> bs!729707 (= (= (extractMap!692 (t!356353 (toList!3250 lt!1607074))) lt!1607400) (= lambda!149421 lambda!149309))))

(declare-fun bs!729709 () Bool)

(assert (= bs!729709 (and b!4403527 b!4403168)))

(assert (=> bs!729709 (= (= (extractMap!692 (t!356353 (toList!3250 lt!1607074))) (extractMap!692 (t!356353 (toList!3250 (+!881 lt!1607074 lt!1607073))))) (= lambda!149421 lambda!149369))))

(declare-fun bs!729711 () Bool)

(assert (= bs!729711 (and b!4403527 b!4403286)))

(assert (=> bs!729711 (= (= (extractMap!692 (t!356353 (toList!3250 lt!1607074))) (extractMap!692 (t!356353 (toList!3250 lm!1707)))) (= lambda!149421 lambda!149385))))

(declare-fun bs!729713 () Bool)

(assert (= bs!729713 (and b!4403527 b!4403347)))

(assert (=> bs!729713 (= (= (extractMap!692 (t!356353 (toList!3250 lt!1607074))) (extractMap!692 (t!356353 (t!356353 (toList!3250 lm!1707))))) (= lambda!149421 lambda!149402))))

(assert (=> bs!729711 (= (= (extractMap!692 (t!356353 (toList!3250 lt!1607074))) lt!1607723) (= lambda!149421 lambda!149386))))

(declare-fun bs!729714 () Bool)

(assert (= bs!729714 (and b!4403527 d!1328252)))

(assert (=> bs!729714 (= (= (extractMap!692 (t!356353 (toList!3250 lt!1607074))) lt!1607730) (= lambda!149421 lambda!149390))))

(declare-fun bs!729716 () Bool)

(assert (= bs!729716 (and b!4403527 b!4403350)))

(assert (=> bs!729716 (= (= (extractMap!692 (t!356353 (toList!3250 lt!1607074))) (extractMap!692 (t!356353 (t!356353 (toList!3250 lm!1707))))) (= lambda!149421 lambda!149401))))

(assert (=> bs!729713 (= (= (extractMap!692 (t!356353 (toList!3250 lt!1607074))) lt!1607771) (= lambda!149421 lambda!149403))))

(assert (=> bs!729697 (= (= (extractMap!692 (t!356353 (toList!3250 lt!1607074))) (extractMap!692 (t!356353 (toList!3250 (+!881 lt!1607074 lt!1607073))))) (= lambda!149421 lambda!149370))))

(declare-fun bs!729720 () Bool)

(assert (= bs!729720 (and b!4403527 b!4403289)))

(assert (=> bs!729720 (= (= (extractMap!692 (t!356353 (toList!3250 lt!1607074))) (extractMap!692 (t!356353 (toList!3250 lm!1707)))) (= lambda!149421 lambda!149384))))

(declare-fun bs!729722 () Bool)

(assert (= bs!729722 (and b!4403527 d!1328258)))

(assert (=> bs!729722 (= (= (extractMap!692 (t!356353 (toList!3250 lt!1607074))) lt!1607082) (= lambda!149421 lambda!149394))))

(declare-fun bs!729723 () Bool)

(assert (= bs!729723 (and b!4403527 d!1328022)))

(assert (=> bs!729723 (not (= lambda!149421 lambda!149320))))

(declare-fun bs!729724 () Bool)

(assert (= bs!729724 (and b!4403527 d!1328270)))

(assert (=> bs!729724 (= (= (extractMap!692 (t!356353 (toList!3250 lt!1607074))) lt!1607778) (= lambda!149421 lambda!149404))))

(assert (=> bs!729701 (= (= (extractMap!692 (t!356353 (toList!3250 lt!1607074))) lt!1607082) (= lambda!149421 lambda!149307))))

(assert (=> b!4403527 true))

(declare-fun lambda!149423 () Int)

(declare-fun lt!1607865 () ListMap!2493)

(assert (=> bs!729697 (= (= lt!1607865 lt!1607665) (= lambda!149423 lambda!149372))))

(assert (=> bs!729699 (= (= lt!1607865 lt!1607672) (= lambda!149423 lambda!149373))))

(assert (=> bs!729701 (= (= lt!1607865 lt!1607393) (= lambda!149423 lambda!149308))))

(assert (=> bs!729703 (= (= lt!1607865 lt!1607082) (= lambda!149423 lambda!149306))))

(assert (=> bs!729705 (= (= lt!1607865 (extractMap!692 (t!356353 (toList!3250 lt!1607074)))) (= lambda!149423 lambda!149418))))

(assert (=> bs!729707 (= (= lt!1607865 lt!1607400) (= lambda!149423 lambda!149309))))

(assert (=> bs!729709 (= (= lt!1607865 (extractMap!692 (t!356353 (toList!3250 (+!881 lt!1607074 lt!1607073))))) (= lambda!149423 lambda!149369))))

(assert (=> bs!729711 (= (= lt!1607865 (extractMap!692 (t!356353 (toList!3250 lm!1707)))) (= lambda!149423 lambda!149385))))

(assert (=> b!4403527 (= (= lt!1607865 (extractMap!692 (t!356353 (toList!3250 lt!1607074)))) (= lambda!149423 lambda!149421))))

(assert (=> bs!729713 (= (= lt!1607865 (extractMap!692 (t!356353 (t!356353 (toList!3250 lm!1707))))) (= lambda!149423 lambda!149402))))

(assert (=> bs!729711 (= (= lt!1607865 lt!1607723) (= lambda!149423 lambda!149386))))

(assert (=> bs!729714 (= (= lt!1607865 lt!1607730) (= lambda!149423 lambda!149390))))

(assert (=> bs!729716 (= (= lt!1607865 (extractMap!692 (t!356353 (t!356353 (toList!3250 lm!1707))))) (= lambda!149423 lambda!149401))))

(assert (=> bs!729713 (= (= lt!1607865 lt!1607771) (= lambda!149423 lambda!149403))))

(assert (=> bs!729697 (= (= lt!1607865 (extractMap!692 (t!356353 (toList!3250 (+!881 lt!1607074 lt!1607073))))) (= lambda!149423 lambda!149370))))

(assert (=> bs!729720 (= (= lt!1607865 (extractMap!692 (t!356353 (toList!3250 lm!1707)))) (= lambda!149423 lambda!149384))))

(assert (=> bs!729722 (= (= lt!1607865 lt!1607082) (= lambda!149423 lambda!149394))))

(assert (=> bs!729723 (not (= lambda!149423 lambda!149320))))

(assert (=> bs!729724 (= (= lt!1607865 lt!1607778) (= lambda!149423 lambda!149404))))

(assert (=> bs!729701 (= (= lt!1607865 lt!1607082) (= lambda!149423 lambda!149307))))

(assert (=> b!4403527 true))

(declare-fun bs!729734 () Bool)

(declare-fun d!1328424 () Bool)

(assert (= bs!729734 (and d!1328424 b!4403165)))

(declare-fun lt!1607872 () ListMap!2493)

(declare-fun lambda!149425 () Int)

(assert (=> bs!729734 (= (= lt!1607872 lt!1607665) (= lambda!149425 lambda!149372))))

(declare-fun bs!729735 () Bool)

(assert (= bs!729735 (and d!1328424 d!1328192)))

(assert (=> bs!729735 (= (= lt!1607872 lt!1607672) (= lambda!149425 lambda!149373))))

(declare-fun bs!729736 () Bool)

(assert (= bs!729736 (and d!1328424 b!4402719)))

(assert (=> bs!729736 (= (= lt!1607872 lt!1607393) (= lambda!149425 lambda!149308))))

(declare-fun bs!729737 () Bool)

(assert (= bs!729737 (and d!1328424 b!4402722)))

(assert (=> bs!729737 (= (= lt!1607872 lt!1607082) (= lambda!149425 lambda!149306))))

(declare-fun bs!729738 () Bool)

(assert (= bs!729738 (and d!1328424 b!4403530)))

(assert (=> bs!729738 (= (= lt!1607872 (extractMap!692 (t!356353 (toList!3250 lt!1607074)))) (= lambda!149425 lambda!149418))))

(declare-fun bs!729739 () Bool)

(assert (= bs!729739 (and d!1328424 d!1327986)))

(assert (=> bs!729739 (= (= lt!1607872 lt!1607400) (= lambda!149425 lambda!149309))))

(declare-fun bs!729740 () Bool)

(assert (= bs!729740 (and d!1328424 b!4403168)))

(assert (=> bs!729740 (= (= lt!1607872 (extractMap!692 (t!356353 (toList!3250 (+!881 lt!1607074 lt!1607073))))) (= lambda!149425 lambda!149369))))

(declare-fun bs!729741 () Bool)

(assert (= bs!729741 (and d!1328424 b!4403286)))

(assert (=> bs!729741 (= (= lt!1607872 (extractMap!692 (t!356353 (toList!3250 lm!1707)))) (= lambda!149425 lambda!149385))))

(declare-fun bs!729742 () Bool)

(assert (= bs!729742 (and d!1328424 b!4403527)))

(assert (=> bs!729742 (= (= lt!1607872 (extractMap!692 (t!356353 (toList!3250 lt!1607074)))) (= lambda!149425 lambda!149421))))

(declare-fun bs!729743 () Bool)

(assert (= bs!729743 (and d!1328424 b!4403347)))

(assert (=> bs!729743 (= (= lt!1607872 (extractMap!692 (t!356353 (t!356353 (toList!3250 lm!1707))))) (= lambda!149425 lambda!149402))))

(assert (=> bs!729742 (= (= lt!1607872 lt!1607865) (= lambda!149425 lambda!149423))))

(assert (=> bs!729741 (= (= lt!1607872 lt!1607723) (= lambda!149425 lambda!149386))))

(declare-fun bs!729744 () Bool)

(assert (= bs!729744 (and d!1328424 d!1328252)))

(assert (=> bs!729744 (= (= lt!1607872 lt!1607730) (= lambda!149425 lambda!149390))))

(declare-fun bs!729745 () Bool)

(assert (= bs!729745 (and d!1328424 b!4403350)))

(assert (=> bs!729745 (= (= lt!1607872 (extractMap!692 (t!356353 (t!356353 (toList!3250 lm!1707))))) (= lambda!149425 lambda!149401))))

(assert (=> bs!729743 (= (= lt!1607872 lt!1607771) (= lambda!149425 lambda!149403))))

(assert (=> bs!729734 (= (= lt!1607872 (extractMap!692 (t!356353 (toList!3250 (+!881 lt!1607074 lt!1607073))))) (= lambda!149425 lambda!149370))))

(declare-fun bs!729746 () Bool)

(assert (= bs!729746 (and d!1328424 b!4403289)))

(assert (=> bs!729746 (= (= lt!1607872 (extractMap!692 (t!356353 (toList!3250 lm!1707)))) (= lambda!149425 lambda!149384))))

(declare-fun bs!729747 () Bool)

(assert (= bs!729747 (and d!1328424 d!1328258)))

(assert (=> bs!729747 (= (= lt!1607872 lt!1607082) (= lambda!149425 lambda!149394))))

(declare-fun bs!729748 () Bool)

(assert (= bs!729748 (and d!1328424 d!1328022)))

(assert (=> bs!729748 (not (= lambda!149425 lambda!149320))))

(declare-fun bs!729749 () Bool)

(assert (= bs!729749 (and d!1328424 d!1328270)))

(assert (=> bs!729749 (= (= lt!1607872 lt!1607778) (= lambda!149425 lambda!149404))))

(assert (=> bs!729736 (= (= lt!1607872 lt!1607082) (= lambda!149425 lambda!149307))))

(assert (=> d!1328424 true))

(declare-fun bm!306456 () Bool)

(declare-fun c!749808 () Bool)

(declare-fun call!306463 () Bool)

(assert (=> bm!306456 (= call!306463 (forall!9380 (toList!3249 (extractMap!692 (t!356353 (toList!3250 lt!1607074)))) (ite c!749808 lambda!149418 lambda!149423)))))

(declare-fun call!306461 () Bool)

(declare-fun bm!306457 () Bool)

(assert (=> bm!306457 (= call!306461 (forall!9380 (toList!3249 (extractMap!692 (t!356353 (toList!3250 lt!1607074)))) (ite c!749808 lambda!149418 lambda!149423)))))

(declare-fun e!2741940 () Bool)

(assert (=> d!1328424 e!2741940))

(declare-fun res!1816572 () Bool)

(assert (=> d!1328424 (=> (not res!1816572) (not e!2741940))))

(assert (=> d!1328424 (= res!1816572 (forall!9380 (_2!27746 (h!54924 (toList!3250 lt!1607074))) lambda!149425))))

(declare-fun e!2741942 () ListMap!2493)

(assert (=> d!1328424 (= lt!1607872 e!2741942)))

(assert (=> d!1328424 (= c!749808 ((_ is Nil!49294) (_2!27746 (h!54924 (toList!3250 lt!1607074)))))))

(assert (=> d!1328424 (noDuplicateKeys!633 (_2!27746 (h!54924 (toList!3250 lt!1607074))))))

(assert (=> d!1328424 (= (addToMapMapFromBucket!299 (_2!27746 (h!54924 (toList!3250 lt!1607074))) (extractMap!692 (t!356353 (toList!3250 lt!1607074)))) lt!1607872)))

(assert (=> b!4403527 (= e!2741942 lt!1607865)))

(declare-fun lt!1607876 () ListMap!2493)

(assert (=> b!4403527 (= lt!1607876 (+!882 (extractMap!692 (t!356353 (toList!3250 lt!1607074))) (h!54923 (_2!27746 (h!54924 (toList!3250 lt!1607074))))))))

(assert (=> b!4403527 (= lt!1607865 (addToMapMapFromBucket!299 (t!356352 (_2!27746 (h!54924 (toList!3250 lt!1607074)))) (+!882 (extractMap!692 (t!356353 (toList!3250 lt!1607074))) (h!54923 (_2!27746 (h!54924 (toList!3250 lt!1607074)))))))))

(declare-fun lt!1607883 () Unit!79009)

(declare-fun call!306462 () Unit!79009)

(assert (=> b!4403527 (= lt!1607883 call!306462)))

(assert (=> b!4403527 (forall!9380 (toList!3249 (extractMap!692 (t!356353 (toList!3250 lt!1607074)))) lambda!149421)))

(declare-fun lt!1607878 () Unit!79009)

(assert (=> b!4403527 (= lt!1607878 lt!1607883)))

(assert (=> b!4403527 (forall!9380 (toList!3249 lt!1607876) lambda!149423)))

(declare-fun lt!1607866 () Unit!79009)

(declare-fun Unit!79148 () Unit!79009)

(assert (=> b!4403527 (= lt!1607866 Unit!79148)))

(assert (=> b!4403527 (forall!9380 (t!356352 (_2!27746 (h!54924 (toList!3250 lt!1607074)))) lambda!149423)))

(declare-fun lt!1607868 () Unit!79009)

(declare-fun Unit!79149 () Unit!79009)

(assert (=> b!4403527 (= lt!1607868 Unit!79149)))

(declare-fun lt!1607867 () Unit!79009)

(declare-fun Unit!79150 () Unit!79009)

(assert (=> b!4403527 (= lt!1607867 Unit!79150)))

(declare-fun lt!1607863 () Unit!79009)

(assert (=> b!4403527 (= lt!1607863 (forallContained!2015 (toList!3249 lt!1607876) lambda!149423 (h!54923 (_2!27746 (h!54924 (toList!3250 lt!1607074))))))))

(assert (=> b!4403527 (contains!11691 lt!1607876 (_1!27745 (h!54923 (_2!27746 (h!54924 (toList!3250 lt!1607074))))))))

(declare-fun lt!1607882 () Unit!79009)

(declare-fun Unit!79151 () Unit!79009)

(assert (=> b!4403527 (= lt!1607882 Unit!79151)))

(assert (=> b!4403527 (contains!11691 lt!1607865 (_1!27745 (h!54923 (_2!27746 (h!54924 (toList!3250 lt!1607074))))))))

(declare-fun lt!1607879 () Unit!79009)

(declare-fun Unit!79152 () Unit!79009)

(assert (=> b!4403527 (= lt!1607879 Unit!79152)))

(assert (=> b!4403527 (forall!9380 (_2!27746 (h!54924 (toList!3250 lt!1607074))) lambda!149423)))

(declare-fun lt!1607873 () Unit!79009)

(declare-fun Unit!79153 () Unit!79009)

(assert (=> b!4403527 (= lt!1607873 Unit!79153)))

(assert (=> b!4403527 (forall!9380 (toList!3249 lt!1607876) lambda!149423)))

(declare-fun lt!1607870 () Unit!79009)

(declare-fun Unit!79154 () Unit!79009)

(assert (=> b!4403527 (= lt!1607870 Unit!79154)))

(declare-fun lt!1607881 () Unit!79009)

(declare-fun Unit!79155 () Unit!79009)

(assert (=> b!4403527 (= lt!1607881 Unit!79155)))

(declare-fun lt!1607875 () Unit!79009)

(assert (=> b!4403527 (= lt!1607875 (addForallContainsKeyThenBeforeAdding!133 (extractMap!692 (t!356353 (toList!3250 lt!1607074))) lt!1607865 (_1!27745 (h!54923 (_2!27746 (h!54924 (toList!3250 lt!1607074))))) (_2!27745 (h!54923 (_2!27746 (h!54924 (toList!3250 lt!1607074)))))))))

(assert (=> b!4403527 call!306461))

(declare-fun lt!1607880 () Unit!79009)

(assert (=> b!4403527 (= lt!1607880 lt!1607875)))

(assert (=> b!4403527 (forall!9380 (toList!3249 (extractMap!692 (t!356353 (toList!3250 lt!1607074)))) lambda!149423)))

(declare-fun lt!1607877 () Unit!79009)

(declare-fun Unit!79156 () Unit!79009)

(assert (=> b!4403527 (= lt!1607877 Unit!79156)))

(declare-fun res!1816570 () Bool)

(assert (=> b!4403527 (= res!1816570 (forall!9380 (_2!27746 (h!54924 (toList!3250 lt!1607074))) lambda!149423))))

(declare-fun e!2741941 () Bool)

(assert (=> b!4403527 (=> (not res!1816570) (not e!2741941))))

(assert (=> b!4403527 e!2741941))

(declare-fun lt!1607874 () Unit!79009)

(declare-fun Unit!79157 () Unit!79009)

(assert (=> b!4403527 (= lt!1607874 Unit!79157)))

(declare-fun b!4403528 () Bool)

(assert (=> b!4403528 (= e!2741940 (invariantList!754 (toList!3249 lt!1607872)))))

(declare-fun b!4403529 () Bool)

(assert (=> b!4403529 (= e!2741941 call!306463)))

(declare-fun bm!306458 () Bool)

(assert (=> bm!306458 (= call!306462 (lemmaContainsAllItsOwnKeys!133 (extractMap!692 (t!356353 (toList!3250 lt!1607074)))))))

(assert (=> b!4403530 (= e!2741942 (extractMap!692 (t!356353 (toList!3250 lt!1607074))))))

(declare-fun lt!1607871 () Unit!79009)

(assert (=> b!4403530 (= lt!1607871 call!306462)))

(assert (=> b!4403530 call!306461))

(declare-fun lt!1607869 () Unit!79009)

(assert (=> b!4403530 (= lt!1607869 lt!1607871)))

(assert (=> b!4403530 call!306463))

(declare-fun lt!1607864 () Unit!79009)

(declare-fun Unit!79158 () Unit!79009)

(assert (=> b!4403530 (= lt!1607864 Unit!79158)))

(declare-fun b!4403531 () Bool)

(declare-fun res!1816571 () Bool)

(assert (=> b!4403531 (=> (not res!1816571) (not e!2741940))))

(assert (=> b!4403531 (= res!1816571 (forall!9380 (toList!3249 (extractMap!692 (t!356353 (toList!3250 lt!1607074)))) lambda!149425))))

(assert (= (and d!1328424 c!749808) b!4403530))

(assert (= (and d!1328424 (not c!749808)) b!4403527))

(assert (= (and b!4403527 res!1816570) b!4403529))

(assert (= (or b!4403530 b!4403527) bm!306458))

(assert (= (or b!4403530 b!4403527) bm!306457))

(assert (= (or b!4403530 b!4403529) bm!306456))

(assert (= (and d!1328424 res!1816572) b!4403531))

(assert (= (and b!4403531 res!1816571) b!4403528))

(declare-fun m!5068193 () Bool)

(assert (=> bm!306456 m!5068193))

(declare-fun m!5068195 () Bool)

(assert (=> b!4403531 m!5068195))

(declare-fun m!5068197 () Bool)

(assert (=> b!4403527 m!5068197))

(declare-fun m!5068199 () Bool)

(assert (=> b!4403527 m!5068199))

(declare-fun m!5068201 () Bool)

(assert (=> b!4403527 m!5068201))

(declare-fun m!5068203 () Bool)

(assert (=> b!4403527 m!5068203))

(assert (=> b!4403527 m!5066867))

(declare-fun m!5068205 () Bool)

(assert (=> b!4403527 m!5068205))

(declare-fun m!5068207 () Bool)

(assert (=> b!4403527 m!5068207))

(declare-fun m!5068209 () Bool)

(assert (=> b!4403527 m!5068209))

(declare-fun m!5068211 () Bool)

(assert (=> b!4403527 m!5068211))

(assert (=> b!4403527 m!5068201))

(declare-fun m!5068213 () Bool)

(assert (=> b!4403527 m!5068213))

(assert (=> b!4403527 m!5068209))

(declare-fun m!5068215 () Bool)

(assert (=> b!4403527 m!5068215))

(declare-fun m!5068217 () Bool)

(assert (=> b!4403527 m!5068217))

(assert (=> b!4403527 m!5066867))

(assert (=> b!4403527 m!5068215))

(declare-fun m!5068219 () Bool)

(assert (=> d!1328424 m!5068219))

(declare-fun m!5068221 () Bool)

(assert (=> d!1328424 m!5068221))

(declare-fun m!5068223 () Bool)

(assert (=> b!4403528 m!5068223))

(assert (=> bm!306457 m!5068193))

(assert (=> bm!306458 m!5066867))

(declare-fun m!5068225 () Bool)

(assert (=> bm!306458 m!5068225))

(assert (=> b!4402734 d!1328424))

(declare-fun bs!729751 () Bool)

(declare-fun d!1328438 () Bool)

(assert (= bs!729751 (and d!1328438 d!1328284)))

(declare-fun lambda!149426 () Int)

(assert (=> bs!729751 (= lambda!149426 lambda!149405)))

(declare-fun bs!729752 () Bool)

(assert (= bs!729752 (and d!1328438 d!1327978)))

(assert (=> bs!729752 (= lambda!149426 lambda!149239)))

(declare-fun bs!729753 () Bool)

(assert (= bs!729753 (and d!1328438 d!1328200)))

(assert (=> bs!729753 (= lambda!149426 lambda!149375)))

(declare-fun bs!729754 () Bool)

(assert (= bs!729754 (and d!1328438 d!1328020)))

(assert (=> bs!729754 (not (= lambda!149426 lambda!149317))))

(declare-fun bs!729755 () Bool)

(assert (= bs!729755 (and d!1328438 d!1328032)))

(assert (=> bs!729755 (= lambda!149426 lambda!149321)))

(declare-fun bs!729756 () Bool)

(assert (= bs!729756 (and d!1328438 d!1328006)))

(assert (=> bs!729756 (= lambda!149426 lambda!149312)))

(declare-fun bs!729757 () Bool)

(assert (= bs!729757 (and d!1328438 d!1328008)))

(assert (=> bs!729757 (= lambda!149426 lambda!149313)))

(declare-fun bs!729758 () Bool)

(assert (= bs!729758 (and d!1328438 d!1328082)))

(assert (=> bs!729758 (= lambda!149426 lambda!149334)))

(declare-fun bs!729759 () Bool)

(assert (= bs!729759 (and d!1328438 start!428144)))

(assert (=> bs!729759 (= lambda!149426 lambda!149221)))

(declare-fun bs!729760 () Bool)

(assert (= bs!729760 (and d!1328438 d!1328010)))

(assert (=> bs!729760 (= lambda!149426 lambda!149314)))

(declare-fun bs!729761 () Bool)

(assert (= bs!729761 (and d!1328438 d!1327982)))

(assert (=> bs!729761 (= lambda!149426 lambda!149242)))

(declare-fun lt!1607893 () ListMap!2493)

(assert (=> d!1328438 (invariantList!754 (toList!3249 lt!1607893))))

(declare-fun e!2741948 () ListMap!2493)

(assert (=> d!1328438 (= lt!1607893 e!2741948)))

(declare-fun c!749810 () Bool)

(assert (=> d!1328438 (= c!749810 ((_ is Cons!49295) (t!356353 (toList!3250 lt!1607074))))))

(assert (=> d!1328438 (forall!9378 (t!356353 (toList!3250 lt!1607074)) lambda!149426)))

(assert (=> d!1328438 (= (extractMap!692 (t!356353 (toList!3250 lt!1607074))) lt!1607893)))

(declare-fun b!4403540 () Bool)

(assert (=> b!4403540 (= e!2741948 (addToMapMapFromBucket!299 (_2!27746 (h!54924 (t!356353 (toList!3250 lt!1607074)))) (extractMap!692 (t!356353 (t!356353 (toList!3250 lt!1607074))))))))

(declare-fun b!4403541 () Bool)

(assert (=> b!4403541 (= e!2741948 (ListMap!2494 Nil!49294))))

(assert (= (and d!1328438 c!749810) b!4403540))

(assert (= (and d!1328438 (not c!749810)) b!4403541))

(declare-fun m!5068227 () Bool)

(assert (=> d!1328438 m!5068227))

(declare-fun m!5068229 () Bool)

(assert (=> d!1328438 m!5068229))

(declare-fun m!5068231 () Bool)

(assert (=> b!4403540 m!5068231))

(assert (=> b!4403540 m!5068231))

(declare-fun m!5068233 () Bool)

(assert (=> b!4403540 m!5068233))

(assert (=> b!4402734 d!1328438))

(declare-fun d!1328440 () Bool)

(assert (=> d!1328440 (dynLambda!20770 lambda!149221 lt!1607081)))

(assert (=> d!1328440 true))

(declare-fun _$7!1625 () Unit!79009)

(assert (=> d!1328440 (= (choose!27628 (toList!3250 lm!1707) lambda!149221 lt!1607081) _$7!1625)))

(declare-fun b_lambda!140075 () Bool)

(assert (=> (not b_lambda!140075) (not d!1328440)))

(declare-fun bs!729762 () Bool)

(assert (= bs!729762 d!1328440))

(assert (=> bs!729762 m!5066469))

(assert (=> d!1327914 d!1328440))

(assert (=> d!1327914 d!1328014))

(assert (=> b!4402634 d!1328398))

(assert (=> b!4402634 d!1328400))

(declare-fun d!1328442 () Bool)

(declare-fun res!1816579 () Bool)

(declare-fun e!2741949 () Bool)

(assert (=> d!1328442 (=> res!1816579 e!2741949)))

(assert (=> d!1328442 (= res!1816579 ((_ is Nil!49294) newBucket!200))))

(assert (=> d!1328442 (= (forall!9380 newBucket!200 lambda!149320) e!2741949)))

(declare-fun b!4403542 () Bool)

(declare-fun e!2741950 () Bool)

(assert (=> b!4403542 (= e!2741949 e!2741950)))

(declare-fun res!1816580 () Bool)

(assert (=> b!4403542 (=> (not res!1816580) (not e!2741950))))

(assert (=> b!4403542 (= res!1816580 (dynLambda!20772 lambda!149320 (h!54923 newBucket!200)))))

(declare-fun b!4403543 () Bool)

(assert (=> b!4403543 (= e!2741950 (forall!9380 (t!356352 newBucket!200) lambda!149320))))

(assert (= (and d!1328442 (not res!1816579)) b!4403542))

(assert (= (and b!4403542 res!1816580) b!4403543))

(declare-fun b_lambda!140077 () Bool)

(assert (=> (not b_lambda!140077) (not b!4403542)))

(declare-fun m!5068235 () Bool)

(assert (=> b!4403542 m!5068235))

(declare-fun m!5068237 () Bool)

(assert (=> b!4403543 m!5068237))

(assert (=> d!1328022 d!1328442))

(declare-fun b!4403544 () Bool)

(assert (=> b!4403544 false))

(declare-fun lt!1607895 () Unit!79009)

(declare-fun lt!1607900 () Unit!79009)

(assert (=> b!4403544 (= lt!1607895 lt!1607900)))

(assert (=> b!4403544 (containsKey!951 (toList!3249 lt!1607393) (_1!27745 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707))))))))

(assert (=> b!4403544 (= lt!1607900 (lemmaInGetKeysListThenContainsKey!199 (toList!3249 lt!1607393) (_1!27745 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707)))))))))

(declare-fun e!2741952 () Unit!79009)

(declare-fun Unit!79163 () Unit!79009)

(assert (=> b!4403544 (= e!2741952 Unit!79163)))

(declare-fun b!4403545 () Bool)

(declare-fun e!2741953 () Bool)

(assert (=> b!4403545 (= e!2741953 (not (contains!11695 (keys!16757 lt!1607393) (_1!27745 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707))))))))))

(declare-fun d!1328444 () Bool)

(declare-fun e!2741955 () Bool)

(assert (=> d!1328444 e!2741955))

(declare-fun res!1816581 () Bool)

(assert (=> d!1328444 (=> res!1816581 e!2741955)))

(assert (=> d!1328444 (= res!1816581 e!2741953)))

(declare-fun res!1816582 () Bool)

(assert (=> d!1328444 (=> (not res!1816582) (not e!2741953))))

(declare-fun lt!1607897 () Bool)

(assert (=> d!1328444 (= res!1816582 (not lt!1607897))))

(declare-fun lt!1607896 () Bool)

(assert (=> d!1328444 (= lt!1607897 lt!1607896)))

(declare-fun lt!1607899 () Unit!79009)

(declare-fun e!2741951 () Unit!79009)

(assert (=> d!1328444 (= lt!1607899 e!2741951)))

(declare-fun c!749811 () Bool)

(assert (=> d!1328444 (= c!749811 lt!1607896)))

(assert (=> d!1328444 (= lt!1607896 (containsKey!951 (toList!3249 lt!1607393) (_1!27745 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707)))))))))

(assert (=> d!1328444 (= (contains!11691 lt!1607393 (_1!27745 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707)))))) lt!1607897)))

(declare-fun b!4403546 () Bool)

(declare-fun Unit!79164 () Unit!79009)

(assert (=> b!4403546 (= e!2741952 Unit!79164)))

(declare-fun bm!306459 () Bool)

(declare-fun call!306464 () Bool)

(declare-fun e!2741954 () List!49421)

(assert (=> bm!306459 (= call!306464 (contains!11695 e!2741954 (_1!27745 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707)))))))))

(declare-fun c!749812 () Bool)

(assert (=> bm!306459 (= c!749812 c!749811)))

(declare-fun b!4403547 () Bool)

(declare-fun e!2741956 () Bool)

(assert (=> b!4403547 (= e!2741956 (contains!11695 (keys!16757 lt!1607393) (_1!27745 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707)))))))))

(declare-fun b!4403548 () Bool)

(assert (=> b!4403548 (= e!2741951 e!2741952)))

(declare-fun c!749813 () Bool)

(assert (=> b!4403548 (= c!749813 call!306464)))

(declare-fun b!4403549 () Bool)

(assert (=> b!4403549 (= e!2741954 (getKeysList!201 (toList!3249 lt!1607393)))))

(declare-fun b!4403550 () Bool)

(assert (=> b!4403550 (= e!2741955 e!2741956)))

(declare-fun res!1816583 () Bool)

(assert (=> b!4403550 (=> (not res!1816583) (not e!2741956))))

(assert (=> b!4403550 (= res!1816583 (isDefined!7914 (getValueByKey!607 (toList!3249 lt!1607393) (_1!27745 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707))))))))))

(declare-fun b!4403551 () Bool)

(assert (=> b!4403551 (= e!2741954 (keys!16757 lt!1607393))))

(declare-fun b!4403552 () Bool)

(declare-fun lt!1607894 () Unit!79009)

(assert (=> b!4403552 (= e!2741951 lt!1607894)))

(declare-fun lt!1607901 () Unit!79009)

(assert (=> b!4403552 (= lt!1607901 (lemmaContainsKeyImpliesGetValueByKeyDefined!517 (toList!3249 lt!1607393) (_1!27745 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707)))))))))

(assert (=> b!4403552 (isDefined!7914 (getValueByKey!607 (toList!3249 lt!1607393) (_1!27745 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707)))))))))

(declare-fun lt!1607898 () Unit!79009)

(assert (=> b!4403552 (= lt!1607898 lt!1607901)))

(assert (=> b!4403552 (= lt!1607894 (lemmaInListThenGetKeysListContains!198 (toList!3249 lt!1607393) (_1!27745 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707)))))))))

(assert (=> b!4403552 call!306464))

(assert (= (and d!1328444 c!749811) b!4403552))

(assert (= (and d!1328444 (not c!749811)) b!4403548))

(assert (= (and b!4403548 c!749813) b!4403544))

(assert (= (and b!4403548 (not c!749813)) b!4403546))

(assert (= (or b!4403552 b!4403548) bm!306459))

(assert (= (and bm!306459 c!749812) b!4403549))

(assert (= (and bm!306459 (not c!749812)) b!4403551))

(assert (= (and d!1328444 res!1816582) b!4403545))

(assert (= (and d!1328444 (not res!1816581)) b!4403550))

(assert (= (and b!4403550 res!1816583) b!4403547))

(declare-fun m!5068239 () Bool)

(assert (=> b!4403545 m!5068239))

(assert (=> b!4403545 m!5068239))

(declare-fun m!5068241 () Bool)

(assert (=> b!4403545 m!5068241))

(declare-fun m!5068243 () Bool)

(assert (=> bm!306459 m!5068243))

(assert (=> b!4403551 m!5068239))

(declare-fun m!5068245 () Bool)

(assert (=> b!4403550 m!5068245))

(assert (=> b!4403550 m!5068245))

(declare-fun m!5068247 () Bool)

(assert (=> b!4403550 m!5068247))

(declare-fun m!5068249 () Bool)

(assert (=> b!4403552 m!5068249))

(assert (=> b!4403552 m!5068245))

(assert (=> b!4403552 m!5068245))

(assert (=> b!4403552 m!5068247))

(declare-fun m!5068251 () Bool)

(assert (=> b!4403552 m!5068251))

(declare-fun m!5068253 () Bool)

(assert (=> d!1328444 m!5068253))

(assert (=> b!4403547 m!5068239))

(assert (=> b!4403547 m!5068239))

(assert (=> b!4403547 m!5068241))

(assert (=> b!4403544 m!5068253))

(declare-fun m!5068255 () Bool)

(assert (=> b!4403544 m!5068255))

(declare-fun m!5068257 () Bool)

(assert (=> b!4403549 m!5068257))

(assert (=> b!4402719 d!1328444))

(declare-fun bs!729764 () Bool)

(declare-fun d!1328446 () Bool)

(assert (= bs!729764 (and d!1328446 b!4403165)))

(declare-fun lambda!149431 () Int)

(assert (=> bs!729764 (= (= lt!1607393 lt!1607665) (= lambda!149431 lambda!149372))))

(declare-fun bs!729765 () Bool)

(assert (= bs!729765 (and d!1328446 d!1328192)))

(assert (=> bs!729765 (= (= lt!1607393 lt!1607672) (= lambda!149431 lambda!149373))))

(declare-fun bs!729766 () Bool)

(assert (= bs!729766 (and d!1328446 b!4402719)))

(assert (=> bs!729766 (= lambda!149431 lambda!149308)))

(declare-fun bs!729767 () Bool)

(assert (= bs!729767 (and d!1328446 b!4402722)))

(assert (=> bs!729767 (= (= lt!1607393 lt!1607082) (= lambda!149431 lambda!149306))))

(declare-fun bs!729768 () Bool)

(assert (= bs!729768 (and d!1328446 b!4403530)))

(assert (=> bs!729768 (= (= lt!1607393 (extractMap!692 (t!356353 (toList!3250 lt!1607074)))) (= lambda!149431 lambda!149418))))

(declare-fun bs!729769 () Bool)

(assert (= bs!729769 (and d!1328446 d!1327986)))

(assert (=> bs!729769 (= (= lt!1607393 lt!1607400) (= lambda!149431 lambda!149309))))

(declare-fun bs!729770 () Bool)

(assert (= bs!729770 (and d!1328446 b!4403168)))

(assert (=> bs!729770 (= (= lt!1607393 (extractMap!692 (t!356353 (toList!3250 (+!881 lt!1607074 lt!1607073))))) (= lambda!149431 lambda!149369))))

(declare-fun bs!729771 () Bool)

(assert (= bs!729771 (and d!1328446 b!4403286)))

(assert (=> bs!729771 (= (= lt!1607393 (extractMap!692 (t!356353 (toList!3250 lm!1707)))) (= lambda!149431 lambda!149385))))

(declare-fun bs!729772 () Bool)

(assert (= bs!729772 (and d!1328446 b!4403527)))

(assert (=> bs!729772 (= (= lt!1607393 (extractMap!692 (t!356353 (toList!3250 lt!1607074)))) (= lambda!149431 lambda!149421))))

(declare-fun bs!729773 () Bool)

(assert (= bs!729773 (and d!1328446 b!4403347)))

(assert (=> bs!729773 (= (= lt!1607393 (extractMap!692 (t!356353 (t!356353 (toList!3250 lm!1707))))) (= lambda!149431 lambda!149402))))

(assert (=> bs!729772 (= (= lt!1607393 lt!1607865) (= lambda!149431 lambda!149423))))

(assert (=> bs!729771 (= (= lt!1607393 lt!1607723) (= lambda!149431 lambda!149386))))

(declare-fun bs!729774 () Bool)

(assert (= bs!729774 (and d!1328446 d!1328252)))

(assert (=> bs!729774 (= (= lt!1607393 lt!1607730) (= lambda!149431 lambda!149390))))

(declare-fun bs!729775 () Bool)

(assert (= bs!729775 (and d!1328446 b!4403350)))

(assert (=> bs!729775 (= (= lt!1607393 (extractMap!692 (t!356353 (t!356353 (toList!3250 lm!1707))))) (= lambda!149431 lambda!149401))))

(assert (=> bs!729773 (= (= lt!1607393 lt!1607771) (= lambda!149431 lambda!149403))))

(assert (=> bs!729764 (= (= lt!1607393 (extractMap!692 (t!356353 (toList!3250 (+!881 lt!1607074 lt!1607073))))) (= lambda!149431 lambda!149370))))

(declare-fun bs!729776 () Bool)

(assert (= bs!729776 (and d!1328446 b!4403289)))

(assert (=> bs!729776 (= (= lt!1607393 (extractMap!692 (t!356353 (toList!3250 lm!1707)))) (= lambda!149431 lambda!149384))))

(declare-fun bs!729777 () Bool)

(assert (= bs!729777 (and d!1328446 d!1328424)))

(assert (=> bs!729777 (= (= lt!1607393 lt!1607872) (= lambda!149431 lambda!149425))))

(declare-fun bs!729778 () Bool)

(assert (= bs!729778 (and d!1328446 d!1328258)))

(assert (=> bs!729778 (= (= lt!1607393 lt!1607082) (= lambda!149431 lambda!149394))))

(declare-fun bs!729779 () Bool)

(assert (= bs!729779 (and d!1328446 d!1328022)))

(assert (=> bs!729779 (not (= lambda!149431 lambda!149320))))

(declare-fun bs!729780 () Bool)

(assert (= bs!729780 (and d!1328446 d!1328270)))

(assert (=> bs!729780 (= (= lt!1607393 lt!1607778) (= lambda!149431 lambda!149404))))

(assert (=> bs!729766 (= (= lt!1607393 lt!1607082) (= lambda!149431 lambda!149307))))

(assert (=> d!1328446 true))

(assert (=> d!1328446 (forall!9380 (toList!3249 lt!1607082) lambda!149431)))

(declare-fun lt!1607910 () Unit!79009)

(declare-fun choose!27653 (ListMap!2493 ListMap!2493 K!10650 V!10896) Unit!79009)

(assert (=> d!1328446 (= lt!1607910 (choose!27653 lt!1607082 lt!1607393 (_1!27745 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707))))) (_2!27745 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707)))))))))

(assert (=> d!1328446 (forall!9380 (toList!3249 (+!882 lt!1607082 (tuple2!48903 (_1!27745 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707))))) (_2!27745 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707)))))))) lambda!149431)))

(assert (=> d!1328446 (= (addForallContainsKeyThenBeforeAdding!133 lt!1607082 lt!1607393 (_1!27745 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707))))) (_2!27745 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707)))))) lt!1607910)))

(declare-fun bs!729781 () Bool)

(assert (= bs!729781 d!1328446))

(declare-fun m!5068297 () Bool)

(assert (=> bs!729781 m!5068297))

(declare-fun m!5068299 () Bool)

(assert (=> bs!729781 m!5068299))

(declare-fun m!5068301 () Bool)

(assert (=> bs!729781 m!5068301))

(declare-fun m!5068303 () Bool)

(assert (=> bs!729781 m!5068303))

(assert (=> b!4402719 d!1328446))

(declare-fun d!1328466 () Bool)

(declare-fun res!1816596 () Bool)

(declare-fun e!2741978 () Bool)

(assert (=> d!1328466 (=> res!1816596 e!2741978)))

(assert (=> d!1328466 (= res!1816596 ((_ is Nil!49294) (toList!3249 lt!1607082)))))

(assert (=> d!1328466 (= (forall!9380 (toList!3249 lt!1607082) lambda!149307) e!2741978)))

(declare-fun b!4403590 () Bool)

(declare-fun e!2741979 () Bool)

(assert (=> b!4403590 (= e!2741978 e!2741979)))

(declare-fun res!1816597 () Bool)

(assert (=> b!4403590 (=> (not res!1816597) (not e!2741979))))

(assert (=> b!4403590 (= res!1816597 (dynLambda!20772 lambda!149307 (h!54923 (toList!3249 lt!1607082))))))

(declare-fun b!4403591 () Bool)

(assert (=> b!4403591 (= e!2741979 (forall!9380 (t!356352 (toList!3249 lt!1607082)) lambda!149307))))

(assert (= (and d!1328466 (not res!1816596)) b!4403590))

(assert (= (and b!4403590 res!1816597) b!4403591))

(declare-fun b_lambda!140081 () Bool)

(assert (=> (not b_lambda!140081) (not b!4403590)))

(declare-fun m!5068305 () Bool)

(assert (=> b!4403590 m!5068305))

(declare-fun m!5068307 () Bool)

(assert (=> b!4403591 m!5068307))

(assert (=> b!4402719 d!1328466))

(declare-fun d!1328468 () Bool)

(declare-fun res!1816598 () Bool)

(declare-fun e!2741980 () Bool)

(assert (=> d!1328468 (=> res!1816598 e!2741980)))

(assert (=> d!1328468 (= res!1816598 ((_ is Nil!49294) (toList!3249 lt!1607082)))))

(assert (=> d!1328468 (= (forall!9380 (toList!3249 lt!1607082) lambda!149308) e!2741980)))

(declare-fun b!4403592 () Bool)

(declare-fun e!2741981 () Bool)

(assert (=> b!4403592 (= e!2741980 e!2741981)))

(declare-fun res!1816599 () Bool)

(assert (=> b!4403592 (=> (not res!1816599) (not e!2741981))))

(assert (=> b!4403592 (= res!1816599 (dynLambda!20772 lambda!149308 (h!54923 (toList!3249 lt!1607082))))))

(declare-fun b!4403593 () Bool)

(assert (=> b!4403593 (= e!2741981 (forall!9380 (t!356352 (toList!3249 lt!1607082)) lambda!149308))))

(assert (= (and d!1328468 (not res!1816598)) b!4403592))

(assert (= (and b!4403592 res!1816599) b!4403593))

(declare-fun b_lambda!140083 () Bool)

(assert (=> (not b_lambda!140083) (not b!4403592)))

(declare-fun m!5068309 () Bool)

(assert (=> b!4403592 m!5068309))

(declare-fun m!5068311 () Bool)

(assert (=> b!4403593 m!5068311))

(assert (=> b!4402719 d!1328468))

(declare-fun d!1328470 () Bool)

(declare-fun res!1816600 () Bool)

(declare-fun e!2741982 () Bool)

(assert (=> d!1328470 (=> res!1816600 e!2741982)))

(assert (=> d!1328470 (= res!1816600 ((_ is Nil!49294) (t!356352 (_2!27746 (h!54924 (toList!3250 lm!1707))))))))

(assert (=> d!1328470 (= (forall!9380 (t!356352 (_2!27746 (h!54924 (toList!3250 lm!1707)))) lambda!149308) e!2741982)))

(declare-fun b!4403594 () Bool)

(declare-fun e!2741983 () Bool)

(assert (=> b!4403594 (= e!2741982 e!2741983)))

(declare-fun res!1816601 () Bool)

(assert (=> b!4403594 (=> (not res!1816601) (not e!2741983))))

(assert (=> b!4403594 (= res!1816601 (dynLambda!20772 lambda!149308 (h!54923 (t!356352 (_2!27746 (h!54924 (toList!3250 lm!1707)))))))))

(declare-fun b!4403595 () Bool)

(assert (=> b!4403595 (= e!2741983 (forall!9380 (t!356352 (t!356352 (_2!27746 (h!54924 (toList!3250 lm!1707))))) lambda!149308))))

(assert (= (and d!1328470 (not res!1816600)) b!4403594))

(assert (= (and b!4403594 res!1816601) b!4403595))

(declare-fun b_lambda!140085 () Bool)

(assert (=> (not b_lambda!140085) (not b!4403594)))

(declare-fun m!5068313 () Bool)

(assert (=> b!4403594 m!5068313))

(declare-fun m!5068315 () Bool)

(assert (=> b!4403595 m!5068315))

(assert (=> b!4402719 d!1328470))

(declare-fun b!4403596 () Bool)

(assert (=> b!4403596 false))

(declare-fun lt!1607933 () Unit!79009)

(declare-fun lt!1607938 () Unit!79009)

(assert (=> b!4403596 (= lt!1607933 lt!1607938)))

(assert (=> b!4403596 (containsKey!951 (toList!3249 lt!1607404) (_1!27745 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707))))))))

(assert (=> b!4403596 (= lt!1607938 (lemmaInGetKeysListThenContainsKey!199 (toList!3249 lt!1607404) (_1!27745 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707)))))))))

(declare-fun e!2741985 () Unit!79009)

(declare-fun Unit!79165 () Unit!79009)

(assert (=> b!4403596 (= e!2741985 Unit!79165)))

(declare-fun b!4403597 () Bool)

(declare-fun e!2741986 () Bool)

(assert (=> b!4403597 (= e!2741986 (not (contains!11695 (keys!16757 lt!1607404) (_1!27745 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707))))))))))

(declare-fun d!1328472 () Bool)

(declare-fun e!2741988 () Bool)

(assert (=> d!1328472 e!2741988))

(declare-fun res!1816602 () Bool)

(assert (=> d!1328472 (=> res!1816602 e!2741988)))

(assert (=> d!1328472 (= res!1816602 e!2741986)))

(declare-fun res!1816603 () Bool)

(assert (=> d!1328472 (=> (not res!1816603) (not e!2741986))))

(declare-fun lt!1607935 () Bool)

(assert (=> d!1328472 (= res!1816603 (not lt!1607935))))

(declare-fun lt!1607934 () Bool)

(assert (=> d!1328472 (= lt!1607935 lt!1607934)))

(declare-fun lt!1607937 () Unit!79009)

(declare-fun e!2741984 () Unit!79009)

(assert (=> d!1328472 (= lt!1607937 e!2741984)))

(declare-fun c!749826 () Bool)

(assert (=> d!1328472 (= c!749826 lt!1607934)))

(assert (=> d!1328472 (= lt!1607934 (containsKey!951 (toList!3249 lt!1607404) (_1!27745 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707)))))))))

(assert (=> d!1328472 (= (contains!11691 lt!1607404 (_1!27745 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707)))))) lt!1607935)))

(declare-fun b!4403598 () Bool)

(declare-fun Unit!79167 () Unit!79009)

(assert (=> b!4403598 (= e!2741985 Unit!79167)))

(declare-fun bm!306466 () Bool)

(declare-fun call!306471 () Bool)

(declare-fun e!2741987 () List!49421)

(assert (=> bm!306466 (= call!306471 (contains!11695 e!2741987 (_1!27745 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707)))))))))

(declare-fun c!749827 () Bool)

(assert (=> bm!306466 (= c!749827 c!749826)))

(declare-fun b!4403599 () Bool)

(declare-fun e!2741989 () Bool)

(assert (=> b!4403599 (= e!2741989 (contains!11695 (keys!16757 lt!1607404) (_1!27745 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707)))))))))

(declare-fun b!4403600 () Bool)

(assert (=> b!4403600 (= e!2741984 e!2741985)))

(declare-fun c!749828 () Bool)

(assert (=> b!4403600 (= c!749828 call!306471)))

(declare-fun b!4403601 () Bool)

(assert (=> b!4403601 (= e!2741987 (getKeysList!201 (toList!3249 lt!1607404)))))

(declare-fun b!4403602 () Bool)

(assert (=> b!4403602 (= e!2741988 e!2741989)))

(declare-fun res!1816604 () Bool)

(assert (=> b!4403602 (=> (not res!1816604) (not e!2741989))))

(assert (=> b!4403602 (= res!1816604 (isDefined!7914 (getValueByKey!607 (toList!3249 lt!1607404) (_1!27745 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707))))))))))

(declare-fun b!4403603 () Bool)

(assert (=> b!4403603 (= e!2741987 (keys!16757 lt!1607404))))

(declare-fun b!4403604 () Bool)

(declare-fun lt!1607932 () Unit!79009)

(assert (=> b!4403604 (= e!2741984 lt!1607932)))

(declare-fun lt!1607939 () Unit!79009)

(assert (=> b!4403604 (= lt!1607939 (lemmaContainsKeyImpliesGetValueByKeyDefined!517 (toList!3249 lt!1607404) (_1!27745 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707)))))))))

(assert (=> b!4403604 (isDefined!7914 (getValueByKey!607 (toList!3249 lt!1607404) (_1!27745 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707)))))))))

(declare-fun lt!1607936 () Unit!79009)

(assert (=> b!4403604 (= lt!1607936 lt!1607939)))

(assert (=> b!4403604 (= lt!1607932 (lemmaInListThenGetKeysListContains!198 (toList!3249 lt!1607404) (_1!27745 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707)))))))))

(assert (=> b!4403604 call!306471))

(assert (= (and d!1328472 c!749826) b!4403604))

(assert (= (and d!1328472 (not c!749826)) b!4403600))

(assert (= (and b!4403600 c!749828) b!4403596))

(assert (= (and b!4403600 (not c!749828)) b!4403598))

(assert (= (or b!4403604 b!4403600) bm!306466))

(assert (= (and bm!306466 c!749827) b!4403601))

(assert (= (and bm!306466 (not c!749827)) b!4403603))

(assert (= (and d!1328472 res!1816603) b!4403597))

(assert (= (and d!1328472 (not res!1816602)) b!4403602))

(assert (= (and b!4403602 res!1816604) b!4403599))

(declare-fun m!5068317 () Bool)

(assert (=> b!4403597 m!5068317))

(assert (=> b!4403597 m!5068317))

(declare-fun m!5068319 () Bool)

(assert (=> b!4403597 m!5068319))

(declare-fun m!5068321 () Bool)

(assert (=> bm!306466 m!5068321))

(assert (=> b!4403603 m!5068317))

(declare-fun m!5068323 () Bool)

(assert (=> b!4403602 m!5068323))

(assert (=> b!4403602 m!5068323))

(declare-fun m!5068325 () Bool)

(assert (=> b!4403602 m!5068325))

(declare-fun m!5068327 () Bool)

(assert (=> b!4403604 m!5068327))

(assert (=> b!4403604 m!5068323))

(assert (=> b!4403604 m!5068323))

(assert (=> b!4403604 m!5068325))

(declare-fun m!5068329 () Bool)

(assert (=> b!4403604 m!5068329))

(declare-fun m!5068331 () Bool)

(assert (=> d!1328472 m!5068331))

(assert (=> b!4403599 m!5068317))

(assert (=> b!4403599 m!5068317))

(assert (=> b!4403599 m!5068319))

(assert (=> b!4403596 m!5068331))

(declare-fun m!5068333 () Bool)

(assert (=> b!4403596 m!5068333))

(declare-fun m!5068335 () Bool)

(assert (=> b!4403601 m!5068335))

(assert (=> b!4402719 d!1328472))

(declare-fun d!1328474 () Bool)

(assert (=> d!1328474 (dynLambda!20772 lambda!149308 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707)))))))

(declare-fun lt!1607942 () Unit!79009)

(declare-fun choose!27654 (List!49418 Int tuple2!48902) Unit!79009)

(assert (=> d!1328474 (= lt!1607942 (choose!27654 (toList!3249 lt!1607404) lambda!149308 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707))))))))

(declare-fun e!2741992 () Bool)

(assert (=> d!1328474 e!2741992))

(declare-fun res!1816607 () Bool)

(assert (=> d!1328474 (=> (not res!1816607) (not e!2741992))))

(assert (=> d!1328474 (= res!1816607 (forall!9380 (toList!3249 lt!1607404) lambda!149308))))

(assert (=> d!1328474 (= (forallContained!2015 (toList!3249 lt!1607404) lambda!149308 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707))))) lt!1607942)))

(declare-fun b!4403607 () Bool)

(assert (=> b!4403607 (= e!2741992 (contains!11697 (toList!3249 lt!1607404) (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707))))))))

(assert (= (and d!1328474 res!1816607) b!4403607))

(declare-fun b_lambda!140087 () Bool)

(assert (=> (not b_lambda!140087) (not d!1328474)))

(declare-fun m!5068337 () Bool)

(assert (=> d!1328474 m!5068337))

(declare-fun m!5068339 () Bool)

(assert (=> d!1328474 m!5068339))

(assert (=> d!1328474 m!5066823))

(declare-fun m!5068341 () Bool)

(assert (=> b!4403607 m!5068341))

(assert (=> b!4402719 d!1328474))

(declare-fun bs!729813 () Bool)

(declare-fun b!4403611 () Bool)

(assert (= bs!729813 (and b!4403611 b!4403165)))

(declare-fun lambda!149435 () Int)

(assert (=> bs!729813 (= (= (+!882 lt!1607082 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707))))) lt!1607665) (= lambda!149435 lambda!149372))))

(declare-fun bs!729814 () Bool)

(assert (= bs!729814 (and b!4403611 d!1328192)))

(assert (=> bs!729814 (= (= (+!882 lt!1607082 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707))))) lt!1607672) (= lambda!149435 lambda!149373))))

(declare-fun bs!729816 () Bool)

(assert (= bs!729816 (and b!4403611 b!4402719)))

(assert (=> bs!729816 (= (= (+!882 lt!1607082 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707))))) lt!1607393) (= lambda!149435 lambda!149308))))

(declare-fun bs!729818 () Bool)

(assert (= bs!729818 (and b!4403611 b!4402722)))

(assert (=> bs!729818 (= (= (+!882 lt!1607082 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707))))) lt!1607082) (= lambda!149435 lambda!149306))))

(declare-fun bs!729820 () Bool)

(assert (= bs!729820 (and b!4403611 b!4403530)))

(assert (=> bs!729820 (= (= (+!882 lt!1607082 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707))))) (extractMap!692 (t!356353 (toList!3250 lt!1607074)))) (= lambda!149435 lambda!149418))))

(declare-fun bs!729822 () Bool)

(assert (= bs!729822 (and b!4403611 d!1327986)))

(assert (=> bs!729822 (= (= (+!882 lt!1607082 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707))))) lt!1607400) (= lambda!149435 lambda!149309))))

(declare-fun bs!729824 () Bool)

(assert (= bs!729824 (and b!4403611 b!4403168)))

(assert (=> bs!729824 (= (= (+!882 lt!1607082 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707))))) (extractMap!692 (t!356353 (toList!3250 (+!881 lt!1607074 lt!1607073))))) (= lambda!149435 lambda!149369))))

(declare-fun bs!729826 () Bool)

(assert (= bs!729826 (and b!4403611 b!4403286)))

(assert (=> bs!729826 (= (= (+!882 lt!1607082 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707))))) (extractMap!692 (t!356353 (toList!3250 lm!1707)))) (= lambda!149435 lambda!149385))))

(declare-fun bs!729828 () Bool)

(assert (= bs!729828 (and b!4403611 b!4403527)))

(assert (=> bs!729828 (= (= (+!882 lt!1607082 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707))))) (extractMap!692 (t!356353 (toList!3250 lt!1607074)))) (= lambda!149435 lambda!149421))))

(declare-fun bs!729830 () Bool)

(assert (= bs!729830 (and b!4403611 b!4403347)))

(assert (=> bs!729830 (= (= (+!882 lt!1607082 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707))))) (extractMap!692 (t!356353 (t!356353 (toList!3250 lm!1707))))) (= lambda!149435 lambda!149402))))

(assert (=> bs!729826 (= (= (+!882 lt!1607082 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707))))) lt!1607723) (= lambda!149435 lambda!149386))))

(declare-fun bs!729832 () Bool)

(assert (= bs!729832 (and b!4403611 d!1328252)))

(assert (=> bs!729832 (= (= (+!882 lt!1607082 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707))))) lt!1607730) (= lambda!149435 lambda!149390))))

(declare-fun bs!729834 () Bool)

(assert (= bs!729834 (and b!4403611 b!4403350)))

(assert (=> bs!729834 (= (= (+!882 lt!1607082 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707))))) (extractMap!692 (t!356353 (t!356353 (toList!3250 lm!1707))))) (= lambda!149435 lambda!149401))))

(assert (=> bs!729830 (= (= (+!882 lt!1607082 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707))))) lt!1607771) (= lambda!149435 lambda!149403))))

(assert (=> bs!729813 (= (= (+!882 lt!1607082 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707))))) (extractMap!692 (t!356353 (toList!3250 (+!881 lt!1607074 lt!1607073))))) (= lambda!149435 lambda!149370))))

(declare-fun bs!729838 () Bool)

(assert (= bs!729838 (and b!4403611 b!4403289)))

(assert (=> bs!729838 (= (= (+!882 lt!1607082 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707))))) (extractMap!692 (t!356353 (toList!3250 lm!1707)))) (= lambda!149435 lambda!149384))))

(declare-fun bs!729839 () Bool)

(assert (= bs!729839 (and b!4403611 d!1328424)))

(assert (=> bs!729839 (= (= (+!882 lt!1607082 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707))))) lt!1607872) (= lambda!149435 lambda!149425))))

(declare-fun bs!729841 () Bool)

(assert (= bs!729841 (and b!4403611 d!1328258)))

(assert (=> bs!729841 (= (= (+!882 lt!1607082 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707))))) lt!1607082) (= lambda!149435 lambda!149394))))

(declare-fun bs!729842 () Bool)

(assert (= bs!729842 (and b!4403611 d!1328022)))

(assert (=> bs!729842 (not (= lambda!149435 lambda!149320))))

(declare-fun bs!729844 () Bool)

(assert (= bs!729844 (and b!4403611 d!1328446)))

(assert (=> bs!729844 (= (= (+!882 lt!1607082 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707))))) lt!1607393) (= lambda!149435 lambda!149431))))

(assert (=> bs!729828 (= (= (+!882 lt!1607082 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707))))) lt!1607865) (= lambda!149435 lambda!149423))))

(declare-fun bs!729846 () Bool)

(assert (= bs!729846 (and b!4403611 d!1328270)))

(assert (=> bs!729846 (= (= (+!882 lt!1607082 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707))))) lt!1607778) (= lambda!149435 lambda!149404))))

(assert (=> bs!729816 (= (= (+!882 lt!1607082 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707))))) lt!1607082) (= lambda!149435 lambda!149307))))

(assert (=> b!4403611 true))

(declare-fun bs!729848 () Bool)

(declare-fun b!4403608 () Bool)

(assert (= bs!729848 (and b!4403608 b!4403165)))

(declare-fun lambda!149437 () Int)

(assert (=> bs!729848 (= (= (+!882 lt!1607082 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707))))) lt!1607665) (= lambda!149437 lambda!149372))))

(declare-fun bs!729849 () Bool)

(assert (= bs!729849 (and b!4403608 d!1328192)))

(assert (=> bs!729849 (= (= (+!882 lt!1607082 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707))))) lt!1607672) (= lambda!149437 lambda!149373))))

(declare-fun bs!729850 () Bool)

(assert (= bs!729850 (and b!4403608 b!4402719)))

(assert (=> bs!729850 (= (= (+!882 lt!1607082 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707))))) lt!1607393) (= lambda!149437 lambda!149308))))

(declare-fun bs!729851 () Bool)

(assert (= bs!729851 (and b!4403608 b!4402722)))

(assert (=> bs!729851 (= (= (+!882 lt!1607082 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707))))) lt!1607082) (= lambda!149437 lambda!149306))))

(declare-fun bs!729852 () Bool)

(assert (= bs!729852 (and b!4403608 b!4403530)))

(assert (=> bs!729852 (= (= (+!882 lt!1607082 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707))))) (extractMap!692 (t!356353 (toList!3250 lt!1607074)))) (= lambda!149437 lambda!149418))))

(declare-fun bs!729853 () Bool)

(assert (= bs!729853 (and b!4403608 d!1327986)))

(assert (=> bs!729853 (= (= (+!882 lt!1607082 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707))))) lt!1607400) (= lambda!149437 lambda!149309))))

(declare-fun bs!729854 () Bool)

(assert (= bs!729854 (and b!4403608 b!4403168)))

(assert (=> bs!729854 (= (= (+!882 lt!1607082 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707))))) (extractMap!692 (t!356353 (toList!3250 (+!881 lt!1607074 lt!1607073))))) (= lambda!149437 lambda!149369))))

(declare-fun bs!729855 () Bool)

(assert (= bs!729855 (and b!4403608 b!4403286)))

(assert (=> bs!729855 (= (= (+!882 lt!1607082 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707))))) (extractMap!692 (t!356353 (toList!3250 lm!1707)))) (= lambda!149437 lambda!149385))))

(declare-fun bs!729856 () Bool)

(assert (= bs!729856 (and b!4403608 b!4403527)))

(assert (=> bs!729856 (= (= (+!882 lt!1607082 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707))))) (extractMap!692 (t!356353 (toList!3250 lt!1607074)))) (= lambda!149437 lambda!149421))))

(assert (=> bs!729855 (= (= (+!882 lt!1607082 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707))))) lt!1607723) (= lambda!149437 lambda!149386))))

(declare-fun bs!729857 () Bool)

(assert (= bs!729857 (and b!4403608 d!1328252)))

(assert (=> bs!729857 (= (= (+!882 lt!1607082 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707))))) lt!1607730) (= lambda!149437 lambda!149390))))

(declare-fun bs!729858 () Bool)

(assert (= bs!729858 (and b!4403608 b!4403350)))

(assert (=> bs!729858 (= (= (+!882 lt!1607082 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707))))) (extractMap!692 (t!356353 (t!356353 (toList!3250 lm!1707))))) (= lambda!149437 lambda!149401))))

(declare-fun bs!729859 () Bool)

(assert (= bs!729859 (and b!4403608 b!4403347)))

(assert (=> bs!729859 (= (= (+!882 lt!1607082 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707))))) lt!1607771) (= lambda!149437 lambda!149403))))

(assert (=> bs!729848 (= (= (+!882 lt!1607082 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707))))) (extractMap!692 (t!356353 (toList!3250 (+!881 lt!1607074 lt!1607073))))) (= lambda!149437 lambda!149370))))

(declare-fun bs!729860 () Bool)

(assert (= bs!729860 (and b!4403608 b!4403289)))

(assert (=> bs!729860 (= (= (+!882 lt!1607082 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707))))) (extractMap!692 (t!356353 (toList!3250 lm!1707)))) (= lambda!149437 lambda!149384))))

(declare-fun bs!729861 () Bool)

(assert (= bs!729861 (and b!4403608 d!1328424)))

(assert (=> bs!729861 (= (= (+!882 lt!1607082 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707))))) lt!1607872) (= lambda!149437 lambda!149425))))

(declare-fun bs!729862 () Bool)

(assert (= bs!729862 (and b!4403608 b!4403611)))

(assert (=> bs!729862 (= lambda!149437 lambda!149435)))

(assert (=> bs!729859 (= (= (+!882 lt!1607082 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707))))) (extractMap!692 (t!356353 (t!356353 (toList!3250 lm!1707))))) (= lambda!149437 lambda!149402))))

(declare-fun bs!729863 () Bool)

(assert (= bs!729863 (and b!4403608 d!1328258)))

(assert (=> bs!729863 (= (= (+!882 lt!1607082 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707))))) lt!1607082) (= lambda!149437 lambda!149394))))

(declare-fun bs!729864 () Bool)

(assert (= bs!729864 (and b!4403608 d!1328022)))

(assert (=> bs!729864 (not (= lambda!149437 lambda!149320))))

(declare-fun bs!729865 () Bool)

(assert (= bs!729865 (and b!4403608 d!1328446)))

(assert (=> bs!729865 (= (= (+!882 lt!1607082 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707))))) lt!1607393) (= lambda!149437 lambda!149431))))

(assert (=> bs!729856 (= (= (+!882 lt!1607082 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707))))) lt!1607865) (= lambda!149437 lambda!149423))))

(declare-fun bs!729866 () Bool)

(assert (= bs!729866 (and b!4403608 d!1328270)))

(assert (=> bs!729866 (= (= (+!882 lt!1607082 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707))))) lt!1607778) (= lambda!149437 lambda!149404))))

(assert (=> bs!729850 (= (= (+!882 lt!1607082 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707))))) lt!1607082) (= lambda!149437 lambda!149307))))

(assert (=> b!4403608 true))

(declare-fun lambda!149438 () Int)

(declare-fun lt!1607945 () ListMap!2493)

(assert (=> bs!729848 (= (= lt!1607945 lt!1607665) (= lambda!149438 lambda!149372))))

(assert (=> bs!729849 (= (= lt!1607945 lt!1607672) (= lambda!149438 lambda!149373))))

(assert (=> bs!729850 (= (= lt!1607945 lt!1607393) (= lambda!149438 lambda!149308))))

(assert (=> bs!729851 (= (= lt!1607945 lt!1607082) (= lambda!149438 lambda!149306))))

(assert (=> bs!729852 (= (= lt!1607945 (extractMap!692 (t!356353 (toList!3250 lt!1607074)))) (= lambda!149438 lambda!149418))))

(assert (=> bs!729853 (= (= lt!1607945 lt!1607400) (= lambda!149438 lambda!149309))))

(assert (=> bs!729854 (= (= lt!1607945 (extractMap!692 (t!356353 (toList!3250 (+!881 lt!1607074 lt!1607073))))) (= lambda!149438 lambda!149369))))

(assert (=> bs!729855 (= (= lt!1607945 (extractMap!692 (t!356353 (toList!3250 lm!1707)))) (= lambda!149438 lambda!149385))))

(assert (=> bs!729856 (= (= lt!1607945 (extractMap!692 (t!356353 (toList!3250 lt!1607074)))) (= lambda!149438 lambda!149421))))

(assert (=> bs!729855 (= (= lt!1607945 lt!1607723) (= lambda!149438 lambda!149386))))

(assert (=> bs!729858 (= (= lt!1607945 (extractMap!692 (t!356353 (t!356353 (toList!3250 lm!1707))))) (= lambda!149438 lambda!149401))))

(assert (=> bs!729859 (= (= lt!1607945 lt!1607771) (= lambda!149438 lambda!149403))))

(assert (=> bs!729848 (= (= lt!1607945 (extractMap!692 (t!356353 (toList!3250 (+!881 lt!1607074 lt!1607073))))) (= lambda!149438 lambda!149370))))

(assert (=> bs!729860 (= (= lt!1607945 (extractMap!692 (t!356353 (toList!3250 lm!1707)))) (= lambda!149438 lambda!149384))))

(assert (=> bs!729861 (= (= lt!1607945 lt!1607872) (= lambda!149438 lambda!149425))))

(assert (=> bs!729862 (= (= lt!1607945 (+!882 lt!1607082 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707)))))) (= lambda!149438 lambda!149435))))

(assert (=> bs!729859 (= (= lt!1607945 (extractMap!692 (t!356353 (t!356353 (toList!3250 lm!1707))))) (= lambda!149438 lambda!149402))))

(assert (=> bs!729863 (= (= lt!1607945 lt!1607082) (= lambda!149438 lambda!149394))))

(assert (=> bs!729864 (not (= lambda!149438 lambda!149320))))

(assert (=> bs!729865 (= (= lt!1607945 lt!1607393) (= lambda!149438 lambda!149431))))

(assert (=> bs!729856 (= (= lt!1607945 lt!1607865) (= lambda!149438 lambda!149423))))

(assert (=> bs!729866 (= (= lt!1607945 lt!1607778) (= lambda!149438 lambda!149404))))

(assert (=> bs!729850 (= (= lt!1607945 lt!1607082) (= lambda!149438 lambda!149307))))

(assert (=> bs!729857 (= (= lt!1607945 lt!1607730) (= lambda!149438 lambda!149390))))

(assert (=> b!4403608 (= (= lt!1607945 (+!882 lt!1607082 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707)))))) (= lambda!149438 lambda!149437))))

(assert (=> b!4403608 true))

(declare-fun bs!729882 () Bool)

(declare-fun d!1328476 () Bool)

(assert (= bs!729882 (and d!1328476 d!1328192)))

(declare-fun lt!1607952 () ListMap!2493)

(declare-fun lambda!149441 () Int)

(assert (=> bs!729882 (= (= lt!1607952 lt!1607672) (= lambda!149441 lambda!149373))))

(declare-fun bs!729885 () Bool)

(assert (= bs!729885 (and d!1328476 b!4402719)))

(assert (=> bs!729885 (= (= lt!1607952 lt!1607393) (= lambda!149441 lambda!149308))))

(declare-fun bs!729887 () Bool)

(assert (= bs!729887 (and d!1328476 b!4402722)))

(assert (=> bs!729887 (= (= lt!1607952 lt!1607082) (= lambda!149441 lambda!149306))))

(declare-fun bs!729889 () Bool)

(assert (= bs!729889 (and d!1328476 b!4403530)))

(assert (=> bs!729889 (= (= lt!1607952 (extractMap!692 (t!356353 (toList!3250 lt!1607074)))) (= lambda!149441 lambda!149418))))

(declare-fun bs!729890 () Bool)

(assert (= bs!729890 (and d!1328476 d!1327986)))

(assert (=> bs!729890 (= (= lt!1607952 lt!1607400) (= lambda!149441 lambda!149309))))

(declare-fun bs!729892 () Bool)

(assert (= bs!729892 (and d!1328476 b!4403168)))

(assert (=> bs!729892 (= (= lt!1607952 (extractMap!692 (t!356353 (toList!3250 (+!881 lt!1607074 lt!1607073))))) (= lambda!149441 lambda!149369))))

(declare-fun bs!729894 () Bool)

(assert (= bs!729894 (and d!1328476 b!4403286)))

(assert (=> bs!729894 (= (= lt!1607952 (extractMap!692 (t!356353 (toList!3250 lm!1707)))) (= lambda!149441 lambda!149385))))

(declare-fun bs!729896 () Bool)

(assert (= bs!729896 (and d!1328476 b!4403527)))

(assert (=> bs!729896 (= (= lt!1607952 (extractMap!692 (t!356353 (toList!3250 lt!1607074)))) (= lambda!149441 lambda!149421))))

(assert (=> bs!729894 (= (= lt!1607952 lt!1607723) (= lambda!149441 lambda!149386))))

(declare-fun bs!729898 () Bool)

(assert (= bs!729898 (and d!1328476 b!4403608)))

(assert (=> bs!729898 (= (= lt!1607952 lt!1607945) (= lambda!149441 lambda!149438))))

(declare-fun bs!729900 () Bool)

(assert (= bs!729900 (and d!1328476 b!4403165)))

(assert (=> bs!729900 (= (= lt!1607952 lt!1607665) (= lambda!149441 lambda!149372))))

(declare-fun bs!729901 () Bool)

(assert (= bs!729901 (and d!1328476 b!4403350)))

(assert (=> bs!729901 (= (= lt!1607952 (extractMap!692 (t!356353 (t!356353 (toList!3250 lm!1707))))) (= lambda!149441 lambda!149401))))

(declare-fun bs!729905 () Bool)

(assert (= bs!729905 (and d!1328476 b!4403347)))

(assert (=> bs!729905 (= (= lt!1607952 lt!1607771) (= lambda!149441 lambda!149403))))

(assert (=> bs!729900 (= (= lt!1607952 (extractMap!692 (t!356353 (toList!3250 (+!881 lt!1607074 lt!1607073))))) (= lambda!149441 lambda!149370))))

(declare-fun bs!729906 () Bool)

(assert (= bs!729906 (and d!1328476 b!4403289)))

(assert (=> bs!729906 (= (= lt!1607952 (extractMap!692 (t!356353 (toList!3250 lm!1707)))) (= lambda!149441 lambda!149384))))

(declare-fun bs!729908 () Bool)

(assert (= bs!729908 (and d!1328476 d!1328424)))

(assert (=> bs!729908 (= (= lt!1607952 lt!1607872) (= lambda!149441 lambda!149425))))

(declare-fun bs!729909 () Bool)

(assert (= bs!729909 (and d!1328476 b!4403611)))

(assert (=> bs!729909 (= (= lt!1607952 (+!882 lt!1607082 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707)))))) (= lambda!149441 lambda!149435))))

(assert (=> bs!729905 (= (= lt!1607952 (extractMap!692 (t!356353 (t!356353 (toList!3250 lm!1707))))) (= lambda!149441 lambda!149402))))

(declare-fun bs!729910 () Bool)

(assert (= bs!729910 (and d!1328476 d!1328258)))

(assert (=> bs!729910 (= (= lt!1607952 lt!1607082) (= lambda!149441 lambda!149394))))

(declare-fun bs!729911 () Bool)

(assert (= bs!729911 (and d!1328476 d!1328022)))

(assert (=> bs!729911 (not (= lambda!149441 lambda!149320))))

(declare-fun bs!729912 () Bool)

(assert (= bs!729912 (and d!1328476 d!1328446)))

(assert (=> bs!729912 (= (= lt!1607952 lt!1607393) (= lambda!149441 lambda!149431))))

(assert (=> bs!729896 (= (= lt!1607952 lt!1607865) (= lambda!149441 lambda!149423))))

(declare-fun bs!729914 () Bool)

(assert (= bs!729914 (and d!1328476 d!1328270)))

(assert (=> bs!729914 (= (= lt!1607952 lt!1607778) (= lambda!149441 lambda!149404))))

(assert (=> bs!729885 (= (= lt!1607952 lt!1607082) (= lambda!149441 lambda!149307))))

(declare-fun bs!729916 () Bool)

(assert (= bs!729916 (and d!1328476 d!1328252)))

(assert (=> bs!729916 (= (= lt!1607952 lt!1607730) (= lambda!149441 lambda!149390))))

(assert (=> bs!729898 (= (= lt!1607952 (+!882 lt!1607082 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707)))))) (= lambda!149441 lambda!149437))))

(assert (=> d!1328476 true))

(declare-fun c!749829 () Bool)

(declare-fun bm!306467 () Bool)

(declare-fun call!306474 () Bool)

(assert (=> bm!306467 (= call!306474 (forall!9380 (toList!3249 (+!882 lt!1607082 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707)))))) (ite c!749829 lambda!149435 lambda!149438)))))

(declare-fun bm!306468 () Bool)

(declare-fun call!306472 () Bool)

(assert (=> bm!306468 (= call!306472 (forall!9380 (toList!3249 (+!882 lt!1607082 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707)))))) (ite c!749829 lambda!149435 lambda!149438)))))

(declare-fun e!2741993 () Bool)

(assert (=> d!1328476 e!2741993))

(declare-fun res!1816610 () Bool)

(assert (=> d!1328476 (=> (not res!1816610) (not e!2741993))))

(assert (=> d!1328476 (= res!1816610 (forall!9380 (t!356352 (_2!27746 (h!54924 (toList!3250 lm!1707)))) lambda!149441))))

(declare-fun e!2741995 () ListMap!2493)

(assert (=> d!1328476 (= lt!1607952 e!2741995)))

(assert (=> d!1328476 (= c!749829 ((_ is Nil!49294) (t!356352 (_2!27746 (h!54924 (toList!3250 lm!1707))))))))

(assert (=> d!1328476 (noDuplicateKeys!633 (t!356352 (_2!27746 (h!54924 (toList!3250 lm!1707)))))))

(assert (=> d!1328476 (= (addToMapMapFromBucket!299 (t!356352 (_2!27746 (h!54924 (toList!3250 lm!1707)))) (+!882 lt!1607082 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707)))))) lt!1607952)))

(assert (=> b!4403608 (= e!2741995 lt!1607945)))

(declare-fun lt!1607956 () ListMap!2493)

(assert (=> b!4403608 (= lt!1607956 (+!882 (+!882 lt!1607082 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707))))) (h!54923 (t!356352 (_2!27746 (h!54924 (toList!3250 lm!1707)))))))))

(assert (=> b!4403608 (= lt!1607945 (addToMapMapFromBucket!299 (t!356352 (t!356352 (_2!27746 (h!54924 (toList!3250 lm!1707))))) (+!882 (+!882 lt!1607082 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707))))) (h!54923 (t!356352 (_2!27746 (h!54924 (toList!3250 lm!1707))))))))))

(declare-fun lt!1607963 () Unit!79009)

(declare-fun call!306473 () Unit!79009)

(assert (=> b!4403608 (= lt!1607963 call!306473)))

(assert (=> b!4403608 (forall!9380 (toList!3249 (+!882 lt!1607082 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707)))))) lambda!149437)))

(declare-fun lt!1607958 () Unit!79009)

(assert (=> b!4403608 (= lt!1607958 lt!1607963)))

(assert (=> b!4403608 (forall!9380 (toList!3249 lt!1607956) lambda!149438)))

(declare-fun lt!1607946 () Unit!79009)

(declare-fun Unit!79168 () Unit!79009)

(assert (=> b!4403608 (= lt!1607946 Unit!79168)))

(assert (=> b!4403608 (forall!9380 (t!356352 (t!356352 (_2!27746 (h!54924 (toList!3250 lm!1707))))) lambda!149438)))

(declare-fun lt!1607948 () Unit!79009)

(declare-fun Unit!79169 () Unit!79009)

(assert (=> b!4403608 (= lt!1607948 Unit!79169)))

(declare-fun lt!1607947 () Unit!79009)

(declare-fun Unit!79170 () Unit!79009)

(assert (=> b!4403608 (= lt!1607947 Unit!79170)))

(declare-fun lt!1607943 () Unit!79009)

(assert (=> b!4403608 (= lt!1607943 (forallContained!2015 (toList!3249 lt!1607956) lambda!149438 (h!54923 (t!356352 (_2!27746 (h!54924 (toList!3250 lm!1707)))))))))

(assert (=> b!4403608 (contains!11691 lt!1607956 (_1!27745 (h!54923 (t!356352 (_2!27746 (h!54924 (toList!3250 lm!1707)))))))))

(declare-fun lt!1607962 () Unit!79009)

(declare-fun Unit!79171 () Unit!79009)

(assert (=> b!4403608 (= lt!1607962 Unit!79171)))

(assert (=> b!4403608 (contains!11691 lt!1607945 (_1!27745 (h!54923 (t!356352 (_2!27746 (h!54924 (toList!3250 lm!1707)))))))))

(declare-fun lt!1607959 () Unit!79009)

(declare-fun Unit!79172 () Unit!79009)

(assert (=> b!4403608 (= lt!1607959 Unit!79172)))

(assert (=> b!4403608 (forall!9380 (t!356352 (_2!27746 (h!54924 (toList!3250 lm!1707)))) lambda!149438)))

(declare-fun lt!1607953 () Unit!79009)

(declare-fun Unit!79173 () Unit!79009)

(assert (=> b!4403608 (= lt!1607953 Unit!79173)))

(assert (=> b!4403608 (forall!9380 (toList!3249 lt!1607956) lambda!149438)))

(declare-fun lt!1607950 () Unit!79009)

(declare-fun Unit!79174 () Unit!79009)

(assert (=> b!4403608 (= lt!1607950 Unit!79174)))

(declare-fun lt!1607961 () Unit!79009)

(declare-fun Unit!79175 () Unit!79009)

(assert (=> b!4403608 (= lt!1607961 Unit!79175)))

(declare-fun lt!1607955 () Unit!79009)

(assert (=> b!4403608 (= lt!1607955 (addForallContainsKeyThenBeforeAdding!133 (+!882 lt!1607082 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707))))) lt!1607945 (_1!27745 (h!54923 (t!356352 (_2!27746 (h!54924 (toList!3250 lm!1707)))))) (_2!27745 (h!54923 (t!356352 (_2!27746 (h!54924 (toList!3250 lm!1707))))))))))

(assert (=> b!4403608 call!306472))

(declare-fun lt!1607960 () Unit!79009)

(assert (=> b!4403608 (= lt!1607960 lt!1607955)))

(assert (=> b!4403608 (forall!9380 (toList!3249 (+!882 lt!1607082 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707)))))) lambda!149438)))

(declare-fun lt!1607957 () Unit!79009)

(declare-fun Unit!79176 () Unit!79009)

(assert (=> b!4403608 (= lt!1607957 Unit!79176)))

(declare-fun res!1816608 () Bool)

(assert (=> b!4403608 (= res!1816608 (forall!9380 (t!356352 (_2!27746 (h!54924 (toList!3250 lm!1707)))) lambda!149438))))

(declare-fun e!2741994 () Bool)

(assert (=> b!4403608 (=> (not res!1816608) (not e!2741994))))

(assert (=> b!4403608 e!2741994))

(declare-fun lt!1607954 () Unit!79009)

(declare-fun Unit!79177 () Unit!79009)

(assert (=> b!4403608 (= lt!1607954 Unit!79177)))

(declare-fun b!4403609 () Bool)

(assert (=> b!4403609 (= e!2741993 (invariantList!754 (toList!3249 lt!1607952)))))

(declare-fun b!4403610 () Bool)

(assert (=> b!4403610 (= e!2741994 call!306474)))

(declare-fun bm!306469 () Bool)

(assert (=> bm!306469 (= call!306473 (lemmaContainsAllItsOwnKeys!133 (+!882 lt!1607082 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707)))))))))

(assert (=> b!4403611 (= e!2741995 (+!882 lt!1607082 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707))))))))

(declare-fun lt!1607951 () Unit!79009)

(assert (=> b!4403611 (= lt!1607951 call!306473)))

(assert (=> b!4403611 call!306472))

(declare-fun lt!1607949 () Unit!79009)

(assert (=> b!4403611 (= lt!1607949 lt!1607951)))

(assert (=> b!4403611 call!306474))

(declare-fun lt!1607944 () Unit!79009)

(declare-fun Unit!79178 () Unit!79009)

(assert (=> b!4403611 (= lt!1607944 Unit!79178)))

(declare-fun b!4403612 () Bool)

(declare-fun res!1816609 () Bool)

(assert (=> b!4403612 (=> (not res!1816609) (not e!2741993))))

(assert (=> b!4403612 (= res!1816609 (forall!9380 (toList!3249 (+!882 lt!1607082 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707)))))) lambda!149441))))

(assert (= (and d!1328476 c!749829) b!4403611))

(assert (= (and d!1328476 (not c!749829)) b!4403608))

(assert (= (and b!4403608 res!1816608) b!4403610))

(assert (= (or b!4403611 b!4403608) bm!306469))

(assert (= (or b!4403611 b!4403608) bm!306468))

(assert (= (or b!4403611 b!4403610) bm!306467))

(assert (= (and d!1328476 res!1816610) b!4403612))

(assert (= (and b!4403612 res!1816609) b!4403609))

(declare-fun m!5068387 () Bool)

(assert (=> bm!306467 m!5068387))

(declare-fun m!5068389 () Bool)

(assert (=> b!4403612 m!5068389))

(declare-fun m!5068391 () Bool)

(assert (=> b!4403608 m!5068391))

(declare-fun m!5068393 () Bool)

(assert (=> b!4403608 m!5068393))

(declare-fun m!5068395 () Bool)

(assert (=> b!4403608 m!5068395))

(declare-fun m!5068397 () Bool)

(assert (=> b!4403608 m!5068397))

(assert (=> b!4403608 m!5066837))

(declare-fun m!5068399 () Bool)

(assert (=> b!4403608 m!5068399))

(declare-fun m!5068401 () Bool)

(assert (=> b!4403608 m!5068401))

(declare-fun m!5068403 () Bool)

(assert (=> b!4403608 m!5068403))

(declare-fun m!5068405 () Bool)

(assert (=> b!4403608 m!5068405))

(assert (=> b!4403608 m!5068395))

(declare-fun m!5068407 () Bool)

(assert (=> b!4403608 m!5068407))

(assert (=> b!4403608 m!5068403))

(declare-fun m!5068409 () Bool)

(assert (=> b!4403608 m!5068409))

(declare-fun m!5068411 () Bool)

(assert (=> b!4403608 m!5068411))

(assert (=> b!4403608 m!5066837))

(assert (=> b!4403608 m!5068409))

(declare-fun m!5068413 () Bool)

(assert (=> d!1328476 m!5068413))

(assert (=> d!1328476 m!5068045))

(declare-fun m!5068415 () Bool)

(assert (=> b!4403609 m!5068415))

(assert (=> bm!306468 m!5068387))

(assert (=> bm!306469 m!5066837))

(declare-fun m!5068417 () Bool)

(assert (=> bm!306469 m!5068417))

(assert (=> b!4402719 d!1328476))

(declare-fun d!1328482 () Bool)

(declare-fun res!1816614 () Bool)

(declare-fun e!2742000 () Bool)

(assert (=> d!1328482 (=> res!1816614 e!2742000)))

(assert (=> d!1328482 (= res!1816614 ((_ is Nil!49294) (toList!3249 lt!1607404)))))

(assert (=> d!1328482 (= (forall!9380 (toList!3249 lt!1607404) lambda!149308) e!2742000)))

(declare-fun b!4403620 () Bool)

(declare-fun e!2742001 () Bool)

(assert (=> b!4403620 (= e!2742000 e!2742001)))

(declare-fun res!1816615 () Bool)

(assert (=> b!4403620 (=> (not res!1816615) (not e!2742001))))

(assert (=> b!4403620 (= res!1816615 (dynLambda!20772 lambda!149308 (h!54923 (toList!3249 lt!1607404))))))

(declare-fun b!4403621 () Bool)

(assert (=> b!4403621 (= e!2742001 (forall!9380 (t!356352 (toList!3249 lt!1607404)) lambda!149308))))

(assert (= (and d!1328482 (not res!1816614)) b!4403620))

(assert (= (and b!4403620 res!1816615) b!4403621))

(declare-fun b_lambda!140089 () Bool)

(assert (=> (not b_lambda!140089) (not b!4403620)))

(declare-fun m!5068419 () Bool)

(assert (=> b!4403620 m!5068419))

(declare-fun m!5068421 () Bool)

(assert (=> b!4403621 m!5068421))

(assert (=> b!4402719 d!1328482))

(declare-fun d!1328484 () Bool)

(declare-fun e!2742002 () Bool)

(assert (=> d!1328484 e!2742002))

(declare-fun res!1816617 () Bool)

(assert (=> d!1328484 (=> (not res!1816617) (not e!2742002))))

(declare-fun lt!1607987 () ListMap!2493)

(assert (=> d!1328484 (= res!1816617 (contains!11691 lt!1607987 (_1!27745 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707)))))))))

(declare-fun lt!1607988 () List!49418)

(assert (=> d!1328484 (= lt!1607987 (ListMap!2494 lt!1607988))))

(declare-fun lt!1607989 () Unit!79009)

(declare-fun lt!1607986 () Unit!79009)

(assert (=> d!1328484 (= lt!1607989 lt!1607986)))

(assert (=> d!1328484 (= (getValueByKey!607 lt!1607988 (_1!27745 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707)))))) (Some!10620 (_2!27745 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707)))))))))

(assert (=> d!1328484 (= lt!1607986 (lemmaContainsTupThenGetReturnValue!353 lt!1607988 (_1!27745 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707))))) (_2!27745 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707)))))))))

(assert (=> d!1328484 (= lt!1607988 (insertNoDuplicatedKeys!153 (toList!3249 lt!1607082) (_1!27745 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707))))) (_2!27745 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707)))))))))

(assert (=> d!1328484 (= (+!882 lt!1607082 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707))))) lt!1607987)))

(declare-fun b!4403622 () Bool)

(declare-fun res!1816616 () Bool)

(assert (=> b!4403622 (=> (not res!1816616) (not e!2742002))))

(assert (=> b!4403622 (= res!1816616 (= (getValueByKey!607 (toList!3249 lt!1607987) (_1!27745 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707)))))) (Some!10620 (_2!27745 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707))))))))))

(declare-fun b!4403623 () Bool)

(assert (=> b!4403623 (= e!2742002 (contains!11697 (toList!3249 lt!1607987) (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707))))))))

(assert (= (and d!1328484 res!1816617) b!4403622))

(assert (= (and b!4403622 res!1816616) b!4403623))

(declare-fun m!5068423 () Bool)

(assert (=> d!1328484 m!5068423))

(declare-fun m!5068425 () Bool)

(assert (=> d!1328484 m!5068425))

(declare-fun m!5068427 () Bool)

(assert (=> d!1328484 m!5068427))

(declare-fun m!5068429 () Bool)

(assert (=> d!1328484 m!5068429))

(declare-fun m!5068431 () Bool)

(assert (=> b!4403622 m!5068431))

(declare-fun m!5068433 () Bool)

(assert (=> b!4403623 m!5068433))

(assert (=> b!4402719 d!1328484))

(declare-fun d!1328486 () Bool)

(declare-fun res!1816618 () Bool)

(declare-fun e!2742003 () Bool)

(assert (=> d!1328486 (=> res!1816618 e!2742003)))

(assert (=> d!1328486 (= res!1816618 ((_ is Nil!49294) (_2!27746 (h!54924 (toList!3250 lm!1707)))))))

(assert (=> d!1328486 (= (forall!9380 (_2!27746 (h!54924 (toList!3250 lm!1707))) lambda!149308) e!2742003)))

(declare-fun b!4403624 () Bool)

(declare-fun e!2742004 () Bool)

(assert (=> b!4403624 (= e!2742003 e!2742004)))

(declare-fun res!1816619 () Bool)

(assert (=> b!4403624 (=> (not res!1816619) (not e!2742004))))

(assert (=> b!4403624 (= res!1816619 (dynLambda!20772 lambda!149308 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707))))))))

(declare-fun b!4403625 () Bool)

(assert (=> b!4403625 (= e!2742004 (forall!9380 (t!356352 (_2!27746 (h!54924 (toList!3250 lm!1707)))) lambda!149308))))

(assert (= (and d!1328486 (not res!1816618)) b!4403624))

(assert (= (and b!4403624 res!1816619) b!4403625))

(declare-fun b_lambda!140091 () Bool)

(assert (=> (not b_lambda!140091) (not b!4403624)))

(assert (=> b!4403624 m!5068337))

(assert (=> b!4403625 m!5066829))

(assert (=> b!4402719 d!1328486))

(declare-fun d!1328488 () Bool)

(declare-fun res!1816620 () Bool)

(declare-fun e!2742005 () Bool)

(assert (=> d!1328488 (=> res!1816620 e!2742005)))

(assert (=> d!1328488 (= res!1816620 (not ((_ is Cons!49294) (t!356352 newBucket!200))))))

(assert (=> d!1328488 (= (noDuplicateKeys!633 (t!356352 newBucket!200)) e!2742005)))

(declare-fun b!4403626 () Bool)

(declare-fun e!2742006 () Bool)

(assert (=> b!4403626 (= e!2742005 e!2742006)))

(declare-fun res!1816621 () Bool)

(assert (=> b!4403626 (=> (not res!1816621) (not e!2742006))))

(assert (=> b!4403626 (= res!1816621 (not (containsKey!947 (t!356352 (t!356352 newBucket!200)) (_1!27745 (h!54923 (t!356352 newBucket!200))))))))

(declare-fun b!4403627 () Bool)

(assert (=> b!4403627 (= e!2742006 (noDuplicateKeys!633 (t!356352 (t!356352 newBucket!200))))))

(assert (= (and d!1328488 (not res!1816620)) b!4403626))

(assert (= (and b!4403626 res!1816621) b!4403627))

(declare-fun m!5068435 () Bool)

(assert (=> b!4403626 m!5068435))

(declare-fun m!5068437 () Bool)

(assert (=> b!4403627 m!5068437))

(assert (=> b!4402772 d!1328488))

(assert (=> d!1327980 d!1327944))

(declare-fun d!1328490 () Bool)

(assert (=> d!1328490 (contains!11691 lt!1607072 key!3918)))

(assert (=> d!1328490 true))

(declare-fun _$11!1212 () Unit!79009)

(assert (=> d!1328490 (= (choose!27633 (_2!27746 (h!54924 (toList!3250 lm!1707))) key!3918 newValue!99 lt!1607072) _$11!1212)))

(declare-fun bs!729954 () Bool)

(assert (= bs!729954 d!1328490))

(assert (=> bs!729954 m!5066401))

(assert (=> d!1327980 d!1328490))

(assert (=> d!1327980 d!1328378))

(declare-fun d!1328492 () Bool)

(declare-fun choose!27655 (Hashable!5025 K!10650) (_ BitVec 64))

(assert (=> d!1328492 (= (hash!1895 hashF!1247 key!3918) (choose!27655 hashF!1247 key!3918))))

(declare-fun bs!729955 () Bool)

(assert (= bs!729955 d!1328492))

(declare-fun m!5068439 () Bool)

(assert (=> bs!729955 m!5068439))

(assert (=> d!1328012 d!1328492))

(declare-fun d!1328494 () Bool)

(assert (=> d!1328494 (isDefined!7914 (getValueByKey!607 (toList!3249 lt!1607082) key!3918))))

(declare-fun lt!1607990 () Unit!79009)

(assert (=> d!1328494 (= lt!1607990 (choose!27651 (toList!3249 lt!1607082) key!3918))))

(assert (=> d!1328494 (invariantList!754 (toList!3249 lt!1607082))))

(assert (=> d!1328494 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!517 (toList!3249 lt!1607082) key!3918) lt!1607990)))

(declare-fun bs!729956 () Bool)

(assert (= bs!729956 d!1328494))

(assert (=> bs!729956 m!5066679))

(assert (=> bs!729956 m!5066679))

(assert (=> bs!729956 m!5066681))

(declare-fun m!5068447 () Bool)

(assert (=> bs!729956 m!5068447))

(assert (=> bs!729956 m!5066981))

(assert (=> b!4402657 d!1328494))

(declare-fun d!1328496 () Bool)

(assert (=> d!1328496 (= (isDefined!7914 (getValueByKey!607 (toList!3249 lt!1607082) key!3918)) (not (isEmpty!28291 (getValueByKey!607 (toList!3249 lt!1607082) key!3918))))))

(declare-fun bs!729957 () Bool)

(assert (= bs!729957 d!1328496))

(assert (=> bs!729957 m!5066679))

(declare-fun m!5068457 () Bool)

(assert (=> bs!729957 m!5068457))

(assert (=> b!4402657 d!1328496))

(declare-fun b!4403629 () Bool)

(declare-fun e!2742007 () Option!10621)

(declare-fun e!2742008 () Option!10621)

(assert (=> b!4403629 (= e!2742007 e!2742008)))

(declare-fun c!749833 () Bool)

(assert (=> b!4403629 (= c!749833 (and ((_ is Cons!49294) (toList!3249 lt!1607082)) (not (= (_1!27745 (h!54923 (toList!3249 lt!1607082))) key!3918))))))

(declare-fun b!4403631 () Bool)

(assert (=> b!4403631 (= e!2742008 None!10620)))

(declare-fun b!4403630 () Bool)

(assert (=> b!4403630 (= e!2742008 (getValueByKey!607 (t!356352 (toList!3249 lt!1607082)) key!3918))))

(declare-fun b!4403628 () Bool)

(assert (=> b!4403628 (= e!2742007 (Some!10620 (_2!27745 (h!54923 (toList!3249 lt!1607082)))))))

(declare-fun d!1328498 () Bool)

(declare-fun c!749832 () Bool)

(assert (=> d!1328498 (= c!749832 (and ((_ is Cons!49294) (toList!3249 lt!1607082)) (= (_1!27745 (h!54923 (toList!3249 lt!1607082))) key!3918)))))

(assert (=> d!1328498 (= (getValueByKey!607 (toList!3249 lt!1607082) key!3918) e!2742007)))

(assert (= (and d!1328498 c!749832) b!4403628))

(assert (= (and d!1328498 (not c!749832)) b!4403629))

(assert (= (and b!4403629 c!749833) b!4403630))

(assert (= (and b!4403629 (not c!749833)) b!4403631))

(declare-fun m!5068475 () Bool)

(assert (=> b!4403630 m!5068475))

(assert (=> b!4402657 d!1328498))

(declare-fun d!1328500 () Bool)

(assert (=> d!1328500 (contains!11695 (getKeysList!201 (toList!3249 lt!1607082)) key!3918)))

(declare-fun lt!1607991 () Unit!79009)

(assert (=> d!1328500 (= lt!1607991 (choose!27652 (toList!3249 lt!1607082) key!3918))))

(assert (=> d!1328500 (invariantList!754 (toList!3249 lt!1607082))))

(assert (=> d!1328500 (= (lemmaInListThenGetKeysListContains!198 (toList!3249 lt!1607082) key!3918) lt!1607991)))

(declare-fun bs!729958 () Bool)

(assert (= bs!729958 d!1328500))

(assert (=> bs!729958 m!5066691))

(assert (=> bs!729958 m!5066691))

(declare-fun m!5068483 () Bool)

(assert (=> bs!729958 m!5068483))

(declare-fun m!5068485 () Bool)

(assert (=> bs!729958 m!5068485))

(assert (=> bs!729958 m!5066981))

(assert (=> b!4402657 d!1328500))

(declare-fun d!1328504 () Bool)

(declare-fun lt!1607993 () Bool)

(assert (=> d!1328504 (= lt!1607993 (select (content!7881 e!2741381) key!3918))))

(declare-fun e!2742010 () Bool)

(assert (=> d!1328504 (= lt!1607993 e!2742010)))

(declare-fun res!1816622 () Bool)

(assert (=> d!1328504 (=> (not res!1816622) (not e!2742010))))

(assert (=> d!1328504 (= res!1816622 ((_ is Cons!49297) e!2741381))))

(assert (=> d!1328504 (= (contains!11695 e!2741381 key!3918) lt!1607993)))

(declare-fun b!4403634 () Bool)

(declare-fun e!2742011 () Bool)

(assert (=> b!4403634 (= e!2742010 e!2742011)))

(declare-fun res!1816623 () Bool)

(assert (=> b!4403634 (=> res!1816623 e!2742011)))

(assert (=> b!4403634 (= res!1816623 (= (h!54928 e!2741381) key!3918))))

(declare-fun b!4403635 () Bool)

(assert (=> b!4403635 (= e!2742011 (contains!11695 (t!356355 e!2741381) key!3918))))

(assert (= (and d!1328504 res!1816622) b!4403634))

(assert (= (and b!4403634 (not res!1816623)) b!4403635))

(declare-fun m!5068487 () Bool)

(assert (=> d!1328504 m!5068487))

(declare-fun m!5068489 () Bool)

(assert (=> d!1328504 m!5068489))

(declare-fun m!5068491 () Bool)

(assert (=> b!4403635 m!5068491))

(assert (=> bm!306366 d!1328504))

(assert (=> b!4402655 d!1328496))

(assert (=> b!4402655 d!1328498))

(assert (=> b!4402629 d!1328318))

(assert (=> b!4402629 d!1328266))

(declare-fun d!1328506 () Bool)

(assert (=> d!1328506 (isDefined!7914 (getValueByKey!607 (toList!3249 lt!1607086) key!3918))))

(declare-fun lt!1607994 () Unit!79009)

(assert (=> d!1328506 (= lt!1607994 (choose!27651 (toList!3249 lt!1607086) key!3918))))

(assert (=> d!1328506 (invariantList!754 (toList!3249 lt!1607086))))

(assert (=> d!1328506 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!517 (toList!3249 lt!1607086) key!3918) lt!1607994)))

(declare-fun bs!729963 () Bool)

(assert (= bs!729963 d!1328506))

(assert (=> bs!729963 m!5066913))

(assert (=> bs!729963 m!5066913))

(assert (=> bs!729963 m!5066915))

(declare-fun m!5068493 () Bool)

(assert (=> bs!729963 m!5068493))

(assert (=> bs!729963 m!5067107))

(assert (=> b!4402764 d!1328506))

(assert (=> b!4402764 d!1328362))

(assert (=> b!4402764 d!1328364))

(declare-fun d!1328508 () Bool)

(assert (=> d!1328508 (contains!11695 (getKeysList!201 (toList!3249 lt!1607086)) key!3918)))

(declare-fun lt!1607995 () Unit!79009)

(assert (=> d!1328508 (= lt!1607995 (choose!27652 (toList!3249 lt!1607086) key!3918))))

(assert (=> d!1328508 (invariantList!754 (toList!3249 lt!1607086))))

(assert (=> d!1328508 (= (lemmaInListThenGetKeysListContains!198 (toList!3249 lt!1607086) key!3918) lt!1607995)))

(declare-fun bs!729968 () Bool)

(assert (= bs!729968 d!1328508))

(assert (=> bs!729968 m!5066925))

(assert (=> bs!729968 m!5066925))

(declare-fun m!5068495 () Bool)

(assert (=> bs!729968 m!5068495))

(declare-fun m!5068497 () Bool)

(assert (=> bs!729968 m!5068497))

(assert (=> bs!729968 m!5067107))

(assert (=> b!4402764 d!1328508))

(assert (=> bm!306385 d!1328326))

(declare-fun d!1328510 () Bool)

(assert (=> d!1328510 (= (invariantList!754 (toList!3249 lt!1607416)) (noDuplicatedKeys!158 (toList!3249 lt!1607416)))))

(declare-fun bs!729971 () Bool)

(assert (= bs!729971 d!1328510))

(declare-fun m!5068499 () Bool)

(assert (=> bs!729971 m!5068499))

(assert (=> d!1328010 d!1328510))

(declare-fun d!1328512 () Bool)

(declare-fun res!1816624 () Bool)

(declare-fun e!2742012 () Bool)

(assert (=> d!1328512 (=> res!1816624 e!2742012)))

(assert (=> d!1328512 (= res!1816624 ((_ is Nil!49295) (toList!3250 lt!1607074)))))

(assert (=> d!1328512 (= (forall!9378 (toList!3250 lt!1607074) lambda!149314) e!2742012)))

(declare-fun b!4403636 () Bool)

(declare-fun e!2742013 () Bool)

(assert (=> b!4403636 (= e!2742012 e!2742013)))

(declare-fun res!1816625 () Bool)

(assert (=> b!4403636 (=> (not res!1816625) (not e!2742013))))

(assert (=> b!4403636 (= res!1816625 (dynLambda!20770 lambda!149314 (h!54924 (toList!3250 lt!1607074))))))

(declare-fun b!4403637 () Bool)

(assert (=> b!4403637 (= e!2742013 (forall!9378 (t!356353 (toList!3250 lt!1607074)) lambda!149314))))

(assert (= (and d!1328512 (not res!1816624)) b!4403636))

(assert (= (and b!4403636 res!1816625) b!4403637))

(declare-fun b_lambda!140093 () Bool)

(assert (=> (not b_lambda!140093) (not b!4403636)))

(declare-fun m!5068505 () Bool)

(assert (=> b!4403636 m!5068505))

(declare-fun m!5068509 () Bool)

(assert (=> b!4403637 m!5068509))

(assert (=> d!1328010 d!1328512))

(assert (=> bs!729276 d!1328378))

(declare-fun b!4403640 () Bool)

(declare-fun e!2742016 () Bool)

(declare-fun tp!1331919 () Bool)

(assert (=> b!4403640 (= e!2742016 (and tp_is_empty!25769 tp_is_empty!25771 tp!1331919))))

(assert (=> b!4402777 (= tp!1331914 e!2742016)))

(assert (= (and b!4402777 ((_ is Cons!49294) (_2!27746 (h!54924 (toList!3250 lm!1707))))) b!4403640))

(declare-fun b!4403641 () Bool)

(declare-fun e!2742017 () Bool)

(declare-fun tp!1331920 () Bool)

(declare-fun tp!1331921 () Bool)

(assert (=> b!4403641 (= e!2742017 (and tp!1331920 tp!1331921))))

(assert (=> b!4402777 (= tp!1331915 e!2742017)))

(assert (= (and b!4402777 ((_ is Cons!49295) (t!356353 (toList!3250 lm!1707)))) b!4403641))

(declare-fun b!4403642 () Bool)

(declare-fun tp!1331922 () Bool)

(declare-fun e!2742018 () Bool)

(assert (=> b!4403642 (= e!2742018 (and tp_is_empty!25769 tp_is_empty!25771 tp!1331922))))

(assert (=> b!4402782 (= tp!1331918 e!2742018)))

(assert (= (and b!4402782 ((_ is Cons!49294) (t!356352 (t!356352 newBucket!200)))) b!4403642))

(declare-fun b_lambda!140095 () Bool)

(assert (= b_lambda!140049 (or start!428144 b_lambda!140095)))

(declare-fun bs!729973 () Bool)

(declare-fun d!1328518 () Bool)

(assert (= bs!729973 (and d!1328518 start!428144)))

(assert (=> bs!729973 (= (dynLambda!20770 lambda!149221 (h!54924 (toList!3250 (+!881 lm!1707 (tuple2!48905 hash!377 newBucket!200))))) (noDuplicateKeys!633 (_2!27746 (h!54924 (toList!3250 (+!881 lm!1707 (tuple2!48905 hash!377 newBucket!200)))))))))

(declare-fun m!5068517 () Bool)

(assert (=> bs!729973 m!5068517))

(assert (=> b!4403390 d!1328518))

(declare-fun b_lambda!140097 () Bool)

(assert (= b_lambda!140069 (or d!1328006 b_lambda!140097)))

(declare-fun bs!729974 () Bool)

(declare-fun d!1328520 () Bool)

(assert (= bs!729974 (and d!1328520 d!1328006)))

(assert (=> bs!729974 (= (dynLambda!20770 lambda!149312 (h!54924 (toList!3250 (+!881 lt!1607074 lt!1607073)))) (noDuplicateKeys!633 (_2!27746 (h!54924 (toList!3250 (+!881 lt!1607074 lt!1607073))))))))

(assert (=> bs!729974 m!5067553))

(assert (=> b!4403508 d!1328520))

(declare-fun b_lambda!140099 () Bool)

(assert (= b_lambda!140087 (or b!4402719 b_lambda!140099)))

(declare-fun bs!729975 () Bool)

(declare-fun d!1328522 () Bool)

(assert (= bs!729975 (and d!1328522 b!4402719)))

(assert (=> bs!729975 (= (dynLambda!20772 lambda!149308 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707))))) (contains!11691 lt!1607393 (_1!27745 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707)))))))))

(assert (=> bs!729975 m!5066821))

(assert (=> d!1328474 d!1328522))

(declare-fun b_lambda!140101 () Bool)

(assert (= b_lambda!140081 (or b!4402719 b_lambda!140101)))

(declare-fun bs!729976 () Bool)

(declare-fun d!1328524 () Bool)

(assert (= bs!729976 (and d!1328524 b!4402719)))

(assert (=> bs!729976 (= (dynLambda!20772 lambda!149307 (h!54923 (toList!3249 lt!1607082))) (contains!11691 lt!1607082 (_1!27745 (h!54923 (toList!3249 lt!1607082)))))))

(declare-fun m!5068519 () Bool)

(assert (=> bs!729976 m!5068519))

(assert (=> b!4403590 d!1328524))

(declare-fun b_lambda!140103 () Bool)

(assert (= b_lambda!140017 (or d!1327982 b_lambda!140103)))

(declare-fun bs!729977 () Bool)

(declare-fun d!1328526 () Bool)

(assert (= bs!729977 (and d!1328526 d!1327982)))

(assert (=> bs!729977 (= (dynLambda!20770 lambda!149242 (h!54924 (toList!3250 lt!1607074))) (noDuplicateKeys!633 (_2!27746 (h!54924 (toList!3250 lt!1607074)))))))

(assert (=> bs!729977 m!5068221))

(assert (=> b!4402920 d!1328526))

(declare-fun b_lambda!140105 () Bool)

(assert (= b_lambda!140083 (or b!4402719 b_lambda!140105)))

(declare-fun bs!729978 () Bool)

(declare-fun d!1328528 () Bool)

(assert (= bs!729978 (and d!1328528 b!4402719)))

(assert (=> bs!729978 (= (dynLambda!20772 lambda!149308 (h!54923 (toList!3249 lt!1607082))) (contains!11691 lt!1607393 (_1!27745 (h!54923 (toList!3249 lt!1607082)))))))

(declare-fun m!5068521 () Bool)

(assert (=> bs!729978 m!5068521))

(assert (=> b!4403592 d!1328528))

(declare-fun b_lambda!140107 () Bool)

(assert (= b_lambda!140053 (or d!1327978 b_lambda!140107)))

(declare-fun bs!729979 () Bool)

(declare-fun d!1328530 () Bool)

(assert (= bs!729979 (and d!1328530 d!1327978)))

(assert (=> bs!729979 (= (dynLambda!20770 lambda!149239 (h!54924 (toList!3250 lm!1707))) (noDuplicateKeys!633 (_2!27746 (h!54924 (toList!3250 lm!1707)))))))

(assert (=> bs!729979 m!5066699))

(assert (=> b!4403404 d!1328530))

(declare-fun b_lambda!140109 () Bool)

(assert (= b_lambda!140077 (or d!1328022 b_lambda!140109)))

(declare-fun bs!729980 () Bool)

(declare-fun d!1328532 () Bool)

(assert (= bs!729980 (and d!1328532 d!1328022)))

(assert (=> bs!729980 (= (dynLambda!20772 lambda!149320 (h!54923 newBucket!200)) (= (hash!1889 hashF!1247 (_1!27745 (h!54923 newBucket!200))) hash!377))))

(declare-fun m!5068523 () Bool)

(assert (=> bs!729980 m!5068523))

(assert (=> b!4403542 d!1328532))

(declare-fun b_lambda!140111 () Bool)

(assert (= b_lambda!140065 (or start!428144 b_lambda!140111)))

(declare-fun bs!729981 () Bool)

(declare-fun d!1328534 () Bool)

(assert (= bs!729981 (and d!1328534 start!428144)))

(assert (=> bs!729981 (= (dynLambda!20770 lambda!149221 (h!54924 (t!356353 (toList!3250 lt!1607080)))) (noDuplicateKeys!633 (_2!27746 (h!54924 (t!356353 (toList!3250 lt!1607080))))))))

(declare-fun m!5068525 () Bool)

(assert (=> bs!729981 m!5068525))

(assert (=> b!4403486 d!1328534))

(declare-fun b_lambda!140113 () Bool)

(assert (= b_lambda!140039 (or d!1327986 b_lambda!140113)))

(declare-fun bs!729982 () Bool)

(declare-fun d!1328536 () Bool)

(assert (= bs!729982 (and d!1328536 d!1327986)))

(assert (=> bs!729982 (= (dynLambda!20772 lambda!149309 (h!54923 (toList!3249 lt!1607082))) (contains!11691 lt!1607400 (_1!27745 (h!54923 (toList!3249 lt!1607082)))))))

(declare-fun m!5068527 () Bool)

(assert (=> bs!729982 m!5068527))

(assert (=> b!4403205 d!1328536))

(declare-fun b_lambda!140115 () Bool)

(assert (= b_lambda!140075 (or start!428144 b_lambda!140115)))

(assert (=> d!1328440 d!1328040))

(declare-fun b_lambda!140117 () Bool)

(assert (= b_lambda!140091 (or b!4402719 b_lambda!140117)))

(assert (=> b!4403624 d!1328522))

(declare-fun b_lambda!140119 () Bool)

(assert (= b_lambda!140051 (or d!1328008 b_lambda!140119)))

(declare-fun bs!729983 () Bool)

(declare-fun d!1328538 () Bool)

(assert (= bs!729983 (and d!1328538 d!1328008)))

(assert (=> bs!729983 (= (dynLambda!20770 lambda!149313 (h!54924 (t!356353 (toList!3250 lm!1707)))) (noDuplicateKeys!633 (_2!27746 (h!54924 (t!356353 (toList!3250 lm!1707))))))))

(assert (=> bs!729983 m!5067819))

(assert (=> b!4403402 d!1328538))

(declare-fun b_lambda!140121 () Bool)

(assert (= b_lambda!140093 (or d!1328010 b_lambda!140121)))

(declare-fun bs!729984 () Bool)

(declare-fun d!1328540 () Bool)

(assert (= bs!729984 (and d!1328540 d!1328010)))

(assert (=> bs!729984 (= (dynLambda!20770 lambda!149314 (h!54924 (toList!3250 lt!1607074))) (noDuplicateKeys!633 (_2!27746 (h!54924 (toList!3250 lt!1607074)))))))

(assert (=> bs!729984 m!5068221))

(assert (=> b!4403636 d!1328540))

(declare-fun b_lambda!140123 () Bool)

(assert (= b_lambda!140061 (or d!1327986 b_lambda!140123)))

(declare-fun bs!729985 () Bool)

(declare-fun d!1328542 () Bool)

(assert (= bs!729985 (and d!1328542 d!1327986)))

(assert (=> bs!729985 (= (dynLambda!20772 lambda!149309 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707))))) (contains!11691 lt!1607400 (_1!27745 (h!54923 (_2!27746 (h!54924 (toList!3250 lm!1707)))))))))

(declare-fun m!5068529 () Bool)

(assert (=> bs!729985 m!5068529))

(assert (=> b!4403465 d!1328542))

(declare-fun b_lambda!140125 () Bool)

(assert (= b_lambda!140059 (or d!1328020 b_lambda!140125)))

(declare-fun bs!729986 () Bool)

(declare-fun d!1328544 () Bool)

(assert (= bs!729986 (and d!1328544 d!1328020)))

(assert (=> bs!729986 (= (dynLambda!20770 lambda!149317 (h!54924 (toList!3250 lm!1707))) (allKeysSameHash!591 (_2!27746 (h!54924 (toList!3250 lm!1707))) (_1!27746 (h!54924 (toList!3250 lm!1707))) hashF!1247))))

(declare-fun m!5068531 () Bool)

(assert (=> bs!729986 m!5068531))

(assert (=> b!4403447 d!1328544))

(declare-fun b_lambda!140127 () Bool)

(assert (= b_lambda!140085 (or b!4402719 b_lambda!140127)))

(declare-fun bs!729987 () Bool)

(declare-fun d!1328546 () Bool)

(assert (= bs!729987 (and d!1328546 b!4402719)))

(assert (=> bs!729987 (= (dynLambda!20772 lambda!149308 (h!54923 (t!356352 (_2!27746 (h!54924 (toList!3250 lm!1707)))))) (contains!11691 lt!1607393 (_1!27745 (h!54923 (t!356352 (_2!27746 (h!54924 (toList!3250 lm!1707))))))))))

(declare-fun m!5068533 () Bool)

(assert (=> bs!729987 m!5068533))

(assert (=> b!4403594 d!1328546))

(declare-fun b_lambda!140129 () Bool)

(assert (= b_lambda!140055 (or d!1328032 b_lambda!140129)))

(declare-fun bs!729988 () Bool)

(declare-fun d!1328548 () Bool)

(assert (= bs!729988 (and d!1328548 d!1328032)))

(assert (=> bs!729988 (= (dynLambda!20770 lambda!149321 (h!54924 (toList!3250 lm!1707))) (noDuplicateKeys!633 (_2!27746 (h!54924 (toList!3250 lm!1707)))))))

(assert (=> bs!729988 m!5066699))

(assert (=> b!4403408 d!1328548))

(declare-fun b_lambda!140131 () Bool)

(assert (= b_lambda!140089 (or b!4402719 b_lambda!140131)))

(declare-fun bs!729989 () Bool)

(declare-fun d!1328550 () Bool)

(assert (= bs!729989 (and d!1328550 b!4402719)))

(assert (=> bs!729989 (= (dynLambda!20772 lambda!149308 (h!54923 (toList!3249 lt!1607404))) (contains!11691 lt!1607393 (_1!27745 (h!54923 (toList!3249 lt!1607404)))))))

(declare-fun m!5068535 () Bool)

(assert (=> bs!729989 m!5068535))

(assert (=> b!4403620 d!1328550))

(declare-fun b_lambda!140133 () Bool)

(assert (= b_lambda!140019 (or start!428144 b_lambda!140133)))

(declare-fun bs!729990 () Bool)

(declare-fun d!1328552 () Bool)

(assert (= bs!729990 (and d!1328552 start!428144)))

(assert (=> bs!729990 (= (dynLambda!20770 lambda!149221 (h!54924 (t!356353 (toList!3250 lm!1707)))) (noDuplicateKeys!633 (_2!27746 (h!54924 (t!356353 (toList!3250 lm!1707))))))))

(assert (=> bs!729990 m!5067819))

(assert (=> b!4403025 d!1328552))

(check-sat (not b!4403399) (not b!4403601) (not d!1328396) (not d!1328490) (not b!4403287) (not b_lambda!140099) (not b!4403609) (not d!1328362) (not b!4403155) (not b!4402938) (not b!4403487) (not b_lambda!140111) (not d!1328500) (not b!4403320) (not b!4403400) (not b!4403597) (not b!4403459) (not b!4402844) (not b!4403163) (not b!4403024) (not b_lambda!140123) (not bm!306445) (not b!4403607) (not b!4403623) (not d!1328284) (not b!4403468) (not bs!729973) (not b!4403531) (not d!1328076) (not bm!306469) (not b!4403324) (not b!4403528) (not b!4403002) (not b_lambda!140097) (not b!4402998) (not d!1328320) (not b!4402924) (not d!1328510) (not b!4403593) (not b!4403165) (not b!4403166) (not b!4402934) (not b!4403419) (not b!4403347) (not b!4403603) (not b!4402921) (not b!4403421) (not b_lambda!140101) (not d!1328444) (not bm!306458) (not b!4403326) (not b!4403164) (not bs!729982) (not bs!729985) (not d!1328314) (not d!1328496) (not b!4403351) (not d!1328330) (not b!4403635) (not b!4403169) (not bs!729975) (not b_lambda!140113) (not bs!729981) (not b!4403079) (not d!1328484) (not b!4403080) (not b!4402870) (not b!4403476) (not b!4403625) (not b!4403035) (not bs!729987) (not b!4403286) (not b!4403464) (not b!4403152) (not b!4403027) (not b!4403209) (not d!1328474) (not b!4403494) (not b!4403280) (not b!4403409) (not bs!729980) (not b!4403073) (not b_lambda!140115) (not b!4403237) (not d!1328310) (not d!1328226) (not bm!306424) (not bm!306423) (not bs!729977) (not b!4402965) (not b!4402927) (not d!1328192) (not d!1328068) (not b_lambda!140011) (not bs!729988) (not b!4403641) (not b!4402989) (not b!4402841) (not b!4403405) (not bm!306402) (not d!1328318) (not b!4403026) (not bs!729976) (not b!4403596) (not d!1328398) (not b_lambda!140133) (not b!4402925) (not b!4403491) (not b!4403206) (not b_lambda!140103) (not b!4403391) (not b_lambda!140105) (not d!1328494) (not d!1328134) (not d!1328438) (not b!4403225) (not b!4403630) (not b!4403448) (not b!4403014) (not d!1328340) (not d!1328258) (not b_lambda!140107) (not bm!306466) (not b!4403547) (not b_lambda!140119) (not b_lambda!140015) (not d!1328268) (not b!4402988) (not b!4403591) (not d!1328100) (not b!4402932) (not b!4403003) (not b!4403621) (not bm!306468) (not b!4403428) (not b!4402997) (not b!4403157) (not b!4403159) (not b!4403034) (not b!4403442) (not b!4403224) (not b!4403414) (not b!4403348) (not bs!729990) (not d!1328412) (not d!1328346) (not bs!729979) (not bm!306419) (not b!4403000) (not d!1328418) (not d!1328250) tp_is_empty!25769 (not b!4403456) (not d!1328114) (not bs!729984) (not b!4403626) (not b_lambda!140121) (not b!4403540) (not bs!729974) (not d!1328088) (not b!4402922) (not b!4403552) (not b!4403030) (not b!4403527) (not b!4402936) (not b!4403434) (not d!1328116) (not b!4402842) (not b!4403283) (not d!1328306) (not b!4403458) (not b!4403445) (not b!4403549) (not bm!306455) (not b!4403545) (not b_lambda!140009) (not bm!306421) (not b!4403316) (not b!4403032) (not b_lambda!140109) (not b!4403627) (not d!1328504) (not b!4403230) (not d!1328074) (not b!4403018) (not bm!306444) (not bm!306467) (not b!4403599) (not d!1328476) (not d!1328130) tp_is_empty!25771 (not b!4403490) (not d!1328424) (not bm!306457) (not b!4403551) (not b!4403277) (not b!4403156) (not d!1328082) (not bs!729983) (not b!4402887) (not d!1328064) (not b!4403153) (not b!4403488) (not d!1328084) (not bm!306437) (not b!4403200) (not d!1328086) (not b!4403317) (not b_lambda!140127) (not b!4403550) (not b!4403028) (not b!4403189) (not b!4403595) (not d!1328508) (not b!4403544) (not d!1328152) (not b_lambda!140131) (not bm!306459) (not b!4403440) (not b!4403462) (not bs!729989) (not d!1328402) (not b_lambda!140013) (not b_lambda!140095) (not b!4402838) (not b!4402840) (not b!4402926) (not b_lambda!140117) (not b!4403466) (not b!4402935) (not b!4403001) (not d!1328054) (not d!1328372) (not b!4403407) (not b!4403403) (not bm!306435) (not b!4403212) (not b!4403543) (not b!4402867) (not d!1328228) (not b_lambda!140057) (not bm!306425) (not b!4403637) (not d!1328322) (not d!1328472) (not b!4403509) (not b!4403453) (not b!4403467) (not b!4403450) (not b!4403431) (not b!4403640) (not d!1328266) (not d!1328248) (not b!4403016) (not b!4403489) (not d!1328366) (not b!4402990) (not b!4403193) (not d!1328092) (not b!4403290) (not b!4403604) (not b!4403602) (not b!4403422) (not bs!729978) (not b!4403323) (not d!1328066) (not d!1328446) (not bm!306436) (not bs!729986) (not b!4403608) (not b!4403315) (not d!1328200) (not d!1328270) (not b!4403322) (not d!1328122) (not b!4402864) (not b!4403236) (not d!1328244) (not d!1328492) (not bm!306456) (not b!4402857) (not d!1328150) (not b!4402950) (not b_lambda!140129) (not b!4403514) (not bm!306446) (not d!1328506) (not b!4403622) (not b!4403642) (not b!4403460) (not d!1328374) (not b!4403033) (not b!4403411) (not b!4403227) (not d!1328138) (not b!4403612) (not d!1328304) (not bm!306434) (not d!1328252) (not b!4403416) (not b!4403174) (not d!1328360) (not b_lambda!140125) (not b!4403376) (not d!1328072))
(check-sat)
