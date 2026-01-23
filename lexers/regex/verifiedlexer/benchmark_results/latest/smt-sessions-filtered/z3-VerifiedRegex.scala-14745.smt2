; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!758872 () Bool)

(assert start!758872)

(declare-fun b!8055821 () Bool)

(declare-fun res!3186334 () Bool)

(declare-fun e!4747183 () Bool)

(assert (=> b!8055821 (=> (not res!3186334) (not e!4747183))))

(declare-datatypes ((K!22858 0))(
  ( (K!22859 (val!32959 Int)) )
))
(declare-fun key!6222 () K!22858)

(declare-datatypes ((V!23112 0))(
  ( (V!23113 (val!32960 Int)) )
))
(declare-fun value!3131 () V!23112)

(declare-datatypes ((tuple2!70924 0))(
  ( (tuple2!70925 (_1!38765 K!22858) (_2!38765 V!23112)) )
))
(declare-datatypes ((List!75704 0))(
  ( (Nil!75578) (Cons!75578 (h!82026 tuple2!70924) (t!391476 List!75704)) )
))
(declare-datatypes ((ListMap!7327 0))(
  ( (ListMap!7328 (toList!11938 List!75704)) )
))
(declare-fun acc!1298 () ListMap!7327)

(declare-fun apply!14451 (ListMap!7327 K!22858) V!23112)

(assert (=> b!8055821 (= res!3186334 (= (apply!14451 acc!1298 key!6222) value!3131))))

(declare-fun b!8055822 () Bool)

(declare-fun e!4747185 () Bool)

(declare-fun e!4747186 () Bool)

(assert (=> b!8055822 (= e!4747185 e!4747186)))

(declare-fun res!3186327 () Bool)

(assert (=> b!8055822 (=> (not res!3186327) (not e!4747186))))

(declare-fun l!14636 () List!75704)

(declare-fun containsKey!4885 (List!75704 K!22858) Bool)

(assert (=> b!8055822 (= res!3186327 (containsKey!4885 l!14636 key!6222))))

(declare-fun b!8055823 () Bool)

(declare-fun res!3186328 () Bool)

(declare-fun e!4747184 () Bool)

(assert (=> b!8055823 (=> (not res!3186328) (not e!4747184))))

(declare-fun contains!21259 (List!75704 tuple2!70924) Bool)

(assert (=> b!8055823 (= res!3186328 (contains!21259 (t!391476 l!14636) (tuple2!70925 key!6222 value!3131)))))

(declare-fun b!8055824 () Bool)

(declare-fun e!4747180 () Bool)

(declare-fun tp!2413908 () Bool)

(assert (=> b!8055824 (= e!4747180 tp!2413908)))

(declare-fun tp_is_empty!54973 () Bool)

(declare-fun tp_is_empty!54971 () Bool)

(declare-fun e!4747178 () Bool)

(declare-fun tp!2413909 () Bool)

(declare-fun b!8055825 () Bool)

(assert (=> b!8055825 (= e!4747178 (and tp_is_empty!54971 tp_is_empty!54973 tp!2413909))))

(declare-fun res!3186335 () Bool)

(declare-fun e!4747179 () Bool)

(assert (=> start!758872 (=> (not res!3186335) (not e!4747179))))

(declare-fun noDuplicateKeys!2724 (List!75704) Bool)

(assert (=> start!758872 (= res!3186335 (noDuplicateKeys!2724 l!14636))))

(assert (=> start!758872 e!4747179))

(assert (=> start!758872 e!4747178))

(declare-fun inv!97347 (ListMap!7327) Bool)

(assert (=> start!758872 (and (inv!97347 acc!1298) e!4747180)))

(assert (=> start!758872 tp_is_empty!54971))

(assert (=> start!758872 tp_is_empty!54973))

(declare-fun b!8055826 () Bool)

(declare-fun e!4747181 () Bool)

(assert (=> b!8055826 (= e!4747184 (not e!4747181))))

(declare-fun res!3186339 () Bool)

(assert (=> b!8055826 (=> res!3186339 e!4747181)))

(assert (=> b!8055826 (= res!3186339 (not (noDuplicateKeys!2724 (t!391476 l!14636))))))

(declare-fun lt!2729721 () ListMap!7327)

(declare-fun contains!21260 (ListMap!7327 K!22858) Bool)

(assert (=> b!8055826 (not (contains!21260 lt!2729721 key!6222))))

(declare-datatypes ((Unit!172366 0))(
  ( (Unit!172367) )
))
(declare-fun lt!2729722 () Unit!172366)

(declare-fun addStillNotContains!17 (ListMap!7327 K!22858 V!23112 K!22858) Unit!172366)

(assert (=> b!8055826 (= lt!2729722 (addStillNotContains!17 acc!1298 (_1!38765 (h!82026 l!14636)) (_2!38765 (h!82026 l!14636)) key!6222))))

(declare-fun b!8055827 () Bool)

(declare-fun res!3186333 () Bool)

(assert (=> b!8055827 (=> res!3186333 e!4747181)))

(declare-fun lt!2729724 () ListMap!7327)

(assert (=> b!8055827 (= res!3186333 (not (contains!21260 lt!2729724 key!6222)))))

(declare-fun b!8055828 () Bool)

(assert (=> b!8055828 (= e!4747183 (not (containsKey!4885 l!14636 key!6222)))))

(declare-fun b!8055829 () Bool)

(declare-fun res!3186330 () Bool)

(assert (=> b!8055829 (=> (not res!3186330) (not e!4747179))))

(declare-fun addToMapMapFromBucket!2005 (List!75704 ListMap!7327) ListMap!7327)

(assert (=> b!8055829 (= res!3186330 (contains!21260 (addToMapMapFromBucket!2005 l!14636 acc!1298) key!6222))))

(declare-fun b!8055830 () Bool)

(declare-fun lt!2729723 () Bool)

(assert (=> b!8055830 (= e!4747186 (not lt!2729723))))

(declare-fun b!8055831 () Bool)

(declare-fun res!3186336 () Bool)

(assert (=> b!8055831 (=> (not res!3186336) (not e!4747186))))

(assert (=> b!8055831 (= res!3186336 (contains!21259 l!14636 (tuple2!70925 key!6222 value!3131)))))

(declare-fun b!8055832 () Bool)

(declare-fun e!4747182 () Bool)

(assert (=> b!8055832 (= e!4747179 e!4747182)))

(declare-fun res!3186338 () Bool)

(assert (=> b!8055832 (=> (not res!3186338) (not e!4747182))))

(assert (=> b!8055832 (= res!3186338 e!4747185)))

(declare-fun res!3186329 () Bool)

(assert (=> b!8055832 (=> res!3186329 e!4747185)))

(assert (=> b!8055832 (= res!3186329 e!4747183)))

(declare-fun res!3186332 () Bool)

(assert (=> b!8055832 (=> (not res!3186332) (not e!4747183))))

(assert (=> b!8055832 (= res!3186332 lt!2729723)))

(assert (=> b!8055832 (= lt!2729723 (contains!21260 acc!1298 key!6222))))

(declare-fun b!8055833 () Bool)

(assert (=> b!8055833 (= e!4747182 e!4747184)))

(declare-fun res!3186331 () Bool)

(assert (=> b!8055833 (=> (not res!3186331) (not e!4747184))))

(assert (=> b!8055833 (= res!3186331 (and (not (= (_1!38765 (h!82026 l!14636)) key!6222)) (not lt!2729723)))))

(assert (=> b!8055833 (= lt!2729724 (addToMapMapFromBucket!2005 (t!391476 l!14636) lt!2729721))))

(declare-fun +!2689 (ListMap!7327 tuple2!70924) ListMap!7327)

(assert (=> b!8055833 (= lt!2729721 (+!2689 acc!1298 (h!82026 l!14636)))))

(declare-fun b!8055834 () Bool)

(declare-fun res!3186337 () Bool)

(assert (=> b!8055834 (=> (not res!3186337) (not e!4747182))))

(get-info :version)

(assert (=> b!8055834 (= res!3186337 (not ((_ is Nil!75578) l!14636)))))

(declare-fun b!8055835 () Bool)

(assert (=> b!8055835 (= e!4747181 (containsKey!4885 (t!391476 l!14636) key!6222))))

(assert (= (and start!758872 res!3186335) b!8055829))

(assert (= (and b!8055829 res!3186330) b!8055832))

(assert (= (and b!8055832 res!3186332) b!8055821))

(assert (= (and b!8055821 res!3186334) b!8055828))

(assert (= (and b!8055832 (not res!3186329)) b!8055822))

(assert (= (and b!8055822 res!3186327) b!8055831))

(assert (= (and b!8055831 res!3186336) b!8055830))

(assert (= (and b!8055832 res!3186338) b!8055834))

(assert (= (and b!8055834 res!3186337) b!8055833))

(assert (= (and b!8055833 res!3186331) b!8055823))

(assert (= (and b!8055823 res!3186328) b!8055826))

(assert (= (and b!8055826 (not res!3186339)) b!8055827))

(assert (= (and b!8055827 (not res!3186333)) b!8055835))

(assert (= (and start!758872 ((_ is Cons!75578) l!14636)) b!8055825))

(assert (= start!758872 b!8055824))

(declare-fun m!8408774 () Bool)

(assert (=> b!8055827 m!8408774))

(declare-fun m!8408776 () Bool)

(assert (=> b!8055829 m!8408776))

(assert (=> b!8055829 m!8408776))

(declare-fun m!8408778 () Bool)

(assert (=> b!8055829 m!8408778))

(declare-fun m!8408780 () Bool)

(assert (=> b!8055822 m!8408780))

(declare-fun m!8408782 () Bool)

(assert (=> b!8055821 m!8408782))

(declare-fun m!8408784 () Bool)

(assert (=> b!8055833 m!8408784))

(declare-fun m!8408786 () Bool)

(assert (=> b!8055833 m!8408786))

(declare-fun m!8408788 () Bool)

(assert (=> b!8055826 m!8408788))

(declare-fun m!8408790 () Bool)

(assert (=> b!8055826 m!8408790))

(declare-fun m!8408792 () Bool)

(assert (=> b!8055826 m!8408792))

(declare-fun m!8408794 () Bool)

(assert (=> b!8055823 m!8408794))

(declare-fun m!8408796 () Bool)

(assert (=> b!8055832 m!8408796))

