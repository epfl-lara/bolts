; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!417960 () Bool)

(assert start!417960)

(declare-fun b!4334602 () Bool)

(declare-fun e!2697213 () Bool)

(declare-datatypes ((K!10000 0))(
  ( (K!10001 (val!16271 Int)) )
))
(declare-datatypes ((V!10246 0))(
  ( (V!10247 (val!16272 Int)) )
))
(declare-datatypes ((tuple2!47862 0))(
  ( (tuple2!47863 (_1!27225 K!10000) (_2!27225 V!10246)) )
))
(declare-datatypes ((List!48767 0))(
  ( (Nil!48643) (Cons!48643 (h!54138 tuple2!47862) (t!355683 List!48767)) )
))
(declare-fun lt!1547833 () List!48767)

(declare-fun noDuplicateKeys!373 (List!48767) Bool)

(assert (=> b!4334602 (= e!2697213 (noDuplicateKeys!373 lt!1547833))))

(declare-datatypes ((ListMap!1973 0))(
  ( (ListMap!1974 (toList!2729 List!48767)) )
))
(declare-fun lt!1547830 () ListMap!1973)

(declare-fun lt!1547834 () ListMap!1973)

(declare-fun lt!1547838 () tuple2!47862)

(declare-fun +!417 (ListMap!1973 tuple2!47862) ListMap!1973)

(assert (=> b!4334602 (= lt!1547830 (+!417 lt!1547834 lt!1547838))))

(declare-fun e!2697210 () Bool)

(assert (=> b!4334602 e!2697210))

(declare-fun res!1777596 () Bool)

(assert (=> b!4334602 (=> (not res!1777596) (not e!2697210))))

(declare-fun newBucket!200 () List!48767)

(declare-fun lt!1547832 () ListMap!1973)

(declare-fun addToMapMapFromBucket!81 (List!48767 ListMap!1973) ListMap!1973)

(assert (=> b!4334602 (= res!1777596 (= lt!1547832 (addToMapMapFromBucket!81 newBucket!200 lt!1547834)))))

(declare-datatypes ((tuple2!47864 0))(
  ( (tuple2!47865 (_1!27226 (_ BitVec 64)) (_2!27226 List!48767)) )
))
(declare-datatypes ((List!48768 0))(
  ( (Nil!48644) (Cons!48644 (h!54139 tuple2!47864) (t!355684 List!48768)) )
))
(declare-datatypes ((ListLongMap!1379 0))(
  ( (ListLongMap!1380 (toList!2730 List!48768)) )
))
(declare-fun lt!1547837 () ListLongMap!1379)

(declare-fun extractMap!432 (List!48768) ListMap!1973)

(assert (=> b!4334602 (= lt!1547832 (extractMap!432 (toList!2730 lt!1547837)))))

(declare-fun lm!1707 () ListLongMap!1379)

(assert (=> b!4334602 (= lt!1547834 (extractMap!432 (t!355684 (toList!2730 lm!1707))))))

(declare-fun b!4334603 () Bool)

(declare-fun res!1777601 () Bool)

(declare-fun e!2697208 () Bool)

(assert (=> b!4334603 (=> res!1777601 e!2697208)))

(assert (=> b!4334603 (= res!1777601 (not (noDuplicateKeys!373 newBucket!200)))))

(declare-fun b!4334604 () Bool)

(declare-fun e!2697211 () Bool)

(declare-fun tp!1328866 () Bool)

(assert (=> b!4334604 (= e!2697211 tp!1328866)))

(declare-fun b!4334605 () Bool)

(declare-fun res!1777599 () Bool)

(declare-fun e!2697209 () Bool)

(assert (=> b!4334605 (=> (not res!1777599) (not e!2697209))))

(declare-fun hash!377 () (_ BitVec 64))

(declare-fun contains!10684 (ListLongMap!1379 (_ BitVec 64)) Bool)

(assert (=> b!4334605 (= res!1777599 (contains!10684 lm!1707 hash!377))))

(declare-fun b!4334606 () Bool)

(assert (=> b!4334606 (= e!2697208 e!2697213)))

(declare-fun res!1777598 () Bool)

(assert (=> b!4334606 (=> res!1777598 e!2697213)))

(get-info :version)

(assert (=> b!4334606 (= res!1777598 (or (not ((_ is Cons!48644) (toList!2730 lm!1707))) (not (= (_1!27226 (h!54139 (toList!2730 lm!1707))) hash!377))))))

(declare-fun e!2697214 () Bool)

(assert (=> b!4334606 e!2697214))

(declare-fun res!1777597 () Bool)

(assert (=> b!4334606 (=> (not res!1777597) (not e!2697214))))

(declare-fun lambda!135417 () Int)

(declare-fun forall!8935 (List!48768 Int) Bool)

(assert (=> b!4334606 (= res!1777597 (forall!8935 (toList!2730 lt!1547837) lambda!135417))))

(declare-fun lt!1547831 () tuple2!47864)

(declare-fun +!418 (ListLongMap!1379 tuple2!47864) ListLongMap!1379)

(assert (=> b!4334606 (= lt!1547837 (+!418 lm!1707 lt!1547831))))

(assert (=> b!4334606 (= lt!1547831 (tuple2!47865 hash!377 newBucket!200))))

(declare-datatypes ((Unit!68360 0))(
  ( (Unit!68361) )
))
(declare-fun lt!1547836 () Unit!68360)

(declare-fun addValidProp!27 (ListLongMap!1379 Int (_ BitVec 64) List!48767) Unit!68360)

(assert (=> b!4334606 (= lt!1547836 (addValidProp!27 lm!1707 lambda!135417 hash!377 newBucket!200))))

(assert (=> b!4334606 (forall!8935 (toList!2730 lm!1707) lambda!135417)))

(declare-fun b!4334607 () Bool)

(assert (=> b!4334607 (= e!2697209 (not e!2697208))))

(declare-fun res!1777593 () Bool)

(assert (=> b!4334607 (=> res!1777593 e!2697208)))

(declare-fun lt!1547828 () List!48767)

(assert (=> b!4334607 (= res!1777593 (not (= newBucket!200 lt!1547828)))))

(assert (=> b!4334607 (= lt!1547828 (Cons!48643 lt!1547838 lt!1547833))))

(declare-fun lt!1547829 () List!48767)

(declare-fun key!3918 () K!10000)

(declare-fun removePairForKey!343 (List!48767 K!10000) List!48767)

(assert (=> b!4334607 (= lt!1547833 (removePairForKey!343 lt!1547829 key!3918))))

(declare-fun newValue!99 () V!10246)

(assert (=> b!4334607 (= lt!1547838 (tuple2!47863 key!3918 newValue!99))))

(declare-fun lt!1547839 () Unit!68360)

(declare-fun lt!1547835 () tuple2!47864)

(declare-fun forallContained!1585 (List!48768 Int tuple2!47864) Unit!68360)

(assert (=> b!4334607 (= lt!1547839 (forallContained!1585 (toList!2730 lm!1707) lambda!135417 lt!1547835))))

(declare-fun contains!10685 (List!48768 tuple2!47864) Bool)

(assert (=> b!4334607 (contains!10685 (toList!2730 lm!1707) lt!1547835)))

(assert (=> b!4334607 (= lt!1547835 (tuple2!47865 hash!377 lt!1547829))))

(declare-fun lt!1547840 () Unit!68360)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!220 (List!48768 (_ BitVec 64) List!48767) Unit!68360)

(assert (=> b!4334607 (= lt!1547840 (lemmaGetValueByKeyImpliesContainsTuple!220 (toList!2730 lm!1707) hash!377 lt!1547829))))

(declare-fun apply!11225 (ListLongMap!1379 (_ BitVec 64)) List!48767)

(assert (=> b!4334607 (= lt!1547829 (apply!11225 lm!1707 hash!377))))

(declare-fun b!4334608 () Bool)

(declare-fun res!1777600 () Bool)

(assert (=> b!4334608 (=> (not res!1777600) (not e!2697209))))

(declare-datatypes ((Hashable!4765 0))(
  ( (HashableExt!4764 (__x!30468 Int)) )
))
(declare-fun hashF!1247 () Hashable!4765)

(declare-fun hash!1315 (Hashable!4765 K!10000) (_ BitVec 64))

(assert (=> b!4334608 (= res!1777600 (= (hash!1315 hashF!1247 key!3918) hash!377))))

(declare-fun b!4334609 () Bool)

(assert (=> b!4334609 (= e!2697214 (or (not ((_ is Cons!48644) (toList!2730 lm!1707))) (not (= (_1!27226 (h!54139 (toList!2730 lm!1707))) hash!377)) (= lt!1547837 (ListLongMap!1380 (Cons!48644 lt!1547831 (t!355684 (toList!2730 lm!1707)))))))))

(declare-fun b!4334610 () Bool)

(assert (=> b!4334610 (= e!2697210 (= lt!1547832 (addToMapMapFromBucket!81 lt!1547828 lt!1547834)))))

(declare-fun b!4334611 () Bool)

(declare-fun res!1777602 () Bool)

(assert (=> b!4334611 (=> (not res!1777602) (not e!2697209))))

(declare-fun allKeysSameHashInMap!477 (ListLongMap!1379 Hashable!4765) Bool)

(assert (=> b!4334611 (= res!1777602 (allKeysSameHashInMap!477 lm!1707 hashF!1247))))

(declare-fun b!4334612 () Bool)

(declare-fun res!1777595 () Bool)

(assert (=> b!4334612 (=> (not res!1777595) (not e!2697214))))

(assert (=> b!4334612 (= res!1777595 (forall!8935 (toList!2730 lt!1547837) lambda!135417))))

(declare-fun b!4334601 () Bool)

(declare-fun res!1777594 () Bool)

(assert (=> b!4334601 (=> (not res!1777594) (not e!2697209))))

(declare-fun contains!10686 (ListMap!1973 K!10000) Bool)

(assert (=> b!4334601 (= res!1777594 (contains!10686 (extractMap!432 (toList!2730 lm!1707)) key!3918))))

(declare-fun res!1777603 () Bool)

(assert (=> start!417960 (=> (not res!1777603) (not e!2697209))))

(assert (=> start!417960 (= res!1777603 (forall!8935 (toList!2730 lm!1707) lambda!135417))))

(assert (=> start!417960 e!2697209))

(declare-fun e!2697212 () Bool)

(assert (=> start!417960 e!2697212))

(assert (=> start!417960 true))

(declare-fun inv!64186 (ListLongMap!1379) Bool)

(assert (=> start!417960 (and (inv!64186 lm!1707) e!2697211)))

(declare-fun tp_is_empty!24729 () Bool)

(assert (=> start!417960 tp_is_empty!24729))

(declare-fun tp_is_empty!24731 () Bool)

(assert (=> start!417960 tp_is_empty!24731))

(declare-fun b!4334613 () Bool)

(declare-fun res!1777592 () Bool)

(assert (=> b!4334613 (=> (not res!1777592) (not e!2697209))))

(declare-fun allKeysSameHash!331 (List!48767 (_ BitVec 64) Hashable!4765) Bool)

