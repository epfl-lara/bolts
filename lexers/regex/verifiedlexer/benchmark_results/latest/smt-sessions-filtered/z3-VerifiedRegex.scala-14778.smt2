; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!759460 () Bool)

(assert start!759460)

(declare-fun res!3188392 () Bool)

(declare-fun e!4749419 () Bool)

(assert (=> start!759460 (=> res!3188392 e!4749419)))

(declare-datatypes ((K!23023 0))(
  ( (K!23024 (val!33091 Int)) )
))
(declare-datatypes ((B!4501 0))(
  ( (B!4502 (val!33092 Int)) )
))
(declare-datatypes ((tuple2!71056 0))(
  ( (tuple2!71057 (_1!38831 K!23023) (_2!38831 B!4501)) )
))
(declare-datatypes ((List!75783 0))(
  ( (Nil!75657) (Cons!75657 (h!82105 tuple2!71056) (t!391555 List!75783)) )
))
(declare-fun lt!2732578 () List!75783)

(declare-fun invariantList!1975 (List!75783) Bool)

(assert (=> start!759460 (= res!3188392 (not (invariantList!1975 lt!2732578)))))

(declare-datatypes ((ListMap!7423 0))(
  ( (ListMap!7424 (toList!11986 List!75783)) )
))
(declare-fun thiss!41857 () ListMap!7423)

(declare-fun keyValue!4 () tuple2!71056)

(declare-fun insertNoDuplicatedKeys!818 (List!75783 K!23023 B!4501) List!75783)

(assert (=> start!759460 (= lt!2732578 (insertNoDuplicatedKeys!818 (toList!11986 thiss!41857) (_1!38831 keyValue!4) (_2!38831 keyValue!4)))))

(assert (=> start!759460 e!4749419))

(declare-fun e!4749420 () Bool)

(declare-fun inv!97494 (ListMap!7423) Bool)

(assert (=> start!759460 (and (inv!97494 thiss!41857) e!4749420)))

(declare-fun tp_is_empty!55227 () Bool)

(declare-fun tp_is_empty!55229 () Bool)

(assert (=> start!759460 (and tp_is_empty!55227 tp_is_empty!55229)))

(declare-fun b!8059173 () Bool)

(declare-fun res!3188391 () Bool)

(assert (=> b!8059173 (=> res!3188391 e!4749419)))

(declare-fun containsKey!4939 (List!75783 K!23023) Bool)

(assert (=> b!8059173 (= res!3188391 (not (containsKey!4939 lt!2732578 (_1!38831 keyValue!4))))))

(declare-fun b!8059174 () Bool)

(declare-fun contains!21326 (List!75783 tuple2!71056) Bool)

(assert (=> b!8059174 (= e!4749419 (not (contains!21326 lt!2732578 keyValue!4)))))

(declare-fun b!8059175 () Bool)

(declare-fun tp!2414376 () Bool)

(assert (=> b!8059175 (= e!4749420 tp!2414376)))

(assert (= (and start!759460 (not res!3188392)) b!8059173))

(assert (= (and b!8059173 (not res!3188391)) b!8059174))

(assert (= start!759460 b!8059175))

(declare-fun m!8412438 () Bool)

(assert (=> start!759460 m!8412438))

(declare-fun m!8412440 () Bool)

(assert (=> start!759460 m!8412440))

(declare-fun m!8412442 () Bool)

(assert (=> start!759460 m!8412442))

(declare-fun m!8412444 () Bool)

(assert (=> b!8059173 m!8412444))

(declare-fun m!8412446 () Bool)

(assert (=> b!8059174 m!8412446))

(check-sat tp_is_empty!55227 (not start!759460) (not b!8059173) (not b!8059174) tp_is_empty!55229 (not b!8059175))
(check-sat)
(get-model)

(declare-fun d!2399319 () Bool)

(declare-fun noDuplicatedKeys!521 (List!75783) Bool)

(assert (=> d!2399319 (= (invariantList!1975 lt!2732578) (noDuplicatedKeys!521 lt!2732578))))

(declare-fun bs!1973555 () Bool)

(assert (= bs!1973555 d!2399319))

(declare-fun m!8412450 () Bool)

(assert (=> bs!1973555 m!8412450))

(assert (=> start!759460 d!2399319))

