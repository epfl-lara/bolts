; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!758118 () Bool)

(assert start!758118)

(declare-fun b!8050299 () Bool)

(declare-fun e!4743429 () Bool)

(declare-fun e!4743428 () Bool)

(assert (=> b!8050299 (= e!4743429 e!4743428)))

(declare-fun res!3182879 () Bool)

(assert (=> b!8050299 (=> (not res!3182879) (not e!4743428))))

(declare-fun e!4743426 () Bool)

(assert (=> b!8050299 (= res!3182879 e!4743426)))

(declare-fun res!3182878 () Bool)

(assert (=> b!8050299 (=> res!3182878 e!4743426)))

(declare-fun e!4743430 () Bool)

(assert (=> b!8050299 (= res!3182878 e!4743430)))

(declare-fun res!3182881 () Bool)

(assert (=> b!8050299 (=> (not res!3182881) (not e!4743430))))

(declare-fun lt!2724168 () Bool)

(assert (=> b!8050299 (= res!3182881 lt!2724168)))

(declare-datatypes ((K!22768 0))(
  ( (K!22769 (val!32887 Int)) )
))
(declare-datatypes ((V!23022 0))(
  ( (V!23023 (val!32888 Int)) )
))
(declare-datatypes ((tuple2!70852 0))(
  ( (tuple2!70853 (_1!38729 K!22768) (_2!38729 V!23022)) )
))
(declare-datatypes ((List!75637 0))(
  ( (Nil!75511) (Cons!75511 (h!81959 tuple2!70852) (t!391409 List!75637)) )
))
(declare-datatypes ((ListMap!7255 0))(
  ( (ListMap!7256 (toList!11902 List!75637)) )
))
(declare-fun acc!1298 () ListMap!7255)

(declare-fun key!6222 () K!22768)

(declare-fun contains!21156 (ListMap!7255 K!22768) Bool)

(assert (=> b!8050299 (= lt!2724168 (contains!21156 acc!1298 key!6222))))

(declare-fun b!8050300 () Bool)

(declare-fun e!4743425 () Bool)

(assert (=> b!8050300 (= e!4743425 (not lt!2724168))))

(declare-fun b!8050301 () Bool)

(declare-fun res!3182885 () Bool)

(assert (=> b!8050301 (=> (not res!3182885) (not e!4743429))))

(declare-fun l!14636 () List!75637)

(declare-fun addToMapMapFromBucket!1969 (List!75637 ListMap!7255) ListMap!7255)

(assert (=> b!8050301 (= res!3182885 (contains!21156 (addToMapMapFromBucket!1969 l!14636 acc!1298) key!6222))))

(declare-fun b!8050302 () Bool)

(declare-fun containsKey!4818 (List!75637 K!22768) Bool)

(assert (=> b!8050302 (= e!4743430 (not (containsKey!4818 l!14636 key!6222)))))

(declare-fun b!8050303 () Bool)

(declare-fun res!3182886 () Bool)

(assert (=> b!8050303 (=> (not res!3182886) (not e!4743428))))

(get-info :version)

(assert (=> b!8050303 (= res!3182886 (not ((_ is Nil!75511) l!14636)))))

(declare-fun b!8050304 () Bool)

(assert (=> b!8050304 (= e!4743426 e!4743425)))

(declare-fun res!3182877 () Bool)

(assert (=> b!8050304 (=> (not res!3182877) (not e!4743425))))

(assert (=> b!8050304 (= res!3182877 (containsKey!4818 l!14636 key!6222))))

(declare-fun b!8050305 () Bool)

(declare-fun tp_is_empty!54827 () Bool)

(declare-fun e!4743427 () Bool)

(declare-fun tp!2413561 () Bool)

(declare-fun tp_is_empty!54829 () Bool)

(assert (=> b!8050305 (= e!4743427 (and tp_is_empty!54827 tp_is_empty!54829 tp!2413561))))

(declare-fun e!4743424 () Bool)

(declare-fun value!3131 () V!23022)

(declare-fun b!8050306 () Bool)

(declare-fun contains!21157 (List!75637 tuple2!70852) Bool)

(assert (=> b!8050306 (= e!4743424 (not (contains!21157 (t!391409 l!14636) (tuple2!70853 key!6222 value!3131))))))

(declare-fun b!8050307 () Bool)

(assert (=> b!8050307 (= e!4743428 e!4743424)))

(declare-fun res!3182882 () Bool)

(assert (=> b!8050307 (=> (not res!3182882) (not e!4743424))))

(assert (=> b!8050307 (= res!3182882 (and (not (= (_1!38729 (h!81959 l!14636)) key!6222)) (not lt!2724168)))))

(declare-fun lt!2724167 () ListMap!7255)

(declare-fun +!2654 (ListMap!7255 tuple2!70852) ListMap!7255)

(assert (=> b!8050307 (= lt!2724167 (addToMapMapFromBucket!1969 (t!391409 l!14636) (+!2654 acc!1298 (h!81959 l!14636))))))

(declare-fun b!8050308 () Bool)

(declare-fun e!4743423 () Bool)

(declare-fun tp!2413560 () Bool)

(assert (=> b!8050308 (= e!4743423 tp!2413560)))

(declare-fun b!8050310 () Bool)

(declare-fun res!3182884 () Bool)

(assert (=> b!8050310 (=> (not res!3182884) (not e!4743425))))

(assert (=> b!8050310 (= res!3182884 (contains!21157 l!14636 (tuple2!70853 key!6222 value!3131)))))

(declare-fun res!3182880 () Bool)

(assert (=> start!758118 (=> (not res!3182880) (not e!4743429))))

(declare-fun noDuplicateKeys!2688 (List!75637) Bool)

(assert (=> start!758118 (= res!3182880 (noDuplicateKeys!2688 l!14636))))

(assert (=> start!758118 e!4743429))

(assert (=> start!758118 e!4743427))

(declare-fun inv!97257 (ListMap!7255) Bool)

(assert (=> start!758118 (and (inv!97257 acc!1298) e!4743423)))

(assert (=> start!758118 tp_is_empty!54827))

(assert (=> start!758118 tp_is_empty!54829))

(declare-fun b!8050309 () Bool)

(declare-fun res!3182883 () Bool)

(assert (=> b!8050309 (=> (not res!3182883) (not e!4743430))))

(declare-fun apply!14415 (ListMap!7255 K!22768) V!23022)

(assert (=> b!8050309 (= res!3182883 (= (apply!14415 acc!1298 key!6222) value!3131))))

(assert (= (and start!758118 res!3182880) b!8050301))

(assert (= (and b!8050301 res!3182885) b!8050299))

(assert (= (and b!8050299 res!3182881) b!8050309))

(assert (= (and b!8050309 res!3182883) b!8050302))

(assert (= (and b!8050299 (not res!3182878)) b!8050304))

(assert (= (and b!8050304 res!3182877) b!8050310))

(assert (= (and b!8050310 res!3182884) b!8050300))

(assert (= (and b!8050299 res!3182879) b!8050303))

(assert (= (and b!8050303 res!3182886) b!8050307))

(assert (= (and b!8050307 res!3182882) b!8050306))

(assert (= (and start!758118 ((_ is Cons!75511) l!14636)) b!8050305))

(assert (= start!758118 b!8050308))

(declare-fun m!8401230 () Bool)

(assert (=> b!8050307 m!8401230))

(assert (=> b!8050307 m!8401230))

(declare-fun m!8401232 () Bool)

(assert (=> b!8050307 m!8401232))

(declare-fun m!8401234 () Bool)

(assert (=> b!8050309 m!8401234))

(declare-fun m!8401236 () Bool)

(assert (=> b!8050302 m!8401236))

(declare-fun m!8401238 () Bool)

(assert (=> start!758118 m!8401238))

(declare-fun m!8401240 () Bool)

(assert (=> start!758118 m!8401240))

(assert (=> b!8050304 m!8401236))

