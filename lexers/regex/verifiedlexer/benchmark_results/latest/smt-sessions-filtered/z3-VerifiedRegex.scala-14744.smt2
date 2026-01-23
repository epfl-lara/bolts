; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!758832 () Bool)

(assert start!758832)

(declare-fun b!8055504 () Bool)

(declare-fun e!4746972 () Bool)

(declare-fun lt!2729397 () Bool)

(assert (=> b!8055504 (= e!4746972 (not lt!2729397))))

(declare-fun b!8055505 () Bool)

(declare-fun res!3186134 () Bool)

(declare-fun e!4746971 () Bool)

(assert (=> b!8055505 (=> (not res!3186134) (not e!4746971))))

(declare-datatypes ((K!22853 0))(
  ( (K!22854 (val!32955 Int)) )
))
(declare-fun key!6222 () K!22853)

(declare-datatypes ((V!23107 0))(
  ( (V!23108 (val!32956 Int)) )
))
(declare-fun value!3131 () V!23107)

(declare-datatypes ((tuple2!70920 0))(
  ( (tuple2!70921 (_1!38763 K!22853) (_2!38763 V!23107)) )
))
(declare-datatypes ((List!75700 0))(
  ( (Nil!75574) (Cons!75574 (h!82022 tuple2!70920) (t!391472 List!75700)) )
))
(declare-datatypes ((ListMap!7323 0))(
  ( (ListMap!7324 (toList!11936 List!75700)) )
))
(declare-fun acc!1298 () ListMap!7323)

(declare-fun apply!14449 (ListMap!7323 K!22853) V!23107)

(assert (=> b!8055505 (= res!3186134 (= (apply!14449 acc!1298 key!6222) value!3131))))

(declare-fun b!8055506 () Bool)

(declare-fun e!4746966 () Bool)

(declare-fun tp!2413889 () Bool)

(assert (=> b!8055506 (= e!4746966 tp!2413889)))

(declare-fun b!8055507 () Bool)

(declare-fun res!3186136 () Bool)

(declare-fun e!4746968 () Bool)

(assert (=> b!8055507 (=> (not res!3186136) (not e!4746968))))

(declare-fun l!14636 () List!75700)

(get-info :version)

(assert (=> b!8055507 (= res!3186136 (not ((_ is Nil!75574) l!14636)))))

(declare-fun res!3186138 () Bool)

(declare-fun e!4746969 () Bool)

(assert (=> start!758832 (=> (not res!3186138) (not e!4746969))))

(declare-fun noDuplicateKeys!2722 (List!75700) Bool)

(assert (=> start!758832 (= res!3186138 (noDuplicateKeys!2722 l!14636))))

(assert (=> start!758832 e!4746969))

(declare-fun e!4746967 () Bool)

(assert (=> start!758832 e!4746967))

(declare-fun inv!97342 (ListMap!7323) Bool)

(assert (=> start!758832 (and (inv!97342 acc!1298) e!4746966)))

(declare-fun tp_is_empty!54963 () Bool)

(assert (=> start!758832 tp_is_empty!54963))

(declare-fun tp_is_empty!54965 () Bool)

(assert (=> start!758832 tp_is_empty!54965))

(declare-fun b!8055508 () Bool)

(declare-fun e!4746965 () Bool)

(declare-fun e!4746964 () Bool)

(assert (=> b!8055508 (= e!4746965 (not e!4746964))))

(declare-fun res!3186128 () Bool)

(assert (=> b!8055508 (=> res!3186128 e!4746964)))

(assert (=> b!8055508 (= res!3186128 (not (noDuplicateKeys!2722 (t!391472 l!14636))))))

(declare-fun lt!2729395 () ListMap!7323)

(declare-fun contains!21253 (ListMap!7323 K!22853) Bool)

(assert (=> b!8055508 (not (contains!21253 lt!2729395 key!6222))))

(declare-datatypes ((Unit!172302 0))(
  ( (Unit!172303) )
))
(declare-fun lt!2729398 () Unit!172302)

(declare-fun addStillNotContains!15 (ListMap!7323 K!22853 V!23107 K!22853) Unit!172302)

(assert (=> b!8055508 (= lt!2729398 (addStillNotContains!15 acc!1298 (_1!38763 (h!82022 l!14636)) (_2!38763 (h!82022 l!14636)) key!6222))))

(declare-fun b!8055509 () Bool)

(assert (=> b!8055509 (= e!4746968 e!4746965)))

(declare-fun res!3186129 () Bool)

(assert (=> b!8055509 (=> (not res!3186129) (not e!4746965))))

(assert (=> b!8055509 (= res!3186129 (and (not (= (_1!38763 (h!82022 l!14636)) key!6222)) (not lt!2729397)))))

(declare-fun lt!2729396 () ListMap!7323)

(declare-fun addToMapMapFromBucket!2003 (List!75700 ListMap!7323) ListMap!7323)

(assert (=> b!8055509 (= lt!2729396 (addToMapMapFromBucket!2003 (t!391472 l!14636) lt!2729395))))

(declare-fun +!2687 (ListMap!7323 tuple2!70920) ListMap!7323)

(assert (=> b!8055509 (= lt!2729395 (+!2687 acc!1298 (h!82022 l!14636)))))

(declare-fun b!8055510 () Bool)

(assert (=> b!8055510 (= e!4746964 (contains!21253 lt!2729396 key!6222))))

(declare-fun b!8055511 () Bool)

(assert (=> b!8055511 (= e!4746969 e!4746968)))

(declare-fun res!3186135 () Bool)

(assert (=> b!8055511 (=> (not res!3186135) (not e!4746968))))

(declare-fun e!4746970 () Bool)

(assert (=> b!8055511 (= res!3186135 e!4746970)))

(declare-fun res!3186131 () Bool)

(assert (=> b!8055511 (=> res!3186131 e!4746970)))

(assert (=> b!8055511 (= res!3186131 e!4746971)))

(declare-fun res!3186132 () Bool)

(assert (=> b!8055511 (=> (not res!3186132) (not e!4746971))))

(assert (=> b!8055511 (= res!3186132 lt!2729397)))

(assert (=> b!8055511 (= lt!2729397 (contains!21253 acc!1298 key!6222))))

(declare-fun b!8055512 () Bool)

(declare-fun tp!2413888 () Bool)

(assert (=> b!8055512 (= e!4746967 (and tp_is_empty!54963 tp_is_empty!54965 tp!2413888))))

(declare-fun b!8055513 () Bool)

(declare-fun containsKey!4881 (List!75700 K!22853) Bool)

(assert (=> b!8055513 (= e!4746971 (not (containsKey!4881 l!14636 key!6222)))))

(declare-fun b!8055514 () Bool)

(assert (=> b!8055514 (= e!4746970 e!4746972)))

(declare-fun res!3186133 () Bool)

(assert (=> b!8055514 (=> (not res!3186133) (not e!4746972))))

(assert (=> b!8055514 (= res!3186133 (containsKey!4881 l!14636 key!6222))))

(declare-fun b!8055515 () Bool)

(declare-fun res!3186137 () Bool)

(assert (=> b!8055515 (=> (not res!3186137) (not e!4746965))))

(declare-fun contains!21254 (List!75700 tuple2!70920) Bool)

(assert (=> b!8055515 (= res!3186137 (contains!21254 (t!391472 l!14636) (tuple2!70921 key!6222 value!3131)))))

(declare-fun b!8055516 () Bool)

(declare-fun res!3186130 () Bool)

(assert (=> b!8055516 (=> (not res!3186130) (not e!4746969))))

(assert (=> b!8055516 (= res!3186130 (contains!21253 (addToMapMapFromBucket!2003 l!14636 acc!1298) key!6222))))

(declare-fun b!8055517 () Bool)

(declare-fun res!3186139 () Bool)

(assert (=> b!8055517 (=> (not res!3186139) (not e!4746972))))

(assert (=> b!8055517 (= res!3186139 (contains!21254 l!14636 (tuple2!70921 key!6222 value!3131)))))

(assert (= (and start!758832 res!3186138) b!8055516))

(assert (= (and b!8055516 res!3186130) b!8055511))

(assert (= (and b!8055511 res!3186132) b!8055505))

(assert (= (and b!8055505 res!3186134) b!8055513))

(assert (= (and b!8055511 (not res!3186131)) b!8055514))

(assert (= (and b!8055514 res!3186133) b!8055517))

(assert (= (and b!8055517 res!3186139) b!8055504))

(assert (= (and b!8055511 res!3186135) b!8055507))

(assert (= (and b!8055507 res!3186136) b!8055509))

(assert (= (and b!8055509 res!3186129) b!8055515))

(assert (= (and b!8055515 res!3186137) b!8055508))

(assert (= (and b!8055508 (not res!3186128)) b!8055510))

(assert (= (and start!758832 ((_ is Cons!75574) l!14636)) b!8055512))

(assert (= start!758832 b!8055506))

(declare-fun m!8408340 () Bool)

(assert (=> b!8055516 m!8408340))

(assert (=> b!8055516 m!8408340))

(declare-fun m!8408342 () Bool)

(assert (=> b!8055516 m!8408342))

(declare-fun m!8408344 () Bool)

(assert (=> start!758832 m!8408344))

(declare-fun m!8408346 () Bool)

(assert (=> start!758832 m!8408346))

(declare-fun m!8408348 () Bool)

(assert (=> b!8055508 m!8408348))

(declare-fun m!8408350 () Bool)

(assert (=> b!8055508 m!8408350))

(declare-fun m!8408352 () Bool)

(assert (=> b!8055508 m!8408352))

(declare-fun m!8408354 () Bool)

(assert (=> b!8055515 m!8408354))

(declare-fun m!8408356 () Bool)

(assert (=> b!8055509 m!8408356))

(declare-fun m!8408358 () Bool)

(assert (=> b!8055509 m!8408358))

(declare-fun m!8408360 () Bool)

(assert (=> b!8055514 m!8408360))

(declare-fun m!8408362 () Bool)

(assert (=> b!8055511 m!8408362))

(declare-fun m!8408364 () Bool)

(assert (=> b!8055505 m!8408364))

