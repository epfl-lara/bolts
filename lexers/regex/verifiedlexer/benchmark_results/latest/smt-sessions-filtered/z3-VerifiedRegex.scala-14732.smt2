; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!758292 () Bool)

(assert start!758292)

(declare-fun b!8051506 () Bool)

(declare-fun e!4744264 () Bool)

(declare-datatypes ((K!22793 0))(
  ( (K!22794 (val!32907 Int)) )
))
(declare-datatypes ((V!23047 0))(
  ( (V!23048 (val!32908 Int)) )
))
(declare-datatypes ((tuple2!70872 0))(
  ( (tuple2!70873 (_1!38739 K!22793) (_2!38739 V!23047)) )
))
(declare-datatypes ((List!75656 0))(
  ( (Nil!75530) (Cons!75530 (h!81978 tuple2!70872) (t!391428 List!75656)) )
))
(declare-fun l!14636 () List!75656)

(declare-fun key!6222 () K!22793)

(declare-fun containsKey!4837 (List!75656 K!22793) Bool)

(assert (=> b!8051506 (= e!4744264 (not (containsKey!4837 l!14636 key!6222)))))

(declare-fun b!8051507 () Bool)

(declare-fun e!4744266 () Bool)

(declare-fun e!4744269 () Bool)

(assert (=> b!8051507 (= e!4744266 e!4744269)))

(declare-fun res!3183626 () Bool)

(assert (=> b!8051507 (=> (not res!3183626) (not e!4744269))))

(assert (=> b!8051507 (= res!3183626 (= (_1!38739 (h!81978 l!14636)) key!6222))))

(declare-datatypes ((ListMap!7275 0))(
  ( (ListMap!7276 (toList!11912 List!75656)) )
))
(declare-fun lt!2725420 () ListMap!7275)

(declare-fun acc!1298 () ListMap!7275)

(declare-fun addToMapMapFromBucket!1979 (List!75656 ListMap!7275) ListMap!7275)

(declare-fun +!2663 (ListMap!7275 tuple2!70872) ListMap!7275)

(assert (=> b!8051507 (= lt!2725420 (addToMapMapFromBucket!1979 (t!391428 l!14636) (+!2663 acc!1298 (h!81978 l!14636))))))

(declare-fun b!8051508 () Bool)

(declare-fun e!4744265 () Bool)

(declare-fun lt!2725419 () Bool)

(assert (=> b!8051508 (= e!4744265 (not lt!2725419))))

(declare-fun b!8051509 () Bool)

(declare-fun e!4744271 () Bool)

(assert (=> b!8051509 (= e!4744271 e!4744266)))

(declare-fun res!3183634 () Bool)

(assert (=> b!8051509 (=> (not res!3183634) (not e!4744266))))

(declare-fun e!4744268 () Bool)

(assert (=> b!8051509 (= res!3183634 e!4744268)))

(declare-fun res!3183631 () Bool)

(assert (=> b!8051509 (=> res!3183631 e!4744268)))

(assert (=> b!8051509 (= res!3183631 e!4744264)))

(declare-fun res!3183630 () Bool)

(assert (=> b!8051509 (=> (not res!3183630) (not e!4744264))))

(assert (=> b!8051509 (= res!3183630 lt!2725419)))

(declare-fun contains!21185 (ListMap!7275 K!22793) Bool)

(assert (=> b!8051509 (= lt!2725419 (contains!21185 acc!1298 key!6222))))

(declare-fun b!8051510 () Bool)

(declare-fun res!3183637 () Bool)

(assert (=> b!8051510 (=> (not res!3183637) (not e!4744265))))

(declare-fun value!3131 () V!23047)

(declare-fun contains!21186 (List!75656 tuple2!70872) Bool)

(assert (=> b!8051510 (= res!3183637 (contains!21186 l!14636 (tuple2!70873 key!6222 value!3131)))))

(declare-fun tp!2413661 () Bool)

(declare-fun tp_is_empty!54869 () Bool)

(declare-fun b!8051511 () Bool)

(declare-fun e!4744270 () Bool)

(declare-fun tp_is_empty!54867 () Bool)

(assert (=> b!8051511 (= e!4744270 (and tp_is_empty!54867 tp_is_empty!54869 tp!2413661))))

(declare-fun b!8051512 () Bool)

(declare-fun res!3183627 () Bool)

(declare-fun e!4744267 () Bool)

(assert (=> b!8051512 (=> res!3183627 e!4744267)))

(declare-fun noDuplicateKeys!2698 (List!75656) Bool)

(assert (=> b!8051512 (= res!3183627 (not (noDuplicateKeys!2698 (t!391428 l!14636))))))

(declare-fun res!3183633 () Bool)

(assert (=> start!758292 (=> (not res!3183633) (not e!4744271))))

(assert (=> start!758292 (= res!3183633 (noDuplicateKeys!2698 l!14636))))

(assert (=> start!758292 e!4744271))

(assert (=> start!758292 e!4744270))

(declare-fun e!4744272 () Bool)

(declare-fun inv!97282 (ListMap!7275) Bool)

(assert (=> start!758292 (and (inv!97282 acc!1298) e!4744272)))

(assert (=> start!758292 tp_is_empty!54867))

(assert (=> start!758292 tp_is_empty!54869))

(declare-fun b!8051513 () Bool)

(assert (=> b!8051513 (= e!4744269 (not e!4744267))))

(declare-fun res!3183628 () Bool)

(assert (=> b!8051513 (=> res!3183628 e!4744267)))

(assert (=> b!8051513 (= res!3183628 (not (= (_2!38739 (h!81978 l!14636)) value!3131)))))

(assert (=> b!8051513 (not (contains!21186 (t!391428 l!14636) (tuple2!70873 key!6222 value!3131)))))

(declare-datatypes ((Unit!171567 0))(
  ( (Unit!171568) )
))
(declare-fun lt!2725418 () Unit!171567)

(declare-fun lemmaNotContainsKeyThenCannotContainPair!18 (List!75656 K!22793 V!23047) Unit!171567)

(assert (=> b!8051513 (= lt!2725418 (lemmaNotContainsKeyThenCannotContainPair!18 (t!391428 l!14636) key!6222 value!3131))))

(declare-fun b!8051514 () Bool)

(assert (=> b!8051514 (= e!4744267 (contains!21185 lt!2725420 key!6222))))

(declare-fun b!8051515 () Bool)

(declare-fun tp!2413660 () Bool)

(assert (=> b!8051515 (= e!4744272 tp!2413660)))

(declare-fun b!8051516 () Bool)

(declare-fun res!3183632 () Bool)

(assert (=> b!8051516 (=> (not res!3183632) (not e!4744271))))

(assert (=> b!8051516 (= res!3183632 (contains!21185 (addToMapMapFromBucket!1979 l!14636 acc!1298) key!6222))))

(declare-fun b!8051517 () Bool)

(declare-fun res!3183629 () Bool)

(assert (=> b!8051517 (=> (not res!3183629) (not e!4744264))))

(declare-fun apply!14425 (ListMap!7275 K!22793) V!23047)

(assert (=> b!8051517 (= res!3183629 (= (apply!14425 acc!1298 key!6222) value!3131))))

(declare-fun b!8051518 () Bool)

(assert (=> b!8051518 (= e!4744268 e!4744265)))

(declare-fun res!3183636 () Bool)

(assert (=> b!8051518 (=> (not res!3183636) (not e!4744265))))

(assert (=> b!8051518 (= res!3183636 (containsKey!4837 l!14636 key!6222))))

(declare-fun b!8051519 () Bool)

(declare-fun res!3183635 () Bool)

(assert (=> b!8051519 (=> (not res!3183635) (not e!4744266))))

(get-info :version)

(assert (=> b!8051519 (= res!3183635 (not ((_ is Nil!75530) l!14636)))))

(assert (= (and start!758292 res!3183633) b!8051516))

(assert (= (and b!8051516 res!3183632) b!8051509))

(assert (= (and b!8051509 res!3183630) b!8051517))

(assert (= (and b!8051517 res!3183629) b!8051506))

(assert (= (and b!8051509 (not res!3183631)) b!8051518))

(assert (= (and b!8051518 res!3183636) b!8051510))

(assert (= (and b!8051510 res!3183637) b!8051508))

(assert (= (and b!8051509 res!3183634) b!8051519))

(assert (= (and b!8051519 res!3183635) b!8051507))

(assert (= (and b!8051507 res!3183626) b!8051513))

(assert (= (and b!8051513 (not res!3183628)) b!8051512))

(assert (= (and b!8051512 (not res!3183627)) b!8051514))

(assert (= (and start!758292 ((_ is Cons!75530) l!14636)) b!8051511))

(assert (= start!758292 b!8051515))

(declare-fun m!8402546 () Bool)

(assert (=> b!8051513 m!8402546))

(declare-fun m!8402548 () Bool)

(assert (=> b!8051513 m!8402548))

(declare-fun m!8402550 () Bool)

(assert (=> b!8051510 m!8402550))

(declare-fun m!8402552 () Bool)

(assert (=> b!8051517 m!8402552))

(declare-fun m!8402554 () Bool)

(assert (=> b!8051506 m!8402554))

(declare-fun m!8402556 () Bool)

(assert (=> b!8051507 m!8402556))

(assert (=> b!8051507 m!8402556))