(declare-fun m!8401242 () Bool)

(assert (=> b!8050306 m!8401242))

(declare-fun m!8401244 () Bool)

(assert (=> b!8050310 m!8401244))

(declare-fun m!8401246 () Bool)

(assert (=> b!8050299 m!8401246))

(declare-fun m!8401248 () Bool)

(assert (=> b!8050301 m!8401248))

(assert (=> b!8050301 m!8401248))

(declare-fun m!8401250 () Bool)

(assert (=> b!8050301 m!8401250))

(check-sat (not b!8050307) (not b!8050299) (not start!758118) (not b!8050305) (not b!8050302) (not b!8050310) (not b!8050308) tp_is_empty!54827 (not b!8050306) (not b!8050301) (not b!8050309) tp_is_empty!54829 (not b!8050304))
(check-sat)
(get-model)

(declare-fun d!2397090 () Bool)

(declare-fun lt!2724175 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!16091 (List!75637) (InoxSet tuple2!70852))

(assert (=> d!2397090 (= lt!2724175 (select (content!16091 (t!391409 l!14636)) (tuple2!70853 key!6222 value!3131)))))

(declare-fun e!4743444 () Bool)

(assert (=> d!2397090 (= lt!2724175 e!4743444)))

(declare-fun res!3182900 () Bool)

(assert (=> d!2397090 (=> (not res!3182900) (not e!4743444))))

(assert (=> d!2397090 (= res!3182900 ((_ is Cons!75511) (t!391409 l!14636)))))

(assert (=> d!2397090 (= (contains!21157 (t!391409 l!14636) (tuple2!70853 key!6222 value!3131)) lt!2724175)))

(declare-fun b!8050323 () Bool)

(declare-fun e!4743443 () Bool)

(assert (=> b!8050323 (= e!4743444 e!4743443)))

(declare-fun res!3182899 () Bool)

(assert (=> b!8050323 (=> res!3182899 e!4743443)))

(assert (=> b!8050323 (= res!3182899 (= (h!81959 (t!391409 l!14636)) (tuple2!70853 key!6222 value!3131)))))

(declare-fun b!8050324 () Bool)

(assert (=> b!8050324 (= e!4743443 (contains!21157 (t!391409 (t!391409 l!14636)) (tuple2!70853 key!6222 value!3131)))))

(assert (= (and d!2397090 res!3182900) b!8050323))

(assert (= (and b!8050323 (not res!3182899)) b!8050324))

(declare-fun m!8401266 () Bool)

(assert (=> d!2397090 m!8401266))

(declare-fun m!8401268 () Bool)

(assert (=> d!2397090 m!8401268))

(declare-fun m!8401270 () Bool)

(assert (=> b!8050324 m!8401270))

(assert (=> b!8050306 d!2397090))

(declare-fun bm!746842 () Bool)

(declare-fun call!746847 () Bool)

(declare-datatypes ((List!75639 0))(
  ( (Nil!75513) (Cons!75513 (h!81961 K!22768) (t!391411 List!75639)) )
))
(declare-fun e!4743461 () List!75639)

(declare-fun contains!21159 (List!75639 K!22768) Bool)

(assert (=> bm!746842 (= call!746847 (contains!21159 e!4743461 key!6222))))

(declare-fun c!1475743 () Bool)

(declare-fun c!1475741 () Bool)

(assert (=> bm!746842 (= c!1475743 c!1475741)))

(declare-fun b!8050343 () Bool)

(declare-datatypes ((Unit!171374 0))(
  ( (Unit!171375) )
))
(declare-fun e!4743458 () Unit!171374)

(declare-fun e!4743460 () Unit!171374)

(assert (=> b!8050343 (= e!4743458 e!4743460)))

(declare-fun c!1475742 () Bool)

(assert (=> b!8050343 (= c!1475742 call!746847)))

(declare-fun b!8050344 () Bool)

(assert (=> b!8050344 false))

(declare-fun lt!2724196 () Unit!171374)

(declare-fun lt!2724193 () Unit!171374)

(assert (=> b!8050344 (= lt!2724196 lt!2724193)))

(declare-fun containsKey!4820 (List!75637 K!22768) Bool)

(assert (=> b!8050344 (containsKey!4820 (toList!11902 (addToMapMapFromBucket!1969 l!14636 acc!1298)) key!6222)))

(declare-fun lemmaInGetKeysListThenContainsKey!1226 (List!75637 K!22768) Unit!171374)

(assert (=> b!8050344 (= lt!2724193 (lemmaInGetKeysListThenContainsKey!1226 (toList!11902 (addToMapMapFromBucket!1969 l!14636 acc!1298)) key!6222))))

(declare-fun Unit!171376 () Unit!171374)

(assert (=> b!8050344 (= e!4743460 Unit!171376)))

(declare-fun e!4743459 () Bool)

(declare-fun b!8050346 () Bool)

(declare-fun keys!30803 (ListMap!7255) List!75639)

(assert (=> b!8050346 (= e!4743459 (not (contains!21159 (keys!30803 (addToMapMapFromBucket!1969 l!14636 acc!1298)) key!6222)))))

(declare-fun b!8050347 () Bool)

(declare-fun getKeysList!1226 (List!75637) List!75639)

(assert (=> b!8050347 (= e!4743461 (getKeysList!1226 (toList!11902 (addToMapMapFromBucket!1969 l!14636 acc!1298))))))

(declare-fun b!8050348 () Bool)

(declare-fun e!4743457 () Bool)

(declare-fun e!4743462 () Bool)

(assert (=> b!8050348 (= e!4743457 e!4743462)))

(declare-fun res!3182907 () Bool)

(assert (=> b!8050348 (=> (not res!3182907) (not e!4743462))))

(declare-datatypes ((Option!17983 0))(
  ( (None!17982) (Some!17982 (v!55271 V!23022)) )
))
(declare-fun isDefined!14516 (Option!17983) Bool)

(declare-fun getValueByKey!2767 (List!75637 K!22768) Option!17983)

(assert (=> b!8050348 (= res!3182907 (isDefined!14516 (getValueByKey!2767 (toList!11902 (addToMapMapFromBucket!1969 l!14636 acc!1298)) key!6222)))))

(declare-fun b!8050349 () Bool)

(assert (=> b!8050349 (= e!4743461 (keys!30803 (addToMapMapFromBucket!1969 l!14636 acc!1298)))))

(declare-fun b!8050350 () Bool)

(declare-fun Unit!171377 () Unit!171374)

(assert (=> b!8050350 (= e!4743460 Unit!171377)))

(declare-fun b!8050351 () Bool)

(declare-fun lt!2724197 () Unit!171374)

(assert (=> b!8050351 (= e!4743458 lt!2724197)))

(declare-fun lt!2724194 () Unit!171374)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2538 (List!75637 K!22768) Unit!171374)

(assert (=> b!8050351 (= lt!2724194 (lemmaContainsKeyImpliesGetValueByKeyDefined!2538 (toList!11902 (addToMapMapFromBucket!1969 l!14636 acc!1298)) key!6222))))

(assert (=> b!8050351 (isDefined!14516 (getValueByKey!2767 (toList!11902 (addToMapMapFromBucket!1969 l!14636 acc!1298)) key!6222))))

(declare-fun lt!2724199 () Unit!171374)

(assert (=> b!8050351 (= lt!2724199 lt!2724194)))

(declare-fun lemmaInListThenGetKeysListContains!1221 (List!75637 K!22768) Unit!171374)

(assert (=> b!8050351 (= lt!2724197 (lemmaInListThenGetKeysListContains!1221 (toList!11902 (addToMapMapFromBucket!1969 l!14636 acc!1298)) key!6222))))

(assert (=> b!8050351 call!746847))

(declare-fun b!8050345 () Bool)

(assert (=> b!8050345 (= e!4743462 (contains!21159 (keys!30803 (addToMapMapFromBucket!1969 l!14636 acc!1298)) key!6222))))