(assert (=> b!8055828 m!8408780))

(declare-fun m!8408798 () Bool)

(assert (=> start!758872 m!8408798))

(declare-fun m!8408800 () Bool)

(assert (=> start!758872 m!8408800))

(declare-fun m!8408802 () Bool)

(assert (=> b!8055835 m!8408802))

(declare-fun m!8408804 () Bool)

(assert (=> b!8055831 m!8408804))

(check-sat (not b!8055833) (not b!8055832) tp_is_empty!54973 (not b!8055826) (not start!758872) (not b!8055823) (not b!8055827) (not b!8055828) (not b!8055824) (not b!8055835) (not b!8055821) (not b!8055831) tp_is_empty!54971 (not b!8055825) (not b!8055829) (not b!8055822))
(check-sat)
(get-model)

(declare-fun b!8055876 () Bool)

(declare-fun e!4747222 () Unit!172366)

(declare-fun lt!2729746 () Unit!172366)

(assert (=> b!8055876 (= e!4747222 lt!2729746)))

(declare-fun lt!2729750 () Unit!172366)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2569 (List!75704 K!22858) Unit!172366)

(assert (=> b!8055876 (= lt!2729750 (lemmaContainsKeyImpliesGetValueByKeyDefined!2569 (toList!11938 lt!2729724) key!6222))))

(declare-datatypes ((Option!18014 0))(
  ( (None!18013) (Some!18013 (v!55358 V!23112)) )
))
(declare-fun isDefined!14547 (Option!18014) Bool)

(declare-fun getValueByKey!2798 (List!75704 K!22858) Option!18014)

(assert (=> b!8055876 (isDefined!14547 (getValueByKey!2798 (toList!11938 lt!2729724) key!6222))))

(declare-fun lt!2729747 () Unit!172366)

(assert (=> b!8055876 (= lt!2729747 lt!2729750)))

(declare-fun lemmaInListThenGetKeysListContains!1252 (List!75704 K!22858) Unit!172366)

(assert (=> b!8055876 (= lt!2729746 (lemmaInListThenGetKeysListContains!1252 (toList!11938 lt!2729724) key!6222))))

(declare-fun call!747430 () Bool)

(assert (=> b!8055876 call!747430))

(declare-fun b!8055877 () Bool)

(assert (=> b!8055877 false))

(declare-fun lt!2729748 () Unit!172366)

(declare-fun lt!2729745 () Unit!172366)

(assert (=> b!8055877 (= lt!2729748 lt!2729745)))

(declare-fun containsKey!4887 (List!75704 K!22858) Bool)

(assert (=> b!8055877 (containsKey!4887 (toList!11938 lt!2729724) key!6222)))

(declare-fun lemmaInGetKeysListThenContainsKey!1257 (List!75704 K!22858) Unit!172366)

(assert (=> b!8055877 (= lt!2729745 (lemmaInGetKeysListThenContainsKey!1257 (toList!11938 lt!2729724) key!6222))))

(declare-fun e!4747221 () Unit!172366)

(declare-fun Unit!172372 () Unit!172366)

(assert (=> b!8055877 (= e!4747221 Unit!172372)))

(declare-fun bm!747425 () Bool)

(declare-datatypes ((List!75706 0))(
  ( (Nil!75580) (Cons!75580 (h!82028 K!22858) (t!391478 List!75706)) )
))
(declare-fun e!4747225 () List!75706)

(declare-fun contains!21262 (List!75706 K!22858) Bool)

(assert (=> bm!747425 (= call!747430 (contains!21262 e!4747225 key!6222))))

(declare-fun c!1476524 () Bool)

(declare-fun c!1476523 () Bool)

(assert (=> bm!747425 (= c!1476524 c!1476523)))

(declare-fun b!8055878 () Bool)

(declare-fun getKeysList!1257 (List!75704) List!75706)

(assert (=> b!8055878 (= e!4747225 (getKeysList!1257 (toList!11938 lt!2729724)))))

(declare-fun b!8055879 () Bool)

(assert (=> b!8055879 (= e!4747222 e!4747221)))

(declare-fun c!1476522 () Bool)

(assert (=> b!8055879 (= c!1476522 call!747430)))

(declare-fun b!8055880 () Bool)

(declare-fun Unit!172377 () Unit!172366)

(assert (=> b!8055880 (= e!4747221 Unit!172377)))

(declare-fun b!8055881 () Bool)

(declare-fun e!4747226 () Bool)

(declare-fun keys!30870 (ListMap!7327) List!75706)

(assert (=> b!8055881 (= e!4747226 (contains!21262 (keys!30870 lt!2729724) key!6222))))

(declare-fun b!8055882 () Bool)

(assert (=> b!8055882 (= e!4747225 (keys!30870 lt!2729724))))

(declare-fun d!2398512 () Bool)

(declare-fun e!4747223 () Bool)

(assert (=> d!2398512 e!4747223))

(declare-fun res!3186369 () Bool)

(assert (=> d!2398512 (=> res!3186369 e!4747223)))

(declare-fun e!4747224 () Bool)

(assert (=> d!2398512 (= res!3186369 e!4747224)))

(declare-fun res!3186370 () Bool)

(assert (=> d!2398512 (=> (not res!3186370) (not e!4747224))))

(declare-fun lt!2729749 () Bool)

(assert (=> d!2398512 (= res!3186370 (not lt!2729749))))

(declare-fun lt!2729752 () Bool)

(assert (=> d!2398512 (= lt!2729749 lt!2729752)))

(declare-fun lt!2729751 () Unit!172366)

(assert (=> d!2398512 (= lt!2729751 e!4747222)))

(assert (=> d!2398512 (= c!1476523 lt!2729752)))

(assert (=> d!2398512 (= lt!2729752 (containsKey!4887 (toList!11938 lt!2729724) key!6222))))

(assert (=> d!2398512 (= (contains!21260 lt!2729724 key!6222) lt!2729749)))

(declare-fun b!8055883 () Bool)

(assert (=> b!8055883 (= e!4747223 e!4747226)))

(declare-fun res!3186368 () Bool)

(assert (=> b!8055883 (=> (not res!3186368) (not e!4747226))))

(assert (=> b!8055883 (= res!3186368 (isDefined!14547 (getValueByKey!2798 (toList!11938 lt!2729724) key!6222)))))

(declare-fun b!8055884 () Bool)

(assert (=> b!8055884 (= e!4747224 (not (contains!21262 (keys!30870 lt!2729724) key!6222)))))

(assert (= (and d!2398512 c!1476523) b!8055876))

(assert (= (and d!2398512 (not c!1476523)) b!8055879))

(assert (= (and b!8055879 c!1476522) b!8055877))

(assert (= (and b!8055879 (not c!1476522)) b!8055880))

(assert (= (or b!8055876 b!8055879) bm!747425))

(assert (= (and bm!747425 c!1476524) b!8055878))

(assert (= (and bm!747425 (not c!1476524)) b!8055882))

(assert (= (and d!2398512 res!3186370) b!8055884))

(assert (= (and d!2398512 (not res!3186369)) b!8055883))

(assert (= (and b!8055883 res!3186368) b!8055881))

(declare-fun m!8408826 () Bool)

(assert (=> b!8055883 m!8408826))

(assert (=> b!8055883 m!8408826))

(declare-fun m!8408828 () Bool)

(assert (=> b!8055883 m!8408828))

(declare-fun m!8408830 () Bool)

(assert (=> b!8055876 m!8408830))

(assert (=> b!8055876 m!8408826))

(assert (=> b!8055876 m!8408826))

(assert (=> b!8055876 m!8408828))

(declare-fun m!8408832 () Bool)

(assert (=> b!8055876 m!8408832))

(declare-fun m!8408834 () Bool)

(assert (=> b!8055881 m!8408834))

(assert (=> b!8055881 m!8408834))

(declare-fun m!8408836 () Bool)

(assert (=> b!8055881 m!8408836))

(declare-fun m!8408838 () Bool)

(assert (=> b!8055878 m!8408838))

(declare-fun m!8408840 () Bool)

(assert (=> b!8055877 m!8408840))

(declare-fun m!8408842 () Bool)

(assert (=> b!8055877 m!8408842))

(declare-fun m!8408844 () Bool)

(assert (=> bm!747425 m!8408844))

(assert (=> b!8055884 m!8408834))

(assert (=> b!8055884 m!8408834))

(assert (=> b!8055884 m!8408836))

(assert (=> b!8055882 m!8408834))

(assert (=> d!2398512 m!8408840))

(assert (=> b!8055827 d!2398512))

(declare-fun d!2398528 () Bool)

(declare-fun res!3186381 () Bool)

(declare-fun e!4747243 () Bool)

(assert (=> d!2398528 (=> res!3186381 e!4747243)))

(assert (=> d!2398528 (= res!3186381 (not ((_ is Cons!75578) (t!391476 l!14636))))))

(assert (=> d!2398528 (= (noDuplicateKeys!2724 (t!391476 l!14636)) e!4747243)))

(declare-fun b!8055907 () Bool)

(declare-fun e!4747244 () Bool)

(assert (=> b!8055907 (= e!4747243 e!4747244)))

(declare-fun res!3186382 () Bool)

(assert (=> b!8055907 (=> (not res!3186382) (not e!4747244))))

(assert (=> b!8055907 (= res!3186382 (not (containsKey!4885 (t!391476 (t!391476 l!14636)) (_1!38765 (h!82026 (t!391476 l!14636))))))))

(declare-fun b!8055908 () Bool)

(assert (=> b!8055908 (= e!4747244 (noDuplicateKeys!2724 (t!391476 (t!391476 l!14636))))))

(assert (= (and d!2398528 (not res!3186381)) b!8055907))

(assert (= (and b!8055907 res!3186382) b!8055908))

(declare-fun m!8408846 () Bool)

(assert (=> b!8055907 m!8408846))

(declare-fun m!8408848 () Bool)

(assert (=> b!8055908 m!8408848))

(assert (=> b!8055826 d!2398528))

(declare-fun b!8055909 () Bool)

(declare-fun e!4747246 () Unit!172366)

(declare-fun lt!2729770 () Unit!172366)

(assert (=> b!8055909 (= e!4747246 lt!2729770)))

(declare-fun lt!2729774 () Unit!172366)

(assert (=> b!8055909 (= lt!2729774 (lemmaContainsKeyImpliesGetValueByKeyDefined!2569 (toList!11938 lt!2729721) key!6222))))