(assert (=> b!4334613 (= res!1777592 (allKeysSameHash!331 newBucket!200 hash!377 hashF!1247))))

(declare-fun tp!1328865 () Bool)

(declare-fun b!4334614 () Bool)

(assert (=> b!4334614 (= e!2697212 (and tp_is_empty!24729 tp_is_empty!24731 tp!1328865))))

(assert (= (and start!417960 res!1777603) b!4334611))

(assert (= (and b!4334611 res!1777602) b!4334608))

(assert (= (and b!4334608 res!1777600) b!4334613))

(assert (= (and b!4334613 res!1777592) b!4334601))

(assert (= (and b!4334601 res!1777594) b!4334605))

(assert (= (and b!4334605 res!1777599) b!4334607))

(assert (= (and b!4334607 (not res!1777593)) b!4334603))

(assert (= (and b!4334603 (not res!1777601)) b!4334606))

(assert (= (and b!4334606 res!1777597) b!4334612))

(assert (= (and b!4334612 res!1777595) b!4334609))

(assert (= (and b!4334606 (not res!1777598)) b!4334602))

(assert (= (and b!4334602 res!1777596) b!4334610))

(assert (= (and start!417960 ((_ is Cons!48643) newBucket!200)) b!4334614))

(assert (= start!417960 b!4334604))

(declare-fun m!4929113 () Bool)

(assert (=> start!417960 m!4929113))

(declare-fun m!4929115 () Bool)

(assert (=> start!417960 m!4929115))

(declare-fun m!4929117 () Bool)

(assert (=> b!4334601 m!4929117))

(assert (=> b!4334601 m!4929117))

(declare-fun m!4929119 () Bool)

(assert (=> b!4334601 m!4929119))

(declare-fun m!4929121 () Bool)

(assert (=> b!4334606 m!4929121))

(declare-fun m!4929123 () Bool)

(assert (=> b!4334606 m!4929123))

(declare-fun m!4929125 () Bool)

(assert (=> b!4334606 m!4929125))

(assert (=> b!4334606 m!4929113))

(declare-fun m!4929127 () Bool)

(assert (=> b!4334607 m!4929127))

(declare-fun m!4929129 () Bool)

(assert (=> b!4334607 m!4929129))

(declare-fun m!4929131 () Bool)

(assert (=> b!4334607 m!4929131))

(declare-fun m!4929133 () Bool)

(assert (=> b!4334607 m!4929133))

(declare-fun m!4929135 () Bool)

(assert (=> b!4334607 m!4929135))

(declare-fun m!4929137 () Bool)

(assert (=> b!4334602 m!4929137))

(declare-fun m!4929139 () Bool)

(assert (=> b!4334602 m!4929139))

(declare-fun m!4929141 () Bool)

(assert (=> b!4334602 m!4929141))

(declare-fun m!4929143 () Bool)

(assert (=> b!4334602 m!4929143))

(declare-fun m!4929145 () Bool)

(assert (=> b!4334602 m!4929145))

(declare-fun m!4929147 () Bool)

(assert (=> b!4334605 m!4929147))

(declare-fun m!4929149 () Bool)

(assert (=> b!4334603 m!4929149))

(declare-fun m!4929151 () Bool)

(assert (=> b!4334610 m!4929151))

(assert (=> b!4334612 m!4929121))

(declare-fun m!4929153 () Bool)

(assert (=> b!4334611 m!4929153))

(declare-fun m!4929155 () Bool)

(assert (=> b!4334608 m!4929155))

(declare-fun m!4929157 () Bool)

(assert (=> b!4334613 m!4929157))

(check-sat (not b!4334614) (not b!4334603) (not b!4334607) (not b!4334612) tp_is_empty!24731 (not start!417960) (not b!4334613) tp_is_empty!24729 (not b!4334611) (not b!4334601) (not b!4334602) (not b!4334610) (not b!4334606) (not b!4334604) (not b!4334605) (not b!4334608))
(check-sat)
(get-model)

(declare-fun b!4334689 () Bool)

(assert (=> b!4334689 true))

(declare-fun bs!608312 () Bool)

(declare-fun b!4334687 () Bool)

(assert (= bs!608312 (and b!4334687 b!4334689)))

(declare-fun lambda!135453 () Int)

(declare-fun lambda!135452 () Int)

(assert (=> bs!608312 (= lambda!135453 lambda!135452)))

(assert (=> b!4334687 true))

(declare-fun lambda!135454 () Int)

(declare-fun lt!1547928 () ListMap!1973)

(assert (=> bs!608312 (= (= lt!1547928 lt!1547834) (= lambda!135454 lambda!135452))))

(assert (=> b!4334687 (= (= lt!1547928 lt!1547834) (= lambda!135454 lambda!135453))))

(assert (=> b!4334687 true))

(declare-fun bs!608313 () Bool)

(declare-fun d!1274148 () Bool)

(assert (= bs!608313 (and d!1274148 b!4334689)))

(declare-fun lt!1547944 () ListMap!1973)

(declare-fun lambda!135455 () Int)

(assert (=> bs!608313 (= (= lt!1547944 lt!1547834) (= lambda!135455 lambda!135452))))

(declare-fun bs!608314 () Bool)

(assert (= bs!608314 (and d!1274148 b!4334687)))

(assert (=> bs!608314 (= (= lt!1547944 lt!1547834) (= lambda!135455 lambda!135453))))

(assert (=> bs!608314 (= (= lt!1547944 lt!1547928) (= lambda!135455 lambda!135454))))

(assert (=> d!1274148 true))

(declare-fun bm!301206 () Bool)

(declare-fun call!301212 () Unit!68360)

(declare-fun lemmaContainsAllItsOwnKeys!14 (ListMap!1973) Unit!68360)

(assert (=> bm!301206 (= call!301212 (lemmaContainsAllItsOwnKeys!14 lt!1547834))))

(declare-fun call!301211 () Bool)

(declare-fun bm!301207 () Bool)

(declare-fun c!737149 () Bool)

(declare-fun forall!8936 (List!48767 Int) Bool)

(assert (=> bm!301207 (= call!301211 (forall!8936 (toList!2729 lt!1547834) (ite c!737149 lambda!135452 lambda!135454)))))

(declare-fun b!4334686 () Bool)

(declare-fun e!2697264 () Bool)

(assert (=> b!4334686 (= e!2697264 (forall!8936 (toList!2729 lt!1547834) lambda!135454))))

(declare-fun e!2697262 () ListMap!1973)

(assert (=> b!4334687 (= e!2697262 lt!1547928)))

(declare-fun lt!1547939 () ListMap!1973)

(assert (=> b!4334687 (= lt!1547939 (+!417 lt!1547834 (h!54138 lt!1547828)))))

(assert (=> b!4334687 (= lt!1547928 (addToMapMapFromBucket!81 (t!355683 lt!1547828) (+!417 lt!1547834 (h!54138 lt!1547828))))))

(declare-fun lt!1547932 () Unit!68360)

(assert (=> b!4334687 (= lt!1547932 call!301212)))

(assert (=> b!4334687 (forall!8936 (toList!2729 lt!1547834) lambda!135453)))

(declare-fun lt!1547926 () Unit!68360)

(assert (=> b!4334687 (= lt!1547926 lt!1547932)))

(assert (=> b!4334687 (forall!8936 (toList!2729 lt!1547939) lambda!135454)))

(declare-fun lt!1547927 () Unit!68360)

(declare-fun Unit!68363 () Unit!68360)

(assert (=> b!4334687 (= lt!1547927 Unit!68363)))

(declare-fun call!301213 () Bool)

(assert (=> b!4334687 call!301213))

(declare-fun lt!1547940 () Unit!68360)

(declare-fun Unit!68364 () Unit!68360)

(assert (=> b!4334687 (= lt!1547940 Unit!68364)))

(declare-fun lt!1547934 () Unit!68360)

(declare-fun Unit!68365 () Unit!68360)

(assert (=> b!4334687 (= lt!1547934 Unit!68365)))

(declare-fun lt!1547925 () Unit!68360)

(declare-fun forallContained!1586 (List!48767 Int tuple2!47862) Unit!68360)

(assert (=> b!4334687 (= lt!1547925 (forallContained!1586 (toList!2729 lt!1547939) lambda!135454 (h!54138 lt!1547828)))))

(assert (=> b!4334687 (contains!10686 lt!1547939 (_1!27225 (h!54138 lt!1547828)))))

(declare-fun lt!1547942 () Unit!68360)

(declare-fun Unit!68366 () Unit!68360)

(assert (=> b!4334687 (= lt!1547942 Unit!68366)))

(assert (=> b!4334687 (contains!10686 lt!1547928 (_1!27225 (h!54138 lt!1547828)))))

(declare-fun lt!1547933 () Unit!68360)

(declare-fun Unit!68367 () Unit!68360)

(assert (=> b!4334687 (= lt!1547933 Unit!68367)))

(assert (=> b!4334687 (forall!8936 lt!1547828 lambda!135454)))

(declare-fun lt!1547945 () Unit!68360)

(declare-fun Unit!68368 () Unit!68360)

(assert (=> b!4334687 (= lt!1547945 Unit!68368)))

(assert (=> b!4334687 (forall!8936 (toList!2729 lt!1547939) lambda!135454)))

(declare-fun lt!1547929 () Unit!68360)

(declare-fun Unit!68370 () Unit!68360)

(assert (=> b!4334687 (= lt!1547929 Unit!68370)))

(declare-fun lt!1547941 () Unit!68360)

(declare-fun Unit!68371 () Unit!68360)

(assert (=> b!4334687 (= lt!1547941 Unit!68371)))

(declare-fun lt!1547935 () Unit!68360)

(declare-fun addForallContainsKeyThenBeforeAdding!14 (ListMap!1973 ListMap!1973 K!10000 V!10246) Unit!68360)

(assert (=> b!4334687 (= lt!1547935 (addForallContainsKeyThenBeforeAdding!14 lt!1547834 lt!1547928 (_1!27225 (h!54138 lt!1547828)) (_2!27225 (h!54138 lt!1547828))))))

(assert (=> b!4334687 (forall!8936 (toList!2729 lt!1547834) lambda!135454)))

(declare-fun lt!1547931 () Unit!68360)

(assert (=> b!4334687 (= lt!1547931 lt!1547935)))

(assert (=> b!4334687 call!301211))

(declare-fun lt!1547943 () Unit!68360)

(declare-fun Unit!68372 () Unit!68360)

(assert (=> b!4334687 (= lt!1547943 Unit!68372)))

(declare-fun res!1777642 () Bool)

(assert (=> b!4334687 (= res!1777642 (forall!8936 lt!1547828 lambda!135454))))

(assert (=> b!4334687 (=> (not res!1777642) (not e!2697264))))

(assert (=> b!4334687 e!2697264))

(declare-fun lt!1547930 () Unit!68360)

(declare-fun Unit!68373 () Unit!68360)

(assert (=> b!4334687 (= lt!1547930 Unit!68373)))

(declare-fun b!4334688 () Bool)