(declare-fun d!2397094 () Bool)

(assert (=> d!2397094 e!4743457))

(declare-fun res!3182908 () Bool)

(assert (=> d!2397094 (=> res!3182908 e!4743457)))

(assert (=> d!2397094 (= res!3182908 e!4743459)))

(declare-fun res!3182909 () Bool)

(assert (=> d!2397094 (=> (not res!3182909) (not e!4743459))))

(declare-fun lt!2724198 () Bool)

(assert (=> d!2397094 (= res!3182909 (not lt!2724198))))

(declare-fun lt!2724195 () Bool)

(assert (=> d!2397094 (= lt!2724198 lt!2724195)))

(declare-fun lt!2724192 () Unit!171374)

(assert (=> d!2397094 (= lt!2724192 e!4743458)))

(assert (=> d!2397094 (= c!1475741 lt!2724195)))

(assert (=> d!2397094 (= lt!2724195 (containsKey!4820 (toList!11902 (addToMapMapFromBucket!1969 l!14636 acc!1298)) key!6222))))

(assert (=> d!2397094 (= (contains!21156 (addToMapMapFromBucket!1969 l!14636 acc!1298) key!6222) lt!2724198)))

(assert (= (and d!2397094 c!1475741) b!8050351))

(assert (= (and d!2397094 (not c!1475741)) b!8050343))

(assert (= (and b!8050343 c!1475742) b!8050344))

(assert (= (and b!8050343 (not c!1475742)) b!8050350))

(assert (= (or b!8050351 b!8050343) bm!746842))

(assert (= (and bm!746842 c!1475743) b!8050347))

(assert (= (and bm!746842 (not c!1475743)) b!8050349))

(assert (= (and d!2397094 res!3182909) b!8050346))

(assert (= (and d!2397094 (not res!3182908)) b!8050348))

(assert (= (and b!8050348 res!3182907) b!8050345))

(declare-fun m!8401272 () Bool)

(assert (=> d!2397094 m!8401272))

(assert (=> b!8050345 m!8401248))

(declare-fun m!8401274 () Bool)

(assert (=> b!8050345 m!8401274))

(assert (=> b!8050345 m!8401274))

(declare-fun m!8401276 () Bool)

(assert (=> b!8050345 m!8401276))

(declare-fun m!8401278 () Bool)

(assert (=> b!8050347 m!8401278))

(declare-fun m!8401280 () Bool)

(assert (=> b!8050348 m!8401280))

(assert (=> b!8050348 m!8401280))

(declare-fun m!8401282 () Bool)

(assert (=> b!8050348 m!8401282))

(declare-fun m!8401284 () Bool)

(assert (=> b!8050351 m!8401284))

(assert (=> b!8050351 m!8401280))

(assert (=> b!8050351 m!8401280))

(assert (=> b!8050351 m!8401282))

(declare-fun m!8401286 () Bool)

(assert (=> b!8050351 m!8401286))

(assert (=> b!8050344 m!8401272))

(declare-fun m!8401288 () Bool)

(assert (=> b!8050344 m!8401288))

(declare-fun m!8401290 () Bool)

(assert (=> bm!746842 m!8401290))

(assert (=> b!8050346 m!8401248))

(assert (=> b!8050346 m!8401274))

(assert (=> b!8050346 m!8401274))

(assert (=> b!8050346 m!8401276))

(assert (=> b!8050349 m!8401248))

(assert (=> b!8050349 m!8401274))

(assert (=> b!8050301 d!2397094))

(declare-fun b!8050445 () Bool)

(assert (=> b!8050445 true))

(declare-fun bs!1971912 () Bool)

(declare-fun b!8050447 () Bool)

(assert (= bs!1971912 (and b!8050447 b!8050445)))

(declare-fun lambda!473021 () Int)

(declare-fun lambda!473020 () Int)

(assert (=> bs!1971912 (= lambda!473021 lambda!473020)))

(assert (=> b!8050447 true))

(declare-fun lt!2724375 () ListMap!7255)

(declare-fun lambda!473022 () Int)

(assert (=> bs!1971912 (= (= lt!2724375 acc!1298) (= lambda!473022 lambda!473020))))

(assert (=> b!8050447 (= (= lt!2724375 acc!1298) (= lambda!473022 lambda!473021))))

(assert (=> b!8050447 true))

(declare-fun bs!1971913 () Bool)

(declare-fun d!2397096 () Bool)

(assert (= bs!1971913 (and d!2397096 b!8050445)))

(declare-fun lambda!473023 () Int)

(declare-fun lt!2724381 () ListMap!7255)

(assert (=> bs!1971913 (= (= lt!2724381 acc!1298) (= lambda!473023 lambda!473020))))

(declare-fun bs!1971914 () Bool)

(assert (= bs!1971914 (and d!2397096 b!8050447)))

(assert (=> bs!1971914 (= (= lt!2724381 acc!1298) (= lambda!473023 lambda!473021))))

(assert (=> bs!1971914 (= (= lt!2724381 lt!2724375) (= lambda!473023 lambda!473022))))

(assert (=> d!2397096 true))

(declare-fun b!8050444 () Bool)

(declare-fun res!3182960 () Bool)

(declare-fun e!4743526 () Bool)

(assert (=> b!8050444 (=> (not res!3182960) (not e!4743526))))

(declare-fun forall!18487 (List!75637 Int) Bool)

(assert (=> b!8050444 (= res!3182960 (forall!18487 (toList!11902 acc!1298) lambda!473023))))

(declare-fun e!4743524 () ListMap!7255)

(assert (=> b!8050445 (= e!4743524 acc!1298)))

(declare-fun lt!2724378 () Unit!171374)

(declare-fun call!746870 () Unit!171374)

(assert (=> b!8050445 (= lt!2724378 call!746870)))

(declare-fun call!746872 () Bool)

(assert (=> b!8050445 call!746872))

(declare-fun lt!2724377 () Unit!171374)

(assert (=> b!8050445 (= lt!2724377 lt!2724378)))

(declare-fun call!746871 () Bool)

(assert (=> b!8050445 call!746871))

(declare-fun lt!2724374 () Unit!171374)

(declare-fun Unit!171378 () Unit!171374)

(assert (=> b!8050445 (= lt!2724374 Unit!171378)))

(declare-fun c!1475762 () Bool)

(declare-fun bm!746865 () Bool)

(assert (=> bm!746865 (= call!746871 (forall!18487 (toList!11902 acc!1298) (ite c!1475762 lambda!473020 lambda!473022)))))

(declare-fun bm!746866 () Bool)

(assert (=> bm!746866 (= call!746872 (forall!18487 (toList!11902 acc!1298) (ite c!1475762 lambda!473020 lambda!473022)))))

(declare-fun b!8050446 () Bool)

(declare-fun invariantList!1918 (List!75637) Bool)

(assert (=> b!8050446 (= e!4743526 (invariantList!1918 (toList!11902 lt!2724381)))))

(assert (=> d!2397096 e!4743526))

(declare-fun res!3182959 () Bool)

(assert (=> d!2397096 (=> (not res!3182959) (not e!4743526))))

(assert (=> d!2397096 (= res!3182959 (forall!18487 l!14636 lambda!473023))))

(assert (=> d!2397096 (= lt!2724381 e!4743524)))

(assert (=> d!2397096 (= c!1475762 ((_ is Nil!75511) l!14636))))

(assert (=> d!2397096 (noDuplicateKeys!2688 l!14636)))

(assert (=> d!2397096 (= (addToMapMapFromBucket!1969 l!14636 acc!1298) lt!2724381)))

(declare-fun bm!746867 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!1070 (ListMap!7255) Unit!171374)

(assert (=> bm!746867 (= call!746870 (lemmaContainsAllItsOwnKeys!1070 acc!1298))))

(assert (=> b!8050447 (= e!4743524 lt!2724375)))

