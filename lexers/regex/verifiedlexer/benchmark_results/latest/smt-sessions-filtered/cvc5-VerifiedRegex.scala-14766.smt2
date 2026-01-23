; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!759276 () Bool)

(assert start!759276)

(declare-fun b!8058161 () Bool)

(assert (=> b!8058161 true))

(declare-fun bs!1973402 () Bool)

(declare-fun b!8058162 () Bool)

(assert (= bs!1973402 (and b!8058162 b!8058161)))

(declare-fun lambda!474952 () Int)

(declare-datatypes ((V!23215 0))(
  ( (V!23216 (val!33041 Int)) )
))
(declare-datatypes ((K!22961 0))(
  ( (K!22962 (val!33042 Int)) )
))
(declare-datatypes ((tuple2!71006 0))(
  ( (tuple2!71007 (_1!38806 K!22961) (_2!38806 V!23215)) )
))
(declare-datatypes ((List!75754 0))(
  ( (Nil!75628) (Cons!75628 (h!82076 tuple2!71006) (t!391526 List!75754)) )
))
(declare-datatypes ((ListMap!7377 0))(
  ( (ListMap!7378 (toList!11963 List!75754)) )
))
(declare-fun acc!836 () ListMap!7377)

(declare-fun lambda!474951 () Int)

(declare-fun lt!2731874 () ListMap!7377)

(assert (=> bs!1973402 (= (= lt!2731874 acc!836) (= lambda!474952 lambda!474951))))

(assert (=> b!8058162 true))

(declare-fun lambda!474953 () Int)

(assert (=> b!8058161 (= (= lt!2731874 acc!836) (= lambda!474953 lambda!474951))))

(assert (=> bs!1973402 (= lambda!474953 lambda!474952)))

(assert (=> b!8058161 true))

(declare-fun res!3187764 () Bool)

(declare-fun e!4748793 () Bool)

(assert (=> start!759276 (=> (not res!3187764) (not e!4748793))))

(declare-fun l!10976 () List!75754)

(declare-fun noDuplicateKeys!2749 (List!75754) Bool)

(assert (=> start!759276 (= res!3187764 (noDuplicateKeys!2749 l!10976))))

(assert (=> start!759276 e!4748793))

(declare-fun e!4748791 () Bool)

(assert (=> start!759276 e!4748791))

(declare-fun e!4748792 () Bool)

(declare-fun inv!97435 (ListMap!7377) Bool)

(assert (=> start!759276 (and (inv!97435 acc!836) e!4748792)))

(declare-fun b!8058156 () Bool)

(declare-fun e!4748789 () Bool)

(declare-fun contains!21301 (ListMap!7377 K!22961) Bool)

(assert (=> b!8058156 (= e!4748789 (contains!21301 lt!2731874 (_1!38806 (h!82076 l!10976))))))

(declare-fun b!8058157 () Bool)

(declare-fun res!3187767 () Bool)

(declare-fun e!4748790 () Bool)

(assert (=> b!8058157 (=> (not res!3187767) (not e!4748790))))

(declare-fun forall!18543 (List!75754 Int) Bool)

(assert (=> b!8058157 (= res!3187767 (forall!18543 (t!391526 l!10976) lambda!474952))))

(declare-fun b!8058158 () Bool)

(assert (=> b!8058158 (= e!4748790 (= l!10976 (Cons!75628 (h!82076 l!10976) (t!391526 l!10976))))))

(declare-fun b!8058159 () Bool)

(declare-fun tp!2414223 () Bool)

(assert (=> b!8058159 (= e!4748792 tp!2414223)))

(declare-fun b!8058160 () Bool)

(declare-fun res!3187765 () Bool)

(assert (=> b!8058160 (=> (not res!3187765) (not e!4748793))))

(assert (=> b!8058160 (= res!3187765 (not (is-Nil!75628 l!10976)))))

(assert (=> b!8058161 (= e!4748793 (not (forall!18543 l!10976 lambda!474953)))))

(assert (=> b!8058161 e!4748789))

(declare-fun res!3187766 () Bool)

(assert (=> b!8058161 (=> (not res!3187766) (not e!4748789))))

(declare-fun lt!2731872 () ListMap!7377)

(assert (=> b!8058161 (= res!3187766 (contains!21301 lt!2731872 (_1!38806 (h!82076 l!10976))))))

(declare-datatypes ((Unit!172672 0))(
  ( (Unit!172673) )
))
(declare-fun lt!2731875 () Unit!172672)

(declare-fun forallContained!4688 (List!75754 Int tuple2!71006) Unit!172672)

(assert (=> b!8058161 (= lt!2731875 (forallContained!4688 (toList!11963 lt!2731872) lambda!474953 (h!82076 l!10976)))))

(assert (=> b!8058161 e!4748790))

(declare-fun res!3187762 () Bool)

(assert (=> b!8058161 (=> (not res!3187762) (not e!4748790))))

(assert (=> b!8058161 (= res!3187762 (forall!18543 (toList!11963 acc!836) lambda!474951))))

(declare-fun lt!2731873 () Unit!172672)

(declare-fun lemmaContainsAllItsOwnKeys!1124 (ListMap!7377) Unit!172672)

(assert (=> b!8058161 (= lt!2731873 (lemmaContainsAllItsOwnKeys!1124 acc!836))))

(declare-fun addToMapMapFromBucket!2024 (List!75754 ListMap!7377) ListMap!7377)

(assert (=> b!8058161 (= lt!2731874 (addToMapMapFromBucket!2024 (t!391526 l!10976) lt!2731872))))

(declare-fun +!2710 (ListMap!7377 tuple2!71006) ListMap!7377)

(assert (=> b!8058161 (= lt!2731872 (+!2710 acc!836 (h!82076 l!10976)))))

(declare-fun res!3187763 () Bool)

(assert (=> b!8058162 (=> (not res!3187763) (not e!4748790))))

(assert (=> b!8058162 (= res!3187763 (forall!18543 (toList!11963 lt!2731872) lambda!474952))))

(declare-fun tp!2414222 () Bool)

(declare-fun tp_is_empty!55137 () Bool)

(declare-fun b!8058163 () Bool)

(declare-fun tp_is_empty!55135 () Bool)

(assert (=> b!8058163 (= e!4748791 (and tp_is_empty!55135 tp_is_empty!55137 tp!2414222))))

(assert (= (and start!759276 res!3187764) b!8058160))

(assert (= (and b!8058160 res!3187765) b!8058161))

(assert (= (and b!8058161 res!3187762) b!8058162))

(assert (= (and b!8058162 res!3187763) b!8058157))

(assert (= (and b!8058157 res!3187767) b!8058158))

(assert (= (and b!8058161 res!3187766) b!8058156))

(assert (= (and start!759276 (is-Cons!75628 l!10976)) b!8058163))

(assert (= start!759276 b!8058159))

(declare-fun m!8411366 () Bool)

(assert (=> start!759276 m!8411366))

(declare-fun m!8411368 () Bool)

(assert (=> start!759276 m!8411368))

(declare-fun m!8411370 () Bool)

(assert (=> b!8058162 m!8411370))

(declare-fun m!8411372 () Bool)

(assert (=> b!8058157 m!8411372))

