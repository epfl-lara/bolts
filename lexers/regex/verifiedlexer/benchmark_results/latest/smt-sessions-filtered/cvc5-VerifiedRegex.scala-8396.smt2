; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!436678 () Bool)

(assert start!436678)

(declare-fun b!4456050 () Bool)

(declare-fun e!2774770 () Bool)

(declare-fun e!2774768 () Bool)

(assert (=> b!4456050 (= e!2774770 e!2774768)))

(declare-fun res!1847225 () Bool)

(assert (=> b!4456050 (=> (not res!1847225) (not e!2774768))))

(declare-datatypes ((K!11383 0))(
  ( (K!11384 (val!17377 Int)) )
))
(declare-datatypes ((V!11629 0))(
  ( (V!11630 (val!17378 Int)) )
))
(declare-datatypes ((tuple2!50074 0))(
  ( (tuple2!50075 (_1!28331 K!11383) (_2!28331 V!11629)) )
))
(declare-datatypes ((List!50127 0))(
  ( (Nil!50003) (Cons!50003 (h!55748 tuple2!50074) (t!357077 List!50127)) )
))
(declare-datatypes ((ListMap!3067 0))(
  ( (ListMap!3068 (toList!3829 List!50127)) )
))
(declare-fun lt!1647290 () ListMap!3067)

(declare-fun key!4412 () K!11383)

(declare-fun contains!12545 (ListMap!3067 K!11383) Bool)

(assert (=> b!4456050 (= res!1847225 (contains!12545 lt!1647290 key!4412))))

(declare-datatypes ((tuple2!50076 0))(
  ( (tuple2!50077 (_1!28332 (_ BitVec 64)) (_2!28332 List!50127)) )
))
(declare-datatypes ((List!50128 0))(
  ( (Nil!50004) (Cons!50004 (h!55749 tuple2!50076) (t!357078 List!50128)) )
))
(declare-datatypes ((ListLongMap!2485 0))(
  ( (ListLongMap!2486 (toList!3830 List!50128)) )
))
(declare-fun lm!1853 () ListLongMap!2485)

(declare-fun extractMap!979 (List!50128) ListMap!3067)

(assert (=> b!4456050 (= lt!1647290 (extractMap!979 (toList!3830 lm!1853)))))

(declare-fun b!4456051 () Bool)

(declare-fun res!1847227 () Bool)

(assert (=> b!4456051 (=> (not res!1847227) (not e!2774770))))

(declare-datatypes ((Hashable!5318 0))(
  ( (HashableExt!5317 (__x!31021 Int)) )
))
(declare-fun hashF!1313 () Hashable!5318)

(declare-fun allKeysSameHashInMap!1030 (ListLongMap!2485 Hashable!5318) Bool)

(assert (=> b!4456051 (= res!1847227 (allKeysSameHashInMap!1030 lm!1853 hashF!1313))))

(declare-fun tp_is_empty!26865 () Bool)

(declare-fun b!4456052 () Bool)

(declare-fun tp!1334994 () Bool)

(declare-fun e!2774771 () Bool)

(declare-fun tp_is_empty!26867 () Bool)

(assert (=> b!4456052 (= e!2774771 (and tp_is_empty!26865 tp_is_empty!26867 tp!1334994))))

(declare-fun b!4456053 () Bool)

(declare-fun e!2774769 () Bool)

(declare-fun tp!1334995 () Bool)

(assert (=> b!4456053 (= e!2774769 tp!1334995)))

(declare-fun b!4456054 () Bool)

(declare-fun res!1847226 () Bool)

(assert (=> b!4456054 (=> (not res!1847226) (not e!2774770))))

(declare-fun l!12858 () List!50127)

(declare-fun noDuplicateKeys!911 (List!50127) Bool)

(assert (=> b!4456054 (= res!1847226 (noDuplicateKeys!911 l!12858))))

(declare-fun res!1847224 () Bool)

(assert (=> start!436678 (=> (not res!1847224) (not e!2774770))))

(declare-fun lambda!160282 () Int)

(declare-fun forall!9832 (List!50128 Int) Bool)

(assert (=> start!436678 (= res!1847224 (forall!9832 (toList!3830 lm!1853) lambda!160282))))

(assert (=> start!436678 e!2774770))

(declare-fun inv!65570 (ListLongMap!2485) Bool)

(assert (=> start!436678 (and (inv!65570 lm!1853) e!2774769)))

(assert (=> start!436678 true))

(assert (=> start!436678 e!2774771))

(assert (=> start!436678 tp_is_empty!26865))

(declare-fun b!4456055 () Bool)

(assert (=> b!4456055 (= e!2774768 (not (noDuplicateKeys!911 (t!357077 l!12858))))))

(declare-fun lt!1647289 () ListMap!3067)

(declare-fun +!1286 (ListMap!3067 tuple2!50074) ListMap!3067)

(assert (=> b!4456055 (= lt!1647289 (+!1286 lt!1647290 (h!55748 l!12858)))))

(declare-fun lt!1647291 () ListMap!3067)

(declare-fun eq!470 (ListMap!3067 ListMap!3067) Bool)

(declare-fun addToMapMapFromBucket!505 (List!50127 ListMap!3067) ListMap!3067)

(assert (=> b!4456055 (eq!470 (addToMapMapFromBucket!505 (t!357077 l!12858) (+!1286 lt!1647290 (h!55748 l!12858))) (+!1286 lt!1647291 (h!55748 l!12858)))))

(declare-datatypes ((Unit!86031 0))(
  ( (Unit!86032) )
))
(declare-fun lt!1647287 () Unit!86031)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!217 (ListMap!3067 K!11383 V!11629 List!50127) Unit!86031)

(assert (=> b!4456055 (= lt!1647287 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!217 lt!1647290 (_1!28331 (h!55748 l!12858)) (_2!28331 (h!55748 l!12858)) (t!357077 l!12858)))))

(assert (=> b!4456055 (contains!12545 lt!1647291 key!4412)))

(assert (=> b!4456055 (= lt!1647291 (addToMapMapFromBucket!505 (t!357077 l!12858) lt!1647290))))

(declare-fun lt!1647288 () Unit!86031)

(declare-fun lemmaAddToMapMaintainsContains!13 (ListLongMap!2485 K!11383 List!50127 Hashable!5318) Unit!86031)

(assert (=> b!4456055 (= lt!1647288 (lemmaAddToMapMaintainsContains!13 lm!1853 key!4412 (t!357077 l!12858) hashF!1313))))

(declare-fun b!4456056 () Bool)

(declare-fun res!1847228 () Bool)

(assert (=> b!4456056 (=> (not res!1847228) (not e!2774768))))

(assert (=> b!4456056 (= res!1847228 (is-Cons!50003 l!12858))))

(assert (= (and start!436678 res!1847224) b!4456051))

(assert (= (and b!4456051 res!1847227) b!4456054))

(assert (= (and b!4456054 res!1847226) b!4456050))

(assert (= (and b!4456050 res!1847225) b!4456056))

(assert (= (and b!4456056 res!1847228) b!4456055))

(assert (= start!436678 b!4456053))

(assert (= (and start!436678 (is-Cons!50003 l!12858)) b!4456052))

(declare-fun m!5157613 () Bool)

(assert (=> b!4456050 m!5157613))

(declare-fun m!5157615 () Bool)

(assert (=> b!4456050 m!5157615))

(declare-fun m!5157617 () Bool)

(assert (=> b!4456051 m!5157617))

(declare-fun m!5157619 () Bool)

(assert (=> b!4456055 m!5157619))

(declare-fun m!5157621 () Bool)

(assert (=> b!4456055 m!5157621))

(declare-fun m!5157623 () Bool)

(assert (=> b!4456055 m!5157623))

(declare-fun m!5157625 () Bool)

(assert (=> b!4456055 m!5157625))

(assert (=> b!4456055 m!5157625))

(declare-fun m!5157627 () Bool)

(assert (=> b!4456055 m!5157627))

(declare-fun m!5157629 () Bool)

(assert (=> b!4456055 m!5157629))

(declare-fun m!5157631 () Bool)

(assert (=> b!4456055 m!5157631))

(declare-fun m!5157633 () Bool)

(assert (=> b!4456055 m!5157633))

(assert (=> b!4456055 m!5157627))

(declare-fun m!5157635 () Bool)

(assert (=> b!4456055 m!5157635))

(assert (=> b!4456055 m!5157623))

(declare-fun m!5157637 () Bool)

(assert (=> b!4456054 m!5157637))

(declare-fun m!5157639 () Bool)

(assert (=> start!436678 m!5157639))

(declare-fun m!5157641 () Bool)

(assert (=> start!436678 m!5157641))

(push 1)

(assert tp_is_empty!26865)

(assert (not b!4456051))

(assert (not b!4456053))

(assert (not b!4456054))

(assert (not b!4456050))

(assert tp_is_empty!26867)

(assert (not b!4456052))

(assert (not start!436678))

(assert (not b!4456055))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1359293 () Bool)

(declare-fun res!1847248 () Bool)