(assert (=> b!8055909 (isDefined!14547 (getValueByKey!2798 (toList!11938 lt!2729721) key!6222))))

(declare-fun lt!2729771 () Unit!172366)

(assert (=> b!8055909 (= lt!2729771 lt!2729774)))

(assert (=> b!8055909 (= lt!2729770 (lemmaInListThenGetKeysListContains!1252 (toList!11938 lt!2729721) key!6222))))

(declare-fun call!747433 () Bool)

(assert (=> b!8055909 call!747433))

(declare-fun b!8055910 () Bool)

(assert (=> b!8055910 false))

(declare-fun lt!2729772 () Unit!172366)

(declare-fun lt!2729769 () Unit!172366)

(assert (=> b!8055910 (= lt!2729772 lt!2729769)))

(assert (=> b!8055910 (containsKey!4887 (toList!11938 lt!2729721) key!6222)))

(assert (=> b!8055910 (= lt!2729769 (lemmaInGetKeysListThenContainsKey!1257 (toList!11938 lt!2729721) key!6222))))

(declare-fun e!4747245 () Unit!172366)

(declare-fun Unit!172384 () Unit!172366)

(assert (=> b!8055910 (= e!4747245 Unit!172384)))

(declare-fun bm!747428 () Bool)

(declare-fun e!4747249 () List!75706)

(assert (=> bm!747428 (= call!747433 (contains!21262 e!4747249 key!6222))))

(declare-fun c!1476533 () Bool)

(declare-fun c!1476532 () Bool)

(assert (=> bm!747428 (= c!1476533 c!1476532)))

(declare-fun b!8055911 () Bool)

(assert (=> b!8055911 (= e!4747249 (getKeysList!1257 (toList!11938 lt!2729721)))))

(declare-fun b!8055912 () Bool)

(assert (=> b!8055912 (= e!4747246 e!4747245)))

(declare-fun c!1476531 () Bool)

(assert (=> b!8055912 (= c!1476531 call!747433)))

(declare-fun b!8055913 () Bool)

(declare-fun Unit!172385 () Unit!172366)

(assert (=> b!8055913 (= e!4747245 Unit!172385)))

(declare-fun b!8055914 () Bool)

(declare-fun e!4747250 () Bool)

(assert (=> b!8055914 (= e!4747250 (contains!21262 (keys!30870 lt!2729721) key!6222))))

(declare-fun b!8055915 () Bool)

(assert (=> b!8055915 (= e!4747249 (keys!30870 lt!2729721))))

(declare-fun d!2398530 () Bool)

(declare-fun e!4747247 () Bool)

(assert (=> d!2398530 e!4747247))

(declare-fun res!3186384 () Bool)

(assert (=> d!2398530 (=> res!3186384 e!4747247)))

(declare-fun e!4747248 () Bool)

(assert (=> d!2398530 (= res!3186384 e!4747248)))

(declare-fun res!3186385 () Bool)

(assert (=> d!2398530 (=> (not res!3186385) (not e!4747248))))

(declare-fun lt!2729773 () Bool)

(assert (=> d!2398530 (= res!3186385 (not lt!2729773))))

(declare-fun lt!2729776 () Bool)

(assert (=> d!2398530 (= lt!2729773 lt!2729776)))

(declare-fun lt!2729775 () Unit!172366)

(assert (=> d!2398530 (= lt!2729775 e!4747246)))

(assert (=> d!2398530 (= c!1476532 lt!2729776)))

(assert (=> d!2398530 (= lt!2729776 (containsKey!4887 (toList!11938 lt!2729721) key!6222))))

(assert (=> d!2398530 (= (contains!21260 lt!2729721 key!6222) lt!2729773)))

(declare-fun b!8055916 () Bool)

(assert (=> b!8055916 (= e!4747247 e!4747250)))

(declare-fun res!3186383 () Bool)

(assert (=> b!8055916 (=> (not res!3186383) (not e!4747250))))

(assert (=> b!8055916 (= res!3186383 (isDefined!14547 (getValueByKey!2798 (toList!11938 lt!2729721) key!6222)))))

(declare-fun b!8055917 () Bool)

(assert (=> b!8055917 (= e!4747248 (not (contains!21262 (keys!30870 lt!2729721) key!6222)))))

(assert (= (and d!2398530 c!1476532) b!8055909))

(assert (= (and d!2398530 (not c!1476532)) b!8055912))

(assert (= (and b!8055912 c!1476531) b!8055910))

(assert (= (and b!8055912 (not c!1476531)) b!8055913))

(assert (= (or b!8055909 b!8055912) bm!747428))

(assert (= (and bm!747428 c!1476533) b!8055911))

(assert (= (and bm!747428 (not c!1476533)) b!8055915))

(assert (= (and d!2398530 res!3186385) b!8055917))

(assert (= (and d!2398530 (not res!3186384)) b!8055916))

(assert (= (and b!8055916 res!3186383) b!8055914))

(declare-fun m!8408850 () Bool)

(assert (=> b!8055916 m!8408850))

(assert (=> b!8055916 m!8408850))

(declare-fun m!8408852 () Bool)

(assert (=> b!8055916 m!8408852))

(declare-fun m!8408854 () Bool)

(assert (=> b!8055909 m!8408854))

(assert (=> b!8055909 m!8408850))

(assert (=> b!8055909 m!8408850))

(assert (=> b!8055909 m!8408852))

(declare-fun m!8408856 () Bool)

(assert (=> b!8055909 m!8408856))

(declare-fun m!8408858 () Bool)

(assert (=> b!8055914 m!8408858))

(assert (=> b!8055914 m!8408858))

(declare-fun m!8408860 () Bool)

(assert (=> b!8055914 m!8408860))

(declare-fun m!8408862 () Bool)

(assert (=> b!8055911 m!8408862))

(declare-fun m!8408864 () Bool)

(assert (=> b!8055910 m!8408864))

(declare-fun m!8408866 () Bool)

(assert (=> b!8055910 m!8408866))

(declare-fun m!8408868 () Bool)

(assert (=> bm!747428 m!8408868))

(assert (=> b!8055917 m!8408858))

(assert (=> b!8055917 m!8408858))

(assert (=> b!8055917 m!8408860))

(assert (=> b!8055915 m!8408858))

(assert (=> d!2398530 m!8408864))

(assert (=> b!8055826 d!2398530))

(declare-fun d!2398532 () Bool)

(assert (=> d!2398532 (not (contains!21260 (+!2689 acc!1298 (tuple2!70925 (_1!38765 (h!82026 l!14636)) (_2!38765 (h!82026 l!14636)))) key!6222))))

(declare-fun lt!2729787 () Unit!172366)

(declare-fun choose!60554 (ListMap!7327 K!22858 V!23112 K!22858) Unit!172366)

(assert (=> d!2398532 (= lt!2729787 (choose!60554 acc!1298 (_1!38765 (h!82026 l!14636)) (_2!38765 (h!82026 l!14636)) key!6222))))

(declare-fun e!4747259 () Bool)

(assert (=> d!2398532 e!4747259))

(declare-fun res!3186391 () Bool)

(assert (=> d!2398532 (=> (not res!3186391) (not e!4747259))))

(assert (=> d!2398532 (= res!3186391 (not (contains!21260 acc!1298 key!6222)))))

(assert (=> d!2398532 (= (addStillNotContains!17 acc!1298 (_1!38765 (h!82026 l!14636)) (_2!38765 (h!82026 l!14636)) key!6222) lt!2729787)))

(declare-fun b!8055930 () Bool)

(assert (=> b!8055930 (= e!4747259 (not (= (_1!38765 (h!82026 l!14636)) key!6222)))))

(assert (= (and d!2398532 res!3186391) b!8055930))

(declare-fun m!8408890 () Bool)

(assert (=> d!2398532 m!8408890))

(assert (=> d!2398532 m!8408890))

(declare-fun m!8408892 () Bool)

(assert (=> d!2398532 m!8408892))

(declare-fun m!8408894 () Bool)

(assert (=> d!2398532 m!8408894))

(assert (=> d!2398532 m!8408796))

(assert (=> b!8055826 d!2398532))

(declare-fun lt!2729790 () Bool)

(declare-fun d!2398536 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!16124 (List!75704) (InoxSet tuple2!70924))

(assert (=> d!2398536 (= lt!2729790 (select (content!16124 (t!391476 l!14636)) (tuple2!70925 key!6222 value!3131)))))

(declare-fun e!4747264 () Bool)

(assert (=> d!2398536 (= lt!2729790 e!4747264)))

(declare-fun res!3186396 () Bool)

(assert (=> d!2398536 (=> (not res!3186396) (not e!4747264))))

(assert (=> d!2398536 (= res!3186396 ((_ is Cons!75578) (t!391476 l!14636)))))

(assert (=> d!2398536 (= (contains!21259 (t!391476 l!14636) (tuple2!70925 key!6222 value!3131)) lt!2729790)))

(declare-fun b!8055935 () Bool)

(declare-fun e!4747265 () Bool)

(assert (=> b!8055935 (= e!4747264 e!4747265)))

(declare-fun res!3186397 () Bool)

(assert (=> b!8055935 (=> res!3186397 e!4747265)))

(assert (=> b!8055935 (= res!3186397 (= (h!82026 (t!391476 l!14636)) (tuple2!70925 key!6222 value!3131)))))

(declare-fun b!8055936 () Bool)

(assert (=> b!8055936 (= e!4747265 (contains!21259 (t!391476 (t!391476 l!14636)) (tuple2!70925 key!6222 value!3131)))))

(assert (= (and d!2398536 res!3186396) b!8055935))

(assert (= (and b!8055935 (not res!3186397)) b!8055936))

(declare-fun m!8408896 () Bool)

(assert (=> d!2398536 m!8408896))

(declare-fun m!8408898 () Bool)

(assert (=> d!2398536 m!8408898))

(declare-fun m!8408900 () Bool)

(assert (=> b!8055936 m!8408900))

(assert (=> b!8055823 d!2398536))

(declare-fun b!8056014 () Bool)

(assert (=> b!8056014 true))

(declare-fun bs!1973084 () Bool)

(declare-fun b!8056018 () Bool)

(assert (= bs!1973084 (and b!8056018 b!8056014)))

(declare-fun lambda!474265 () Int)