(declare-fun m!8411374 () Bool)

(assert (=> b!8058161 m!8411374))

(declare-fun m!8411376 () Bool)

(assert (=> b!8058161 m!8411376))

(declare-fun m!8411378 () Bool)

(assert (=> b!8058161 m!8411378))

(declare-fun m!8411380 () Bool)

(assert (=> b!8058161 m!8411380))

(declare-fun m!8411382 () Bool)

(assert (=> b!8058161 m!8411382))

(declare-fun m!8411384 () Bool)

(assert (=> b!8058161 m!8411384))

(declare-fun m!8411386 () Bool)

(assert (=> b!8058161 m!8411386))

(declare-fun m!8411388 () Bool)

(assert (=> b!8058156 m!8411388))

(push 1)

(assert (not b!8058157))

(assert (not b!8058156))

(assert (not b!8058163))

(assert tp_is_empty!55137)

(assert (not b!8058162))

(assert (not start!759276))

(assert (not b!8058161))

(assert (not b!8058159))

(assert tp_is_empty!55135)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2399071 () Bool)

(declare-fun res!3187790 () Bool)

(declare-fun e!4748813 () Bool)

(assert (=> d!2399071 (=> res!3187790 e!4748813)))

(assert (=> d!2399071 (= res!3187790 (not (is-Cons!75628 l!10976)))))

(assert (=> d!2399071 (= (noDuplicateKeys!2749 l!10976) e!4748813)))

(declare-fun b!8058196 () Bool)

(declare-fun e!4748814 () Bool)

(assert (=> b!8058196 (= e!4748813 e!4748814)))

(declare-fun res!3187791 () Bool)

(assert (=> b!8058196 (=> (not res!3187791) (not e!4748814))))

(declare-fun containsKey!4925 (List!75754 K!22961) Bool)

(assert (=> b!8058196 (= res!3187791 (not (containsKey!4925 (t!391526 l!10976) (_1!38806 (h!82076 l!10976)))))))

(declare-fun b!8058197 () Bool)

(assert (=> b!8058197 (= e!4748814 (noDuplicateKeys!2749 (t!391526 l!10976)))))

(assert (= (and d!2399071 (not res!3187790)) b!8058196))

(assert (= (and b!8058196 res!3187791) b!8058197))

(declare-fun m!8411414 () Bool)

(assert (=> b!8058196 m!8411414))

(declare-fun m!8411416 () Bool)

(assert (=> b!8058197 m!8411416))

(assert (=> start!759276 d!2399071))

(declare-fun d!2399073 () Bool)

(declare-fun invariantList!1964 (List!75754) Bool)

(assert (=> d!2399073 (= (inv!97435 acc!836) (invariantList!1964 (toList!11963 acc!836)))))

(declare-fun bs!1973404 () Bool)

(assert (= bs!1973404 d!2399073))

(declare-fun m!8411418 () Bool)

(assert (=> bs!1973404 m!8411418))

(assert (=> start!759276 d!2399073))

(declare-fun bm!747637 () Bool)

(declare-fun call!747642 () Bool)

(declare-datatypes ((List!75756 0))(
  ( (Nil!75630) (Cons!75630 (h!82078 K!22961) (t!391528 List!75756)) )
))
(declare-fun e!4748833 () List!75756)

(declare-fun contains!21303 (List!75756 K!22961) Bool)

(assert (=> bm!747637 (= call!747642 (contains!21303 e!4748833 (_1!38806 (h!82076 l!10976))))))

(declare-fun c!1476756 () Bool)

(declare-fun c!1476757 () Bool)

(assert (=> bm!747637 (= c!1476756 c!1476757)))

(declare-fun b!8058222 () Bool)

(assert (=> b!8058222 false))

(declare-fun lt!2731904 () Unit!172672)

(declare-fun lt!2731910 () Unit!172672)

(assert (=> b!8058222 (= lt!2731904 lt!2731910)))

(declare-fun containsKey!4926 (List!75754 K!22961) Bool)

(assert (=> b!8058222 (containsKey!4926 (toList!11963 lt!2731874) (_1!38806 (h!82076 l!10976)))))

(declare-fun lemmaInGetKeysListThenContainsKey!1265 (List!75754 K!22961) Unit!172672)

(assert (=> b!8058222 (= lt!2731910 (lemmaInGetKeysListThenContainsKey!1265 (toList!11963 lt!2731874) (_1!38806 (h!82076 l!10976))))))

(declare-fun e!4748834 () Unit!172672)

(declare-fun Unit!172676 () Unit!172672)

(assert (=> b!8058222 (= e!4748834 Unit!172676)))

(declare-fun b!8058223 () Bool)

(declare-fun e!4748837 () Bool)

(declare-fun e!4748835 () Bool)

(assert (=> b!8058223 (= e!4748837 e!4748835)))

(declare-fun res!3187806 () Bool)

(assert (=> b!8058223 (=> (not res!3187806) (not e!4748835))))

(declare-datatypes ((Option!18026 0))(
  ( (None!18025) (Some!18025 (v!55382 V!23215)) )
))
(declare-fun isDefined!14555 (Option!18026) Bool)

(declare-fun getValueByKey!2810 (List!75754 K!22961) Option!18026)

(assert (=> b!8058223 (= res!3187806 (isDefined!14555 (getValueByKey!2810 (toList!11963 lt!2731874) (_1!38806 (h!82076 l!10976)))))))

(declare-fun d!2399075 () Bool)

(assert (=> d!2399075 e!4748837))

(declare-fun res!3187804 () Bool)

(assert (=> d!2399075 (=> res!3187804 e!4748837)))

(declare-fun e!4748838 () Bool)

(assert (=> d!2399075 (= res!3187804 e!4748838)))

(declare-fun res!3187805 () Bool)

(assert (=> d!2399075 (=> (not res!3187805) (not e!4748838))))

(declare-fun lt!2731908 () Bool)

(assert (=> d!2399075 (= res!3187805 (not lt!2731908))))

(declare-fun lt!2731906 () Bool)

(assert (=> d!2399075 (= lt!2731908 lt!2731906)))

(declare-fun lt!2731907 () Unit!172672)

(declare-fun e!4748836 () Unit!172672)

(assert (=> d!2399075 (= lt!2731907 e!4748836)))

(assert (=> d!2399075 (= c!1476757 lt!2731906)))

(assert (=> d!2399075 (= lt!2731906 (containsKey!4926 (toList!11963 lt!2731874) (_1!38806 (h!82076 l!10976))))))

(assert (=> d!2399075 (= (contains!21301 lt!2731874 (_1!38806 (h!82076 l!10976))) lt!2731908)))

(declare-fun b!8058224 () Bool)

(declare-fun getKeysList!1265 (List!75754) List!75756)

(assert (=> b!8058224 (= e!4748833 (getKeysList!1265 (toList!11963 lt!2731874)))))

(declare-fun b!8058225 () Bool)

(declare-fun Unit!172677 () Unit!172672)

(assert (=> b!8058225 (= e!4748834 Unit!172677)))

(declare-fun b!8058226 () Bool)

(declare-fun keys!30920 (ListMap!7377) List!75756)