(declare-fun e!2774788 () Bool)

(assert (=> d!1359293 (=> res!1847248 e!2774788)))

(assert (=> d!1359293 (= res!1847248 (not (is-Cons!50003 l!12858)))))

(assert (=> d!1359293 (= (noDuplicateKeys!911 l!12858) e!2774788)))

(declare-fun b!4456082 () Bool)

(declare-fun e!2774789 () Bool)

(assert (=> b!4456082 (= e!2774788 e!2774789)))

(declare-fun res!1847249 () Bool)

(assert (=> b!4456082 (=> (not res!1847249) (not e!2774789))))

(declare-fun containsKey!1323 (List!50127 K!11383) Bool)

(assert (=> b!4456082 (= res!1847249 (not (containsKey!1323 (t!357077 l!12858) (_1!28331 (h!55748 l!12858)))))))

(declare-fun b!4456083 () Bool)

(assert (=> b!4456083 (= e!2774789 (noDuplicateKeys!911 (t!357077 l!12858)))))

(assert (= (and d!1359293 (not res!1847248)) b!4456082))

(assert (= (and b!4456082 res!1847249) b!4456083))

(declare-fun m!5157673 () Bool)

(assert (=> b!4456082 m!5157673))

(assert (=> b!4456083 m!5157631))

(assert (=> b!4456054 d!1359293))

(declare-fun d!1359295 () Bool)

(declare-fun res!1847250 () Bool)

(declare-fun e!2774790 () Bool)

(assert (=> d!1359295 (=> res!1847250 e!2774790)))

(assert (=> d!1359295 (= res!1847250 (not (is-Cons!50003 (t!357077 l!12858))))))

(assert (=> d!1359295 (= (noDuplicateKeys!911 (t!357077 l!12858)) e!2774790)))

(declare-fun b!4456084 () Bool)

(declare-fun e!2774791 () Bool)

(assert (=> b!4456084 (= e!2774790 e!2774791)))

(declare-fun res!1847251 () Bool)

(assert (=> b!4456084 (=> (not res!1847251) (not e!2774791))))

(assert (=> b!4456084 (= res!1847251 (not (containsKey!1323 (t!357077 (t!357077 l!12858)) (_1!28331 (h!55748 (t!357077 l!12858))))))))

(declare-fun b!4456085 () Bool)

(assert (=> b!4456085 (= e!2774791 (noDuplicateKeys!911 (t!357077 (t!357077 l!12858))))))

(assert (= (and d!1359295 (not res!1847250)) b!4456084))

(assert (= (and b!4456084 res!1847251) b!4456085))

(declare-fun m!5157675 () Bool)

(assert (=> b!4456084 m!5157675))

(declare-fun m!5157677 () Bool)

(assert (=> b!4456085 m!5157677))

(assert (=> b!4456055 d!1359295))

(declare-fun d!1359297 () Bool)

(declare-fun e!2774794 () Bool)

(assert (=> d!1359297 e!2774794))

(declare-fun res!1847257 () Bool)

(assert (=> d!1359297 (=> (not res!1847257) (not e!2774794))))

(declare-fun lt!1647316 () ListMap!3067)

(assert (=> d!1359297 (= res!1847257 (contains!12545 lt!1647316 (_1!28331 (h!55748 l!12858))))))

(declare-fun lt!1647315 () List!50127)

(assert (=> d!1359297 (= lt!1647316 (ListMap!3068 lt!1647315))))

(declare-fun lt!1647317 () Unit!86031)

(declare-fun lt!1647318 () Unit!86031)

(assert (=> d!1359297 (= lt!1647317 lt!1647318)))

(declare-datatypes ((Option!10854 0))(
  ( (None!10853) (Some!10853 (v!44111 V!11629)) )
))
(declare-fun getValueByKey!840 (List!50127 K!11383) Option!10854)

(assert (=> d!1359297 (= (getValueByKey!840 lt!1647315 (_1!28331 (h!55748 l!12858))) (Some!10853 (_2!28331 (h!55748 l!12858))))))

(declare-fun lemmaContainsTupThenGetReturnValue!545 (List!50127 K!11383 V!11629) Unit!86031)

(assert (=> d!1359297 (= lt!1647318 (lemmaContainsTupThenGetReturnValue!545 lt!1647315 (_1!28331 (h!55748 l!12858)) (_2!28331 (h!55748 l!12858))))))

(declare-fun insertNoDuplicatedKeys!239 (List!50127 K!11383 V!11629) List!50127)

(assert (=> d!1359297 (= lt!1647315 (insertNoDuplicatedKeys!239 (toList!3829 lt!1647291) (_1!28331 (h!55748 l!12858)) (_2!28331 (h!55748 l!12858))))))

(assert (=> d!1359297 (= (+!1286 lt!1647291 (h!55748 l!12858)) lt!1647316)))

(declare-fun b!4456090 () Bool)

(declare-fun res!1847256 () Bool)

(assert (=> b!4456090 (=> (not res!1847256) (not e!2774794))))

(assert (=> b!4456090 (= res!1847256 (= (getValueByKey!840 (toList!3829 lt!1647316) (_1!28331 (h!55748 l!12858))) (Some!10853 (_2!28331 (h!55748 l!12858)))))))

(declare-fun b!4456091 () Bool)

(declare-fun contains!12547 (List!50127 tuple2!50074) Bool)

(assert (=> b!4456091 (= e!2774794 (contains!12547 (toList!3829 lt!1647316) (h!55748 l!12858)))))

(assert (= (and d!1359297 res!1847257) b!4456090))

(assert (= (and b!4456090 res!1847256) b!4456091))

(declare-fun m!5157679 () Bool)

(assert (=> d!1359297 m!5157679))

(declare-fun m!5157681 () Bool)

(assert (=> d!1359297 m!5157681))

(declare-fun m!5157683 () Bool)

(assert (=> d!1359297 m!5157683))

(declare-fun m!5157685 () Bool)

(assert (=> d!1359297 m!5157685))

(declare-fun m!5157687 () Bool)

(assert (=> b!4456090 m!5157687))

(declare-fun m!5157689 () Bool)

(assert (=> b!4456091 m!5157689))

(assert (=> b!4456055 d!1359297))

(declare-fun bs!790823 () Bool)

(declare-fun d!1359299 () Bool)

(assert (= bs!790823 (and d!1359299 start!436678)))

(declare-fun lambda!160288 () Int)

(assert (=> bs!790823 (= lambda!160288 lambda!160282)))

(assert (=> d!1359299 (contains!12545 (addToMapMapFromBucket!505 (t!357077 l!12858) (extractMap!979 (toList!3830 lm!1853))) key!4412)))

(declare-fun lt!1647321 () Unit!86031)

(declare-fun choose!28375 (ListLongMap!2485 K!11383 List!50127 Hashable!5318) Unit!86031)

(assert (=> d!1359299 (= lt!1647321 (choose!28375 lm!1853 key!4412 (t!357077 l!12858) hashF!1313))))

(assert (=> d!1359299 (forall!9832 (toList!3830 lm!1853) lambda!160288)))

(assert (=> d!1359299 (= (lemmaAddToMapMaintainsContains!13 lm!1853 key!4412 (t!357077 l!12858) hashF!1313) lt!1647321)))

(declare-fun bs!790824 () Bool)

(assert (= bs!790824 d!1359299))

(assert (=> bs!790824 m!5157615))

(declare-fun m!5157691 () Bool)

(assert (=> bs!790824 m!5157691))

(assert (=> bs!790824 m!5157615))

(declare-fun m!5157693 () Bool)

(assert (=> bs!790824 m!5157693))

(declare-fun m!5157695 () Bool)

(assert (=> bs!790824 m!5157695))

(assert (=> bs!790824 m!5157693))

(declare-fun m!5157697 () Bool)

(assert (=> bs!790824 m!5157697))

(assert (=> b!4456055 d!1359299))

(declare-fun d!1359303 () Bool)

(declare-fun e!2774795 () Bool)

(assert (=> d!1359303 e!2774795))

(declare-fun res!1847259 () Bool)

(assert (=> d!1359303 (=> (not res!1847259) (not e!2774795))))

(declare-fun lt!1647323 () ListMap!3067)

(assert (=> d!1359303 (= res!1847259 (contains!12545 lt!1647323 (_1!28331 (h!55748 l!12858))))))

(declare-fun lt!1647322 () List!50127)

(assert (=> d!1359303 (= lt!1647323 (ListMap!3068 lt!1647322))))

(declare-fun lt!1647324 () Unit!86031)

(declare-fun lt!1647325 () Unit!86031)

(assert (=> d!1359303 (= lt!1647324 lt!1647325)))

(assert (=> d!1359303 (= (getValueByKey!840 lt!1647322 (_1!28331 (h!55748 l!12858))) (Some!10853 (_2!28331 (h!55748 l!12858))))))

(assert (=> d!1359303 (= lt!1647325 (lemmaContainsTupThenGetReturnValue!545 lt!1647322 (_1!28331 (h!55748 l!12858)) (_2!28331 (h!55748 l!12858))))))