(declare-fun b!8059244 () Bool)

(assert (=> b!8059244 false))

(declare-datatypes ((Unit!172760 0))(
  ( (Unit!172761) )
))
(declare-fun lt!2732631 () Unit!172760)

(declare-fun lt!2732626 () Unit!172760)

(assert (=> b!8059244 (= lt!2732631 lt!2732626)))

(assert (=> b!8059244 (containsKey!4939 (t!391555 (toList!11986 thiss!41857)) (_1!38831 (h!82105 (toList!11986 thiss!41857))))))

(declare-fun lemmaInGetKeysListThenContainsKey!1269 (List!75783 K!23023) Unit!172760)

(assert (=> b!8059244 (= lt!2732626 (lemmaInGetKeysListThenContainsKey!1269 (t!391555 (toList!11986 thiss!41857)) (_1!38831 (h!82105 (toList!11986 thiss!41857)))))))

(declare-fun lt!2732635 () Unit!172760)

(declare-fun lt!2732632 () Unit!172760)

(assert (=> b!8059244 (= lt!2732635 lt!2732632)))

(declare-datatypes ((List!75784 0))(
  ( (Nil!75658) (Cons!75658 (h!82106 K!23023) (t!391556 List!75784)) )
))
(declare-fun call!747709 () List!75784)

(declare-fun contains!21327 (List!75784 K!23023) Bool)

(assert (=> b!8059244 (contains!21327 call!747709 (_1!38831 (h!82105 (toList!11986 thiss!41857))))))

(declare-fun lt!2732629 () List!75783)

(declare-fun lemmaInListThenGetKeysListContains!1264 (List!75783 K!23023) Unit!172760)

(assert (=> b!8059244 (= lt!2732632 (lemmaInListThenGetKeysListContains!1264 lt!2732629 (_1!38831 (h!82105 (toList!11986 thiss!41857)))))))

(assert (=> b!8059244 (= lt!2732629 (insertNoDuplicatedKeys!818 (t!391555 (toList!11986 thiss!41857)) (_1!38831 keyValue!4) (_2!38831 keyValue!4)))))

(declare-fun e!4749466 () Unit!172760)

(declare-fun Unit!172762 () Unit!172760)

(assert (=> b!8059244 (= e!4749466 Unit!172762)))

(declare-fun c!1476866 () Bool)

(declare-fun c!1476862 () Bool)

(declare-fun call!747710 () List!75783)

(declare-fun bm!747703 () Bool)

(declare-fun c!1476864 () Bool)

(declare-fun e!4749462 () List!75783)

(declare-fun $colon$colon!3430 (List!75783 tuple2!71056) List!75783)

(assert (=> bm!747703 (= call!747710 ($colon$colon!3430 (ite c!1476862 (t!391555 (toList!11986 thiss!41857)) (ite c!1476864 (toList!11986 thiss!41857) e!4749462)) (ite (or c!1476862 c!1476864) (tuple2!71057 (_1!38831 keyValue!4) (_2!38831 keyValue!4)) (ite c!1476866 (h!82105 (toList!11986 thiss!41857)) (tuple2!71057 (_1!38831 keyValue!4) (_2!38831 keyValue!4))))))))

(declare-fun b!8059245 () Bool)

(get-info :version)

(assert (=> b!8059245 (= c!1476866 ((_ is Cons!75657) (toList!11986 thiss!41857)))))

(declare-fun e!4749461 () List!75783)

(declare-fun e!4749467 () List!75783)

(assert (=> b!8059245 (= e!4749461 e!4749467)))

(declare-fun b!8059246 () Bool)

(declare-fun Unit!172765 () Unit!172760)

(assert (=> b!8059246 (= e!4749466 Unit!172765)))

(declare-fun b!8059247 () Bool)

(declare-fun call!747708 () List!75783)

(assert (=> b!8059247 (= e!4749467 call!747708)))

(declare-fun b!8059248 () Bool)

(declare-fun lt!2732627 () List!75783)

(assert (=> b!8059248 (= e!4749467 lt!2732627)))

(assert (=> b!8059248 (= lt!2732627 call!747708)))

(declare-fun c!1476863 () Bool)