(assert (=> b!8058226 (= e!4748835 (contains!21303 (keys!30920 lt!2731874) (_1!38806 (h!82076 l!10976))))))

(declare-fun b!8058227 () Bool)

(assert (=> b!8058227 (= e!4748838 (not (contains!21303 (keys!30920 lt!2731874) (_1!38806 (h!82076 l!10976)))))))

(declare-fun b!8058228 () Bool)

(assert (=> b!8058228 (= e!4748833 (keys!30920 lt!2731874))))

(declare-fun b!8058229 () Bool)

(declare-fun lt!2731911 () Unit!172672)

(assert (=> b!8058229 (= e!4748836 lt!2731911)))

(declare-fun lt!2731909 () Unit!172672)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2577 (List!75754 K!22961) Unit!172672)

(assert (=> b!8058229 (= lt!2731909 (lemmaContainsKeyImpliesGetValueByKeyDefined!2577 (toList!11963 lt!2731874) (_1!38806 (h!82076 l!10976))))))

(assert (=> b!8058229 (isDefined!14555 (getValueByKey!2810 (toList!11963 lt!2731874) (_1!38806 (h!82076 l!10976))))))

(declare-fun lt!2731905 () Unit!172672)

(assert (=> b!8058229 (= lt!2731905 lt!2731909)))

(declare-fun lemmaInListThenGetKeysListContains!1260 (List!75754 K!22961) Unit!172672)

(assert (=> b!8058229 (= lt!2731911 (lemmaInListThenGetKeysListContains!1260 (toList!11963 lt!2731874) (_1!38806 (h!82076 l!10976))))))

(assert (=> b!8058229 call!747642))

(declare-fun b!8058230 () Bool)

(assert (=> b!8058230 (= e!4748836 e!4748834)))

(declare-fun c!1476758 () Bool)

(assert (=> b!8058230 (= c!1476758 call!747642)))

(assert (= (and d!2399075 c!1476757) b!8058229))

(assert (= (and d!2399075 (not c!1476757)) b!8058230))

(assert (= (and b!8058230 c!1476758) b!8058222))

(assert (= (and b!8058230 (not c!1476758)) b!8058225))

(assert (= (or b!8058229 b!8058230) bm!747637))

(assert (= (and bm!747637 c!1476756) b!8058224))

(assert (= (and bm!747637 (not c!1476756)) b!8058228))

(assert (= (and d!2399075 res!3187805) b!8058227))

(assert (= (and d!2399075 (not res!3187804)) b!8058223))

(assert (= (and b!8058223 res!3187806) b!8058226))

(declare-fun m!8411424 () Bool)

(assert (=> b!8058223 m!8411424))

(assert (=> b!8058223 m!8411424))

(declare-fun m!8411426 () Bool)

(assert (=> b!8058223 m!8411426))

(declare-fun m!8411428 () Bool)

(assert (=> b!8058227 m!8411428))

(assert (=> b!8058227 m!8411428))

(declare-fun m!8411430 () Bool)

(assert (=> b!8058227 m!8411430))

(declare-fun m!8411432 () Bool)

(assert (=> bm!747637 m!8411432))

(assert (=> b!8058226 m!8411428))

(assert (=> b!8058226 m!8411428))

(assert (=> b!8058226 m!8411430))

(declare-fun m!8411434 () Bool)

(assert (=> b!8058222 m!8411434))

(declare-fun m!8411436 () Bool)

(assert (=> b!8058222 m!8411436))

(declare-fun m!8411438 () Bool)

(assert (=> b!8058229 m!8411438))

(assert (=> b!8058229 m!8411424))

(assert (=> b!8058229 m!8411424))

(assert (=> b!8058229 m!8411426))

(declare-fun m!8411440 () Bool)

(assert (=> b!8058229 m!8411440))

(assert (=> d!2399075 m!8411434))

(declare-fun m!8411442 () Bool)

(assert (=> b!8058224 m!8411442))

(assert (=> b!8058228 m!8411428))

(assert (=> b!8058156 d!2399075))

(declare-fun d!2399081 () Bool)

(declare-fun res!3187811 () Bool)

(declare-fun e!4748843 () Bool)

(assert (=> d!2399081 (=> res!3187811 e!4748843)))

(assert (=> d!2399081 (= res!3187811 (is-Nil!75628 l!10976))))

(assert (=> d!2399081 (= (forall!18543 l!10976 lambda!474953) e!4748843)))

(declare-fun b!8058235 () Bool)

(declare-fun e!4748844 () Bool)

(assert (=> b!8058235 (= e!4748843 e!4748844)))

(declare-fun res!3187812 () Bool)

(assert (=> b!8058235 (=> (not res!3187812) (not e!4748844))))

(declare-fun dynLambda!30281 (Int tuple2!71006) Bool)

(assert (=> b!8058235 (= res!3187812 (dynLambda!30281 lambda!474953 (h!82076 l!10976)))))

(declare-fun b!8058236 () Bool)

(assert (=> b!8058236 (= e!4748844 (forall!18543 (t!391526 l!10976) lambda!474953))))

(assert (= (and d!2399081 (not res!3187811)) b!8058235))

(assert (= (and b!8058235 res!3187812) b!8058236))

(declare-fun b_lambda!290645 () Bool)

(assert (=> (not b_lambda!290645) (not b!8058235)))

(declare-fun m!8411444 () Bool)

(assert (=> b!8058235 m!8411444))

(declare-fun m!8411446 () Bool)

(assert (=> b!8058236 m!8411446))

(assert (=> b!8058161 d!2399081))

(declare-fun d!2399083 () Bool)

(assert (=> d!2399083 (dynLambda!30281 lambda!474953 (h!82076 l!10976))))

(declare-fun lt!2731930 () Unit!172672)

(declare-fun choose!60575 (List!75754 Int tuple2!71006) Unit!172672)

(assert (=> d!2399083 (= lt!2731930 (choose!60575 (toList!11963 lt!2731872) lambda!474953 (h!82076 l!10976)))))

(declare-fun e!4748859 () Bool)

(assert (=> d!2399083 e!4748859))

(declare-fun res!3187821 () Bool)

(assert (=> d!2399083 (=> (not res!3187821) (not e!4748859))))

(assert (=> d!2399083 (= res!3187821 (forall!18543 (toList!11963 lt!2731872) lambda!474953))))

(assert (=> d!2399083 (= (forallContained!4688 (toList!11963 lt!2731872) lambda!474953 (h!82076 l!10976)) lt!2731930)))

(declare-fun b!8058257 () Bool)

(declare-fun contains!21305 (List!75754 tuple2!71006) Bool)

(assert (=> b!8058257 (= e!4748859 (contains!21305 (toList!11963 lt!2731872) (h!82076 l!10976)))))

(assert (= (and d!2399083 res!3187821) b!8058257))

(declare-fun b_lambda!290647 () Bool)

(assert (=> (not b_lambda!290647) (not d!2399083)))

(assert (=> d!2399083 m!8411444))

(declare-fun m!8411448 () Bool)

(assert (=> d!2399083 m!8411448))

(declare-fun m!8411450 () Bool)

(assert (=> d!2399083 m!8411450))

(declare-fun m!8411452 () Bool)

(assert (=> b!8058257 m!8411452))