(declare-fun m!8402558 () Bool)

(assert (=> b!8051507 m!8402558))

(declare-fun m!8402560 () Bool)

(assert (=> b!8051509 m!8402560))

(assert (=> b!8051518 m!8402554))

(declare-fun m!8402562 () Bool)

(assert (=> b!8051514 m!8402562))

(declare-fun m!8402564 () Bool)

(assert (=> b!8051512 m!8402564))

(declare-fun m!8402566 () Bool)

(assert (=> b!8051516 m!8402566))

(assert (=> b!8051516 m!8402566))

(declare-fun m!8402568 () Bool)

(assert (=> b!8051516 m!8402568))

(declare-fun m!8402570 () Bool)

(assert (=> start!758292 m!8402570))

(declare-fun m!8402572 () Bool)

(assert (=> start!758292 m!8402572))

(check-sat (not b!8051507) (not b!8051510) (not b!8051514) (not start!758292) tp_is_empty!54869 (not b!8051518) (not b!8051517) (not b!8051511) (not b!8051506) tp_is_empty!54867 (not b!8051509) (not b!8051512) (not b!8051513) (not b!8051515) (not b!8051516))
(check-sat)
(get-model)

(declare-fun d!2397293 () Bool)

(declare-fun res!3183642 () Bool)

(declare-fun e!4744277 () Bool)

(assert (=> d!2397293 (=> res!3183642 e!4744277)))

(assert (=> d!2397293 (= res!3183642 (not ((_ is Cons!75530) (t!391428 l!14636))))))

(assert (=> d!2397293 (= (noDuplicateKeys!2698 (t!391428 l!14636)) e!4744277)))

(declare-fun b!8051524 () Bool)

(declare-fun e!4744278 () Bool)

(assert (=> b!8051524 (= e!4744277 e!4744278)))

(declare-fun res!3183643 () Bool)

(assert (=> b!8051524 (=> (not res!3183643) (not e!4744278))))

(assert (=> b!8051524 (= res!3183643 (not (containsKey!4837 (t!391428 (t!391428 l!14636)) (_1!38739 (h!81978 (t!391428 l!14636))))))))

(declare-fun b!8051525 () Bool)

(assert (=> b!8051525 (= e!4744278 (noDuplicateKeys!2698 (t!391428 (t!391428 l!14636))))))

(assert (= (and d!2397293 (not res!3183642)) b!8051524))

(assert (= (and b!8051524 res!3183643) b!8051525))

(declare-fun m!8402574 () Bool)

(assert (=> b!8051524 m!8402574))

(declare-fun m!8402576 () Bool)

(assert (=> b!8051525 m!8402576))

(assert (=> b!8051512 d!2397293))

(declare-fun d!2397295 () Bool)

(declare-fun res!3183644 () Bool)

(declare-fun e!4744279 () Bool)

(assert (=> d!2397295 (=> res!3183644 e!4744279)))

(assert (=> d!2397295 (= res!3183644 (not ((_ is Cons!75530) l!14636)))))

(assert (=> d!2397295 (= (noDuplicateKeys!2698 l!14636) e!4744279)))

(declare-fun b!8051526 () Bool)

(declare-fun e!4744280 () Bool)

(assert (=> b!8051526 (= e!4744279 e!4744280)))

(declare-fun res!3183645 () Bool)

(assert (=> b!8051526 (=> (not res!3183645) (not e!4744280))))

(assert (=> b!8051526 (= res!3183645 (not (containsKey!4837 (t!391428 l!14636) (_1!38739 (h!81978 l!14636)))))))

(declare-fun b!8051527 () Bool)

(assert (=> b!8051527 (= e!4744280 (noDuplicateKeys!2698 (t!391428 l!14636)))))

(assert (= (and d!2397295 (not res!3183644)) b!8051526))

(assert (= (and b!8051526 res!3183645) b!8051527))

(declare-fun m!8402578 () Bool)

(assert (=> b!8051526 m!8402578))

(assert (=> b!8051527 m!8402564))

(assert (=> start!758292 d!2397295))

(declare-fun d!2397299 () Bool)

(declare-fun invariantList!1927 (List!75656) Bool)

(assert (=> d!2397299 (= (inv!97282 acc!1298) (invariantList!1927 (toList!11912 acc!1298)))))

(declare-fun bs!1972029 () Bool)

(assert (= bs!1972029 d!2397299))

(declare-fun m!8402580 () Bool)

(assert (=> bs!1972029 m!8402580))

(assert (=> start!758292 d!2397299))

(declare-fun lt!2725423 () Bool)

(declare-fun d!2397301 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!16099 (List!75656) (InoxSet tuple2!70872))

(assert (=> d!2397301 (= lt!2725423 (select (content!16099 (t!391428 l!14636)) (tuple2!70873 key!6222 value!3131)))))

(declare-fun e!4744293 () Bool)

(assert (=> d!2397301 (= lt!2725423 e!4744293)))

(declare-fun res!3183658 () Bool)

(assert (=> d!2397301 (=> (not res!3183658) (not e!4744293))))

(assert (=> d!2397301 (= res!3183658 ((_ is Cons!75530) (t!391428 l!14636)))))

(assert (=> d!2397301 (= (contains!21186 (t!391428 l!14636) (tuple2!70873 key!6222 value!3131)) lt!2725423)))

(declare-fun b!8051540 () Bool)

(declare-fun e!4744294 () Bool)

(assert (=> b!8051540 (= e!4744293 e!4744294)))

(declare-fun res!3183659 () Bool)

(assert (=> b!8051540 (=> res!3183659 e!4744294)))

(assert (=> b!8051540 (= res!3183659 (= (h!81978 (t!391428 l!14636)) (tuple2!70873 key!6222 value!3131)))))

(declare-fun b!8051541 () Bool)

(assert (=> b!8051541 (= e!4744294 (contains!21186 (t!391428 (t!391428 l!14636)) (tuple2!70873 key!6222 value!3131)))))

(assert (= (and d!2397301 res!3183658) b!8051540))

(assert (= (and b!8051540 (not res!3183659)) b!8051541))

(declare-fun m!8402590 () Bool)

(assert (=> d!2397301 m!8402590))

(declare-fun m!8402592 () Bool)

(assert (=> d!2397301 m!8402592))

(declare-fun m!8402594 () Bool)

(assert (=> b!8051541 m!8402594))

(assert (=> b!8051513 d!2397301))

(declare-fun d!2397309 () Bool)

(assert (=> d!2397309 (not (contains!21186 (t!391428 l!14636) (tuple2!70873 key!6222 value!3131)))))

(declare-fun lt!2725426 () Unit!171567)

(declare-fun choose!60495 (List!75656 K!22793 V!23047) Unit!171567)

(assert (=> d!2397309 (= lt!2725426 (choose!60495 (t!391428 l!14636) key!6222 value!3131))))

(assert (=> d!2397309 (not (containsKey!4837 (t!391428 l!14636) key!6222))))

(assert (=> d!2397309 (= (lemmaNotContainsKeyThenCannotContainPair!18 (t!391428 l!14636) key!6222 value!3131) lt!2725426)))

(declare-fun bs!1972031 () Bool)

(assert (= bs!1972031 d!2397309))

(assert (=> bs!1972031 m!8402546))

(declare-fun m!8402598 () Bool)

(assert (=> bs!1972031 m!8402598))

(declare-fun m!8402600 () Bool)

(assert (=> bs!1972031 m!8402600))

(assert (=> b!8051513 d!2397309))

(declare-fun b!8051566 () Bool)

(declare-datatypes ((List!75657 0))(
  ( (Nil!75531) (Cons!75531 (h!81979 K!22793) (t!391429 List!75657)) )
))
(declare-fun e!4744314 () List!75657)

(declare-fun keys!30821 (ListMap!7275) List!75657)

(assert (=> b!8051566 (= e!4744314 (keys!30821 acc!1298))))

(declare-fun bm!746989 () Bool)

(declare-fun call!746994 () Bool)

(declare-fun contains!21187 (List!75657 K!22793) Bool)

(assert (=> bm!746989 (= call!746994 (contains!21187 e!4744314 key!6222))))

(declare-fun c!1475901 () Bool)

(declare-fun c!1475902 () Bool)

(assert (=> bm!746989 (= c!1475901 c!1475902)))

(declare-fun b!8051567 () Bool)

(declare-fun e!4744313 () Bool)

(assert (=> b!8051567 (= e!4744313 (not (contains!21187 (keys!30821 acc!1298) key!6222)))))

(declare-fun d!2397313 () Bool)

(declare-fun e!4744315 () Bool)

(assert (=> d!2397313 e!4744315))

(declare-fun res!3183672 () Bool)

(assert (=> d!2397313 (=> res!3183672 e!4744315)))

(assert (=> d!2397313 (= res!3183672 e!4744313)))

(declare-fun res!3183674 () Bool)

(assert (=> d!2397313 (=> (not res!3183674) (not e!4744313))))

(declare-fun lt!2725446 () Bool)

(assert (=> d!2397313 (= res!3183674 (not lt!2725446))))

(declare-fun lt!2725449 () Bool)

(assert (=> d!2397313 (= lt!2725446 lt!2725449)))

(declare-fun lt!2725444 () Unit!171567)

(declare-fun e!4744318 () Unit!171567)