(declare-fun m!8408366 () Bool)

(assert (=> b!8055510 m!8408366))

(assert (=> b!8055513 m!8408360))

(declare-fun m!8408368 () Bool)

(assert (=> b!8055517 m!8408368))

(check-sat (not b!8055517) (not b!8055516) (not b!8055511) (not b!8055515) (not b!8055510) (not b!8055513) (not b!8055505) (not b!8055512) (not start!758832) (not b!8055506) (not b!8055514) tp_is_empty!54965 (not b!8055508) tp_is_empty!54963 (not b!8055509))
(check-sat)
(get-model)

(declare-fun b!8055575 () Bool)

(declare-datatypes ((List!75702 0))(
  ( (Nil!75576) (Cons!75576 (h!82024 K!22853) (t!391474 List!75702)) )
))
(declare-fun e!4747016 () List!75702)

(declare-fun getKeysList!1255 (List!75700) List!75702)

(assert (=> b!8055575 (= e!4747016 (getKeysList!1255 (toList!11936 lt!2729396)))))

(declare-fun b!8055576 () Bool)

(assert (=> b!8055576 false))

(declare-fun lt!2729445 () Unit!172302)

(declare-fun lt!2729443 () Unit!172302)

(assert (=> b!8055576 (= lt!2729445 lt!2729443)))

(declare-fun containsKey!4883 (List!75700 K!22853) Bool)

(assert (=> b!8055576 (containsKey!4883 (toList!11936 lt!2729396) key!6222)))

(declare-fun lemmaInGetKeysListThenContainsKey!1255 (List!75700 K!22853) Unit!172302)

(assert (=> b!8055576 (= lt!2729443 (lemmaInGetKeysListThenContainsKey!1255 (toList!11936 lt!2729396) key!6222))))

(declare-fun e!4747019 () Unit!172302)

(declare-fun Unit!172307 () Unit!172302)

(assert (=> b!8055576 (= e!4747019 Unit!172307)))

(declare-fun b!8055577 () Bool)

(declare-fun Unit!172308 () Unit!172302)

(assert (=> b!8055577 (= e!4747019 Unit!172308)))

(declare-fun b!8055578 () Bool)

(declare-fun e!4747018 () Unit!172302)

(assert (=> b!8055578 (= e!4747018 e!4747019)))

(declare-fun c!1476487 () Bool)

(declare-fun call!747397 () Bool)

(assert (=> b!8055578 (= c!1476487 call!747397)))

(declare-fun b!8055579 () Bool)

(declare-fun e!4747017 () Bool)

(declare-fun contains!21256 (List!75702 K!22853) Bool)

(declare-fun keys!30866 (ListMap!7323) List!75702)

(assert (=> b!8055579 (= e!4747017 (contains!21256 (keys!30866 lt!2729396) key!6222))))

(declare-fun b!8055580 () Bool)

(declare-fun lt!2729440 () Unit!172302)

(assert (=> b!8055580 (= e!4747018 lt!2729440)))

(declare-fun lt!2729439 () Unit!172302)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2567 (List!75700 K!22853) Unit!172302)

(assert (=> b!8055580 (= lt!2729439 (lemmaContainsKeyImpliesGetValueByKeyDefined!2567 (toList!11936 lt!2729396) key!6222))))

(declare-datatypes ((Option!18012 0))(
  ( (None!18011) (Some!18011 (v!55354 V!23107)) )
))
(declare-fun isDefined!14545 (Option!18012) Bool)

(declare-fun getValueByKey!2796 (List!75700 K!22853) Option!18012)

(assert (=> b!8055580 (isDefined!14545 (getValueByKey!2796 (toList!11936 lt!2729396) key!6222))))

(declare-fun lt!2729441 () Unit!172302)

(assert (=> b!8055580 (= lt!2729441 lt!2729439)))

(declare-fun lemmaInListThenGetKeysListContains!1250 (List!75700 K!22853) Unit!172302)

(assert (=> b!8055580 (= lt!2729440 (lemmaInListThenGetKeysListContains!1250 (toList!11936 lt!2729396) key!6222))))

(assert (=> b!8055580 call!747397))

(declare-fun b!8055581 () Bool)

(declare-fun e!4747020 () Bool)

(assert (=> b!8055581 (= e!4747020 e!4747017)))

(declare-fun res!3186169 () Bool)

(assert (=> b!8055581 (=> (not res!3186169) (not e!4747017))))

(assert (=> b!8055581 (= res!3186169 (isDefined!14545 (getValueByKey!2796 (toList!11936 lt!2729396) key!6222)))))

(declare-fun b!8055583 () Bool)

(declare-fun e!4747015 () Bool)

(assert (=> b!8055583 (= e!4747015 (not (contains!21256 (keys!30866 lt!2729396) key!6222)))))

(declare-fun bm!747392 () Bool)

(assert (=> bm!747392 (= call!747397 (contains!21256 e!4747016 key!6222))))

(declare-fun c!1476488 () Bool)

(declare-fun c!1476489 () Bool)

(assert (=> bm!747392 (= c!1476488 c!1476489)))

(declare-fun d!2398451 () Bool)

(assert (=> d!2398451 e!4747020))

(declare-fun res!3186167 () Bool)

(assert (=> d!2398451 (=> res!3186167 e!4747020)))

(assert (=> d!2398451 (= res!3186167 e!4747015)))

(declare-fun res!3186168 () Bool)

(assert (=> d!2398451 (=> (not res!3186168) (not e!4747015))))

(declare-fun lt!2729446 () Bool)

(assert (=> d!2398451 (= res!3186168 (not lt!2729446))))

(declare-fun lt!2729444 () Bool)

(assert (=> d!2398451 (= lt!2729446 lt!2729444)))

(declare-fun lt!2729442 () Unit!172302)

(assert (=> d!2398451 (= lt!2729442 e!4747018)))

(assert (=> d!2398451 (= c!1476489 lt!2729444)))

(assert (=> d!2398451 (= lt!2729444 (containsKey!4883 (toList!11936 lt!2729396) key!6222))))

(assert (=> d!2398451 (= (contains!21253 lt!2729396 key!6222) lt!2729446)))

(declare-fun b!8055582 () Bool)

(assert (=> b!8055582 (= e!4747016 (keys!30866 lt!2729396))))

(assert (= (and d!2398451 c!1476489) b!8055580))

(assert (= (and d!2398451 (not c!1476489)) b!8055578))

(assert (= (and b!8055578 c!1476487) b!8055576))

(assert (= (and b!8055578 (not c!1476487)) b!8055577))

(assert (= (or b!8055580 b!8055578) bm!747392))

(assert (= (and bm!747392 c!1476488) b!8055575))

(assert (= (and bm!747392 (not c!1476488)) b!8055582))

(assert (= (and d!2398451 res!3186168) b!8055583))

(assert (= (and d!2398451 (not res!3186167)) b!8055581))

(assert (= (and b!8055581 res!3186169) b!8055579))

(declare-fun m!8408396 () Bool)

(assert (=> bm!747392 m!8408396))

(declare-fun m!8408398 () Bool)

(assert (=> b!8055582 m!8408398))

(assert (=> b!8055583 m!8408398))

(assert (=> b!8055583 m!8408398))

(declare-fun m!8408400 () Bool)

(assert (=> b!8055583 m!8408400))

(declare-fun m!8408402 () Bool)

(assert (=> b!8055580 m!8408402))

(declare-fun m!8408404 () Bool)

(assert (=> b!8055580 m!8408404))

(assert (=> b!8055580 m!8408404))

(declare-fun m!8408406 () Bool)

(assert (=> b!8055580 m!8408406))

(declare-fun m!8408408 () Bool)

(assert (=> b!8055580 m!8408408))

(declare-fun m!8408410 () Bool)

(assert (=> b!8055576 m!8408410))

(declare-fun m!8408412 () Bool)

(assert (=> b!8055576 m!8408412))

(assert (=> d!2398451 m!8408410))

(assert (=> b!8055581 m!8408404))

(assert (=> b!8055581 m!8408404))

(assert (=> b!8055581 m!8408406))

(assert (=> b!8055579 m!8408398))

(assert (=> b!8055579 m!8408398))

(assert (=> b!8055579 m!8408400))

(declare-fun m!8408414 () Bool)

(assert (=> b!8055575 m!8408414))

(assert (=> b!8055510 d!2398451))

(declare-fun b!8055584 () Bool)

(declare-fun e!4747022 () List!75702)

(assert (=> b!8055584 (= e!4747022 (getKeysList!1255 (toList!11936 acc!1298)))))

(declare-fun b!8055585 () Bool)

(assert (=> b!8055585 false))

(declare-fun lt!2729453 () Unit!172302)

(declare-fun lt!2729451 () Unit!172302)

(assert (=> b!8055585 (= lt!2729453 lt!2729451)))

(assert (=> b!8055585 (containsKey!4883 (toList!11936 acc!1298) key!6222)))

(assert (=> b!8055585 (= lt!2729451 (lemmaInGetKeysListThenContainsKey!1255 (toList!11936 acc!1298) key!6222))))

(declare-fun e!4747025 () Unit!172302)

(declare-fun Unit!172311 () Unit!172302)

(assert (=> b!8055585 (= e!4747025 Unit!172311)))

(declare-fun b!8055586 () Bool)

(declare-fun Unit!172312 () Unit!172302)

(assert (=> b!8055586 (= e!4747025 Unit!172312)))

(declare-fun b!8055587 () Bool)

(declare-fun e!4747024 () Unit!172302)

(assert (=> b!8055587 (= e!4747024 e!4747025)))

(declare-fun c!1476490 () Bool)

(declare-fun call!747398 () Bool)

(assert (=> b!8055587 (= c!1476490 call!747398)))

(declare-fun b!8055588 () Bool)

(declare-fun e!4747023 () Bool)

(assert (=> b!8055588 (= e!4747023 (contains!21256 (keys!30866 acc!1298) key!6222))))

(declare-fun b!8055589 () Bool)

(declare-fun lt!2729448 () Unit!172302)

(assert (=> b!8055589 (= e!4747024 lt!2729448)))