(declare-fun lt!2724390 () ListMap!7255)

(assert (=> b!8050447 (= lt!2724390 (+!2654 acc!1298 (h!81959 l!14636)))))

(assert (=> b!8050447 (= lt!2724375 (addToMapMapFromBucket!1969 (t!391409 l!14636) (+!2654 acc!1298 (h!81959 l!14636))))))

(declare-fun lt!2724385 () Unit!171374)

(assert (=> b!8050447 (= lt!2724385 call!746870)))

(assert (=> b!8050447 (forall!18487 (toList!11902 acc!1298) lambda!473021)))

(declare-fun lt!2724376 () Unit!171374)

(assert (=> b!8050447 (= lt!2724376 lt!2724385)))

(assert (=> b!8050447 (forall!18487 (toList!11902 lt!2724390) lambda!473022)))

(declare-fun lt!2724373 () Unit!171374)

(declare-fun Unit!171379 () Unit!171374)

(assert (=> b!8050447 (= lt!2724373 Unit!171379)))

(assert (=> b!8050447 (forall!18487 (t!391409 l!14636) lambda!473022)))

(declare-fun lt!2724382 () Unit!171374)

(declare-fun Unit!171380 () Unit!171374)

(assert (=> b!8050447 (= lt!2724382 Unit!171380)))

(declare-fun lt!2724386 () Unit!171374)

(declare-fun Unit!171381 () Unit!171374)

(assert (=> b!8050447 (= lt!2724386 Unit!171381)))

(declare-fun lt!2724370 () Unit!171374)

(declare-fun forallContained!4641 (List!75637 Int tuple2!70852) Unit!171374)

(assert (=> b!8050447 (= lt!2724370 (forallContained!4641 (toList!11902 lt!2724390) lambda!473022 (h!81959 l!14636)))))

(assert (=> b!8050447 (contains!21156 lt!2724390 (_1!38729 (h!81959 l!14636)))))

(declare-fun lt!2724384 () Unit!171374)

(declare-fun Unit!171382 () Unit!171374)

(assert (=> b!8050447 (= lt!2724384 Unit!171382)))

(assert (=> b!8050447 (contains!21156 lt!2724375 (_1!38729 (h!81959 l!14636)))))

(declare-fun lt!2724372 () Unit!171374)

(declare-fun Unit!171383 () Unit!171374)

(assert (=> b!8050447 (= lt!2724372 Unit!171383)))

(assert (=> b!8050447 (forall!18487 l!14636 lambda!473022)))

(declare-fun lt!2724389 () Unit!171374)

(declare-fun Unit!171384 () Unit!171374)

(assert (=> b!8050447 (= lt!2724389 Unit!171384)))

(assert (=> b!8050447 (forall!18487 (toList!11902 lt!2724390) lambda!473022)))

(declare-fun lt!2724379 () Unit!171374)

(declare-fun Unit!171385 () Unit!171374)

(assert (=> b!8050447 (= lt!2724379 Unit!171385)))

(declare-fun lt!2724388 () Unit!171374)

(declare-fun Unit!171386 () Unit!171374)

(assert (=> b!8050447 (= lt!2724388 Unit!171386)))

(declare-fun lt!2724387 () Unit!171374)

(declare-fun addForallContainsKeyThenBeforeAdding!1068 (ListMap!7255 ListMap!7255 K!22768 V!23022) Unit!171374)

(assert (=> b!8050447 (= lt!2724387 (addForallContainsKeyThenBeforeAdding!1068 acc!1298 lt!2724375 (_1!38729 (h!81959 l!14636)) (_2!38729 (h!81959 l!14636))))))

(assert (=> b!8050447 (forall!18487 (toList!11902 acc!1298) lambda!473022)))

(declare-fun lt!2724371 () Unit!171374)

(assert (=> b!8050447 (= lt!2724371 lt!2724387)))

(assert (=> b!8050447 call!746872))

(declare-fun lt!2724380 () Unit!171374)

(declare-fun Unit!171387 () Unit!171374)

(assert (=> b!8050447 (= lt!2724380 Unit!171387)))

(declare-fun res!3182958 () Bool)

(assert (=> b!8050447 (= res!3182958 (forall!18487 l!14636 lambda!473022))))

(declare-fun e!4743525 () Bool)

(assert (=> b!8050447 (=> (not res!3182958) (not e!4743525))))

(assert (=> b!8050447 e!4743525))

(declare-fun lt!2724383 () Unit!171374)

(declare-fun Unit!171388 () Unit!171374)

(assert (=> b!8050447 (= lt!2724383 Unit!171388)))

(declare-fun b!8050448 () Bool)

(assert (=> b!8050448 (= e!4743525 call!746871)))

(assert (= (and d!2397096 c!1475762) b!8050445))

(assert (= (and d!2397096 (not c!1475762)) b!8050447))

(assert (= (and b!8050447 res!3182958) b!8050448))

(assert (= (or b!8050445 b!8050447) bm!746866))

(assert (= (or b!8050445 b!8050448) bm!746865))

(assert (= (or b!8050445 b!8050447) bm!746867))

(assert (= (and d!2397096 res!3182959) b!8050444))

(assert (= (and b!8050444 res!3182960) b!8050446))

(declare-fun m!8401410 () Bool)

(assert (=> b!8050444 m!8401410))

(declare-fun m!8401412 () Bool)

(assert (=> bm!746865 m!8401412))

(declare-fun m!8401414 () Bool)

(assert (=> bm!746867 m!8401414))

(assert (=> bm!746866 m!8401412))

(declare-fun m!8401416 () Bool)

(assert (=> d!2397096 m!8401416))

(assert (=> d!2397096 m!8401238))

(declare-fun m!8401418 () Bool)

(assert (=> b!8050447 m!8401418))

(declare-fun m!8401420 () Bool)

(assert (=> b!8050447 m!8401420))

(declare-fun m!8401422 () Bool)

(assert (=> b!8050447 m!8401422))

(declare-fun m!8401424 () Bool)

(assert (=> b!8050447 m!8401424))

(declare-fun m!8401426 () Bool)

(assert (=> b!8050447 m!8401426))

(assert (=> b!8050447 m!8401230))

(assert (=> b!8050447 m!8401232))

(declare-fun m!8401428 () Bool)

(assert (=> b!8050447 m!8401428))

(declare-fun m!8401430 () Bool)

(assert (=> b!8050447 m!8401430))

(declare-fun m!8401432 () Bool)

(assert (=> b!8050447 m!8401432))

(assert (=> b!8050447 m!8401422))

(declare-fun m!8401434 () Bool)

(assert (=> b!8050447 m!8401434))

(assert (=> b!8050447 m!8401430))

(assert (=> b!8050447 m!8401230))

(declare-fun m!8401436 () Bool)

(assert (=> b!8050446 m!8401436))

(assert (=> b!8050301 d!2397096))

(declare-fun bs!1971915 () Bool)

(declare-fun b!8050452 () Bool)

(assert (= bs!1971915 (and b!8050452 b!8050445)))

(declare-fun lambda!473024 () Int)

(assert (=> bs!1971915 (= (= (+!2654 acc!1298 (h!81959 l!14636)) acc!1298) (= lambda!473024 lambda!473020))))

(declare-fun bs!1971916 () Bool)

(assert (= bs!1971916 (and b!8050452 b!8050447)))

(assert (=> bs!1971916 (= (= (+!2654 acc!1298 (h!81959 l!14636)) acc!1298) (= lambda!473024 lambda!473021))))

(assert (=> bs!1971916 (= (= (+!2654 acc!1298 (h!81959 l!14636)) lt!2724375) (= lambda!473024 lambda!473022))))

(declare-fun bs!1971917 () Bool)

(assert (= bs!1971917 (and b!8050452 d!2397096)))

(assert (=> bs!1971917 (= (= (+!2654 acc!1298 (h!81959 l!14636)) lt!2724381) (= lambda!473024 lambda!473023))))