(assert (=> d!2397313 (= lt!2725444 e!4744318)))

(assert (=> d!2397313 (= c!1475902 lt!2725449)))

(declare-fun containsKey!4838 (List!75656 K!22793) Bool)

(assert (=> d!2397313 (= lt!2725449 (containsKey!4838 (toList!11912 acc!1298) key!6222))))

(assert (=> d!2397313 (= (contains!21185 acc!1298 key!6222) lt!2725446)))

(declare-fun b!8051568 () Bool)

(declare-fun e!4744317 () Unit!171567)

(declare-fun Unit!171580 () Unit!171567)

(assert (=> b!8051568 (= e!4744317 Unit!171580)))

(declare-fun b!8051569 () Bool)

(assert (=> b!8051569 (= e!4744318 e!4744317)))

(declare-fun c!1475900 () Bool)

(assert (=> b!8051569 (= c!1475900 call!746994)))

(declare-fun b!8051570 () Bool)

(declare-fun getKeysList!1234 (List!75656) List!75657)

(assert (=> b!8051570 (= e!4744314 (getKeysList!1234 (toList!11912 acc!1298)))))

(declare-fun b!8051571 () Bool)

(assert (=> b!8051571 false))

(declare-fun lt!2725443 () Unit!171567)

(declare-fun lt!2725448 () Unit!171567)

(assert (=> b!8051571 (= lt!2725443 lt!2725448)))

(assert (=> b!8051571 (containsKey!4838 (toList!11912 acc!1298) key!6222)))

(declare-fun lemmaInGetKeysListThenContainsKey!1234 (List!75656 K!22793) Unit!171567)

(assert (=> b!8051571 (= lt!2725448 (lemmaInGetKeysListThenContainsKey!1234 (toList!11912 acc!1298) key!6222))))

(declare-fun Unit!171581 () Unit!171567)

(assert (=> b!8051571 (= e!4744317 Unit!171581)))

(declare-fun b!8051572 () Bool)

(declare-fun lt!2725447 () Unit!171567)

(assert (=> b!8051572 (= e!4744318 lt!2725447)))

(declare-fun lt!2725445 () Unit!171567)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2546 (List!75656 K!22793) Unit!171567)

(assert (=> b!8051572 (= lt!2725445 (lemmaContainsKeyImpliesGetValueByKeyDefined!2546 (toList!11912 acc!1298) key!6222))))

(declare-datatypes ((Option!17991 0))(
  ( (None!17990) (Some!17990 (v!55293 V!23047)) )
))
(declare-fun isDefined!14524 (Option!17991) Bool)

(declare-fun getValueByKey!2775 (List!75656 K!22793) Option!17991)

(assert (=> b!8051572 (isDefined!14524 (getValueByKey!2775 (toList!11912 acc!1298) key!6222))))

(declare-fun lt!2725450 () Unit!171567)

(assert (=> b!8051572 (= lt!2725450 lt!2725445)))

(declare-fun lemmaInListThenGetKeysListContains!1229 (List!75656 K!22793) Unit!171567)

(assert (=> b!8051572 (= lt!2725447 (lemmaInListThenGetKeysListContains!1229 (toList!11912 acc!1298) key!6222))))

(assert (=> b!8051572 call!746994))

(declare-fun b!8051573 () Bool)

(declare-fun e!4744316 () Bool)

(assert (=> b!8051573 (= e!4744315 e!4744316)))

(declare-fun res!3183673 () Bool)

(assert (=> b!8051573 (=> (not res!3183673) (not e!4744316))))

(assert (=> b!8051573 (= res!3183673 (isDefined!14524 (getValueByKey!2775 (toList!11912 acc!1298) key!6222)))))

(declare-fun b!8051574 () Bool)

(assert (=> b!8051574 (= e!4744316 (contains!21187 (keys!30821 acc!1298) key!6222))))

(assert (= (and d!2397313 c!1475902) b!8051572))

(assert (= (and d!2397313 (not c!1475902)) b!8051569))

(assert (= (and b!8051569 c!1475900) b!8051571))

(assert (= (and b!8051569 (not c!1475900)) b!8051568))

(assert (= (or b!8051572 b!8051569) bm!746989))

(assert (= (and bm!746989 c!1475901) b!8051570))

(assert (= (and bm!746989 (not c!1475901)) b!8051566))

(assert (= (and d!2397313 res!3183674) b!8051567))

(assert (= (and d!2397313 (not res!3183672)) b!8051573))

(assert (= (and b!8051573 res!3183673) b!8051574))

(declare-fun m!8402602 () Bool)

(assert (=> b!8051571 m!8402602))

(declare-fun m!8402604 () Bool)

(assert (=> b!8051571 m!8402604))

(declare-fun m!8402606 () Bool)

(assert (=> b!8051570 m!8402606))

(declare-fun m!8402608 () Bool)

(assert (=> b!8051573 m!8402608))

(assert (=> b!8051573 m!8402608))

(declare-fun m!8402610 () Bool)

(assert (=> b!8051573 m!8402610))

(declare-fun m!8402612 () Bool)

(assert (=> b!8051566 m!8402612))

(declare-fun m!8402614 () Bool)

(assert (=> bm!746989 m!8402614))

(assert (=> d!2397313 m!8402602))

(assert (=> b!8051567 m!8402612))

(assert (=> b!8051567 m!8402612))

(declare-fun m!8402616 () Bool)

(assert (=> b!8051567 m!8402616))

(assert (=> b!8051574 m!8402612))

(assert (=> b!8051574 m!8402612))

(assert (=> b!8051574 m!8402616))

(declare-fun m!8402618 () Bool)

(assert (=> b!8051572 m!8402618))

(assert (=> b!8051572 m!8402608))

(assert (=> b!8051572 m!8402608))

(assert (=> b!8051572 m!8402610))

(declare-fun m!8402620 () Bool)

(assert (=> b!8051572 m!8402620))

(assert (=> b!8051509 d!2397313))

(declare-fun d!2397315 () Bool)

(declare-fun lt!2725451 () Bool)

(assert (=> d!2397315 (= lt!2725451 (select (content!16099 l!14636) (tuple2!70873 key!6222 value!3131)))))

(declare-fun e!4744319 () Bool)

(assert (=> d!2397315 (= lt!2725451 e!4744319)))

(declare-fun res!3183675 () Bool)

(assert (=> d!2397315 (=> (not res!3183675) (not e!4744319))))

(assert (=> d!2397315 (= res!3183675 ((_ is Cons!75530) l!14636))))

(assert (=> d!2397315 (= (contains!21186 l!14636 (tuple2!70873 key!6222 value!3131)) lt!2725451)))

(declare-fun b!8051575 () Bool)

(declare-fun e!4744320 () Bool)

(assert (=> b!8051575 (= e!4744319 e!4744320)))

(declare-fun res!3183676 () Bool)

(assert (=> b!8051575 (=> res!3183676 e!4744320)))

(assert (=> b!8051575 (= res!3183676 (= (h!81978 l!14636) (tuple2!70873 key!6222 value!3131)))))

(declare-fun b!8051576 () Bool)

(assert (=> b!8051576 (= e!4744320 (contains!21186 (t!391428 l!14636) (tuple2!70873 key!6222 value!3131)))))

(assert (= (and d!2397315 res!3183675) b!8051575))

(assert (= (and b!8051575 (not res!3183676)) b!8051576))

(declare-fun m!8402622 () Bool)

(assert (=> d!2397315 m!8402622))

(declare-fun m!8402624 () Bool)

(assert (=> d!2397315 m!8402624))

(assert (=> b!8051576 m!8402546))

(assert (=> b!8051510 d!2397315))

(declare-fun b!8051577 () Bool)

(declare-fun e!4744322 () List!75657)

(assert (=> b!8051577 (= e!4744322 (keys!30821 (addToMapMapFromBucket!1979 l!14636 acc!1298)))))

(declare-fun bm!746990 () Bool)

(declare-fun call!746995 () Bool)

(assert (=> bm!746990 (= call!746995 (contains!21187 e!4744322 key!6222))))

(declare-fun c!1475904 () Bool)

(declare-fun c!1475905 () Bool)

(assert (=> bm!746990 (= c!1475904 c!1475905)))

(declare-fun e!4744321 () Bool)

(declare-fun b!8051578 () Bool)

(assert (=> b!8051578 (= e!4744321 (not (contains!21187 (keys!30821 (addToMapMapFromBucket!1979 l!14636 acc!1298)) key!6222)))))

(declare-fun d!2397317 () Bool)

(declare-fun e!4744323 () Bool)

(assert (=> d!2397317 e!4744323))

(declare-fun res!3183677 () Bool)

(assert (=> d!2397317 (=> res!3183677 e!4744323)))

(assert (=> d!2397317 (= res!3183677 e!4744321)))

(declare-fun res!3183679 () Bool)

(assert (=> d!2397317 (=> (not res!3183679) (not e!4744321))))

(declare-fun lt!2725455 () Bool)

(assert (=> d!2397317 (= res!3183679 (not lt!2725455))))

(declare-fun lt!2725458 () Bool)

(assert (=> d!2397317 (= lt!2725455 lt!2725458)))

(declare-fun lt!2725453 () Unit!171567)

(declare-fun e!4744326 () Unit!171567)