(declare-fun lambda!474264 () Int)

(assert (=> bs!1973084 (= lambda!474265 lambda!474264)))

(assert (=> b!8056018 true))

(declare-fun lt!2729964 () ListMap!7327)

(declare-fun lambda!474266 () Int)

(assert (=> bs!1973084 (= (= lt!2729964 lt!2729721) (= lambda!474266 lambda!474264))))

(assert (=> b!8056018 (= (= lt!2729964 lt!2729721) (= lambda!474266 lambda!474265))))

(assert (=> b!8056018 true))

(declare-fun bs!1973085 () Bool)

(declare-fun d!2398538 () Bool)

(assert (= bs!1973085 (and d!2398538 b!8056014)))

(declare-fun lt!2729966 () ListMap!7327)

(declare-fun lambda!474267 () Int)

(assert (=> bs!1973085 (= (= lt!2729966 lt!2729721) (= lambda!474267 lambda!474264))))

(declare-fun bs!1973086 () Bool)

(assert (= bs!1973086 (and d!2398538 b!8056018)))

(assert (=> bs!1973086 (= (= lt!2729966 lt!2729721) (= lambda!474267 lambda!474265))))

(assert (=> bs!1973086 (= (= lt!2729966 lt!2729964) (= lambda!474267 lambda!474266))))

(assert (=> d!2398538 true))

(declare-fun e!4747314 () ListMap!7327)

(assert (=> b!8056014 (= e!4747314 lt!2729721)))

(declare-fun lt!2729972 () Unit!172366)

(declare-fun call!747457 () Unit!172366)

(assert (=> b!8056014 (= lt!2729972 call!747457)))

(declare-fun call!747456 () Bool)

(assert (=> b!8056014 call!747456))

(declare-fun lt!2729974 () Unit!172366)

(assert (=> b!8056014 (= lt!2729974 lt!2729972)))

(declare-fun call!747458 () Bool)

(assert (=> b!8056014 call!747458))

(declare-fun lt!2729958 () Unit!172366)

(declare-fun Unit!172389 () Unit!172366)

(assert (=> b!8056014 (= lt!2729958 Unit!172389)))

(declare-fun b!8056015 () Bool)

(declare-fun e!4747315 () Bool)

(declare-fun invariantList!1949 (List!75704) Bool)

(assert (=> b!8056015 (= e!4747315 (invariantList!1949 (toList!11938 lt!2729966)))))

(declare-fun b!8056016 () Bool)

(declare-fun e!4747316 () Bool)

(declare-fun forall!18520 (List!75704 Int) Bool)

(assert (=> b!8056016 (= e!4747316 (forall!18520 (toList!11938 lt!2729721) lambda!474266))))

(declare-fun c!1476552 () Bool)

(declare-fun bm!747451 () Bool)

(assert (=> bm!747451 (= call!747456 (forall!18520 (ite c!1476552 (toList!11938 lt!2729721) (t!391476 l!14636)) (ite c!1476552 lambda!474264 lambda!474266)))))

(assert (=> d!2398538 e!4747315))

(declare-fun res!3186436 () Bool)

(assert (=> d!2398538 (=> (not res!3186436) (not e!4747315))))

(assert (=> d!2398538 (= res!3186436 (forall!18520 (t!391476 l!14636) lambda!474267))))

(assert (=> d!2398538 (= lt!2729966 e!4747314)))

(assert (=> d!2398538 (= c!1476552 ((_ is Nil!75578) (t!391476 l!14636)))))

(assert (=> d!2398538 (noDuplicateKeys!2724 (t!391476 l!14636))))

(assert (=> d!2398538 (= (addToMapMapFromBucket!2005 (t!391476 l!14636) lt!2729721) lt!2729966)))

(declare-fun b!8056017 () Bool)

(declare-fun res!3186438 () Bool)

(assert (=> b!8056017 (=> (not res!3186438) (not e!4747315))))

(assert (=> b!8056017 (= res!3186438 (forall!18520 (toList!11938 lt!2729721) lambda!474267))))

(assert (=> b!8056018 (= e!4747314 lt!2729964)))

(declare-fun lt!2729967 () ListMap!7327)

(assert (=> b!8056018 (= lt!2729967 (+!2689 lt!2729721 (h!82026 (t!391476 l!14636))))))

(assert (=> b!8056018 (= lt!2729964 (addToMapMapFromBucket!2005 (t!391476 (t!391476 l!14636)) (+!2689 lt!2729721 (h!82026 (t!391476 l!14636)))))))

(declare-fun lt!2729969 () Unit!172366)

(assert (=> b!8056018 (= lt!2729969 call!747457)))

(assert (=> b!8056018 (forall!18520 (toList!11938 lt!2729721) lambda!474265)))

(declare-fun lt!2729976 () Unit!172366)

(assert (=> b!8056018 (= lt!2729976 lt!2729969)))

(assert (=> b!8056018 call!747458))

(declare-fun lt!2729973 () Unit!172366)

(declare-fun Unit!172390 () Unit!172366)

(assert (=> b!8056018 (= lt!2729973 Unit!172390)))

(assert (=> b!8056018 (forall!18520 (t!391476 (t!391476 l!14636)) lambda!474266)))

(declare-fun lt!2729963 () Unit!172366)

(declare-fun Unit!172391 () Unit!172366)

(assert (=> b!8056018 (= lt!2729963 Unit!172391)))

(declare-fun lt!2729956 () Unit!172366)

(declare-fun Unit!172392 () Unit!172366)

(assert (=> b!8056018 (= lt!2729956 Unit!172392)))

(declare-fun lt!2729970 () Unit!172366)

(declare-fun forallContained!4674 (List!75704 Int tuple2!70924) Unit!172366)

(assert (=> b!8056018 (= lt!2729970 (forallContained!4674 (toList!11938 lt!2729967) lambda!474266 (h!82026 (t!391476 l!14636))))))

(assert (=> b!8056018 (contains!21260 lt!2729967 (_1!38765 (h!82026 (t!391476 l!14636))))))

(declare-fun lt!2729959 () Unit!172366)

(declare-fun Unit!172393 () Unit!172366)

(assert (=> b!8056018 (= lt!2729959 Unit!172393)))

(assert (=> b!8056018 (contains!21260 lt!2729964 (_1!38765 (h!82026 (t!391476 l!14636))))))

(declare-fun lt!2729968 () Unit!172366)

(declare-fun Unit!172394 () Unit!172366)

(assert (=> b!8056018 (= lt!2729968 Unit!172394)))

(assert (=> b!8056018 call!747456))

(declare-fun lt!2729957 () Unit!172366)

(declare-fun Unit!172395 () Unit!172366)

(assert (=> b!8056018 (= lt!2729957 Unit!172395)))

(assert (=> b!8056018 (forall!18520 (toList!11938 lt!2729967) lambda!474266)))

(declare-fun lt!2729962 () Unit!172366)

(declare-fun Unit!172396 () Unit!172366)

(assert (=> b!8056018 (= lt!2729962 Unit!172396)))

(declare-fun lt!2729961 () Unit!172366)

(declare-fun Unit!172397 () Unit!172366)

(assert (=> b!8056018 (= lt!2729961 Unit!172397)))

(declare-fun lt!2729960 () Unit!172366)

(declare-fun addForallContainsKeyThenBeforeAdding!1099 (ListMap!7327 ListMap!7327 K!22858 V!23112) Unit!172366)

(assert (=> b!8056018 (= lt!2729960 (addForallContainsKeyThenBeforeAdding!1099 lt!2729721 lt!2729964 (_1!38765 (h!82026 (t!391476 l!14636))) (_2!38765 (h!82026 (t!391476 l!14636)))))))

(assert (=> b!8056018 (forall!18520 (toList!11938 lt!2729721) lambda!474266)))

(declare-fun lt!2729971 () Unit!172366)

(assert (=> b!8056018 (= lt!2729971 lt!2729960)))

(assert (=> b!8056018 (forall!18520 (toList!11938 lt!2729721) lambda!474266)))

(declare-fun lt!2729975 () Unit!172366)

(declare-fun Unit!172398 () Unit!172366)

(assert (=> b!8056018 (= lt!2729975 Unit!172398)))

(declare-fun res!3186437 () Bool)

(assert (=> b!8056018 (= res!3186437 (forall!18520 (t!391476 l!14636) lambda!474266))))

(assert (=> b!8056018 (=> (not res!3186437) (not e!4747316))))

(assert (=> b!8056018 e!4747316))

(declare-fun lt!2729965 () Unit!172366)

(declare-fun Unit!172399 () Unit!172366)

(assert (=> b!8056018 (= lt!2729965 Unit!172399)))

(declare-fun bm!747452 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!1101 (ListMap!7327) Unit!172366)

(assert (=> bm!747452 (= call!747457 (lemmaContainsAllItsOwnKeys!1101 lt!2729721))))

(declare-fun bm!747453 () Bool)

(assert (=> bm!747453 (= call!747458 (forall!18520 (ite c!1476552 (toList!11938 lt!2729721) (toList!11938 lt!2729967)) (ite c!1476552 lambda!474264 lambda!474266)))))

(assert (= (and d!2398538 c!1476552) b!8056014))

(assert (= (and d!2398538 (not c!1476552)) b!8056018))

(assert (= (and b!8056018 res!3186437) b!8056016))

(assert (= (or b!8056014 b!8056018) bm!747451))

(assert (= (or b!8056014 b!8056018) bm!747453))

(assert (= (or b!8056014 b!8056018) bm!747452))

(assert (= (and d!2398538 res!3186436) b!8056017))

(assert (= (and b!8056017 res!3186438) b!8056015))

(declare-fun m!8409048 () Bool)

(assert (=> b!8056018 m!8409048))

(declare-fun m!8409050 () Bool)

(assert (=> b!8056018 m!8409050))

(declare-fun m!8409052 () Bool)

(assert (=> b!8056018 m!8409052))

(assert (=> b!8056018 m!8409048))

(declare-fun m!8409054 () Bool)

(assert (=> b!8056018 m!8409054))

(declare-fun m!8409056 () Bool)

(assert (=> b!8056018 m!8409056))

(declare-fun m!8409058 () Bool)

(assert (=> b!8056018 m!8409058))

(declare-fun m!8409060 () Bool)

(assert (=> b!8056018 m!8409060))

(declare-fun m!8409062 () Bool)