(assert (=> d!1359303 (= lt!1647322 (insertNoDuplicatedKeys!239 (toList!3829 lt!1647290) (_1!28331 (h!55748 l!12858)) (_2!28331 (h!55748 l!12858))))))

(assert (=> d!1359303 (= (+!1286 lt!1647290 (h!55748 l!12858)) lt!1647323)))

(declare-fun b!4456092 () Bool)

(declare-fun res!1847258 () Bool)

(assert (=> b!4456092 (=> (not res!1847258) (not e!2774795))))

(assert (=> b!4456092 (= res!1847258 (= (getValueByKey!840 (toList!3829 lt!1647323) (_1!28331 (h!55748 l!12858))) (Some!10853 (_2!28331 (h!55748 l!12858)))))))

(declare-fun b!4456093 () Bool)

(assert (=> b!4456093 (= e!2774795 (contains!12547 (toList!3829 lt!1647323) (h!55748 l!12858)))))

(assert (= (and d!1359303 res!1847259) b!4456092))

(assert (= (and b!4456092 res!1847258) b!4456093))

(declare-fun m!5157699 () Bool)

(assert (=> d!1359303 m!5157699))

(declare-fun m!5157701 () Bool)

(assert (=> d!1359303 m!5157701))

(declare-fun m!5157703 () Bool)

(assert (=> d!1359303 m!5157703))

(declare-fun m!5157705 () Bool)

(assert (=> d!1359303 m!5157705))

(declare-fun m!5157707 () Bool)

(assert (=> b!4456092 m!5157707))

(declare-fun m!5157709 () Bool)

(assert (=> b!4456093 m!5157709))

(assert (=> b!4456055 d!1359303))

(declare-fun b!4456154 () Bool)

(assert (=> b!4456154 true))

(declare-fun bs!790830 () Bool)

(declare-fun b!4456153 () Bool)

(assert (= bs!790830 (and b!4456153 b!4456154)))

(declare-fun lambda!160324 () Int)

(declare-fun lambda!160323 () Int)

(assert (=> bs!790830 (= lambda!160324 lambda!160323)))

(assert (=> b!4456153 true))

(declare-fun lambda!160325 () Int)

(declare-fun lt!1647413 () ListMap!3067)

(assert (=> bs!790830 (= (= lt!1647413 (+!1286 lt!1647290 (h!55748 l!12858))) (= lambda!160325 lambda!160323))))

(assert (=> b!4456153 (= (= lt!1647413 (+!1286 lt!1647290 (h!55748 l!12858))) (= lambda!160325 lambda!160324))))

(assert (=> b!4456153 true))

(declare-fun bs!790831 () Bool)

(declare-fun d!1359305 () Bool)

(assert (= bs!790831 (and d!1359305 b!4456154)))

(declare-fun lambda!160326 () Int)

(declare-fun lt!1647406 () ListMap!3067)

(assert (=> bs!790831 (= (= lt!1647406 (+!1286 lt!1647290 (h!55748 l!12858))) (= lambda!160326 lambda!160323))))

(declare-fun bs!790832 () Bool)

(assert (= bs!790832 (and d!1359305 b!4456153)))

(assert (=> bs!790832 (= (= lt!1647406 (+!1286 lt!1647290 (h!55748 l!12858))) (= lambda!160326 lambda!160324))))

(assert (=> bs!790832 (= (= lt!1647406 lt!1647413) (= lambda!160326 lambda!160325))))

(assert (=> d!1359305 true))

(declare-fun b!4456151 () Bool)

(declare-fun e!2774836 () Bool)

(declare-fun invariantList!876 (List!50127) Bool)

(assert (=> b!4456151 (= e!2774836 (invariantList!876 (toList!3829 lt!1647406)))))

(declare-fun c!758553 () Bool)

(declare-fun call!310116 () Bool)

(declare-fun bm!310109 () Bool)

(declare-fun forall!9834 (List!50127 Int) Bool)

(assert (=> bm!310109 (= call!310116 (forall!9834 (toList!3829 (+!1286 lt!1647290 (h!55748 l!12858))) (ite c!758553 lambda!160323 lambda!160325)))))

(declare-fun call!310114 () Bool)

(declare-fun bm!310110 () Bool)

(assert (=> bm!310110 (= call!310114 (forall!9834 (toList!3829 (+!1286 lt!1647290 (h!55748 l!12858))) (ite c!758553 lambda!160323 lambda!160325)))))

(declare-fun bm!310111 () Bool)

(declare-fun call!310115 () Unit!86031)

(declare-fun lemmaContainsAllItsOwnKeys!227 (ListMap!3067) Unit!86031)

(assert (=> bm!310111 (= call!310115 (lemmaContainsAllItsOwnKeys!227 (+!1286 lt!1647290 (h!55748 l!12858))))))

(declare-fun b!4456152 () Bool)

(declare-fun e!2774837 () Bool)

(assert (=> b!4456152 (= e!2774837 call!310114)))

(assert (=> d!1359305 e!2774836))

(declare-fun res!1847289 () Bool)

(assert (=> d!1359305 (=> (not res!1847289) (not e!2774836))))

(assert (=> d!1359305 (= res!1847289 (forall!9834 (t!357077 l!12858) lambda!160326))))

(declare-fun e!2774835 () ListMap!3067)

(assert (=> d!1359305 (= lt!1647406 e!2774835)))

(assert (=> d!1359305 (= c!758553 (is-Nil!50003 (t!357077 l!12858)))))

(assert (=> d!1359305 (noDuplicateKeys!911 (t!357077 l!12858))))

(assert (=> d!1359305 (= (addToMapMapFromBucket!505 (t!357077 l!12858) (+!1286 lt!1647290 (h!55748 l!12858))) lt!1647406)))

(assert (=> b!4456153 (= e!2774835 lt!1647413)))

(declare-fun lt!1647411 () ListMap!3067)

(assert (=> b!4456153 (= lt!1647411 (+!1286 (+!1286 lt!1647290 (h!55748 l!12858)) (h!55748 (t!357077 l!12858))))))

(assert (=> b!4456153 (= lt!1647413 (addToMapMapFromBucket!505 (t!357077 (t!357077 l!12858)) (+!1286 (+!1286 lt!1647290 (h!55748 l!12858)) (h!55748 (t!357077 l!12858)))))))

(declare-fun lt!1647409 () Unit!86031)

(assert (=> b!4456153 (= lt!1647409 call!310115)))

(assert (=> b!4456153 (forall!9834 (toList!3829 (+!1286 lt!1647290 (h!55748 l!12858))) lambda!160324)))

(declare-fun lt!1647408 () Unit!86031)

(assert (=> b!4456153 (= lt!1647408 lt!1647409)))

(assert (=> b!4456153 (forall!9834 (toList!3829 lt!1647411) lambda!160325)))

(declare-fun lt!1647404 () Unit!86031)

(declare-fun Unit!86035 () Unit!86031)

(assert (=> b!4456153 (= lt!1647404 Unit!86035)))

(assert (=> b!4456153 (forall!9834 (t!357077 (t!357077 l!12858)) lambda!160325)))

(declare-fun lt!1647415 () Unit!86031)

(declare-fun Unit!86036 () Unit!86031)

(assert (=> b!4456153 (= lt!1647415 Unit!86036)))

(declare-fun lt!1647397 () Unit!86031)

(declare-fun Unit!86037 () Unit!86031)

(assert (=> b!4456153 (= lt!1647397 Unit!86037)))

(declare-fun lt!1647396 () Unit!86031)

(declare-fun forallContained!2177 (List!50127 Int tuple2!50074) Unit!86031)

(assert (=> b!4456153 (= lt!1647396 (forallContained!2177 (toList!3829 lt!1647411) lambda!160325 (h!55748 (t!357077 l!12858))))))

(assert (=> b!4456153 (contains!12545 lt!1647411 (_1!28331 (h!55748 (t!357077 l!12858))))))

(declare-fun lt!1647399 () Unit!86031)

(declare-fun Unit!86038 () Unit!86031)

(assert (=> b!4456153 (= lt!1647399 Unit!86038)))

(assert (=> b!4456153 (contains!12545 lt!1647413 (_1!28331 (h!55748 (t!357077 l!12858))))))

(declare-fun lt!1647412 () Unit!86031)

(declare-fun Unit!86039 () Unit!86031)

(assert (=> b!4456153 (= lt!1647412 Unit!86039)))

(assert (=> b!4456153 (forall!9834 (t!357077 l!12858) lambda!160325)))

(declare-fun lt!1647405 () Unit!86031)

(declare-fun Unit!86040 () Unit!86031)

(assert (=> b!4456153 (= lt!1647405 Unit!86040)))

(assert (=> b!4456153 (forall!9834 (toList!3829 lt!1647411) lambda!160325)))

(declare-fun lt!1647395 () Unit!86031)

(declare-fun Unit!86041 () Unit!86031)

(assert (=> b!4456153 (= lt!1647395 Unit!86041)))

(declare-fun lt!1647400 () Unit!86031)