(assert (=> d!2397317 (= lt!2725453 e!4744326)))

(assert (=> d!2397317 (= c!1475905 lt!2725458)))

(assert (=> d!2397317 (= lt!2725458 (containsKey!4838 (toList!11912 (addToMapMapFromBucket!1979 l!14636 acc!1298)) key!6222))))

(assert (=> d!2397317 (= (contains!21185 (addToMapMapFromBucket!1979 l!14636 acc!1298) key!6222) lt!2725455)))

(declare-fun b!8051579 () Bool)

(declare-fun e!4744325 () Unit!171567)

(declare-fun Unit!171583 () Unit!171567)

(assert (=> b!8051579 (= e!4744325 Unit!171583)))

(declare-fun b!8051580 () Bool)

(assert (=> b!8051580 (= e!4744326 e!4744325)))

(declare-fun c!1475903 () Bool)

(assert (=> b!8051580 (= c!1475903 call!746995)))

(declare-fun b!8051581 () Bool)

(assert (=> b!8051581 (= e!4744322 (getKeysList!1234 (toList!11912 (addToMapMapFromBucket!1979 l!14636 acc!1298))))))

(declare-fun b!8051582 () Bool)

(assert (=> b!8051582 false))

(declare-fun lt!2725452 () Unit!171567)

(declare-fun lt!2725457 () Unit!171567)

(assert (=> b!8051582 (= lt!2725452 lt!2725457)))

(assert (=> b!8051582 (containsKey!4838 (toList!11912 (addToMapMapFromBucket!1979 l!14636 acc!1298)) key!6222)))

(assert (=> b!8051582 (= lt!2725457 (lemmaInGetKeysListThenContainsKey!1234 (toList!11912 (addToMapMapFromBucket!1979 l!14636 acc!1298)) key!6222))))

(declare-fun Unit!171584 () Unit!171567)

(assert (=> b!8051582 (= e!4744325 Unit!171584)))

(declare-fun b!8051583 () Bool)

(declare-fun lt!2725456 () Unit!171567)

(assert (=> b!8051583 (= e!4744326 lt!2725456)))

(declare-fun lt!2725454 () Unit!171567)

(assert (=> b!8051583 (= lt!2725454 (lemmaContainsKeyImpliesGetValueByKeyDefined!2546 (toList!11912 (addToMapMapFromBucket!1979 l!14636 acc!1298)) key!6222))))

(assert (=> b!8051583 (isDefined!14524 (getValueByKey!2775 (toList!11912 (addToMapMapFromBucket!1979 l!14636 acc!1298)) key!6222))))

(declare-fun lt!2725459 () Unit!171567)

(assert (=> b!8051583 (= lt!2725459 lt!2725454)))

(assert (=> b!8051583 (= lt!2725456 (lemmaInListThenGetKeysListContains!1229 (toList!11912 (addToMapMapFromBucket!1979 l!14636 acc!1298)) key!6222))))

(assert (=> b!8051583 call!746995))

(declare-fun b!8051584 () Bool)

(declare-fun e!4744324 () Bool)

(assert (=> b!8051584 (= e!4744323 e!4744324)))

(declare-fun res!3183678 () Bool)

(assert (=> b!8051584 (=> (not res!3183678) (not e!4744324))))

(assert (=> b!8051584 (= res!3183678 (isDefined!14524 (getValueByKey!2775 (toList!11912 (addToMapMapFromBucket!1979 l!14636 acc!1298)) key!6222)))))

(declare-fun b!8051585 () Bool)

(assert (=> b!8051585 (= e!4744324 (contains!21187 (keys!30821 (addToMapMapFromBucket!1979 l!14636 acc!1298)) key!6222))))

(assert (= (and d!2397317 c!1475905) b!8051583))

(assert (= (and d!2397317 (not c!1475905)) b!8051580))

(assert (= (and b!8051580 c!1475903) b!8051582))

(assert (= (and b!8051580 (not c!1475903)) b!8051579))

(assert (= (or b!8051583 b!8051580) bm!746990))

(assert (= (and bm!746990 c!1475904) b!8051581))

(assert (= (and bm!746990 (not c!1475904)) b!8051577))

(assert (= (and d!2397317 res!3183679) b!8051578))

(assert (= (and d!2397317 (not res!3183677)) b!8051584))

(assert (= (and b!8051584 res!3183678) b!8051585))

(declare-fun m!8402626 () Bool)

(assert (=> b!8051582 m!8402626))

(declare-fun m!8402628 () Bool)

(assert (=> b!8051582 m!8402628))

(declare-fun m!8402630 () Bool)

(assert (=> b!8051581 m!8402630))

(declare-fun m!8402632 () Bool)

(assert (=> b!8051584 m!8402632))

(assert (=> b!8051584 m!8402632))

(declare-fun m!8402634 () Bool)

(assert (=> b!8051584 m!8402634))

(assert (=> b!8051577 m!8402566))

(declare-fun m!8402636 () Bool)

(assert (=> b!8051577 m!8402636))

(declare-fun m!8402638 () Bool)

(assert (=> bm!746990 m!8402638))

(assert (=> d!2397317 m!8402626))

(assert (=> b!8051578 m!8402566))

(assert (=> b!8051578 m!8402636))

(assert (=> b!8051578 m!8402636))

(declare-fun m!8402640 () Bool)

(assert (=> b!8051578 m!8402640))

(assert (=> b!8051585 m!8402566))

(assert (=> b!8051585 m!8402636))

(assert (=> b!8051585 m!8402636))

(assert (=> b!8051585 m!8402640))

(declare-fun m!8402642 () Bool)

(assert (=> b!8051583 m!8402642))

(assert (=> b!8051583 m!8402632))

(assert (=> b!8051583 m!8402632))

(assert (=> b!8051583 m!8402634))

(declare-fun m!8402644 () Bool)

(assert (=> b!8051583 m!8402644))

(assert (=> b!8051516 d!2397317))

(declare-fun b!8051658 () Bool)

(assert (=> b!8051658 true))

(declare-fun bs!1972036 () Bool)

(declare-fun b!8051659 () Bool)

(assert (= bs!1972036 (and b!8051659 b!8051658)))

(declare-fun lambda!473361 () Int)

(declare-fun lambda!473360 () Int)

(assert (=> bs!1972036 (= lambda!473361 lambda!473360)))

(assert (=> b!8051659 true))

(declare-fun lt!2725612 () ListMap!7275)

(declare-fun lambda!473362 () Int)

(assert (=> bs!1972036 (= (= lt!2725612 acc!1298) (= lambda!473362 lambda!473360))))

(assert (=> b!8051659 (= (= lt!2725612 acc!1298) (= lambda!473362 lambda!473361))))

(assert (=> b!8051659 true))

(declare-fun bs!1972037 () Bool)

(declare-fun d!2397319 () Bool)

(assert (= bs!1972037 (and d!2397319 b!8051658)))

(declare-fun lt!2725625 () ListMap!7275)

(declare-fun lambda!473363 () Int)

(assert (=> bs!1972037 (= (= lt!2725625 acc!1298) (= lambda!473363 lambda!473360))))

(declare-fun bs!1972038 () Bool)

(assert (= bs!1972038 (and d!2397319 b!8051659)))

(assert (=> bs!1972038 (= (= lt!2725625 acc!1298) (= lambda!473363 lambda!473361))))

(assert (=> bs!1972038 (= (= lt!2725625 lt!2725612) (= lambda!473363 lambda!473362))))

(assert (=> d!2397319 true))

(declare-fun bm!747010 () Bool)

(declare-fun call!747017 () Unit!171567)

(declare-fun lemmaContainsAllItsOwnKeys!1079 (ListMap!7275) Unit!171567)

(assert (=> bm!747010 (= call!747017 (lemmaContainsAllItsOwnKeys!1079 acc!1298))))

(declare-fun lt!2725627 () ListMap!7275)

(declare-fun bm!747011 () Bool)

(declare-fun call!747016 () Bool)

(declare-fun c!1475923 () Bool)

(declare-fun forall!18496 (List!75656 Int) Bool)

(assert (=> bm!747011 (= call!747016 (forall!18496 (ite c!1475923 (toList!11912 acc!1298) (toList!11912 lt!2725627)) (ite c!1475923 lambda!473360 lambda!473362)))))

(declare-fun b!8051655 () Bool)

(declare-fun e!4744371 () Bool)

(assert (=> b!8051655 (= e!4744371 (invariantList!1927 (toList!11912 lt!2725625)))))

(assert (=> d!2397319 e!4744371))

(declare-fun res!3183714 () Bool)

(assert (=> d!2397319 (=> (not res!3183714) (not e!4744371))))

(assert (=> d!2397319 (= res!3183714 (forall!18496 l!14636 lambda!473363))))

(declare-fun e!4744369 () ListMap!7275)

(assert (=> d!2397319 (= lt!2725625 e!4744369)))

(assert (=> d!2397319 (= c!1475923 ((_ is Nil!75530) l!14636))))

(assert (=> d!2397319 (noDuplicateKeys!2698 l!14636)))

(assert (=> d!2397319 (= (addToMapMapFromBucket!1979 l!14636 acc!1298) lt!2725625)))

(declare-fun b!8051656 () Bool)

(declare-fun res!3183715 () Bool)

(assert (=> b!8051656 (=> (not res!3183715) (not e!4744371))))