(assert (=> b!8056018 m!8409062))

(declare-fun m!8409064 () Bool)

(assert (=> b!8056018 m!8409064))

(declare-fun m!8409066 () Bool)

(assert (=> b!8056018 m!8409066))

(assert (=> b!8056018 m!8409056))

(declare-fun m!8409068 () Bool)

(assert (=> b!8056018 m!8409068))

(declare-fun m!8409070 () Bool)

(assert (=> bm!747453 m!8409070))

(declare-fun m!8409072 () Bool)

(assert (=> b!8056015 m!8409072))

(assert (=> b!8056016 m!8409056))

(declare-fun m!8409074 () Bool)

(assert (=> d!2398538 m!8409074))

(assert (=> d!2398538 m!8408788))

(declare-fun m!8409076 () Bool)

(assert (=> b!8056017 m!8409076))

(declare-fun m!8409078 () Bool)

(assert (=> bm!747451 m!8409078))

(declare-fun m!8409080 () Bool)

(assert (=> bm!747452 m!8409080))

(assert (=> b!8055833 d!2398538))

(declare-fun d!2398554 () Bool)

(declare-fun e!4747319 () Bool)

(assert (=> d!2398554 e!4747319))

(declare-fun res!3186444 () Bool)

(assert (=> d!2398554 (=> (not res!3186444) (not e!4747319))))

(declare-fun lt!2729986 () ListMap!7327)

(assert (=> d!2398554 (= res!3186444 (contains!21260 lt!2729986 (_1!38765 (h!82026 l!14636))))))

(declare-fun lt!2729987 () List!75704)

(assert (=> d!2398554 (= lt!2729986 (ListMap!7328 lt!2729987))))

(declare-fun lt!2729985 () Unit!172366)

(declare-fun lt!2729988 () Unit!172366)

(assert (=> d!2398554 (= lt!2729985 lt!2729988)))

(assert (=> d!2398554 (= (getValueByKey!2798 lt!2729987 (_1!38765 (h!82026 l!14636))) (Some!18013 (_2!38765 (h!82026 l!14636))))))

(declare-fun lemmaContainsTupThenGetReturnValue!1290 (List!75704 K!22858 V!23112) Unit!172366)

(assert (=> d!2398554 (= lt!2729988 (lemmaContainsTupThenGetReturnValue!1290 lt!2729987 (_1!38765 (h!82026 l!14636)) (_2!38765 (h!82026 l!14636))))))

(declare-fun insertNoDuplicatedKeys!798 (List!75704 K!22858 V!23112) List!75704)

(assert (=> d!2398554 (= lt!2729987 (insertNoDuplicatedKeys!798 (toList!11938 acc!1298) (_1!38765 (h!82026 l!14636)) (_2!38765 (h!82026 l!14636))))))

(assert (=> d!2398554 (= (+!2689 acc!1298 (h!82026 l!14636)) lt!2729986)))

(declare-fun b!8056025 () Bool)

(declare-fun res!3186443 () Bool)

(assert (=> b!8056025 (=> (not res!3186443) (not e!4747319))))

(assert (=> b!8056025 (= res!3186443 (= (getValueByKey!2798 (toList!11938 lt!2729986) (_1!38765 (h!82026 l!14636))) (Some!18013 (_2!38765 (h!82026 l!14636)))))))

(declare-fun b!8056026 () Bool)

(assert (=> b!8056026 (= e!4747319 (contains!21259 (toList!11938 lt!2729986) (h!82026 l!14636)))))

(assert (= (and d!2398554 res!3186444) b!8056025))

(assert (= (and b!8056025 res!3186443) b!8056026))

(declare-fun m!8409082 () Bool)

(assert (=> d!2398554 m!8409082))

(declare-fun m!8409084 () Bool)

(assert (=> d!2398554 m!8409084))

(declare-fun m!8409086 () Bool)

(assert (=> d!2398554 m!8409086))

(declare-fun m!8409088 () Bool)

(assert (=> d!2398554 m!8409088))

(declare-fun m!8409090 () Bool)

(assert (=> b!8056025 m!8409090))

(declare-fun m!8409092 () Bool)

(assert (=> b!8056026 m!8409092))

(assert (=> b!8055833 d!2398554))

(declare-fun d!2398556 () Bool)

(declare-fun res!3186449 () Bool)

(declare-fun e!4747324 () Bool)

(assert (=> d!2398556 (=> res!3186449 e!4747324)))

(assert (=> d!2398556 (= res!3186449 (and ((_ is Cons!75578) l!14636) (= (_1!38765 (h!82026 l!14636)) key!6222)))))

(assert (=> d!2398556 (= (containsKey!4885 l!14636 key!6222) e!4747324)))

(declare-fun b!8056031 () Bool)

(declare-fun e!4747325 () Bool)

(assert (=> b!8056031 (= e!4747324 e!4747325)))

(declare-fun res!3186450 () Bool)

(assert (=> b!8056031 (=> (not res!3186450) (not e!4747325))))

(assert (=> b!8056031 (= res!3186450 ((_ is Cons!75578) l!14636))))

(declare-fun b!8056032 () Bool)

(assert (=> b!8056032 (= e!4747325 (containsKey!4885 (t!391476 l!14636) key!6222))))

(assert (= (and d!2398556 (not res!3186449)) b!8056031))

(assert (= (and b!8056031 res!3186450) b!8056032))

(assert (=> b!8056032 m!8408802))

(assert (=> b!8055822 d!2398556))

(declare-fun d!2398558 () Bool)

(declare-fun res!3186451 () Bool)

(declare-fun e!4747326 () Bool)

(assert (=> d!2398558 (=> res!3186451 e!4747326)))

(assert (=> d!2398558 (= res!3186451 (and ((_ is Cons!75578) (t!391476 l!14636)) (= (_1!38765 (h!82026 (t!391476 l!14636))) key!6222)))))

(assert (=> d!2398558 (= (containsKey!4885 (t!391476 l!14636) key!6222) e!4747326)))

(declare-fun b!8056033 () Bool)

(declare-fun e!4747327 () Bool)

(assert (=> b!8056033 (= e!4747326 e!4747327)))

(declare-fun res!3186452 () Bool)

(assert (=> b!8056033 (=> (not res!3186452) (not e!4747327))))

(assert (=> b!8056033 (= res!3186452 ((_ is Cons!75578) (t!391476 l!14636)))))

(declare-fun b!8056034 () Bool)

(assert (=> b!8056034 (= e!4747327 (containsKey!4885 (t!391476 (t!391476 l!14636)) key!6222))))

(assert (= (and d!2398558 (not res!3186451)) b!8056033))

(assert (= (and b!8056033 res!3186452) b!8056034))

(declare-fun m!8409094 () Bool)

(assert (=> b!8056034 m!8409094))

(assert (=> b!8055835 d!2398558))

(declare-fun d!2398560 () Bool)

(declare-fun lt!2729989 () Bool)

(assert (=> d!2398560 (= lt!2729989 (select (content!16124 l!14636) (tuple2!70925 key!6222 value!3131)))))

(declare-fun e!4747328 () Bool)

(assert (=> d!2398560 (= lt!2729989 e!4747328)))

(declare-fun res!3186453 () Bool)

(assert (=> d!2398560 (=> (not res!3186453) (not e!4747328))))

(assert (=> d!2398560 (= res!3186453 ((_ is Cons!75578) l!14636))))

(assert (=> d!2398560 (= (contains!21259 l!14636 (tuple2!70925 key!6222 value!3131)) lt!2729989)))

(declare-fun b!8056035 () Bool)

(declare-fun e!4747329 () Bool)

(assert (=> b!8056035 (= e!4747328 e!4747329)))

(declare-fun res!3186454 () Bool)

(assert (=> b!8056035 (=> res!3186454 e!4747329)))

(assert (=> b!8056035 (= res!3186454 (= (h!82026 l!14636) (tuple2!70925 key!6222 value!3131)))))

(declare-fun b!8056036 () Bool)

(assert (=> b!8056036 (= e!4747329 (contains!21259 (t!391476 l!14636) (tuple2!70925 key!6222 value!3131)))))

(assert (= (and d!2398560 res!3186453) b!8056035))

(assert (= (and b!8056035 (not res!3186454)) b!8056036))

(declare-fun m!8409096 () Bool)

(assert (=> d!2398560 m!8409096))

(declare-fun m!8409098 () Bool)

(assert (=> d!2398560 m!8409098))

(assert (=> b!8056036 m!8408794))

(assert (=> b!8055831 d!2398560))

(declare-fun d!2398562 () Bool)

(declare-fun res!3186455 () Bool)

(declare-fun e!4747330 () Bool)

(assert (=> d!2398562 (=> res!3186455 e!4747330)))

(assert (=> d!2398562 (= res!3186455 (not ((_ is Cons!75578) l!14636)))))

(assert (=> d!2398562 (= (noDuplicateKeys!2724 l!14636) e!4747330)))

(declare-fun b!8056037 () Bool)

(declare-fun e!4747331 () Bool)

(assert (=> b!8056037 (= e!4747330 e!4747331)))

(declare-fun res!3186456 () Bool)

(assert (=> b!8056037 (=> (not res!3186456) (not e!4747331))))

(assert (=> b!8056037 (= res!3186456 (not (containsKey!4885 (t!391476 l!14636) (_1!38765 (h!82026 l!14636)))))))

(declare-fun b!8056038 () Bool)

(assert (=> b!8056038 (= e!4747331 (noDuplicateKeys!2724 (t!391476 l!14636)))))

(assert (= (and d!2398562 (not res!3186455)) b!8056037))

(assert (= (and b!8056037 res!3186456) b!8056038))

(declare-fun m!8409100 () Bool)

(assert (=> b!8056037 m!8409100))

(assert (=> b!8056038 m!8408788))

(assert (=> start!758872 d!2398562))

(declare-fun d!2398564 () Bool)

(assert (=> d!2398564 (= (inv!97347 acc!1298) (invariantList!1949 (toList!11938 acc!1298)))))

(declare-fun bs!1973087 () Bool)

(assert (= bs!1973087 d!2398564))

(declare-fun m!8409102 () Bool)

(assert (=> bs!1973087 m!8409102))

(assert (=> start!758872 d!2398564))

(declare-fun b!8056039 () Bool)

(declare-fun e!4747333 () Unit!172366)