(declare-fun Unit!86042 () Unit!86031)

(assert (=> b!4456153 (= lt!1647400 Unit!86042)))

(declare-fun lt!1647402 () Unit!86031)

(declare-fun addForallContainsKeyThenBeforeAdding!226 (ListMap!3067 ListMap!3067 K!11383 V!11629) Unit!86031)

(assert (=> b!4456153 (= lt!1647402 (addForallContainsKeyThenBeforeAdding!226 (+!1286 lt!1647290 (h!55748 l!12858)) lt!1647413 (_1!28331 (h!55748 (t!357077 l!12858))) (_2!28331 (h!55748 (t!357077 l!12858)))))))

(assert (=> b!4456153 call!310116))

(declare-fun lt!1647401 () Unit!86031)

(assert (=> b!4456153 (= lt!1647401 lt!1647402)))

(assert (=> b!4456153 (forall!9834 (toList!3829 (+!1286 lt!1647290 (h!55748 l!12858))) lambda!160325)))

(declare-fun lt!1647410 () Unit!86031)

(declare-fun Unit!86043 () Unit!86031)

(assert (=> b!4456153 (= lt!1647410 Unit!86043)))

(declare-fun res!1847288 () Bool)

(assert (=> b!4456153 (= res!1847288 (forall!9834 (t!357077 l!12858) lambda!160325))))

(assert (=> b!4456153 (=> (not res!1847288) (not e!2774837))))

(assert (=> b!4456153 e!2774837))

(declare-fun lt!1647398 () Unit!86031)

(declare-fun Unit!86044 () Unit!86031)

(assert (=> b!4456153 (= lt!1647398 Unit!86044)))

(assert (=> b!4456154 (= e!2774835 (+!1286 lt!1647290 (h!55748 l!12858)))))

(declare-fun lt!1647414 () Unit!86031)

(assert (=> b!4456154 (= lt!1647414 call!310115)))

(assert (=> b!4456154 call!310114))

(declare-fun lt!1647403 () Unit!86031)

(assert (=> b!4456154 (= lt!1647403 lt!1647414)))

(assert (=> b!4456154 call!310116))

(declare-fun lt!1647407 () Unit!86031)

(declare-fun Unit!86045 () Unit!86031)

(assert (=> b!4456154 (= lt!1647407 Unit!86045)))

(declare-fun b!4456155 () Bool)

(declare-fun res!1847287 () Bool)

(assert (=> b!4456155 (=> (not res!1847287) (not e!2774836))))

(assert (=> b!4456155 (= res!1847287 (forall!9834 (toList!3829 (+!1286 lt!1647290 (h!55748 l!12858))) lambda!160326))))

(assert (= (and d!1359305 c!758553) b!4456154))

(assert (= (and d!1359305 (not c!758553)) b!4456153))

(assert (= (and b!4456153 res!1847288) b!4456152))

(assert (= (or b!4456154 b!4456153) bm!310111))

(assert (= (or b!4456154 b!4456152) bm!310110))

(assert (= (or b!4456154 b!4456153) bm!310109))

(assert (= (and d!1359305 res!1847289) b!4456155))

(assert (= (and b!4456155 res!1847287) b!4456151))

(declare-fun m!5157749 () Bool)

(assert (=> bm!310110 m!5157749))

(declare-fun m!5157751 () Bool)

(assert (=> b!4456155 m!5157751))

(assert (=> bm!310111 m!5157623))

(declare-fun m!5157753 () Bool)

(assert (=> bm!310111 m!5157753))

(assert (=> b!4456153 m!5157623))

(declare-fun m!5157755 () Bool)

(assert (=> b!4456153 m!5157755))

(declare-fun m!5157757 () Bool)

(assert (=> b!4456153 m!5157757))

(assert (=> b!4456153 m!5157623))

(declare-fun m!5157759 () Bool)

(assert (=> b!4456153 m!5157759))

(assert (=> b!4456153 m!5157759))

(declare-fun m!5157761 () Bool)

(assert (=> b!4456153 m!5157761))

(declare-fun m!5157763 () Bool)

(assert (=> b!4456153 m!5157763))

(declare-fun m!5157765 () Bool)

(assert (=> b!4456153 m!5157765))

(declare-fun m!5157767 () Bool)

(assert (=> b!4456153 m!5157767))

(assert (=> b!4456153 m!5157767))

(declare-fun m!5157769 () Bool)

(assert (=> b!4456153 m!5157769))

(declare-fun m!5157771 () Bool)

(assert (=> b!4456153 m!5157771))

(declare-fun m!5157773 () Bool)

(assert (=> b!4456153 m!5157773))

(assert (=> b!4456153 m!5157771))

(declare-fun m!5157775 () Bool)

(assert (=> b!4456153 m!5157775))

(declare-fun m!5157777 () Bool)

(assert (=> b!4456151 m!5157777))

(declare-fun m!5157779 () Bool)

(assert (=> d!1359305 m!5157779))

(assert (=> d!1359305 m!5157631))

(assert (=> bm!310109 m!5157749))

(assert (=> b!4456055 d!1359305))

(declare-fun d!1359319 () Bool)

(declare-fun content!8042 (List!50127) (Set tuple2!50074))

(assert (=> d!1359319 (= (eq!470 (addToMapMapFromBucket!505 (t!357077 l!12858) (+!1286 lt!1647290 (h!55748 l!12858))) (+!1286 lt!1647291 (h!55748 l!12858))) (= (content!8042 (toList!3829 (addToMapMapFromBucket!505 (t!357077 l!12858) (+!1286 lt!1647290 (h!55748 l!12858))))) (content!8042 (toList!3829 (+!1286 lt!1647291 (h!55748 l!12858))))))))

(declare-fun bs!790833 () Bool)

(assert (= bs!790833 d!1359319))

(declare-fun m!5157781 () Bool)

(assert (=> bs!790833 m!5157781))

(declare-fun m!5157783 () Bool)

(assert (=> bs!790833 m!5157783))

(assert (=> b!4456055 d!1359319))

(declare-fun d!1359321 () Bool)

(assert (=> d!1359321 (eq!470 (addToMapMapFromBucket!505 (t!357077 l!12858) (+!1286 lt!1647290 (tuple2!50075 (_1!28331 (h!55748 l!12858)) (_2!28331 (h!55748 l!12858))))) (+!1286 (addToMapMapFromBucket!505 (t!357077 l!12858) lt!1647290) (tuple2!50075 (_1!28331 (h!55748 l!12858)) (_2!28331 (h!55748 l!12858)))))))

(declare-fun lt!1647426 () Unit!86031)

(declare-fun choose!28376 (ListMap!3067 K!11383 V!11629 List!50127) Unit!86031)

(assert (=> d!1359321 (= lt!1647426 (choose!28376 lt!1647290 (_1!28331 (h!55748 l!12858)) (_2!28331 (h!55748 l!12858)) (t!357077 l!12858)))))

(assert (=> d!1359321 (not (containsKey!1323 (t!357077 l!12858) (_1!28331 (h!55748 l!12858))))))

(assert (=> d!1359321 (= (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!217 lt!1647290 (_1!28331 (h!55748 l!12858)) (_2!28331 (h!55748 l!12858)) (t!357077 l!12858)) lt!1647426)))

(declare-fun bs!790834 () Bool)

(assert (= bs!790834 d!1359321))

(declare-fun m!5157785 () Bool)

(assert (=> bs!790834 m!5157785))

(declare-fun m!5157787 () Bool)

(assert (=> bs!790834 m!5157787))

(assert (=> bs!790834 m!5157673))

(assert (=> bs!790834 m!5157633))

(declare-fun m!5157789 () Bool)

(assert (=> bs!790834 m!5157789))

(assert (=> bs!790834 m!5157785))

(assert (=> bs!790834 m!5157633))

(declare-fun m!5157791 () Bool)

(assert (=> bs!790834 m!5157791))

(assert (=> bs!790834 m!5157787))

(assert (=> bs!790834 m!5157789))

(declare-fun m!5157793 () Bool)

(assert (=> bs!790834 m!5157793))

(assert (=> b!4456055 d!1359321))

(declare-fun bs!790835 () Bool)

(declare-fun b!4456167 () Bool)

(assert (= bs!790835 (and b!4456167 b!4456154)))

(declare-fun lambda!160327 () Int)

(assert (=> bs!790835 (= (= lt!1647290 (+!1286 lt!1647290 (h!55748 l!12858))) (= lambda!160327 lambda!160323))))

(declare-fun bs!790836 () Bool)

(assert (= bs!790836 (and b!4456167 b!4456153)))

(assert (=> bs!790836 (= (= lt!1647290 (+!1286 lt!1647290 (h!55748 l!12858))) (= lambda!160327 lambda!160324))))

(assert (=> bs!790836 (= (= lt!1647290 lt!1647413) (= lambda!160327 lambda!160325))))

(declare-fun bs!790837 () Bool)

(assert (= bs!790837 (and b!4456167 d!1359305)))

(assert (=> bs!790837 (= (= lt!1647290 lt!1647406) (= lambda!160327 lambda!160326))))