(assert (=> b!8059248 (= c!1476863 (containsKey!4939 (insertNoDuplicatedKeys!818 (t!391555 (toList!11986 thiss!41857)) (_1!38831 keyValue!4) (_2!38831 keyValue!4)) (_1!38831 (h!82105 (toList!11986 thiss!41857)))))))

(declare-fun lt!2732633 () Unit!172760)

(assert (=> b!8059248 (= lt!2732633 e!4749466)))

(declare-fun b!8059249 () Bool)

(declare-fun res!3188422 () Bool)

(declare-fun e!4749463 () Bool)

(assert (=> b!8059249 (=> (not res!3188422) (not e!4749463))))

(declare-fun lt!2732636 () List!75783)

(assert (=> b!8059249 (= res!3188422 (containsKey!4939 lt!2732636 (_1!38831 keyValue!4)))))

(declare-fun b!8059250 () Bool)

(declare-fun call!747711 () List!75783)

(assert (=> b!8059250 (= e!4749461 call!747711)))

(declare-fun b!8059252 () Bool)

(assert (=> b!8059252 (= e!4749462 (insertNoDuplicatedKeys!818 (t!391555 (toList!11986 thiss!41857)) (_1!38831 keyValue!4) (_2!38831 keyValue!4)))))

(declare-fun b!8059253 () Bool)

(assert (=> b!8059253 (= e!4749462 Nil!75657)))

(declare-fun bm!747704 () Bool)

(assert (=> bm!747704 (= call!747708 call!747711)))

(declare-fun c!1476865 () Bool)

(assert (=> bm!747704 (= c!1476865 c!1476866)))

(declare-fun bm!747705 () Bool)

(assert (=> bm!747705 (= call!747711 call!747710)))

(declare-fun b!8059254 () Bool)

(declare-fun e!4749465 () Bool)

(assert (=> b!8059254 (= e!4749465 (not (containsKey!4939 (toList!11986 thiss!41857) (_1!38831 keyValue!4))))))

(declare-fun b!8059255 () Bool)

(declare-fun e!4749464 () List!75783)

(assert (=> b!8059255 (= e!4749464 call!747710)))

(declare-fun lt!2732630 () List!75784)

(assert (=> b!8059255 (= lt!2732630 call!747709)))

(declare-fun lt!2732634 () Unit!172760)

(declare-fun lemmaSubseqRefl!209 (List!75784) Unit!172760)

(assert (=> b!8059255 (= lt!2732634 (lemmaSubseqRefl!209 lt!2732630))))

(declare-fun subseq!931 (List!75784 List!75784) Bool)

(assert (=> b!8059255 (subseq!931 lt!2732630 lt!2732630)))

(declare-fun lt!2732628 () Unit!172760)

(assert (=> b!8059255 (= lt!2732628 lt!2732634)))

(declare-fun bm!747706 () Bool)

(declare-fun getKeysList!1270 (List!75783) List!75784)

(assert (=> bm!747706 (= call!747709 (getKeysList!1270 (ite c!1476862 (toList!11986 thiss!41857) lt!2732629)))))

(declare-fun b!8059251 () Bool)

(declare-fun res!3188421 () Bool)

(assert (=> b!8059251 (=> (not res!3188421) (not e!4749463))))

(assert (=> b!8059251 (= res!3188421 (contains!21326 lt!2732636 (tuple2!71057 (_1!38831 keyValue!4) (_2!38831 keyValue!4))))))

(declare-fun d!2399323 () Bool)

(assert (=> d!2399323 e!4749463))

(declare-fun res!3188423 () Bool)

(assert (=> d!2399323 (=> (not res!3188423) (not e!4749463))))

(assert (=> d!2399323 (= res!3188423 (invariantList!1975 lt!2732636))))

(assert (=> d!2399323 (= lt!2732636 e!4749464)))

(assert (=> d!2399323 (= c!1476862 (and ((_ is Cons!75657) (toList!11986 thiss!41857)) (= (_1!38831 (h!82105 (toList!11986 thiss!41857))) (_1!38831 keyValue!4))))))

(assert (=> d!2399323 (invariantList!1975 (toList!11986 thiss!41857))))

(assert (=> d!2399323 (= (insertNoDuplicatedKeys!818 (toList!11986 thiss!41857) (_1!38831 keyValue!4) (_2!38831 keyValue!4)) lt!2732636)))

(declare-fun b!8059256 () Bool)