(declare-fun lt!2729991 () Unit!172366)

(assert (=> b!8056039 (= e!4747333 lt!2729991)))

(declare-fun lt!2729995 () Unit!172366)

(assert (=> b!8056039 (= lt!2729995 (lemmaContainsKeyImpliesGetValueByKeyDefined!2569 (toList!11938 acc!1298) key!6222))))

(assert (=> b!8056039 (isDefined!14547 (getValueByKey!2798 (toList!11938 acc!1298) key!6222))))

(declare-fun lt!2729992 () Unit!172366)

(assert (=> b!8056039 (= lt!2729992 lt!2729995)))

(assert (=> b!8056039 (= lt!2729991 (lemmaInListThenGetKeysListContains!1252 (toList!11938 acc!1298) key!6222))))

(declare-fun call!747459 () Bool)

(assert (=> b!8056039 call!747459))

(declare-fun b!8056040 () Bool)

(assert (=> b!8056040 false))

(declare-fun lt!2729993 () Unit!172366)

(declare-fun lt!2729990 () Unit!172366)

(assert (=> b!8056040 (= lt!2729993 lt!2729990)))

(assert (=> b!8056040 (containsKey!4887 (toList!11938 acc!1298) key!6222)))

(assert (=> b!8056040 (= lt!2729990 (lemmaInGetKeysListThenContainsKey!1257 (toList!11938 acc!1298) key!6222))))

(declare-fun e!4747332 () Unit!172366)

(declare-fun Unit!172411 () Unit!172366)

(assert (=> b!8056040 (= e!4747332 Unit!172411)))

(declare-fun bm!747454 () Bool)

(declare-fun e!4747336 () List!75706)

(assert (=> bm!747454 (= call!747459 (contains!21262 e!4747336 key!6222))))

(declare-fun c!1476555 () Bool)

(declare-fun c!1476554 () Bool)

(assert (=> bm!747454 (= c!1476555 c!1476554)))

(declare-fun b!8056041 () Bool)

(assert (=> b!8056041 (= e!4747336 (getKeysList!1257 (toList!11938 acc!1298)))))

(declare-fun b!8056042 () Bool)

(assert (=> b!8056042 (= e!4747333 e!4747332)))

(declare-fun c!1476553 () Bool)

(assert (=> b!8056042 (= c!1476553 call!747459)))

(declare-fun b!8056043 () Bool)

(declare-fun Unit!172412 () Unit!172366)

(assert (=> b!8056043 (= e!4747332 Unit!172412)))

(declare-fun b!8056044 () Bool)

(declare-fun e!4747337 () Bool)

(assert (=> b!8056044 (= e!4747337 (contains!21262 (keys!30870 acc!1298) key!6222))))

(declare-fun b!8056045 () Bool)

(assert (=> b!8056045 (= e!4747336 (keys!30870 acc!1298))))

(declare-fun d!2398566 () Bool)

(declare-fun e!4747334 () Bool)

(assert (=> d!2398566 e!4747334))

(declare-fun res!3186458 () Bool)

(assert (=> d!2398566 (=> res!3186458 e!4747334)))

(declare-fun e!4747335 () Bool)

(assert (=> d!2398566 (= res!3186458 e!4747335)))

(declare-fun res!3186459 () Bool)

(assert (=> d!2398566 (=> (not res!3186459) (not e!4747335))))

(declare-fun lt!2729994 () Bool)

(assert (=> d!2398566 (= res!3186459 (not lt!2729994))))

(declare-fun lt!2729997 () Bool)

(assert (=> d!2398566 (= lt!2729994 lt!2729997)))

(declare-fun lt!2729996 () Unit!172366)

(assert (=> d!2398566 (= lt!2729996 e!4747333)))

(assert (=> d!2398566 (= c!1476554 lt!2729997)))

(assert (=> d!2398566 (= lt!2729997 (containsKey!4887 (toList!11938 acc!1298) key!6222))))

(assert (=> d!2398566 (= (contains!21260 acc!1298 key!6222) lt!2729994)))

(declare-fun b!8056046 () Bool)

(assert (=> b!8056046 (= e!4747334 e!4747337)))

(declare-fun res!3186457 () Bool)

(assert (=> b!8056046 (=> (not res!3186457) (not e!4747337))))

(assert (=> b!8056046 (= res!3186457 (isDefined!14547 (getValueByKey!2798 (toList!11938 acc!1298) key!6222)))))

(declare-fun b!8056047 () Bool)

(assert (=> b!8056047 (= e!4747335 (not (contains!21262 (keys!30870 acc!1298) key!6222)))))

(assert (= (and d!2398566 c!1476554) b!8056039))

(assert (= (and d!2398566 (not c!1476554)) b!8056042))

(assert (= (and b!8056042 c!1476553) b!8056040))

(assert (= (and b!8056042 (not c!1476553)) b!8056043))

(assert (= (or b!8056039 b!8056042) bm!747454))

(assert (= (and bm!747454 c!1476555) b!8056041))

(assert (= (and bm!747454 (not c!1476555)) b!8056045))

(assert (= (and d!2398566 res!3186459) b!8056047))

(assert (= (and d!2398566 (not res!3186458)) b!8056046))

(assert (= (and b!8056046 res!3186457) b!8056044))

(declare-fun m!8409104 () Bool)

(assert (=> b!8056046 m!8409104))

(assert (=> b!8056046 m!8409104))

(declare-fun m!8409106 () Bool)

(assert (=> b!8056046 m!8409106))

(declare-fun m!8409108 () Bool)

(assert (=> b!8056039 m!8409108))

(assert (=> b!8056039 m!8409104))

(assert (=> b!8056039 m!8409104))

(assert (=> b!8056039 m!8409106))

(declare-fun m!8409110 () Bool)

(assert (=> b!8056039 m!8409110))

(declare-fun m!8409112 () Bool)

(assert (=> b!8056044 m!8409112))

(assert (=> b!8056044 m!8409112))

(declare-fun m!8409114 () Bool)

(assert (=> b!8056044 m!8409114))

(declare-fun m!8409116 () Bool)

(assert (=> b!8056041 m!8409116))

(declare-fun m!8409118 () Bool)

(assert (=> b!8056040 m!8409118))

(declare-fun m!8409120 () Bool)

(assert (=> b!8056040 m!8409120))

(declare-fun m!8409122 () Bool)

(assert (=> bm!747454 m!8409122))

(assert (=> b!8056047 m!8409112))

(assert (=> b!8056047 m!8409112))

(assert (=> b!8056047 m!8409114))

(assert (=> b!8056045 m!8409112))

(assert (=> d!2398566 m!8409118))

(assert (=> b!8055832 d!2398566))

(declare-fun d!2398568 () Bool)

(declare-fun get!27240 (Option!18014) V!23112)

(assert (=> d!2398568 (= (apply!14451 acc!1298 key!6222) (get!27240 (getValueByKey!2798 (toList!11938 acc!1298) key!6222)))))

(declare-fun bs!1973088 () Bool)

(assert (= bs!1973088 d!2398568))

(assert (=> bs!1973088 m!8409104))

(assert (=> bs!1973088 m!8409104))

(declare-fun m!8409124 () Bool)

(assert (=> bs!1973088 m!8409124))

(assert (=> b!8055821 d!2398568))

(assert (=> b!8055828 d!2398556))

(declare-fun b!8056048 () Bool)

(declare-fun e!4747339 () Unit!172366)

(declare-fun lt!2729999 () Unit!172366)

(assert (=> b!8056048 (= e!4747339 lt!2729999)))

(declare-fun lt!2730003 () Unit!172366)

(assert (=> b!8056048 (= lt!2730003 (lemmaContainsKeyImpliesGetValueByKeyDefined!2569 (toList!11938 (addToMapMapFromBucket!2005 l!14636 acc!1298)) key!6222))))

(assert (=> b!8056048 (isDefined!14547 (getValueByKey!2798 (toList!11938 (addToMapMapFromBucket!2005 l!14636 acc!1298)) key!6222))))

(declare-fun lt!2730000 () Unit!172366)

(assert (=> b!8056048 (= lt!2730000 lt!2730003)))

(assert (=> b!8056048 (= lt!2729999 (lemmaInListThenGetKeysListContains!1252 (toList!11938 (addToMapMapFromBucket!2005 l!14636 acc!1298)) key!6222))))

(declare-fun call!747460 () Bool)

(assert (=> b!8056048 call!747460))

(declare-fun b!8056049 () Bool)

(assert (=> b!8056049 false))

(declare-fun lt!2730001 () Unit!172366)

(declare-fun lt!2729998 () Unit!172366)

(assert (=> b!8056049 (= lt!2730001 lt!2729998)))

(assert (=> b!8056049 (containsKey!4887 (toList!11938 (addToMapMapFromBucket!2005 l!14636 acc!1298)) key!6222)))

(assert (=> b!8056049 (= lt!2729998 (lemmaInGetKeysListThenContainsKey!1257 (toList!11938 (addToMapMapFromBucket!2005 l!14636 acc!1298)) key!6222))))

(declare-fun e!4747338 () Unit!172366)

(declare-fun Unit!172415 () Unit!172366)

(assert (=> b!8056049 (= e!4747338 Unit!172415)))

(declare-fun bm!747455 () Bool)

(declare-fun e!4747342 () List!75706)

(assert (=> bm!747455 (= call!747460 (contains!21262 e!4747342 key!6222))))

(declare-fun c!1476558 () Bool)

(declare-fun c!1476557 () Bool)

(assert (=> bm!747455 (= c!1476558 c!1476557)))

(declare-fun b!8056050 () Bool)

(assert (=> b!8056050 (= e!4747342 (getKeysList!1257 (toList!11938 (addToMapMapFromBucket!2005 l!14636 acc!1298))))))

(declare-fun b!8056051 () Bool)

(assert (=> b!8056051 (= e!4747339 e!4747338)))

(declare-fun c!1476556 () Bool)

(assert (=> b!8056051 (= c!1476556 call!747460)))

(declare-fun b!8056052 () Bool)

(declare-fun Unit!172416 () Unit!172366)

(assert (=> b!8056052 (= e!4747338 Unit!172416)))

(declare-fun b!8056053 () Bool)

(declare-fun e!4747343 () Bool)

(assert (=> b!8056053 (= e!4747343 (contains!21262 (keys!30870 (addToMapMapFromBucket!2005 l!14636 acc!1298)) key!6222))))