(declare-fun e!2697263 () Bool)

(declare-fun invariantList!621 (List!48767) Bool)

(assert (=> b!4334688 (= e!2697263 (invariantList!621 (toList!2729 lt!1547944)))))

(assert (=> b!4334689 (= e!2697262 lt!1547834)))

(declare-fun lt!1547937 () Unit!68360)

(assert (=> b!4334689 (= lt!1547937 call!301212)))

(assert (=> b!4334689 call!301213))

(declare-fun lt!1547936 () Unit!68360)

(assert (=> b!4334689 (= lt!1547936 lt!1547937)))

(assert (=> b!4334689 call!301211))

(declare-fun lt!1547938 () Unit!68360)

(declare-fun Unit!68374 () Unit!68360)

(assert (=> b!4334689 (= lt!1547938 Unit!68374)))

(assert (=> d!1274148 e!2697263))

(declare-fun res!1777644 () Bool)

(assert (=> d!1274148 (=> (not res!1777644) (not e!2697263))))

(assert (=> d!1274148 (= res!1777644 (forall!8936 lt!1547828 lambda!135455))))

(assert (=> d!1274148 (= lt!1547944 e!2697262)))

(assert (=> d!1274148 (= c!737149 ((_ is Nil!48643) lt!1547828))))

(assert (=> d!1274148 (noDuplicateKeys!373 lt!1547828)))

(assert (=> d!1274148 (= (addToMapMapFromBucket!81 lt!1547828 lt!1547834) lt!1547944)))

(declare-fun bm!301208 () Bool)

(assert (=> bm!301208 (= call!301213 (forall!8936 (ite c!737149 (toList!2729 lt!1547834) (t!355683 lt!1547828)) (ite c!737149 lambda!135452 lambda!135454)))))

(declare-fun b!4334690 () Bool)

(declare-fun res!1777643 () Bool)

(assert (=> b!4334690 (=> (not res!1777643) (not e!2697263))))

(assert (=> b!4334690 (= res!1777643 (forall!8936 (toList!2729 lt!1547834) lambda!135455))))

(assert (= (and d!1274148 c!737149) b!4334689))

(assert (= (and d!1274148 (not c!737149)) b!4334687))

(assert (= (and b!4334687 res!1777642) b!4334686))

(assert (= (or b!4334689 b!4334687) bm!301206))

(assert (= (or b!4334689 b!4334687) bm!301208))

(assert (= (or b!4334689 b!4334687) bm!301207))

(assert (= (and d!1274148 res!1777644) b!4334690))

(assert (= (and b!4334690 res!1777643) b!4334688))

(declare-fun m!4929219 () Bool)

(assert (=> d!1274148 m!4929219))

(declare-fun m!4929221 () Bool)

(assert (=> d!1274148 m!4929221))

(declare-fun m!4929223 () Bool)

(assert (=> bm!301208 m!4929223))

(declare-fun m!4929225 () Bool)

(assert (=> b!4334690 m!4929225))

(declare-fun m!4929227 () Bool)

(assert (=> bm!301206 m!4929227))

(declare-fun m!4929229 () Bool)

(assert (=> b!4334686 m!4929229))

(declare-fun m!4929231 () Bool)

(assert (=> b!4334687 m!4929231))

(declare-fun m!4929233 () Bool)

(assert (=> b!4334687 m!4929233))

(declare-fun m!4929235 () Bool)

(assert (=> b!4334687 m!4929235))

(declare-fun m!4929237 () Bool)

(assert (=> b!4334687 m!4929237))

(declare-fun m!4929239 () Bool)

(assert (=> b!4334687 m!4929239))

(assert (=> b!4334687 m!4929229))

(declare-fun m!4929241 () Bool)

(assert (=> b!4334687 m!4929241))

(declare-fun m!4929243 () Bool)

(assert (=> b!4334687 m!4929243))

(assert (=> b!4334687 m!4929239))

(declare-fun m!4929245 () Bool)

(assert (=> b!4334687 m!4929245))

(declare-fun m!4929247 () Bool)

(assert (=> b!4334687 m!4929247))

(assert (=> b!4334687 m!4929241))

(assert (=> b!4334687 m!4929233))

(declare-fun m!4929249 () Bool)

(assert (=> b!4334688 m!4929249))

(declare-fun m!4929251 () Bool)

(assert (=> bm!301207 m!4929251))

(assert (=> b!4334610 d!1274148))

(declare-fun d!1274168 () Bool)

(declare-fun res!1777649 () Bool)

(declare-fun e!2697269 () Bool)

(assert (=> d!1274168 (=> res!1777649 e!2697269)))

(assert (=> d!1274168 (= res!1777649 (not ((_ is Cons!48643) lt!1547833)))))

(assert (=> d!1274168 (= (noDuplicateKeys!373 lt!1547833) e!2697269)))

(declare-fun b!4334697 () Bool)

(declare-fun e!2697270 () Bool)

(assert (=> b!4334697 (= e!2697269 e!2697270)))

(declare-fun res!1777650 () Bool)

(assert (=> b!4334697 (=> (not res!1777650) (not e!2697270))))

(declare-fun containsKey!512 (List!48767 K!10000) Bool)

(assert (=> b!4334697 (= res!1777650 (not (containsKey!512 (t!355683 lt!1547833) (_1!27225 (h!54138 lt!1547833)))))))

(declare-fun b!4334698 () Bool)

(assert (=> b!4334698 (= e!2697270 (noDuplicateKeys!373 (t!355683 lt!1547833)))))

(assert (= (and d!1274168 (not res!1777649)) b!4334697))

(assert (= (and b!4334697 res!1777650) b!4334698))

(declare-fun m!4929253 () Bool)

(assert (=> b!4334697 m!4929253))

(declare-fun m!4929255 () Bool)

(assert (=> b!4334698 m!4929255))

(assert (=> b!4334602 d!1274168))

(declare-fun bs!608315 () Bool)

(declare-fun b!4334702 () Bool)

(assert (= bs!608315 (and b!4334702 b!4334689)))

(declare-fun lambda!135456 () Int)

(assert (=> bs!608315 (= lambda!135456 lambda!135452)))

(declare-fun bs!608316 () Bool)

(assert (= bs!608316 (and b!4334702 b!4334687)))

(assert (=> bs!608316 (= lambda!135456 lambda!135453)))

(assert (=> bs!608316 (= (= lt!1547834 lt!1547928) (= lambda!135456 lambda!135454))))

(declare-fun bs!608317 () Bool)

(assert (= bs!608317 (and b!4334702 d!1274148)))

(assert (=> bs!608317 (= (= lt!1547834 lt!1547944) (= lambda!135456 lambda!135455))))

(assert (=> b!4334702 true))

(declare-fun bs!608318 () Bool)

(declare-fun b!4334700 () Bool)

(assert (= bs!608318 (and b!4334700 b!4334702)))

(declare-fun lambda!135457 () Int)

(assert (=> bs!608318 (= lambda!135457 lambda!135456)))

(declare-fun bs!608319 () Bool)

(assert (= bs!608319 (and b!4334700 d!1274148)))

(assert (=> bs!608319 (= (= lt!1547834 lt!1547944) (= lambda!135457 lambda!135455))))

(declare-fun bs!608320 () Bool)

(assert (= bs!608320 (and b!4334700 b!4334689)))

(assert (=> bs!608320 (= lambda!135457 lambda!135452)))

(declare-fun bs!608321 () Bool)

(assert (= bs!608321 (and b!4334700 b!4334687)))

(assert (=> bs!608321 (= lambda!135457 lambda!135453)))

(assert (=> bs!608321 (= (= lt!1547834 lt!1547928) (= lambda!135457 lambda!135454))))

(assert (=> b!4334700 true))

(declare-fun lt!1547949 () ListMap!1973)

(declare-fun lambda!135458 () Int)

(assert (=> bs!608318 (= (= lt!1547949 lt!1547834) (= lambda!135458 lambda!135456))))

(assert (=> bs!608319 (= (= lt!1547949 lt!1547944) (= lambda!135458 lambda!135455))))

(assert (=> b!4334700 (= (= lt!1547949 lt!1547834) (= lambda!135458 lambda!135457))))

(assert (=> bs!608320 (= (= lt!1547949 lt!1547834) (= lambda!135458 lambda!135452))))

(assert (=> bs!608321 (= (= lt!1547949 lt!1547834) (= lambda!135458 lambda!135453))))

(assert (=> bs!608321 (= (= lt!1547949 lt!1547928) (= lambda!135458 lambda!135454))))

(assert (=> b!4334700 true))

(declare-fun bs!608322 () Bool)

(declare-fun d!1274170 () Bool)

(assert (= bs!608322 (and d!1274170 b!4334700)))

(declare-fun lambda!135459 () Int)

(declare-fun lt!1547965 () ListMap!1973)

(assert (=> bs!608322 (= (= lt!1547965 lt!1547949) (= lambda!135459 lambda!135458))))

(declare-fun bs!608323 () Bool)

(assert (= bs!608323 (and d!1274170 b!4334702)))

(assert (=> bs!608323 (= (= lt!1547965 lt!1547834) (= lambda!135459 lambda!135456))))

(declare-fun bs!608324 () Bool)

(assert (= bs!608324 (and d!1274170 d!1274148)))

(assert (=> bs!608324 (= (= lt!1547965 lt!1547944) (= lambda!135459 lambda!135455))))

(assert (=> bs!608322 (= (= lt!1547965 lt!1547834) (= lambda!135459 lambda!135457))))

(declare-fun bs!608325 () Bool)

(assert (= bs!608325 (and d!1274170 b!4334689)))

(assert (=> bs!608325 (= (= lt!1547965 lt!1547834) (= lambda!135459 lambda!135452))))

(declare-fun bs!608326 () Bool)

(assert (= bs!608326 (and d!1274170 b!4334687)))

(assert (=> bs!608326 (= (= lt!1547965 lt!1547834) (= lambda!135459 lambda!135453))))

(assert (=> bs!608326 (= (= lt!1547965 lt!1547928) (= lambda!135459 lambda!135454))))

(assert (=> d!1274170 true))

(declare-fun bm!301209 () Bool)

(declare-fun call!301215 () Unit!68360)

(assert (=> bm!301209 (= call!301215 (lemmaContainsAllItsOwnKeys!14 lt!1547834))))

(declare-fun bm!301210 () Bool)

(declare-fun c!737150 () Bool)

(declare-fun call!301214 () Bool)

(assert (=> bm!301210 (= call!301214 (forall!8936 (toList!2729 lt!1547834) (ite c!737150 lambda!135456 lambda!135458)))))

(declare-fun b!4334699 () Bool)

(declare-fun e!2697273 () Bool)

(assert (=> b!4334699 (= e!2697273 (forall!8936 (toList!2729 lt!1547834) lambda!135458))))

(declare-fun e!2697271 () ListMap!1973)

(assert (=> b!4334700 (= e!2697271 lt!1547949)))

(declare-fun lt!1547960 () ListMap!1973)