(assert (=> b!4456167 true))

(declare-fun bs!790838 () Bool)

(declare-fun b!4456166 () Bool)

(assert (= bs!790838 (and b!4456166 b!4456167)))

(declare-fun lambda!160328 () Int)

(assert (=> bs!790838 (= lambda!160328 lambda!160327)))

(declare-fun bs!790839 () Bool)

(assert (= bs!790839 (and b!4456166 d!1359305)))

(assert (=> bs!790839 (= (= lt!1647290 lt!1647406) (= lambda!160328 lambda!160326))))

(declare-fun bs!790840 () Bool)

(assert (= bs!790840 (and b!4456166 b!4456154)))

(assert (=> bs!790840 (= (= lt!1647290 (+!1286 lt!1647290 (h!55748 l!12858))) (= lambda!160328 lambda!160323))))

(declare-fun bs!790841 () Bool)

(assert (= bs!790841 (and b!4456166 b!4456153)))

(assert (=> bs!790841 (= (= lt!1647290 (+!1286 lt!1647290 (h!55748 l!12858))) (= lambda!160328 lambda!160324))))

(assert (=> bs!790841 (= (= lt!1647290 lt!1647413) (= lambda!160328 lambda!160325))))

(assert (=> b!4456166 true))

(declare-fun lt!1647449 () ListMap!3067)

(declare-fun lambda!160329 () Int)

(assert (=> bs!790838 (= (= lt!1647449 lt!1647290) (= lambda!160329 lambda!160327))))

(assert (=> bs!790839 (= (= lt!1647449 lt!1647406) (= lambda!160329 lambda!160326))))

(assert (=> b!4456166 (= (= lt!1647449 lt!1647290) (= lambda!160329 lambda!160328))))

(assert (=> bs!790840 (= (= lt!1647449 (+!1286 lt!1647290 (h!55748 l!12858))) (= lambda!160329 lambda!160323))))

(assert (=> bs!790841 (= (= lt!1647449 (+!1286 lt!1647290 (h!55748 l!12858))) (= lambda!160329 lambda!160324))))

(assert (=> bs!790841 (= (= lt!1647449 lt!1647413) (= lambda!160329 lambda!160325))))

(assert (=> b!4456166 true))

(declare-fun bs!790842 () Bool)

(declare-fun d!1359323 () Bool)

(assert (= bs!790842 (and d!1359323 b!4456167)))

(declare-fun lambda!160330 () Int)

(declare-fun lt!1647442 () ListMap!3067)

(assert (=> bs!790842 (= (= lt!1647442 lt!1647290) (= lambda!160330 lambda!160327))))

(declare-fun bs!790843 () Bool)

(assert (= bs!790843 (and d!1359323 d!1359305)))

(assert (=> bs!790843 (= (= lt!1647442 lt!1647406) (= lambda!160330 lambda!160326))))

(declare-fun bs!790844 () Bool)

(assert (= bs!790844 (and d!1359323 b!4456166)))

(assert (=> bs!790844 (= (= lt!1647442 lt!1647290) (= lambda!160330 lambda!160328))))

(declare-fun bs!790845 () Bool)

(assert (= bs!790845 (and d!1359323 b!4456154)))

(assert (=> bs!790845 (= (= lt!1647442 (+!1286 lt!1647290 (h!55748 l!12858))) (= lambda!160330 lambda!160323))))

(declare-fun bs!790846 () Bool)

(assert (= bs!790846 (and d!1359323 b!4456153)))

(assert (=> bs!790846 (= (= lt!1647442 (+!1286 lt!1647290 (h!55748 l!12858))) (= lambda!160330 lambda!160324))))

(assert (=> bs!790844 (= (= lt!1647442 lt!1647449) (= lambda!160330 lambda!160329))))

(assert (=> bs!790846 (= (= lt!1647442 lt!1647413) (= lambda!160330 lambda!160325))))

(assert (=> d!1359323 true))

(declare-fun b!4456164 () Bool)

(declare-fun e!2774842 () Bool)

(assert (=> b!4456164 (= e!2774842 (invariantList!876 (toList!3829 lt!1647442)))))

(declare-fun c!758554 () Bool)

(declare-fun call!310119 () Bool)

(declare-fun bm!310112 () Bool)

(assert (=> bm!310112 (= call!310119 (forall!9834 (toList!3829 lt!1647290) (ite c!758554 lambda!160327 lambda!160329)))))

(declare-fun bm!310113 () Bool)

(declare-fun call!310117 () Bool)

(assert (=> bm!310113 (= call!310117 (forall!9834 (toList!3829 lt!1647290) (ite c!758554 lambda!160327 lambda!160329)))))

(declare-fun bm!310114 () Bool)

(declare-fun call!310118 () Unit!86031)

(assert (=> bm!310114 (= call!310118 (lemmaContainsAllItsOwnKeys!227 lt!1647290))))

(declare-fun b!4456165 () Bool)

(declare-fun e!2774843 () Bool)

(assert (=> b!4456165 (= e!2774843 call!310117)))

(assert (=> d!1359323 e!2774842))

(declare-fun res!1847298 () Bool)

(assert (=> d!1359323 (=> (not res!1847298) (not e!2774842))))

(assert (=> d!1359323 (= res!1847298 (forall!9834 (t!357077 l!12858) lambda!160330))))

(declare-fun e!2774841 () ListMap!3067)

(assert (=> d!1359323 (= lt!1647442 e!2774841)))

(assert (=> d!1359323 (= c!758554 (is-Nil!50003 (t!357077 l!12858)))))

(assert (=> d!1359323 (noDuplicateKeys!911 (t!357077 l!12858))))

(assert (=> d!1359323 (= (addToMapMapFromBucket!505 (t!357077 l!12858) lt!1647290) lt!1647442)))

(assert (=> b!4456166 (= e!2774841 lt!1647449)))

(declare-fun lt!1647447 () ListMap!3067)

(assert (=> b!4456166 (= lt!1647447 (+!1286 lt!1647290 (h!55748 (t!357077 l!12858))))))

(assert (=> b!4456166 (= lt!1647449 (addToMapMapFromBucket!505 (t!357077 (t!357077 l!12858)) (+!1286 lt!1647290 (h!55748 (t!357077 l!12858)))))))

(declare-fun lt!1647445 () Unit!86031)

(assert (=> b!4456166 (= lt!1647445 call!310118)))

(assert (=> b!4456166 (forall!9834 (toList!3829 lt!1647290) lambda!160328)))

(declare-fun lt!1647444 () Unit!86031)

(assert (=> b!4456166 (= lt!1647444 lt!1647445)))

(assert (=> b!4456166 (forall!9834 (toList!3829 lt!1647447) lambda!160329)))

(declare-fun lt!1647440 () Unit!86031)

(declare-fun Unit!86046 () Unit!86031)

(assert (=> b!4456166 (= lt!1647440 Unit!86046)))

(assert (=> b!4456166 (forall!9834 (t!357077 (t!357077 l!12858)) lambda!160329)))

(declare-fun lt!1647451 () Unit!86031)

(declare-fun Unit!86047 () Unit!86031)

(assert (=> b!4456166 (= lt!1647451 Unit!86047)))

(declare-fun lt!1647433 () Unit!86031)

(declare-fun Unit!86048 () Unit!86031)

(assert (=> b!4456166 (= lt!1647433 Unit!86048)))

(declare-fun lt!1647432 () Unit!86031)

(assert (=> b!4456166 (= lt!1647432 (forallContained!2177 (toList!3829 lt!1647447) lambda!160329 (h!55748 (t!357077 l!12858))))))

(assert (=> b!4456166 (contains!12545 lt!1647447 (_1!28331 (h!55748 (t!357077 l!12858))))))

(declare-fun lt!1647435 () Unit!86031)

(declare-fun Unit!86049 () Unit!86031)

(assert (=> b!4456166 (= lt!1647435 Unit!86049)))

(assert (=> b!4456166 (contains!12545 lt!1647449 (_1!28331 (h!55748 (t!357077 l!12858))))))

(declare-fun lt!1647448 () Unit!86031)

(declare-fun Unit!86050 () Unit!86031)

(assert (=> b!4456166 (= lt!1647448 Unit!86050)))

(assert (=> b!4456166 (forall!9834 (t!357077 l!12858) lambda!160329)))

(declare-fun lt!1647441 () Unit!86031)

(declare-fun Unit!86051 () Unit!86031)

(assert (=> b!4456166 (= lt!1647441 Unit!86051)))

(assert (=> b!4456166 (forall!9834 (toList!3829 lt!1647447) lambda!160329)))

(declare-fun lt!1647431 () Unit!86031)

(declare-fun Unit!86052 () Unit!86031)

(assert (=> b!4456166 (= lt!1647431 Unit!86052)))

(declare-fun lt!1647436 () Unit!86031)

(declare-fun Unit!86053 () Unit!86031)

(assert (=> b!4456166 (= lt!1647436 Unit!86053)))

(declare-fun lt!1647438 () Unit!86031)

