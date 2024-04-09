; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!75124 () Bool)

(assert start!75124)

(declare-fun res!601317 () Bool)

(declare-fun e!492662 () Bool)

(assert (=> start!75124 (=> (not res!601317) (not e!492662))))

(declare-datatypes ((B!1252 0))(
  ( (B!1253 (val!8932 Int)) )
))
(declare-datatypes ((tuple2!11884 0))(
  ( (tuple2!11885 (_1!5952 (_ BitVec 64)) (_2!5952 B!1252)) )
))
(declare-datatypes ((List!17732 0))(
  ( (Nil!17729) (Cons!17728 (h!18859 tuple2!11884) (t!25017 List!17732)) )
))
(declare-fun l!906 () List!17732)

(declare-fun isStrictlySorted!468 (List!17732) Bool)

(assert (=> start!75124 (= res!601317 (isStrictlySorted!468 l!906))))

(assert (=> start!75124 e!492662))

(declare-fun e!492661 () Bool)

(assert (=> start!75124 e!492661))

(assert (=> start!75124 true))

(declare-fun tp_is_empty!17763 () Bool)

(assert (=> start!75124 tp_is_empty!17763))

(declare-fun b!885163 () Bool)

(declare-fun res!601318 () Bool)

(assert (=> b!885163 (=> (not res!601318) (not e!492662))))

(declare-fun key1!49 () (_ BitVec 64))

(get-info :version)

(assert (=> b!885163 (= res!601318 (and ((_ is Cons!17728) l!906) (bvslt (_1!5952 (h!18859 l!906)) key1!49)))))

(declare-fun v1!38 () B!1252)

(declare-fun b!885165 () Bool)

(declare-fun insertStrictlySorted!289 (List!17732 (_ BitVec 64) B!1252) List!17732)

(assert (=> b!885165 (= e!492662 (not (isStrictlySorted!468 (insertStrictlySorted!289 l!906 key1!49 v1!38))))))

(declare-fun v2!16 () B!1252)

(assert (=> b!885165 (= (insertStrictlySorted!289 (insertStrictlySorted!289 (t!25017 l!906) key1!49 v1!38) key1!49 v2!16) (insertStrictlySorted!289 (t!25017 l!906) key1!49 v2!16))))

(declare-datatypes ((Unit!30195 0))(
  ( (Unit!30196) )
))
(declare-fun lt!400941 () Unit!30195)

(declare-fun lemmaInsertStrictlySortedErasesIfSameKey!8 (List!17732 (_ BitVec 64) B!1252 B!1252) Unit!30195)

(assert (=> b!885165 (= lt!400941 (lemmaInsertStrictlySortedErasesIfSameKey!8 (t!25017 l!906) key1!49 v1!38 v2!16))))

(declare-fun b!885164 () Bool)

(declare-fun res!601319 () Bool)

(assert (=> b!885164 (=> (not res!601319) (not e!492662))))

(assert (=> b!885164 (= res!601319 (isStrictlySorted!468 (t!25017 l!906)))))

(declare-fun b!885166 () Bool)

(declare-fun tp!54252 () Bool)

(assert (=> b!885166 (= e!492661 (and tp_is_empty!17763 tp!54252))))

(assert (= (and start!75124 res!601317) b!885163))

(assert (= (and b!885163 res!601318) b!885164))

(assert (= (and b!885164 res!601319) b!885165))

(assert (= (and start!75124 ((_ is Cons!17728) l!906)) b!885166))

(declare-fun m!825531 () Bool)

(assert (=> start!75124 m!825531))

(declare-fun m!825533 () Bool)

(assert (=> b!885165 m!825533))

(declare-fun m!825535 () Bool)

(assert (=> b!885165 m!825535))

(declare-fun m!825537 () Bool)

(assert (=> b!885165 m!825537))

(declare-fun m!825539 () Bool)

(assert (=> b!885165 m!825539))

(declare-fun m!825541 () Bool)

(assert (=> b!885165 m!825541))

(assert (=> b!885165 m!825539))

(declare-fun m!825543 () Bool)