(assert (=> b!8051656 (= res!3183715 (forall!18496 (toList!11912 acc!1298) lambda!473363))))

(declare-fun b!8051657 () Bool)

(declare-fun e!4744370 () Bool)

(assert (=> b!8051657 (= e!4744370 (forall!18496 (toList!11912 acc!1298) lambda!473362))))

(assert (=> b!8051658 (= e!4744369 acc!1298)))

(declare-fun lt!2725621 () Unit!171567)

(assert (=> b!8051658 (= lt!2725621 call!747017)))

(assert (=> b!8051658 call!747016))

(declare-fun lt!2725610 () Unit!171567)

(assert (=> b!8051658 (= lt!2725610 lt!2725621)))

(declare-fun call!747015 () Bool)

(assert (=> b!8051658 call!747015))

(declare-fun lt!2725616 () Unit!171567)

(declare-fun Unit!171587 () Unit!171567)

(assert (=> b!8051658 (= lt!2725616 Unit!171587)))

(assert (=> b!8051659 (= e!4744369 lt!2725612)))

(assert (=> b!8051659 (= lt!2725627 (+!2663 acc!1298 (h!81978 l!14636)))))

(assert (=> b!8051659 (= lt!2725612 (addToMapMapFromBucket!1979 (t!391428 l!14636) (+!2663 acc!1298 (h!81978 l!14636))))))

(declare-fun lt!2725617 () Unit!171567)

(assert (=> b!8051659 (= lt!2725617 call!747017)))

(assert (=> b!8051659 (forall!18496 (toList!11912 acc!1298) lambda!473361)))

(declare-fun lt!2725613 () Unit!171567)

(assert (=> b!8051659 (= lt!2725613 lt!2725617)))

(assert (=> b!8051659 call!747016))

(declare-fun lt!2725619 () Unit!171567)

(declare-fun Unit!171589 () Unit!171567)

(assert (=> b!8051659 (= lt!2725619 Unit!171589)))

(assert (=> b!8051659 (forall!18496 (t!391428 l!14636) lambda!473362)))

(declare-fun lt!2725611 () Unit!171567)

(declare-fun Unit!171590 () Unit!171567)

(assert (=> b!8051659 (= lt!2725611 Unit!171590)))

(declare-fun lt!2725624 () Unit!171567)

(declare-fun Unit!171591 () Unit!171567)

(assert (=> b!8051659 (= lt!2725624 Unit!171591)))

(declare-fun lt!2725614 () Unit!171567)

(declare-fun forallContained!4650 (List!75656 Int tuple2!70872) Unit!171567)

(assert (=> b!8051659 (= lt!2725614 (forallContained!4650 (toList!11912 lt!2725627) lambda!473362 (h!81978 l!14636)))))

(assert (=> b!8051659 (contains!21185 lt!2725627 (_1!38739 (h!81978 l!14636)))))

(declare-fun lt!2725622 () Unit!171567)

(declare-fun Unit!171592 () Unit!171567)

(assert (=> b!8051659 (= lt!2725622 Unit!171592)))

(assert (=> b!8051659 (contains!21185 lt!2725612 (_1!38739 (h!81978 l!14636)))))

(declare-fun lt!2725615 () Unit!171567)

(declare-fun Unit!171593 () Unit!171567)

(assert (=> b!8051659 (= lt!2725615 Unit!171593)))

(assert (=> b!8051659 (forall!18496 l!14636 lambda!473362)))

(declare-fun lt!2725618 () Unit!171567)

(declare-fun Unit!171594 () Unit!171567)

(assert (=> b!8051659 (= lt!2725618 Unit!171594)))

(assert (=> b!8051659 (forall!18496 (toList!11912 lt!2725627) lambda!473362)))

(declare-fun lt!2725620 () Unit!171567)

(declare-fun Unit!171595 () Unit!171567)

(assert (=> b!8051659 (= lt!2725620 Unit!171595)))

(declare-fun lt!2725623 () Unit!171567)

(declare-fun Unit!171596 () Unit!171567)

(assert (=> b!8051659 (= lt!2725623 Unit!171596)))

(declare-fun lt!2725629 () Unit!171567)

(declare-fun addForallContainsKeyThenBeforeAdding!1077 (ListMap!7275 ListMap!7275 K!22793 V!23047) Unit!171567)

(assert (=> b!8051659 (= lt!2725629 (addForallContainsKeyThenBeforeAdding!1077 acc!1298 lt!2725612 (_1!38739 (h!81978 l!14636)) (_2!38739 (h!81978 l!14636))))))

(assert (=> b!8051659 call!747015))

(declare-fun lt!2725628 () Unit!171567)

(assert (=> b!8051659 (= lt!2725628 lt!2725629)))

(assert (=> b!8051659 (forall!18496 (toList!11912 acc!1298) lambda!473362)))

(declare-fun lt!2725626 () Unit!171567)

(declare-fun Unit!171597 () Unit!171567)

(assert (=> b!8051659 (= lt!2725626 Unit!171597)))

(declare-fun res!3183713 () Bool)

(assert (=> b!8051659 (= res!3183713 (forall!18496 l!14636 lambda!473362))))

(assert (=> b!8051659 (=> (not res!3183713) (not e!4744370))))

(assert (=> b!8051659 e!4744370))

(declare-fun lt!2725609 () Unit!171567)

(declare-fun Unit!171598 () Unit!171567)

(assert (=> b!8051659 (= lt!2725609 Unit!171598)))

(declare-fun bm!747012 () Bool)

(assert (=> bm!747012 (= call!747015 (forall!18496 (toList!11912 acc!1298) (ite c!1475923 lambda!473360 lambda!473362)))))

(assert (= (and d!2397319 c!1475923) b!8051658))

(assert (= (and d!2397319 (not c!1475923)) b!8051659))

(assert (= (and b!8051659 res!3183713) b!8051657))

(assert (= (or b!8051658 b!8051659) bm!747011))

(assert (= (or b!8051658 b!8051659) bm!747012))

(assert (= (or b!8051658 b!8051659) bm!747010))

(assert (= (and d!2397319 res!3183714) b!8051656))

(assert (= (and b!8051656 res!3183715) b!8051655))

(declare-fun m!8402758 () Bool)

(assert (=> b!8051656 m!8402758))

(declare-fun m!8402760 () Bool)

(assert (=> bm!747011 m!8402760))

(declare-fun m!8402762 () Bool)

(assert (=> b!8051659 m!8402762))

(declare-fun m!8402764 () Bool)

(assert (=> b!8051659 m!8402764))

(declare-fun m!8402766 () Bool)

(assert (=> b!8051659 m!8402766))

(declare-fun m!8402768 () Bool)

(assert (=> b!8051659 m!8402768))

(declare-fun m!8402770 () Bool)

(assert (=> b!8051659 m!8402770))

(declare-fun m!8402772 () Bool)

(assert (=> b!8051659 m!8402772))

(declare-fun m!8402774 () Bool)

(assert (=> b!8051659 m!8402774))

(declare-fun m!8402776 () Bool)

(assert (=> b!8051659 m!8402776))

(assert (=> b!8051659 m!8402556))

(assert (=> b!8051659 m!8402558))

(assert (=> b!8051659 m!8402774))

(assert (=> b!8051659 m!8402556))

(declare-fun m!8402778 () Bool)

(assert (=> b!8051659 m!8402778))

(declare-fun m!8402780 () Bool)

(assert (=> b!8051655 m!8402780))

(declare-fun m!8402782 () Bool)

(assert (=> bm!747012 m!8402782))

(assert (=> b!8051657 m!8402766))

(declare-fun m!8402784 () Bool)

(assert (=> bm!747010 m!8402784))

(declare-fun m!8402786 () Bool)

(assert (=> d!2397319 m!8402786))

(assert (=> d!2397319 m!8402570))

(assert (=> b!8051516 d!2397319))

(declare-fun d!2397335 () Bool)

(declare-fun res!3183732 () Bool)

(declare-fun e!4744391 () Bool)

(assert (=> d!2397335 (=> res!3183732 e!4744391)))

(assert (=> d!2397335 (= res!3183732 (and ((_ is Cons!75530) l!14636) (= (_1!38739 (h!81978 l!14636)) key!6222)))))

(assert (=> d!2397335 (= (containsKey!4837 l!14636 key!6222) e!4744391)))

(declare-fun b!8051686 () Bool)

(declare-fun e!4744392 () Bool)

(assert (=> b!8051686 (= e!4744391 e!4744392)))

(declare-fun res!3183733 () Bool)

(assert (=> b!8051686 (=> (not res!3183733) (not e!4744392))))

(assert (=> b!8051686 (= res!3183733 ((_ is Cons!75530) l!14636))))

(declare-fun b!8051687 () Bool)

(assert (=> b!8051687 (= e!4744392 (containsKey!4837 (t!391428 l!14636) key!6222))))

(assert (= (and d!2397335 (not res!3183732)) b!8051686))

(assert (= (and b!8051686 res!3183733) b!8051687))

(assert (=> b!8051687 m!8402600))

(assert (=> b!8051506 d!2397335))

(declare-fun d!2397337 () Bool)

(declare-fun get!27206 (Option!17991) V!23047)