(assert (=> b!8058161 d!2399083))

(declare-fun bm!747640 () Bool)

(declare-fun call!747645 () Bool)

(declare-fun e!4748860 () List!75756)

(assert (=> bm!747640 (= call!747645 (contains!21303 e!4748860 (_1!38806 (h!82076 l!10976))))))

(declare-fun c!1476765 () Bool)

(declare-fun c!1476766 () Bool)

(assert (=> bm!747640 (= c!1476765 c!1476766)))

(declare-fun b!8058258 () Bool)

(assert (=> b!8058258 false))

(declare-fun lt!2731931 () Unit!172672)

(declare-fun lt!2731937 () Unit!172672)

(assert (=> b!8058258 (= lt!2731931 lt!2731937)))

(assert (=> b!8058258 (containsKey!4926 (toList!11963 lt!2731872) (_1!38806 (h!82076 l!10976)))))

(assert (=> b!8058258 (= lt!2731937 (lemmaInGetKeysListThenContainsKey!1265 (toList!11963 lt!2731872) (_1!38806 (h!82076 l!10976))))))

(declare-fun e!4748861 () Unit!172672)

(declare-fun Unit!172679 () Unit!172672)

(assert (=> b!8058258 (= e!4748861 Unit!172679)))

(declare-fun b!8058259 () Bool)

(declare-fun e!4748864 () Bool)

(declare-fun e!4748862 () Bool)

(assert (=> b!8058259 (= e!4748864 e!4748862)))

(declare-fun res!3187824 () Bool)

(assert (=> b!8058259 (=> (not res!3187824) (not e!4748862))))

(assert (=> b!8058259 (= res!3187824 (isDefined!14555 (getValueByKey!2810 (toList!11963 lt!2731872) (_1!38806 (h!82076 l!10976)))))))

(declare-fun d!2399085 () Bool)

(assert (=> d!2399085 e!4748864))

(declare-fun res!3187822 () Bool)

(assert (=> d!2399085 (=> res!3187822 e!4748864)))

(declare-fun e!4748865 () Bool)

(assert (=> d!2399085 (= res!3187822 e!4748865)))

(declare-fun res!3187823 () Bool)

(assert (=> d!2399085 (=> (not res!3187823) (not e!4748865))))

(declare-fun lt!2731935 () Bool)

(assert (=> d!2399085 (= res!3187823 (not lt!2731935))))

(declare-fun lt!2731933 () Bool)

(assert (=> d!2399085 (= lt!2731935 lt!2731933)))

(declare-fun lt!2731934 () Unit!172672)

(declare-fun e!4748863 () Unit!172672)

(assert (=> d!2399085 (= lt!2731934 e!4748863)))

(assert (=> d!2399085 (= c!1476766 lt!2731933)))

(assert (=> d!2399085 (= lt!2731933 (containsKey!4926 (toList!11963 lt!2731872) (_1!38806 (h!82076 l!10976))))))

(assert (=> d!2399085 (= (contains!21301 lt!2731872 (_1!38806 (h!82076 l!10976))) lt!2731935)))

(declare-fun b!8058260 () Bool)

(assert (=> b!8058260 (= e!4748860 (getKeysList!1265 (toList!11963 lt!2731872)))))

(declare-fun b!8058261 () Bool)

(declare-fun Unit!172681 () Unit!172672)

(assert (=> b!8058261 (= e!4748861 Unit!172681)))

(declare-fun b!8058262 () Bool)

(assert (=> b!8058262 (= e!4748862 (contains!21303 (keys!30920 lt!2731872) (_1!38806 (h!82076 l!10976))))))

(declare-fun b!8058263 () Bool)

(assert (=> b!8058263 (= e!4748865 (not (contains!21303 (keys!30920 lt!2731872) (_1!38806 (h!82076 l!10976)))))))

(declare-fun b!8058264 () Bool)

(assert (=> b!8058264 (= e!4748860 (keys!30920 lt!2731872))))

(declare-fun b!8058265 () Bool)

(declare-fun lt!2731938 () Unit!172672)

(assert (=> b!8058265 (= e!4748863 lt!2731938)))

(declare-fun lt!2731936 () Unit!172672)

(assert (=> b!8058265 (= lt!2731936 (lemmaContainsKeyImpliesGetValueByKeyDefined!2577 (toList!11963 lt!2731872) (_1!38806 (h!82076 l!10976))))))

(assert (=> b!8058265 (isDefined!14555 (getValueByKey!2810 (toList!11963 lt!2731872) (_1!38806 (h!82076 l!10976))))))

(declare-fun lt!2731932 () Unit!172672)

(assert (=> b!8058265 (= lt!2731932 lt!2731936)))

(assert (=> b!8058265 (= lt!2731938 (lemmaInListThenGetKeysListContains!1260 (toList!11963 lt!2731872) (_1!38806 (h!82076 l!10976))))))

(assert (=> b!8058265 call!747645))

(declare-fun b!8058266 () Bool)

(assert (=> b!8058266 (= e!4748863 e!4748861)))

(declare-fun c!1476767 () Bool)

(assert (=> b!8058266 (= c!1476767 call!747645)))

(assert (= (and d!2399085 c!1476766) b!8058265))

(assert (= (and d!2399085 (not c!1476766)) b!8058266))

(assert (= (and b!8058266 c!1476767) b!8058258))

(assert (= (and b!8058266 (not c!1476767)) b!8058261))

(assert (= (or b!8058265 b!8058266) bm!747640))

(assert (= (and bm!747640 c!1476765) b!8058260))

(assert (= (and bm!747640 (not c!1476765)) b!8058264))

(assert (= (and d!2399085 res!3187823) b!8058263))

(assert (= (and d!2399085 (not res!3187822)) b!8058259))

(assert (= (and b!8058259 res!3187824) b!8058262))

(declare-fun m!8411454 () Bool)

(assert (=> b!8058259 m!8411454))

(assert (=> b!8058259 m!8411454))

(declare-fun m!8411456 () Bool)

(assert (=> b!8058259 m!8411456))

(declare-fun m!8411458 () Bool)

(assert (=> b!8058263 m!8411458))

(assert (=> b!8058263 m!8411458))

(declare-fun m!8411460 () Bool)

(assert (=> b!8058263 m!8411460))

(declare-fun m!8411462 () Bool)

(assert (=> bm!747640 m!8411462))

(assert (=> b!8058262 m!8411458))

(assert (=> b!8058262 m!8411458))

(assert (=> b!8058262 m!8411460))

(declare-fun m!8411464 () Bool)

(assert (=> b!8058258 m!8411464))

(declare-fun m!8411466 () Bool)

(assert (=> b!8058258 m!8411466))

(declare-fun m!8411468 () Bool)

(assert (=> b!8058265 m!8411468))

(assert (=> b!8058265 m!8411454))

(assert (=> b!8058265 m!8411454))

(assert (=> b!8058265 m!8411456))

(declare-fun m!8411470 () Bool)

(assert (=> b!8058265 m!8411470))

(assert (=> d!2399085 m!8411464))

(declare-fun m!8411472 () Bool)

(assert (=> b!8058260 m!8411472))

(assert (=> b!8058264 m!8411458))

(assert (=> b!8058161 d!2399085))