(assert (=> b!885165 m!825543))

(assert (=> b!885165 m!825533))

(declare-fun m!825545 () Bool)

(assert (=> b!885164 m!825545))

(check-sat (not b!885166) (not start!75124) tp_is_empty!17763 (not b!885165) (not b!885164))
(check-sat)
(get-model)

(declare-fun d!109289 () Bool)

(assert (=> d!109289 (= (insertStrictlySorted!289 (insertStrictlySorted!289 (t!25017 l!906) key1!49 v1!38) key1!49 v2!16) (insertStrictlySorted!289 (t!25017 l!906) key1!49 v2!16))))

(declare-fun lt!400947 () Unit!30195)

(declare-fun choose!1455 (List!17732 (_ BitVec 64) B!1252 B!1252) Unit!30195)

(assert (=> d!109289 (= lt!400947 (choose!1455 (t!25017 l!906) key1!49 v1!38 v2!16))))

(assert (=> d!109289 (isStrictlySorted!468 (t!25017 l!906))))

(assert (=> d!109289 (= (lemmaInsertStrictlySortedErasesIfSameKey!8 (t!25017 l!906) key1!49 v1!38 v2!16) lt!400947)))

(declare-fun bs!24814 () Bool)

(assert (= bs!24814 d!109289))

(assert (=> bs!24814 m!825533))

(assert (=> bs!24814 m!825535))

(assert (=> bs!24814 m!825533))

(assert (=> bs!24814 m!825545))

(declare-fun m!825563 () Bool)

(assert (=> bs!24814 m!825563))

(assert (=> bs!24814 m!825543))

(assert (=> b!885165 d!109289))

(declare-fun bm!39079 () Bool)

(declare-fun call!39083 () List!17732)

(declare-fun call!39082 () List!17732)

(assert (=> bm!39079 (= call!39083 call!39082)))

(declare-fun b!885237 () Bool)

(declare-fun e!492701 () List!17732)

(assert (=> b!885237 (= e!492701 call!39083)))

(declare-fun bm!39080 () Bool)

(declare-fun call!39084 () List!17732)

(assert (=> bm!39080 (= call!39082 call!39084)))

(declare-fun b!885238 () Bool)

(assert (=> b!885238 (= e!492701 call!39083)))

(declare-fun c!93188 () Bool)

(declare-fun b!885239 () Bool)

(assert (=> b!885239 (= c!93188 (and ((_ is Cons!17728) (insertStrictlySorted!289 (t!25017 l!906) key1!49 v1!38)) (bvsgt (_1!5952 (h!18859 (insertStrictlySorted!289 (t!25017 l!906) key1!49 v1!38))) key1!49)))))

(declare-fun e!492705 () List!17732)

(assert (=> b!885239 (= e!492705 e!492701)))

(declare-fun b!885240 () Bool)

(assert (=> b!885240 (= e!492705 call!39082)))

(declare-fun b!885241 () Bool)

(declare-fun e!492704 () List!17732)

(assert (=> b!885241 (= e!492704 call!39084)))

(declare-fun d!109295 () Bool)

(declare-fun e!492703 () Bool)

(assert (=> d!109295 e!492703))

(declare-fun res!601343 () Bool)

(assert (=> d!109295 (=> (not res!601343) (not e!492703))))

(declare-fun lt!400960 () List!17732)

(assert (=> d!109295 (= res!601343 (isStrictlySorted!468 lt!400960))))

(assert (=> d!109295 (= lt!400960 e!492704)))

(declare-fun c!93186 () Bool)

(assert (=> d!109295 (= c!93186 (and ((_ is Cons!17728) (insertStrictlySorted!289 (t!25017 l!906) key1!49 v1!38)) (bvslt (_1!5952 (h!18859 (insertStrictlySorted!289 (t!25017 l!906) key1!49 v1!38))) key1!49)))))

(assert (=> d!109295 (isStrictlySorted!468 (insertStrictlySorted!289 (t!25017 l!906) key1!49 v1!38))))