(assert (=> b!8050452 true))

(declare-fun bs!1971918 () Bool)

(declare-fun b!8050454 () Bool)

(assert (= bs!1971918 (and b!8050454 b!8050452)))

(declare-fun lambda!473025 () Int)

(assert (=> bs!1971918 (= lambda!473025 lambda!473024)))

(declare-fun bs!1971919 () Bool)

(assert (= bs!1971919 (and b!8050454 b!8050445)))

(assert (=> bs!1971919 (= (= (+!2654 acc!1298 (h!81959 l!14636)) acc!1298) (= lambda!473025 lambda!473020))))

(declare-fun bs!1971920 () Bool)

(assert (= bs!1971920 (and b!8050454 b!8050447)))

(assert (=> bs!1971920 (= (= (+!2654 acc!1298 (h!81959 l!14636)) lt!2724375) (= lambda!473025 lambda!473022))))

(declare-fun bs!1971921 () Bool)

(assert (= bs!1971921 (and b!8050454 d!2397096)))

(assert (=> bs!1971921 (= (= (+!2654 acc!1298 (h!81959 l!14636)) lt!2724381) (= lambda!473025 lambda!473023))))

(assert (=> bs!1971920 (= (= (+!2654 acc!1298 (h!81959 l!14636)) acc!1298) (= lambda!473025 lambda!473021))))

(assert (=> b!8050454 true))

(declare-fun lambda!473026 () Int)

(declare-fun lt!2724396 () ListMap!7255)

(assert (=> bs!1971918 (= (= lt!2724396 (+!2654 acc!1298 (h!81959 l!14636))) (= lambda!473026 lambda!473024))))

(assert (=> b!8050454 (= (= lt!2724396 (+!2654 acc!1298 (h!81959 l!14636))) (= lambda!473026 lambda!473025))))

(assert (=> bs!1971919 (= (= lt!2724396 acc!1298) (= lambda!473026 lambda!473020))))

(assert (=> bs!1971920 (= (= lt!2724396 lt!2724375) (= lambda!473026 lambda!473022))))

(assert (=> bs!1971921 (= (= lt!2724396 lt!2724381) (= lambda!473026 lambda!473023))))

(assert (=> bs!1971920 (= (= lt!2724396 acc!1298) (= lambda!473026 lambda!473021))))

(assert (=> b!8050454 true))

(declare-fun bs!1971922 () Bool)

(declare-fun d!2397112 () Bool)

(assert (= bs!1971922 (and d!2397112 b!8050452)))

(declare-fun lambda!473027 () Int)

(declare-fun lt!2724402 () ListMap!7255)

(assert (=> bs!1971922 (= (= lt!2724402 (+!2654 acc!1298 (h!81959 l!14636))) (= lambda!473027 lambda!473024))))

(declare-fun bs!1971923 () Bool)

(assert (= bs!1971923 (and d!2397112 b!8050454)))

(assert (=> bs!1971923 (= (= lt!2724402 (+!2654 acc!1298 (h!81959 l!14636))) (= lambda!473027 lambda!473025))))

(assert (=> bs!1971923 (= (= lt!2724402 lt!2724396) (= lambda!473027 lambda!473026))))

(declare-fun bs!1971924 () Bool)

(assert (= bs!1971924 (and d!2397112 b!8050445)))

(assert (=> bs!1971924 (= (= lt!2724402 acc!1298) (= lambda!473027 lambda!473020))))

(declare-fun bs!1971925 () Bool)

(assert (= bs!1971925 (and d!2397112 b!8050447)))

(assert (=> bs!1971925 (= (= lt!2724402 lt!2724375) (= lambda!473027 lambda!473022))))

(declare-fun bs!1971926 () Bool)

(assert (= bs!1971926 (and d!2397112 d!2397096)))

(assert (=> bs!1971926 (= (= lt!2724402 lt!2724381) (= lambda!473027 lambda!473023))))

(assert (=> bs!1971925 (= (= lt!2724402 acc!1298) (= lambda!473027 lambda!473021))))

(assert (=> d!2397112 true))

(declare-fun b!8050451 () Bool)

(declare-fun res!3182963 () Bool)

(declare-fun e!4743529 () Bool)

(assert (=> b!8050451 (=> (not res!3182963) (not e!4743529))))

(assert (=> b!8050451 (= res!3182963 (forall!18487 (toList!11902 (+!2654 acc!1298 (h!81959 l!14636))) lambda!473027))))

(declare-fun e!4743527 () ListMap!7255)

(assert (=> b!8050452 (= e!4743527 (+!2654 acc!1298 (h!81959 l!14636)))))

(declare-fun lt!2724399 () Unit!171374)

(declare-fun call!746873 () Unit!171374)

(assert (=> b!8050452 (= lt!2724399 call!746873)))

(declare-fun call!746875 () Bool)

(assert (=> b!8050452 call!746875))

(declare-fun lt!2724398 () Unit!171374)

(assert (=> b!8050452 (= lt!2724398 lt!2724399)))

(declare-fun call!746874 () Bool)

(assert (=> b!8050452 call!746874))

(declare-fun lt!2724395 () Unit!171374)

(declare-fun Unit!171389 () Unit!171374)

(assert (=> b!8050452 (= lt!2724395 Unit!171389)))

(declare-fun bm!746868 () Bool)

(declare-fun c!1475763 () Bool)

(assert (=> bm!746868 (= call!746874 (forall!18487 (toList!11902 (+!2654 acc!1298 (h!81959 l!14636))) (ite c!1475763 lambda!473024 lambda!473026)))))

(declare-fun bm!746869 () Bool)

(assert (=> bm!746869 (= call!746875 (forall!18487 (toList!11902 (+!2654 acc!1298 (h!81959 l!14636))) (ite c!1475763 lambda!473024 lambda!473026)))))

(declare-fun b!8050453 () Bool)

(assert (=> b!8050453 (= e!4743529 (invariantList!1918 (toList!11902 lt!2724402)))))

(assert (=> d!2397112 e!4743529))

(declare-fun res!3182962 () Bool)

(assert (=> d!2397112 (=> (not res!3182962) (not e!4743529))))

(assert (=> d!2397112 (= res!3182962 (forall!18487 (t!391409 l!14636) lambda!473027))))

(assert (=> d!2397112 (= lt!2724402 e!4743527)))

(assert (=> d!2397112 (= c!1475763 ((_ is Nil!75511) (t!391409 l!14636)))))

(assert (=> d!2397112 (noDuplicateKeys!2688 (t!391409 l!14636))))

(assert (=> d!2397112 (= (addToMapMapFromBucket!1969 (t!391409 l!14636) (+!2654 acc!1298 (h!81959 l!14636))) lt!2724402)))

(declare-fun bm!746870 () Bool)

(assert (=> bm!746870 (= call!746873 (lemmaContainsAllItsOwnKeys!1070 (+!2654 acc!1298 (h!81959 l!14636))))))

(assert (=> b!8050454 (= e!4743527 lt!2724396)))

(declare-fun lt!2724411 () ListMap!7255)

(assert (=> b!8050454 (= lt!2724411 (+!2654 (+!2654 acc!1298 (h!81959 l!14636)) (h!81959 (t!391409 l!14636))))))

(assert (=> b!8050454 (= lt!2724396 (addToMapMapFromBucket!1969 (t!391409 (t!391409 l!14636)) (+!2654 (+!2654 acc!1298 (h!81959 l!14636)) (h!81959 (t!391409 l!14636)))))))

(declare-fun lt!2724406 () Unit!171374)

(assert (=> b!8050454 (= lt!2724406 call!746873)))

(assert (=> b!8050454 (forall!18487 (toList!11902 (+!2654 acc!1298 (h!81959 l!14636))) lambda!473025)))

(declare-fun lt!2724397 () Unit!171374)