(declare-fun bs!1973405 () Bool)

(declare-fun b!8058314 () Bool)

(assert (= bs!1973405 (and b!8058314 b!8058161)))

(declare-fun lambda!475003 () Int)

(assert (=> bs!1973405 (= (= lt!2731872 acc!836) (= lambda!475003 lambda!474951))))

(declare-fun bs!1973406 () Bool)

(assert (= bs!1973406 (and b!8058314 b!8058162)))

(assert (=> bs!1973406 (= (= lt!2731872 lt!2731874) (= lambda!475003 lambda!474952))))

(assert (=> bs!1973405 (= (= lt!2731872 lt!2731874) (= lambda!475003 lambda!474953))))

(assert (=> b!8058314 true))

(declare-fun bs!1973407 () Bool)

(declare-fun b!8058311 () Bool)

(assert (= bs!1973407 (and b!8058311 b!8058161)))

(declare-fun lambda!475004 () Int)

(assert (=> bs!1973407 (= (= lt!2731872 acc!836) (= lambda!475004 lambda!474951))))

(declare-fun bs!1973408 () Bool)

(assert (= bs!1973408 (and b!8058311 b!8058162)))

(assert (=> bs!1973408 (= (= lt!2731872 lt!2731874) (= lambda!475004 lambda!474952))))

(assert (=> bs!1973407 (= (= lt!2731872 lt!2731874) (= lambda!475004 lambda!474953))))

(declare-fun bs!1973409 () Bool)

(assert (= bs!1973409 (and b!8058311 b!8058314)))

(assert (=> bs!1973409 (= lambda!475004 lambda!475003)))

(assert (=> b!8058311 true))

(declare-fun lt!2732035 () ListMap!7377)

(declare-fun lambda!475007 () Int)

(assert (=> bs!1973409 (= (= lt!2732035 lt!2731872) (= lambda!475007 lambda!475003))))

(assert (=> bs!1973408 (= (= lt!2732035 lt!2731874) (= lambda!475007 lambda!474952))))

(assert (=> bs!1973407 (= (= lt!2732035 lt!2731874) (= lambda!475007 lambda!474953))))

(assert (=> bs!1973407 (= (= lt!2732035 acc!836) (= lambda!475007 lambda!474951))))

(assert (=> b!8058311 (= (= lt!2732035 lt!2731872) (= lambda!475007 lambda!475004))))

(assert (=> b!8058311 true))

(declare-fun bs!1973410 () Bool)

(declare-fun d!2399087 () Bool)

(assert (= bs!1973410 (and d!2399087 b!8058311)))

(declare-fun lt!2732038 () ListMap!7377)

(declare-fun lambda!475012 () Int)

(assert (=> bs!1973410 (= (= lt!2732038 lt!2732035) (= lambda!475012 lambda!475007))))

(declare-fun bs!1973411 () Bool)

(assert (= bs!1973411 (and d!2399087 b!8058314)))

(assert (=> bs!1973411 (= (= lt!2732038 lt!2731872) (= lambda!475012 lambda!475003))))

(declare-fun bs!1973412 () Bool)

(assert (= bs!1973412 (and d!2399087 b!8058162)))

(assert (=> bs!1973412 (= (= lt!2732038 lt!2731874) (= lambda!475012 lambda!474952))))

(declare-fun bs!1973413 () Bool)

(assert (= bs!1973413 (and d!2399087 b!8058161)))

(assert (=> bs!1973413 (= (= lt!2732038 lt!2731874) (= lambda!475012 lambda!474953))))

(assert (=> bs!1973413 (= (= lt!2732038 acc!836) (= lambda!475012 lambda!474951))))

(assert (=> bs!1973410 (= (= lt!2732038 lt!2731872) (= lambda!475012 lambda!475004))))

(assert (=> d!2399087 true))

(declare-fun bm!747649 () Bool)

(declare-fun call!747654 () Bool)

(declare-fun c!1476778 () Bool)

(assert (=> bm!747649 (= call!747654 (forall!18543 (toList!11963 lt!2731872) (ite c!1476778 lambda!475003 lambda!475007)))))

(declare-fun bm!747650 () Bool)

(declare-fun call!747656 () Unit!172672)

(assert (=> bm!747650 (= call!747656 (lemmaContainsAllItsOwnKeys!1124 lt!2731872))))

(declare-fun b!8058310 () Bool)

(declare-fun res!3187850 () Bool)

(declare-fun e!4748895 () Bool)

(assert (=> b!8058310 (=> (not res!3187850) (not e!4748895))))

(assert (=> b!8058310 (= res!3187850 (forall!18543 (toList!11963 lt!2731872) lambda!475012))))

(declare-fun e!4748896 () ListMap!7377)

(assert (=> b!8058311 (= e!4748896 lt!2732035)))

(declare-fun lt!2732049 () ListMap!7377)

(assert (=> b!8058311 (= lt!2732049 (+!2710 lt!2731872 (h!82076 (t!391526 l!10976))))))

(assert (=> b!8058311 (= lt!2732035 (addToMapMapFromBucket!2024 (t!391526 (t!391526 l!10976)) (+!2710 lt!2731872 (h!82076 (t!391526 l!10976)))))))

(declare-fun lt!2732042 () Unit!172672)

(assert (=> b!8058311 (= lt!2732042 call!747656)))

(declare-fun call!747655 () Bool)

(assert (=> b!8058311 call!747655))

(declare-fun lt!2732044 () Unit!172672)

(assert (=> b!8058311 (= lt!2732044 lt!2732042)))

(assert (=> b!8058311 (forall!18543 (toList!11963 lt!2732049) lambda!475007)))

(declare-fun lt!2732037 () Unit!172672)

(declare-fun Unit!172683 () Unit!172672)

(assert (=> b!8058311 (= lt!2732037 Unit!172683)))

(assert (=> b!8058311 (forall!18543 (t!391526 (t!391526 l!10976)) lambda!475007)))

(declare-fun lt!2732034 () Unit!172672)

(declare-fun Unit!172684 () Unit!172672)

(assert (=> b!8058311 (= lt!2732034 Unit!172684)))

(declare-fun lt!2732041 () Unit!172672)

(declare-fun Unit!172685 () Unit!172672)

(assert (=> b!8058311 (= lt!2732041 Unit!172685)))

(declare-fun lt!2732039 () Unit!172672)

(assert (=> b!8058311 (= lt!2732039 (forallContained!4688 (toList!11963 lt!2732049) lambda!475007 (h!82076 (t!391526 l!10976))))))

(assert (=> b!8058311 (contains!21301 lt!2732049 (_1!38806 (h!82076 (t!391526 l!10976))))))

(declare-fun lt!2732045 () Unit!172672)

(declare-fun Unit!172686 () Unit!172672)

(assert (=> b!8058311 (= lt!2732045 Unit!172686)))

(assert (=> b!8058311 (contains!21301 lt!2732035 (_1!38806 (h!82076 (t!391526 l!10976))))))

(declare-fun lt!2732047 () Unit!172672)

(declare-fun Unit!172687 () Unit!172672)

(assert (=> b!8058311 (= lt!2732047 Unit!172687)))

(assert (=> b!8058311 (forall!18543 (t!391526 l!10976) lambda!475007)))