(assert (=> d!109295 (= (insertStrictlySorted!289 (insertStrictlySorted!289 (t!25017 l!906) key1!49 v1!38) key1!49 v2!16) lt!400960)))

(declare-fun b!885242 () Bool)

(declare-fun contains!4285 (List!17732 tuple2!11884) Bool)

(assert (=> b!885242 (= e!492703 (contains!4285 lt!400960 (tuple2!11885 key1!49 v2!16)))))

(declare-fun e!492702 () List!17732)

(declare-fun c!93187 () Bool)

(declare-fun b!885243 () Bool)

(assert (=> b!885243 (= e!492702 (ite c!93187 (t!25017 (insertStrictlySorted!289 (t!25017 l!906) key1!49 v1!38)) (ite c!93188 (Cons!17728 (h!18859 (insertStrictlySorted!289 (t!25017 l!906) key1!49 v1!38)) (t!25017 (insertStrictlySorted!289 (t!25017 l!906) key1!49 v1!38))) Nil!17729)))))

(declare-fun b!885244 () Bool)

(assert (=> b!885244 (= e!492702 (insertStrictlySorted!289 (t!25017 (insertStrictlySorted!289 (t!25017 l!906) key1!49 v1!38)) key1!49 v2!16))))

(declare-fun b!885245 () Bool)

(assert (=> b!885245 (= e!492704 e!492705)))

(assert (=> b!885245 (= c!93187 (and ((_ is Cons!17728) (insertStrictlySorted!289 (t!25017 l!906) key1!49 v1!38)) (= (_1!5952 (h!18859 (insertStrictlySorted!289 (t!25017 l!906) key1!49 v1!38))) key1!49)))))

(declare-fun b!885246 () Bool)

(declare-fun res!601344 () Bool)

(assert (=> b!885246 (=> (not res!601344) (not e!492703))))

(declare-fun containsKey!406 (List!17732 (_ BitVec 64)) Bool)

(assert (=> b!885246 (= res!601344 (containsKey!406 lt!400960 key1!49))))

(declare-fun bm!39081 () Bool)

(declare-fun $colon$colon!541 (List!17732 tuple2!11884) List!17732)

(assert (=> bm!39081 (= call!39084 ($colon$colon!541 e!492702 (ite c!93186 (h!18859 (insertStrictlySorted!289 (t!25017 l!906) key1!49 v1!38)) (tuple2!11885 key1!49 v2!16))))))

(declare-fun c!93189 () Bool)

(assert (=> bm!39081 (= c!93189 c!93186)))

(assert (= (and d!109295 c!93186) b!885241))

(assert (= (and d!109295 (not c!93186)) b!885245))

(assert (= (and b!885245 c!93187) b!885240))

(assert (= (and b!885245 (not c!93187)) b!885239))

(assert (= (and b!885239 c!93188) b!885237))

(assert (= (and b!885239 (not c!93188)) b!885238))

(assert (= (or b!885237 b!885238) bm!39079))

(assert (= (or b!885240 bm!39079) bm!39080))

(assert (= (or b!885241 bm!39080) bm!39081))

(assert (= (and bm!39081 c!93189) b!885244))

(assert (= (and bm!39081 (not c!93189)) b!885243))

(assert (= (and d!109295 res!601343) b!885246))

(assert (= (and b!885246 res!601344) b!885242))

(declare-fun m!825569 () Bool)

(assert (=> b!885244 m!825569))

(declare-fun m!825571 () Bool)

(assert (=> bm!39081 m!825571))

(declare-fun m!825573 () Bool)

(assert (=> b!885242 m!825573))

(declare-fun m!825575 () Bool)

(assert (=> b!885246 m!825575))

(declare-fun m!825577 () Bool)

(assert (=> d!109295 m!825577))

(assert (=> d!109295 m!825533))

(declare-fun m!825579 () Bool)

(assert (=> d!109295 m!825579))

(assert (=> b!885165 d!109295))

(declare-fun bm!39086 () Bool)

(declare-fun call!39090 () List!17732)

(declare-fun call!39089 () List!17732)

(assert (=> bm!39086 (= call!39090 call!39089)))