(assert (=> b!8059256 (= e!4749464 e!4749461)))

(declare-fun res!3188424 () Bool)

(assert (=> b!8059256 (= res!3188424 ((_ is Cons!75657) (toList!11986 thiss!41857)))))

(assert (=> b!8059256 (=> (not res!3188424) (not e!4749465))))

(assert (=> b!8059256 (= c!1476864 e!4749465)))

(declare-fun b!8059257 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!16136 (List!75784) (InoxSet K!23023))

(assert (=> b!8059257 (= e!4749463 (= (content!16136 (getKeysList!1270 lt!2732636)) ((_ map or) (content!16136 (getKeysList!1270 (toList!11986 thiss!41857))) (store ((as const (Array K!23023 Bool)) false) (_1!38831 keyValue!4) true))))))

(assert (= (and d!2399323 c!1476862) b!8059255))

(assert (= (and d!2399323 (not c!1476862)) b!8059256))

(assert (= (and b!8059256 res!3188424) b!8059254))

(assert (= (and b!8059256 c!1476864) b!8059250))

(assert (= (and b!8059256 (not c!1476864)) b!8059245))

(assert (= (and b!8059245 c!1476866) b!8059248))

(assert (= (and b!8059245 (not c!1476866)) b!8059247))

(assert (= (and b!8059248 c!1476863) b!8059244))

(assert (= (and b!8059248 (not c!1476863)) b!8059246))

(assert (= (or b!8059248 b!8059247) bm!747704))

(assert (= (and bm!747704 c!1476865) b!8059252))

(assert (= (and bm!747704 (not c!1476865)) b!8059253))

(assert (= (or b!8059250 bm!747704) bm!747705))

(assert (= (or b!8059255 b!8059244) bm!747706))

(assert (= (or b!8059255 bm!747705) bm!747703))

(assert (= (and d!2399323 res!3188423) b!8059249))

(assert (= (and b!8059249 res!3188422) b!8059251))

(assert (= (and b!8059251 res!3188421) b!8059257))

(declare-fun m!8412460 () Bool)

(assert (=> b!8059252 m!8412460))

(declare-fun m!8412462 () Bool)

(assert (=> bm!747703 m!8412462))

(declare-fun m!8412464 () Bool)

(assert (=> b!8059254 m!8412464))

(declare-fun m!8412466 () Bool)

(assert (=> b!8059251 m!8412466))

(declare-fun m!8412468 () Bool)

(assert (=> d!2399323 m!8412468))

(declare-fun m!8412470 () Bool)

(assert (=> d!2399323 m!8412470))

(declare-fun m!8412472 () Bool)

(assert (=> b!8059249 m!8412472))

(declare-fun m!8412474 () Bool)

(assert (=> b!8059244 m!8412474))

(declare-fun m!8412476 () Bool)

(assert (=> b!8059244 m!8412476))

(declare-fun m!8412478 () Bool)

(assert (=> b!8059244 m!8412478))

(declare-fun m!8412480 () Bool)

(assert (=> b!8059244 m!8412480))

(assert (=> b!8059244 m!8412460))

(declare-fun m!8412482 () Bool)

(assert (=> bm!747706 m!8412482))

(declare-fun m!8412484 () Bool)

(assert (=> b!8059255 m!8412484))

(declare-fun m!8412486 () Bool)

(assert (=> b!8059255 m!8412486))

(assert (=> b!8059248 m!8412460))

(assert (=> b!8059248 m!8412460))

(declare-fun m!8412488 () Bool)

(assert (=> b!8059248 m!8412488))

(declare-fun m!8412490 () Bool)

(assert (=> b!8059257 m!8412490))

(declare-fun m!8412492 () Bool)

(assert (=> b!8059257 m!8412492))

(assert (=> b!8059257 m!8412492))

(declare-fun m!8412494 () Bool)

(assert (=> b!8059257 m!8412494))

(declare-fun m!8412496 () Bool)

(assert (=> b!8059257 m!8412496))

(assert (=> b!8059257 m!8412496))

(declare-fun m!8412498 () Bool)

(assert (=> b!8059257 m!8412498))

(assert (=> start!759460 d!2399323))

(declare-fun d!2399329 () Bool)

(assert (=> d!2399329 (= (inv!97494 thiss!41857) (invariantList!1975 (toList!11986 thiss!41857)))))