(assert (=> d!2397337 (= (apply!14425 acc!1298 key!6222) (get!27206 (getValueByKey!2775 (toList!11912 acc!1298) key!6222)))))

(declare-fun bs!1972051 () Bool)

(assert (= bs!1972051 d!2397337))

(assert (=> bs!1972051 m!8402608))

(assert (=> bs!1972051 m!8402608))

(declare-fun m!8402788 () Bool)

(assert (=> bs!1972051 m!8402788))

(assert (=> b!8051517 d!2397337))

(declare-fun bs!1972052 () Bool)

(declare-fun b!8051691 () Bool)

(assert (= bs!1972052 (and b!8051691 b!8051658)))

(declare-fun lambda!473368 () Int)

(assert (=> bs!1972052 (= (= (+!2663 acc!1298 (h!81978 l!14636)) acc!1298) (= lambda!473368 lambda!473360))))

(declare-fun bs!1972053 () Bool)

(assert (= bs!1972053 (and b!8051691 b!8051659)))

(assert (=> bs!1972053 (= (= (+!2663 acc!1298 (h!81978 l!14636)) acc!1298) (= lambda!473368 lambda!473361))))

(assert (=> bs!1972053 (= (= (+!2663 acc!1298 (h!81978 l!14636)) lt!2725612) (= lambda!473368 lambda!473362))))

(declare-fun bs!1972054 () Bool)

(assert (= bs!1972054 (and b!8051691 d!2397319)))

(assert (=> bs!1972054 (= (= (+!2663 acc!1298 (h!81978 l!14636)) lt!2725625) (= lambda!473368 lambda!473363))))

(assert (=> b!8051691 true))

(declare-fun bs!1972055 () Bool)

(declare-fun b!8051692 () Bool)

(assert (= bs!1972055 (and b!8051692 d!2397319)))

(declare-fun lambda!473369 () Int)

(assert (=> bs!1972055 (= (= (+!2663 acc!1298 (h!81978 l!14636)) lt!2725625) (= lambda!473369 lambda!473363))))

(declare-fun bs!1972056 () Bool)

(assert (= bs!1972056 (and b!8051692 b!8051659)))

(assert (=> bs!1972056 (= (= (+!2663 acc!1298 (h!81978 l!14636)) acc!1298) (= lambda!473369 lambda!473361))))

(assert (=> bs!1972056 (= (= (+!2663 acc!1298 (h!81978 l!14636)) lt!2725612) (= lambda!473369 lambda!473362))))

(declare-fun bs!1972057 () Bool)

(assert (= bs!1972057 (and b!8051692 b!8051691)))

(assert (=> bs!1972057 (= lambda!473369 lambda!473368)))

(declare-fun bs!1972058 () Bool)

(assert (= bs!1972058 (and b!8051692 b!8051658)))

(assert (=> bs!1972058 (= (= (+!2663 acc!1298 (h!81978 l!14636)) acc!1298) (= lambda!473369 lambda!473360))))

(assert (=> b!8051692 true))

(declare-fun lt!2725665 () ListMap!7275)

(declare-fun lambda!473370 () Int)

(assert (=> bs!1972055 (= (= lt!2725665 lt!2725625) (= lambda!473370 lambda!473363))))

(assert (=> bs!1972056 (= (= lt!2725665 acc!1298) (= lambda!473370 lambda!473361))))

(assert (=> bs!1972056 (= (= lt!2725665 lt!2725612) (= lambda!473370 lambda!473362))))

(assert (=> bs!1972057 (= (= lt!2725665 (+!2663 acc!1298 (h!81978 l!14636))) (= lambda!473370 lambda!473368))))

(assert (=> bs!1972058 (= (= lt!2725665 acc!1298) (= lambda!473370 lambda!473360))))

(assert (=> b!8051692 (= (= lt!2725665 (+!2663 acc!1298 (h!81978 l!14636))) (= lambda!473370 lambda!473369))))

(assert (=> b!8051692 true))

(declare-fun bs!1972059 () Bool)

(declare-fun d!2397339 () Bool)

(assert (= bs!1972059 (and d!2397339 d!2397319)))

(declare-fun lt!2725678 () ListMap!7275)

(declare-fun lambda!473371 () Int)

(assert (=> bs!1972059 (= (= lt!2725678 lt!2725625) (= lambda!473371 lambda!473363))))

(declare-fun bs!1972060 () Bool)

(assert (= bs!1972060 (and d!2397339 b!8051659)))

(assert (=> bs!1972060 (= (= lt!2725678 acc!1298) (= lambda!473371 lambda!473361))))

(declare-fun bs!1972061 () Bool)

(assert (= bs!1972061 (and d!2397339 b!8051691)))

(assert (=> bs!1972061 (= (= lt!2725678 (+!2663 acc!1298 (h!81978 l!14636))) (= lambda!473371 lambda!473368))))

(declare-fun bs!1972062 () Bool)

(assert (= bs!1972062 (and d!2397339 b!8051658)))

(assert (=> bs!1972062 (= (= lt!2725678 acc!1298) (= lambda!473371 lambda!473360))))

(declare-fun bs!1972063 () Bool)

(assert (= bs!1972063 (and d!2397339 b!8051692)))

(assert (=> bs!1972063 (= (= lt!2725678 (+!2663 acc!1298 (h!81978 l!14636))) (= lambda!473371 lambda!473369))))

(assert (=> bs!1972063 (= (= lt!2725678 lt!2725665) (= lambda!473371 lambda!473370))))

(assert (=> bs!1972060 (= (= lt!2725678 lt!2725612) (= lambda!473371 lambda!473362))))

(assert (=> d!2397339 true))

(declare-fun bm!747017 () Bool)

(declare-fun call!747024 () Unit!171567)

(assert (=> bm!747017 (= call!747024 (lemmaContainsAllItsOwnKeys!1079 (+!2663 acc!1298 (h!81978 l!14636))))))

(declare-fun lt!2725680 () ListMap!7275)

(declare-fun call!747023 () Bool)

(declare-fun c!1475928 () Bool)

(declare-fun bm!747018 () Bool)

(assert (=> bm!747018 (= call!747023 (forall!18496 (ite c!1475928 (toList!11912 (+!2663 acc!1298 (h!81978 l!14636))) (toList!11912 lt!2725680)) (ite c!1475928 lambda!473368 lambda!473370)))))

(declare-fun b!8051688 () Bool)

(declare-fun e!4744395 () Bool)

(assert (=> b!8051688 (= e!4744395 (invariantList!1927 (toList!11912 lt!2725678)))))

(assert (=> d!2397339 e!4744395))

(declare-fun res!3183735 () Bool)

(assert (=> d!2397339 (=> (not res!3183735) (not e!4744395))))

(assert (=> d!2397339 (= res!3183735 (forall!18496 (t!391428 l!14636) lambda!473371))))

(declare-fun e!4744393 () ListMap!7275)

(assert (=> d!2397339 (= lt!2725678 e!4744393)))

(assert (=> d!2397339 (= c!1475928 ((_ is Nil!75530) (t!391428 l!14636)))))

(assert (=> d!2397339 (noDuplicateKeys!2698 (t!391428 l!14636))))

(assert (=> d!2397339 (= (addToMapMapFromBucket!1979 (t!391428 l!14636) (+!2663 acc!1298 (h!81978 l!14636))) lt!2725678)))

(declare-fun b!8051689 () Bool)

(declare-fun res!3183736 () Bool)

(assert (=> b!8051689 (=> (not res!3183736) (not e!4744395))))

(assert (=> b!8051689 (= res!3183736 (forall!18496 (toList!11912 (+!2663 acc!1298 (h!81978 l!14636))) lambda!473371))))

(declare-fun e!4744394 () Bool)

(declare-fun b!8051690 () Bool)

(assert (=> b!8051690 (= e!4744394 (forall!18496 (toList!11912 (+!2663 acc!1298 (h!81978 l!14636))) lambda!473370))))

(assert (=> b!8051691 (= e!4744393 (+!2663 acc!1298 (h!81978 l!14636)))))

(declare-fun lt!2725674 () Unit!171567)

(assert (=> b!8051691 (= lt!2725674 call!747024)))

(assert (=> b!8051691 call!747023))

(declare-fun lt!2725663 () Unit!171567)

(assert (=> b!8051691 (= lt!2725663 lt!2725674)))

(declare-fun call!747022 () Bool)

(assert (=> b!8051691 call!747022))

(declare-fun lt!2725669 () Unit!171567)

(declare-fun Unit!171601 () Unit!171567)

(assert (=> b!8051691 (= lt!2725669 Unit!171601)))

(assert (=> b!8051692 (= e!4744393 lt!2725665)))

(assert (=> b!8051692 (= lt!2725680 (+!2663 (+!2663 acc!1298 (h!81978 l!14636)) (h!81978 (t!391428 l!14636))))))

(assert (=> b!8051692 (= lt!2725665 (addToMapMapFromBucket!1979 (t!391428 (t!391428 l!14636)) (+!2663 (+!2663 acc!1298 (h!81978 l!14636)) (h!81978 (t!391428 l!14636)))))))

(declare-fun lt!2725670 () Unit!171567)

(assert (=> b!8051692 (= lt!2725670 call!747024)))

(assert (=> b!8051692 (forall!18496 (toList!11912 (+!2663 acc!1298 (h!81978 l!14636))) lambda!473369)))