(declare-fun b!885251 () Bool)

(declare-fun e!492708 () List!17732)

(assert (=> b!885251 (= e!492708 call!39090)))

(declare-fun bm!39087 () Bool)

(declare-fun call!39091 () List!17732)

(assert (=> bm!39087 (= call!39089 call!39091)))

(declare-fun b!885252 () Bool)

(assert (=> b!885252 (= e!492708 call!39090)))

(declare-fun b!885253 () Bool)

(declare-fun c!93194 () Bool)

(assert (=> b!885253 (= c!93194 (and ((_ is Cons!17728) (t!25017 l!906)) (bvsgt (_1!5952 (h!18859 (t!25017 l!906))) key1!49)))))

(declare-fun e!492712 () List!17732)

(assert (=> b!885253 (= e!492712 e!492708)))

(declare-fun b!885254 () Bool)

(assert (=> b!885254 (= e!492712 call!39089)))

(declare-fun b!885255 () Bool)

(declare-fun e!492711 () List!17732)

(assert (=> b!885255 (= e!492711 call!39091)))

(declare-fun d!109303 () Bool)

(declare-fun e!492710 () Bool)

(assert (=> d!109303 e!492710))

(declare-fun res!601345 () Bool)

(assert (=> d!109303 (=> (not res!601345) (not e!492710))))

(declare-fun lt!400961 () List!17732)

(assert (=> d!109303 (= res!601345 (isStrictlySorted!468 lt!400961))))

(assert (=> d!109303 (= lt!400961 e!492711)))

(declare-fun c!93192 () Bool)

(assert (=> d!109303 (= c!93192 (and ((_ is Cons!17728) (t!25017 l!906)) (bvslt (_1!5952 (h!18859 (t!25017 l!906))) key1!49)))))

(assert (=> d!109303 (isStrictlySorted!468 (t!25017 l!906))))

(assert (=> d!109303 (= (insertStrictlySorted!289 (t!25017 l!906) key1!49 v2!16) lt!400961)))

(declare-fun b!885256 () Bool)

(assert (=> b!885256 (= e!492710 (contains!4285 lt!400961 (tuple2!11885 key1!49 v2!16)))))

(declare-fun b!885257 () Bool)

(declare-fun c!93193 () Bool)

(declare-fun e!492709 () List!17732)

(assert (=> b!885257 (= e!492709 (ite c!93193 (t!25017 (t!25017 l!906)) (ite c!93194 (Cons!17728 (h!18859 (t!25017 l!906)) (t!25017 (t!25017 l!906))) Nil!17729)))))

(declare-fun b!885258 () Bool)

(assert (=> b!885258 (= e!492709 (insertStrictlySorted!289 (t!25017 (t!25017 l!906)) key1!49 v2!16))))

(declare-fun b!885259 () Bool)

(assert (=> b!885259 (= e!492711 e!492712)))

(assert (=> b!885259 (= c!93193 (and ((_ is Cons!17728) (t!25017 l!906)) (= (_1!5952 (h!18859 (t!25017 l!906))) key1!49)))))

(declare-fun b!885260 () Bool)

(declare-fun res!601346 () Bool)

(assert (=> b!885260 (=> (not res!601346) (not e!492710))))

(assert (=> b!885260 (= res!601346 (containsKey!406 lt!400961 key1!49))))

(declare-fun bm!39088 () Bool)

(assert (=> bm!39088 (= call!39091 ($colon$colon!541 e!492709 (ite c!93192 (h!18859 (t!25017 l!906)) (tuple2!11885 key1!49 v2!16))))))

(declare-fun c!93195 () Bool)

(assert (=> bm!39088 (= c!93195 c!93192)))

(assert (= (and d!109303 c!93192) b!885255))

(assert (= (and d!109303 (not c!93192)) b!885259))

(assert (= (and b!885259 c!93193) b!885254))

(assert (= (and b!885259 (not c!93193)) b!885253))

(assert (= (and b!885253 c!93194) b!885251))

(assert (= (and b!885253 (not c!93194)) b!885252))