(assert (=> b!4456166 (= lt!1647438 (addForallContainsKeyThenBeforeAdding!226 lt!1647290 lt!1647449 (_1!28331 (h!55748 (t!357077 l!12858))) (_2!28331 (h!55748 (t!357077 l!12858)))))))

(assert (=> b!4456166 call!310119))

(declare-fun lt!1647437 () Unit!86031)

(assert (=> b!4456166 (= lt!1647437 lt!1647438)))

(assert (=> b!4456166 (forall!9834 (toList!3829 lt!1647290) lambda!160329)))

(declare-fun lt!1647446 () Unit!86031)

(declare-fun Unit!86054 () Unit!86031)

(assert (=> b!4456166 (= lt!1647446 Unit!86054)))

(declare-fun res!1847297 () Bool)

(assert (=> b!4456166 (= res!1847297 (forall!9834 (t!357077 l!12858) lambda!160329))))

(assert (=> b!4456166 (=> (not res!1847297) (not e!2774843))))

(assert (=> b!4456166 e!2774843))

(declare-fun lt!1647434 () Unit!86031)

(declare-fun Unit!86055 () Unit!86031)

(assert (=> b!4456166 (= lt!1647434 Unit!86055)))

(assert (=> b!4456167 (= e!2774841 lt!1647290)))

(declare-fun lt!1647450 () Unit!86031)

(assert (=> b!4456167 (= lt!1647450 call!310118)))

(assert (=> b!4456167 call!310117))

(declare-fun lt!1647439 () Unit!86031)

(assert (=> b!4456167 (= lt!1647439 lt!1647450)))

(assert (=> b!4456167 call!310119))

(declare-fun lt!1647443 () Unit!86031)

(declare-fun Unit!86056 () Unit!86031)

(assert (=> b!4456167 (= lt!1647443 Unit!86056)))

(declare-fun b!4456168 () Bool)

(declare-fun res!1847296 () Bool)

(assert (=> b!4456168 (=> (not res!1847296) (not e!2774842))))

(assert (=> b!4456168 (= res!1847296 (forall!9834 (toList!3829 lt!1647290) lambda!160330))))

(assert (= (and d!1359323 c!758554) b!4456167))

(assert (= (and d!1359323 (not c!758554)) b!4456166))

(assert (= (and b!4456166 res!1847297) b!4456165))

(assert (= (or b!4456167 b!4456166) bm!310114))

(assert (= (or b!4456167 b!4456165) bm!310113))

(assert (= (or b!4456167 b!4456166) bm!310112))

(assert (= (and d!1359323 res!1847298) b!4456168))

(assert (= (and b!4456168 res!1847296) b!4456164))

(declare-fun m!5157807 () Bool)

(assert (=> bm!310113 m!5157807))

(declare-fun m!5157809 () Bool)

(assert (=> b!4456168 m!5157809))

(declare-fun m!5157811 () Bool)

(assert (=> bm!310114 m!5157811))

(declare-fun m!5157813 () Bool)

(assert (=> b!4456166 m!5157813))

(declare-fun m!5157815 () Bool)

(assert (=> b!4456166 m!5157815))

(declare-fun m!5157817 () Bool)

(assert (=> b!4456166 m!5157817))

(assert (=> b!4456166 m!5157817))

(declare-fun m!5157819 () Bool)

(assert (=> b!4456166 m!5157819))

(declare-fun m!5157821 () Bool)

(assert (=> b!4456166 m!5157821))

(declare-fun m!5157823 () Bool)

(assert (=> b!4456166 m!5157823))

(declare-fun m!5157825 () Bool)

(assert (=> b!4456166 m!5157825))

(assert (=> b!4456166 m!5157825))

(declare-fun m!5157827 () Bool)

(assert (=> b!4456166 m!5157827))

(declare-fun m!5157829 () Bool)

(assert (=> b!4456166 m!5157829))

(declare-fun m!5157831 () Bool)

(assert (=> b!4456166 m!5157831))

(assert (=> b!4456166 m!5157829))

(declare-fun m!5157833 () Bool)

(assert (=> b!4456166 m!5157833))

(declare-fun m!5157835 () Bool)

(assert (=> b!4456164 m!5157835))

(declare-fun m!5157837 () Bool)

(assert (=> d!1359323 m!5157837))

(assert (=> d!1359323 m!5157631))

(assert (=> bm!310112 m!5157807))

(assert (=> b!4456055 d!1359323))

(declare-fun b!4456198 () Bool)

(assert (=> b!4456198 false))

(declare-fun lt!1647485 () Unit!86031)

(declare-fun lt!1647482 () Unit!86031)

(assert (=> b!4456198 (= lt!1647485 lt!1647482)))

(declare-fun containsKey!1324 (List!50127 K!11383) Bool)

(assert (=> b!4456198 (containsKey!1324 (toList!3829 lt!1647291) key!4412)))

(declare-fun lemmaInGetKeysListThenContainsKey!320 (List!50127 K!11383) Unit!86031)

(assert (=> b!4456198 (= lt!1647482 (lemmaInGetKeysListThenContainsKey!320 (toList!3829 lt!1647291) key!4412))))

(declare-fun e!2774867 () Unit!86031)

(declare-fun Unit!86057 () Unit!86031)

(assert (=> b!4456198 (= e!2774867 Unit!86057)))

(declare-fun b!4456199 () Bool)

(declare-fun e!2774869 () Bool)

(declare-datatypes ((List!50131 0))(
  ( (Nil!50007) (Cons!50007 (h!55752 K!11383) (t!357081 List!50131)) )
))
(declare-fun contains!12548 (List!50131 K!11383) Bool)

(declare-fun keys!17183 (ListMap!3067) List!50131)

(assert (=> b!4456199 (= e!2774869 (not (contains!12548 (keys!17183 lt!1647291) key!4412)))))

(declare-fun b!4456200 () Bool)

(declare-fun e!2774868 () Bool)

(declare-fun e!2774864 () Bool)

(assert (=> b!4456200 (= e!2774868 e!2774864)))

(declare-fun res!1847311 () Bool)

(assert (=> b!4456200 (=> (not res!1847311) (not e!2774864))))

(declare-fun isDefined!8142 (Option!10854) Bool)

(assert (=> b!4456200 (= res!1847311 (isDefined!8142 (getValueByKey!840 (toList!3829 lt!1647291) key!4412)))))

(declare-fun b!4456202 () Bool)

(declare-fun e!2774866 () List!50131)

(assert (=> b!4456202 (= e!2774866 (keys!17183 lt!1647291))))

(declare-fun b!4456203 () Bool)

(declare-fun getKeysList!322 (List!50127) List!50131)

(assert (=> b!4456203 (= e!2774866 (getKeysList!322 (toList!3829 lt!1647291)))))

(declare-fun b!4456204 () Bool)

(declare-fun e!2774865 () Unit!86031)

(assert (=> b!4456204 (= e!2774865 e!2774867)))

(declare-fun c!758564 () Bool)

(declare-fun call!310123 () Bool)

(assert (=> b!4456204 (= c!758564 call!310123)))

(declare-fun bm!310118 () Bool)

(assert (=> bm!310118 (= call!310123 (contains!12548 e!2774866 key!4412))))

(declare-fun c!758565 () Bool)

(declare-fun c!758566 () Bool)

(assert (=> bm!310118 (= c!758565 c!758566)))

(declare-fun b!4456205 () Bool)

(declare-fun lt!1647483 () Unit!86031)

(assert (=> b!4456205 (= e!2774865 lt!1647483)))

(declare-fun lt!1647484 () Unit!86031)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!745 (List!50127 K!11383) Unit!86031)

(assert (=> b!4456205 (= lt!1647484 (lemmaContainsKeyImpliesGetValueByKeyDefined!745 (toList!3829 lt!1647291) key!4412))))

(assert (=> b!4456205 (isDefined!8142 (getValueByKey!840 (toList!3829 lt!1647291) key!4412))))

(declare-fun lt!1647480 () Unit!86031)

(assert (=> b!4456205 (= lt!1647480 lt!1647484)))

(declare-fun lemmaInListThenGetKeysListContains!318 (List!50127 K!11383) Unit!86031)

(assert (=> b!4456205 (= lt!1647483 (lemmaInListThenGetKeysListContains!318 (toList!3829 lt!1647291) key!4412))))

(assert (=> b!4456205 call!310123))

(declare-fun b!4456206 () Bool)

(declare-fun Unit!86058 () Unit!86031)

(assert (=> b!4456206 (= e!2774867 Unit!86058)))

(declare-fun b!4456201 () Bool)

(assert (=> b!4456201 (= e!2774864 (contains!12548 (keys!17183 lt!1647291) key!4412))))

(declare-fun d!1359327 () Bool)

(assert (=> d!1359327 e!2774868))

(declare-fun res!1847310 () Bool)

(assert (=> d!1359327 (=> res!1847310 e!2774868)))

(assert (=> d!1359327 (= res!1847310 e!2774869)))

(declare-fun res!1847312 () Bool)

(assert (=> d!1359327 (=> (not res!1847312) (not e!2774869))))