(assert (=> b!8050454 (= lt!2724397 lt!2724406)))

(assert (=> b!8050454 (forall!18487 (toList!11902 lt!2724411) lambda!473026)))

(declare-fun lt!2724394 () Unit!171374)

(declare-fun Unit!171390 () Unit!171374)

(assert (=> b!8050454 (= lt!2724394 Unit!171390)))

(assert (=> b!8050454 (forall!18487 (t!391409 (t!391409 l!14636)) lambda!473026)))

(declare-fun lt!2724403 () Unit!171374)

(declare-fun Unit!171391 () Unit!171374)

(assert (=> b!8050454 (= lt!2724403 Unit!171391)))

(declare-fun lt!2724407 () Unit!171374)

(declare-fun Unit!171392 () Unit!171374)

(assert (=> b!8050454 (= lt!2724407 Unit!171392)))

(declare-fun lt!2724391 () Unit!171374)

(assert (=> b!8050454 (= lt!2724391 (forallContained!4641 (toList!11902 lt!2724411) lambda!473026 (h!81959 (t!391409 l!14636))))))

(assert (=> b!8050454 (contains!21156 lt!2724411 (_1!38729 (h!81959 (t!391409 l!14636))))))

(declare-fun lt!2724405 () Unit!171374)

(declare-fun Unit!171393 () Unit!171374)

(assert (=> b!8050454 (= lt!2724405 Unit!171393)))

(assert (=> b!8050454 (contains!21156 lt!2724396 (_1!38729 (h!81959 (t!391409 l!14636))))))

(declare-fun lt!2724393 () Unit!171374)

(declare-fun Unit!171394 () Unit!171374)

(assert (=> b!8050454 (= lt!2724393 Unit!171394)))

(assert (=> b!8050454 (forall!18487 (t!391409 l!14636) lambda!473026)))

(declare-fun lt!2724410 () Unit!171374)

(declare-fun Unit!171395 () Unit!171374)

(assert (=> b!8050454 (= lt!2724410 Unit!171395)))

(assert (=> b!8050454 (forall!18487 (toList!11902 lt!2724411) lambda!473026)))

(declare-fun lt!2724400 () Unit!171374)

(declare-fun Unit!171396 () Unit!171374)

(assert (=> b!8050454 (= lt!2724400 Unit!171396)))

(declare-fun lt!2724409 () Unit!171374)

(declare-fun Unit!171397 () Unit!171374)

(assert (=> b!8050454 (= lt!2724409 Unit!171397)))

(declare-fun lt!2724408 () Unit!171374)

(assert (=> b!8050454 (= lt!2724408 (addForallContainsKeyThenBeforeAdding!1068 (+!2654 acc!1298 (h!81959 l!14636)) lt!2724396 (_1!38729 (h!81959 (t!391409 l!14636))) (_2!38729 (h!81959 (t!391409 l!14636)))))))

(assert (=> b!8050454 (forall!18487 (toList!11902 (+!2654 acc!1298 (h!81959 l!14636))) lambda!473026)))

(declare-fun lt!2724392 () Unit!171374)

(assert (=> b!8050454 (= lt!2724392 lt!2724408)))

(assert (=> b!8050454 call!746875))

(declare-fun lt!2724401 () Unit!171374)

(declare-fun Unit!171398 () Unit!171374)

(assert (=> b!8050454 (= lt!2724401 Unit!171398)))

(declare-fun res!3182961 () Bool)

(assert (=> b!8050454 (= res!3182961 (forall!18487 (t!391409 l!14636) lambda!473026))))

(declare-fun e!4743528 () Bool)

(assert (=> b!8050454 (=> (not res!3182961) (not e!4743528))))

(assert (=> b!8050454 e!4743528))

(declare-fun lt!2724404 () Unit!171374)

(declare-fun Unit!171399 () Unit!171374)

(assert (=> b!8050454 (= lt!2724404 Unit!171399)))

(declare-fun b!8050455 () Bool)

(assert (=> b!8050455 (= e!4743528 call!746874)))

(assert (= (and d!2397112 c!1475763) b!8050452))

(assert (= (and d!2397112 (not c!1475763)) b!8050454))

(assert (= (and b!8050454 res!3182961) b!8050455))

(assert (= (or b!8050452 b!8050454) bm!746869))

(assert (= (or b!8050452 b!8050455) bm!746868))

(assert (= (or b!8050452 b!8050454) bm!746870))

(assert (= (and d!2397112 res!3182962) b!8050451))

(assert (= (and b!8050451 res!3182963) b!8050453))

(declare-fun m!8401438 () Bool)

(assert (=> b!8050451 m!8401438))

(declare-fun m!8401440 () Bool)

(assert (=> bm!746868 m!8401440))

(assert (=> bm!746870 m!8401230))

(declare-fun m!8401442 () Bool)

(assert (=> bm!746870 m!8401442))

(assert (=> bm!746869 m!8401440))

(declare-fun m!8401444 () Bool)

(assert (=> d!2397112 m!8401444))

(declare-fun m!8401446 () Bool)

(assert (=> d!2397112 m!8401446))

(declare-fun m!8401448 () Bool)

(assert (=> b!8050454 m!8401448))

(assert (=> b!8050454 m!8401230))

(declare-fun m!8401450 () Bool)

(assert (=> b!8050454 m!8401450))

(declare-fun m!8401452 () Bool)

(assert (=> b!8050454 m!8401452))

(declare-fun m!8401454 () Bool)

(assert (=> b!8050454 m!8401454))

(declare-fun m!8401456 () Bool)

(assert (=> b!8050454 m!8401456))

(declare-fun m!8401458 () Bool)

(assert (=> b!8050454 m!8401458))

(declare-fun m!8401460 () Bool)

(assert (=> b!8050454 m!8401460))

(declare-fun m!8401462 () Bool)

(assert (=> b!8050454 m!8401462))

(declare-fun m!8401464 () Bool)

(assert (=> b!8050454 m!8401464))

(declare-fun m!8401466 () Bool)

(assert (=> b!8050454 m!8401466))

(assert (=> b!8050454 m!8401452))

(declare-fun m!8401468 () Bool)

(assert (=> b!8050454 m!8401468))

(assert (=> b!8050454 m!8401464))

(assert (=> b!8050454 m!8401230))

(assert (=> b!8050454 m!8401458))

(declare-fun m!8401470 () Bool)

(assert (=> b!8050453 m!8401470))

(assert (=> b!8050307 d!2397112))

(declare-fun d!2397114 () Bool)

(declare-fun e!4743532 () Bool)

(assert (=> d!2397114 e!4743532))

(declare-fun res!3182968 () Bool)

(assert (=> d!2397114 (=> (not res!3182968) (not e!4743532))))

(declare-fun lt!2724423 () ListMap!7255)

(assert (=> d!2397114 (= res!3182968 (contains!21156 lt!2724423 (_1!38729 (h!81959 l!14636))))))

(declare-fun lt!2724422 () List!75637)

(assert (=> d!2397114 (= lt!2724423 (ListMap!7256 lt!2724422))))

(declare-fun lt!2724420 () Unit!171374)

(declare-fun lt!2724421 () Unit!171374)

(assert (=> d!2397114 (= lt!2724420 lt!2724421)))

(assert (=> d!2397114 (= (getValueByKey!2767 lt!2724422 (_1!38729 (h!81959 l!14636))) (Some!17982 (_2!38729 (h!81959 l!14636))))))

(declare-fun lemmaContainsTupThenGetReturnValue!1263 (List!75637 K!22768 V!23022) Unit!171374)

(assert (=> d!2397114 (= lt!2724421 (lemmaContainsTupThenGetReturnValue!1263 lt!2724422 (_1!38729 (h!81959 l!14636)) (_2!38729 (h!81959 l!14636))))))

(declare-fun insertNoDuplicatedKeys!771 (List!75637 K!22768 V!23022) List!75637)