(assert (= (or b!885251 b!885252) bm!39086))

(assert (= (or b!885254 bm!39086) bm!39087))

(assert (= (or b!885255 bm!39087) bm!39088))

(assert (= (and bm!39088 c!93195) b!885258))

(assert (= (and bm!39088 (not c!93195)) b!885257))

(assert (= (and d!109303 res!601345) b!885260))

(assert (= (and b!885260 res!601346) b!885256))

(declare-fun m!825581 () Bool)

(assert (=> b!885258 m!825581))

(declare-fun m!825583 () Bool)

(assert (=> bm!39088 m!825583))

(declare-fun m!825585 () Bool)

(assert (=> b!885256 m!825585))

(declare-fun m!825587 () Bool)

(assert (=> b!885260 m!825587))

(declare-fun m!825589 () Bool)

(assert (=> d!109303 m!825589))

(assert (=> d!109303 m!825545))

(assert (=> b!885165 d!109303))

(declare-fun bm!39092 () Bool)

(declare-fun call!39096 () List!17732)

(declare-fun call!39095 () List!17732)

(assert (=> bm!39092 (= call!39096 call!39095)))

(declare-fun b!885275 () Bool)

(declare-fun e!492720 () List!17732)

(assert (=> b!885275 (= e!492720 call!39096)))

(declare-fun bm!39093 () Bool)

(declare-fun call!39097 () List!17732)

(assert (=> bm!39093 (= call!39095 call!39097)))

(declare-fun b!885276 () Bool)

(assert (=> b!885276 (= e!492720 call!39096)))

(declare-fun b!885277 () Bool)

(declare-fun c!93202 () Bool)

(assert (=> b!885277 (= c!93202 (and ((_ is Cons!17728) (t!25017 l!906)) (bvsgt (_1!5952 (h!18859 (t!25017 l!906))) key1!49)))))

(declare-fun e!492724 () List!17732)

(assert (=> b!885277 (= e!492724 e!492720)))

(declare-fun b!885278 () Bool)

(assert (=> b!885278 (= e!492724 call!39095)))

(declare-fun b!885279 () Bool)

(declare-fun e!492723 () List!17732)

(assert (=> b!885279 (= e!492723 call!39097)))

(declare-fun d!109305 () Bool)

(declare-fun e!492722 () Bool)

(assert (=> d!109305 e!492722))

(declare-fun res!601353 () Bool)

(assert (=> d!109305 (=> (not res!601353) (not e!492722))))

(declare-fun lt!400963 () List!17732)

(assert (=> d!109305 (= res!601353 (isStrictlySorted!468 lt!400963))))

(assert (=> d!109305 (= lt!400963 e!492723)))

(declare-fun c!93200 () Bool)

(assert (=> d!109305 (= c!93200 (and ((_ is Cons!17728) (t!25017 l!906)) (bvslt (_1!5952 (h!18859 (t!25017 l!906))) key1!49)))))

(assert (=> d!109305 (isStrictlySorted!468 (t!25017 l!906))))

(assert (=> d!109305 (= (insertStrictlySorted!289 (t!25017 l!906) key1!49 v1!38) lt!400963)))

(declare-fun b!885280 () Bool)

(assert (=> b!885280 (= e!492722 (contains!4285 lt!400963 (tuple2!11885 key1!49 v1!38)))))

(declare-fun b!885281 () Bool)

(declare-fun c!93201 () Bool)

(declare-fun e!492721 () List!17732)

(assert (=> b!885281 (= e!492721 (ite c!93201 (t!25017 (t!25017 l!906)) (ite c!93202 (Cons!17728 (h!18859 (t!25017 l!906)) (t!25017 (t!25017 l!906))) Nil!17729)))))

(declare-fun b!885282 () Bool)

(assert (=> b!885282 (= e!492721 (insertStrictlySorted!289 (t!25017 (t!25017 l!906)) key1!49 v1!38))))

(declare-fun b!885283 () Bool)

(assert (=> b!885283 (= e!492723 e!492724)))