(declare-fun lt!2729447 () Unit!172302)

(assert (=> b!8055589 (= lt!2729447 (lemmaContainsKeyImpliesGetValueByKeyDefined!2567 (toList!11936 acc!1298) key!6222))))

(assert (=> b!8055589 (isDefined!14545 (getValueByKey!2796 (toList!11936 acc!1298) key!6222))))

(declare-fun lt!2729449 () Unit!172302)

(assert (=> b!8055589 (= lt!2729449 lt!2729447)))

(assert (=> b!8055589 (= lt!2729448 (lemmaInListThenGetKeysListContains!1250 (toList!11936 acc!1298) key!6222))))

(assert (=> b!8055589 call!747398))

(declare-fun b!8055590 () Bool)

(declare-fun e!4747026 () Bool)

(assert (=> b!8055590 (= e!4747026 e!4747023)))

(declare-fun res!3186172 () Bool)

(assert (=> b!8055590 (=> (not res!3186172) (not e!4747023))))

(assert (=> b!8055590 (= res!3186172 (isDefined!14545 (getValueByKey!2796 (toList!11936 acc!1298) key!6222)))))

(declare-fun b!8055592 () Bool)

(declare-fun e!4747021 () Bool)

(assert (=> b!8055592 (= e!4747021 (not (contains!21256 (keys!30866 acc!1298) key!6222)))))

(declare-fun bm!747393 () Bool)

(assert (=> bm!747393 (= call!747398 (contains!21256 e!4747022 key!6222))))

(declare-fun c!1476491 () Bool)

(declare-fun c!1476492 () Bool)

(assert (=> bm!747393 (= c!1476491 c!1476492)))

(declare-fun d!2398459 () Bool)

(assert (=> d!2398459 e!4747026))

(declare-fun res!3186170 () Bool)

(assert (=> d!2398459 (=> res!3186170 e!4747026)))

(assert (=> d!2398459 (= res!3186170 e!4747021)))

(declare-fun res!3186171 () Bool)

(assert (=> d!2398459 (=> (not res!3186171) (not e!4747021))))

(declare-fun lt!2729454 () Bool)

(assert (=> d!2398459 (= res!3186171 (not lt!2729454))))

(declare-fun lt!2729452 () Bool)

(assert (=> d!2398459 (= lt!2729454 lt!2729452)))

(declare-fun lt!2729450 () Unit!172302)

(assert (=> d!2398459 (= lt!2729450 e!4747024)))

(assert (=> d!2398459 (= c!1476492 lt!2729452)))

(assert (=> d!2398459 (= lt!2729452 (containsKey!4883 (toList!11936 acc!1298) key!6222))))

(assert (=> d!2398459 (= (contains!21253 acc!1298 key!6222) lt!2729454)))

(declare-fun b!8055591 () Bool)

(assert (=> b!8055591 (= e!4747022 (keys!30866 acc!1298))))

(assert (= (and d!2398459 c!1476492) b!8055589))

(assert (= (and d!2398459 (not c!1476492)) b!8055587))

(assert (= (and b!8055587 c!1476490) b!8055585))

(assert (= (and b!8055587 (not c!1476490)) b!8055586))

(assert (= (or b!8055589 b!8055587) bm!747393))

(assert (= (and bm!747393 c!1476491) b!8055584))

(assert (= (and bm!747393 (not c!1476491)) b!8055591))

(assert (= (and d!2398459 res!3186171) b!8055592))

(assert (= (and d!2398459 (not res!3186170)) b!8055590))

(assert (= (and b!8055590 res!3186172) b!8055588))

(declare-fun m!8408416 () Bool)

(assert (=> bm!747393 m!8408416))

(declare-fun m!8408418 () Bool)

(assert (=> b!8055591 m!8408418))

(assert (=> b!8055592 m!8408418))

(assert (=> b!8055592 m!8408418))

(declare-fun m!8408420 () Bool)

(assert (=> b!8055592 m!8408420))

(declare-fun m!8408422 () Bool)

(assert (=> b!8055589 m!8408422))

(declare-fun m!8408424 () Bool)

(assert (=> b!8055589 m!8408424))

(assert (=> b!8055589 m!8408424))

(declare-fun m!8408426 () Bool)

(assert (=> b!8055589 m!8408426))

(declare-fun m!8408428 () Bool)

(assert (=> b!8055589 m!8408428))

(declare-fun m!8408430 () Bool)

(assert (=> b!8055585 m!8408430))

(declare-fun m!8408432 () Bool)

(assert (=> b!8055585 m!8408432))

(assert (=> d!2398459 m!8408430))

(assert (=> b!8055590 m!8408424))

(assert (=> b!8055590 m!8408424))

(assert (=> b!8055590 m!8408426))

(assert (=> b!8055588 m!8408418))

(assert (=> b!8055588 m!8408418))

(assert (=> b!8055588 m!8408420))

(declare-fun m!8408434 () Bool)

(assert (=> b!8055584 m!8408434))

(assert (=> b!8055511 d!2398459))

(declare-fun b!8055645 () Bool)

(assert (=> b!8055645 true))

(declare-fun bs!1973047 () Bool)

(declare-fun b!8055646 () Bool)

(assert (= bs!1973047 (and b!8055646 b!8055645)))

(declare-fun lambda!474193 () Int)

(declare-fun lambda!474192 () Int)

(assert (=> bs!1973047 (= lambda!474193 lambda!474192)))

(assert (=> b!8055646 true))

(declare-fun lambda!474194 () Int)

(declare-fun lt!2729610 () ListMap!7323)

(assert (=> bs!1973047 (= (= lt!2729610 lt!2729395) (= lambda!474194 lambda!474192))))

(assert (=> b!8055646 (= (= lt!2729610 lt!2729395) (= lambda!474194 lambda!474193))))

(assert (=> b!8055646 true))

(declare-fun bs!1973048 () Bool)

(declare-fun d!2398461 () Bool)

(assert (= bs!1973048 (and d!2398461 b!8055645)))

(declare-fun lt!2729619 () ListMap!7323)

(declare-fun lambda!474195 () Int)

(assert (=> bs!1973048 (= (= lt!2729619 lt!2729395) (= lambda!474195 lambda!474192))))

(declare-fun bs!1973049 () Bool)

(assert (= bs!1973049 (and d!2398461 b!8055646)))

(assert (=> bs!1973049 (= (= lt!2729619 lt!2729395) (= lambda!474195 lambda!474193))))

(assert (=> bs!1973049 (= (= lt!2729619 lt!2729610) (= lambda!474195 lambda!474194))))

(assert (=> d!2398461 true))

(declare-fun c!1476502 () Bool)

(declare-fun bm!747413 () Bool)

(declare-fun call!747418 () Bool)

(declare-fun forall!18518 (List!75700 Int) Bool)

(assert (=> bm!747413 (= call!747418 (forall!18518 (toList!11936 lt!2729395) (ite c!1476502 lambda!474192 lambda!474194)))))

(declare-fun bm!747414 () Bool)

(declare-fun call!747419 () Unit!172302)

(declare-fun lemmaContainsAllItsOwnKeys!1099 (ListMap!7323) Unit!172302)

(assert (=> bm!747414 (= call!747419 (lemmaContainsAllItsOwnKeys!1099 lt!2729395))))

(declare-fun b!8055642 () Bool)

(declare-fun e!4747057 () Bool)

(assert (=> b!8055642 (= e!4747057 call!747418)))

(declare-fun b!8055643 () Bool)

(declare-fun res!3186203 () Bool)

(declare-fun e!4747058 () Bool)

(assert (=> b!8055643 (=> (not res!3186203) (not e!4747058))))

(assert (=> b!8055643 (= res!3186203 (forall!18518 (toList!11936 lt!2729395) lambda!474195))))

(assert (=> d!2398461 e!4747058))

(declare-fun res!3186201 () Bool)

(assert (=> d!2398461 (=> (not res!3186201) (not e!4747058))))

(assert (=> d!2398461 (= res!3186201 (forall!18518 (t!391472 l!14636) lambda!474195))))

(declare-fun e!4747056 () ListMap!7323)

(assert (=> d!2398461 (= lt!2729619 e!4747056)))

(assert (=> d!2398461 (= c!1476502 ((_ is Nil!75574) (t!391472 l!14636)))))

(assert (=> d!2398461 (noDuplicateKeys!2722 (t!391472 l!14636))))

(assert (=> d!2398461 (= (addToMapMapFromBucket!2003 (t!391472 l!14636) lt!2729395) lt!2729619)))

(declare-fun b!8055644 () Bool)

(declare-fun invariantList!1947 (List!75700) Bool)

(assert (=> b!8055644 (= e!4747058 (invariantList!1947 (toList!11936 lt!2729619)))))

(assert (=> b!8055645 (= e!4747056 lt!2729395)))

(declare-fun lt!2729618 () Unit!172302)

(assert (=> b!8055645 (= lt!2729618 call!747419)))

(assert (=> b!8055645 call!747418))

(declare-fun lt!2729604 () Unit!172302)

(assert (=> b!8055645 (= lt!2729604 lt!2729618)))

(declare-fun call!747420 () Bool)

(assert (=> b!8055645 call!747420))

(declare-fun lt!2729608 () Unit!172302)

(declare-fun Unit!172323 () Unit!172302)

(assert (=> b!8055645 (= lt!2729608 Unit!172323)))

(declare-fun bm!747415 () Bool)

(declare-fun lt!2729617 () ListMap!7323)

(assert (=> bm!747415 (= call!747420 (forall!18518 (ite c!1476502 (toList!11936 lt!2729395) (toList!11936 lt!2729617)) (ite c!1476502 lambda!474192 lambda!474194)))))

(assert (=> b!8055646 (= e!4747056 lt!2729610)))

(assert (=> b!8055646 (= lt!2729617 (+!2687 lt!2729395 (h!82022 (t!391472 l!14636))))))

(assert (=> b!8055646 (= lt!2729610 (addToMapMapFromBucket!2003 (t!391472 (t!391472 l!14636)) (+!2687 lt!2729395 (h!82022 (t!391472 l!14636)))))))

(declare-fun lt!2729601 () Unit!172302)