(assert (=> b!4334700 (= lt!1547960 (+!417 lt!1547834 (h!54138 newBucket!200)))))

(assert (=> b!4334700 (= lt!1547949 (addToMapMapFromBucket!81 (t!355683 newBucket!200) (+!417 lt!1547834 (h!54138 newBucket!200))))))

(declare-fun lt!1547953 () Unit!68360)

(assert (=> b!4334700 (= lt!1547953 call!301215)))

(assert (=> b!4334700 (forall!8936 (toList!2729 lt!1547834) lambda!135457)))

(declare-fun lt!1547947 () Unit!68360)

(assert (=> b!4334700 (= lt!1547947 lt!1547953)))

(assert (=> b!4334700 (forall!8936 (toList!2729 lt!1547960) lambda!135458)))

(declare-fun lt!1547948 () Unit!68360)

(declare-fun Unit!68375 () Unit!68360)

(assert (=> b!4334700 (= lt!1547948 Unit!68375)))

(declare-fun call!301216 () Bool)

(assert (=> b!4334700 call!301216))

(declare-fun lt!1547961 () Unit!68360)

(declare-fun Unit!68376 () Unit!68360)

(assert (=> b!4334700 (= lt!1547961 Unit!68376)))

(declare-fun lt!1547955 () Unit!68360)

(declare-fun Unit!68377 () Unit!68360)

(assert (=> b!4334700 (= lt!1547955 Unit!68377)))

(declare-fun lt!1547946 () Unit!68360)

(assert (=> b!4334700 (= lt!1547946 (forallContained!1586 (toList!2729 lt!1547960) lambda!135458 (h!54138 newBucket!200)))))

(assert (=> b!4334700 (contains!10686 lt!1547960 (_1!27225 (h!54138 newBucket!200)))))

(declare-fun lt!1547963 () Unit!68360)

(declare-fun Unit!68378 () Unit!68360)

(assert (=> b!4334700 (= lt!1547963 Unit!68378)))

(assert (=> b!4334700 (contains!10686 lt!1547949 (_1!27225 (h!54138 newBucket!200)))))

(declare-fun lt!1547954 () Unit!68360)

(declare-fun Unit!68379 () Unit!68360)

(assert (=> b!4334700 (= lt!1547954 Unit!68379)))

(assert (=> b!4334700 (forall!8936 newBucket!200 lambda!135458)))

(declare-fun lt!1547966 () Unit!68360)

(declare-fun Unit!68380 () Unit!68360)

(assert (=> b!4334700 (= lt!1547966 Unit!68380)))

(assert (=> b!4334700 (forall!8936 (toList!2729 lt!1547960) lambda!135458)))

(declare-fun lt!1547950 () Unit!68360)

(declare-fun Unit!68381 () Unit!68360)

(assert (=> b!4334700 (= lt!1547950 Unit!68381)))

(declare-fun lt!1547962 () Unit!68360)

(declare-fun Unit!68382 () Unit!68360)

(assert (=> b!4334700 (= lt!1547962 Unit!68382)))

(declare-fun lt!1547956 () Unit!68360)

(assert (=> b!4334700 (= lt!1547956 (addForallContainsKeyThenBeforeAdding!14 lt!1547834 lt!1547949 (_1!27225 (h!54138 newBucket!200)) (_2!27225 (h!54138 newBucket!200))))))

(assert (=> b!4334700 (forall!8936 (toList!2729 lt!1547834) lambda!135458)))

(declare-fun lt!1547952 () Unit!68360)

(assert (=> b!4334700 (= lt!1547952 lt!1547956)))

(assert (=> b!4334700 call!301214))

(declare-fun lt!1547964 () Unit!68360)

(declare-fun Unit!68383 () Unit!68360)

(assert (=> b!4334700 (= lt!1547964 Unit!68383)))

(declare-fun res!1777651 () Bool)

(assert (=> b!4334700 (= res!1777651 (forall!8936 newBucket!200 lambda!135458))))

(assert (=> b!4334700 (=> (not res!1777651) (not e!2697273))))

(assert (=> b!4334700 e!2697273))

(declare-fun lt!1547951 () Unit!68360)

(declare-fun Unit!68384 () Unit!68360)

(assert (=> b!4334700 (= lt!1547951 Unit!68384)))

(declare-fun b!4334701 () Bool)

(declare-fun e!2697272 () Bool)

(assert (=> b!4334701 (= e!2697272 (invariantList!621 (toList!2729 lt!1547965)))))

(assert (=> b!4334702 (= e!2697271 lt!1547834)))

(declare-fun lt!1547958 () Unit!68360)

(assert (=> b!4334702 (= lt!1547958 call!301215)))

(assert (=> b!4334702 call!301216))

(declare-fun lt!1547957 () Unit!68360)

(assert (=> b!4334702 (= lt!1547957 lt!1547958)))

(assert (=> b!4334702 call!301214))

(declare-fun lt!1547959 () Unit!68360)

(declare-fun Unit!68385 () Unit!68360)

(assert (=> b!4334702 (= lt!1547959 Unit!68385)))

(assert (=> d!1274170 e!2697272))

(declare-fun res!1777653 () Bool)

(assert (=> d!1274170 (=> (not res!1777653) (not e!2697272))))

(assert (=> d!1274170 (= res!1777653 (forall!8936 newBucket!200 lambda!135459))))

(assert (=> d!1274170 (= lt!1547965 e!2697271)))

(assert (=> d!1274170 (= c!737150 ((_ is Nil!48643) newBucket!200))))

(assert (=> d!1274170 (noDuplicateKeys!373 newBucket!200)))

(assert (=> d!1274170 (= (addToMapMapFromBucket!81 newBucket!200 lt!1547834) lt!1547965)))

(declare-fun bm!301211 () Bool)

(assert (=> bm!301211 (= call!301216 (forall!8936 (ite c!737150 (toList!2729 lt!1547834) (t!355683 newBucket!200)) (ite c!737150 lambda!135456 lambda!135458)))))

(declare-fun b!4334703 () Bool)

(declare-fun res!1777652 () Bool)

(assert (=> b!4334703 (=> (not res!1777652) (not e!2697272))))

(assert (=> b!4334703 (= res!1777652 (forall!8936 (toList!2729 lt!1547834) lambda!135459))))

(assert (= (and d!1274170 c!737150) b!4334702))

(assert (= (and d!1274170 (not c!737150)) b!4334700))

(assert (= (and b!4334700 res!1777651) b!4334699))

(assert (= (or b!4334702 b!4334700) bm!301209))

(assert (= (or b!4334702 b!4334700) bm!301211))

(assert (= (or b!4334702 b!4334700) bm!301210))

(assert (= (and d!1274170 res!1777653) b!4334703))

(assert (= (and b!4334703 res!1777652) b!4334701))

(declare-fun m!4929257 () Bool)

(assert (=> d!1274170 m!4929257))

(assert (=> d!1274170 m!4929149))

(declare-fun m!4929259 () Bool)

(assert (=> bm!301211 m!4929259))

(declare-fun m!4929261 () Bool)

(assert (=> b!4334703 m!4929261))

(assert (=> bm!301209 m!4929227))

(declare-fun m!4929263 () Bool)

(assert (=> b!4334699 m!4929263))

(declare-fun m!4929265 () Bool)

(assert (=> b!4334700 m!4929265))

(declare-fun m!4929267 () Bool)

(assert (=> b!4334700 m!4929267))

(declare-fun m!4929269 () Bool)

(assert (=> b!4334700 m!4929269))

(declare-fun m!4929271 () Bool)

(assert (=> b!4334700 m!4929271))

(declare-fun m!4929273 () Bool)

(assert (=> b!4334700 m!4929273))

(assert (=> b!4334700 m!4929263))

(declare-fun m!4929275 () Bool)

(assert (=> b!4334700 m!4929275))

(declare-fun m!4929277 () Bool)

(assert (=> b!4334700 m!4929277))

(assert (=> b!4334700 m!4929273))

(declare-fun m!4929279 () Bool)

(assert (=> b!4334700 m!4929279))

(declare-fun m!4929281 () Bool)

(assert (=> b!4334700 m!4929281))

(assert (=> b!4334700 m!4929275))

(assert (=> b!4334700 m!4929267))

(declare-fun m!4929283 () Bool)

(assert (=> b!4334701 m!4929283))

(declare-fun m!4929285 () Bool)

(assert (=> bm!301210 m!4929285))

(assert (=> b!4334602 d!1274170))

(declare-fun bs!608327 () Bool)

(declare-fun d!1274172 () Bool)

(assert (= bs!608327 (and d!1274172 start!417960)))

(declare-fun lambda!135462 () Int)

(assert (=> bs!608327 (= lambda!135462 lambda!135417)))

(declare-fun lt!1547969 () ListMap!1973)

(assert (=> d!1274172 (invariantList!621 (toList!2729 lt!1547969))))

(declare-fun e!2697276 () ListMap!1973)

(assert (=> d!1274172 (= lt!1547969 e!2697276)))

(declare-fun c!737153 () Bool)

(assert (=> d!1274172 (= c!737153 ((_ is Cons!48644) (toList!2730 lt!1547837)))))

(assert (=> d!1274172 (forall!8935 (toList!2730 lt!1547837) lambda!135462)))

(assert (=> d!1274172 (= (extractMap!432 (toList!2730 lt!1547837)) lt!1547969)))

(declare-fun b!4334708 () Bool)

(assert (=> b!4334708 (= e!2697276 (addToMapMapFromBucket!81 (_2!27226 (h!54139 (toList!2730 lt!1547837))) (extractMap!432 (t!355684 (toList!2730 lt!1547837)))))))

(declare-fun b!4334709 () Bool)

(assert (=> b!4334709 (= e!2697276 (ListMap!1974 Nil!48643))))

(assert (= (and d!1274172 c!737153) b!4334708))

(assert (= (and d!1274172 (not c!737153)) b!4334709))

(declare-fun m!4929287 () Bool)

(assert (=> d!1274172 m!4929287))

(declare-fun m!4929289 () Bool)

(assert (=> d!1274172 m!4929289))

(declare-fun m!4929291 () Bool)

(assert (=> b!4334708 m!4929291))

(assert (=> b!4334708 m!4929291))

(declare-fun m!4929293 () Bool)

(assert (=> b!4334708 m!4929293))

(assert (=> b!4334602 d!1274172))

(declare-fun bs!608328 () Bool)

(declare-fun d!1274174 () Bool)

(assert (= bs!608328 (and d!1274174 start!417960)))

(declare-fun lambda!135463 () Int)

(assert (=> bs!608328 (= lambda!135463 lambda!135417)))

(declare-fun bs!608329 () Bool)

(assert (= bs!608329 (and d!1274174 d!1274172)))

(assert (=> bs!608329 (= lambda!135463 lambda!135462)))

(declare-fun lt!1547970 () ListMap!1973)

(assert (=> d!1274174 (invariantList!621 (toList!2729 lt!1547970))))

(declare-fun e!2697277 () ListMap!1973)

(assert (=> d!1274174 (= lt!1547970 e!2697277)))

(declare-fun c!737154 () Bool)