(assert (=> b!885283 (= c!93201 (and ((_ is Cons!17728) (t!25017 l!906)) (= (_1!5952 (h!18859 (t!25017 l!906))) key1!49)))))

(declare-fun b!885284 () Bool)

(declare-fun res!601354 () Bool)

(assert (=> b!885284 (=> (not res!601354) (not e!492722))))

(assert (=> b!885284 (= res!601354 (containsKey!406 lt!400963 key1!49))))

(declare-fun bm!39094 () Bool)

(assert (=> bm!39094 (= call!39097 ($colon$colon!541 e!492721 (ite c!93200 (h!18859 (t!25017 l!906)) (tuple2!11885 key1!49 v1!38))))))

(declare-fun c!93203 () Bool)

(assert (=> bm!39094 (= c!93203 c!93200)))

(assert (= (and d!109305 c!93200) b!885279))

(assert (= (and d!109305 (not c!93200)) b!885283))

(assert (= (and b!885283 c!93201) b!885278))

(assert (= (and b!885283 (not c!93201)) b!885277))

(assert (= (and b!885277 c!93202) b!885275))

(assert (= (and b!885277 (not c!93202)) b!885276))

(assert (= (or b!885275 b!885276) bm!39092))

(assert (= (or b!885278 bm!39092) bm!39093))

(assert (= (or b!885279 bm!39093) bm!39094))

(assert (= (and bm!39094 c!93203) b!885282))

(assert (= (and bm!39094 (not c!93203)) b!885281))

(assert (= (and d!109305 res!601353) b!885284))

(assert (= (and b!885284 res!601354) b!885280))

(declare-fun m!825599 () Bool)

(assert (=> b!885282 m!825599))

(declare-fun m!825603 () Bool)

(assert (=> bm!39094 m!825603))

(declare-fun m!825607 () Bool)

(assert (=> b!885280 m!825607))

(declare-fun m!825609 () Bool)

(assert (=> b!885284 m!825609))

(declare-fun m!825611 () Bool)

(assert (=> d!109305 m!825611))

(assert (=> d!109305 m!825545))

(assert (=> b!885165 d!109305))

(declare-fun bm!39098 () Bool)

(declare-fun call!39102 () List!17732)

(declare-fun call!39101 () List!17732)

(assert (=> bm!39098 (= call!39102 call!39101)))

(declare-fun b!885295 () Bool)

(declare-fun e!492730 () List!17732)

(assert (=> b!885295 (= e!492730 call!39102)))

(declare-fun bm!39099 () Bool)

(declare-fun call!39103 () List!17732)

(assert (=> bm!39099 (= call!39101 call!39103)))

(declare-fun b!885296 () Bool)

(assert (=> b!885296 (= e!492730 call!39102)))

(declare-fun b!885297 () Bool)

(declare-fun c!93210 () Bool)

(assert (=> b!885297 (= c!93210 (and ((_ is Cons!17728) l!906) (bvsgt (_1!5952 (h!18859 l!906)) key1!49)))))

(declare-fun e!492734 () List!17732)

(assert (=> b!885297 (= e!492734 e!492730)))

(declare-fun b!885298 () Bool)

(assert (=> b!885298 (= e!492734 call!39101)))

(declare-fun b!885299 () Bool)

(declare-fun e!492733 () List!17732)

(assert (=> b!885299 (= e!492733 call!39103)))

(declare-fun d!109309 () Bool)

(declare-fun e!492732 () Bool)

(assert (=> d!109309 e!492732))

(declare-fun res!601357 () Bool)

(assert (=> d!109309 (=> (not res!601357) (not e!492732))))

(declare-fun lt!400965 () List!17732)

(assert (=> d!109309 (= res!601357 (isStrictlySorted!468 lt!400965))))

(assert (=> d!109309 (= lt!400965 e!492733)))

(declare-fun c!93208 () Bool)

(assert (=> d!109309 (= c!93208 (and ((_ is Cons!17728) l!906) (bvslt (_1!5952 (h!18859 l!906)) key1!49)))))

(assert (=> d!109309 (isStrictlySorted!468 l!906)))