(declare-fun b!8056054 () Bool)

(assert (=> b!8056054 (= e!4747342 (keys!30870 (addToMapMapFromBucket!2005 l!14636 acc!1298)))))

(declare-fun d!2398570 () Bool)

(declare-fun e!4747340 () Bool)

(assert (=> d!2398570 e!4747340))

(declare-fun res!3186461 () Bool)

(assert (=> d!2398570 (=> res!3186461 e!4747340)))

(declare-fun e!4747341 () Bool)

(assert (=> d!2398570 (= res!3186461 e!4747341)))

(declare-fun res!3186462 () Bool)

(assert (=> d!2398570 (=> (not res!3186462) (not e!4747341))))

(declare-fun lt!2730002 () Bool)

(assert (=> d!2398570 (= res!3186462 (not lt!2730002))))

(declare-fun lt!2730005 () Bool)

(assert (=> d!2398570 (= lt!2730002 lt!2730005)))

(declare-fun lt!2730004 () Unit!172366)

(assert (=> d!2398570 (= lt!2730004 e!4747339)))

(assert (=> d!2398570 (= c!1476557 lt!2730005)))

(assert (=> d!2398570 (= lt!2730005 (containsKey!4887 (toList!11938 (addToMapMapFromBucket!2005 l!14636 acc!1298)) key!6222))))

(assert (=> d!2398570 (= (contains!21260 (addToMapMapFromBucket!2005 l!14636 acc!1298) key!6222) lt!2730002)))

(declare-fun b!8056055 () Bool)

(assert (=> b!8056055 (= e!4747340 e!4747343)))

(declare-fun res!3186460 () Bool)

(assert (=> b!8056055 (=> (not res!3186460) (not e!4747343))))

(assert (=> b!8056055 (= res!3186460 (isDefined!14547 (getValueByKey!2798 (toList!11938 (addToMapMapFromBucket!2005 l!14636 acc!1298)) key!6222)))))

(declare-fun b!8056056 () Bool)

(assert (=> b!8056056 (= e!4747341 (not (contains!21262 (keys!30870 (addToMapMapFromBucket!2005 l!14636 acc!1298)) key!6222)))))

(assert (= (and d!2398570 c!1476557) b!8056048))

(assert (= (and d!2398570 (not c!1476557)) b!8056051))

(assert (= (and b!8056051 c!1476556) b!8056049))

(assert (= (and b!8056051 (not c!1476556)) b!8056052))

(assert (= (or b!8056048 b!8056051) bm!747455))

(assert (= (and bm!747455 c!1476558) b!8056050))

(assert (= (and bm!747455 (not c!1476558)) b!8056054))

(assert (= (and d!2398570 res!3186462) b!8056056))

(assert (= (and d!2398570 (not res!3186461)) b!8056055))

(assert (= (and b!8056055 res!3186460) b!8056053))

(declare-fun m!8409126 () Bool)

(assert (=> b!8056055 m!8409126))

(assert (=> b!8056055 m!8409126))

(declare-fun m!8409128 () Bool)

(assert (=> b!8056055 m!8409128))

(declare-fun m!8409130 () Bool)

(assert (=> b!8056048 m!8409130))

(assert (=> b!8056048 m!8409126))

(assert (=> b!8056048 m!8409126))

(assert (=> b!8056048 m!8409128))

(declare-fun m!8409132 () Bool)

(assert (=> b!8056048 m!8409132))

(assert (=> b!8056053 m!8408776))

(declare-fun m!8409134 () Bool)

(assert (=> b!8056053 m!8409134))

(assert (=> b!8056053 m!8409134))

(declare-fun m!8409136 () Bool)

(assert (=> b!8056053 m!8409136))

(declare-fun m!8409138 () Bool)

(assert (=> b!8056050 m!8409138))

(declare-fun m!8409140 () Bool)

(assert (=> b!8056049 m!8409140))

(declare-fun m!8409142 () Bool)

(assert (=> b!8056049 m!8409142))

(declare-fun m!8409144 () Bool)

(assert (=> bm!747455 m!8409144))

(assert (=> b!8056056 m!8408776))

(assert (=> b!8056056 m!8409134))

(assert (=> b!8056056 m!8409134))

(assert (=> b!8056056 m!8409136))

(assert (=> b!8056054 m!8408776))

(assert (=> b!8056054 m!8409134))

(assert (=> d!2398570 m!8409140))

(assert (=> b!8055829 d!2398570))

(declare-fun bs!1973089 () Bool)

(declare-fun b!8056057 () Bool)

(assert (= bs!1973089 (and b!8056057 b!8056014)))

(declare-fun lambda!474268 () Int)

(assert (=> bs!1973089 (= (= acc!1298 lt!2729721) (= lambda!474268 lambda!474264))))

(declare-fun bs!1973090 () Bool)

(assert (= bs!1973090 (and b!8056057 b!8056018)))

(assert (=> bs!1973090 (= (= acc!1298 lt!2729721) (= lambda!474268 lambda!474265))))

(assert (=> bs!1973090 (= (= acc!1298 lt!2729964) (= lambda!474268 lambda!474266))))

(declare-fun bs!1973091 () Bool)

(assert (= bs!1973091 (and b!8056057 d!2398538)))

(assert (=> bs!1973091 (= (= acc!1298 lt!2729966) (= lambda!474268 lambda!474267))))

(assert (=> b!8056057 true))

(declare-fun bs!1973092 () Bool)

(declare-fun b!8056061 () Bool)

(assert (= bs!1973092 (and b!8056061 b!8056018)))

(declare-fun lambda!474269 () Int)

(assert (=> bs!1973092 (= (= acc!1298 lt!2729721) (= lambda!474269 lambda!474265))))

(declare-fun bs!1973093 () Bool)

(assert (= bs!1973093 (and b!8056061 b!8056057)))

(assert (=> bs!1973093 (= lambda!474269 lambda!474268)))

(assert (=> bs!1973092 (= (= acc!1298 lt!2729964) (= lambda!474269 lambda!474266))))

(declare-fun bs!1973094 () Bool)

(assert (= bs!1973094 (and b!8056061 d!2398538)))

(assert (=> bs!1973094 (= (= acc!1298 lt!2729966) (= lambda!474269 lambda!474267))))

(declare-fun bs!1973095 () Bool)

(assert (= bs!1973095 (and b!8056061 b!8056014)))

(assert (=> bs!1973095 (= (= acc!1298 lt!2729721) (= lambda!474269 lambda!474264))))

(assert (=> b!8056061 true))

(declare-fun lt!2730014 () ListMap!7327)

(declare-fun lambda!474270 () Int)

(assert (=> bs!1973092 (= (= lt!2730014 lt!2729721) (= lambda!474270 lambda!474265))))

(assert (=> bs!1973093 (= (= lt!2730014 acc!1298) (= lambda!474270 lambda!474268))))

(assert (=> bs!1973094 (= (= lt!2730014 lt!2729966) (= lambda!474270 lambda!474267))))

(assert (=> bs!1973095 (= (= lt!2730014 lt!2729721) (= lambda!474270 lambda!474264))))

(assert (=> b!8056061 (= (= lt!2730014 acc!1298) (= lambda!474270 lambda!474269))))

(assert (=> bs!1973092 (= (= lt!2730014 lt!2729964) (= lambda!474270 lambda!474266))))

(assert (=> b!8056061 true))

(declare-fun bs!1973096 () Bool)

(declare-fun d!2398572 () Bool)

(assert (= bs!1973096 (and d!2398572 b!8056018)))

(declare-fun lt!2730016 () ListMap!7327)

(declare-fun lambda!474271 () Int)

(assert (=> bs!1973096 (= (= lt!2730016 lt!2729721) (= lambda!474271 lambda!474265))))

(declare-fun bs!1973097 () Bool)

(assert (= bs!1973097 (and d!2398572 b!8056057)))

(assert (=> bs!1973097 (= (= lt!2730016 acc!1298) (= lambda!474271 lambda!474268))))

(declare-fun bs!1973098 () Bool)

(assert (= bs!1973098 (and d!2398572 d!2398538)))

(assert (=> bs!1973098 (= (= lt!2730016 lt!2729966) (= lambda!474271 lambda!474267))))

(declare-fun bs!1973099 () Bool)

(assert (= bs!1973099 (and d!2398572 b!8056014)))

(assert (=> bs!1973099 (= (= lt!2730016 lt!2729721) (= lambda!474271 lambda!474264))))

(declare-fun bs!1973100 () Bool)

(assert (= bs!1973100 (and d!2398572 b!8056061)))

(assert (=> bs!1973100 (= (= lt!2730016 lt!2730014) (= lambda!474271 lambda!474270))))

(assert (=> bs!1973100 (= (= lt!2730016 acc!1298) (= lambda!474271 lambda!474269))))

(assert (=> bs!1973096 (= (= lt!2730016 lt!2729964) (= lambda!474271 lambda!474266))))

(assert (=> d!2398572 true))

(declare-fun e!4747344 () ListMap!7327)

(assert (=> b!8056057 (= e!4747344 acc!1298)))

(declare-fun lt!2730022 () Unit!172366)

(declare-fun call!747462 () Unit!172366)

(assert (=> b!8056057 (= lt!2730022 call!747462)))

(declare-fun call!747461 () Bool)

(assert (=> b!8056057 call!747461))

(declare-fun lt!2730024 () Unit!172366)

(assert (=> b!8056057 (= lt!2730024 lt!2730022)))

(declare-fun call!747463 () Bool)

(assert (=> b!8056057 call!747463))

(declare-fun lt!2730008 () Unit!172366)

(declare-fun Unit!172417 () Unit!172366)

(assert (=> b!8056057 (= lt!2730008 Unit!172417)))

(declare-fun b!8056058 () Bool)

(declare-fun e!4747345 () Bool)

(assert (=> b!8056058 (= e!4747345 (invariantList!1949 (toList!11938 lt!2730016)))))

(declare-fun b!8056059 () Bool)

(declare-fun e!4747346 () Bool)

(assert (=> b!8056059 (= e!4747346 (forall!18520 (toList!11938 acc!1298) lambda!474270))))

(declare-fun bm!747456 () Bool)

(declare-fun c!1476559 () Bool)

(assert (=> bm!747456 (= call!747461 (forall!18520 (ite c!1476559 (toList!11938 acc!1298) l!14636) (ite c!1476559 lambda!474268 lambda!474270)))))