(assert (=> d!1274174 (= c!737154 ((_ is Cons!48644) (t!355684 (toList!2730 lm!1707))))))

(assert (=> d!1274174 (forall!8935 (t!355684 (toList!2730 lm!1707)) lambda!135463)))

(assert (=> d!1274174 (= (extractMap!432 (t!355684 (toList!2730 lm!1707))) lt!1547970)))

(declare-fun b!4334710 () Bool)

(assert (=> b!4334710 (= e!2697277 (addToMapMapFromBucket!81 (_2!27226 (h!54139 (t!355684 (toList!2730 lm!1707)))) (extractMap!432 (t!355684 (t!355684 (toList!2730 lm!1707))))))))

(declare-fun b!4334711 () Bool)

(assert (=> b!4334711 (= e!2697277 (ListMap!1974 Nil!48643))))

(assert (= (and d!1274174 c!737154) b!4334710))

(assert (= (and d!1274174 (not c!737154)) b!4334711))

(declare-fun m!4929295 () Bool)

(assert (=> d!1274174 m!4929295))

(declare-fun m!4929297 () Bool)

(assert (=> d!1274174 m!4929297))

(declare-fun m!4929299 () Bool)

(assert (=> b!4334710 m!4929299))

(assert (=> b!4334710 m!4929299))

(declare-fun m!4929301 () Bool)

(assert (=> b!4334710 m!4929301))

(assert (=> b!4334602 d!1274174))

(declare-fun d!1274176 () Bool)

(declare-fun e!2697282 () Bool)

(assert (=> d!1274176 e!2697282))

(declare-fun res!1777658 () Bool)

(assert (=> d!1274176 (=> (not res!1777658) (not e!2697282))))

(declare-fun lt!1547996 () ListMap!1973)

(assert (=> d!1274176 (= res!1777658 (contains!10686 lt!1547996 (_1!27225 lt!1547838)))))

(declare-fun lt!1547998 () List!48767)

(assert (=> d!1274176 (= lt!1547996 (ListMap!1974 lt!1547998))))

(declare-fun lt!1547997 () Unit!68360)

(declare-fun lt!1547995 () Unit!68360)

(assert (=> d!1274176 (= lt!1547997 lt!1547995)))

(declare-datatypes ((Option!10356 0))(
  ( (None!10355) (Some!10355 (v!43083 V!10246)) )
))
(declare-fun getValueByKey!342 (List!48767 K!10000) Option!10356)

(assert (=> d!1274176 (= (getValueByKey!342 lt!1547998 (_1!27225 lt!1547838)) (Some!10355 (_2!27225 lt!1547838)))))

(declare-fun lemmaContainsTupThenGetReturnValue!124 (List!48767 K!10000 V!10246) Unit!68360)

(assert (=> d!1274176 (= lt!1547995 (lemmaContainsTupThenGetReturnValue!124 lt!1547998 (_1!27225 lt!1547838) (_2!27225 lt!1547838)))))

(declare-fun insertNoDuplicatedKeys!54 (List!48767 K!10000 V!10246) List!48767)

(assert (=> d!1274176 (= lt!1547998 (insertNoDuplicatedKeys!54 (toList!2729 lt!1547834) (_1!27225 lt!1547838) (_2!27225 lt!1547838)))))

(assert (=> d!1274176 (= (+!417 lt!1547834 lt!1547838) lt!1547996)))

(declare-fun b!4334720 () Bool)

(declare-fun res!1777659 () Bool)

(assert (=> b!4334720 (=> (not res!1777659) (not e!2697282))))

(assert (=> b!4334720 (= res!1777659 (= (getValueByKey!342 (toList!2729 lt!1547996) (_1!27225 lt!1547838)) (Some!10355 (_2!27225 lt!1547838))))))

(declare-fun b!4334721 () Bool)

(declare-fun contains!10688 (List!48767 tuple2!47862) Bool)

(assert (=> b!4334721 (= e!2697282 (contains!10688 (toList!2729 lt!1547996) lt!1547838))))

(assert (= (and d!1274176 res!1777658) b!4334720))

(assert (= (and b!4334720 res!1777659) b!4334721))

(declare-fun m!4929303 () Bool)

(assert (=> d!1274176 m!4929303))

(declare-fun m!4929305 () Bool)

(assert (=> d!1274176 m!4929305))

(declare-fun m!4929307 () Bool)

(assert (=> d!1274176 m!4929307))

(declare-fun m!4929309 () Bool)

(assert (=> d!1274176 m!4929309))

(declare-fun m!4929311 () Bool)

(assert (=> b!4334720 m!4929311))

(declare-fun m!4929313 () Bool)

(assert (=> b!4334721 m!4929313))

(assert (=> b!4334602 d!1274176))

(declare-fun bs!608330 () Bool)

(declare-fun d!1274178 () Bool)

(assert (= bs!608330 (and d!1274178 b!4334700)))

(declare-fun lambda!135476 () Int)

(assert (=> bs!608330 (not (= lambda!135476 lambda!135458))))

(declare-fun bs!608331 () Bool)

(assert (= bs!608331 (and d!1274178 b!4334702)))

(assert (=> bs!608331 (not (= lambda!135476 lambda!135456))))

(declare-fun bs!608332 () Bool)

(assert (= bs!608332 (and d!1274178 d!1274148)))

(assert (=> bs!608332 (not (= lambda!135476 lambda!135455))))

(assert (=> bs!608330 (not (= lambda!135476 lambda!135457))))

(declare-fun bs!608333 () Bool)

(assert (= bs!608333 (and d!1274178 b!4334689)))

(assert (=> bs!608333 (not (= lambda!135476 lambda!135452))))

(declare-fun bs!608334 () Bool)

(assert (= bs!608334 (and d!1274178 b!4334687)))

(assert (=> bs!608334 (not (= lambda!135476 lambda!135453))))

(assert (=> bs!608334 (not (= lambda!135476 lambda!135454))))

(declare-fun bs!608335 () Bool)

(assert (= bs!608335 (and d!1274178 d!1274170)))

(assert (=> bs!608335 (not (= lambda!135476 lambda!135459))))

(assert (=> d!1274178 true))

(assert (=> d!1274178 true))

(assert (=> d!1274178 (= (allKeysSameHash!331 newBucket!200 hash!377 hashF!1247) (forall!8936 newBucket!200 lambda!135476))))

(declare-fun bs!608336 () Bool)

(assert (= bs!608336 d!1274178))

(declare-fun m!4929315 () Bool)

(assert (=> bs!608336 m!4929315))

(assert (=> b!4334613 d!1274178))

(declare-fun bs!608337 () Bool)

(declare-fun d!1274180 () Bool)

(assert (= bs!608337 (and d!1274180 start!417960)))

(declare-fun lambda!135487 () Int)

(assert (=> bs!608337 (not (= lambda!135487 lambda!135417))))

(declare-fun bs!608338 () Bool)

(assert (= bs!608338 (and d!1274180 d!1274172)))

(assert (=> bs!608338 (not (= lambda!135487 lambda!135462))))

(declare-fun bs!608339 () Bool)

(assert (= bs!608339 (and d!1274180 d!1274174)))

(assert (=> bs!608339 (not (= lambda!135487 lambda!135463))))

(assert (=> d!1274180 true))

(assert (=> d!1274180 (= (allKeysSameHashInMap!477 lm!1707 hashF!1247) (forall!8935 (toList!2730 lm!1707) lambda!135487))))

(declare-fun bs!608340 () Bool)

(assert (= bs!608340 d!1274180))

(declare-fun m!4929317 () Bool)

(assert (=> bs!608340 m!4929317))

(assert (=> b!4334611 d!1274180))

(declare-fun d!1274182 () Bool)

(declare-fun res!1777666 () Bool)

(declare-fun e!2697289 () Bool)

(assert (=> d!1274182 (=> res!1777666 e!2697289)))

(assert (=> d!1274182 (= res!1777666 ((_ is Nil!48644) (toList!2730 lt!1547837)))))

(assert (=> d!1274182 (= (forall!8935 (toList!2730 lt!1547837) lambda!135417) e!2697289)))

(declare-fun b!4334734 () Bool)

(declare-fun e!2697290 () Bool)

(assert (=> b!4334734 (= e!2697289 e!2697290)))

(declare-fun res!1777667 () Bool)

(assert (=> b!4334734 (=> (not res!1777667) (not e!2697290))))

(declare-fun dynLambda!20561 (Int tuple2!47864) Bool)

(assert (=> b!4334734 (= res!1777667 (dynLambda!20561 lambda!135417 (h!54139 (toList!2730 lt!1547837))))))

(declare-fun b!4334735 () Bool)

(assert (=> b!4334735 (= e!2697290 (forall!8935 (t!355684 (toList!2730 lt!1547837)) lambda!135417))))

(assert (= (and d!1274182 (not res!1777666)) b!4334734))

(assert (= (and b!4334734 res!1777667) b!4334735))

(declare-fun b_lambda!128193 () Bool)

(assert (=> (not b_lambda!128193) (not b!4334734)))

(declare-fun m!4929319 () Bool)

(assert (=> b!4334734 m!4929319))

(declare-fun m!4929321 () Bool)

(assert (=> b!4334735 m!4929321))

(assert (=> b!4334612 d!1274182))

(declare-fun d!1274184 () Bool)

(declare-fun res!1777668 () Bool)

(declare-fun e!2697291 () Bool)

(assert (=> d!1274184 (=> res!1777668 e!2697291)))

(assert (=> d!1274184 (= res!1777668 ((_ is Nil!48644) (toList!2730 lm!1707)))))

(assert (=> d!1274184 (= (forall!8935 (toList!2730 lm!1707) lambda!135417) e!2697291)))

(declare-fun b!4334736 () Bool)

(declare-fun e!2697292 () Bool)

(assert (=> b!4334736 (= e!2697291 e!2697292)))

(declare-fun res!1777669 () Bool)

(assert (=> b!4334736 (=> (not res!1777669) (not e!2697292))))

(assert (=> b!4334736 (= res!1777669 (dynLambda!20561 lambda!135417 (h!54139 (toList!2730 lm!1707))))))

(declare-fun b!4334737 () Bool)

(assert (=> b!4334737 (= e!2697292 (forall!8935 (t!355684 (toList!2730 lm!1707)) lambda!135417))))

(assert (= (and d!1274184 (not res!1777668)) b!4334736))

(assert (= (and b!4334736 res!1777669) b!4334737))

(declare-fun b_lambda!128195 () Bool)

(assert (=> (not b_lambda!128195) (not b!4334736)))

(declare-fun m!4929323 () Bool)

(assert (=> b!4334736 m!4929323))

(declare-fun m!4929325 () Bool)

(assert (=> b!4334737 m!4929325))

(assert (=> start!417960 d!1274184))

(declare-fun d!1274186 () Bool)

(declare-fun isStrictlySorted!47 (List!48768) Bool)

(assert (=> d!1274186 (= (inv!64186 lm!1707) (isStrictlySorted!47 (toList!2730 lm!1707)))))