(assert (=> d!109309 (= (insertStrictlySorted!289 l!906 key1!49 v1!38) lt!400965)))

(declare-fun b!885300 () Bool)

(assert (=> b!885300 (= e!492732 (contains!4285 lt!400965 (tuple2!11885 key1!49 v1!38)))))

(declare-fun c!93209 () Bool)

(declare-fun b!885301 () Bool)

(declare-fun e!492731 () List!17732)

(assert (=> b!885301 (= e!492731 (ite c!93209 (t!25017 l!906) (ite c!93210 (Cons!17728 (h!18859 l!906) (t!25017 l!906)) Nil!17729)))))

(declare-fun b!885302 () Bool)

(assert (=> b!885302 (= e!492731 (insertStrictlySorted!289 (t!25017 l!906) key1!49 v1!38))))

(declare-fun b!885303 () Bool)

(assert (=> b!885303 (= e!492733 e!492734)))

(assert (=> b!885303 (= c!93209 (and ((_ is Cons!17728) l!906) (= (_1!5952 (h!18859 l!906)) key1!49)))))

(declare-fun b!885304 () Bool)

(declare-fun res!601358 () Bool)

(assert (=> b!885304 (=> (not res!601358) (not e!492732))))

(assert (=> b!885304 (= res!601358 (containsKey!406 lt!400965 key1!49))))

(declare-fun bm!39100 () Bool)

(assert (=> bm!39100 (= call!39103 ($colon$colon!541 e!492731 (ite c!93208 (h!18859 l!906) (tuple2!11885 key1!49 v1!38))))))

(declare-fun c!93211 () Bool)

(assert (=> bm!39100 (= c!93211 c!93208)))

(assert (= (and d!109309 c!93208) b!885299))

(assert (= (and d!109309 (not c!93208)) b!885303))

(assert (= (and b!885303 c!93209) b!885298))

(assert (= (and b!885303 (not c!93209)) b!885297))

(assert (= (and b!885297 c!93210) b!885295))

(assert (= (and b!885297 (not c!93210)) b!885296))

(assert (= (or b!885295 b!885296) bm!39098))

(assert (= (or b!885298 bm!39098) bm!39099))

(assert (= (or b!885299 bm!39099) bm!39100))

(assert (= (and bm!39100 c!93211) b!885302))

(assert (= (and bm!39100 (not c!93211)) b!885301))

(assert (= (and d!109309 res!601357) b!885304))

(assert (= (and b!885304 res!601358) b!885300))

(assert (=> b!885302 m!825533))

(declare-fun m!825619 () Bool)

(assert (=> bm!39100 m!825619))

(declare-fun m!825623 () Bool)

(assert (=> b!885300 m!825623))

(declare-fun m!825627 () Bool)

(assert (=> b!885304 m!825627))

(declare-fun m!825629 () Bool)

(assert (=> d!109309 m!825629))

(assert (=> d!109309 m!825531))

(assert (=> b!885165 d!109309))

(declare-fun d!109313 () Bool)

(declare-fun res!601371 () Bool)

(declare-fun e!492759 () Bool)

(assert (=> d!109313 (=> res!601371 e!492759)))

(assert (=> d!109313 (= res!601371 (or ((_ is Nil!17729) (insertStrictlySorted!289 l!906 key1!49 v1!38)) ((_ is Nil!17729) (t!25017 (insertStrictlySorted!289 l!906 key1!49 v1!38)))))))

(assert (=> d!109313 (= (isStrictlySorted!468 (insertStrictlySorted!289 l!906 key1!49 v1!38)) e!492759)))

(declare-fun b!885349 () Bool)

(declare-fun e!492760 () Bool)

(assert (=> b!885349 (= e!492759 e!492760)))

(declare-fun res!601372 () Bool)

(assert (=> b!885349 (=> (not res!601372) (not e!492760))))

(assert (=> b!885349 (= res!601372 (bvslt (_1!5952 (h!18859 (insertStrictlySorted!289 l!906 key1!49 v1!38))) (_1!5952 (h!18859 (t!25017 (insertStrictlySorted!289 l!906 key1!49 v1!38))))))))