(assert (=> b!8055646 (= lt!2729601 call!747419)))

(assert (=> b!8055646 (forall!18518 (toList!11936 lt!2729395) lambda!474193)))

(declare-fun lt!2729616 () Unit!172302)

(assert (=> b!8055646 (= lt!2729616 lt!2729601)))

(assert (=> b!8055646 call!747420))

(declare-fun lt!2729602 () Unit!172302)

(declare-fun Unit!172324 () Unit!172302)

(assert (=> b!8055646 (= lt!2729602 Unit!172324)))

(assert (=> b!8055646 (forall!18518 (t!391472 (t!391472 l!14636)) lambda!474194)))

(declare-fun lt!2729606 () Unit!172302)

(declare-fun Unit!172325 () Unit!172302)

(assert (=> b!8055646 (= lt!2729606 Unit!172325)))

(declare-fun lt!2729620 () Unit!172302)

(declare-fun Unit!172326 () Unit!172302)

(assert (=> b!8055646 (= lt!2729620 Unit!172326)))

(declare-fun lt!2729615 () Unit!172302)

(declare-fun forallContained!4672 (List!75700 Int tuple2!70920) Unit!172302)

(assert (=> b!8055646 (= lt!2729615 (forallContained!4672 (toList!11936 lt!2729617) lambda!474194 (h!82022 (t!391472 l!14636))))))

(assert (=> b!8055646 (contains!21253 lt!2729617 (_1!38763 (h!82022 (t!391472 l!14636))))))

(declare-fun lt!2729612 () Unit!172302)

(declare-fun Unit!172327 () Unit!172302)

(assert (=> b!8055646 (= lt!2729612 Unit!172327)))

(assert (=> b!8055646 (contains!21253 lt!2729610 (_1!38763 (h!82022 (t!391472 l!14636))))))

(declare-fun lt!2729609 () Unit!172302)

(declare-fun Unit!172328 () Unit!172302)

(assert (=> b!8055646 (= lt!2729609 Unit!172328)))

(assert (=> b!8055646 (forall!18518 (t!391472 l!14636) lambda!474194)))

(declare-fun lt!2729614 () Unit!172302)

(declare-fun Unit!172329 () Unit!172302)

(assert (=> b!8055646 (= lt!2729614 Unit!172329)))

(assert (=> b!8055646 (forall!18518 (toList!11936 lt!2729617) lambda!474194)))

(declare-fun lt!2729611 () Unit!172302)

(declare-fun Unit!172330 () Unit!172302)

(assert (=> b!8055646 (= lt!2729611 Unit!172330)))

(declare-fun lt!2729603 () Unit!172302)

(declare-fun Unit!172331 () Unit!172302)

(assert (=> b!8055646 (= lt!2729603 Unit!172331)))

(declare-fun lt!2729613 () Unit!172302)

(declare-fun addForallContainsKeyThenBeforeAdding!1097 (ListMap!7323 ListMap!7323 K!22853 V!23107) Unit!172302)

(assert (=> b!8055646 (= lt!2729613 (addForallContainsKeyThenBeforeAdding!1097 lt!2729395 lt!2729610 (_1!38763 (h!82022 (t!391472 l!14636))) (_2!38763 (h!82022 (t!391472 l!14636)))))))

(assert (=> b!8055646 (forall!18518 (toList!11936 lt!2729395) lambda!474194)))

(declare-fun lt!2729600 () Unit!172302)

(assert (=> b!8055646 (= lt!2729600 lt!2729613)))

(assert (=> b!8055646 (forall!18518 (toList!11936 lt!2729395) lambda!474194)))

(declare-fun lt!2729605 () Unit!172302)

(declare-fun Unit!172332 () Unit!172302)

(assert (=> b!8055646 (= lt!2729605 Unit!172332)))

(declare-fun res!3186202 () Bool)

(assert (=> b!8055646 (= res!3186202 (forall!18518 (t!391472 l!14636) lambda!474194))))

(assert (=> b!8055646 (=> (not res!3186202) (not e!4747057))))

(assert (=> b!8055646 e!4747057))

(declare-fun lt!2729607 () Unit!172302)

(declare-fun Unit!172333 () Unit!172302)

(assert (=> b!8055646 (= lt!2729607 Unit!172333)))

(assert (= (and d!2398461 c!1476502) b!8055645))

(assert (= (and d!2398461 (not c!1476502)) b!8055646))

(assert (= (and b!8055646 res!3186202) b!8055642))

(assert (= (or b!8055645 b!8055646) bm!747415))

(assert (= (or b!8055645 b!8055642) bm!747413))

(assert (= (or b!8055645 b!8055646) bm!747414))

(assert (= (and d!2398461 res!3186201) b!8055643))

(assert (= (and b!8055643 res!3186203) b!8055644))

(declare-fun m!8408564 () Bool)

(assert (=> d!2398461 m!8408564))

(assert (=> d!2398461 m!8408348))

(declare-fun m!8408566 () Bool)

(assert (=> bm!747414 m!8408566))

(declare-fun m!8408568 () Bool)

(assert (=> b!8055646 m!8408568))

(declare-fun m!8408570 () Bool)

(assert (=> b!8055646 m!8408570))

(declare-fun m!8408572 () Bool)

(assert (=> b!8055646 m!8408572))

(declare-fun m!8408574 () Bool)

(assert (=> b!8055646 m!8408574))

(declare-fun m!8408576 () Bool)

(assert (=> b!8055646 m!8408576))

(declare-fun m!8408578 () Bool)

(assert (=> b!8055646 m!8408578))

(declare-fun m!8408580 () Bool)

(assert (=> b!8055646 m!8408580))

(assert (=> b!8055646 m!8408570))

(declare-fun m!8408582 () Bool)

(assert (=> b!8055646 m!8408582))

(assert (=> b!8055646 m!8408578))

(declare-fun m!8408584 () Bool)

(assert (=> b!8055646 m!8408584))

(declare-fun m!8408586 () Bool)

(assert (=> b!8055646 m!8408586))

(assert (=> b!8055646 m!8408572))

(declare-fun m!8408588 () Bool)

(assert (=> b!8055646 m!8408588))

(declare-fun m!8408590 () Bool)

(assert (=> bm!747413 m!8408590))

(declare-fun m!8408592 () Bool)

(assert (=> bm!747415 m!8408592))

(declare-fun m!8408594 () Bool)

(assert (=> b!8055644 m!8408594))

(declare-fun m!8408596 () Bool)

(assert (=> b!8055643 m!8408596))

(assert (=> b!8055509 d!2398461))

(declare-fun d!2398477 () Bool)

(declare-fun e!4747088 () Bool)

(assert (=> d!2398477 e!4747088))

(declare-fun res!3186226 () Bool)

(assert (=> d!2398477 (=> (not res!3186226) (not e!4747088))))

(declare-fun lt!2729653 () ListMap!7323)

(assert (=> d!2398477 (= res!3186226 (contains!21253 lt!2729653 (_1!38763 (h!82022 l!14636))))))

(declare-fun lt!2729655 () List!75700)

(assert (=> d!2398477 (= lt!2729653 (ListMap!7324 lt!2729655))))

(declare-fun lt!2729654 () Unit!172302)

(declare-fun lt!2729656 () Unit!172302)

(assert (=> d!2398477 (= lt!2729654 lt!2729656)))

(assert (=> d!2398477 (= (getValueByKey!2796 lt!2729655 (_1!38763 (h!82022 l!14636))) (Some!18011 (_2!38763 (h!82022 l!14636))))))

(declare-fun lemmaContainsTupThenGetReturnValue!1288 (List!75700 K!22853 V!23107) Unit!172302)

(assert (=> d!2398477 (= lt!2729656 (lemmaContainsTupThenGetReturnValue!1288 lt!2729655 (_1!38763 (h!82022 l!14636)) (_2!38763 (h!82022 l!14636))))))

(declare-fun insertNoDuplicatedKeys!796 (List!75700 K!22853 V!23107) List!75700)

(assert (=> d!2398477 (= lt!2729655 (insertNoDuplicatedKeys!796 (toList!11936 acc!1298) (_1!38763 (h!82022 l!14636)) (_2!38763 (h!82022 l!14636))))))

(assert (=> d!2398477 (= (+!2687 acc!1298 (h!82022 l!14636)) lt!2729653)))

(declare-fun b!8055689 () Bool)

(declare-fun res!3186227 () Bool)

(assert (=> b!8055689 (=> (not res!3186227) (not e!4747088))))

(assert (=> b!8055689 (= res!3186227 (= (getValueByKey!2796 (toList!11936 lt!2729653) (_1!38763 (h!82022 l!14636))) (Some!18011 (_2!38763 (h!82022 l!14636)))))))

(declare-fun b!8055690 () Bool)

(assert (=> b!8055690 (= e!4747088 (contains!21254 (toList!11936 lt!2729653) (h!82022 l!14636)))))

(assert (= (and d!2398477 res!3186226) b!8055689))

(assert (= (and b!8055689 res!3186227) b!8055690))

(declare-fun m!8408630 () Bool)

(assert (=> d!2398477 m!8408630))

(declare-fun m!8408632 () Bool)

(assert (=> d!2398477 m!8408632))

(declare-fun m!8408634 () Bool)

(assert (=> d!2398477 m!8408634))

(declare-fun m!8408636 () Bool)

(assert (=> d!2398477 m!8408636))

(declare-fun m!8408638 () Bool)

(assert (=> b!8055689 m!8408638))

(declare-fun m!8408640 () Bool)

(assert (=> b!8055690 m!8408640))

(assert (=> b!8055509 d!2398477))

(declare-fun d!2398487 () Bool)

(declare-fun res!3186232 () Bool)

(declare-fun e!4747093 () Bool)

(assert (=> d!2398487 (=> res!3186232 e!4747093)))

(assert (=> d!2398487 (= res!3186232 (not ((_ is Cons!75574) l!14636)))))

(assert (=> d!2398487 (= (noDuplicateKeys!2722 l!14636) e!4747093)))

(declare-fun b!8055695 () Bool)

(declare-fun e!4747094 () Bool)