(declare-fun bs!608341 () Bool)

(assert (= bs!608341 d!1274186))

(declare-fun m!4929327 () Bool)

(assert (=> bs!608341 m!4929327))

(assert (=> start!417960 d!1274186))

(declare-fun b!4334773 () Bool)

(declare-datatypes ((List!48770 0))(
  ( (Nil!48646) (Cons!48646 (h!54143 K!10000) (t!355686 List!48770)) )
))
(declare-fun e!2697316 () List!48770)

(declare-fun keys!16354 (ListMap!1973) List!48770)

(assert (=> b!4334773 (= e!2697316 (keys!16354 (extractMap!432 (toList!2730 lm!1707))))))

(declare-fun b!4334774 () Bool)

(declare-fun getKeysList!70 (List!48767) List!48770)

(assert (=> b!4334774 (= e!2697316 (getKeysList!70 (toList!2729 (extractMap!432 (toList!2730 lm!1707)))))))

(declare-fun b!4334775 () Bool)

(declare-fun e!2697319 () Bool)

(declare-fun contains!10689 (List!48770 K!10000) Bool)

(assert (=> b!4334775 (= e!2697319 (contains!10689 (keys!16354 (extractMap!432 (toList!2730 lm!1707))) key!3918))))

(declare-fun b!4334776 () Bool)

(assert (=> b!4334776 false))

(declare-fun lt!1548066 () Unit!68360)

(declare-fun lt!1548067 () Unit!68360)

(assert (=> b!4334776 (= lt!1548066 lt!1548067)))

(declare-fun containsKey!514 (List!48767 K!10000) Bool)

(assert (=> b!4334776 (containsKey!514 (toList!2729 (extractMap!432 (toList!2730 lm!1707))) key!3918)))

(declare-fun lemmaInGetKeysListThenContainsKey!68 (List!48767 K!10000) Unit!68360)

(assert (=> b!4334776 (= lt!1548067 (lemmaInGetKeysListThenContainsKey!68 (toList!2729 (extractMap!432 (toList!2730 lm!1707))) key!3918))))

(declare-fun e!2697315 () Unit!68360)

(declare-fun Unit!68393 () Unit!68360)

(assert (=> b!4334776 (= e!2697315 Unit!68393)))

(declare-fun b!4334777 () Bool)

(declare-fun e!2697318 () Unit!68360)

(declare-fun lt!1548065 () Unit!68360)

(assert (=> b!4334777 (= e!2697318 lt!1548065)))

(declare-fun lt!1548071 () Unit!68360)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!254 (List!48767 K!10000) Unit!68360)

(assert (=> b!4334777 (= lt!1548071 (lemmaContainsKeyImpliesGetValueByKeyDefined!254 (toList!2729 (extractMap!432 (toList!2730 lm!1707))) key!3918))))

(declare-fun isDefined!7651 (Option!10356) Bool)

(assert (=> b!4334777 (isDefined!7651 (getValueByKey!342 (toList!2729 (extractMap!432 (toList!2730 lm!1707))) key!3918))))

(declare-fun lt!1548070 () Unit!68360)

(assert (=> b!4334777 (= lt!1548070 lt!1548071)))

(declare-fun lemmaInListThenGetKeysListContains!67 (List!48767 K!10000) Unit!68360)

(assert (=> b!4334777 (= lt!1548065 (lemmaInListThenGetKeysListContains!67 (toList!2729 (extractMap!432 (toList!2730 lm!1707))) key!3918))))

(declare-fun call!301228 () Bool)

(assert (=> b!4334777 call!301228))

(declare-fun b!4334778 () Bool)

(declare-fun e!2697317 () Bool)

(assert (=> b!4334778 (= e!2697317 e!2697319)))

(declare-fun res!1777685 () Bool)

(assert (=> b!4334778 (=> (not res!1777685) (not e!2697319))))

(assert (=> b!4334778 (= res!1777685 (isDefined!7651 (getValueByKey!342 (toList!2729 (extractMap!432 (toList!2730 lm!1707))) key!3918)))))

(declare-fun b!4334779 () Bool)

(declare-fun e!2697314 () Bool)

(assert (=> b!4334779 (= e!2697314 (not (contains!10689 (keys!16354 (extractMap!432 (toList!2730 lm!1707))) key!3918)))))

(declare-fun bm!301223 () Bool)

(assert (=> bm!301223 (= call!301228 (contains!10689 e!2697316 key!3918))))

(declare-fun c!737168 () Bool)

(declare-fun c!737167 () Bool)

(assert (=> bm!301223 (= c!737168 c!737167)))

(declare-fun b!4334780 () Bool)

(declare-fun Unit!68397 () Unit!68360)

(assert (=> b!4334780 (= e!2697315 Unit!68397)))

(declare-fun b!4334781 () Bool)

(assert (=> b!4334781 (= e!2697318 e!2697315)))

(declare-fun c!737166 () Bool)

(assert (=> b!4334781 (= c!737166 call!301228)))

(declare-fun d!1274188 () Bool)

(assert (=> d!1274188 e!2697317))

(declare-fun res!1777686 () Bool)

(assert (=> d!1274188 (=> res!1777686 e!2697317)))

(assert (=> d!1274188 (= res!1777686 e!2697314)))

(declare-fun res!1777687 () Bool)

(assert (=> d!1274188 (=> (not res!1777687) (not e!2697314))))

(declare-fun lt!1548068 () Bool)

(assert (=> d!1274188 (= res!1777687 (not lt!1548068))))

(declare-fun lt!1548064 () Bool)

(assert (=> d!1274188 (= lt!1548068 lt!1548064)))

(declare-fun lt!1548069 () Unit!68360)

(assert (=> d!1274188 (= lt!1548069 e!2697318)))

(assert (=> d!1274188 (= c!737167 lt!1548064)))

(assert (=> d!1274188 (= lt!1548064 (containsKey!514 (toList!2729 (extractMap!432 (toList!2730 lm!1707))) key!3918))))

(assert (=> d!1274188 (= (contains!10686 (extractMap!432 (toList!2730 lm!1707)) key!3918) lt!1548068)))

(assert (= (and d!1274188 c!737167) b!4334777))

(assert (= (and d!1274188 (not c!737167)) b!4334781))

(assert (= (and b!4334781 c!737166) b!4334776))

(assert (= (and b!4334781 (not c!737166)) b!4334780))

(assert (= (or b!4334777 b!4334781) bm!301223))

(assert (= (and bm!301223 c!737168) b!4334774))

(assert (= (and bm!301223 (not c!737168)) b!4334773))

(assert (= (and d!1274188 res!1777687) b!4334779))

(assert (= (and d!1274188 (not res!1777686)) b!4334778))

(assert (= (and b!4334778 res!1777685) b!4334775))

(declare-fun m!4929383 () Bool)

(assert (=> b!4334776 m!4929383))

(declare-fun m!4929385 () Bool)

(assert (=> b!4334776 m!4929385))

(declare-fun m!4929387 () Bool)

(assert (=> b!4334778 m!4929387))

(assert (=> b!4334778 m!4929387))

(declare-fun m!4929389 () Bool)

(assert (=> b!4334778 m!4929389))

(assert (=> b!4334773 m!4929117))

(declare-fun m!4929391 () Bool)

(assert (=> b!4334773 m!4929391))

(assert (=> b!4334779 m!4929117))

(assert (=> b!4334779 m!4929391))

(assert (=> b!4334779 m!4929391))

(declare-fun m!4929393 () Bool)

(assert (=> b!4334779 m!4929393))

(assert (=> b!4334775 m!4929117))

(assert (=> b!4334775 m!4929391))

(assert (=> b!4334775 m!4929391))

(assert (=> b!4334775 m!4929393))

(declare-fun m!4929395 () Bool)

(assert (=> b!4334774 m!4929395))

(declare-fun m!4929397 () Bool)

(assert (=> bm!301223 m!4929397))

(assert (=> d!1274188 m!4929383))

(declare-fun m!4929399 () Bool)

(assert (=> b!4334777 m!4929399))

(assert (=> b!4334777 m!4929387))

(assert (=> b!4334777 m!4929387))

(assert (=> b!4334777 m!4929389))

(declare-fun m!4929401 () Bool)

(assert (=> b!4334777 m!4929401))

(assert (=> b!4334601 d!1274188))

(declare-fun bs!608353 () Bool)

(declare-fun d!1274198 () Bool)

(assert (= bs!608353 (and d!1274198 start!417960)))

(declare-fun lambda!135504 () Int)

(assert (=> bs!608353 (= lambda!135504 lambda!135417)))

(declare-fun bs!608354 () Bool)

(assert (= bs!608354 (and d!1274198 d!1274172)))

(assert (=> bs!608354 (= lambda!135504 lambda!135462)))

(declare-fun bs!608355 () Bool)

(assert (= bs!608355 (and d!1274198 d!1274174)))

(assert (=> bs!608355 (= lambda!135504 lambda!135463)))

(declare-fun bs!608356 () Bool)

(assert (= bs!608356 (and d!1274198 d!1274180)))

(assert (=> bs!608356 (not (= lambda!135504 lambda!135487))))

(declare-fun lt!1548072 () ListMap!1973)

(assert (=> d!1274198 (invariantList!621 (toList!2729 lt!1548072))))

(declare-fun e!2697320 () ListMap!1973)

(assert (=> d!1274198 (= lt!1548072 e!2697320)))

(declare-fun c!737169 () Bool)

(assert (=> d!1274198 (= c!737169 ((_ is Cons!48644) (toList!2730 lm!1707)))))

(assert (=> d!1274198 (forall!8935 (toList!2730 lm!1707) lambda!135504)))

(assert (=> d!1274198 (= (extractMap!432 (toList!2730 lm!1707)) lt!1548072)))

(declare-fun b!4334782 () Bool)

(assert (=> b!4334782 (= e!2697320 (addToMapMapFromBucket!81 (_2!27226 (h!54139 (toList!2730 lm!1707))) (extractMap!432 (t!355684 (toList!2730 lm!1707)))))))

(declare-fun b!4334783 () Bool)

(assert (=> b!4334783 (= e!2697320 (ListMap!1974 Nil!48643))))

(assert (= (and d!1274198 c!737169) b!4334782))

(assert (= (and d!1274198 (not c!737169)) b!4334783))

(declare-fun m!4929403 () Bool)

(assert (=> d!1274198 m!4929403))

(declare-fun m!4929405 () Bool)

(assert (=> d!1274198 m!4929405))

(assert (=> b!4334782 m!4929139))

(assert (=> b!4334782 m!4929139))

(declare-fun m!4929407 () Bool)

(assert (=> b!4334782 m!4929407))

(assert (=> b!4334601 d!1274198))

(declare-fun d!1274200 () Bool)

(declare-fun e!2697328 () Bool)

(assert (=> d!1274200 e!2697328))

(declare-fun res!1777696 () Bool)

(assert (=> d!1274200 (=> res!1777696 e!2697328)))

(declare-fun lt!1548093 () Bool)

(assert (=> d!1274200 (= res!1777696 (not lt!1548093))))