(declare-fun lt!1647481 () Bool)

(assert (=> d!1359327 (= res!1847312 (not lt!1647481))))

(declare-fun lt!1647479 () Bool)

(assert (=> d!1359327 (= lt!1647481 lt!1647479)))

(declare-fun lt!1647486 () Unit!86031)

(assert (=> d!1359327 (= lt!1647486 e!2774865)))

(assert (=> d!1359327 (= c!758566 lt!1647479)))

(assert (=> d!1359327 (= lt!1647479 (containsKey!1324 (toList!3829 lt!1647291) key!4412))))

(assert (=> d!1359327 (= (contains!12545 lt!1647291 key!4412) lt!1647481)))

(assert (= (and d!1359327 c!758566) b!4456205))

(assert (= (and d!1359327 (not c!758566)) b!4456204))

(assert (= (and b!4456204 c!758564) b!4456198))

(assert (= (and b!4456204 (not c!758564)) b!4456206))

(assert (= (or b!4456205 b!4456204) bm!310118))

(assert (= (and bm!310118 c!758565) b!4456203))

(assert (= (and bm!310118 (not c!758565)) b!4456202))

(assert (= (and d!1359327 res!1847312) b!4456199))

(assert (= (and d!1359327 (not res!1847310)) b!4456200))

(assert (= (and b!4456200 res!1847311) b!4456201))

(declare-fun m!5157873 () Bool)

(assert (=> b!4456199 m!5157873))

(assert (=> b!4456199 m!5157873))

(declare-fun m!5157875 () Bool)

(assert (=> b!4456199 m!5157875))

(assert (=> b!4456202 m!5157873))

(declare-fun m!5157877 () Bool)

(assert (=> b!4456200 m!5157877))

(assert (=> b!4456200 m!5157877))

(declare-fun m!5157879 () Bool)

(assert (=> b!4456200 m!5157879))

(assert (=> b!4456201 m!5157873))

(assert (=> b!4456201 m!5157873))

(assert (=> b!4456201 m!5157875))

(declare-fun m!5157881 () Bool)

(assert (=> b!4456205 m!5157881))

(assert (=> b!4456205 m!5157877))

(assert (=> b!4456205 m!5157877))

(assert (=> b!4456205 m!5157879))

(declare-fun m!5157883 () Bool)

(assert (=> b!4456205 m!5157883))

(declare-fun m!5157885 () Bool)

(assert (=> bm!310118 m!5157885))

(declare-fun m!5157887 () Bool)

(assert (=> b!4456203 m!5157887))

(declare-fun m!5157889 () Bool)

(assert (=> b!4456198 m!5157889))

(declare-fun m!5157891 () Bool)

(assert (=> b!4456198 m!5157891))

(assert (=> d!1359327 m!5157889))

(assert (=> b!4456055 d!1359327))

(declare-fun d!1359335 () Bool)

(declare-fun res!1847317 () Bool)

(declare-fun e!2774874 () Bool)

(assert (=> d!1359335 (=> res!1847317 e!2774874)))

(assert (=> d!1359335 (= res!1847317 (is-Nil!50004 (toList!3830 lm!1853)))))

(assert (=> d!1359335 (= (forall!9832 (toList!3830 lm!1853) lambda!160282) e!2774874)))

(declare-fun b!4456211 () Bool)

(declare-fun e!2774875 () Bool)

(assert (=> b!4456211 (= e!2774874 e!2774875)))

(declare-fun res!1847318 () Bool)

(assert (=> b!4456211 (=> (not res!1847318) (not e!2774875))))

(declare-fun dynLambda!20968 (Int tuple2!50076) Bool)

(assert (=> b!4456211 (= res!1847318 (dynLambda!20968 lambda!160282 (h!55749 (toList!3830 lm!1853))))))

(declare-fun b!4456212 () Bool)

(assert (=> b!4456212 (= e!2774875 (forall!9832 (t!357078 (toList!3830 lm!1853)) lambda!160282))))

(assert (= (and d!1359335 (not res!1847317)) b!4456211))

(assert (= (and b!4456211 res!1847318) b!4456212))

(declare-fun b_lambda!147663 () Bool)

(assert (=> (not b_lambda!147663) (not b!4456211)))

(declare-fun m!5157893 () Bool)

(assert (=> b!4456211 m!5157893))

(declare-fun m!5157895 () Bool)

(assert (=> b!4456212 m!5157895))

(assert (=> start!436678 d!1359335))

(declare-fun d!1359337 () Bool)

(declare-fun isStrictlySorted!305 (List!50128) Bool)

(assert (=> d!1359337 (= (inv!65570 lm!1853) (isStrictlySorted!305 (toList!3830 lm!1853)))))

(declare-fun bs!790848 () Bool)

(assert (= bs!790848 d!1359337))

(declare-fun m!5157897 () Bool)

(assert (=> bs!790848 m!5157897))

(assert (=> start!436678 d!1359337))

(declare-fun b!4456213 () Bool)

(assert (=> b!4456213 false))

(declare-fun lt!1647493 () Unit!86031)

(declare-fun lt!1647490 () Unit!86031)

(assert (=> b!4456213 (= lt!1647493 lt!1647490)))

(assert (=> b!4456213 (containsKey!1324 (toList!3829 lt!1647290) key!4412)))

(assert (=> b!4456213 (= lt!1647490 (lemmaInGetKeysListThenContainsKey!320 (toList!3829 lt!1647290) key!4412))))

(declare-fun e!2774879 () Unit!86031)

(declare-fun Unit!86059 () Unit!86031)

(assert (=> b!4456213 (= e!2774879 Unit!86059)))

(declare-fun b!4456214 () Bool)

(declare-fun e!2774881 () Bool)

(assert (=> b!4456214 (= e!2774881 (not (contains!12548 (keys!17183 lt!1647290) key!4412)))))

(declare-fun b!4456215 () Bool)

(declare-fun e!2774880 () Bool)

(declare-fun e!2774876 () Bool)

(assert (=> b!4456215 (= e!2774880 e!2774876)))

(declare-fun res!1847320 () Bool)

(assert (=> b!4456215 (=> (not res!1847320) (not e!2774876))))

(assert (=> b!4456215 (= res!1847320 (isDefined!8142 (getValueByKey!840 (toList!3829 lt!1647290) key!4412)))))

(declare-fun b!4456217 () Bool)

(declare-fun e!2774878 () List!50131)

(assert (=> b!4456217 (= e!2774878 (keys!17183 lt!1647290))))

(declare-fun b!4456218 () Bool)

(assert (=> b!4456218 (= e!2774878 (getKeysList!322 (toList!3829 lt!1647290)))))

(declare-fun b!4456219 () Bool)

(declare-fun e!2774877 () Unit!86031)

(assert (=> b!4456219 (= e!2774877 e!2774879)))

(declare-fun c!758567 () Bool)

(declare-fun call!310124 () Bool)

(assert (=> b!4456219 (= c!758567 call!310124)))

(declare-fun bm!310119 () Bool)

(assert (=> bm!310119 (= call!310124 (contains!12548 e!2774878 key!4412))))

(declare-fun c!758568 () Bool)

(declare-fun c!758569 () Bool)

(assert (=> bm!310119 (= c!758568 c!758569)))

(declare-fun b!4456220 () Bool)

(declare-fun lt!1647491 () Unit!86031)

(assert (=> b!4456220 (= e!2774877 lt!1647491)))

(declare-fun lt!1647492 () Unit!86031)

(assert (=> b!4456220 (= lt!1647492 (lemmaContainsKeyImpliesGetValueByKeyDefined!745 (toList!3829 lt!1647290) key!4412))))

(assert (=> b!4456220 (isDefined!8142 (getValueByKey!840 (toList!3829 lt!1647290) key!4412))))

(declare-fun lt!1647488 () Unit!86031)

(assert (=> b!4456220 (= lt!1647488 lt!1647492)))

(assert (=> b!4456220 (= lt!1647491 (lemmaInListThenGetKeysListContains!318 (toList!3829 lt!1647290) key!4412))))

(assert (=> b!4456220 call!310124))

(declare-fun b!4456221 () Bool)

(declare-fun Unit!86060 () Unit!86031)

(assert (=> b!4456221 (= e!2774879 Unit!86060)))

(declare-fun b!4456216 () Bool)

(assert (=> b!4456216 (= e!2774876 (contains!12548 (keys!17183 lt!1647290) key!4412))))

(declare-fun d!1359339 () Bool)

(assert (=> d!1359339 e!2774880))

(declare-fun res!1847319 () Bool)

(assert (=> d!1359339 (=> res!1847319 e!2774880)))

(assert (=> d!1359339 (= res!1847319 e!2774881)))

(declare-fun res!1847321 () Bool)

(assert (=> d!1359339 (=> (not res!1847321) (not e!2774881))))

(declare-fun lt!1647489 () Bool)

(assert (=> d!1359339 (= res!1847321 (not lt!1647489))))

(declare-fun lt!1647487 () Bool)