(declare-fun lt!2732048 () Unit!172672)

(declare-fun Unit!172688 () Unit!172672)

(assert (=> b!8058311 (= lt!2732048 Unit!172688)))

(assert (=> b!8058311 (forall!18543 (toList!11963 lt!2732049) lambda!475007)))

(declare-fun lt!2732036 () Unit!172672)

(declare-fun Unit!172689 () Unit!172672)

(assert (=> b!8058311 (= lt!2732036 Unit!172689)))

(declare-fun lt!2732032 () Unit!172672)

(declare-fun Unit!172690 () Unit!172672)

(assert (=> b!8058311 (= lt!2732032 Unit!172690)))

(declare-fun lt!2732030 () Unit!172672)

(declare-fun addForallContainsKeyThenBeforeAdding!1110 (ListMap!7377 ListMap!7377 K!22961 V!23215) Unit!172672)

(assert (=> b!8058311 (= lt!2732030 (addForallContainsKeyThenBeforeAdding!1110 lt!2731872 lt!2732035 (_1!38806 (h!82076 (t!391526 l!10976))) (_2!38806 (h!82076 (t!391526 l!10976)))))))

(assert (=> b!8058311 call!747654))

(declare-fun lt!2732040 () Unit!172672)

(assert (=> b!8058311 (= lt!2732040 lt!2732030)))

(assert (=> b!8058311 (forall!18543 (toList!11963 lt!2731872) lambda!475007)))

(declare-fun lt!2732031 () Unit!172672)

(declare-fun Unit!172691 () Unit!172672)

(assert (=> b!8058311 (= lt!2732031 Unit!172691)))

(declare-fun res!3187849 () Bool)

(assert (=> b!8058311 (= res!3187849 (forall!18543 (t!391526 l!10976) lambda!475007))))

(declare-fun e!4748894 () Bool)

(assert (=> b!8058311 (=> (not res!3187849) (not e!4748894))))

(assert (=> b!8058311 e!4748894))

(declare-fun lt!2732050 () Unit!172672)

(declare-fun Unit!172692 () Unit!172672)

(assert (=> b!8058311 (= lt!2732050 Unit!172692)))

(declare-fun bm!747651 () Bool)

(assert (=> bm!747651 (= call!747655 (forall!18543 (toList!11963 lt!2731872) (ite c!1476778 lambda!475003 lambda!475004)))))

(declare-fun b!8058312 () Bool)

(assert (=> b!8058312 (= e!4748894 (forall!18543 (toList!11963 lt!2731872) lambda!475007))))

(assert (=> d!2399087 e!4748895))

(declare-fun res!3187848 () Bool)

(assert (=> d!2399087 (=> (not res!3187848) (not e!4748895))))

(assert (=> d!2399087 (= res!3187848 (forall!18543 (t!391526 l!10976) lambda!475012))))

(assert (=> d!2399087 (= lt!2732038 e!4748896)))

(assert (=> d!2399087 (= c!1476778 (is-Nil!75628 (t!391526 l!10976)))))

(assert (=> d!2399087 (noDuplicateKeys!2749 (t!391526 l!10976))))

(assert (=> d!2399087 (= (addToMapMapFromBucket!2024 (t!391526 l!10976) lt!2731872) lt!2732038)))

(declare-fun b!8058313 () Bool)

(assert (=> b!8058313 (= e!4748895 (invariantList!1964 (toList!11963 lt!2732038)))))

(assert (=> b!8058314 (= e!4748896 lt!2731872)))

(declare-fun lt!2732043 () Unit!172672)

(assert (=> b!8058314 (= lt!2732043 call!747656)))

(assert (=> b!8058314 call!747654))

(declare-fun lt!2732046 () Unit!172672)

(assert (=> b!8058314 (= lt!2732046 lt!2732043)))

(assert (=> b!8058314 call!747655))

(declare-fun lt!2732033 () Unit!172672)

(declare-fun Unit!172693 () Unit!172672)

(assert (=> b!8058314 (= lt!2732033 Unit!172693)))

(assert (= (and d!2399087 c!1476778) b!8058314))

(assert (= (and d!2399087 (not c!1476778)) b!8058311))

(assert (= (and b!8058311 res!3187849) b!8058312))

(assert (= (or b!8058314 b!8058311) bm!747649))

(assert (= (or b!8058314 b!8058311) bm!747651))

(assert (= (or b!8058314 b!8058311) bm!747650))

(assert (= (and d!2399087 res!3187848) b!8058310))

(assert (= (and b!8058310 res!3187850) b!8058313))

(declare-fun m!8411536 () Bool)

(assert (=> d!2399087 m!8411536))

(assert (=> d!2399087 m!8411416))

(declare-fun m!8411538 () Bool)

(assert (=> b!8058312 m!8411538))

(declare-fun m!8411540 () Bool)

(assert (=> bm!747650 m!8411540))

(declare-fun m!8411542 () Bool)

(assert (=> bm!747649 m!8411542))

(declare-fun m!8411544 () Bool)

(assert (=> b!8058313 m!8411544))

(declare-fun m!8411546 () Bool)

(assert (=> b!8058310 m!8411546))

(declare-fun m!8411548 () Bool)

(assert (=> b!8058311 m!8411548))

(declare-fun m!8411550 () Bool)

(assert (=> b!8058311 m!8411550))

(declare-fun m!8411552 () Bool)

(assert (=> b!8058311 m!8411552))

(declare-fun m!8411554 () Bool)

(assert (=> b!8058311 m!8411554))

(declare-fun m!8411556 () Bool)

(assert (=> b!8058311 m!8411556))

(assert (=> b!8058311 m!8411556))

(assert (=> b!8058311 m!8411538))

(assert (=> b!8058311 m!8411554))

(declare-fun m!8411558 () Bool)

(assert (=> b!8058311 m!8411558))

(declare-fun m!8411560 () Bool)

(assert (=> b!8058311 m!8411560))

(declare-fun m!8411562 () Bool)

(assert (=> b!8058311 m!8411562))

(assert (=> b!8058311 m!8411548))

(declare-fun m!8411564 () Bool)

(assert (=> b!8058311 m!8411564))

(declare-fun m!8411566 () Bool)

(assert (=> bm!747651 m!8411566))

(assert (=> b!8058161 d!2399087))

(declare-fun d!2399099 () Bool)

(declare-fun e!4748903 () Bool)

(assert (=> d!2399099 e!4748903))

(declare-fun res!3187861 () Bool)

(assert (=> d!2399099 (=> (not res!3187861) (not e!4748903))))

(declare-fun lt!2732083 () ListMap!7377)

(assert (=> d!2399099 (= res!3187861 (contains!21301 lt!2732083 (_1!38806 (h!82076 l!10976))))))

(declare-fun lt!2732084 () List!75754)

(assert (=> d!2399099 (= lt!2732083 (ListMap!7378 lt!2732084))))

(declare-fun lt!2732085 () Unit!172672)

(declare-fun lt!2732086 () Unit!172672)

(assert (=> d!2399099 (= lt!2732085 lt!2732086)))

(assert (=> d!2399099 (= (getValueByKey!2810 lt!2732084 (_1!38806 (h!82076 l!10976))) (Some!18025 (_2!38806 (h!82076 l!10976))))))