(declare-fun lt!2725666 () Unit!171567)

(assert (=> b!8051692 (= lt!2725666 lt!2725670)))

(assert (=> b!8051692 call!747023))

(declare-fun lt!2725672 () Unit!171567)

(declare-fun Unit!171602 () Unit!171567)

(assert (=> b!8051692 (= lt!2725672 Unit!171602)))

(assert (=> b!8051692 (forall!18496 (t!391428 (t!391428 l!14636)) lambda!473370)))

(declare-fun lt!2725664 () Unit!171567)

(declare-fun Unit!171603 () Unit!171567)

(assert (=> b!8051692 (= lt!2725664 Unit!171603)))

(declare-fun lt!2725677 () Unit!171567)

(declare-fun Unit!171604 () Unit!171567)

(assert (=> b!8051692 (= lt!2725677 Unit!171604)))

(declare-fun lt!2725667 () Unit!171567)

(assert (=> b!8051692 (= lt!2725667 (forallContained!4650 (toList!11912 lt!2725680) lambda!473370 (h!81978 (t!391428 l!14636))))))

(assert (=> b!8051692 (contains!21185 lt!2725680 (_1!38739 (h!81978 (t!391428 l!14636))))))

(declare-fun lt!2725675 () Unit!171567)

(declare-fun Unit!171605 () Unit!171567)

(assert (=> b!8051692 (= lt!2725675 Unit!171605)))

(assert (=> b!8051692 (contains!21185 lt!2725665 (_1!38739 (h!81978 (t!391428 l!14636))))))

(declare-fun lt!2725668 () Unit!171567)

(declare-fun Unit!171606 () Unit!171567)

(assert (=> b!8051692 (= lt!2725668 Unit!171606)))

(assert (=> b!8051692 (forall!18496 (t!391428 l!14636) lambda!473370)))

(declare-fun lt!2725671 () Unit!171567)

(declare-fun Unit!171607 () Unit!171567)

(assert (=> b!8051692 (= lt!2725671 Unit!171607)))

(assert (=> b!8051692 (forall!18496 (toList!11912 lt!2725680) lambda!473370)))

(declare-fun lt!2725673 () Unit!171567)

(declare-fun Unit!171608 () Unit!171567)

(assert (=> b!8051692 (= lt!2725673 Unit!171608)))

(declare-fun lt!2725676 () Unit!171567)

(declare-fun Unit!171609 () Unit!171567)

(assert (=> b!8051692 (= lt!2725676 Unit!171609)))

(declare-fun lt!2725682 () Unit!171567)

(assert (=> b!8051692 (= lt!2725682 (addForallContainsKeyThenBeforeAdding!1077 (+!2663 acc!1298 (h!81978 l!14636)) lt!2725665 (_1!38739 (h!81978 (t!391428 l!14636))) (_2!38739 (h!81978 (t!391428 l!14636)))))))

(assert (=> b!8051692 call!747022))

(declare-fun lt!2725681 () Unit!171567)

(assert (=> b!8051692 (= lt!2725681 lt!2725682)))

(assert (=> b!8051692 (forall!18496 (toList!11912 (+!2663 acc!1298 (h!81978 l!14636))) lambda!473370)))

(declare-fun lt!2725679 () Unit!171567)

(declare-fun Unit!171610 () Unit!171567)

(assert (=> b!8051692 (= lt!2725679 Unit!171610)))

(declare-fun res!3183734 () Bool)

(assert (=> b!8051692 (= res!3183734 (forall!18496 (t!391428 l!14636) lambda!473370))))

(assert (=> b!8051692 (=> (not res!3183734) (not e!4744394))))

(assert (=> b!8051692 e!4744394))

(declare-fun lt!2725662 () Unit!171567)

(declare-fun Unit!171611 () Unit!171567)

(assert (=> b!8051692 (= lt!2725662 Unit!171611)))

(declare-fun bm!747019 () Bool)

(assert (=> bm!747019 (= call!747022 (forall!18496 (toList!11912 (+!2663 acc!1298 (h!81978 l!14636))) (ite c!1475928 lambda!473368 lambda!473370)))))

(assert (= (and d!2397339 c!1475928) b!8051691))

(assert (= (and d!2397339 (not c!1475928)) b!8051692))

(assert (= (and b!8051692 res!3183734) b!8051690))

(assert (= (or b!8051691 b!8051692) bm!747018))

(assert (= (or b!8051691 b!8051692) bm!747019))

(assert (= (or b!8051691 b!8051692) bm!747017))

(assert (= (and d!2397339 res!3183735) b!8051689))

(assert (= (and b!8051689 res!3183736) b!8051688))

(declare-fun m!8402828 () Bool)

(assert (=> b!8051689 m!8402828))

(declare-fun m!8402830 () Bool)

(assert (=> bm!747018 m!8402830))

(declare-fun m!8402832 () Bool)

(assert (=> b!8051692 m!8402832))

(declare-fun m!8402834 () Bool)

(assert (=> b!8051692 m!8402834))

(declare-fun m!8402836 () Bool)

(assert (=> b!8051692 m!8402836))

(declare-fun m!8402838 () Bool)

(assert (=> b!8051692 m!8402838))

(declare-fun m!8402840 () Bool)

(assert (=> b!8051692 m!8402840))

(declare-fun m!8402842 () Bool)

(assert (=> b!8051692 m!8402842))

(declare-fun m!8402844 () Bool)

(assert (=> b!8051692 m!8402844))

(declare-fun m!8402846 () Bool)

(assert (=> b!8051692 m!8402846))

(declare-fun m!8402848 () Bool)

(assert (=> b!8051692 m!8402848))

(declare-fun m!8402850 () Bool)

(assert (=> b!8051692 m!8402850))

(assert (=> b!8051692 m!8402844))

(assert (=> b!8051692 m!8402556))

(assert (=> b!8051692 m!8402848))

(assert (=> b!8051692 m!8402556))

(declare-fun m!8402852 () Bool)

(assert (=> b!8051692 m!8402852))

(declare-fun m!8402854 () Bool)

(assert (=> b!8051688 m!8402854))

(declare-fun m!8402856 () Bool)

(assert (=> bm!747019 m!8402856))

(assert (=> b!8051690 m!8402836))

(assert (=> bm!747017 m!8402556))

(declare-fun m!8402858 () Bool)

(assert (=> bm!747017 m!8402858))

(declare-fun m!8402860 () Bool)

(assert (=> d!2397339 m!8402860))

(assert (=> d!2397339 m!8402564))

(assert (=> b!8051507 d!2397339))

(declare-fun d!2397345 () Bool)

(declare-fun e!4744404 () Bool)

(assert (=> d!2397345 e!4744404))

(declare-fun res!3183743 () Bool)

(assert (=> d!2397345 (=> (not res!3183743) (not e!4744404))))

(declare-fun lt!2725696 () ListMap!7275)

(assert (=> d!2397345 (= res!3183743 (contains!21185 lt!2725696 (_1!38739 (h!81978 l!14636))))))

(declare-fun lt!2725698 () List!75656)

(assert (=> d!2397345 (= lt!2725696 (ListMap!7276 lt!2725698))))

(declare-fun lt!2725695 () Unit!171567)

(declare-fun lt!2725697 () Unit!171567)

(assert (=> d!2397345 (= lt!2725695 lt!2725697)))

(assert (=> d!2397345 (= (getValueByKey!2775 lt!2725698 (_1!38739 (h!81978 l!14636))) (Some!17990 (_2!38739 (h!81978 l!14636))))))

(declare-fun lemmaContainsTupThenGetReturnValue!1269 (List!75656 K!22793 V!23047) Unit!171567)

(assert (=> d!2397345 (= lt!2725697 (lemmaContainsTupThenGetReturnValue!1269 lt!2725698 (_1!38739 (h!81978 l!14636)) (_2!38739 (h!81978 l!14636))))))

(declare-fun insertNoDuplicatedKeys!777 (List!75656 K!22793 V!23047) List!75656)

(assert (=> d!2397345 (= lt!2725698 (insertNoDuplicatedKeys!777 (toList!11912 acc!1298) (_1!38739 (h!81978 l!14636)) (_2!38739 (h!81978 l!14636))))))

(assert (=> d!2397345 (= (+!2663 acc!1298 (h!81978 l!14636)) lt!2725696)))

(declare-fun b!8051705 () Bool)

(declare-fun res!3183744 () Bool)

(assert (=> b!8051705 (=> (not res!3183744) (not e!4744404))))

(assert (=> b!8051705 (= res!3183744 (= (getValueByKey!2775 (toList!11912 lt!2725696) (_1!38739 (h!81978 l!14636))) (Some!17990 (_2!38739 (h!81978 l!14636)))))))

(declare-fun b!8051706 () Bool)

(assert (=> b!8051706 (= e!4744404 (contains!21186 (toList!11912 lt!2725696) (h!81978 l!14636)))))

(assert (= (and d!2397345 res!3183743) b!8051705))

(assert (= (and b!8051705 res!3183744) b!8051706))

(declare-fun m!8402862 () Bool)

(assert (=> d!2397345 m!8402862))

(declare-fun m!8402864 () Bool)

(assert (=> d!2397345 m!8402864))

(declare-fun m!8402866 () Bool)

(assert (=> d!2397345 m!8402866))