(assert (=> d!2397114 (= lt!2724422 (insertNoDuplicatedKeys!771 (toList!11902 acc!1298) (_1!38729 (h!81959 l!14636)) (_2!38729 (h!81959 l!14636))))))

(assert (=> d!2397114 (= (+!2654 acc!1298 (h!81959 l!14636)) lt!2724423)))

(declare-fun b!8050460 () Bool)

(declare-fun res!3182969 () Bool)

(assert (=> b!8050460 (=> (not res!3182969) (not e!4743532))))

(assert (=> b!8050460 (= res!3182969 (= (getValueByKey!2767 (toList!11902 lt!2724423) (_1!38729 (h!81959 l!14636))) (Some!17982 (_2!38729 (h!81959 l!14636)))))))

(declare-fun b!8050461 () Bool)

(assert (=> b!8050461 (= e!4743532 (contains!21157 (toList!11902 lt!2724423) (h!81959 l!14636)))))

(assert (= (and d!2397114 res!3182968) b!8050460))

(assert (= (and b!8050460 res!3182969) b!8050461))

(declare-fun m!8401472 () Bool)

(assert (=> d!2397114 m!8401472))

(declare-fun m!8401474 () Bool)

(assert (=> d!2397114 m!8401474))

(declare-fun m!8401476 () Bool)

(assert (=> d!2397114 m!8401476))

(declare-fun m!8401478 () Bool)

(assert (=> d!2397114 m!8401478))

(declare-fun m!8401480 () Bool)

(assert (=> b!8050460 m!8401480))

(declare-fun m!8401482 () Bool)

(assert (=> b!8050461 m!8401482))

(assert (=> b!8050307 d!2397114))

(declare-fun d!2397116 () Bool)

(declare-fun res!3182974 () Bool)

(declare-fun e!4743537 () Bool)

(assert (=> d!2397116 (=> res!3182974 e!4743537)))

(assert (=> d!2397116 (= res!3182974 (and ((_ is Cons!75511) l!14636) (= (_1!38729 (h!81959 l!14636)) key!6222)))))

(assert (=> d!2397116 (= (containsKey!4818 l!14636 key!6222) e!4743537)))

(declare-fun b!8050466 () Bool)

(declare-fun e!4743538 () Bool)

(assert (=> b!8050466 (= e!4743537 e!4743538)))

(declare-fun res!3182975 () Bool)

(assert (=> b!8050466 (=> (not res!3182975) (not e!4743538))))

(assert (=> b!8050466 (= res!3182975 ((_ is Cons!75511) l!14636))))

(declare-fun b!8050467 () Bool)

(assert (=> b!8050467 (= e!4743538 (containsKey!4818 (t!391409 l!14636) key!6222))))

(assert (= (and d!2397116 (not res!3182974)) b!8050466))

(assert (= (and b!8050466 res!3182975) b!8050467))

(declare-fun m!8401484 () Bool)

(assert (=> b!8050467 m!8401484))

(assert (=> b!8050302 d!2397116))

(declare-fun d!2397118 () Bool)

(declare-fun get!27192 (Option!17983) V!23022)

(assert (=> d!2397118 (= (apply!14415 acc!1298 key!6222) (get!27192 (getValueByKey!2767 (toList!11902 acc!1298) key!6222)))))

(declare-fun bs!1971927 () Bool)

(assert (= bs!1971927 d!2397118))

(declare-fun m!8401486 () Bool)

(assert (=> bs!1971927 m!8401486))

(assert (=> bs!1971927 m!8401486))

(declare-fun m!8401488 () Bool)

(assert (=> bs!1971927 m!8401488))

(assert (=> b!8050309 d!2397118))

(assert (=> b!8050304 d!2397116))

(declare-fun bm!746871 () Bool)

(declare-fun call!746876 () Bool)

(declare-fun e!4743543 () List!75639)

(assert (=> bm!746871 (= call!746876 (contains!21159 e!4743543 key!6222))))

(declare-fun c!1475766 () Bool)

(declare-fun c!1475764 () Bool)

(assert (=> bm!746871 (= c!1475766 c!1475764)))

(declare-fun b!8050468 () Bool)

(declare-fun e!4743540 () Unit!171374)

(declare-fun e!4743542 () Unit!171374)

(assert (=> b!8050468 (= e!4743540 e!4743542)))

(declare-fun c!1475765 () Bool)

(assert (=> b!8050468 (= c!1475765 call!746876)))

(declare-fun b!8050469 () Bool)

(assert (=> b!8050469 false))

(declare-fun lt!2724428 () Unit!171374)

(declare-fun lt!2724425 () Unit!171374)

(assert (=> b!8050469 (= lt!2724428 lt!2724425)))

(assert (=> b!8050469 (containsKey!4820 (toList!11902 acc!1298) key!6222)))

(assert (=> b!8050469 (= lt!2724425 (lemmaInGetKeysListThenContainsKey!1226 (toList!11902 acc!1298) key!6222))))

(declare-fun Unit!171400 () Unit!171374)

(assert (=> b!8050469 (= e!4743542 Unit!171400)))

(declare-fun b!8050471 () Bool)

(declare-fun e!4743541 () Bool)

(assert (=> b!8050471 (= e!4743541 (not (contains!21159 (keys!30803 acc!1298) key!6222)))))

(declare-fun b!8050472 () Bool)

(assert (=> b!8050472 (= e!4743543 (getKeysList!1226 (toList!11902 acc!1298)))))

(declare-fun b!8050473 () Bool)

(declare-fun e!4743539 () Bool)

(declare-fun e!4743544 () Bool)

(assert (=> b!8050473 (= e!4743539 e!4743544)))

(declare-fun res!3182976 () Bool)

(assert (=> b!8050473 (=> (not res!3182976) (not e!4743544))))

(assert (=> b!8050473 (= res!3182976 (isDefined!14516 (getValueByKey!2767 (toList!11902 acc!1298) key!6222)))))

(declare-fun b!8050474 () Bool)

(assert (=> b!8050474 (= e!4743543 (keys!30803 acc!1298))))

(declare-fun b!8050475 () Bool)

(declare-fun Unit!171401 () Unit!171374)

(assert (=> b!8050475 (= e!4743542 Unit!171401)))

(declare-fun b!8050476 () Bool)

(declare-fun lt!2724429 () Unit!171374)

(assert (=> b!8050476 (= e!4743540 lt!2724429)))

(declare-fun lt!2724426 () Unit!171374)

(assert (=> b!8050476 (= lt!2724426 (lemmaContainsKeyImpliesGetValueByKeyDefined!2538 (toList!11902 acc!1298) key!6222))))

(assert (=> b!8050476 (isDefined!14516 (getValueByKey!2767 (toList!11902 acc!1298) key!6222))))

(declare-fun lt!2724431 () Unit!171374)

(assert (=> b!8050476 (= lt!2724431 lt!2724426)))

(assert (=> b!8050476 (= lt!2724429 (lemmaInListThenGetKeysListContains!1221 (toList!11902 acc!1298) key!6222))))

(assert (=> b!8050476 call!746876))

(declare-fun b!8050470 () Bool)

(assert (=> b!8050470 (= e!4743544 (contains!21159 (keys!30803 acc!1298) key!6222))))

(declare-fun d!2397120 () Bool)

(assert (=> d!2397120 e!4743539))

(declare-fun res!3182977 () Bool)

(assert (=> d!2397120 (=> res!3182977 e!4743539)))

(assert (=> d!2397120 (= res!3182977 e!4743541)))

(declare-fun res!3182978 () Bool)

(assert (=> d!2397120 (=> (not res!3182978) (not e!4743541))))

(declare-fun lt!2724430 () Bool)

(assert (=> d!2397120 (= res!3182978 (not lt!2724430))))

(declare-fun lt!2724427 () Bool)

(assert (=> d!2397120 (= lt!2724430 lt!2724427)))