(declare-fun bs!1973557 () Bool)

(assert (= bs!1973557 d!2399329))

(assert (=> bs!1973557 m!8412470))

(assert (=> start!759460 d!2399329))

(declare-fun d!2399331 () Bool)

(declare-fun res!3188433 () Bool)

(declare-fun e!4749479 () Bool)

(assert (=> d!2399331 (=> res!3188433 e!4749479)))

(assert (=> d!2399331 (= res!3188433 (and ((_ is Cons!75657) lt!2732578) (= (_1!38831 (h!82105 lt!2732578)) (_1!38831 keyValue!4))))))

(assert (=> d!2399331 (= (containsKey!4939 lt!2732578 (_1!38831 keyValue!4)) e!4749479)))

(declare-fun b!8059276 () Bool)

(declare-fun e!4749480 () Bool)

(assert (=> b!8059276 (= e!4749479 e!4749480)))

(declare-fun res!3188434 () Bool)

(assert (=> b!8059276 (=> (not res!3188434) (not e!4749480))))

(assert (=> b!8059276 (= res!3188434 ((_ is Cons!75657) lt!2732578))))

(declare-fun b!8059277 () Bool)

(assert (=> b!8059277 (= e!4749480 (containsKey!4939 (t!391555 lt!2732578) (_1!38831 keyValue!4)))))

(assert (= (and d!2399331 (not res!3188433)) b!8059276))

(assert (= (and b!8059276 res!3188434) b!8059277))

(declare-fun m!8412540 () Bool)

(assert (=> b!8059277 m!8412540))

(assert (=> b!8059173 d!2399331))

(declare-fun d!2399335 () Bool)

(declare-fun lt!2732650 () Bool)

(declare-fun content!16137 (List!75783) (InoxSet tuple2!71056))

(assert (=> d!2399335 (= lt!2732650 (select (content!16137 lt!2732578) keyValue!4))))

(declare-fun e!4749489 () Bool)

(assert (=> d!2399335 (= lt!2732650 e!4749489)))

(declare-fun res!3188439 () Bool)

(assert (=> d!2399335 (=> (not res!3188439) (not e!4749489))))

(assert (=> d!2399335 (= res!3188439 ((_ is Cons!75657) lt!2732578))))

(assert (=> d!2399335 (= (contains!21326 lt!2732578 keyValue!4) lt!2732650)))

(declare-fun b!8059287 () Bool)

(declare-fun e!4749488 () Bool)

(assert (=> b!8059287 (= e!4749489 e!4749488)))

(declare-fun res!3188440 () Bool)

(assert (=> b!8059287 (=> res!3188440 e!4749488)))

(assert (=> b!8059287 (= res!3188440 (= (h!82105 lt!2732578) keyValue!4))))

(declare-fun b!8059288 () Bool)

(assert (=> b!8059288 (= e!4749488 (contains!21326 (t!391555 lt!2732578) keyValue!4))))

(assert (= (and d!2399335 res!3188439) b!8059287))

(assert (= (and b!8059287 (not res!3188440)) b!8059288))

(declare-fun m!8412542 () Bool)

(assert (=> d!2399335 m!8412542))

(declare-fun m!8412544 () Bool)

(assert (=> d!2399335 m!8412544))

(declare-fun m!8412546 () Bool)

(assert (=> b!8059288 m!8412546))

(assert (=> b!8059174 d!2399335))

(declare-fun tp!2414382 () Bool)

(declare-fun e!4749492 () Bool)

(declare-fun b!8059293 () Bool)

(assert (=> b!8059293 (= e!4749492 (and tp_is_empty!55227 tp_is_empty!55229 tp!2414382))))

(assert (=> b!8059175 (= tp!2414376 e!4749492)))

(assert (= (and b!8059175 ((_ is Cons!75657) (toList!11986 thiss!41857))) b!8059293))

(check-sat (not b!8059288) (not d!2399323) (not b!8059293) (not d!2399329) (not b!8059277) (not bm!747706) (not b!8059244) (not b!8059249) (not b!8059255) (not b!8059254) (not b!8059248) tp_is_empty!55227 (not b!8059252) (not b!8059257) (not bm!747703) (not d!2399335) (not b!8059251) (not d!2399319) tp_is_empty!55229)
(check-sat)