(declare-fun b!885350 () Bool)

(assert (=> b!885350 (= e!492760 (isStrictlySorted!468 (t!25017 (insertStrictlySorted!289 l!906 key1!49 v1!38))))))

(assert (= (and d!109313 (not res!601371)) b!885349))

(assert (= (and b!885349 res!601372) b!885350))

(declare-fun m!825671 () Bool)

(assert (=> b!885350 m!825671))

(assert (=> b!885165 d!109313))

(declare-fun d!109323 () Bool)

(declare-fun res!601374 () Bool)

(declare-fun e!492764 () Bool)

(assert (=> d!109323 (=> res!601374 e!492764)))

(assert (=> d!109323 (= res!601374 (or ((_ is Nil!17729) l!906) ((_ is Nil!17729) (t!25017 l!906))))))

(assert (=> d!109323 (= (isStrictlySorted!468 l!906) e!492764)))

(declare-fun b!885351 () Bool)

(declare-fun e!492766 () Bool)

(assert (=> b!885351 (= e!492764 e!492766)))

(declare-fun res!601375 () Bool)

(assert (=> b!885351 (=> (not res!601375) (not e!492766))))

(assert (=> b!885351 (= res!601375 (bvslt (_1!5952 (h!18859 l!906)) (_1!5952 (h!18859 (t!25017 l!906)))))))

(declare-fun b!885352 () Bool)

(assert (=> b!885352 (= e!492766 (isStrictlySorted!468 (t!25017 l!906)))))

(assert (= (and d!109323 (not res!601374)) b!885351))

(assert (= (and b!885351 res!601375) b!885352))

(assert (=> b!885352 m!825545))

(assert (=> start!75124 d!109323))

(declare-fun d!109325 () Bool)

(declare-fun res!601377 () Bool)

(declare-fun e!492768 () Bool)

(assert (=> d!109325 (=> res!601377 e!492768)))

(assert (=> d!109325 (= res!601377 (or ((_ is Nil!17729) (t!25017 l!906)) ((_ is Nil!17729) (t!25017 (t!25017 l!906)))))))

(assert (=> d!109325 (= (isStrictlySorted!468 (t!25017 l!906)) e!492768)))

(declare-fun b!885363 () Bool)

(declare-fun e!492769 () Bool)

(assert (=> b!885363 (= e!492768 e!492769)))

(declare-fun res!601378 () Bool)

(assert (=> b!885363 (=> (not res!601378) (not e!492769))))

(assert (=> b!885363 (= res!601378 (bvslt (_1!5952 (h!18859 (t!25017 l!906))) (_1!5952 (h!18859 (t!25017 (t!25017 l!906))))))))

(declare-fun b!885364 () Bool)

(assert (=> b!885364 (= e!492769 (isStrictlySorted!468 (t!25017 (t!25017 l!906))))))

(assert (= (and d!109325 (not res!601377)) b!885363))

(assert (= (and b!885363 res!601378) b!885364))

(declare-fun m!825673 () Bool)

(assert (=> b!885364 m!825673))

(assert (=> b!885164 d!109325))

(declare-fun b!885383 () Bool)

(declare-fun e!492781 () Bool)

(declare-fun tp!54258 () Bool)

(assert (=> b!885383 (= e!492781 (and tp_is_empty!17763 tp!54258))))

(assert (=> b!885166 (= tp!54252 e!492781)))

(assert (= (and b!885166 ((_ is Cons!17728) (t!25017 l!906))) b!885383))

(check-sat (not b!885300) (not b!885280) (not b!885246) (not b!885242) (not d!109305) (not d!109303) (not bm!39100) tp_is_empty!17763 (not d!109289) (not bm!39081) (not b!885364) (not b!885383) (not b!885304) (not bm!39088) (not b!885260) (not b!885256) (not b!885302) (not b!885350) (not d!109309) (not b!885284) (not b!885352) (not b!885244) (not d!109295) (not b!885258) (not bm!39094) (not b!885282))
(check-sat)