(declare-fun lt!2724424 () Unit!171374)

(assert (=> d!2397120 (= lt!2724424 e!4743540)))

(assert (=> d!2397120 (= c!1475764 lt!2724427)))

(assert (=> d!2397120 (= lt!2724427 (containsKey!4820 (toList!11902 acc!1298) key!6222))))

(assert (=> d!2397120 (= (contains!21156 acc!1298 key!6222) lt!2724430)))

(assert (= (and d!2397120 c!1475764) b!8050476))

(assert (= (and d!2397120 (not c!1475764)) b!8050468))

(assert (= (and b!8050468 c!1475765) b!8050469))

(assert (= (and b!8050468 (not c!1475765)) b!8050475))

(assert (= (or b!8050476 b!8050468) bm!746871))

(assert (= (and bm!746871 c!1475766) b!8050472))

(assert (= (and bm!746871 (not c!1475766)) b!8050474))

(assert (= (and d!2397120 res!3182978) b!8050471))

(assert (= (and d!2397120 (not res!3182977)) b!8050473))

(assert (= (and b!8050473 res!3182976) b!8050470))

(declare-fun m!8401490 () Bool)

(assert (=> d!2397120 m!8401490))

(declare-fun m!8401492 () Bool)

(assert (=> b!8050470 m!8401492))

(assert (=> b!8050470 m!8401492))

(declare-fun m!8401494 () Bool)

(assert (=> b!8050470 m!8401494))

(declare-fun m!8401496 () Bool)

(assert (=> b!8050472 m!8401496))

(assert (=> b!8050473 m!8401486))

(assert (=> b!8050473 m!8401486))

(declare-fun m!8401498 () Bool)

(assert (=> b!8050473 m!8401498))

(declare-fun m!8401500 () Bool)

(assert (=> b!8050476 m!8401500))

(assert (=> b!8050476 m!8401486))

(assert (=> b!8050476 m!8401486))

(assert (=> b!8050476 m!8401498))

(declare-fun m!8401502 () Bool)

(assert (=> b!8050476 m!8401502))

(assert (=> b!8050469 m!8401490))

(declare-fun m!8401504 () Bool)

(assert (=> b!8050469 m!8401504))

(declare-fun m!8401506 () Bool)

(assert (=> bm!746871 m!8401506))

(assert (=> b!8050471 m!8401492))

(assert (=> b!8050471 m!8401492))

(assert (=> b!8050471 m!8401494))

(assert (=> b!8050474 m!8401492))

(assert (=> b!8050299 d!2397120))

(declare-fun lt!2724432 () Bool)

(declare-fun d!2397122 () Bool)

(assert (=> d!2397122 (= lt!2724432 (select (content!16091 l!14636) (tuple2!70853 key!6222 value!3131)))))

(declare-fun e!4743546 () Bool)

(assert (=> d!2397122 (= lt!2724432 e!4743546)))

(declare-fun res!3182980 () Bool)

(assert (=> d!2397122 (=> (not res!3182980) (not e!4743546))))

(assert (=> d!2397122 (= res!3182980 ((_ is Cons!75511) l!14636))))

(assert (=> d!2397122 (= (contains!21157 l!14636 (tuple2!70853 key!6222 value!3131)) lt!2724432)))

(declare-fun b!8050477 () Bool)

(declare-fun e!4743545 () Bool)

(assert (=> b!8050477 (= e!4743546 e!4743545)))

(declare-fun res!3182979 () Bool)

(assert (=> b!8050477 (=> res!3182979 e!4743545)))

(assert (=> b!8050477 (= res!3182979 (= (h!81959 l!14636) (tuple2!70853 key!6222 value!3131)))))

(declare-fun b!8050478 () Bool)

(assert (=> b!8050478 (= e!4743545 (contains!21157 (t!391409 l!14636) (tuple2!70853 key!6222 value!3131)))))

(assert (= (and d!2397122 res!3182980) b!8050477))

(assert (= (and b!8050477 (not res!3182979)) b!8050478))

(declare-fun m!8401508 () Bool)

(assert (=> d!2397122 m!8401508))

(declare-fun m!8401510 () Bool)

(assert (=> d!2397122 m!8401510))

(assert (=> b!8050478 m!8401242))

(assert (=> b!8050310 d!2397122))

(declare-fun d!2397124 () Bool)

(declare-fun res!3182985 () Bool)

(declare-fun e!4743551 () Bool)

(assert (=> d!2397124 (=> res!3182985 e!4743551)))

(assert (=> d!2397124 (= res!3182985 (not ((_ is Cons!75511) l!14636)))))

(assert (=> d!2397124 (= (noDuplicateKeys!2688 l!14636) e!4743551)))

(declare-fun b!8050483 () Bool)

(declare-fun e!4743552 () Bool)

(assert (=> b!8050483 (= e!4743551 e!4743552)))

(declare-fun res!3182986 () Bool)

(assert (=> b!8050483 (=> (not res!3182986) (not e!4743552))))

(assert (=> b!8050483 (= res!3182986 (not (containsKey!4818 (t!391409 l!14636) (_1!38729 (h!81959 l!14636)))))))

(declare-fun b!8050484 () Bool)

(assert (=> b!8050484 (= e!4743552 (noDuplicateKeys!2688 (t!391409 l!14636)))))

(assert (= (and d!2397124 (not res!3182985)) b!8050483))

(assert (= (and b!8050483 res!3182986) b!8050484))

(declare-fun m!8401512 () Bool)

(assert (=> b!8050483 m!8401512))

(assert (=> b!8050484 m!8401446))

(assert (=> start!758118 d!2397124))

(declare-fun d!2397126 () Bool)

(assert (=> d!2397126 (= (inv!97257 acc!1298) (invariantList!1918 (toList!11902 acc!1298)))))

(declare-fun bs!1971928 () Bool)

(assert (= bs!1971928 d!2397126))

(declare-fun m!8401514 () Bool)

(assert (=> bs!1971928 m!8401514))

(assert (=> start!758118 d!2397126))

(declare-fun tp!2413568 () Bool)

(declare-fun b!8050489 () Bool)

(declare-fun e!4743555 () Bool)

(assert (=> b!8050489 (= e!4743555 (and tp_is_empty!54827 tp_is_empty!54829 tp!2413568))))

(assert (=> b!8050308 (= tp!2413560 e!4743555)))

(assert (= (and b!8050308 ((_ is Cons!75511) (toList!11902 acc!1298))) b!8050489))

(declare-fun tp!2413569 () Bool)

(declare-fun b!8050490 () Bool)

(declare-fun e!4743556 () Bool)

(assert (=> b!8050490 (= e!4743556 (and tp_is_empty!54827 tp_is_empty!54829 tp!2413569))))

(assert (=> b!8050305 (= tp!2413561 e!4743556)))

(assert (= (and b!8050305 ((_ is Cons!75511) (t!391409 l!14636))) b!8050490))

(check-sat (not b!8050446) (not b!8050344) (not b!8050469) (not bm!746868) (not b!8050489) (not b!8050483) (not b!8050346) (not b!8050444) (not bm!746871) (not d!2397126) (not b!8050472) (not b!8050460) (not b!8050349) (not d!2397094) (not b!8050345) (not b!8050454) (not b!8050490) (not d!2397090) (not b!8050473) (not b!8050453) (not d!2397118) (not d!2397112) (not b!8050347) (not b!8050476) (not bm!746870) (not b!8050467) (not d!2397114) (not bm!746866) (not b!8050474) (not b!8050461) (not b!8050348) (not b!8050470) (not bm!746867) (not bm!746865) (not b!8050484) (not b!8050447) (not d!2397120) tp_is_empty!54827 (not b!8050351) (not bm!746869) (not b!8050471) (not b!8050324) (not d!2397122) (not bm!746842) (not b!8050451) (not b!8050478) tp_is_empty!54829 (not d!2397096))
(check-sat)