(declare-fun lemmaContainsTupThenGetReturnValue!1304 (List!75754 K!22961 V!23215) Unit!172672)

(assert (=> d!2399099 (= lt!2732086 (lemmaContainsTupThenGetReturnValue!1304 lt!2732084 (_1!38806 (h!82076 l!10976)) (_2!38806 (h!82076 l!10976))))))

(declare-fun insertNoDuplicatedKeys!812 (List!75754 K!22961 V!23215) List!75754)

(assert (=> d!2399099 (= lt!2732084 (insertNoDuplicatedKeys!812 (toList!11963 acc!836) (_1!38806 (h!82076 l!10976)) (_2!38806 (h!82076 l!10976))))))

(assert (=> d!2399099 (= (+!2710 acc!836 (h!82076 l!10976)) lt!2732083)))

(declare-fun b!8058325 () Bool)

(declare-fun res!3187862 () Bool)

(assert (=> b!8058325 (=> (not res!3187862) (not e!4748903))))

(assert (=> b!8058325 (= res!3187862 (= (getValueByKey!2810 (toList!11963 lt!2732083) (_1!38806 (h!82076 l!10976))) (Some!18025 (_2!38806 (h!82076 l!10976)))))))

(declare-fun b!8058326 () Bool)

(assert (=> b!8058326 (= e!4748903 (contains!21305 (toList!11963 lt!2732083) (h!82076 l!10976)))))

(assert (= (and d!2399099 res!3187861) b!8058325))

(assert (= (and b!8058325 res!3187862) b!8058326))

(declare-fun m!8411568 () Bool)

(assert (=> d!2399099 m!8411568))

(declare-fun m!8411570 () Bool)

(assert (=> d!2399099 m!8411570))

(declare-fun m!8411572 () Bool)

(assert (=> d!2399099 m!8411572))

(declare-fun m!8411574 () Bool)

(assert (=> d!2399099 m!8411574))

(declare-fun m!8411576 () Bool)

(assert (=> b!8058325 m!8411576))

(declare-fun m!8411578 () Bool)

(assert (=> b!8058326 m!8411578))

(assert (=> b!8058161 d!2399099))

(declare-fun d!2399101 () Bool)

(declare-fun res!3187863 () Bool)

(declare-fun e!4748904 () Bool)

(assert (=> d!2399101 (=> res!3187863 e!4748904)))

(assert (=> d!2399101 (= res!3187863 (is-Nil!75628 (toList!11963 acc!836)))))

(assert (=> d!2399101 (= (forall!18543 (toList!11963 acc!836) lambda!474951) e!4748904)))

(declare-fun b!8058327 () Bool)

(declare-fun e!4748905 () Bool)

(assert (=> b!8058327 (= e!4748904 e!4748905)))

(declare-fun res!3187864 () Bool)

(assert (=> b!8058327 (=> (not res!3187864) (not e!4748905))))

(assert (=> b!8058327 (= res!3187864 (dynLambda!30281 lambda!474951 (h!82076 (toList!11963 acc!836))))))

(declare-fun b!8058328 () Bool)

(assert (=> b!8058328 (= e!4748905 (forall!18543 (t!391526 (toList!11963 acc!836)) lambda!474951))))

(assert (= (and d!2399101 (not res!3187863)) b!8058327))

(assert (= (and b!8058327 res!3187864) b!8058328))

(declare-fun b_lambda!290653 () Bool)

(assert (=> (not b_lambda!290653) (not b!8058327)))

(declare-fun m!8411580 () Bool)

(assert (=> b!8058327 m!8411580))

(declare-fun m!8411582 () Bool)

(assert (=> b!8058328 m!8411582))

(assert (=> b!8058161 d!2399101))

(declare-fun bs!1973423 () Bool)

(declare-fun d!2399103 () Bool)

(assert (= bs!1973423 (and d!2399103 d!2399087)))

(declare-fun lambda!475033 () Int)

(assert (=> bs!1973423 (= (= acc!836 lt!2732038) (= lambda!475033 lambda!475012))))

(declare-fun bs!1973424 () Bool)

(assert (= bs!1973424 (and d!2399103 b!8058311)))

(assert (=> bs!1973424 (= (= acc!836 lt!2732035) (= lambda!475033 lambda!475007))))

(declare-fun bs!1973425 () Bool)

(assert (= bs!1973425 (and d!2399103 b!8058314)))

(assert (=> bs!1973425 (= (= acc!836 lt!2731872) (= lambda!475033 lambda!475003))))

(declare-fun bs!1973426 () Bool)

(assert (= bs!1973426 (and d!2399103 b!8058162)))

(assert (=> bs!1973426 (= (= acc!836 lt!2731874) (= lambda!475033 lambda!474952))))

(declare-fun bs!1973427 () Bool)

(assert (= bs!1973427 (and d!2399103 b!8058161)))

(assert (=> bs!1973427 (= (= acc!836 lt!2731874) (= lambda!475033 lambda!474953))))

(assert (=> bs!1973427 (= lambda!475033 lambda!474951)))

(assert (=> bs!1973424 (= (= acc!836 lt!2731872) (= lambda!475033 lambda!475004))))

(assert (=> d!2399103 true))

(assert (=> d!2399103 (forall!18543 (toList!11963 acc!836) lambda!475033)))

(declare-fun lt!2732110 () Unit!172672)

(declare-fun choose!60577 (ListMap!7377) Unit!172672)

(assert (=> d!2399103 (= lt!2732110 (choose!60577 acc!836))))

(assert (=> d!2399103 (= (lemmaContainsAllItsOwnKeys!1124 acc!836) lt!2732110)))

(declare-fun bs!1973428 () Bool)

(assert (= bs!1973428 d!2399103))

(declare-fun m!8411614 () Bool)

(assert (=> bs!1973428 m!8411614))

(declare-fun m!8411620 () Bool)

(assert (=> bs!1973428 m!8411620))

(assert (=> b!8058161 d!2399103))

(declare-fun d!2399105 () Bool)

(declare-fun res!3187868 () Bool)

(declare-fun e!4748909 () Bool)

(assert (=> d!2399105 (=> res!3187868 e!4748909)))

(assert (=> d!2399105 (= res!3187868 (is-Nil!75628 (toList!11963 lt!2731872)))))

(assert (=> d!2399105 (= (forall!18543 (toList!11963 lt!2731872) lambda!474952) e!4748909)))

(declare-fun b!8058334 () Bool)

(declare-fun e!4748910 () Bool)

(assert (=> b!8058334 (= e!4748909 e!4748910)))

(declare-fun res!3187869 () Bool)

(assert (=> b!8058334 (=> (not res!3187869) (not e!4748910))))

(assert (=> b!8058334 (= res!3187869 (dynLambda!30281 lambda!474952 (h!82076 (toList!11963 lt!2731872))))))

(declare-fun b!8058335 () Bool)

(assert (=> b!8058335 (= e!4748910 (forall!18543 (t!391526 (toList!11963 lt!2731872)) lambda!474952))))

(assert (= (and d!2399105 (not res!3187868)) b!8058334))

(assert (= (and b!8058334 res!3187869) b!8058335))