(assert (=> b!8055695 (= e!4747093 e!4747094)))

(declare-fun res!3186233 () Bool)

(assert (=> b!8055695 (=> (not res!3186233) (not e!4747094))))

(assert (=> b!8055695 (= res!3186233 (not (containsKey!4881 (t!391472 l!14636) (_1!38763 (h!82022 l!14636)))))))

(declare-fun b!8055696 () Bool)

(assert (=> b!8055696 (= e!4747094 (noDuplicateKeys!2722 (t!391472 l!14636)))))

(assert (= (and d!2398487 (not res!3186232)) b!8055695))

(assert (= (and b!8055695 res!3186233) b!8055696))

(declare-fun m!8408642 () Bool)

(assert (=> b!8055695 m!8408642))

(assert (=> b!8055696 m!8408348))

(assert (=> start!758832 d!2398487))

(declare-fun d!2398489 () Bool)

(assert (=> d!2398489 (= (inv!97342 acc!1298) (invariantList!1947 (toList!11936 acc!1298)))))

(declare-fun bs!1973051 () Bool)

(assert (= bs!1973051 d!2398489))

(declare-fun m!8408644 () Bool)

(assert (=> bs!1973051 m!8408644))

(assert (=> start!758832 d!2398489))

(declare-fun d!2398491 () Bool)

(declare-fun res!3186234 () Bool)

(declare-fun e!4747095 () Bool)

(assert (=> d!2398491 (=> res!3186234 e!4747095)))

(assert (=> d!2398491 (= res!3186234 (not ((_ is Cons!75574) (t!391472 l!14636))))))

(assert (=> d!2398491 (= (noDuplicateKeys!2722 (t!391472 l!14636)) e!4747095)))

(declare-fun b!8055697 () Bool)

(declare-fun e!4747096 () Bool)

(assert (=> b!8055697 (= e!4747095 e!4747096)))

(declare-fun res!3186235 () Bool)

(assert (=> b!8055697 (=> (not res!3186235) (not e!4747096))))

(assert (=> b!8055697 (= res!3186235 (not (containsKey!4881 (t!391472 (t!391472 l!14636)) (_1!38763 (h!82022 (t!391472 l!14636))))))))

(declare-fun b!8055698 () Bool)

(assert (=> b!8055698 (= e!4747096 (noDuplicateKeys!2722 (t!391472 (t!391472 l!14636))))))

(assert (= (and d!2398491 (not res!3186234)) b!8055697))

(assert (= (and b!8055697 res!3186235) b!8055698))

(declare-fun m!8408646 () Bool)

(assert (=> b!8055697 m!8408646))

(declare-fun m!8408648 () Bool)

(assert (=> b!8055698 m!8408648))

(assert (=> b!8055508 d!2398491))

(declare-fun b!8055699 () Bool)

(declare-fun e!4747098 () List!75702)

(assert (=> b!8055699 (= e!4747098 (getKeysList!1255 (toList!11936 lt!2729395)))))

(declare-fun b!8055700 () Bool)

(assert (=> b!8055700 false))

(declare-fun lt!2729663 () Unit!172302)

(declare-fun lt!2729661 () Unit!172302)

(assert (=> b!8055700 (= lt!2729663 lt!2729661)))

(assert (=> b!8055700 (containsKey!4883 (toList!11936 lt!2729395) key!6222)))

(assert (=> b!8055700 (= lt!2729661 (lemmaInGetKeysListThenContainsKey!1255 (toList!11936 lt!2729395) key!6222))))

(declare-fun e!4747101 () Unit!172302)

(declare-fun Unit!172345 () Unit!172302)

(assert (=> b!8055700 (= e!4747101 Unit!172345)))

(declare-fun b!8055701 () Bool)

(declare-fun Unit!172346 () Unit!172302)

(assert (=> b!8055701 (= e!4747101 Unit!172346)))

(declare-fun b!8055702 () Bool)

(declare-fun e!4747100 () Unit!172302)

(assert (=> b!8055702 (= e!4747100 e!4747101)))

(declare-fun c!1476509 () Bool)

(declare-fun call!747423 () Bool)

(assert (=> b!8055702 (= c!1476509 call!747423)))

(declare-fun b!8055703 () Bool)

(declare-fun e!4747099 () Bool)

(assert (=> b!8055703 (= e!4747099 (contains!21256 (keys!30866 lt!2729395) key!6222))))

(declare-fun b!8055704 () Bool)

(declare-fun lt!2729658 () Unit!172302)

(assert (=> b!8055704 (= e!4747100 lt!2729658)))

(declare-fun lt!2729657 () Unit!172302)

(assert (=> b!8055704 (= lt!2729657 (lemmaContainsKeyImpliesGetValueByKeyDefined!2567 (toList!11936 lt!2729395) key!6222))))

(assert (=> b!8055704 (isDefined!14545 (getValueByKey!2796 (toList!11936 lt!2729395) key!6222))))

(declare-fun lt!2729659 () Unit!172302)

(assert (=> b!8055704 (= lt!2729659 lt!2729657)))

(assert (=> b!8055704 (= lt!2729658 (lemmaInListThenGetKeysListContains!1250 (toList!11936 lt!2729395) key!6222))))

(assert (=> b!8055704 call!747423))

(declare-fun b!8055705 () Bool)

(declare-fun e!4747102 () Bool)

(assert (=> b!8055705 (= e!4747102 e!4747099)))

(declare-fun res!3186238 () Bool)

(assert (=> b!8055705 (=> (not res!3186238) (not e!4747099))))

(assert (=> b!8055705 (= res!3186238 (isDefined!14545 (getValueByKey!2796 (toList!11936 lt!2729395) key!6222)))))

(declare-fun b!8055707 () Bool)

(declare-fun e!4747097 () Bool)

(assert (=> b!8055707 (= e!4747097 (not (contains!21256 (keys!30866 lt!2729395) key!6222)))))

(declare-fun bm!747418 () Bool)

(assert (=> bm!747418 (= call!747423 (contains!21256 e!4747098 key!6222))))

(declare-fun c!1476510 () Bool)

(declare-fun c!1476511 () Bool)

(assert (=> bm!747418 (= c!1476510 c!1476511)))

(declare-fun d!2398493 () Bool)

(assert (=> d!2398493 e!4747102))

(declare-fun res!3186236 () Bool)

(assert (=> d!2398493 (=> res!3186236 e!4747102)))

(assert (=> d!2398493 (= res!3186236 e!4747097)))

(declare-fun res!3186237 () Bool)

(assert (=> d!2398493 (=> (not res!3186237) (not e!4747097))))

(declare-fun lt!2729664 () Bool)

(assert (=> d!2398493 (= res!3186237 (not lt!2729664))))

(declare-fun lt!2729662 () Bool)

(assert (=> d!2398493 (= lt!2729664 lt!2729662)))

(declare-fun lt!2729660 () Unit!172302)

(assert (=> d!2398493 (= lt!2729660 e!4747100)))

(assert (=> d!2398493 (= c!1476511 lt!2729662)))

(assert (=> d!2398493 (= lt!2729662 (containsKey!4883 (toList!11936 lt!2729395) key!6222))))

(assert (=> d!2398493 (= (contains!21253 lt!2729395 key!6222) lt!2729664)))

(declare-fun b!8055706 () Bool)

(assert (=> b!8055706 (= e!4747098 (keys!30866 lt!2729395))))

(assert (= (and d!2398493 c!1476511) b!8055704))

(assert (= (and d!2398493 (not c!1476511)) b!8055702))

(assert (= (and b!8055702 c!1476509) b!8055700))

(assert (= (and b!8055702 (not c!1476509)) b!8055701))

(assert (= (or b!8055704 b!8055702) bm!747418))

(assert (= (and bm!747418 c!1476510) b!8055699))

(assert (= (and bm!747418 (not c!1476510)) b!8055706))

(assert (= (and d!2398493 res!3186237) b!8055707))

(assert (= (and d!2398493 (not res!3186236)) b!8055705))

(assert (= (and b!8055705 res!3186238) b!8055703))

(declare-fun m!8408650 () Bool)

(assert (=> bm!747418 m!8408650))

(declare-fun m!8408652 () Bool)

(assert (=> b!8055706 m!8408652))

(assert (=> b!8055707 m!8408652))

(assert (=> b!8055707 m!8408652))

(declare-fun m!8408654 () Bool)

(assert (=> b!8055707 m!8408654))

(declare-fun m!8408656 () Bool)

(assert (=> b!8055704 m!8408656))

(declare-fun m!8408658 () Bool)

(assert (=> b!8055704 m!8408658))

(assert (=> b!8055704 m!8408658))

(declare-fun m!8408660 () Bool)

(assert (=> b!8055704 m!8408660))

(declare-fun m!8408662 () Bool)

(assert (=> b!8055704 m!8408662))

(declare-fun m!8408664 () Bool)

(assert (=> b!8055700 m!8408664))

(declare-fun m!8408666 () Bool)

(assert (=> b!8055700 m!8408666))

(assert (=> d!2398493 m!8408664))

(assert (=> b!8055705 m!8408658))

(assert (=> b!8055705 m!8408658))

(assert (=> b!8055705 m!8408660))

(assert (=> b!8055703 m!8408652))

(assert (=> b!8055703 m!8408652))

(assert (=> b!8055703 m!8408654))

(declare-fun m!8408668 () Bool)

(assert (=> b!8055699 m!8408668))

(assert (=> b!8055508 d!2398493))

(declare-fun d!2398495 () Bool)

(assert (=> d!2398495 (not (contains!21253 (+!2687 acc!1298 (tuple2!70921 (_1!38763 (h!82022 l!14636)) (_2!38763 (h!82022 l!14636)))) key!6222))))

(declare-fun lt!2729667 () Unit!172302)

(declare-fun choose!60553 (ListMap!7323 K!22853 V!23107 K!22853) Unit!172302)

(assert (=> d!2398495 (= lt!2729667 (choose!60553 acc!1298 (_1!38763 (h!82022 l!14636)) (_2!38763 (h!82022 l!14636)) key!6222))))

(declare-fun e!4747105 () Bool)

(assert (=> d!2398495 e!4747105))