(declare-fun lt!1548095 () Bool)

(assert (=> d!1274200 (= lt!1548093 lt!1548095)))

(declare-fun lt!1548094 () Unit!68360)

(declare-fun e!2697329 () Unit!68360)

(assert (=> d!1274200 (= lt!1548094 e!2697329)))

(declare-fun c!737172 () Bool)

(assert (=> d!1274200 (= c!737172 lt!1548095)))

(declare-fun containsKey!515 (List!48768 (_ BitVec 64)) Bool)

(assert (=> d!1274200 (= lt!1548095 (containsKey!515 (toList!2730 lm!1707) hash!377))))

(assert (=> d!1274200 (= (contains!10684 lm!1707 hash!377) lt!1548093)))

(declare-fun b!4334796 () Bool)

(declare-fun lt!1548096 () Unit!68360)

(assert (=> b!4334796 (= e!2697329 lt!1548096)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!255 (List!48768 (_ BitVec 64)) Unit!68360)

(assert (=> b!4334796 (= lt!1548096 (lemmaContainsKeyImpliesGetValueByKeyDefined!255 (toList!2730 lm!1707) hash!377))))

(declare-datatypes ((Option!10357 0))(
  ( (None!10356) (Some!10356 (v!43084 List!48767)) )
))
(declare-fun isDefined!7652 (Option!10357) Bool)

(declare-fun getValueByKey!343 (List!48768 (_ BitVec 64)) Option!10357)

(assert (=> b!4334796 (isDefined!7652 (getValueByKey!343 (toList!2730 lm!1707) hash!377))))

(declare-fun b!4334797 () Bool)

(declare-fun Unit!68399 () Unit!68360)

(assert (=> b!4334797 (= e!2697329 Unit!68399)))

(declare-fun b!4334798 () Bool)

(assert (=> b!4334798 (= e!2697328 (isDefined!7652 (getValueByKey!343 (toList!2730 lm!1707) hash!377)))))

(assert (= (and d!1274200 c!737172) b!4334796))

(assert (= (and d!1274200 (not c!737172)) b!4334797))

(assert (= (and d!1274200 (not res!1777696)) b!4334798))

(declare-fun m!4929421 () Bool)

(assert (=> d!1274200 m!4929421))

(declare-fun m!4929423 () Bool)

(assert (=> b!4334796 m!4929423))

(declare-fun m!4929425 () Bool)

(assert (=> b!4334796 m!4929425))

(assert (=> b!4334796 m!4929425))

(declare-fun m!4929427 () Bool)

(assert (=> b!4334796 m!4929427))

(assert (=> b!4334798 m!4929425))

(assert (=> b!4334798 m!4929425))

(assert (=> b!4334798 m!4929427))

(assert (=> b!4334605 d!1274200))

(declare-fun d!1274204 () Bool)

(declare-fun res!1777697 () Bool)

(declare-fun e!2697330 () Bool)

(assert (=> d!1274204 (=> res!1777697 e!2697330)))

(assert (=> d!1274204 (= res!1777697 (not ((_ is Cons!48643) newBucket!200)))))

(assert (=> d!1274204 (= (noDuplicateKeys!373 newBucket!200) e!2697330)))

(declare-fun b!4334799 () Bool)

(declare-fun e!2697331 () Bool)

(assert (=> b!4334799 (= e!2697330 e!2697331)))

(declare-fun res!1777698 () Bool)

(assert (=> b!4334799 (=> (not res!1777698) (not e!2697331))))

(assert (=> b!4334799 (= res!1777698 (not (containsKey!512 (t!355683 newBucket!200) (_1!27225 (h!54138 newBucket!200)))))))

(declare-fun b!4334800 () Bool)

(assert (=> b!4334800 (= e!2697331 (noDuplicateKeys!373 (t!355683 newBucket!200)))))

(assert (= (and d!1274204 (not res!1777697)) b!4334799))

(assert (= (and b!4334799 res!1777698) b!4334800))

(declare-fun m!4929429 () Bool)

(assert (=> b!4334799 m!4929429))

(declare-fun m!4929431 () Bool)

(assert (=> b!4334800 m!4929431))

(assert (=> b!4334603 d!1274204))

(declare-fun d!1274206 () Bool)

(declare-fun get!15780 (Option!10357) List!48767)

(assert (=> d!1274206 (= (apply!11225 lm!1707 hash!377) (get!15780 (getValueByKey!343 (toList!2730 lm!1707) hash!377)))))

(declare-fun bs!608357 () Bool)

(assert (= bs!608357 d!1274206))

(assert (=> bs!608357 m!4929425))

(assert (=> bs!608357 m!4929425))

(declare-fun m!4929433 () Bool)

(assert (=> bs!608357 m!4929433))

(assert (=> b!4334607 d!1274206))

(declare-fun b!4334821 () Bool)

(declare-fun e!2697343 () List!48767)

(assert (=> b!4334821 (= e!2697343 Nil!48643)))

(declare-fun b!4334819 () Bool)

(declare-fun e!2697342 () List!48767)

(assert (=> b!4334819 (= e!2697342 e!2697343)))

(declare-fun c!737181 () Bool)

(assert (=> b!4334819 (= c!737181 ((_ is Cons!48643) lt!1547829))))

(declare-fun d!1274208 () Bool)

(declare-fun lt!1548111 () List!48767)

(assert (=> d!1274208 (not (containsKey!512 lt!1548111 key!3918))))

(assert (=> d!1274208 (= lt!1548111 e!2697342)))

(declare-fun c!737180 () Bool)

(assert (=> d!1274208 (= c!737180 (and ((_ is Cons!48643) lt!1547829) (= (_1!27225 (h!54138 lt!1547829)) key!3918)))))

(assert (=> d!1274208 (noDuplicateKeys!373 lt!1547829)))

(assert (=> d!1274208 (= (removePairForKey!343 lt!1547829 key!3918) lt!1548111)))

(declare-fun b!4334820 () Bool)

(assert (=> b!4334820 (= e!2697343 (Cons!48643 (h!54138 lt!1547829) (removePairForKey!343 (t!355683 lt!1547829) key!3918)))))

(declare-fun b!4334818 () Bool)

(assert (=> b!4334818 (= e!2697342 (t!355683 lt!1547829))))

(assert (= (and d!1274208 c!737180) b!4334818))

(assert (= (and d!1274208 (not c!737180)) b!4334819))

(assert (= (and b!4334819 c!737181) b!4334820))

(assert (= (and b!4334819 (not c!737181)) b!4334821))

(declare-fun m!4929445 () Bool)

(assert (=> d!1274208 m!4929445))

(declare-fun m!4929447 () Bool)

(assert (=> d!1274208 m!4929447))

(declare-fun m!4929449 () Bool)

(assert (=> b!4334820 m!4929449))

(assert (=> b!4334607 d!1274208))

(declare-fun d!1274214 () Bool)

(assert (=> d!1274214 (contains!10685 (toList!2730 lm!1707) (tuple2!47865 hash!377 lt!1547829))))

(declare-fun lt!1548117 () Unit!68360)

(declare-fun choose!26518 (List!48768 (_ BitVec 64) List!48767) Unit!68360)

(assert (=> d!1274214 (= lt!1548117 (choose!26518 (toList!2730 lm!1707) hash!377 lt!1547829))))

(declare-fun e!2697349 () Bool)

(assert (=> d!1274214 e!2697349))

(declare-fun res!1777707 () Bool)

(assert (=> d!1274214 (=> (not res!1777707) (not e!2697349))))

(assert (=> d!1274214 (= res!1777707 (isStrictlySorted!47 (toList!2730 lm!1707)))))

(assert (=> d!1274214 (= (lemmaGetValueByKeyImpliesContainsTuple!220 (toList!2730 lm!1707) hash!377 lt!1547829) lt!1548117)))

(declare-fun b!4334827 () Bool)

(assert (=> b!4334827 (= e!2697349 (= (getValueByKey!343 (toList!2730 lm!1707) hash!377) (Some!10356 lt!1547829)))))

(assert (= (and d!1274214 res!1777707) b!4334827))

(declare-fun m!4929455 () Bool)

(assert (=> d!1274214 m!4929455))

(declare-fun m!4929457 () Bool)

(assert (=> d!1274214 m!4929457))

(assert (=> d!1274214 m!4929327))

(assert (=> b!4334827 m!4929425))

(assert (=> b!4334607 d!1274214))

(declare-fun d!1274218 () Bool)

(assert (=> d!1274218 (dynLambda!20561 lambda!135417 lt!1547835)))

(declare-fun lt!1548122 () Unit!68360)

(declare-fun choose!26519 (List!48768 Int tuple2!47864) Unit!68360)

(assert (=> d!1274218 (= lt!1548122 (choose!26519 (toList!2730 lm!1707) lambda!135417 lt!1547835))))

(declare-fun e!2697356 () Bool)

(assert (=> d!1274218 e!2697356))

(declare-fun res!1777710 () Bool)

(assert (=> d!1274218 (=> (not res!1777710) (not e!2697356))))

(assert (=> d!1274218 (= res!1777710 (forall!8935 (toList!2730 lm!1707) lambda!135417))))

(assert (=> d!1274218 (= (forallContained!1585 (toList!2730 lm!1707) lambda!135417 lt!1547835) lt!1548122)))

(declare-fun b!4334838 () Bool)

(assert (=> b!4334838 (= e!2697356 (contains!10685 (toList!2730 lm!1707) lt!1547835))))

(assert (= (and d!1274218 res!1777710) b!4334838))

(declare-fun b_lambda!128199 () Bool)

(assert (=> (not b_lambda!128199) (not d!1274218)))

(declare-fun m!4929459 () Bool)

(assert (=> d!1274218 m!4929459))

(declare-fun m!4929461 () Bool)

(assert (=> d!1274218 m!4929461))

(assert (=> d!1274218 m!4929113))

(assert (=> b!4334838 m!4929127))

(assert (=> b!4334607 d!1274218))

(declare-fun d!1274220 () Bool)

(declare-fun lt!1548128 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7597 (List!48768) (InoxSet tuple2!47864))

(assert (=> d!1274220 (= lt!1548128 (select (content!7597 (toList!2730 lm!1707)) lt!1547835))))

(declare-fun e!2697365 () Bool)

(assert (=> d!1274220 (= lt!1548128 e!2697365)))

(declare-fun res!1777717 () Bool)

(assert (=> d!1274220 (=> (not res!1777717) (not e!2697365))))

(assert (=> d!1274220 (= res!1777717 ((_ is Cons!48644) (toList!2730 lm!1707)))))

(assert (=> d!1274220 (= (contains!10685 (toList!2730 lm!1707) lt!1547835) lt!1548128)))

(declare-fun b!4334849 () Bool)

(declare-fun e!2697366 () Bool)

(assert (=> b!4334849 (= e!2697365 e!2697366)))

(declare-fun res!1777718 () Bool)

(assert (=> b!4334849 (=> res!1777718 e!2697366)))

(assert (=> b!4334849 (= res!1777718 (= (h!54139 (toList!2730 lm!1707)) lt!1547835))))

(declare-fun b!4334850 () Bool)

(assert (=> b!4334850 (= e!2697366 (contains!10685 (t!355684 (toList!2730 lm!1707)) lt!1547835))))

(assert (= (and d!1274220 res!1777717) b!4334849))

(assert (= (and b!4334849 (not res!1777718)) b!4334850))

(declare-fun m!4929469 () Bool)

(assert (=> d!1274220 m!4929469))

(declare-fun m!4929471 () Bool)

(assert (=> d!1274220 m!4929471))

(declare-fun m!4929473 () Bool)

(assert (=> b!4334850 m!4929473))

(assert (=> b!4334607 d!1274220))

(declare-fun d!1274224 () Bool)

(declare-fun hash!1316 (Hashable!4765 K!10000) (_ BitVec 64))

(assert (=> d!1274224 (= (hash!1315 hashF!1247 key!3918) (hash!1316 hashF!1247 key!3918))))

(declare-fun bs!608359 () Bool)

(assert (= bs!608359 d!1274224))

(declare-fun m!4929475 () Bool)

(assert (=> bs!608359 m!4929475))

(assert (=> b!4334608 d!1274224))

(assert (=> b!4334606 d!1274182))

(declare-fun d!1274226 () Bool)

(declare-fun e!2697379 () Bool)

(assert (=> d!1274226 e!2697379))

(declare-fun res!1777733 () Bool)

(assert (=> d!1274226 (=> (not res!1777733) (not e!2697379))))

(declare-fun lt!1548162 () ListLongMap!1379)

(assert (=> d!1274226 (= res!1777733 (contains!10684 lt!1548162 (_1!27226 lt!1547831)))))

(declare-fun lt!1548163 () List!48768)

(assert (=> d!1274226 (= lt!1548162 (ListLongMap!1380 lt!1548163))))

(declare-fun lt!1548165 () Unit!68360)

(declare-fun lt!1548164 () Unit!68360)

(assert (=> d!1274226 (= lt!1548165 lt!1548164)))

(assert (=> d!1274226 (= (getValueByKey!343 lt!1548163 (_1!27226 lt!1547831)) (Some!10356 (_2!27226 lt!1547831)))))

(declare-fun lemmaContainsTupThenGetReturnValue!126 (List!48768 (_ BitVec 64) List!48767) Unit!68360)

(assert (=> d!1274226 (= lt!1548164 (lemmaContainsTupThenGetReturnValue!126 lt!1548163 (_1!27226 lt!1547831) (_2!27226 lt!1547831)))))

(declare-fun insertStrictlySorted!79 (List!48768 (_ BitVec 64) List!48767) List!48768)

(assert (=> d!1274226 (= lt!1548163 (insertStrictlySorted!79 (toList!2730 lm!1707) (_1!27226 lt!1547831) (_2!27226 lt!1547831)))))

(assert (=> d!1274226 (= (+!418 lm!1707 lt!1547831) lt!1548162)))

(declare-fun b!4334869 () Bool)

(declare-fun res!1777734 () Bool)

(assert (=> b!4334869 (=> (not res!1777734) (not e!2697379))))

(assert (=> b!4334869 (= res!1777734 (= (getValueByKey!343 (toList!2730 lt!1548162) (_1!27226 lt!1547831)) (Some!10356 (_2!27226 lt!1547831))))))

(declare-fun b!4334870 () Bool)

(assert (=> b!4334870 (= e!2697379 (contains!10685 (toList!2730 lt!1548162) lt!1547831))))

(assert (= (and d!1274226 res!1777733) b!4334869))

(assert (= (and b!4334869 res!1777734) b!4334870))

(declare-fun m!4929491 () Bool)

(assert (=> d!1274226 m!4929491))

(declare-fun m!4929493 () Bool)

(assert (=> d!1274226 m!4929493))

(declare-fun m!4929495 () Bool)

(assert (=> d!1274226 m!4929495))

(declare-fun m!4929497 () Bool)

(assert (=> d!1274226 m!4929497))

(declare-fun m!4929499 () Bool)

(assert (=> b!4334869 m!4929499))

(declare-fun m!4929501 () Bool)

(assert (=> b!4334870 m!4929501))

(assert (=> b!4334606 d!1274226))

(declare-fun d!1274236 () Bool)

(assert (=> d!1274236 (forall!8935 (toList!2730 (+!418 lm!1707 (tuple2!47865 hash!377 newBucket!200))) lambda!135417)))

(declare-fun lt!1548168 () Unit!68360)

(declare-fun choose!26520 (ListLongMap!1379 Int (_ BitVec 64) List!48767) Unit!68360)

(assert (=> d!1274236 (= lt!1548168 (choose!26520 lm!1707 lambda!135417 hash!377 newBucket!200))))

(declare-fun e!2697382 () Bool)

(assert (=> d!1274236 e!2697382))

(declare-fun res!1777737 () Bool)

(assert (=> d!1274236 (=> (not res!1777737) (not e!2697382))))

(assert (=> d!1274236 (= res!1777737 (forall!8935 (toList!2730 lm!1707) lambda!135417))))

(assert (=> d!1274236 (= (addValidProp!27 lm!1707 lambda!135417 hash!377 newBucket!200) lt!1548168)))

(declare-fun b!4334874 () Bool)

(assert (=> b!4334874 (= e!2697382 (dynLambda!20561 lambda!135417 (tuple2!47865 hash!377 newBucket!200)))))

(assert (= (and d!1274236 res!1777737) b!4334874))

(declare-fun b_lambda!128201 () Bool)

(assert (=> (not b_lambda!128201) (not b!4334874)))

(declare-fun m!4929539 () Bool)

(assert (=> d!1274236 m!4929539))

(declare-fun m!4929541 () Bool)

(assert (=> d!1274236 m!4929541))

(declare-fun m!4929543 () Bool)

(assert (=> d!1274236 m!4929543))

(assert (=> d!1274236 m!4929113))

(declare-fun m!4929545 () Bool)

(assert (=> b!4334874 m!4929545))

(assert (=> b!4334606 d!1274236))

(assert (=> b!4334606 d!1274184))

(declare-fun b!4334888 () Bool)

(declare-fun e!2697390 () Bool)

(declare-fun tp!1328877 () Bool)

(assert (=> b!4334888 (= e!2697390 (and tp_is_empty!24729 tp_is_empty!24731 tp!1328877))))

(assert (=> b!4334614 (= tp!1328865 e!2697390)))

(assert (= (and b!4334614 ((_ is Cons!48643) (t!355683 newBucket!200))) b!4334888))

(declare-fun b!4334894 () Bool)

(declare-fun e!2697394 () Bool)

(declare-fun tp!1328883 () Bool)

(declare-fun tp!1328884 () Bool)

(assert (=> b!4334894 (= e!2697394 (and tp!1328883 tp!1328884))))

(assert (=> b!4334604 (= tp!1328866 e!2697394)))

(assert (= (and b!4334604 ((_ is Cons!48644) (toList!2730 lm!1707))) b!4334894))

(declare-fun b_lambda!128211 () Bool)

(assert (= b_lambda!128201 (or start!417960 b_lambda!128211)))

(declare-fun bs!608386 () Bool)

(declare-fun d!1274248 () Bool)

(assert (= bs!608386 (and d!1274248 start!417960)))

(assert (=> bs!608386 (= (dynLambda!20561 lambda!135417 (tuple2!47865 hash!377 newBucket!200)) (noDuplicateKeys!373 (_2!27226 (tuple2!47865 hash!377 newBucket!200))))))

(declare-fun m!4929555 () Bool)

(assert (=> bs!608386 m!4929555))

(assert (=> b!4334874 d!1274248))

(declare-fun b_lambda!128213 () Bool)

(assert (= b_lambda!128195 (or start!417960 b_lambda!128213)))

(declare-fun bs!608387 () Bool)

(declare-fun d!1274250 () Bool)

(assert (= bs!608387 (and d!1274250 start!417960)))

(assert (=> bs!608387 (= (dynLambda!20561 lambda!135417 (h!54139 (toList!2730 lm!1707))) (noDuplicateKeys!373 (_2!27226 (h!54139 (toList!2730 lm!1707)))))))

(declare-fun m!4929557 () Bool)

(assert (=> bs!608387 m!4929557))

(assert (=> b!4334736 d!1274250))

(declare-fun b_lambda!128215 () Bool)

(assert (= b_lambda!128193 (or start!417960 b_lambda!128215)))

(declare-fun bs!608388 () Bool)

(declare-fun d!1274252 () Bool)

(assert (= bs!608388 (and d!1274252 start!417960)))

(assert (=> bs!608388 (= (dynLambda!20561 lambda!135417 (h!54139 (toList!2730 lt!1547837))) (noDuplicateKeys!373 (_2!27226 (h!54139 (toList!2730 lt!1547837)))))))

(declare-fun m!4929559 () Bool)

(assert (=> bs!608388 m!4929559))

(assert (=> b!4334734 d!1274252))

(declare-fun b_lambda!128217 () Bool)

(assert (= b_lambda!128199 (or start!417960 b_lambda!128217)))

(declare-fun bs!608389 () Bool)

(declare-fun d!1274254 () Bool)

(assert (= bs!608389 (and d!1274254 start!417960)))

(assert (=> bs!608389 (= (dynLambda!20561 lambda!135417 lt!1547835) (noDuplicateKeys!373 (_2!27226 lt!1547835)))))

(declare-fun m!4929561 () Bool)

(assert (=> bs!608389 m!4929561))

(assert (=> d!1274218 d!1274254))

(check-sat (not d!1274206) (not b!4334735) (not b!4334776) (not b!4334888) (not b!4334773) (not b_lambda!128213) (not bs!608388) (not b!4334700) (not b_lambda!128211) (not b!4334838) (not d!1274188) (not d!1274176) (not b_lambda!128217) (not b!4334699) (not d!1274218) (not d!1274170) (not b!4334703) (not bm!301207) (not b!4334737) (not d!1274178) (not bm!301210) (not b!4334894) (not b!4334869) (not b!4334799) (not b!4334850) (not b!4334796) (not bm!301208) (not d!1274224) (not b!4334721) (not d!1274200) (not b!4334827) (not b!4334774) (not b!4334701) (not d!1274208) (not b!4334782) (not d!1274220) (not b!4334698) (not b!4334720) (not d!1274226) (not d!1274180) (not bs!608387) tp_is_empty!24731 (not bm!301209) (not d!1274174) (not b_lambda!128215) (not b!4334710) (not d!1274172) (not b!4334778) (not bs!608389) (not b!4334777) (not bm!301206) tp_is_empty!24729 (not bs!608386) (not b!4334798) (not bm!301211) (not bm!301223) (not b!4334708) (not b!4334688) (not b!4334687) (not d!1274186) (not b!4334800) (not b!4334690) (not b!4334870) (not b!4334686) (not b!4334697) (not b!4334775) (not b!4334820) (not b!4334779) (not d!1274214) (not d!1274236) (not d!1274148) (not d!1274198))
(check-sat)