(declare-fun m!8402868 () Bool)

(assert (=> d!2397345 m!8402868))

(declare-fun m!8402870 () Bool)

(assert (=> b!8051705 m!8402870))

(declare-fun m!8402872 () Bool)

(assert (=> b!8051706 m!8402872))

(assert (=> b!8051507 d!2397345))

(assert (=> b!8051518 d!2397335))

(declare-fun b!8051707 () Bool)

(declare-fun e!4744406 () List!75657)

(assert (=> b!8051707 (= e!4744406 (keys!30821 lt!2725420))))

(declare-fun bm!747020 () Bool)

(declare-fun call!747025 () Bool)

(assert (=> bm!747020 (= call!747025 (contains!21187 e!4744406 key!6222))))

(declare-fun c!1475930 () Bool)

(declare-fun c!1475931 () Bool)

(assert (=> bm!747020 (= c!1475930 c!1475931)))

(declare-fun b!8051708 () Bool)

(declare-fun e!4744405 () Bool)

(assert (=> b!8051708 (= e!4744405 (not (contains!21187 (keys!30821 lt!2725420) key!6222)))))

(declare-fun d!2397347 () Bool)

(declare-fun e!4744407 () Bool)

(assert (=> d!2397347 e!4744407))

(declare-fun res!3183745 () Bool)

(assert (=> d!2397347 (=> res!3183745 e!4744407)))

(assert (=> d!2397347 (= res!3183745 e!4744405)))

(declare-fun res!3183747 () Bool)

(assert (=> d!2397347 (=> (not res!3183747) (not e!4744405))))

(declare-fun lt!2725702 () Bool)

(assert (=> d!2397347 (= res!3183747 (not lt!2725702))))

(declare-fun lt!2725705 () Bool)

(assert (=> d!2397347 (= lt!2725702 lt!2725705)))

(declare-fun lt!2725700 () Unit!171567)

(declare-fun e!4744410 () Unit!171567)

(assert (=> d!2397347 (= lt!2725700 e!4744410)))

(assert (=> d!2397347 (= c!1475931 lt!2725705)))

(assert (=> d!2397347 (= lt!2725705 (containsKey!4838 (toList!11912 lt!2725420) key!6222))))

(assert (=> d!2397347 (= (contains!21185 lt!2725420 key!6222) lt!2725702)))

(declare-fun b!8051709 () Bool)

(declare-fun e!4744409 () Unit!171567)

(declare-fun Unit!171623 () Unit!171567)

(assert (=> b!8051709 (= e!4744409 Unit!171623)))

(declare-fun b!8051710 () Bool)

(assert (=> b!8051710 (= e!4744410 e!4744409)))

(declare-fun c!1475929 () Bool)

(assert (=> b!8051710 (= c!1475929 call!747025)))

(declare-fun b!8051711 () Bool)

(assert (=> b!8051711 (= e!4744406 (getKeysList!1234 (toList!11912 lt!2725420)))))

(declare-fun b!8051712 () Bool)

(assert (=> b!8051712 false))

(declare-fun lt!2725699 () Unit!171567)

(declare-fun lt!2725704 () Unit!171567)

(assert (=> b!8051712 (= lt!2725699 lt!2725704)))

(assert (=> b!8051712 (containsKey!4838 (toList!11912 lt!2725420) key!6222)))

(assert (=> b!8051712 (= lt!2725704 (lemmaInGetKeysListThenContainsKey!1234 (toList!11912 lt!2725420) key!6222))))

(declare-fun Unit!171624 () Unit!171567)

(assert (=> b!8051712 (= e!4744409 Unit!171624)))

(declare-fun b!8051713 () Bool)

(declare-fun lt!2725703 () Unit!171567)

(assert (=> b!8051713 (= e!4744410 lt!2725703)))

(declare-fun lt!2725701 () Unit!171567)

(assert (=> b!8051713 (= lt!2725701 (lemmaContainsKeyImpliesGetValueByKeyDefined!2546 (toList!11912 lt!2725420) key!6222))))

(assert (=> b!8051713 (isDefined!14524 (getValueByKey!2775 (toList!11912 lt!2725420) key!6222))))

(declare-fun lt!2725706 () Unit!171567)

(assert (=> b!8051713 (= lt!2725706 lt!2725701)))

(assert (=> b!8051713 (= lt!2725703 (lemmaInListThenGetKeysListContains!1229 (toList!11912 lt!2725420) key!6222))))

(assert (=> b!8051713 call!747025))

(declare-fun b!8051714 () Bool)

(declare-fun e!4744408 () Bool)

(assert (=> b!8051714 (= e!4744407 e!4744408)))

(declare-fun res!3183746 () Bool)

(assert (=> b!8051714 (=> (not res!3183746) (not e!4744408))))

(assert (=> b!8051714 (= res!3183746 (isDefined!14524 (getValueByKey!2775 (toList!11912 lt!2725420) key!6222)))))

(declare-fun b!8051715 () Bool)

(assert (=> b!8051715 (= e!4744408 (contains!21187 (keys!30821 lt!2725420) key!6222))))

(assert (= (and d!2397347 c!1475931) b!8051713))

(assert (= (and d!2397347 (not c!1475931)) b!8051710))

(assert (= (and b!8051710 c!1475929) b!8051712))

(assert (= (and b!8051710 (not c!1475929)) b!8051709))

(assert (= (or b!8051713 b!8051710) bm!747020))

(assert (= (and bm!747020 c!1475930) b!8051711))

(assert (= (and bm!747020 (not c!1475930)) b!8051707))

(assert (= (and d!2397347 res!3183747) b!8051708))

(assert (= (and d!2397347 (not res!3183745)) b!8051714))

(assert (= (and b!8051714 res!3183746) b!8051715))

(declare-fun m!8402874 () Bool)

(assert (=> b!8051712 m!8402874))

(declare-fun m!8402876 () Bool)

(assert (=> b!8051712 m!8402876))

(declare-fun m!8402878 () Bool)

(assert (=> b!8051711 m!8402878))

(declare-fun m!8402880 () Bool)

(assert (=> b!8051714 m!8402880))

(assert (=> b!8051714 m!8402880))

(declare-fun m!8402882 () Bool)

(assert (=> b!8051714 m!8402882))

(declare-fun m!8402884 () Bool)

(assert (=> b!8051707 m!8402884))

(declare-fun m!8402886 () Bool)

(assert (=> bm!747020 m!8402886))

(assert (=> d!2397347 m!8402874))

(assert (=> b!8051708 m!8402884))

(assert (=> b!8051708 m!8402884))

(declare-fun m!8402888 () Bool)

(assert (=> b!8051708 m!8402888))

(assert (=> b!8051715 m!8402884))

(assert (=> b!8051715 m!8402884))

(assert (=> b!8051715 m!8402888))

(declare-fun m!8402890 () Bool)

(assert (=> b!8051713 m!8402890))

(assert (=> b!8051713 m!8402880))

(assert (=> b!8051713 m!8402880))

(assert (=> b!8051713 m!8402882))

(declare-fun m!8402892 () Bool)

(assert (=> b!8051713 m!8402892))

(assert (=> b!8051514 d!2397347))

(declare-fun e!4744413 () Bool)

(declare-fun tp!2413668 () Bool)

(declare-fun b!8051720 () Bool)

(assert (=> b!8051720 (= e!4744413 (and tp_is_empty!54867 tp_is_empty!54869 tp!2413668))))

(assert (=> b!8051511 (= tp!2413661 e!4744413)))

(assert (= (and b!8051511 ((_ is Cons!75530) (t!391428 l!14636))) b!8051720))

(declare-fun tp!2413669 () Bool)

(declare-fun e!4744414 () Bool)

(declare-fun b!8051721 () Bool)

(assert (=> b!8051721 (= e!4744414 (and tp_is_empty!54867 tp_is_empty!54869 tp!2413669))))

(assert (=> b!8051515 (= tp!2413660 e!4744414)))

(assert (= (and b!8051515 ((_ is Cons!75530) (toList!11912 acc!1298))) b!8051721))

(check-sat (not bm!747019) (not d!2397313) (not bm!747012) (not d!2397309) (not bm!747020) (not b!8051687) (not b!8051655) (not b!8051712) (not b!8051688) (not bm!747010) (not b!8051566) (not d!2397299) (not b!8051707) (not d!2397347) (not b!8051570) (not b!8051690) (not b!8051578) (not b!8051582) (not d!2397301) (not b!8051713) (not bm!746990) (not b!8051657) (not b!8051715) (not b!8051706) (not d!2397315) (not b!8051541) (not b!8051689) (not b!8051573) (not d!2397345) (not b!8051581) (not b!8051659) tp_is_empty!54869 (not b!8051714) (not b!8051584) (not bm!746989) (not b!8051571) (not b!8051572) (not bm!747011) (not b!8051720) (not b!8051577) (not b!8051656) (not b!8051526) (not b!8051583) (not d!2397337) (not b!8051705) (not b!8051524) (not b!8051692) (not d!2397317) (not b!8051711) (not b!8051525) (not d!2397339) (not bm!747018) (not b!8051527) (not b!8051708) (not b!8051574) (not d!2397319) (not b!8051721) (not b!8051576) tp_is_empty!54867 (not b!8051585) (not bm!747017) (not b!8051567))
(check-sat)