(declare-fun res!3186241 () Bool)

(assert (=> d!2398495 (=> (not res!3186241) (not e!4747105))))

(assert (=> d!2398495 (= res!3186241 (not (contains!21253 acc!1298 key!6222)))))

(assert (=> d!2398495 (= (addStillNotContains!15 acc!1298 (_1!38763 (h!82022 l!14636)) (_2!38763 (h!82022 l!14636)) key!6222) lt!2729667)))

(declare-fun b!8055711 () Bool)

(assert (=> b!8055711 (= e!4747105 (not (= (_1!38763 (h!82022 l!14636)) key!6222)))))

(assert (= (and d!2398495 res!3186241) b!8055711))

(declare-fun m!8408670 () Bool)

(assert (=> d!2398495 m!8408670))

(assert (=> d!2398495 m!8408670))

(declare-fun m!8408672 () Bool)

(assert (=> d!2398495 m!8408672))

(declare-fun m!8408674 () Bool)

(assert (=> d!2398495 m!8408674))

(assert (=> d!2398495 m!8408362))

(assert (=> b!8055508 d!2398495))

(declare-fun lt!2729670 () Bool)

(declare-fun d!2398497 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!16121 (List!75700) (InoxSet tuple2!70920))

(assert (=> d!2398497 (= lt!2729670 (select (content!16121 l!14636) (tuple2!70921 key!6222 value!3131)))))

(declare-fun e!4747111 () Bool)

(assert (=> d!2398497 (= lt!2729670 e!4747111)))

(declare-fun res!3186246 () Bool)

(assert (=> d!2398497 (=> (not res!3186246) (not e!4747111))))

(assert (=> d!2398497 (= res!3186246 ((_ is Cons!75574) l!14636))))

(assert (=> d!2398497 (= (contains!21254 l!14636 (tuple2!70921 key!6222 value!3131)) lt!2729670)))

(declare-fun b!8055716 () Bool)

(declare-fun e!4747110 () Bool)

(assert (=> b!8055716 (= e!4747111 e!4747110)))

(declare-fun res!3186247 () Bool)

(assert (=> b!8055716 (=> res!3186247 e!4747110)))

(assert (=> b!8055716 (= res!3186247 (= (h!82022 l!14636) (tuple2!70921 key!6222 value!3131)))))

(declare-fun b!8055717 () Bool)

(assert (=> b!8055717 (= e!4747110 (contains!21254 (t!391472 l!14636) (tuple2!70921 key!6222 value!3131)))))

(assert (= (and d!2398497 res!3186246) b!8055716))

(assert (= (and b!8055716 (not res!3186247)) b!8055717))

(declare-fun m!8408676 () Bool)

(assert (=> d!2398497 m!8408676))

(declare-fun m!8408678 () Bool)

(assert (=> d!2398497 m!8408678))

(assert (=> b!8055717 m!8408354))

(assert (=> b!8055517 d!2398497))

(declare-fun d!2398499 () Bool)

(declare-fun get!27237 (Option!18012) V!23107)

(assert (=> d!2398499 (= (apply!14449 acc!1298 key!6222) (get!27237 (getValueByKey!2796 (toList!11936 acc!1298) key!6222)))))

(declare-fun bs!1973052 () Bool)

(assert (= bs!1973052 d!2398499))

(assert (=> bs!1973052 m!8408424))

(assert (=> bs!1973052 m!8408424))

(declare-fun m!8408680 () Bool)

(assert (=> bs!1973052 m!8408680))

(assert (=> b!8055505 d!2398499))

(declare-fun b!8055718 () Bool)

(declare-fun e!4747113 () List!75702)

(assert (=> b!8055718 (= e!4747113 (getKeysList!1255 (toList!11936 (addToMapMapFromBucket!2003 l!14636 acc!1298))))))

(declare-fun b!8055719 () Bool)

(assert (=> b!8055719 false))

(declare-fun lt!2729677 () Unit!172302)

(declare-fun lt!2729675 () Unit!172302)

(assert (=> b!8055719 (= lt!2729677 lt!2729675)))

(assert (=> b!8055719 (containsKey!4883 (toList!11936 (addToMapMapFromBucket!2003 l!14636 acc!1298)) key!6222)))

(assert (=> b!8055719 (= lt!2729675 (lemmaInGetKeysListThenContainsKey!1255 (toList!11936 (addToMapMapFromBucket!2003 l!14636 acc!1298)) key!6222))))

(declare-fun e!4747116 () Unit!172302)

(declare-fun Unit!172349 () Unit!172302)

(assert (=> b!8055719 (= e!4747116 Unit!172349)))

(declare-fun b!8055720 () Bool)

(declare-fun Unit!172350 () Unit!172302)

(assert (=> b!8055720 (= e!4747116 Unit!172350)))

(declare-fun b!8055721 () Bool)

(declare-fun e!4747115 () Unit!172302)

(assert (=> b!8055721 (= e!4747115 e!4747116)))

(declare-fun c!1476512 () Bool)

(declare-fun call!747424 () Bool)

(assert (=> b!8055721 (= c!1476512 call!747424)))

(declare-fun b!8055722 () Bool)

(declare-fun e!4747114 () Bool)

(assert (=> b!8055722 (= e!4747114 (contains!21256 (keys!30866 (addToMapMapFromBucket!2003 l!14636 acc!1298)) key!6222))))

(declare-fun b!8055723 () Bool)

(declare-fun lt!2729672 () Unit!172302)

(assert (=> b!8055723 (= e!4747115 lt!2729672)))

(declare-fun lt!2729671 () Unit!172302)

(assert (=> b!8055723 (= lt!2729671 (lemmaContainsKeyImpliesGetValueByKeyDefined!2567 (toList!11936 (addToMapMapFromBucket!2003 l!14636 acc!1298)) key!6222))))

(assert (=> b!8055723 (isDefined!14545 (getValueByKey!2796 (toList!11936 (addToMapMapFromBucket!2003 l!14636 acc!1298)) key!6222))))

(declare-fun lt!2729673 () Unit!172302)

(assert (=> b!8055723 (= lt!2729673 lt!2729671)))

(assert (=> b!8055723 (= lt!2729672 (lemmaInListThenGetKeysListContains!1250 (toList!11936 (addToMapMapFromBucket!2003 l!14636 acc!1298)) key!6222))))

(assert (=> b!8055723 call!747424))

(declare-fun b!8055724 () Bool)

(declare-fun e!4747117 () Bool)

(assert (=> b!8055724 (= e!4747117 e!4747114)))

(declare-fun res!3186250 () Bool)

(assert (=> b!8055724 (=> (not res!3186250) (not e!4747114))))

(assert (=> b!8055724 (= res!3186250 (isDefined!14545 (getValueByKey!2796 (toList!11936 (addToMapMapFromBucket!2003 l!14636 acc!1298)) key!6222)))))

(declare-fun e!4747112 () Bool)

(declare-fun b!8055726 () Bool)

(assert (=> b!8055726 (= e!4747112 (not (contains!21256 (keys!30866 (addToMapMapFromBucket!2003 l!14636 acc!1298)) key!6222)))))

(declare-fun bm!747419 () Bool)

(assert (=> bm!747419 (= call!747424 (contains!21256 e!4747113 key!6222))))

(declare-fun c!1476513 () Bool)

(declare-fun c!1476514 () Bool)

(assert (=> bm!747419 (= c!1476513 c!1476514)))

(declare-fun d!2398501 () Bool)

(assert (=> d!2398501 e!4747117))

(declare-fun res!3186248 () Bool)

(assert (=> d!2398501 (=> res!3186248 e!4747117)))

(assert (=> d!2398501 (= res!3186248 e!4747112)))

(declare-fun res!3186249 () Bool)

(assert (=> d!2398501 (=> (not res!3186249) (not e!4747112))))

(declare-fun lt!2729678 () Bool)

(assert (=> d!2398501 (= res!3186249 (not lt!2729678))))

(declare-fun lt!2729676 () Bool)

(assert (=> d!2398501 (= lt!2729678 lt!2729676)))

(declare-fun lt!2729674 () Unit!172302)

(assert (=> d!2398501 (= lt!2729674 e!4747115)))

(assert (=> d!2398501 (= c!1476514 lt!2729676)))

(assert (=> d!2398501 (= lt!2729676 (containsKey!4883 (toList!11936 (addToMapMapFromBucket!2003 l!14636 acc!1298)) key!6222))))

(assert (=> d!2398501 (= (contains!21253 (addToMapMapFromBucket!2003 l!14636 acc!1298) key!6222) lt!2729678)))

(declare-fun b!8055725 () Bool)

(assert (=> b!8055725 (= e!4747113 (keys!30866 (addToMapMapFromBucket!2003 l!14636 acc!1298)))))

(assert (= (and d!2398501 c!1476514) b!8055723))

(assert (= (and d!2398501 (not c!1476514)) b!8055721))

(assert (= (and b!8055721 c!1476512) b!8055719))

(assert (= (and b!8055721 (not c!1476512)) b!8055720))

(assert (= (or b!8055723 b!8055721) bm!747419))

(assert (= (and bm!747419 c!1476513) b!8055718))

(assert (= (and bm!747419 (not c!1476513)) b!8055725))

(assert (= (and d!2398501 res!3186249) b!8055726))

(assert (= (and d!2398501 (not res!3186248)) b!8055724))

(assert (= (and b!8055724 res!3186250) b!8055722))

(declare-fun m!8408682 () Bool)

(assert (=> bm!747419 m!8408682))

(assert (=> b!8055725 m!8408340))

(declare-fun m!8408684 () Bool)

(assert (=> b!8055725 m!8408684))

(assert (=> b!8055726 m!8408340))

(assert (=> b!8055726 m!8408684))

(assert (=> b!8055726 m!8408684))

(declare-fun m!8408686 () Bool)

(assert (=> b!8055726 m!8408686))

(declare-fun m!8408688 () Bool)

(assert (=> b!8055723 m!8408688))

(declare-fun m!8408690 () Bool)

(assert (=> b!8055723 m!8408690))

(assert (=> b!8055723 m!8408690))