(assert (=> d!2398572 e!4747345))

(declare-fun res!3186463 () Bool)

(assert (=> d!2398572 (=> (not res!3186463) (not e!4747345))))

(assert (=> d!2398572 (= res!3186463 (forall!18520 l!14636 lambda!474271))))

(assert (=> d!2398572 (= lt!2730016 e!4747344)))

(assert (=> d!2398572 (= c!1476559 ((_ is Nil!75578) l!14636))))

(assert (=> d!2398572 (noDuplicateKeys!2724 l!14636)))

(assert (=> d!2398572 (= (addToMapMapFromBucket!2005 l!14636 acc!1298) lt!2730016)))

(declare-fun b!8056060 () Bool)

(declare-fun res!3186465 () Bool)

(assert (=> b!8056060 (=> (not res!3186465) (not e!4747345))))

(assert (=> b!8056060 (= res!3186465 (forall!18520 (toList!11938 acc!1298) lambda!474271))))

(assert (=> b!8056061 (= e!4747344 lt!2730014)))

(declare-fun lt!2730017 () ListMap!7327)

(assert (=> b!8056061 (= lt!2730017 (+!2689 acc!1298 (h!82026 l!14636)))))

(assert (=> b!8056061 (= lt!2730014 (addToMapMapFromBucket!2005 (t!391476 l!14636) (+!2689 acc!1298 (h!82026 l!14636))))))

(declare-fun lt!2730019 () Unit!172366)

(assert (=> b!8056061 (= lt!2730019 call!747462)))

(assert (=> b!8056061 (forall!18520 (toList!11938 acc!1298) lambda!474269)))

(declare-fun lt!2730026 () Unit!172366)

(assert (=> b!8056061 (= lt!2730026 lt!2730019)))

(assert (=> b!8056061 call!747463))

(declare-fun lt!2730023 () Unit!172366)

(declare-fun Unit!172418 () Unit!172366)

(assert (=> b!8056061 (= lt!2730023 Unit!172418)))

(assert (=> b!8056061 (forall!18520 (t!391476 l!14636) lambda!474270)))

(declare-fun lt!2730013 () Unit!172366)

(declare-fun Unit!172419 () Unit!172366)

(assert (=> b!8056061 (= lt!2730013 Unit!172419)))

(declare-fun lt!2730006 () Unit!172366)

(declare-fun Unit!172420 () Unit!172366)

(assert (=> b!8056061 (= lt!2730006 Unit!172420)))

(declare-fun lt!2730020 () Unit!172366)

(assert (=> b!8056061 (= lt!2730020 (forallContained!4674 (toList!11938 lt!2730017) lambda!474270 (h!82026 l!14636)))))

(assert (=> b!8056061 (contains!21260 lt!2730017 (_1!38765 (h!82026 l!14636)))))

(declare-fun lt!2730009 () Unit!172366)

(declare-fun Unit!172421 () Unit!172366)

(assert (=> b!8056061 (= lt!2730009 Unit!172421)))

(assert (=> b!8056061 (contains!21260 lt!2730014 (_1!38765 (h!82026 l!14636)))))

(declare-fun lt!2730018 () Unit!172366)

(declare-fun Unit!172422 () Unit!172366)

(assert (=> b!8056061 (= lt!2730018 Unit!172422)))

(assert (=> b!8056061 call!747461))

(declare-fun lt!2730007 () Unit!172366)

(declare-fun Unit!172423 () Unit!172366)

(assert (=> b!8056061 (= lt!2730007 Unit!172423)))

(assert (=> b!8056061 (forall!18520 (toList!11938 lt!2730017) lambda!474270)))

(declare-fun lt!2730012 () Unit!172366)

(declare-fun Unit!172424 () Unit!172366)

(assert (=> b!8056061 (= lt!2730012 Unit!172424)))

(declare-fun lt!2730011 () Unit!172366)

(declare-fun Unit!172425 () Unit!172366)

(assert (=> b!8056061 (= lt!2730011 Unit!172425)))

(declare-fun lt!2730010 () Unit!172366)

(assert (=> b!8056061 (= lt!2730010 (addForallContainsKeyThenBeforeAdding!1099 acc!1298 lt!2730014 (_1!38765 (h!82026 l!14636)) (_2!38765 (h!82026 l!14636))))))

(assert (=> b!8056061 (forall!18520 (toList!11938 acc!1298) lambda!474270)))

(declare-fun lt!2730021 () Unit!172366)

(assert (=> b!8056061 (= lt!2730021 lt!2730010)))

(assert (=> b!8056061 (forall!18520 (toList!11938 acc!1298) lambda!474270)))

(declare-fun lt!2730025 () Unit!172366)

(declare-fun Unit!172426 () Unit!172366)

(assert (=> b!8056061 (= lt!2730025 Unit!172426)))

(declare-fun res!3186464 () Bool)

(assert (=> b!8056061 (= res!3186464 (forall!18520 l!14636 lambda!474270))))

(assert (=> b!8056061 (=> (not res!3186464) (not e!4747346))))

(assert (=> b!8056061 e!4747346))

(declare-fun lt!2730015 () Unit!172366)

(declare-fun Unit!172427 () Unit!172366)

(assert (=> b!8056061 (= lt!2730015 Unit!172427)))

(declare-fun bm!747457 () Bool)

(assert (=> bm!747457 (= call!747462 (lemmaContainsAllItsOwnKeys!1101 acc!1298))))

(declare-fun bm!747458 () Bool)

(assert (=> bm!747458 (= call!747463 (forall!18520 (ite c!1476559 (toList!11938 acc!1298) (toList!11938 lt!2730017)) (ite c!1476559 lambda!474268 lambda!474270)))))

(assert (= (and d!2398572 c!1476559) b!8056057))

(assert (= (and d!2398572 (not c!1476559)) b!8056061))

(assert (= (and b!8056061 res!3186464) b!8056059))

(assert (= (or b!8056057 b!8056061) bm!747456))

(assert (= (or b!8056057 b!8056061) bm!747458))

(assert (= (or b!8056057 b!8056061) bm!747457))

(assert (= (and d!2398572 res!3186463) b!8056060))

(assert (= (and b!8056060 res!3186465) b!8056058))

(assert (=> b!8056061 m!8408786))

(declare-fun m!8409146 () Bool)

(assert (=> b!8056061 m!8409146))

(declare-fun m!8409148 () Bool)

(assert (=> b!8056061 m!8409148))

(assert (=> b!8056061 m!8408786))

(declare-fun m!8409150 () Bool)

(assert (=> b!8056061 m!8409150))

(declare-fun m!8409152 () Bool)

(assert (=> b!8056061 m!8409152))

(declare-fun m!8409154 () Bool)

(assert (=> b!8056061 m!8409154))

(declare-fun m!8409156 () Bool)

(assert (=> b!8056061 m!8409156))

(declare-fun m!8409158 () Bool)

(assert (=> b!8056061 m!8409158))

(declare-fun m!8409160 () Bool)

(assert (=> b!8056061 m!8409160))

(declare-fun m!8409162 () Bool)

(assert (=> b!8056061 m!8409162))

(assert (=> b!8056061 m!8409152))

(declare-fun m!8409164 () Bool)

(assert (=> b!8056061 m!8409164))

(declare-fun m!8409166 () Bool)

(assert (=> bm!747458 m!8409166))

(declare-fun m!8409168 () Bool)

(assert (=> b!8056058 m!8409168))

(assert (=> b!8056059 m!8409152))

(declare-fun m!8409170 () Bool)

(assert (=> d!2398572 m!8409170))

(assert (=> d!2398572 m!8408798))

(declare-fun m!8409172 () Bool)

(assert (=> b!8056060 m!8409172))

(declare-fun m!8409174 () Bool)

(assert (=> bm!747456 m!8409174))

(declare-fun m!8409176 () Bool)

(assert (=> bm!747457 m!8409176))

(assert (=> b!8055829 d!2398572))

(declare-fun tp!2413916 () Bool)

(declare-fun e!4747349 () Bool)

(declare-fun b!8056066 () Bool)

(assert (=> b!8056066 (= e!4747349 (and tp_is_empty!54971 tp_is_empty!54973 tp!2413916))))

(assert (=> b!8055825 (= tp!2413909 e!4747349)))

(assert (= (and b!8055825 ((_ is Cons!75578) (t!391476 l!14636))) b!8056066))

(declare-fun tp!2413917 () Bool)

(declare-fun b!8056067 () Bool)

(declare-fun e!4747350 () Bool)

(assert (=> b!8056067 (= e!4747350 (and tp_is_empty!54971 tp_is_empty!54973 tp!2413917))))

(assert (=> b!8055824 (= tp!2413908 e!4747350)))

(assert (= (and b!8055824 ((_ is Cons!75578) (toList!11938 acc!1298))) b!8056067))

(check-sat (not b!8056060) (not b!8056026) (not d!2398566) (not b!8056054) (not b!8055876) (not b!8055881) (not b!8056018) (not b!8056046) (not b!8056041) (not b!8056049) (not bm!747428) (not b!8055911) (not b!8055910) (not b!8056066) tp_is_empty!54973 tp_is_empty!54971 (not d!2398560) (not d!2398572) (not b!8056037) (not b!8055915) (not b!8056044) (not d!2398554) (not b!8055908) (not b!8056017) (not b!8056025) (not bm!747455) (not b!8056067) (not b!8055917) (not d!2398538) (not b!8056040) (not b!8056034) (not bm!747452) (not b!8056038) (not b!8056039) (not bm!747454) (not d!2398570) (not d!2398532) (not b!8055877) (not bm!747457) (not bm!747451) (not b!8056053) (not bm!747456) (not b!8056032) (not b!8056055) (not bm!747425) (not d!2398536) (not d!2398530) (not b!8055878) (not b!8056056) (not b!8055909) (not b!8055882) (not b!8056016) (not d!2398512) (not b!8055936) (not b!8056047) (not b!8056061) (not b!8056059) (not b!8056015) (not b!8055907) (not d!2398564) (not b!8055916) (not b!8056036) (not bm!747453) (not d!2398568) (not b!8056058) (not b!8056050) (not b!8055914) (not b!8056048) (not b!8055883) (not bm!747458) (not b!8056045) (not b!8055884))
(check-sat)