(declare-fun b_lambda!290655 () Bool)

(assert (=> (not b_lambda!290655) (not b!8058334)))

(declare-fun m!8411622 () Bool)

(assert (=> b!8058334 m!8411622))

(declare-fun m!8411624 () Bool)

(assert (=> b!8058335 m!8411624))

(assert (=> b!8058162 d!2399105))

(declare-fun d!2399109 () Bool)

(declare-fun res!3187870 () Bool)

(declare-fun e!4748911 () Bool)

(assert (=> d!2399109 (=> res!3187870 e!4748911)))

(assert (=> d!2399109 (= res!3187870 (is-Nil!75628 (t!391526 l!10976)))))

(assert (=> d!2399109 (= (forall!18543 (t!391526 l!10976) lambda!474952) e!4748911)))

(declare-fun b!8058336 () Bool)

(declare-fun e!4748912 () Bool)

(assert (=> b!8058336 (= e!4748911 e!4748912)))

(declare-fun res!3187871 () Bool)

(assert (=> b!8058336 (=> (not res!3187871) (not e!4748912))))

(assert (=> b!8058336 (= res!3187871 (dynLambda!30281 lambda!474952 (h!82076 (t!391526 l!10976))))))

(declare-fun b!8058337 () Bool)

(assert (=> b!8058337 (= e!4748912 (forall!18543 (t!391526 (t!391526 l!10976)) lambda!474952))))

(assert (= (and d!2399109 (not res!3187870)) b!8058336))

(assert (= (and b!8058336 res!3187871) b!8058337))

(declare-fun b_lambda!290657 () Bool)

(assert (=> (not b_lambda!290657) (not b!8058336)))

(declare-fun m!8411626 () Bool)

(assert (=> b!8058336 m!8411626))

(declare-fun m!8411628 () Bool)

(assert (=> b!8058337 m!8411628))

(assert (=> b!8058157 d!2399109))

(declare-fun tp!2414232 () Bool)

(declare-fun b!8058342 () Bool)

(declare-fun e!4748915 () Bool)

(assert (=> b!8058342 (= e!4748915 (and tp_is_empty!55135 tp_is_empty!55137 tp!2414232))))

(assert (=> b!8058159 (= tp!2414223 e!4748915)))

(assert (= (and b!8058159 (is-Cons!75628 (toList!11963 acc!836))) b!8058342))

(declare-fun tp!2414233 () Bool)

(declare-fun b!8058343 () Bool)

(declare-fun e!4748916 () Bool)

(assert (=> b!8058343 (= e!4748916 (and tp_is_empty!55135 tp_is_empty!55137 tp!2414233))))

(assert (=> b!8058163 (= tp!2414222 e!4748916)))

(assert (= (and b!8058163 (is-Cons!75628 (t!391526 l!10976))) b!8058343))

(declare-fun b_lambda!290659 () Bool)

(assert (= b_lambda!290653 (or b!8058161 b_lambda!290659)))

(declare-fun bs!1973429 () Bool)

(declare-fun d!2399111 () Bool)

(assert (= bs!1973429 (and d!2399111 b!8058161)))

(assert (=> bs!1973429 (= (dynLambda!30281 lambda!474951 (h!82076 (toList!11963 acc!836))) (contains!21301 acc!836 (_1!38806 (h!82076 (toList!11963 acc!836)))))))

(declare-fun m!8411630 () Bool)

(assert (=> bs!1973429 m!8411630))

(assert (=> b!8058327 d!2399111))

(declare-fun b_lambda!290661 () Bool)

(assert (= b_lambda!290657 (or b!8058162 b_lambda!290661)))

(declare-fun bs!1973430 () Bool)

(declare-fun d!2399113 () Bool)

(assert (= bs!1973430 (and d!2399113 b!8058162)))

(assert (=> bs!1973430 (= (dynLambda!30281 lambda!474952 (h!82076 (t!391526 l!10976))) (contains!21301 lt!2731874 (_1!38806 (h!82076 (t!391526 l!10976)))))))

(declare-fun m!8411632 () Bool)

(assert (=> bs!1973430 m!8411632))

(assert (=> b!8058336 d!2399113))

(declare-fun b_lambda!290663 () Bool)

(assert (= b_lambda!290647 (or b!8058161 b_lambda!290663)))

(declare-fun bs!1973431 () Bool)

(declare-fun d!2399115 () Bool)

(assert (= bs!1973431 (and d!2399115 b!8058161)))

(assert (=> bs!1973431 (= (dynLambda!30281 lambda!474953 (h!82076 l!10976)) (contains!21301 lt!2731874 (_1!38806 (h!82076 l!10976))))))

(assert (=> bs!1973431 m!8411388))

(assert (=> d!2399083 d!2399115))

(declare-fun b_lambda!290665 () Bool)

(assert (= b_lambda!290645 (or b!8058161 b_lambda!290665)))

(assert (=> b!8058235 d!2399115))

(declare-fun b_lambda!290667 () Bool)

(assert (= b_lambda!290655 (or b!8058162 b_lambda!290667)))

(declare-fun bs!1973432 () Bool)

(declare-fun d!2399117 () Bool)

(assert (= bs!1973432 (and d!2399117 b!8058162)))

(assert (=> bs!1973432 (= (dynLambda!30281 lambda!474952 (h!82076 (toList!11963 lt!2731872))) (contains!21301 lt!2731874 (_1!38806 (h!82076 (toList!11963 lt!2731872)))))))

(declare-fun m!8411634 () Bool)

(assert (=> bs!1973432 m!8411634))

(assert (=> b!8058334 d!2399117))

(push 1)

(assert (not b_lambda!290667))

(assert (not b!8058229))

(assert (not bm!747651))

(assert (not b!8058263))

(assert (not b!8058227))

(assert (not b!8058222))

(assert tp_is_empty!55137)

(assert (not b_lambda!290663))

(assert (not b!8058260))

(assert (not d!2399083))

(assert (not d!2399085))

(assert (not b!8058265))

(assert (not b_lambda!290659))

(assert (not d!2399103))

(assert (not d!2399099))

(assert (not b!8058326))

(assert (not b!8058311))

(assert (not d!2399075))

(assert (not b!8058223))

(assert (not b!8058259))

(assert (not bs!1973432))

(assert (not d!2399087))

(assert (not b!8058224))

(assert (not bs!1973429))

(assert (not d!2399073))

(assert (not b!8058228))

(assert (not bm!747640))

(assert tp_is_empty!55135)

(assert (not b_lambda!290665))

(assert (not b!8058342))

(assert (not b!8058258))

(assert (not b!8058196))

(assert (not b!8058343))

(assert (not b_lambda!290661))

(assert (not bm!747649))

(assert (not b!8058257))

(assert (not bs!1973430))

(assert (not b!8058325))

(assert (not bs!1973431))

(assert (not b!8058313))

(assert (not b!8058197))

(assert (not b!8058312))

(assert (not b!8058226))

(assert (not b!8058236))

(assert (not b!8058328))

(assert (not b!8058337))

(assert (not b!8058264))

(assert (not b!8058262))

(assert (not b!8058335))

(assert (not bm!747637))

(assert (not b!8058310))

(assert (not bm!747650))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