(declare-fun m!8408692 () Bool)

(assert (=> b!8055723 m!8408692))

(declare-fun m!8408694 () Bool)

(assert (=> b!8055723 m!8408694))

(declare-fun m!8408696 () Bool)

(assert (=> b!8055719 m!8408696))

(declare-fun m!8408698 () Bool)

(assert (=> b!8055719 m!8408698))

(assert (=> d!2398501 m!8408696))

(assert (=> b!8055724 m!8408690))

(assert (=> b!8055724 m!8408690))

(assert (=> b!8055724 m!8408692))

(assert (=> b!8055722 m!8408340))

(assert (=> b!8055722 m!8408684))

(assert (=> b!8055722 m!8408684))

(assert (=> b!8055722 m!8408686))

(declare-fun m!8408700 () Bool)

(assert (=> b!8055718 m!8408700))

(assert (=> b!8055516 d!2398501))

(declare-fun bs!1973053 () Bool)

(declare-fun b!8055730 () Bool)

(assert (= bs!1973053 (and b!8055730 b!8055645)))

(declare-fun lambda!474196 () Int)

(assert (=> bs!1973053 (= (= acc!1298 lt!2729395) (= lambda!474196 lambda!474192))))

(declare-fun bs!1973054 () Bool)

(assert (= bs!1973054 (and b!8055730 b!8055646)))

(assert (=> bs!1973054 (= (= acc!1298 lt!2729395) (= lambda!474196 lambda!474193))))

(assert (=> bs!1973054 (= (= acc!1298 lt!2729610) (= lambda!474196 lambda!474194))))

(declare-fun bs!1973055 () Bool)

(assert (= bs!1973055 (and b!8055730 d!2398461)))

(assert (=> bs!1973055 (= (= acc!1298 lt!2729619) (= lambda!474196 lambda!474195))))

(assert (=> b!8055730 true))

(declare-fun bs!1973056 () Bool)

(declare-fun b!8055731 () Bool)

(assert (= bs!1973056 (and b!8055731 b!8055645)))

(declare-fun lambda!474197 () Int)

(assert (=> bs!1973056 (= (= acc!1298 lt!2729395) (= lambda!474197 lambda!474192))))

(declare-fun bs!1973057 () Bool)

(assert (= bs!1973057 (and b!8055731 b!8055646)))

(assert (=> bs!1973057 (= (= acc!1298 lt!2729610) (= lambda!474197 lambda!474194))))

(assert (=> bs!1973057 (= (= acc!1298 lt!2729395) (= lambda!474197 lambda!474193))))

(declare-fun bs!1973058 () Bool)

(assert (= bs!1973058 (and b!8055731 d!2398461)))

(assert (=> bs!1973058 (= (= acc!1298 lt!2729619) (= lambda!474197 lambda!474195))))

(declare-fun bs!1973059 () Bool)

(assert (= bs!1973059 (and b!8055731 b!8055730)))

(assert (=> bs!1973059 (= lambda!474197 lambda!474196)))

(assert (=> b!8055731 true))

(declare-fun lt!2729689 () ListMap!7323)

(declare-fun lambda!474198 () Int)

(assert (=> bs!1973056 (= (= lt!2729689 lt!2729395) (= lambda!474198 lambda!474192))))

(assert (=> bs!1973057 (= (= lt!2729689 lt!2729610) (= lambda!474198 lambda!474194))))

(assert (=> bs!1973057 (= (= lt!2729689 lt!2729395) (= lambda!474198 lambda!474193))))

(assert (=> bs!1973058 (= (= lt!2729689 lt!2729619) (= lambda!474198 lambda!474195))))

(assert (=> b!8055731 (= (= lt!2729689 acc!1298) (= lambda!474198 lambda!474197))))

(assert (=> bs!1973059 (= (= lt!2729689 acc!1298) (= lambda!474198 lambda!474196))))

(assert (=> b!8055731 true))

(declare-fun bs!1973060 () Bool)

(declare-fun d!2398503 () Bool)

(assert (= bs!1973060 (and d!2398503 b!8055645)))

(declare-fun lambda!474199 () Int)

(declare-fun lt!2729698 () ListMap!7323)

(assert (=> bs!1973060 (= (= lt!2729698 lt!2729395) (= lambda!474199 lambda!474192))))

(declare-fun bs!1973061 () Bool)

(assert (= bs!1973061 (and d!2398503 b!8055646)))

(assert (=> bs!1973061 (= (= lt!2729698 lt!2729610) (= lambda!474199 lambda!474194))))

(declare-fun bs!1973062 () Bool)

(assert (= bs!1973062 (and d!2398503 b!8055731)))

(assert (=> bs!1973062 (= (= lt!2729698 lt!2729689) (= lambda!474199 lambda!474198))))

(assert (=> bs!1973061 (= (= lt!2729698 lt!2729395) (= lambda!474199 lambda!474193))))

(declare-fun bs!1973063 () Bool)

(assert (= bs!1973063 (and d!2398503 d!2398461)))

(assert (=> bs!1973063 (= (= lt!2729698 lt!2729619) (= lambda!474199 lambda!474195))))

(assert (=> bs!1973062 (= (= lt!2729698 acc!1298) (= lambda!474199 lambda!474197))))

(declare-fun bs!1973064 () Bool)

(assert (= bs!1973064 (and d!2398503 b!8055730)))

(assert (=> bs!1973064 (= (= lt!2729698 acc!1298) (= lambda!474199 lambda!474196))))

(assert (=> d!2398503 true))

(declare-fun c!1476515 () Bool)

(declare-fun call!747425 () Bool)

(declare-fun bm!747420 () Bool)

(assert (=> bm!747420 (= call!747425 (forall!18518 (toList!11936 acc!1298) (ite c!1476515 lambda!474196 lambda!474198)))))

(declare-fun bm!747421 () Bool)

(declare-fun call!747426 () Unit!172302)

(assert (=> bm!747421 (= call!747426 (lemmaContainsAllItsOwnKeys!1099 acc!1298))))

(declare-fun b!8055727 () Bool)

(declare-fun e!4747119 () Bool)

(assert (=> b!8055727 (= e!4747119 call!747425)))

(declare-fun b!8055728 () Bool)

(declare-fun res!3186253 () Bool)

(declare-fun e!4747120 () Bool)

(assert (=> b!8055728 (=> (not res!3186253) (not e!4747120))))

(assert (=> b!8055728 (= res!3186253 (forall!18518 (toList!11936 acc!1298) lambda!474199))))

(assert (=> d!2398503 e!4747120))

(declare-fun res!3186251 () Bool)

(assert (=> d!2398503 (=> (not res!3186251) (not e!4747120))))

(assert (=> d!2398503 (= res!3186251 (forall!18518 l!14636 lambda!474199))))

(declare-fun e!4747118 () ListMap!7323)

(assert (=> d!2398503 (= lt!2729698 e!4747118)))

(assert (=> d!2398503 (= c!1476515 ((_ is Nil!75574) l!14636))))

(assert (=> d!2398503 (noDuplicateKeys!2722 l!14636)))

(assert (=> d!2398503 (= (addToMapMapFromBucket!2003 l!14636 acc!1298) lt!2729698)))

(declare-fun b!8055729 () Bool)

(assert (=> b!8055729 (= e!4747120 (invariantList!1947 (toList!11936 lt!2729698)))))

(assert (=> b!8055730 (= e!4747118 acc!1298)))

(declare-fun lt!2729697 () Unit!172302)

(assert (=> b!8055730 (= lt!2729697 call!747426)))

(assert (=> b!8055730 call!747425))

(declare-fun lt!2729683 () Unit!172302)

(assert (=> b!8055730 (= lt!2729683 lt!2729697)))

(declare-fun call!747427 () Bool)

(assert (=> b!8055730 call!747427))

(declare-fun lt!2729687 () Unit!172302)

(declare-fun Unit!172353 () Unit!172302)

(assert (=> b!8055730 (= lt!2729687 Unit!172353)))

(declare-fun bm!747422 () Bool)

(declare-fun lt!2729696 () ListMap!7323)

(assert (=> bm!747422 (= call!747427 (forall!18518 (ite c!1476515 (toList!11936 acc!1298) (toList!11936 lt!2729696)) (ite c!1476515 lambda!474196 lambda!474198)))))

(assert (=> b!8055731 (= e!4747118 lt!2729689)))

(assert (=> b!8055731 (= lt!2729696 (+!2687 acc!1298 (h!82022 l!14636)))))

(assert (=> b!8055731 (= lt!2729689 (addToMapMapFromBucket!2003 (t!391472 l!14636) (+!2687 acc!1298 (h!82022 l!14636))))))

(declare-fun lt!2729680 () Unit!172302)

(assert (=> b!8055731 (= lt!2729680 call!747426)))

(assert (=> b!8055731 (forall!18518 (toList!11936 acc!1298) lambda!474197)))

(declare-fun lt!2729695 () Unit!172302)

(assert (=> b!8055731 (= lt!2729695 lt!2729680)))

(assert (=> b!8055731 call!747427))

(declare-fun lt!2729681 () Unit!172302)

(declare-fun Unit!172354 () Unit!172302)

(assert (=> b!8055731 (= lt!2729681 Unit!172354)))

(assert (=> b!8055731 (forall!18518 (t!391472 l!14636) lambda!474198)))

(declare-fun lt!2729685 () Unit!172302)

(declare-fun Unit!172355 () Unit!172302)

(assert (=> b!8055731 (= lt!2729685 Unit!172355)))

(declare-fun lt!2729699 () Unit!172302)

(declare-fun Unit!172356 () Unit!172302)

(assert (=> b!8055731 (= lt!2729699 Unit!172356)))

(declare-fun lt!2729694 () Unit!172302)

(assert (=> b!8055731 (= lt!2729694 (forallContained!4672 (toList!11936 lt!2729696) lambda!474198 (h!82022 l!14636)))))

(assert (=> b!8055731 (contains!21253 lt!2729696 (_1!38763 (h!82022 l!14636)))))

(declare-fun lt!2729691 () Unit!172302)

(declare-fun Unit!172357 () Unit!172302)