(assert (=> d!1359339 (= lt!1647489 lt!1647487)))

(declare-fun lt!1647494 () Unit!86031)

(assert (=> d!1359339 (= lt!1647494 e!2774877)))

(assert (=> d!1359339 (= c!758569 lt!1647487)))

(assert (=> d!1359339 (= lt!1647487 (containsKey!1324 (toList!3829 lt!1647290) key!4412))))

(assert (=> d!1359339 (= (contains!12545 lt!1647290 key!4412) lt!1647489)))

(assert (= (and d!1359339 c!758569) b!4456220))

(assert (= (and d!1359339 (not c!758569)) b!4456219))

(assert (= (and b!4456219 c!758567) b!4456213))

(assert (= (and b!4456219 (not c!758567)) b!4456221))

(assert (= (or b!4456220 b!4456219) bm!310119))

(assert (= (and bm!310119 c!758568) b!4456218))

(assert (= (and bm!310119 (not c!758568)) b!4456217))

(assert (= (and d!1359339 res!1847321) b!4456214))

(assert (= (and d!1359339 (not res!1847319)) b!4456215))

(assert (= (and b!4456215 res!1847320) b!4456216))

(declare-fun m!5157899 () Bool)

(assert (=> b!4456214 m!5157899))

(assert (=> b!4456214 m!5157899))

(declare-fun m!5157901 () Bool)

(assert (=> b!4456214 m!5157901))

(assert (=> b!4456217 m!5157899))

(declare-fun m!5157903 () Bool)

(assert (=> b!4456215 m!5157903))

(assert (=> b!4456215 m!5157903))

(declare-fun m!5157905 () Bool)

(assert (=> b!4456215 m!5157905))

(assert (=> b!4456216 m!5157899))

(assert (=> b!4456216 m!5157899))

(assert (=> b!4456216 m!5157901))

(declare-fun m!5157907 () Bool)

(assert (=> b!4456220 m!5157907))

(assert (=> b!4456220 m!5157903))

(assert (=> b!4456220 m!5157903))

(assert (=> b!4456220 m!5157905))

(declare-fun m!5157909 () Bool)

(assert (=> b!4456220 m!5157909))

(declare-fun m!5157911 () Bool)

(assert (=> bm!310119 m!5157911))

(declare-fun m!5157913 () Bool)

(assert (=> b!4456218 m!5157913))

(declare-fun m!5157915 () Bool)

(assert (=> b!4456213 m!5157915))

(declare-fun m!5157917 () Bool)

(assert (=> b!4456213 m!5157917))

(assert (=> d!1359339 m!5157915))

(assert (=> b!4456050 d!1359339))

(declare-fun bs!790849 () Bool)

(declare-fun d!1359341 () Bool)

(assert (= bs!790849 (and d!1359341 start!436678)))

(declare-fun lambda!160333 () Int)

(assert (=> bs!790849 (= lambda!160333 lambda!160282)))

(declare-fun bs!790850 () Bool)

(assert (= bs!790850 (and d!1359341 d!1359299)))

(assert (=> bs!790850 (= lambda!160333 lambda!160288)))

(declare-fun lt!1647497 () ListMap!3067)

(assert (=> d!1359341 (invariantList!876 (toList!3829 lt!1647497))))

(declare-fun e!2774884 () ListMap!3067)

(assert (=> d!1359341 (= lt!1647497 e!2774884)))

(declare-fun c!758572 () Bool)

(assert (=> d!1359341 (= c!758572 (is-Cons!50004 (toList!3830 lm!1853)))))

(assert (=> d!1359341 (forall!9832 (toList!3830 lm!1853) lambda!160333)))

(assert (=> d!1359341 (= (extractMap!979 (toList!3830 lm!1853)) lt!1647497)))

(declare-fun b!4456226 () Bool)

(assert (=> b!4456226 (= e!2774884 (addToMapMapFromBucket!505 (_2!28332 (h!55749 (toList!3830 lm!1853))) (extractMap!979 (t!357078 (toList!3830 lm!1853)))))))

(declare-fun b!4456227 () Bool)

(assert (=> b!4456227 (= e!2774884 (ListMap!3068 Nil!50003))))

(assert (= (and d!1359341 c!758572) b!4456226))

(assert (= (and d!1359341 (not c!758572)) b!4456227))

(declare-fun m!5157919 () Bool)

(assert (=> d!1359341 m!5157919))

(declare-fun m!5157921 () Bool)

(assert (=> d!1359341 m!5157921))

(declare-fun m!5157923 () Bool)

(assert (=> b!4456226 m!5157923))

(assert (=> b!4456226 m!5157923))

(declare-fun m!5157925 () Bool)

(assert (=> b!4456226 m!5157925))

(assert (=> b!4456050 d!1359341))

(declare-fun bs!790851 () Bool)

(declare-fun d!1359343 () Bool)

(assert (= bs!790851 (and d!1359343 start!436678)))

(declare-fun lambda!160336 () Int)

(assert (=> bs!790851 (not (= lambda!160336 lambda!160282))))

(declare-fun bs!790852 () Bool)

(assert (= bs!790852 (and d!1359343 d!1359299)))

(assert (=> bs!790852 (not (= lambda!160336 lambda!160288))))

(declare-fun bs!790853 () Bool)

(assert (= bs!790853 (and d!1359343 d!1359341)))

(assert (=> bs!790853 (not (= lambda!160336 lambda!160333))))

(assert (=> d!1359343 true))

(assert (=> d!1359343 (= (allKeysSameHashInMap!1030 lm!1853 hashF!1313) (forall!9832 (toList!3830 lm!1853) lambda!160336))))

(declare-fun bs!790854 () Bool)

(assert (= bs!790854 d!1359343))

(declare-fun m!5157927 () Bool)

(assert (=> bs!790854 m!5157927))

(assert (=> b!4456051 d!1359343))

(declare-fun b!4456234 () Bool)

(declare-fun e!2774887 () Bool)

(declare-fun tp!1335006 () Bool)

(declare-fun tp!1335007 () Bool)

(assert (=> b!4456234 (= e!2774887 (and tp!1335006 tp!1335007))))

(assert (=> b!4456053 (= tp!1334995 e!2774887)))

(assert (= (and b!4456053 (is-Cons!50004 (toList!3830 lm!1853))) b!4456234))

(declare-fun e!2774890 () Bool)

(declare-fun tp!1335010 () Bool)

(declare-fun b!4456239 () Bool)

(assert (=> b!4456239 (= e!2774890 (and tp_is_empty!26865 tp_is_empty!26867 tp!1335010))))

(assert (=> b!4456052 (= tp!1334994 e!2774890)))

(assert (= (and b!4456052 (is-Cons!50003 (t!357077 l!12858))) b!4456239))

(declare-fun b_lambda!147665 () Bool)

(assert (= b_lambda!147663 (or start!436678 b_lambda!147665)))

(declare-fun bs!790855 () Bool)

(declare-fun d!1359345 () Bool)

(assert (= bs!790855 (and d!1359345 start!436678)))

(assert (=> bs!790855 (= (dynLambda!20968 lambda!160282 (h!55749 (toList!3830 lm!1853))) (noDuplicateKeys!911 (_2!28332 (h!55749 (toList!3830 lm!1853)))))))

(declare-fun m!5157929 () Bool)

(assert (=> bs!790855 m!5157929))

(assert (=> b!4456211 d!1359345))

(push 1)

(assert tp_is_empty!26865)

(assert (not bm!310111))

(assert (not b!4456217))

(assert (not b_lambda!147665))

(assert (not d!1359339))

(assert (not d!1359337))

(assert (not b!4456198))

(assert (not b!4456153))

(assert tp_is_empty!26867)

(assert (not b!4456239))

(assert (not b!4456090))

(assert (not d!1359323))

(assert (not b!4456093))

(assert (not b!4456218))

(assert (not b!4456084))

(assert (not d!1359343))

(assert (not b!4456214))

(assert (not b!4456200))

(assert (not b!4456155))

(assert (not b!4456085))

(assert (not b!4456151))

(assert (not b!4456205))

(assert (not bm!310114))

(assert (not b!4456216))

(assert (not b!4456226))

(assert (not bs!790855))

(assert (not bm!310112))

(assert (not d!1359327))

(assert (not d!1359303))

(assert (not d!1359321))

(assert (not b!4456166))

(assert (not b!4456234))

(assert (not bm!310110))

(assert (not b!4456092))

(assert (not b!4456091))

(assert (not b!4456215))

(assert (not b!4456202))

(assert (not b!4456203))

(assert (not d!1359297))

(assert (not b!4456220))

(assert (not bm!310109))

(assert (not b!4456164))

(assert (not d!1359299))

(assert (not d!1359319))

(assert (not b!4456083))

(assert (not b!4456213))

(assert (not bm!310119))

(assert (not d!1359305))

(assert (not b!4456212))

(assert (not b!4456082))

(assert (not d!1359341))

(assert (not b!4456168))

(assert (not b!4456201))

(assert (not bm!310113))

(assert (not bm!310118))

(assert (not b!4456199))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