(assert (=> b!8055731 (= lt!2729691 Unit!172357)))

(assert (=> b!8055731 (contains!21253 lt!2729689 (_1!38763 (h!82022 l!14636)))))

(declare-fun lt!2729688 () Unit!172302)

(declare-fun Unit!172358 () Unit!172302)

(assert (=> b!8055731 (= lt!2729688 Unit!172358)))

(assert (=> b!8055731 (forall!18518 l!14636 lambda!474198)))

(declare-fun lt!2729693 () Unit!172302)

(declare-fun Unit!172359 () Unit!172302)

(assert (=> b!8055731 (= lt!2729693 Unit!172359)))

(assert (=> b!8055731 (forall!18518 (toList!11936 lt!2729696) lambda!474198)))

(declare-fun lt!2729690 () Unit!172302)

(declare-fun Unit!172360 () Unit!172302)

(assert (=> b!8055731 (= lt!2729690 Unit!172360)))

(declare-fun lt!2729682 () Unit!172302)

(declare-fun Unit!172361 () Unit!172302)

(assert (=> b!8055731 (= lt!2729682 Unit!172361)))

(declare-fun lt!2729692 () Unit!172302)

(assert (=> b!8055731 (= lt!2729692 (addForallContainsKeyThenBeforeAdding!1097 acc!1298 lt!2729689 (_1!38763 (h!82022 l!14636)) (_2!38763 (h!82022 l!14636))))))

(assert (=> b!8055731 (forall!18518 (toList!11936 acc!1298) lambda!474198)))

(declare-fun lt!2729679 () Unit!172302)

(assert (=> b!8055731 (= lt!2729679 lt!2729692)))

(assert (=> b!8055731 (forall!18518 (toList!11936 acc!1298) lambda!474198)))

(declare-fun lt!2729684 () Unit!172302)

(declare-fun Unit!172362 () Unit!172302)

(assert (=> b!8055731 (= lt!2729684 Unit!172362)))

(declare-fun res!3186252 () Bool)

(assert (=> b!8055731 (= res!3186252 (forall!18518 l!14636 lambda!474198))))

(assert (=> b!8055731 (=> (not res!3186252) (not e!4747119))))

(assert (=> b!8055731 e!4747119))

(declare-fun lt!2729686 () Unit!172302)

(declare-fun Unit!172363 () Unit!172302)

(assert (=> b!8055731 (= lt!2729686 Unit!172363)))

(assert (= (and d!2398503 c!1476515) b!8055730))

(assert (= (and d!2398503 (not c!1476515)) b!8055731))

(assert (= (and b!8055731 res!3186252) b!8055727))

(assert (= (or b!8055730 b!8055731) bm!747422))

(assert (= (or b!8055730 b!8055727) bm!747420))

(assert (= (or b!8055730 b!8055731) bm!747421))

(assert (= (and d!2398503 res!3186251) b!8055728))

(assert (= (and b!8055728 res!3186253) b!8055729))

(declare-fun m!8408702 () Bool)

(assert (=> d!2398503 m!8408702))

(assert (=> d!2398503 m!8408344))

(declare-fun m!8408704 () Bool)

(assert (=> bm!747421 m!8408704))

(declare-fun m!8408706 () Bool)

(assert (=> b!8055731 m!8408706))

(declare-fun m!8408708 () Bool)

(assert (=> b!8055731 m!8408708))

(assert (=> b!8055731 m!8408358))

(declare-fun m!8408710 () Bool)

(assert (=> b!8055731 m!8408710))

(declare-fun m!8408712 () Bool)

(assert (=> b!8055731 m!8408712))

(declare-fun m!8408714 () Bool)

(assert (=> b!8055731 m!8408714))

(declare-fun m!8408716 () Bool)

(assert (=> b!8055731 m!8408716))

(assert (=> b!8055731 m!8408708))

(declare-fun m!8408718 () Bool)

(assert (=> b!8055731 m!8408718))

(assert (=> b!8055731 m!8408714))

(declare-fun m!8408720 () Bool)

(assert (=> b!8055731 m!8408720))

(declare-fun m!8408722 () Bool)

(assert (=> b!8055731 m!8408722))

(assert (=> b!8055731 m!8408358))

(declare-fun m!8408724 () Bool)

(assert (=> b!8055731 m!8408724))

(declare-fun m!8408726 () Bool)

(assert (=> bm!747420 m!8408726))

(declare-fun m!8408728 () Bool)

(assert (=> bm!747422 m!8408728))

(declare-fun m!8408730 () Bool)

(assert (=> b!8055729 m!8408730))

(declare-fun m!8408732 () Bool)

(assert (=> b!8055728 m!8408732))

(assert (=> b!8055516 d!2398503))

(declare-fun d!2398505 () Bool)

(declare-fun res!3186258 () Bool)

(declare-fun e!4747125 () Bool)

(assert (=> d!2398505 (=> res!3186258 e!4747125)))

(assert (=> d!2398505 (= res!3186258 (and ((_ is Cons!75574) l!14636) (= (_1!38763 (h!82022 l!14636)) key!6222)))))

(assert (=> d!2398505 (= (containsKey!4881 l!14636 key!6222) e!4747125)))

(declare-fun b!8055736 () Bool)

(declare-fun e!4747126 () Bool)

(assert (=> b!8055736 (= e!4747125 e!4747126)))

(declare-fun res!3186259 () Bool)

(assert (=> b!8055736 (=> (not res!3186259) (not e!4747126))))

(assert (=> b!8055736 (= res!3186259 ((_ is Cons!75574) l!14636))))

(declare-fun b!8055737 () Bool)

(assert (=> b!8055737 (= e!4747126 (containsKey!4881 (t!391472 l!14636) key!6222))))

(assert (= (and d!2398505 (not res!3186258)) b!8055736))

(assert (= (and b!8055736 res!3186259) b!8055737))

(declare-fun m!8408734 () Bool)

(assert (=> b!8055737 m!8408734))

(assert (=> b!8055514 d!2398505))

(declare-fun d!2398507 () Bool)

(declare-fun lt!2729700 () Bool)

(assert (=> d!2398507 (= lt!2729700 (select (content!16121 (t!391472 l!14636)) (tuple2!70921 key!6222 value!3131)))))

(declare-fun e!4747128 () Bool)

(assert (=> d!2398507 (= lt!2729700 e!4747128)))

(declare-fun res!3186260 () Bool)

(assert (=> d!2398507 (=> (not res!3186260) (not e!4747128))))

(assert (=> d!2398507 (= res!3186260 ((_ is Cons!75574) (t!391472 l!14636)))))

(assert (=> d!2398507 (= (contains!21254 (t!391472 l!14636) (tuple2!70921 key!6222 value!3131)) lt!2729700)))

(declare-fun b!8055738 () Bool)

(declare-fun e!4747127 () Bool)

(assert (=> b!8055738 (= e!4747128 e!4747127)))

(declare-fun res!3186261 () Bool)

(assert (=> b!8055738 (=> res!3186261 e!4747127)))

(assert (=> b!8055738 (= res!3186261 (= (h!82022 (t!391472 l!14636)) (tuple2!70921 key!6222 value!3131)))))

(declare-fun b!8055739 () Bool)

(assert (=> b!8055739 (= e!4747127 (contains!21254 (t!391472 (t!391472 l!14636)) (tuple2!70921 key!6222 value!3131)))))

(assert (= (and d!2398507 res!3186260) b!8055738))

(assert (= (and b!8055738 (not res!3186261)) b!8055739))

(declare-fun m!8408736 () Bool)

(assert (=> d!2398507 m!8408736))

(declare-fun m!8408738 () Bool)

(assert (=> d!2398507 m!8408738))

(declare-fun m!8408740 () Bool)

(assert (=> b!8055739 m!8408740))

(assert (=> b!8055515 d!2398507))

(assert (=> b!8055513 d!2398505))

(declare-fun tp!2413896 () Bool)

(declare-fun e!4747131 () Bool)

(declare-fun b!8055744 () Bool)

(assert (=> b!8055744 (= e!4747131 (and tp_is_empty!54963 tp_is_empty!54965 tp!2413896))))

(assert (=> b!8055506 (= tp!2413889 e!4747131)))

(assert (= (and b!8055506 ((_ is Cons!75574) (toList!11936 acc!1298))) b!8055744))

(declare-fun b!8055745 () Bool)

(declare-fun e!4747132 () Bool)

(declare-fun tp!2413897 () Bool)

(assert (=> b!8055745 (= e!4747132 (and tp_is_empty!54963 tp_is_empty!54965 tp!2413897))))

(assert (=> b!8055512 (= tp!2413888 e!4747132)))

(assert (= (and b!8055512 ((_ is Cons!75574) (t!391472 l!14636))) b!8055745))

(check-sat (not b!8055696) (not bm!747421) (not bm!747418) (not b!8055728) (not b!8055646) (not b!8055580) (not b!8055579) (not b!8055705) (not b!8055707) tp_is_empty!54965 (not bm!747419) (not b!8055644) (not bm!747415) (not bm!747413) (not b!8055699) (not d!2398495) (not b!8055726) (not b!8055695) (not b!8055724) (not b!8055643) (not b!8055590) (not b!8055592) (not b!8055703) (not b!8055700) (not b!8055729) (not b!8055583) (not d!2398497) (not d!2398459) (not b!8055582) (not b!8055575) (not b!8055576) (not b!8055589) (not b!8055731) (not d!2398499) (not b!8055588) (not bm!747414) (not b!8055697) (not b!8055704) (not b!8055745) (not b!8055744) (not d!2398451) (not b!8055585) (not bm!747393) (not d!2398493) (not bm!747392) (not b!8055722) (not d!2398489) tp_is_empty!54963 (not b!8055717) (not b!8055584) (not b!8055718) (not b!8055689) (not d!2398503) (not b!8055739) (not d!2398477) (not b!8055719) (not bm!747422) (not b!8055737) (not d!2398501) (not b!8055581) (not d!2398507) (not b!8055706) (not b!8055591) (not b!8055690) (not bm!747420) (not b!8055698) (not b!8055723) (not d!2398461) (not b!8055725))
(check-sat)
