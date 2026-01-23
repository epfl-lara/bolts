; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!485574 () Bool)

(assert start!485574)

(declare-fun b!4752541 () Bool)

(declare-fun res!2015482 () Bool)

(declare-fun e!2964688 () Bool)

(assert (=> b!4752541 (=> (not res!2015482) (not e!2964688))))

(declare-datatypes ((K!14523 0))(
  ( (K!14524 (val!19889 Int)) )
))
(declare-datatypes ((V!14769 0))(
  ( (V!14770 (val!19890 Int)) )
))
(declare-datatypes ((tuple2!54858 0))(
  ( (tuple2!54859 (_1!30723 K!14523) (_2!30723 V!14769)) )
))
(declare-datatypes ((List!53213 0))(
  ( (Nil!53089) (Cons!53089 (h!59486 tuple2!54858) (t!360549 List!53213)) )
))
(declare-fun l!14304 () List!53213)

(assert (=> b!4752541 (= res!2015482 (not (is-Nil!53089 l!14304)))))

(declare-fun b!4752542 () Bool)

(declare-fun e!2964691 () Bool)

(declare-fun tp!1350202 () Bool)

(assert (=> b!4752542 (= e!2964691 tp!1350202)))

(declare-fun tp!1350203 () Bool)

(declare-fun b!4752543 () Bool)

(declare-fun tp_is_empty!31891 () Bool)

(declare-fun tp_is_empty!31889 () Bool)

(declare-fun e!2964690 () Bool)

(assert (=> b!4752543 (= e!2964690 (and tp_is_empty!31889 tp_is_empty!31891 tp!1350203))))

(declare-fun b!4752544 () Bool)

(declare-fun e!2964692 () Bool)

(assert (=> b!4752544 (= e!2964692 e!2964688)))

(declare-fun res!2015483 () Bool)

(assert (=> b!4752544 (=> (not res!2015483) (not e!2964688))))

(declare-fun lt!1916824 () List!53213)

(declare-fun noDuplicateKeys!2149 (List!53213) Bool)

(assert (=> b!4752544 (= res!2015483 (noDuplicateKeys!2149 lt!1916824))))

(declare-fun t!14174 () tuple2!54858)

(assert (=> b!4752544 (= lt!1916824 (Cons!53089 t!14174 l!14304))))

(declare-datatypes ((ListMap!5543 0))(
  ( (ListMap!5544 (toList!6117 List!53213)) )
))
(declare-fun lt!1916828 () ListMap!5543)

(declare-fun lt!1916825 () ListMap!5543)

(declare-fun e!2964687 () Bool)

(declare-fun b!4752545 () Bool)

(declare-fun eq!1218 (ListMap!5543 ListMap!5543) Bool)

(declare-fun addToMapMapFromBucket!1573 (List!53213 ListMap!5543) ListMap!5543)

(declare-fun +!2383 (ListMap!5543 tuple2!54858) ListMap!5543)

(assert (=> b!4752545 (= e!2964687 (eq!1218 lt!1916828 (addToMapMapFromBucket!1573 (t!360549 l!14304) (+!2383 lt!1916825 (h!59486 l!14304)))))))

(declare-fun b!4752546 () Bool)

(assert (=> b!4752546 (= e!2964688 (not (not (= (_1!30723 t!14174) (_1!30723 (h!59486 l!14304))))))))

(declare-fun lt!1916827 () ListMap!5543)

(declare-fun acc!1214 () ListMap!5543)

(assert (=> b!4752546 (eq!1218 (+!2383 lt!1916827 t!14174) (+!2383 (+!2383 acc!1214 t!14174) (h!59486 l!14304)))))

(declare-datatypes ((Unit!136238 0))(
  ( (Unit!136239) )
))
(declare-fun lt!1916829 () Unit!136238)

(declare-fun addCommutativeForDiffKeys!19 (ListMap!5543 K!14523 V!14769 K!14523 V!14769) Unit!136238)

(assert (=> b!4752546 (= lt!1916829 (addCommutativeForDiffKeys!19 acc!1214 (_1!30723 (h!59486 l!14304)) (_2!30723 (h!59486 l!14304)) (_1!30723 t!14174) (_2!30723 t!14174)))))

(assert (=> b!4752546 e!2964687))

(declare-fun res!2015487 () Bool)

(assert (=> b!4752546 (=> (not res!2015487) (not e!2964687))))

(assert (=> b!4752546 (= res!2015487 (eq!1218 lt!1916828 (addToMapMapFromBucket!1573 l!14304 lt!1916825)))))

(assert (=> b!4752546 (= lt!1916825 (+!2383 acc!1214 t!14174))))

(assert (=> b!4752546 (= lt!1916828 (addToMapMapFromBucket!1573 lt!1916824 acc!1214))))

(declare-fun e!2964689 () Bool)

(assert (=> b!4752546 e!2964689))

(declare-fun res!2015484 () Bool)

(assert (=> b!4752546 (=> (not res!2015484) (not e!2964689))))

(declare-fun lt!1916826 () ListMap!5543)

(declare-fun lt!1916830 () ListMap!5543)

(assert (=> b!4752546 (= res!2015484 (eq!1218 lt!1916830 (+!2383 lt!1916826 t!14174)))))

(assert (=> b!4752546 (= lt!1916830 (addToMapMapFromBucket!1573 (Cons!53089 t!14174 (t!360549 l!14304)) lt!1916827))))

(declare-fun lt!1916831 () Unit!136238)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!463 (tuple2!54858 List!53213 ListMap!5543) Unit!136238)

(assert (=> b!4752546 (= lt!1916831 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!463 t!14174 (t!360549 l!14304) lt!1916827))))

(assert (=> b!4752546 (= lt!1916826 (addToMapMapFromBucket!1573 (t!360549 l!14304) lt!1916827))))

(assert (=> b!4752546 (= lt!1916827 (+!2383 acc!1214 (h!59486 l!14304)))))

(declare-fun b!4752547 () Bool)

(declare-fun res!2015486 () Bool)

(assert (=> b!4752547 (=> (not res!2015486) (not e!2964689))))

(assert (=> b!4752547 (= res!2015486 (eq!1218 lt!1916826 (addToMapMapFromBucket!1573 l!14304 acc!1214)))))

(declare-fun b!4752540 () Bool)

(assert (=> b!4752540 (= e!2964689 (eq!1218 lt!1916830 (addToMapMapFromBucket!1573 (t!360549 l!14304) (+!2383 lt!1916827 t!14174))))))

(declare-fun res!2015485 () Bool)

(assert (=> start!485574 (=> (not res!2015485) (not e!2964692))))

(assert (=> start!485574 (= res!2015485 (noDuplicateKeys!2149 l!14304))))

(assert (=> start!485574 e!2964692))

(assert (=> start!485574 e!2964690))

(assert (=> start!485574 (and tp_is_empty!31889 tp_is_empty!31891)))

(declare-fun inv!68394 (ListMap!5543) Bool)

(assert (=> start!485574 (and (inv!68394 acc!1214) e!2964691)))

(assert (= (and start!485574 res!2015485) b!4752544))

(assert (= (and b!4752544 res!2015483) b!4752541))

(assert (= (and b!4752541 res!2015482) b!4752546))

(assert (= (and b!4752546 res!2015484) b!4752547))

(assert (= (and b!4752547 res!2015486) b!4752540))

(assert (= (and b!4752546 res!2015487) b!4752545))

(assert (= (and start!485574 (is-Cons!53089 l!14304)) b!4752543))

(assert (= start!485574 b!4752542))

(declare-fun m!5716985 () Bool)

(assert (=> b!4752546 m!5716985))

(declare-fun m!5716987 () Bool)

(assert (=> b!4752546 m!5716987))

(declare-fun m!5716989 () Bool)

(assert (=> b!4752546 m!5716989))

(declare-fun m!5716991 () Bool)

(assert (=> b!4752546 m!5716991))

(declare-fun m!5716993 () Bool)

(assert (=> b!4752546 m!5716993))

(declare-fun m!5716995 () Bool)

(assert (=> b!4752546 m!5716995))

(declare-fun m!5716997 () Bool)

(assert (=> b!4752546 m!5716997))

(declare-fun m!5716999 () Bool)

(assert (=> b!4752546 m!5716999))

(assert (=> b!4752546 m!5716995))

(declare-fun m!5717001 () Bool)

(assert (=> b!4752546 m!5717001))

(declare-fun m!5717003 () Bool)

(assert (=> b!4752546 m!5717003))

(assert (=> b!4752546 m!5716993))

(declare-fun m!5717005 () Bool)

(assert (=> b!4752546 m!5717005))

(assert (=> b!4752546 m!5717003))

(assert (=> b!4752546 m!5717005))

(declare-fun m!5717007 () Bool)

(assert (=> b!4752546 m!5717007))

(assert (=> b!4752546 m!5716991))

(declare-fun m!5717009 () Bool)

(assert (=> b!4752546 m!5717009))

(declare-fun m!5717011 () Bool)

(assert (=> b!4752546 m!5717011))

(declare-fun m!5717013 () Bool)

(assert (=> start!485574 m!5717013))

(declare-fun m!5717015 () Bool)

(assert (=> start!485574 m!5717015))

(declare-fun m!5717017 () Bool)

(assert (=> b!4752545 m!5717017))

(assert (=> b!4752545 m!5717017))

(declare-fun m!5717019 () Bool)

(assert (=> b!4752545 m!5717019))

(assert (=> b!4752545 m!5717019))

(declare-fun m!5717021 () Bool)

(assert (=> b!4752545 m!5717021))

(assert (=> b!4752540 m!5717003))

(assert (=> b!4752540 m!5717003))

(declare-fun m!5717023 () Bool)

(assert (=> b!4752540 m!5717023))

(assert (=> b!4752540 m!5717023))

(declare-fun m!5717025 () Bool)

(assert (=> b!4752540 m!5717025))

(declare-fun m!5717027 () Bool)

(assert (=> b!4752547 m!5717027))

(assert (=> b!4752547 m!5717027))

(declare-fun m!5717029 () Bool)

(assert (=> b!4752547 m!5717029))

(declare-fun m!5717031 () Bool)

(assert (=> b!4752544 m!5717031))

(push 1)

(assert (not b!4752544))

(assert (not b!4752547))

(assert tp_is_empty!31889)

(assert (not b!4752542))

(assert (not start!485574))

(assert (not b!4752543))

(assert (not b!4752546))

(assert tp_is_empty!31891)

(assert (not b!4752540))

(assert (not b!4752545))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1519473 () Bool)

(declare-fun content!9532 (List!53213) (Set tuple2!54858))

(assert (=> d!1519473 (= (eq!1218 lt!1916830 (addToMapMapFromBucket!1573 (t!360549 l!14304) (+!2383 lt!1916827 t!14174))) (= (content!9532 (toList!6117 lt!1916830)) (content!9532 (toList!6117 (addToMapMapFromBucket!1573 (t!360549 l!14304) (+!2383 lt!1916827 t!14174))))))))

(declare-fun bs!1143898 () Bool)

(assert (= bs!1143898 d!1519473))

(declare-fun m!5717081 () Bool)

(assert (=> bs!1143898 m!5717081))

(declare-fun m!5717083 () Bool)

(assert (=> bs!1143898 m!5717083))

(assert (=> b!4752540 d!1519473))

(declare-fun b!4752587 () Bool)

(assert (=> b!4752587 true))

(declare-fun bs!1143900 () Bool)

(declare-fun b!4752586 () Bool)

(assert (= bs!1143900 (and b!4752586 b!4752587)))

(declare-fun lambda!222222 () Int)

(declare-fun lambda!222221 () Int)

(assert (=> bs!1143900 (= lambda!222222 lambda!222221)))

(assert (=> b!4752586 true))

(declare-fun lt!1916915 () ListMap!5543)

(declare-fun lambda!222223 () Int)

(assert (=> bs!1143900 (= (= lt!1916915 (+!2383 lt!1916827 t!14174)) (= lambda!222223 lambda!222221))))

(assert (=> b!4752586 (= (= lt!1916915 (+!2383 lt!1916827 t!14174)) (= lambda!222223 lambda!222222))))

(assert (=> b!4752586 true))

(declare-fun bs!1143901 () Bool)

(declare-fun d!1519475 () Bool)

(assert (= bs!1143901 (and d!1519475 b!4752587)))

(declare-fun lambda!222224 () Int)

(declare-fun lt!1916904 () ListMap!5543)

(assert (=> bs!1143901 (= (= lt!1916904 (+!2383 lt!1916827 t!14174)) (= lambda!222224 lambda!222221))))

(declare-fun bs!1143902 () Bool)

(assert (= bs!1143902 (and d!1519475 b!4752586)))

(assert (=> bs!1143902 (= (= lt!1916904 (+!2383 lt!1916827 t!14174)) (= lambda!222224 lambda!222222))))

(assert (=> bs!1143902 (= (= lt!1916904 lt!1916915) (= lambda!222224 lambda!222223))))

(assert (=> d!1519475 true))

(declare-fun call!333023 () Bool)

(declare-fun c!811492 () Bool)

(declare-fun bm!333017 () Bool)

(declare-fun forall!11763 (List!53213 Int) Bool)

(assert (=> bm!333017 (= call!333023 (forall!11763 (toList!6117 (+!2383 lt!1916827 t!14174)) (ite c!811492 lambda!222221 lambda!222223)))))

(declare-fun bm!333018 () Bool)

(declare-fun call!333022 () Unit!136238)

(declare-fun lemmaContainsAllItsOwnKeys!878 (ListMap!5543) Unit!136238)

(assert (=> bm!333018 (= call!333022 (lemmaContainsAllItsOwnKeys!878 (+!2383 lt!1916827 t!14174)))))

(declare-fun e!2964721 () ListMap!5543)

(assert (=> b!4752586 (= e!2964721 lt!1916915)))

(declare-fun lt!1916910 () ListMap!5543)

(assert (=> b!4752586 (= lt!1916910 (+!2383 (+!2383 lt!1916827 t!14174) (h!59486 (t!360549 l!14304))))))

(assert (=> b!4752586 (= lt!1916915 (addToMapMapFromBucket!1573 (t!360549 (t!360549 l!14304)) (+!2383 (+!2383 lt!1916827 t!14174) (h!59486 (t!360549 l!14304)))))))

(declare-fun lt!1916905 () Unit!136238)

(assert (=> b!4752586 (= lt!1916905 call!333022)))

(assert (=> b!4752586 (forall!11763 (toList!6117 (+!2383 lt!1916827 t!14174)) lambda!222222)))

(declare-fun lt!1916917 () Unit!136238)

(assert (=> b!4752586 (= lt!1916917 lt!1916905)))

(assert (=> b!4752586 (forall!11763 (toList!6117 lt!1916910) lambda!222223)))

(declare-fun lt!1916914 () Unit!136238)

(declare-fun Unit!136242 () Unit!136238)

(assert (=> b!4752586 (= lt!1916914 Unit!136242)))

(assert (=> b!4752586 (forall!11763 (t!360549 (t!360549 l!14304)) lambda!222223)))

(declare-fun lt!1916909 () Unit!136238)

(declare-fun Unit!136243 () Unit!136238)

(assert (=> b!4752586 (= lt!1916909 Unit!136243)))

(declare-fun lt!1916913 () Unit!136238)

(declare-fun Unit!136244 () Unit!136238)

(assert (=> b!4752586 (= lt!1916913 Unit!136244)))

(declare-fun lt!1916920 () Unit!136238)

(declare-fun forallContained!3789 (List!53213 Int tuple2!54858) Unit!136238)

(assert (=> b!4752586 (= lt!1916920 (forallContained!3789 (toList!6117 lt!1916910) lambda!222223 (h!59486 (t!360549 l!14304))))))

(declare-fun contains!16514 (ListMap!5543 K!14523) Bool)

(assert (=> b!4752586 (contains!16514 lt!1916910 (_1!30723 (h!59486 (t!360549 l!14304))))))

(declare-fun lt!1916908 () Unit!136238)

(declare-fun Unit!136245 () Unit!136238)

(assert (=> b!4752586 (= lt!1916908 Unit!136245)))

(assert (=> b!4752586 (contains!16514 lt!1916915 (_1!30723 (h!59486 (t!360549 l!14304))))))

(declare-fun lt!1916907 () Unit!136238)

(declare-fun Unit!136246 () Unit!136238)

(assert (=> b!4752586 (= lt!1916907 Unit!136246)))

(assert (=> b!4752586 (forall!11763 (t!360549 l!14304) lambda!222223)))

(declare-fun lt!1916924 () Unit!136238)

(declare-fun Unit!136247 () Unit!136238)

(assert (=> b!4752586 (= lt!1916924 Unit!136247)))

(assert (=> b!4752586 (forall!11763 (toList!6117 lt!1916910) lambda!222223)))

(declare-fun lt!1916922 () Unit!136238)

(declare-fun Unit!136248 () Unit!136238)

(assert (=> b!4752586 (= lt!1916922 Unit!136248)))

(declare-fun lt!1916921 () Unit!136238)

(declare-fun Unit!136249 () Unit!136238)

(assert (=> b!4752586 (= lt!1916921 Unit!136249)))

(declare-fun lt!1916911 () Unit!136238)

(declare-fun addForallContainsKeyThenBeforeAdding!877 (ListMap!5543 ListMap!5543 K!14523 V!14769) Unit!136238)

(assert (=> b!4752586 (= lt!1916911 (addForallContainsKeyThenBeforeAdding!877 (+!2383 lt!1916827 t!14174) lt!1916915 (_1!30723 (h!59486 (t!360549 l!14304))) (_2!30723 (h!59486 (t!360549 l!14304)))))))

(declare-fun call!333024 () Bool)

(assert (=> b!4752586 call!333024))

(declare-fun lt!1916906 () Unit!136238)

(assert (=> b!4752586 (= lt!1916906 lt!1916911)))

(assert (=> b!4752586 call!333023))

(declare-fun lt!1916919 () Unit!136238)

(declare-fun Unit!136250 () Unit!136238)

(assert (=> b!4752586 (= lt!1916919 Unit!136250)))

(declare-fun res!2015512 () Bool)

(assert (=> b!4752586 (= res!2015512 (forall!11763 (t!360549 l!14304) lambda!222223))))

(declare-fun e!2964719 () Bool)

(assert (=> b!4752586 (=> (not res!2015512) (not e!2964719))))

(assert (=> b!4752586 e!2964719))

(declare-fun lt!1916912 () Unit!136238)

(declare-fun Unit!136251 () Unit!136238)

(assert (=> b!4752586 (= lt!1916912 Unit!136251)))

(assert (=> b!4752587 (= e!2964721 (+!2383 lt!1916827 t!14174))))

(declare-fun lt!1916923 () Unit!136238)

(assert (=> b!4752587 (= lt!1916923 call!333022)))

(assert (=> b!4752587 call!333024))

(declare-fun lt!1916916 () Unit!136238)

(assert (=> b!4752587 (= lt!1916916 lt!1916923)))

(assert (=> b!4752587 call!333023))

(declare-fun lt!1916918 () Unit!136238)

(declare-fun Unit!136252 () Unit!136238)

(assert (=> b!4752587 (= lt!1916918 Unit!136252)))

(declare-fun b!4752588 () Bool)

(assert (=> b!4752588 (= e!2964719 (forall!11763 (toList!6117 (+!2383 lt!1916827 t!14174)) lambda!222223))))

(declare-fun bm!333019 () Bool)

(assert (=> bm!333019 (= call!333024 (forall!11763 (toList!6117 (+!2383 lt!1916827 t!14174)) (ite c!811492 lambda!222221 lambda!222223)))))

(declare-fun e!2964720 () Bool)

(assert (=> d!1519475 e!2964720))

(declare-fun res!2015513 () Bool)

(assert (=> d!1519475 (=> (not res!2015513) (not e!2964720))))

(assert (=> d!1519475 (= res!2015513 (forall!11763 (t!360549 l!14304) lambda!222224))))

(assert (=> d!1519475 (= lt!1916904 e!2964721)))

(assert (=> d!1519475 (= c!811492 (is-Nil!53089 (t!360549 l!14304)))))

(assert (=> d!1519475 (noDuplicateKeys!2149 (t!360549 l!14304))))

(assert (=> d!1519475 (= (addToMapMapFromBucket!1573 (t!360549 l!14304) (+!2383 lt!1916827 t!14174)) lt!1916904)))

(declare-fun b!4752589 () Bool)

(declare-fun res!2015514 () Bool)

(assert (=> b!4752589 (=> (not res!2015514) (not e!2964720))))

(assert (=> b!4752589 (= res!2015514 (forall!11763 (toList!6117 (+!2383 lt!1916827 t!14174)) lambda!222224))))

(declare-fun b!4752590 () Bool)

(declare-fun invariantList!1595 (List!53213) Bool)

(assert (=> b!4752590 (= e!2964720 (invariantList!1595 (toList!6117 lt!1916904)))))

(assert (= (and d!1519475 c!811492) b!4752587))

(assert (= (and d!1519475 (not c!811492)) b!4752586))

(assert (= (and b!4752586 res!2015512) b!4752588))

(assert (= (or b!4752587 b!4752586) bm!333018))

(assert (= (or b!4752587 b!4752586) bm!333017))

(assert (= (or b!4752587 b!4752586) bm!333019))

(assert (= (and d!1519475 res!2015513) b!4752589))

(assert (= (and b!4752589 res!2015514) b!4752590))

(declare-fun m!5717089 () Bool)

(assert (=> b!4752589 m!5717089))

(declare-fun m!5717091 () Bool)

(assert (=> b!4752590 m!5717091))

(declare-fun m!5717093 () Bool)

(assert (=> bm!333017 m!5717093))

(declare-fun m!5717095 () Bool)

(assert (=> b!4752588 m!5717095))

(assert (=> bm!333018 m!5717003))

(declare-fun m!5717097 () Bool)

(assert (=> bm!333018 m!5717097))

(assert (=> bm!333019 m!5717093))

(declare-fun m!5717099 () Bool)

(assert (=> b!4752586 m!5717099))

(declare-fun m!5717101 () Bool)

(assert (=> b!4752586 m!5717101))

(declare-fun m!5717103 () Bool)

(assert (=> b!4752586 m!5717103))

(declare-fun m!5717105 () Bool)

(assert (=> b!4752586 m!5717105))

(assert (=> b!4752586 m!5717003))

(declare-fun m!5717107 () Bool)

(assert (=> b!4752586 m!5717107))

(assert (=> b!4752586 m!5717003))

(declare-fun m!5717109 () Bool)

(assert (=> b!4752586 m!5717109))

(declare-fun m!5717111 () Bool)

(assert (=> b!4752586 m!5717111))

(assert (=> b!4752586 m!5717107))

(declare-fun m!5717113 () Bool)

(assert (=> b!4752586 m!5717113))

(assert (=> b!4752586 m!5717111))

(declare-fun m!5717115 () Bool)

(assert (=> b!4752586 m!5717115))

(declare-fun m!5717117 () Bool)

(assert (=> b!4752586 m!5717117))

(assert (=> b!4752586 m!5717105))

(declare-fun m!5717119 () Bool)

(assert (=> d!1519475 m!5717119))

(declare-fun m!5717121 () Bool)

(assert (=> d!1519475 m!5717121))

(assert (=> b!4752540 d!1519475))

(declare-fun d!1519481 () Bool)

(declare-fun e!2964724 () Bool)

(assert (=> d!1519481 e!2964724))

(declare-fun res!2015519 () Bool)

(assert (=> d!1519481 (=> (not res!2015519) (not e!2964724))))

(declare-fun lt!1916936 () ListMap!5543)

(assert (=> d!1519481 (= res!2015519 (contains!16514 lt!1916936 (_1!30723 t!14174)))))

(declare-fun lt!1916934 () List!53213)

(assert (=> d!1519481 (= lt!1916936 (ListMap!5544 lt!1916934))))

(declare-fun lt!1916933 () Unit!136238)

(declare-fun lt!1916935 () Unit!136238)

(assert (=> d!1519481 (= lt!1916933 lt!1916935)))

(declare-datatypes ((Option!12532 0))(
  ( (None!12531) (Some!12531 (v!47232 V!14769)) )
))
(declare-fun getValueByKey!2082 (List!53213 K!14523) Option!12532)

(assert (=> d!1519481 (= (getValueByKey!2082 lt!1916934 (_1!30723 t!14174)) (Some!12531 (_2!30723 t!14174)))))

(declare-fun lemmaContainsTupThenGetReturnValue!1159 (List!53213 K!14523 V!14769) Unit!136238)

(assert (=> d!1519481 (= lt!1916935 (lemmaContainsTupThenGetReturnValue!1159 lt!1916934 (_1!30723 t!14174) (_2!30723 t!14174)))))

(declare-fun insertNoDuplicatedKeys!667 (List!53213 K!14523 V!14769) List!53213)

(assert (=> d!1519481 (= lt!1916934 (insertNoDuplicatedKeys!667 (toList!6117 lt!1916827) (_1!30723 t!14174) (_2!30723 t!14174)))))

(assert (=> d!1519481 (= (+!2383 lt!1916827 t!14174) lt!1916936)))

(declare-fun b!4752597 () Bool)

(declare-fun res!2015520 () Bool)

(assert (=> b!4752597 (=> (not res!2015520) (not e!2964724))))

(assert (=> b!4752597 (= res!2015520 (= (getValueByKey!2082 (toList!6117 lt!1916936) (_1!30723 t!14174)) (Some!12531 (_2!30723 t!14174))))))

(declare-fun b!4752598 () Bool)

(declare-fun contains!16515 (List!53213 tuple2!54858) Bool)

(assert (=> b!4752598 (= e!2964724 (contains!16515 (toList!6117 lt!1916936) t!14174))))

(assert (= (and d!1519481 res!2015519) b!4752597))

(assert (= (and b!4752597 res!2015520) b!4752598))

(declare-fun m!5717123 () Bool)

(assert (=> d!1519481 m!5717123))

(declare-fun m!5717125 () Bool)

(assert (=> d!1519481 m!5717125))

(declare-fun m!5717127 () Bool)

(assert (=> d!1519481 m!5717127))

(declare-fun m!5717129 () Bool)

(assert (=> d!1519481 m!5717129))

(declare-fun m!5717131 () Bool)

(assert (=> b!4752597 m!5717131))

(declare-fun m!5717133 () Bool)

(assert (=> b!4752598 m!5717133))

(assert (=> b!4752540 d!1519481))

(declare-fun d!1519483 () Bool)

(assert (=> d!1519483 (= (eq!1218 lt!1916828 (addToMapMapFromBucket!1573 (t!360549 l!14304) (+!2383 lt!1916825 (h!59486 l!14304)))) (= (content!9532 (toList!6117 lt!1916828)) (content!9532 (toList!6117 (addToMapMapFromBucket!1573 (t!360549 l!14304) (+!2383 lt!1916825 (h!59486 l!14304)))))))))

(declare-fun bs!1143903 () Bool)

(assert (= bs!1143903 d!1519483))

(declare-fun m!5717135 () Bool)

(assert (=> bs!1143903 m!5717135))

(declare-fun m!5717137 () Bool)

(assert (=> bs!1143903 m!5717137))

(assert (=> b!4752545 d!1519483))

(declare-fun bs!1143904 () Bool)

(declare-fun b!4752600 () Bool)

(assert (= bs!1143904 (and b!4752600 b!4752587)))

(declare-fun lambda!222225 () Int)

(assert (=> bs!1143904 (= (= (+!2383 lt!1916825 (h!59486 l!14304)) (+!2383 lt!1916827 t!14174)) (= lambda!222225 lambda!222221))))

(declare-fun bs!1143905 () Bool)

(assert (= bs!1143905 (and b!4752600 b!4752586)))

(assert (=> bs!1143905 (= (= (+!2383 lt!1916825 (h!59486 l!14304)) (+!2383 lt!1916827 t!14174)) (= lambda!222225 lambda!222222))))

(assert (=> bs!1143905 (= (= (+!2383 lt!1916825 (h!59486 l!14304)) lt!1916915) (= lambda!222225 lambda!222223))))

(declare-fun bs!1143906 () Bool)

(assert (= bs!1143906 (and b!4752600 d!1519475)))

(assert (=> bs!1143906 (= (= (+!2383 lt!1916825 (h!59486 l!14304)) lt!1916904) (= lambda!222225 lambda!222224))))

(assert (=> b!4752600 true))

(declare-fun bs!1143907 () Bool)

(declare-fun b!4752599 () Bool)

(assert (= bs!1143907 (and b!4752599 b!4752587)))

(declare-fun lambda!222226 () Int)

(assert (=> bs!1143907 (= (= (+!2383 lt!1916825 (h!59486 l!14304)) (+!2383 lt!1916827 t!14174)) (= lambda!222226 lambda!222221))))

(declare-fun bs!1143908 () Bool)

(assert (= bs!1143908 (and b!4752599 b!4752600)))

(assert (=> bs!1143908 (= lambda!222226 lambda!222225)))

(declare-fun bs!1143909 () Bool)

(assert (= bs!1143909 (and b!4752599 b!4752586)))

(assert (=> bs!1143909 (= (= (+!2383 lt!1916825 (h!59486 l!14304)) lt!1916915) (= lambda!222226 lambda!222223))))

(declare-fun bs!1143910 () Bool)

(assert (= bs!1143910 (and b!4752599 d!1519475)))

(assert (=> bs!1143910 (= (= (+!2383 lt!1916825 (h!59486 l!14304)) lt!1916904) (= lambda!222226 lambda!222224))))

(assert (=> bs!1143909 (= (= (+!2383 lt!1916825 (h!59486 l!14304)) (+!2383 lt!1916827 t!14174)) (= lambda!222226 lambda!222222))))

(assert (=> b!4752599 true))

(declare-fun lambda!222227 () Int)

(declare-fun lt!1916948 () ListMap!5543)

(assert (=> bs!1143907 (= (= lt!1916948 (+!2383 lt!1916827 t!14174)) (= lambda!222227 lambda!222221))))

(assert (=> bs!1143908 (= (= lt!1916948 (+!2383 lt!1916825 (h!59486 l!14304))) (= lambda!222227 lambda!222225))))

(assert (=> bs!1143909 (= (= lt!1916948 lt!1916915) (= lambda!222227 lambda!222223))))

(assert (=> bs!1143910 (= (= lt!1916948 lt!1916904) (= lambda!222227 lambda!222224))))

(assert (=> b!4752599 (= (= lt!1916948 (+!2383 lt!1916825 (h!59486 l!14304))) (= lambda!222227 lambda!222226))))

(assert (=> bs!1143909 (= (= lt!1916948 (+!2383 lt!1916827 t!14174)) (= lambda!222227 lambda!222222))))

(assert (=> b!4752599 true))

(declare-fun bs!1143911 () Bool)

(declare-fun d!1519485 () Bool)

(assert (= bs!1143911 (and d!1519485 b!4752587)))

(declare-fun lt!1916937 () ListMap!5543)

(declare-fun lambda!222228 () Int)

(assert (=> bs!1143911 (= (= lt!1916937 (+!2383 lt!1916827 t!14174)) (= lambda!222228 lambda!222221))))

(declare-fun bs!1143912 () Bool)

(assert (= bs!1143912 (and d!1519485 b!4752599)))

(assert (=> bs!1143912 (= (= lt!1916937 lt!1916948) (= lambda!222228 lambda!222227))))

(declare-fun bs!1143913 () Bool)

(assert (= bs!1143913 (and d!1519485 b!4752600)))

(assert (=> bs!1143913 (= (= lt!1916937 (+!2383 lt!1916825 (h!59486 l!14304))) (= lambda!222228 lambda!222225))))

(declare-fun bs!1143914 () Bool)

(assert (= bs!1143914 (and d!1519485 b!4752586)))

(assert (=> bs!1143914 (= (= lt!1916937 lt!1916915) (= lambda!222228 lambda!222223))))

(declare-fun bs!1143915 () Bool)

(assert (= bs!1143915 (and d!1519485 d!1519475)))

(assert (=> bs!1143915 (= (= lt!1916937 lt!1916904) (= lambda!222228 lambda!222224))))

(assert (=> bs!1143912 (= (= lt!1916937 (+!2383 lt!1916825 (h!59486 l!14304))) (= lambda!222228 lambda!222226))))

(assert (=> bs!1143914 (= (= lt!1916937 (+!2383 lt!1916827 t!14174)) (= lambda!222228 lambda!222222))))

(assert (=> d!1519485 true))

(declare-fun bm!333020 () Bool)

(declare-fun c!811493 () Bool)

(declare-fun call!333026 () Bool)

(assert (=> bm!333020 (= call!333026 (forall!11763 (toList!6117 (+!2383 lt!1916825 (h!59486 l!14304))) (ite c!811493 lambda!222225 lambda!222227)))))

(declare-fun bm!333021 () Bool)

(declare-fun call!333025 () Unit!136238)

(assert (=> bm!333021 (= call!333025 (lemmaContainsAllItsOwnKeys!878 (+!2383 lt!1916825 (h!59486 l!14304))))))

(declare-fun e!2964727 () ListMap!5543)

(assert (=> b!4752599 (= e!2964727 lt!1916948)))

(declare-fun lt!1916943 () ListMap!5543)

(assert (=> b!4752599 (= lt!1916943 (+!2383 (+!2383 lt!1916825 (h!59486 l!14304)) (h!59486 (t!360549 l!14304))))))

(assert (=> b!4752599 (= lt!1916948 (addToMapMapFromBucket!1573 (t!360549 (t!360549 l!14304)) (+!2383 (+!2383 lt!1916825 (h!59486 l!14304)) (h!59486 (t!360549 l!14304)))))))

(declare-fun lt!1916938 () Unit!136238)

(assert (=> b!4752599 (= lt!1916938 call!333025)))

(assert (=> b!4752599 (forall!11763 (toList!6117 (+!2383 lt!1916825 (h!59486 l!14304))) lambda!222226)))

(declare-fun lt!1916950 () Unit!136238)

(assert (=> b!4752599 (= lt!1916950 lt!1916938)))

(assert (=> b!4752599 (forall!11763 (toList!6117 lt!1916943) lambda!222227)))

(declare-fun lt!1916947 () Unit!136238)

(declare-fun Unit!136253 () Unit!136238)

(assert (=> b!4752599 (= lt!1916947 Unit!136253)))

(assert (=> b!4752599 (forall!11763 (t!360549 (t!360549 l!14304)) lambda!222227)))

(declare-fun lt!1916942 () Unit!136238)

(declare-fun Unit!136254 () Unit!136238)

(assert (=> b!4752599 (= lt!1916942 Unit!136254)))

(declare-fun lt!1916946 () Unit!136238)

(declare-fun Unit!136255 () Unit!136238)

(assert (=> b!4752599 (= lt!1916946 Unit!136255)))

(declare-fun lt!1916953 () Unit!136238)

(assert (=> b!4752599 (= lt!1916953 (forallContained!3789 (toList!6117 lt!1916943) lambda!222227 (h!59486 (t!360549 l!14304))))))

(assert (=> b!4752599 (contains!16514 lt!1916943 (_1!30723 (h!59486 (t!360549 l!14304))))))

(declare-fun lt!1916941 () Unit!136238)

(declare-fun Unit!136256 () Unit!136238)

(assert (=> b!4752599 (= lt!1916941 Unit!136256)))

(assert (=> b!4752599 (contains!16514 lt!1916948 (_1!30723 (h!59486 (t!360549 l!14304))))))

(declare-fun lt!1916940 () Unit!136238)

(declare-fun Unit!136257 () Unit!136238)

(assert (=> b!4752599 (= lt!1916940 Unit!136257)))

(assert (=> b!4752599 (forall!11763 (t!360549 l!14304) lambda!222227)))

(declare-fun lt!1916957 () Unit!136238)

(declare-fun Unit!136258 () Unit!136238)

(assert (=> b!4752599 (= lt!1916957 Unit!136258)))

(assert (=> b!4752599 (forall!11763 (toList!6117 lt!1916943) lambda!222227)))

(declare-fun lt!1916955 () Unit!136238)

(declare-fun Unit!136259 () Unit!136238)

(assert (=> b!4752599 (= lt!1916955 Unit!136259)))

(declare-fun lt!1916954 () Unit!136238)

(declare-fun Unit!136260 () Unit!136238)

(assert (=> b!4752599 (= lt!1916954 Unit!136260)))

(declare-fun lt!1916944 () Unit!136238)

(assert (=> b!4752599 (= lt!1916944 (addForallContainsKeyThenBeforeAdding!877 (+!2383 lt!1916825 (h!59486 l!14304)) lt!1916948 (_1!30723 (h!59486 (t!360549 l!14304))) (_2!30723 (h!59486 (t!360549 l!14304)))))))

(declare-fun call!333027 () Bool)

(assert (=> b!4752599 call!333027))

(declare-fun lt!1916939 () Unit!136238)

(assert (=> b!4752599 (= lt!1916939 lt!1916944)))

(assert (=> b!4752599 call!333026))

(declare-fun lt!1916952 () Unit!136238)

(declare-fun Unit!136261 () Unit!136238)

(assert (=> b!4752599 (= lt!1916952 Unit!136261)))

(declare-fun res!2015521 () Bool)

(assert (=> b!4752599 (= res!2015521 (forall!11763 (t!360549 l!14304) lambda!222227))))

(declare-fun e!2964725 () Bool)

(assert (=> b!4752599 (=> (not res!2015521) (not e!2964725))))

(assert (=> b!4752599 e!2964725))

(declare-fun lt!1916945 () Unit!136238)

(declare-fun Unit!136262 () Unit!136238)

(assert (=> b!4752599 (= lt!1916945 Unit!136262)))

(assert (=> b!4752600 (= e!2964727 (+!2383 lt!1916825 (h!59486 l!14304)))))

(declare-fun lt!1916956 () Unit!136238)

(assert (=> b!4752600 (= lt!1916956 call!333025)))

(assert (=> b!4752600 call!333027))

(declare-fun lt!1916949 () Unit!136238)

(assert (=> b!4752600 (= lt!1916949 lt!1916956)))

(assert (=> b!4752600 call!333026))

(declare-fun lt!1916951 () Unit!136238)

(declare-fun Unit!136263 () Unit!136238)

(assert (=> b!4752600 (= lt!1916951 Unit!136263)))

(declare-fun b!4752601 () Bool)

(assert (=> b!4752601 (= e!2964725 (forall!11763 (toList!6117 (+!2383 lt!1916825 (h!59486 l!14304))) lambda!222227))))

(declare-fun bm!333022 () Bool)

(assert (=> bm!333022 (= call!333027 (forall!11763 (toList!6117 (+!2383 lt!1916825 (h!59486 l!14304))) (ite c!811493 lambda!222225 lambda!222227)))))

(declare-fun e!2964726 () Bool)

(assert (=> d!1519485 e!2964726))

(declare-fun res!2015522 () Bool)

(assert (=> d!1519485 (=> (not res!2015522) (not e!2964726))))

(assert (=> d!1519485 (= res!2015522 (forall!11763 (t!360549 l!14304) lambda!222228))))

(assert (=> d!1519485 (= lt!1916937 e!2964727)))

(assert (=> d!1519485 (= c!811493 (is-Nil!53089 (t!360549 l!14304)))))

(assert (=> d!1519485 (noDuplicateKeys!2149 (t!360549 l!14304))))

(assert (=> d!1519485 (= (addToMapMapFromBucket!1573 (t!360549 l!14304) (+!2383 lt!1916825 (h!59486 l!14304))) lt!1916937)))

(declare-fun b!4752602 () Bool)

(declare-fun res!2015523 () Bool)

(assert (=> b!4752602 (=> (not res!2015523) (not e!2964726))))

(assert (=> b!4752602 (= res!2015523 (forall!11763 (toList!6117 (+!2383 lt!1916825 (h!59486 l!14304))) lambda!222228))))

(declare-fun b!4752603 () Bool)

(assert (=> b!4752603 (= e!2964726 (invariantList!1595 (toList!6117 lt!1916937)))))

(assert (= (and d!1519485 c!811493) b!4752600))

(assert (= (and d!1519485 (not c!811493)) b!4752599))

(assert (= (and b!4752599 res!2015521) b!4752601))

(assert (= (or b!4752600 b!4752599) bm!333021))

(assert (= (or b!4752600 b!4752599) bm!333020))

(assert (= (or b!4752600 b!4752599) bm!333022))

(assert (= (and d!1519485 res!2015522) b!4752602))

(assert (= (and b!4752602 res!2015523) b!4752603))

(declare-fun m!5717139 () Bool)

(assert (=> b!4752602 m!5717139))

(declare-fun m!5717141 () Bool)

(assert (=> b!4752603 m!5717141))

(declare-fun m!5717143 () Bool)

(assert (=> bm!333020 m!5717143))

(declare-fun m!5717145 () Bool)

(assert (=> b!4752601 m!5717145))

(assert (=> bm!333021 m!5717017))

(declare-fun m!5717147 () Bool)

(assert (=> bm!333021 m!5717147))

(assert (=> bm!333022 m!5717143))

(declare-fun m!5717149 () Bool)

(assert (=> b!4752599 m!5717149))

(declare-fun m!5717151 () Bool)

(assert (=> b!4752599 m!5717151))

(declare-fun m!5717153 () Bool)

(assert (=> b!4752599 m!5717153))

(declare-fun m!5717155 () Bool)

(assert (=> b!4752599 m!5717155))

(assert (=> b!4752599 m!5717017))

(declare-fun m!5717157 () Bool)

(assert (=> b!4752599 m!5717157))

(assert (=> b!4752599 m!5717017))

(declare-fun m!5717159 () Bool)

(assert (=> b!4752599 m!5717159))

(declare-fun m!5717161 () Bool)

(assert (=> b!4752599 m!5717161))

(assert (=> b!4752599 m!5717157))

(declare-fun m!5717163 () Bool)

(assert (=> b!4752599 m!5717163))

(assert (=> b!4752599 m!5717161))

(declare-fun m!5717165 () Bool)

(assert (=> b!4752599 m!5717165))

(declare-fun m!5717167 () Bool)

(assert (=> b!4752599 m!5717167))

(assert (=> b!4752599 m!5717155))

(declare-fun m!5717169 () Bool)

(assert (=> d!1519485 m!5717169))

(assert (=> d!1519485 m!5717121))

(assert (=> b!4752545 d!1519485))

(declare-fun d!1519487 () Bool)

(declare-fun e!2964728 () Bool)

(assert (=> d!1519487 e!2964728))

(declare-fun res!2015524 () Bool)

(assert (=> d!1519487 (=> (not res!2015524) (not e!2964728))))

(declare-fun lt!1916961 () ListMap!5543)

(assert (=> d!1519487 (= res!2015524 (contains!16514 lt!1916961 (_1!30723 (h!59486 l!14304))))))

(declare-fun lt!1916959 () List!53213)

(assert (=> d!1519487 (= lt!1916961 (ListMap!5544 lt!1916959))))

(declare-fun lt!1916958 () Unit!136238)

(declare-fun lt!1916960 () Unit!136238)

(assert (=> d!1519487 (= lt!1916958 lt!1916960)))

(assert (=> d!1519487 (= (getValueByKey!2082 lt!1916959 (_1!30723 (h!59486 l!14304))) (Some!12531 (_2!30723 (h!59486 l!14304))))))

(assert (=> d!1519487 (= lt!1916960 (lemmaContainsTupThenGetReturnValue!1159 lt!1916959 (_1!30723 (h!59486 l!14304)) (_2!30723 (h!59486 l!14304))))))

(assert (=> d!1519487 (= lt!1916959 (insertNoDuplicatedKeys!667 (toList!6117 lt!1916825) (_1!30723 (h!59486 l!14304)) (_2!30723 (h!59486 l!14304))))))

(assert (=> d!1519487 (= (+!2383 lt!1916825 (h!59486 l!14304)) lt!1916961)))

(declare-fun b!4752604 () Bool)

(declare-fun res!2015525 () Bool)

(assert (=> b!4752604 (=> (not res!2015525) (not e!2964728))))

(assert (=> b!4752604 (= res!2015525 (= (getValueByKey!2082 (toList!6117 lt!1916961) (_1!30723 (h!59486 l!14304))) (Some!12531 (_2!30723 (h!59486 l!14304)))))))

(declare-fun b!4752605 () Bool)

(assert (=> b!4752605 (= e!2964728 (contains!16515 (toList!6117 lt!1916961) (h!59486 l!14304)))))

(assert (= (and d!1519487 res!2015524) b!4752604))

(assert (= (and b!4752604 res!2015525) b!4752605))

(declare-fun m!5717171 () Bool)

(assert (=> d!1519487 m!5717171))

(declare-fun m!5717173 () Bool)

(assert (=> d!1519487 m!5717173))

(declare-fun m!5717175 () Bool)

(assert (=> d!1519487 m!5717175))

(declare-fun m!5717177 () Bool)

(assert (=> d!1519487 m!5717177))

(declare-fun m!5717179 () Bool)

(assert (=> b!4752604 m!5717179))

(declare-fun m!5717181 () Bool)

(assert (=> b!4752605 m!5717181))

(assert (=> b!4752545 d!1519487))

(declare-fun d!1519489 () Bool)

(declare-fun res!2015530 () Bool)

(declare-fun e!2964733 () Bool)

(assert (=> d!1519489 (=> res!2015530 e!2964733)))

(assert (=> d!1519489 (= res!2015530 (not (is-Cons!53089 lt!1916824)))))

(assert (=> d!1519489 (= (noDuplicateKeys!2149 lt!1916824) e!2964733)))

(declare-fun b!4752610 () Bool)

(declare-fun e!2964734 () Bool)

(assert (=> b!4752610 (= e!2964733 e!2964734)))

(declare-fun res!2015531 () Bool)

(assert (=> b!4752610 (=> (not res!2015531) (not e!2964734))))

(declare-fun containsKey!3560 (List!53213 K!14523) Bool)

(assert (=> b!4752610 (= res!2015531 (not (containsKey!3560 (t!360549 lt!1916824) (_1!30723 (h!59486 lt!1916824)))))))

(declare-fun b!4752611 () Bool)

(assert (=> b!4752611 (= e!2964734 (noDuplicateKeys!2149 (t!360549 lt!1916824)))))

(assert (= (and d!1519489 (not res!2015530)) b!4752610))

(assert (= (and b!4752610 res!2015531) b!4752611))

(declare-fun m!5717183 () Bool)

(assert (=> b!4752610 m!5717183))

(declare-fun m!5717185 () Bool)

(assert (=> b!4752611 m!5717185))

(assert (=> b!4752544 d!1519489))

(declare-fun d!1519491 () Bool)

(declare-fun res!2015532 () Bool)

(declare-fun e!2964735 () Bool)

(assert (=> d!1519491 (=> res!2015532 e!2964735)))

(assert (=> d!1519491 (= res!2015532 (not (is-Cons!53089 l!14304)))))

(assert (=> d!1519491 (= (noDuplicateKeys!2149 l!14304) e!2964735)))

(declare-fun b!4752612 () Bool)

(declare-fun e!2964736 () Bool)

(assert (=> b!4752612 (= e!2964735 e!2964736)))

(declare-fun res!2015533 () Bool)

(assert (=> b!4752612 (=> (not res!2015533) (not e!2964736))))

(assert (=> b!4752612 (= res!2015533 (not (containsKey!3560 (t!360549 l!14304) (_1!30723 (h!59486 l!14304)))))))

(declare-fun b!4752613 () Bool)

(assert (=> b!4752613 (= e!2964736 (noDuplicateKeys!2149 (t!360549 l!14304)))))

(assert (= (and d!1519491 (not res!2015532)) b!4752612))

(assert (= (and b!4752612 res!2015533) b!4752613))

(declare-fun m!5717187 () Bool)

(assert (=> b!4752612 m!5717187))

(assert (=> b!4752613 m!5717121))

(assert (=> start!485574 d!1519491))

(declare-fun d!1519493 () Bool)

(assert (=> d!1519493 (= (inv!68394 acc!1214) (invariantList!1595 (toList!6117 acc!1214)))))

(declare-fun bs!1143916 () Bool)

(assert (= bs!1143916 d!1519493))

(declare-fun m!5717189 () Bool)

(assert (=> bs!1143916 m!5717189))

(assert (=> start!485574 d!1519493))

(declare-fun d!1519495 () Bool)

(assert (=> d!1519495 (= (eq!1218 lt!1916826 (addToMapMapFromBucket!1573 l!14304 acc!1214)) (= (content!9532 (toList!6117 lt!1916826)) (content!9532 (toList!6117 (addToMapMapFromBucket!1573 l!14304 acc!1214)))))))

(declare-fun bs!1143917 () Bool)

(assert (= bs!1143917 d!1519495))

(declare-fun m!5717191 () Bool)

(assert (=> bs!1143917 m!5717191))

(declare-fun m!5717193 () Bool)

(assert (=> bs!1143917 m!5717193))

(assert (=> b!4752547 d!1519495))

(declare-fun bs!1143918 () Bool)

(declare-fun b!4752615 () Bool)

(assert (= bs!1143918 (and b!4752615 b!4752587)))

(declare-fun lambda!222229 () Int)

(assert (=> bs!1143918 (= (= acc!1214 (+!2383 lt!1916827 t!14174)) (= lambda!222229 lambda!222221))))

(declare-fun bs!1143919 () Bool)

(assert (= bs!1143919 (and b!4752615 b!4752599)))

(assert (=> bs!1143919 (= (= acc!1214 lt!1916948) (= lambda!222229 lambda!222227))))

(declare-fun bs!1143920 () Bool)

(assert (= bs!1143920 (and b!4752615 b!4752600)))

(assert (=> bs!1143920 (= (= acc!1214 (+!2383 lt!1916825 (h!59486 l!14304))) (= lambda!222229 lambda!222225))))

(declare-fun bs!1143921 () Bool)

(assert (= bs!1143921 (and b!4752615 d!1519485)))

(assert (=> bs!1143921 (= (= acc!1214 lt!1916937) (= lambda!222229 lambda!222228))))

(declare-fun bs!1143922 () Bool)

(assert (= bs!1143922 (and b!4752615 b!4752586)))

(assert (=> bs!1143922 (= (= acc!1214 lt!1916915) (= lambda!222229 lambda!222223))))

(declare-fun bs!1143923 () Bool)

(assert (= bs!1143923 (and b!4752615 d!1519475)))

(assert (=> bs!1143923 (= (= acc!1214 lt!1916904) (= lambda!222229 lambda!222224))))

(assert (=> bs!1143919 (= (= acc!1214 (+!2383 lt!1916825 (h!59486 l!14304))) (= lambda!222229 lambda!222226))))

(assert (=> bs!1143922 (= (= acc!1214 (+!2383 lt!1916827 t!14174)) (= lambda!222229 lambda!222222))))

(assert (=> b!4752615 true))

(declare-fun bs!1143924 () Bool)

(declare-fun b!4752614 () Bool)

(assert (= bs!1143924 (and b!4752614 b!4752587)))

(declare-fun lambda!222230 () Int)

(assert (=> bs!1143924 (= (= acc!1214 (+!2383 lt!1916827 t!14174)) (= lambda!222230 lambda!222221))))

(declare-fun bs!1143925 () Bool)

(assert (= bs!1143925 (and b!4752614 b!4752599)))

(assert (=> bs!1143925 (= (= acc!1214 lt!1916948) (= lambda!222230 lambda!222227))))

(declare-fun bs!1143926 () Bool)

(assert (= bs!1143926 (and b!4752614 b!4752600)))

(assert (=> bs!1143926 (= (= acc!1214 (+!2383 lt!1916825 (h!59486 l!14304))) (= lambda!222230 lambda!222225))))

(declare-fun bs!1143927 () Bool)

(assert (= bs!1143927 (and b!4752614 d!1519485)))

(assert (=> bs!1143927 (= (= acc!1214 lt!1916937) (= lambda!222230 lambda!222228))))

(declare-fun bs!1143928 () Bool)

(assert (= bs!1143928 (and b!4752614 b!4752586)))

(assert (=> bs!1143928 (= (= acc!1214 lt!1916915) (= lambda!222230 lambda!222223))))

(declare-fun bs!1143929 () Bool)

(assert (= bs!1143929 (and b!4752614 d!1519475)))

(assert (=> bs!1143929 (= (= acc!1214 lt!1916904) (= lambda!222230 lambda!222224))))

(assert (=> bs!1143925 (= (= acc!1214 (+!2383 lt!1916825 (h!59486 l!14304))) (= lambda!222230 lambda!222226))))

(assert (=> bs!1143928 (= (= acc!1214 (+!2383 lt!1916827 t!14174)) (= lambda!222230 lambda!222222))))

(declare-fun bs!1143930 () Bool)

(assert (= bs!1143930 (and b!4752614 b!4752615)))

(assert (=> bs!1143930 (= lambda!222230 lambda!222229)))

(assert (=> b!4752614 true))

(declare-fun lambda!222231 () Int)

(declare-fun lt!1916973 () ListMap!5543)

(assert (=> bs!1143924 (= (= lt!1916973 (+!2383 lt!1916827 t!14174)) (= lambda!222231 lambda!222221))))

(assert (=> bs!1143925 (= (= lt!1916973 lt!1916948) (= lambda!222231 lambda!222227))))

(assert (=> bs!1143926 (= (= lt!1916973 (+!2383 lt!1916825 (h!59486 l!14304))) (= lambda!222231 lambda!222225))))

(assert (=> bs!1143927 (= (= lt!1916973 lt!1916937) (= lambda!222231 lambda!222228))))

(assert (=> bs!1143928 (= (= lt!1916973 lt!1916915) (= lambda!222231 lambda!222223))))

(assert (=> bs!1143929 (= (= lt!1916973 lt!1916904) (= lambda!222231 lambda!222224))))

(assert (=> bs!1143925 (= (= lt!1916973 (+!2383 lt!1916825 (h!59486 l!14304))) (= lambda!222231 lambda!222226))))

(assert (=> bs!1143928 (= (= lt!1916973 (+!2383 lt!1916827 t!14174)) (= lambda!222231 lambda!222222))))

(assert (=> bs!1143930 (= (= lt!1916973 acc!1214) (= lambda!222231 lambda!222229))))

(assert (=> b!4752614 (= (= lt!1916973 acc!1214) (= lambda!222231 lambda!222230))))

(assert (=> b!4752614 true))

(declare-fun bs!1143931 () Bool)

(declare-fun d!1519497 () Bool)

(assert (= bs!1143931 (and d!1519497 b!4752587)))

(declare-fun lt!1916962 () ListMap!5543)

(declare-fun lambda!222232 () Int)

(assert (=> bs!1143931 (= (= lt!1916962 (+!2383 lt!1916827 t!14174)) (= lambda!222232 lambda!222221))))

(declare-fun bs!1143932 () Bool)

(assert (= bs!1143932 (and d!1519497 b!4752599)))

(assert (=> bs!1143932 (= (= lt!1916962 lt!1916948) (= lambda!222232 lambda!222227))))

(declare-fun bs!1143933 () Bool)

(assert (= bs!1143933 (and d!1519497 b!4752614)))

(assert (=> bs!1143933 (= (= lt!1916962 lt!1916973) (= lambda!222232 lambda!222231))))

(declare-fun bs!1143934 () Bool)

(assert (= bs!1143934 (and d!1519497 b!4752600)))

(assert (=> bs!1143934 (= (= lt!1916962 (+!2383 lt!1916825 (h!59486 l!14304))) (= lambda!222232 lambda!222225))))

(declare-fun bs!1143935 () Bool)

(assert (= bs!1143935 (and d!1519497 d!1519485)))

(assert (=> bs!1143935 (= (= lt!1916962 lt!1916937) (= lambda!222232 lambda!222228))))

(declare-fun bs!1143936 () Bool)

(assert (= bs!1143936 (and d!1519497 b!4752586)))

(assert (=> bs!1143936 (= (= lt!1916962 lt!1916915) (= lambda!222232 lambda!222223))))

(declare-fun bs!1143937 () Bool)

(assert (= bs!1143937 (and d!1519497 d!1519475)))

(assert (=> bs!1143937 (= (= lt!1916962 lt!1916904) (= lambda!222232 lambda!222224))))

(assert (=> bs!1143932 (= (= lt!1916962 (+!2383 lt!1916825 (h!59486 l!14304))) (= lambda!222232 lambda!222226))))

(assert (=> bs!1143936 (= (= lt!1916962 (+!2383 lt!1916827 t!14174)) (= lambda!222232 lambda!222222))))

(declare-fun bs!1143938 () Bool)

(assert (= bs!1143938 (and d!1519497 b!4752615)))

(assert (=> bs!1143938 (= (= lt!1916962 acc!1214) (= lambda!222232 lambda!222229))))

(assert (=> bs!1143933 (= (= lt!1916962 acc!1214) (= lambda!222232 lambda!222230))))

(assert (=> d!1519497 true))

(declare-fun c!811494 () Bool)

(declare-fun bm!333023 () Bool)

(declare-fun call!333029 () Bool)

(assert (=> bm!333023 (= call!333029 (forall!11763 (toList!6117 acc!1214) (ite c!811494 lambda!222229 lambda!222231)))))

(declare-fun bm!333024 () Bool)

(declare-fun call!333028 () Unit!136238)

(assert (=> bm!333024 (= call!333028 (lemmaContainsAllItsOwnKeys!878 acc!1214))))

(declare-fun e!2964739 () ListMap!5543)

(assert (=> b!4752614 (= e!2964739 lt!1916973)))

(declare-fun lt!1916968 () ListMap!5543)

(assert (=> b!4752614 (= lt!1916968 (+!2383 acc!1214 (h!59486 l!14304)))))

(assert (=> b!4752614 (= lt!1916973 (addToMapMapFromBucket!1573 (t!360549 l!14304) (+!2383 acc!1214 (h!59486 l!14304))))))

(declare-fun lt!1916963 () Unit!136238)

(assert (=> b!4752614 (= lt!1916963 call!333028)))

(assert (=> b!4752614 (forall!11763 (toList!6117 acc!1214) lambda!222230)))

(declare-fun lt!1916975 () Unit!136238)

(assert (=> b!4752614 (= lt!1916975 lt!1916963)))

(assert (=> b!4752614 (forall!11763 (toList!6117 lt!1916968) lambda!222231)))

(declare-fun lt!1916972 () Unit!136238)

(declare-fun Unit!136275 () Unit!136238)

(assert (=> b!4752614 (= lt!1916972 Unit!136275)))

(assert (=> b!4752614 (forall!11763 (t!360549 l!14304) lambda!222231)))

(declare-fun lt!1916967 () Unit!136238)

(declare-fun Unit!136276 () Unit!136238)

(assert (=> b!4752614 (= lt!1916967 Unit!136276)))

(declare-fun lt!1916971 () Unit!136238)

(declare-fun Unit!136277 () Unit!136238)

(assert (=> b!4752614 (= lt!1916971 Unit!136277)))

(declare-fun lt!1916978 () Unit!136238)

(assert (=> b!4752614 (= lt!1916978 (forallContained!3789 (toList!6117 lt!1916968) lambda!222231 (h!59486 l!14304)))))

(assert (=> b!4752614 (contains!16514 lt!1916968 (_1!30723 (h!59486 l!14304)))))

(declare-fun lt!1916966 () Unit!136238)

(declare-fun Unit!136278 () Unit!136238)

(assert (=> b!4752614 (= lt!1916966 Unit!136278)))

(assert (=> b!4752614 (contains!16514 lt!1916973 (_1!30723 (h!59486 l!14304)))))

(declare-fun lt!1916965 () Unit!136238)

(declare-fun Unit!136279 () Unit!136238)

(assert (=> b!4752614 (= lt!1916965 Unit!136279)))

(assert (=> b!4752614 (forall!11763 l!14304 lambda!222231)))

(declare-fun lt!1916982 () Unit!136238)

(declare-fun Unit!136280 () Unit!136238)

(assert (=> b!4752614 (= lt!1916982 Unit!136280)))

(assert (=> b!4752614 (forall!11763 (toList!6117 lt!1916968) lambda!222231)))

(declare-fun lt!1916980 () Unit!136238)

(declare-fun Unit!136281 () Unit!136238)

(assert (=> b!4752614 (= lt!1916980 Unit!136281)))

(declare-fun lt!1916979 () Unit!136238)

(declare-fun Unit!136282 () Unit!136238)

(assert (=> b!4752614 (= lt!1916979 Unit!136282)))

(declare-fun lt!1916969 () Unit!136238)

(assert (=> b!4752614 (= lt!1916969 (addForallContainsKeyThenBeforeAdding!877 acc!1214 lt!1916973 (_1!30723 (h!59486 l!14304)) (_2!30723 (h!59486 l!14304))))))

(declare-fun call!333030 () Bool)

(assert (=> b!4752614 call!333030))

(declare-fun lt!1916964 () Unit!136238)

(assert (=> b!4752614 (= lt!1916964 lt!1916969)))

(assert (=> b!4752614 call!333029))

(declare-fun lt!1916977 () Unit!136238)

(declare-fun Unit!136283 () Unit!136238)

(assert (=> b!4752614 (= lt!1916977 Unit!136283)))

(declare-fun res!2015534 () Bool)

(assert (=> b!4752614 (= res!2015534 (forall!11763 l!14304 lambda!222231))))

(declare-fun e!2964737 () Bool)

(assert (=> b!4752614 (=> (not res!2015534) (not e!2964737))))

(assert (=> b!4752614 e!2964737))

(declare-fun lt!1916970 () Unit!136238)

(declare-fun Unit!136284 () Unit!136238)

(assert (=> b!4752614 (= lt!1916970 Unit!136284)))

(assert (=> b!4752615 (= e!2964739 acc!1214)))

(declare-fun lt!1916981 () Unit!136238)

(assert (=> b!4752615 (= lt!1916981 call!333028)))

(assert (=> b!4752615 call!333030))

(declare-fun lt!1916974 () Unit!136238)

(assert (=> b!4752615 (= lt!1916974 lt!1916981)))

(assert (=> b!4752615 call!333029))

(declare-fun lt!1916976 () Unit!136238)

(declare-fun Unit!136285 () Unit!136238)

(assert (=> b!4752615 (= lt!1916976 Unit!136285)))

(declare-fun b!4752616 () Bool)

(assert (=> b!4752616 (= e!2964737 (forall!11763 (toList!6117 acc!1214) lambda!222231))))

(declare-fun bm!333025 () Bool)

(assert (=> bm!333025 (= call!333030 (forall!11763 (toList!6117 acc!1214) (ite c!811494 lambda!222229 lambda!222231)))))

(declare-fun e!2964738 () Bool)

(assert (=> d!1519497 e!2964738))

(declare-fun res!2015535 () Bool)

(assert (=> d!1519497 (=> (not res!2015535) (not e!2964738))))

(assert (=> d!1519497 (= res!2015535 (forall!11763 l!14304 lambda!222232))))

(assert (=> d!1519497 (= lt!1916962 e!2964739)))

(assert (=> d!1519497 (= c!811494 (is-Nil!53089 l!14304))))

(assert (=> d!1519497 (noDuplicateKeys!2149 l!14304)))

(assert (=> d!1519497 (= (addToMapMapFromBucket!1573 l!14304 acc!1214) lt!1916962)))

(declare-fun b!4752617 () Bool)

(declare-fun res!2015536 () Bool)

(assert (=> b!4752617 (=> (not res!2015536) (not e!2964738))))

(assert (=> b!4752617 (= res!2015536 (forall!11763 (toList!6117 acc!1214) lambda!222232))))

(declare-fun b!4752618 () Bool)

(assert (=> b!4752618 (= e!2964738 (invariantList!1595 (toList!6117 lt!1916962)))))

(assert (= (and d!1519497 c!811494) b!4752615))

(assert (= (and d!1519497 (not c!811494)) b!4752614))

(assert (= (and b!4752614 res!2015534) b!4752616))

(assert (= (or b!4752615 b!4752614) bm!333024))

(assert (= (or b!4752615 b!4752614) bm!333023))

(assert (= (or b!4752615 b!4752614) bm!333025))

(assert (= (and d!1519497 res!2015535) b!4752617))

(assert (= (and b!4752617 res!2015536) b!4752618))

(declare-fun m!5717195 () Bool)

(assert (=> b!4752617 m!5717195))

(declare-fun m!5717197 () Bool)

(assert (=> b!4752618 m!5717197))

(declare-fun m!5717199 () Bool)

(assert (=> bm!333023 m!5717199))

(declare-fun m!5717201 () Bool)

(assert (=> b!4752616 m!5717201))

(declare-fun m!5717203 () Bool)

(assert (=> bm!333024 m!5717203))

(assert (=> bm!333025 m!5717199))

(declare-fun m!5717205 () Bool)

(assert (=> b!4752614 m!5717205))

(declare-fun m!5717207 () Bool)

(assert (=> b!4752614 m!5717207))

(declare-fun m!5717209 () Bool)

(assert (=> b!4752614 m!5717209))

(declare-fun m!5717211 () Bool)

(assert (=> b!4752614 m!5717211))

(assert (=> b!4752614 m!5716987))

(declare-fun m!5717213 () Bool)

(assert (=> b!4752614 m!5717213))

(declare-fun m!5717215 () Bool)

(assert (=> b!4752614 m!5717215))

(assert (=> b!4752614 m!5716987))

(declare-fun m!5717217 () Bool)

(assert (=> b!4752614 m!5717217))

(assert (=> b!4752614 m!5717215))

(declare-fun m!5717219 () Bool)

(assert (=> b!4752614 m!5717219))

(declare-fun m!5717221 () Bool)

(assert (=> b!4752614 m!5717221))

(assert (=> b!4752614 m!5717211))

(declare-fun m!5717223 () Bool)

(assert (=> d!1519497 m!5717223))

(assert (=> d!1519497 m!5717013))

(assert (=> b!4752547 d!1519497))

(declare-fun bs!1143939 () Bool)

(declare-fun b!4752620 () Bool)

(assert (= bs!1143939 (and b!4752620 b!4752587)))

(declare-fun lambda!222239 () Int)

(assert (=> bs!1143939 (= (= lt!1916827 (+!2383 lt!1916827 t!14174)) (= lambda!222239 lambda!222221))))

(declare-fun bs!1143940 () Bool)

(assert (= bs!1143940 (and b!4752620 d!1519497)))

(assert (=> bs!1143940 (= (= lt!1916827 lt!1916962) (= lambda!222239 lambda!222232))))

(declare-fun bs!1143941 () Bool)

(assert (= bs!1143941 (and b!4752620 b!4752599)))

(assert (=> bs!1143941 (= (= lt!1916827 lt!1916948) (= lambda!222239 lambda!222227))))

(declare-fun bs!1143942 () Bool)

(assert (= bs!1143942 (and b!4752620 b!4752614)))

(assert (=> bs!1143942 (= (= lt!1916827 lt!1916973) (= lambda!222239 lambda!222231))))

(declare-fun bs!1143943 () Bool)

(assert (= bs!1143943 (and b!4752620 b!4752600)))

(assert (=> bs!1143943 (= (= lt!1916827 (+!2383 lt!1916825 (h!59486 l!14304))) (= lambda!222239 lambda!222225))))

(declare-fun bs!1143944 () Bool)

(assert (= bs!1143944 (and b!4752620 d!1519485)))

(assert (=> bs!1143944 (= (= lt!1916827 lt!1916937) (= lambda!222239 lambda!222228))))

(declare-fun bs!1143945 () Bool)

(assert (= bs!1143945 (and b!4752620 b!4752586)))

(assert (=> bs!1143945 (= (= lt!1916827 lt!1916915) (= lambda!222239 lambda!222223))))

(declare-fun bs!1143946 () Bool)

(assert (= bs!1143946 (and b!4752620 d!1519475)))

(assert (=> bs!1143946 (= (= lt!1916827 lt!1916904) (= lambda!222239 lambda!222224))))

(assert (=> bs!1143941 (= (= lt!1916827 (+!2383 lt!1916825 (h!59486 l!14304))) (= lambda!222239 lambda!222226))))

(assert (=> bs!1143945 (= (= lt!1916827 (+!2383 lt!1916827 t!14174)) (= lambda!222239 lambda!222222))))

(declare-fun bs!1143947 () Bool)

(assert (= bs!1143947 (and b!4752620 b!4752615)))

(assert (=> bs!1143947 (= (= lt!1916827 acc!1214) (= lambda!222239 lambda!222229))))

(assert (=> bs!1143942 (= (= lt!1916827 acc!1214) (= lambda!222239 lambda!222230))))

(assert (=> b!4752620 true))

(declare-fun bs!1143948 () Bool)

(declare-fun b!4752619 () Bool)

(assert (= bs!1143948 (and b!4752619 b!4752587)))

(declare-fun lambda!222242 () Int)

(assert (=> bs!1143948 (= (= lt!1916827 (+!2383 lt!1916827 t!14174)) (= lambda!222242 lambda!222221))))

(declare-fun bs!1143949 () Bool)

(assert (= bs!1143949 (and b!4752619 b!4752620)))

(assert (=> bs!1143949 (= lambda!222242 lambda!222239)))

(declare-fun bs!1143950 () Bool)

(assert (= bs!1143950 (and b!4752619 d!1519497)))

(assert (=> bs!1143950 (= (= lt!1916827 lt!1916962) (= lambda!222242 lambda!222232))))

(declare-fun bs!1143951 () Bool)

(assert (= bs!1143951 (and b!4752619 b!4752599)))

(assert (=> bs!1143951 (= (= lt!1916827 lt!1916948) (= lambda!222242 lambda!222227))))

(declare-fun bs!1143952 () Bool)

(assert (= bs!1143952 (and b!4752619 b!4752614)))

(assert (=> bs!1143952 (= (= lt!1916827 lt!1916973) (= lambda!222242 lambda!222231))))

(declare-fun bs!1143953 () Bool)

(assert (= bs!1143953 (and b!4752619 b!4752600)))

(assert (=> bs!1143953 (= (= lt!1916827 (+!2383 lt!1916825 (h!59486 l!14304))) (= lambda!222242 lambda!222225))))

(declare-fun bs!1143954 () Bool)

(assert (= bs!1143954 (and b!4752619 d!1519485)))

(assert (=> bs!1143954 (= (= lt!1916827 lt!1916937) (= lambda!222242 lambda!222228))))

(declare-fun bs!1143955 () Bool)

(assert (= bs!1143955 (and b!4752619 b!4752586)))

(assert (=> bs!1143955 (= (= lt!1916827 lt!1916915) (= lambda!222242 lambda!222223))))

(declare-fun bs!1143956 () Bool)

(assert (= bs!1143956 (and b!4752619 d!1519475)))

(assert (=> bs!1143956 (= (= lt!1916827 lt!1916904) (= lambda!222242 lambda!222224))))

(assert (=> bs!1143951 (= (= lt!1916827 (+!2383 lt!1916825 (h!59486 l!14304))) (= lambda!222242 lambda!222226))))

(assert (=> bs!1143955 (= (= lt!1916827 (+!2383 lt!1916827 t!14174)) (= lambda!222242 lambda!222222))))

(declare-fun bs!1143957 () Bool)

(assert (= bs!1143957 (and b!4752619 b!4752615)))

(assert (=> bs!1143957 (= (= lt!1916827 acc!1214) (= lambda!222242 lambda!222229))))

(assert (=> bs!1143952 (= (= lt!1916827 acc!1214) (= lambda!222242 lambda!222230))))

(assert (=> b!4752619 true))

(declare-fun lambda!222245 () Int)

(declare-fun lt!1917004 () ListMap!5543)

(assert (=> bs!1143948 (= (= lt!1917004 (+!2383 lt!1916827 t!14174)) (= lambda!222245 lambda!222221))))

(assert (=> bs!1143949 (= (= lt!1917004 lt!1916827) (= lambda!222245 lambda!222239))))

(assert (=> bs!1143950 (= (= lt!1917004 lt!1916962) (= lambda!222245 lambda!222232))))

(assert (=> bs!1143951 (= (= lt!1917004 lt!1916948) (= lambda!222245 lambda!222227))))

(assert (=> bs!1143953 (= (= lt!1917004 (+!2383 lt!1916825 (h!59486 l!14304))) (= lambda!222245 lambda!222225))))

(assert (=> bs!1143954 (= (= lt!1917004 lt!1916937) (= lambda!222245 lambda!222228))))

(assert (=> bs!1143955 (= (= lt!1917004 lt!1916915) (= lambda!222245 lambda!222223))))

(assert (=> bs!1143956 (= (= lt!1917004 lt!1916904) (= lambda!222245 lambda!222224))))

(assert (=> bs!1143951 (= (= lt!1917004 (+!2383 lt!1916825 (h!59486 l!14304))) (= lambda!222245 lambda!222226))))

(assert (=> bs!1143955 (= (= lt!1917004 (+!2383 lt!1916827 t!14174)) (= lambda!222245 lambda!222222))))

(assert (=> bs!1143957 (= (= lt!1917004 acc!1214) (= lambda!222245 lambda!222229))))

(assert (=> bs!1143952 (= (= lt!1917004 acc!1214) (= lambda!222245 lambda!222230))))

(assert (=> bs!1143952 (= (= lt!1917004 lt!1916973) (= lambda!222245 lambda!222231))))

(assert (=> b!4752619 (= (= lt!1917004 lt!1916827) (= lambda!222245 lambda!222242))))

(assert (=> b!4752619 true))

(declare-fun bs!1143958 () Bool)

(declare-fun d!1519499 () Bool)

(assert (= bs!1143958 (and d!1519499 b!4752587)))

(declare-fun lambda!222250 () Int)

(declare-fun lt!1916993 () ListMap!5543)

(assert (=> bs!1143958 (= (= lt!1916993 (+!2383 lt!1916827 t!14174)) (= lambda!222250 lambda!222221))))

(declare-fun bs!1143959 () Bool)

(assert (= bs!1143959 (and d!1519499 b!4752620)))

(assert (=> bs!1143959 (= (= lt!1916993 lt!1916827) (= lambda!222250 lambda!222239))))

(declare-fun bs!1143960 () Bool)

(assert (= bs!1143960 (and d!1519499 d!1519497)))

(assert (=> bs!1143960 (= (= lt!1916993 lt!1916962) (= lambda!222250 lambda!222232))))

(declare-fun bs!1143961 () Bool)

(assert (= bs!1143961 (and d!1519499 b!4752599)))

(assert (=> bs!1143961 (= (= lt!1916993 lt!1916948) (= lambda!222250 lambda!222227))))

(declare-fun bs!1143962 () Bool)

(assert (= bs!1143962 (and d!1519499 b!4752600)))

(assert (=> bs!1143962 (= (= lt!1916993 (+!2383 lt!1916825 (h!59486 l!14304))) (= lambda!222250 lambda!222225))))

(declare-fun bs!1143963 () Bool)

(assert (= bs!1143963 (and d!1519499 d!1519485)))

(assert (=> bs!1143963 (= (= lt!1916993 lt!1916937) (= lambda!222250 lambda!222228))))

(declare-fun bs!1143964 () Bool)

(assert (= bs!1143964 (and d!1519499 b!4752586)))

(assert (=> bs!1143964 (= (= lt!1916993 lt!1916915) (= lambda!222250 lambda!222223))))

(declare-fun bs!1143965 () Bool)

(assert (= bs!1143965 (and d!1519499 d!1519475)))

(assert (=> bs!1143965 (= (= lt!1916993 lt!1916904) (= lambda!222250 lambda!222224))))

(assert (=> bs!1143961 (= (= lt!1916993 (+!2383 lt!1916825 (h!59486 l!14304))) (= lambda!222250 lambda!222226))))

(assert (=> bs!1143964 (= (= lt!1916993 (+!2383 lt!1916827 t!14174)) (= lambda!222250 lambda!222222))))

(declare-fun bs!1143966 () Bool)

(assert (= bs!1143966 (and d!1519499 b!4752619)))

(assert (=> bs!1143966 (= (= lt!1916993 lt!1917004) (= lambda!222250 lambda!222245))))

(declare-fun bs!1143967 () Bool)

(assert (= bs!1143967 (and d!1519499 b!4752615)))

(assert (=> bs!1143967 (= (= lt!1916993 acc!1214) (= lambda!222250 lambda!222229))))

(declare-fun bs!1143968 () Bool)

(assert (= bs!1143968 (and d!1519499 b!4752614)))

(assert (=> bs!1143968 (= (= lt!1916993 acc!1214) (= lambda!222250 lambda!222230))))

(assert (=> bs!1143968 (= (= lt!1916993 lt!1916973) (= lambda!222250 lambda!222231))))

(assert (=> bs!1143966 (= (= lt!1916993 lt!1916827) (= lambda!222250 lambda!222242))))

(assert (=> d!1519499 true))

(declare-fun c!811495 () Bool)

(declare-fun call!333032 () Bool)

(declare-fun bm!333026 () Bool)

(assert (=> bm!333026 (= call!333032 (forall!11763 (toList!6117 lt!1916827) (ite c!811495 lambda!222239 lambda!222245)))))

(declare-fun bm!333027 () Bool)

(declare-fun call!333031 () Unit!136238)

(assert (=> bm!333027 (= call!333031 (lemmaContainsAllItsOwnKeys!878 lt!1916827))))

(declare-fun e!2964742 () ListMap!5543)

(assert (=> b!4752619 (= e!2964742 lt!1917004)))

(declare-fun lt!1916999 () ListMap!5543)

(assert (=> b!4752619 (= lt!1916999 (+!2383 lt!1916827 (h!59486 (Cons!53089 t!14174 (t!360549 l!14304)))))))

(assert (=> b!4752619 (= lt!1917004 (addToMapMapFromBucket!1573 (t!360549 (Cons!53089 t!14174 (t!360549 l!14304))) (+!2383 lt!1916827 (h!59486 (Cons!53089 t!14174 (t!360549 l!14304))))))))

(declare-fun lt!1916994 () Unit!136238)

(assert (=> b!4752619 (= lt!1916994 call!333031)))

(assert (=> b!4752619 (forall!11763 (toList!6117 lt!1916827) lambda!222242)))

(declare-fun lt!1917006 () Unit!136238)

(assert (=> b!4752619 (= lt!1917006 lt!1916994)))

(assert (=> b!4752619 (forall!11763 (toList!6117 lt!1916999) lambda!222245)))

(declare-fun lt!1917003 () Unit!136238)

(declare-fun Unit!136287 () Unit!136238)

(assert (=> b!4752619 (= lt!1917003 Unit!136287)))

(assert (=> b!4752619 (forall!11763 (t!360549 (Cons!53089 t!14174 (t!360549 l!14304))) lambda!222245)))

(declare-fun lt!1916998 () Unit!136238)

(declare-fun Unit!136288 () Unit!136238)

(assert (=> b!4752619 (= lt!1916998 Unit!136288)))

(declare-fun lt!1917002 () Unit!136238)

(declare-fun Unit!136289 () Unit!136238)

(assert (=> b!4752619 (= lt!1917002 Unit!136289)))

(declare-fun lt!1917009 () Unit!136238)

(assert (=> b!4752619 (= lt!1917009 (forallContained!3789 (toList!6117 lt!1916999) lambda!222245 (h!59486 (Cons!53089 t!14174 (t!360549 l!14304)))))))

(assert (=> b!4752619 (contains!16514 lt!1916999 (_1!30723 (h!59486 (Cons!53089 t!14174 (t!360549 l!14304)))))))

(declare-fun lt!1916997 () Unit!136238)

(declare-fun Unit!136291 () Unit!136238)

(assert (=> b!4752619 (= lt!1916997 Unit!136291)))

(assert (=> b!4752619 (contains!16514 lt!1917004 (_1!30723 (h!59486 (Cons!53089 t!14174 (t!360549 l!14304)))))))

(declare-fun lt!1916996 () Unit!136238)

(declare-fun Unit!136293 () Unit!136238)

(assert (=> b!4752619 (= lt!1916996 Unit!136293)))

(assert (=> b!4752619 (forall!11763 (Cons!53089 t!14174 (t!360549 l!14304)) lambda!222245)))

(declare-fun lt!1917013 () Unit!136238)

(declare-fun Unit!136295 () Unit!136238)

(assert (=> b!4752619 (= lt!1917013 Unit!136295)))

(assert (=> b!4752619 (forall!11763 (toList!6117 lt!1916999) lambda!222245)))

(declare-fun lt!1917011 () Unit!136238)

(declare-fun Unit!136296 () Unit!136238)

(assert (=> b!4752619 (= lt!1917011 Unit!136296)))

(declare-fun lt!1917010 () Unit!136238)

(declare-fun Unit!136297 () Unit!136238)

(assert (=> b!4752619 (= lt!1917010 Unit!136297)))

(declare-fun lt!1917000 () Unit!136238)

(assert (=> b!4752619 (= lt!1917000 (addForallContainsKeyThenBeforeAdding!877 lt!1916827 lt!1917004 (_1!30723 (h!59486 (Cons!53089 t!14174 (t!360549 l!14304)))) (_2!30723 (h!59486 (Cons!53089 t!14174 (t!360549 l!14304))))))))

(declare-fun call!333033 () Bool)

(assert (=> b!4752619 call!333033))

(declare-fun lt!1916995 () Unit!136238)

(assert (=> b!4752619 (= lt!1916995 lt!1917000)))

(assert (=> b!4752619 call!333032))

(declare-fun lt!1917008 () Unit!136238)

(declare-fun Unit!136300 () Unit!136238)

(assert (=> b!4752619 (= lt!1917008 Unit!136300)))

(declare-fun res!2015537 () Bool)

(assert (=> b!4752619 (= res!2015537 (forall!11763 (Cons!53089 t!14174 (t!360549 l!14304)) lambda!222245))))

(declare-fun e!2964740 () Bool)

(assert (=> b!4752619 (=> (not res!2015537) (not e!2964740))))

(assert (=> b!4752619 e!2964740))

(declare-fun lt!1917001 () Unit!136238)

(declare-fun Unit!136303 () Unit!136238)

(assert (=> b!4752619 (= lt!1917001 Unit!136303)))

(assert (=> b!4752620 (= e!2964742 lt!1916827)))

(declare-fun lt!1917012 () Unit!136238)

(assert (=> b!4752620 (= lt!1917012 call!333031)))

(assert (=> b!4752620 call!333033))

(declare-fun lt!1917005 () Unit!136238)

(assert (=> b!4752620 (= lt!1917005 lt!1917012)))

(assert (=> b!4752620 call!333032))

(declare-fun lt!1917007 () Unit!136238)

(declare-fun Unit!136305 () Unit!136238)

(assert (=> b!4752620 (= lt!1917007 Unit!136305)))

(declare-fun b!4752621 () Bool)

(assert (=> b!4752621 (= e!2964740 (forall!11763 (toList!6117 lt!1916827) lambda!222245))))

(declare-fun bm!333028 () Bool)

(assert (=> bm!333028 (= call!333033 (forall!11763 (toList!6117 lt!1916827) (ite c!811495 lambda!222239 lambda!222245)))))

(declare-fun e!2964741 () Bool)

(assert (=> d!1519499 e!2964741))

(declare-fun res!2015538 () Bool)

(assert (=> d!1519499 (=> (not res!2015538) (not e!2964741))))

(assert (=> d!1519499 (= res!2015538 (forall!11763 (Cons!53089 t!14174 (t!360549 l!14304)) lambda!222250))))

(assert (=> d!1519499 (= lt!1916993 e!2964742)))

(assert (=> d!1519499 (= c!811495 (is-Nil!53089 (Cons!53089 t!14174 (t!360549 l!14304))))))

(assert (=> d!1519499 (noDuplicateKeys!2149 (Cons!53089 t!14174 (t!360549 l!14304)))))

(assert (=> d!1519499 (= (addToMapMapFromBucket!1573 (Cons!53089 t!14174 (t!360549 l!14304)) lt!1916827) lt!1916993)))

(declare-fun b!4752622 () Bool)

(declare-fun res!2015539 () Bool)

(assert (=> b!4752622 (=> (not res!2015539) (not e!2964741))))

(assert (=> b!4752622 (= res!2015539 (forall!11763 (toList!6117 lt!1916827) lambda!222250))))

(declare-fun b!4752623 () Bool)

(assert (=> b!4752623 (= e!2964741 (invariantList!1595 (toList!6117 lt!1916993)))))

(assert (= (and d!1519499 c!811495) b!4752620))

(assert (= (and d!1519499 (not c!811495)) b!4752619))

(assert (= (and b!4752619 res!2015537) b!4752621))

(assert (= (or b!4752620 b!4752619) bm!333027))

(assert (= (or b!4752620 b!4752619) bm!333026))

(assert (= (or b!4752620 b!4752619) bm!333028))

(assert (= (and d!1519499 res!2015538) b!4752622))

(assert (= (and b!4752622 res!2015539) b!4752623))

(declare-fun m!5717225 () Bool)

(assert (=> b!4752622 m!5717225))

(declare-fun m!5717227 () Bool)

(assert (=> b!4752623 m!5717227))

(declare-fun m!5717229 () Bool)

(assert (=> bm!333026 m!5717229))

(declare-fun m!5717231 () Bool)

(assert (=> b!4752621 m!5717231))

(declare-fun m!5717233 () Bool)

(assert (=> bm!333027 m!5717233))

(assert (=> bm!333028 m!5717229))

(declare-fun m!5717235 () Bool)

(assert (=> b!4752619 m!5717235))

(declare-fun m!5717237 () Bool)

(assert (=> b!4752619 m!5717237))

(declare-fun m!5717239 () Bool)

(assert (=> b!4752619 m!5717239))

(declare-fun m!5717241 () Bool)

(assert (=> b!4752619 m!5717241))

(declare-fun m!5717243 () Bool)

(assert (=> b!4752619 m!5717243))

(declare-fun m!5717245 () Bool)

(assert (=> b!4752619 m!5717245))

(declare-fun m!5717247 () Bool)

(assert (=> b!4752619 m!5717247))

(assert (=> b!4752619 m!5717243))

(declare-fun m!5717249 () Bool)

(assert (=> b!4752619 m!5717249))

(assert (=> b!4752619 m!5717247))

(declare-fun m!5717251 () Bool)

(assert (=> b!4752619 m!5717251))

(declare-fun m!5717253 () Bool)

(assert (=> b!4752619 m!5717253))

(assert (=> b!4752619 m!5717241))

(declare-fun m!5717255 () Bool)

(assert (=> d!1519499 m!5717255))

(declare-fun m!5717257 () Bool)

(assert (=> d!1519499 m!5717257))

(assert (=> b!4752546 d!1519499))

(declare-fun d!1519501 () Bool)

(assert (=> d!1519501 (eq!1218 (+!2383 (+!2383 acc!1214 (tuple2!54859 (_1!30723 (h!59486 l!14304)) (_2!30723 (h!59486 l!14304)))) (tuple2!54859 (_1!30723 t!14174) (_2!30723 t!14174))) (+!2383 (+!2383 acc!1214 (tuple2!54859 (_1!30723 t!14174) (_2!30723 t!14174))) (tuple2!54859 (_1!30723 (h!59486 l!14304)) (_2!30723 (h!59486 l!14304)))))))

(declare-fun lt!1917042 () Unit!136238)

(declare-fun choose!33831 (ListMap!5543 K!14523 V!14769 K!14523 V!14769) Unit!136238)

(assert (=> d!1519501 (= lt!1917042 (choose!33831 acc!1214 (_1!30723 (h!59486 l!14304)) (_2!30723 (h!59486 l!14304)) (_1!30723 t!14174) (_2!30723 t!14174)))))

(assert (=> d!1519501 (not (= (_1!30723 (h!59486 l!14304)) (_1!30723 t!14174)))))

(assert (=> d!1519501 (= (addCommutativeForDiffKeys!19 acc!1214 (_1!30723 (h!59486 l!14304)) (_2!30723 (h!59486 l!14304)) (_1!30723 t!14174) (_2!30723 t!14174)) lt!1917042)))

(declare-fun bs!1143969 () Bool)

(assert (= bs!1143969 d!1519501))

(declare-fun m!5717259 () Bool)

(assert (=> bs!1143969 m!5717259))

(declare-fun m!5717261 () Bool)

(assert (=> bs!1143969 m!5717261))

(declare-fun m!5717263 () Bool)

(assert (=> bs!1143969 m!5717263))

(declare-fun m!5717265 () Bool)

(assert (=> bs!1143969 m!5717265))

(declare-fun m!5717267 () Bool)

(assert (=> bs!1143969 m!5717267))

(declare-fun m!5717269 () Bool)

(assert (=> bs!1143969 m!5717269))

(assert (=> bs!1143969 m!5717267))

(assert (=> bs!1143969 m!5717261))

(assert (=> bs!1143969 m!5717265))

(assert (=> bs!1143969 m!5717259))

(assert (=> b!4752546 d!1519501))

(declare-fun bs!1143970 () Bool)

(declare-fun b!4752631 () Bool)

(assert (= bs!1143970 (and b!4752631 b!4752587)))

(declare-fun lambda!222265 () Int)

(assert (=> bs!1143970 (= (= lt!1916825 (+!2383 lt!1916827 t!14174)) (= lambda!222265 lambda!222221))))

(declare-fun bs!1143971 () Bool)

(assert (= bs!1143971 (and b!4752631 b!4752620)))

(assert (=> bs!1143971 (= (= lt!1916825 lt!1916827) (= lambda!222265 lambda!222239))))

(declare-fun bs!1143972 () Bool)

(assert (= bs!1143972 (and b!4752631 d!1519497)))

(assert (=> bs!1143972 (= (= lt!1916825 lt!1916962) (= lambda!222265 lambda!222232))))

(declare-fun bs!1143973 () Bool)

(assert (= bs!1143973 (and b!4752631 b!4752599)))

(assert (=> bs!1143973 (= (= lt!1916825 lt!1916948) (= lambda!222265 lambda!222227))))

(declare-fun bs!1143974 () Bool)

(assert (= bs!1143974 (and b!4752631 b!4752600)))

(assert (=> bs!1143974 (= (= lt!1916825 (+!2383 lt!1916825 (h!59486 l!14304))) (= lambda!222265 lambda!222225))))

(declare-fun bs!1143975 () Bool)

(assert (= bs!1143975 (and b!4752631 d!1519485)))

(assert (=> bs!1143975 (= (= lt!1916825 lt!1916937) (= lambda!222265 lambda!222228))))

(declare-fun bs!1143976 () Bool)

(assert (= bs!1143976 (and b!4752631 b!4752586)))

(assert (=> bs!1143976 (= (= lt!1916825 lt!1916915) (= lambda!222265 lambda!222223))))

(declare-fun bs!1143977 () Bool)

(assert (= bs!1143977 (and b!4752631 d!1519475)))

(assert (=> bs!1143977 (= (= lt!1916825 lt!1916904) (= lambda!222265 lambda!222224))))

(assert (=> bs!1143973 (= (= lt!1916825 (+!2383 lt!1916825 (h!59486 l!14304))) (= lambda!222265 lambda!222226))))

(assert (=> bs!1143976 (= (= lt!1916825 (+!2383 lt!1916827 t!14174)) (= lambda!222265 lambda!222222))))

(declare-fun bs!1143978 () Bool)

(assert (= bs!1143978 (and b!4752631 b!4752619)))

(assert (=> bs!1143978 (= (= lt!1916825 lt!1917004) (= lambda!222265 lambda!222245))))

(declare-fun bs!1143979 () Bool)

(assert (= bs!1143979 (and b!4752631 d!1519499)))

(assert (=> bs!1143979 (= (= lt!1916825 lt!1916993) (= lambda!222265 lambda!222250))))

(declare-fun bs!1143980 () Bool)

(assert (= bs!1143980 (and b!4752631 b!4752615)))

(assert (=> bs!1143980 (= (= lt!1916825 acc!1214) (= lambda!222265 lambda!222229))))

(declare-fun bs!1143981 () Bool)

(assert (= bs!1143981 (and b!4752631 b!4752614)))

(assert (=> bs!1143981 (= (= lt!1916825 acc!1214) (= lambda!222265 lambda!222230))))

(assert (=> bs!1143981 (= (= lt!1916825 lt!1916973) (= lambda!222265 lambda!222231))))

(assert (=> bs!1143978 (= (= lt!1916825 lt!1916827) (= lambda!222265 lambda!222242))))

(assert (=> b!4752631 true))

(declare-fun bs!1143983 () Bool)

(declare-fun b!4752630 () Bool)

(assert (= bs!1143983 (and b!4752630 b!4752587)))

(declare-fun lambda!222269 () Int)

(assert (=> bs!1143983 (= (= lt!1916825 (+!2383 lt!1916827 t!14174)) (= lambda!222269 lambda!222221))))

(declare-fun bs!1143984 () Bool)

(assert (= bs!1143984 (and b!4752630 b!4752620)))

(assert (=> bs!1143984 (= (= lt!1916825 lt!1916827) (= lambda!222269 lambda!222239))))

(declare-fun bs!1143985 () Bool)

(assert (= bs!1143985 (and b!4752630 d!1519497)))

(assert (=> bs!1143985 (= (= lt!1916825 lt!1916962) (= lambda!222269 lambda!222232))))

(declare-fun bs!1143986 () Bool)

(assert (= bs!1143986 (and b!4752630 b!4752599)))

(assert (=> bs!1143986 (= (= lt!1916825 lt!1916948) (= lambda!222269 lambda!222227))))

(declare-fun bs!1143987 () Bool)

(assert (= bs!1143987 (and b!4752630 b!4752600)))

(assert (=> bs!1143987 (= (= lt!1916825 (+!2383 lt!1916825 (h!59486 l!14304))) (= lambda!222269 lambda!222225))))

(declare-fun bs!1143988 () Bool)

(assert (= bs!1143988 (and b!4752630 d!1519485)))

(assert (=> bs!1143988 (= (= lt!1916825 lt!1916937) (= lambda!222269 lambda!222228))))

(declare-fun bs!1143989 () Bool)

(assert (= bs!1143989 (and b!4752630 b!4752586)))

(assert (=> bs!1143989 (= (= lt!1916825 lt!1916915) (= lambda!222269 lambda!222223))))

(declare-fun bs!1143990 () Bool)

(assert (= bs!1143990 (and b!4752630 d!1519475)))

(assert (=> bs!1143990 (= (= lt!1916825 lt!1916904) (= lambda!222269 lambda!222224))))

(assert (=> bs!1143986 (= (= lt!1916825 (+!2383 lt!1916825 (h!59486 l!14304))) (= lambda!222269 lambda!222226))))

(declare-fun bs!1143991 () Bool)

(assert (= bs!1143991 (and b!4752630 b!4752631)))

(assert (=> bs!1143991 (= lambda!222269 lambda!222265)))

(assert (=> bs!1143989 (= (= lt!1916825 (+!2383 lt!1916827 t!14174)) (= lambda!222269 lambda!222222))))

(declare-fun bs!1143992 () Bool)

(assert (= bs!1143992 (and b!4752630 b!4752619)))

(assert (=> bs!1143992 (= (= lt!1916825 lt!1917004) (= lambda!222269 lambda!222245))))

(declare-fun bs!1143993 () Bool)

(assert (= bs!1143993 (and b!4752630 d!1519499)))

(assert (=> bs!1143993 (= (= lt!1916825 lt!1916993) (= lambda!222269 lambda!222250))))

(declare-fun bs!1143994 () Bool)

(assert (= bs!1143994 (and b!4752630 b!4752615)))

(assert (=> bs!1143994 (= (= lt!1916825 acc!1214) (= lambda!222269 lambda!222229))))

(declare-fun bs!1143995 () Bool)

(assert (= bs!1143995 (and b!4752630 b!4752614)))

(assert (=> bs!1143995 (= (= lt!1916825 acc!1214) (= lambda!222269 lambda!222230))))

(assert (=> bs!1143995 (= (= lt!1916825 lt!1916973) (= lambda!222269 lambda!222231))))

(assert (=> bs!1143992 (= (= lt!1916825 lt!1916827) (= lambda!222269 lambda!222242))))

(assert (=> b!4752630 true))

(declare-fun lt!1917054 () ListMap!5543)

(declare-fun lambda!222271 () Int)

(assert (=> bs!1143983 (= (= lt!1917054 (+!2383 lt!1916827 t!14174)) (= lambda!222271 lambda!222221))))

(assert (=> bs!1143984 (= (= lt!1917054 lt!1916827) (= lambda!222271 lambda!222239))))

(assert (=> bs!1143985 (= (= lt!1917054 lt!1916962) (= lambda!222271 lambda!222232))))

(assert (=> bs!1143986 (= (= lt!1917054 lt!1916948) (= lambda!222271 lambda!222227))))

(assert (=> bs!1143987 (= (= lt!1917054 (+!2383 lt!1916825 (h!59486 l!14304))) (= lambda!222271 lambda!222225))))

(assert (=> bs!1143989 (= (= lt!1917054 lt!1916915) (= lambda!222271 lambda!222223))))

(assert (=> bs!1143990 (= (= lt!1917054 lt!1916904) (= lambda!222271 lambda!222224))))

(assert (=> bs!1143986 (= (= lt!1917054 (+!2383 lt!1916825 (h!59486 l!14304))) (= lambda!222271 lambda!222226))))

(assert (=> bs!1143991 (= (= lt!1917054 lt!1916825) (= lambda!222271 lambda!222265))))

(assert (=> bs!1143989 (= (= lt!1917054 (+!2383 lt!1916827 t!14174)) (= lambda!222271 lambda!222222))))

(assert (=> bs!1143992 (= (= lt!1917054 lt!1917004) (= lambda!222271 lambda!222245))))

(assert (=> bs!1143993 (= (= lt!1917054 lt!1916993) (= lambda!222271 lambda!222250))))

(assert (=> bs!1143994 (= (= lt!1917054 acc!1214) (= lambda!222271 lambda!222229))))

(assert (=> bs!1143995 (= (= lt!1917054 acc!1214) (= lambda!222271 lambda!222230))))

(assert (=> bs!1143995 (= (= lt!1917054 lt!1916973) (= lambda!222271 lambda!222231))))

(assert (=> bs!1143992 (= (= lt!1917054 lt!1916827) (= lambda!222271 lambda!222242))))

(assert (=> b!4752630 (= (= lt!1917054 lt!1916825) (= lambda!222271 lambda!222269))))

(assert (=> bs!1143988 (= (= lt!1917054 lt!1916937) (= lambda!222271 lambda!222228))))

(assert (=> b!4752630 true))

(declare-fun bs!1143998 () Bool)

(declare-fun d!1519503 () Bool)

(assert (= bs!1143998 (and d!1519503 b!4752587)))

(declare-fun lambda!222272 () Int)

(declare-fun lt!1917043 () ListMap!5543)

(assert (=> bs!1143998 (= (= lt!1917043 (+!2383 lt!1916827 t!14174)) (= lambda!222272 lambda!222221))))

(declare-fun bs!1143999 () Bool)

(assert (= bs!1143999 (and d!1519503 b!4752620)))

(assert (=> bs!1143999 (= (= lt!1917043 lt!1916827) (= lambda!222272 lambda!222239))))

(declare-fun bs!1144000 () Bool)

(assert (= bs!1144000 (and d!1519503 d!1519497)))

(assert (=> bs!1144000 (= (= lt!1917043 lt!1916962) (= lambda!222272 lambda!222232))))

(declare-fun bs!1144001 () Bool)

(assert (= bs!1144001 (and d!1519503 b!4752599)))

(assert (=> bs!1144001 (= (= lt!1917043 lt!1916948) (= lambda!222272 lambda!222227))))

(declare-fun bs!1144002 () Bool)

(assert (= bs!1144002 (and d!1519503 b!4752600)))

(assert (=> bs!1144002 (= (= lt!1917043 (+!2383 lt!1916825 (h!59486 l!14304))) (= lambda!222272 lambda!222225))))

(declare-fun bs!1144003 () Bool)

(assert (= bs!1144003 (and d!1519503 b!4752630)))

(assert (=> bs!1144003 (= (= lt!1917043 lt!1917054) (= lambda!222272 lambda!222271))))

(declare-fun bs!1144004 () Bool)

(assert (= bs!1144004 (and d!1519503 b!4752586)))

(assert (=> bs!1144004 (= (= lt!1917043 lt!1916915) (= lambda!222272 lambda!222223))))

(declare-fun bs!1144005 () Bool)

(assert (= bs!1144005 (and d!1519503 d!1519475)))

(assert (=> bs!1144005 (= (= lt!1917043 lt!1916904) (= lambda!222272 lambda!222224))))

(assert (=> bs!1144001 (= (= lt!1917043 (+!2383 lt!1916825 (h!59486 l!14304))) (= lambda!222272 lambda!222226))))

(declare-fun bs!1144006 () Bool)

(assert (= bs!1144006 (and d!1519503 b!4752631)))

(assert (=> bs!1144006 (= (= lt!1917043 lt!1916825) (= lambda!222272 lambda!222265))))

(assert (=> bs!1144004 (= (= lt!1917043 (+!2383 lt!1916827 t!14174)) (= lambda!222272 lambda!222222))))

(declare-fun bs!1144007 () Bool)

(assert (= bs!1144007 (and d!1519503 b!4752619)))

(assert (=> bs!1144007 (= (= lt!1917043 lt!1917004) (= lambda!222272 lambda!222245))))

(declare-fun bs!1144008 () Bool)

(assert (= bs!1144008 (and d!1519503 d!1519499)))

(assert (=> bs!1144008 (= (= lt!1917043 lt!1916993) (= lambda!222272 lambda!222250))))

(declare-fun bs!1144009 () Bool)

(assert (= bs!1144009 (and d!1519503 b!4752615)))

(assert (=> bs!1144009 (= (= lt!1917043 acc!1214) (= lambda!222272 lambda!222229))))

(declare-fun bs!1144010 () Bool)

(assert (= bs!1144010 (and d!1519503 b!4752614)))

(assert (=> bs!1144010 (= (= lt!1917043 acc!1214) (= lambda!222272 lambda!222230))))

(assert (=> bs!1144010 (= (= lt!1917043 lt!1916973) (= lambda!222272 lambda!222231))))

(assert (=> bs!1144007 (= (= lt!1917043 lt!1916827) (= lambda!222272 lambda!222242))))

(assert (=> bs!1144003 (= (= lt!1917043 lt!1916825) (= lambda!222272 lambda!222269))))

(declare-fun bs!1144011 () Bool)

(assert (= bs!1144011 (and d!1519503 d!1519485)))

(assert (=> bs!1144011 (= (= lt!1917043 lt!1916937) (= lambda!222272 lambda!222228))))

(assert (=> d!1519503 true))

(declare-fun bm!333035 () Bool)

(declare-fun c!811496 () Bool)

(declare-fun call!333041 () Bool)

(assert (=> bm!333035 (= call!333041 (forall!11763 (toList!6117 lt!1916825) (ite c!811496 lambda!222265 lambda!222271)))))

(declare-fun bm!333036 () Bool)

(declare-fun call!333040 () Unit!136238)

(assert (=> bm!333036 (= call!333040 (lemmaContainsAllItsOwnKeys!878 lt!1916825))))

(declare-fun e!2964749 () ListMap!5543)

(assert (=> b!4752630 (= e!2964749 lt!1917054)))

(declare-fun lt!1917049 () ListMap!5543)

(assert (=> b!4752630 (= lt!1917049 (+!2383 lt!1916825 (h!59486 l!14304)))))

(assert (=> b!4752630 (= lt!1917054 (addToMapMapFromBucket!1573 (t!360549 l!14304) (+!2383 lt!1916825 (h!59486 l!14304))))))

(declare-fun lt!1917044 () Unit!136238)

(assert (=> b!4752630 (= lt!1917044 call!333040)))

(assert (=> b!4752630 (forall!11763 (toList!6117 lt!1916825) lambda!222269)))

(declare-fun lt!1917056 () Unit!136238)

(assert (=> b!4752630 (= lt!1917056 lt!1917044)))

(assert (=> b!4752630 (forall!11763 (toList!6117 lt!1917049) lambda!222271)))

(declare-fun lt!1917053 () Unit!136238)

(declare-fun Unit!136308 () Unit!136238)

(assert (=> b!4752630 (= lt!1917053 Unit!136308)))

(assert (=> b!4752630 (forall!11763 (t!360549 l!14304) lambda!222271)))

(declare-fun lt!1917048 () Unit!136238)

(declare-fun Unit!136309 () Unit!136238)

(assert (=> b!4752630 (= lt!1917048 Unit!136309)))

(declare-fun lt!1917052 () Unit!136238)

(declare-fun Unit!136310 () Unit!136238)

(assert (=> b!4752630 (= lt!1917052 Unit!136310)))

(declare-fun lt!1917059 () Unit!136238)

(assert (=> b!4752630 (= lt!1917059 (forallContained!3789 (toList!6117 lt!1917049) lambda!222271 (h!59486 l!14304)))))

(assert (=> b!4752630 (contains!16514 lt!1917049 (_1!30723 (h!59486 l!14304)))))

(declare-fun lt!1917047 () Unit!136238)

(declare-fun Unit!136311 () Unit!136238)

(assert (=> b!4752630 (= lt!1917047 Unit!136311)))

(assert (=> b!4752630 (contains!16514 lt!1917054 (_1!30723 (h!59486 l!14304)))))

(declare-fun lt!1917046 () Unit!136238)

(declare-fun Unit!136312 () Unit!136238)

(assert (=> b!4752630 (= lt!1917046 Unit!136312)))

(assert (=> b!4752630 (forall!11763 l!14304 lambda!222271)))

(declare-fun lt!1917063 () Unit!136238)

(declare-fun Unit!136313 () Unit!136238)

(assert (=> b!4752630 (= lt!1917063 Unit!136313)))

(assert (=> b!4752630 (forall!11763 (toList!6117 lt!1917049) lambda!222271)))

(declare-fun lt!1917061 () Unit!136238)

(declare-fun Unit!136314 () Unit!136238)

(assert (=> b!4752630 (= lt!1917061 Unit!136314)))

(declare-fun lt!1917060 () Unit!136238)

(declare-fun Unit!136315 () Unit!136238)

(assert (=> b!4752630 (= lt!1917060 Unit!136315)))

(declare-fun lt!1917050 () Unit!136238)

(assert (=> b!4752630 (= lt!1917050 (addForallContainsKeyThenBeforeAdding!877 lt!1916825 lt!1917054 (_1!30723 (h!59486 l!14304)) (_2!30723 (h!59486 l!14304))))))

(declare-fun call!333042 () Bool)

(assert (=> b!4752630 call!333042))

(declare-fun lt!1917045 () Unit!136238)

(assert (=> b!4752630 (= lt!1917045 lt!1917050)))

(assert (=> b!4752630 call!333041))

(declare-fun lt!1917058 () Unit!136238)

(declare-fun Unit!136316 () Unit!136238)

(assert (=> b!4752630 (= lt!1917058 Unit!136316)))

(declare-fun res!2015546 () Bool)

(assert (=> b!4752630 (= res!2015546 (forall!11763 l!14304 lambda!222271))))

(declare-fun e!2964747 () Bool)

(assert (=> b!4752630 (=> (not res!2015546) (not e!2964747))))

(assert (=> b!4752630 e!2964747))

(declare-fun lt!1917051 () Unit!136238)

(declare-fun Unit!136317 () Unit!136238)

(assert (=> b!4752630 (= lt!1917051 Unit!136317)))

(assert (=> b!4752631 (= e!2964749 lt!1916825)))

(declare-fun lt!1917062 () Unit!136238)

(assert (=> b!4752631 (= lt!1917062 call!333040)))

(assert (=> b!4752631 call!333042))

(declare-fun lt!1917055 () Unit!136238)

(assert (=> b!4752631 (= lt!1917055 lt!1917062)))

(assert (=> b!4752631 call!333041))

(declare-fun lt!1917057 () Unit!136238)

(declare-fun Unit!136318 () Unit!136238)

(assert (=> b!4752631 (= lt!1917057 Unit!136318)))

(declare-fun b!4752632 () Bool)

(assert (=> b!4752632 (= e!2964747 (forall!11763 (toList!6117 lt!1916825) lambda!222271))))

(declare-fun bm!333037 () Bool)

(assert (=> bm!333037 (= call!333042 (forall!11763 (toList!6117 lt!1916825) (ite c!811496 lambda!222265 lambda!222271)))))

(declare-fun e!2964748 () Bool)

(assert (=> d!1519503 e!2964748))

(declare-fun res!2015547 () Bool)

(assert (=> d!1519503 (=> (not res!2015547) (not e!2964748))))

(assert (=> d!1519503 (= res!2015547 (forall!11763 l!14304 lambda!222272))))

(assert (=> d!1519503 (= lt!1917043 e!2964749)))

(assert (=> d!1519503 (= c!811496 (is-Nil!53089 l!14304))))

(assert (=> d!1519503 (noDuplicateKeys!2149 l!14304)))

(assert (=> d!1519503 (= (addToMapMapFromBucket!1573 l!14304 lt!1916825) lt!1917043)))

(declare-fun b!4752633 () Bool)

(declare-fun res!2015548 () Bool)

(assert (=> b!4752633 (=> (not res!2015548) (not e!2964748))))

(assert (=> b!4752633 (= res!2015548 (forall!11763 (toList!6117 lt!1916825) lambda!222272))))

(declare-fun b!4752634 () Bool)

(assert (=> b!4752634 (= e!2964748 (invariantList!1595 (toList!6117 lt!1917043)))))

(assert (= (and d!1519503 c!811496) b!4752631))

(assert (= (and d!1519503 (not c!811496)) b!4752630))

(assert (= (and b!4752630 res!2015546) b!4752632))

(assert (= (or b!4752631 b!4752630) bm!333036))

(assert (= (or b!4752631 b!4752630) bm!333035))

(assert (= (or b!4752631 b!4752630) bm!333037))

(assert (= (and d!1519503 res!2015547) b!4752633))

(assert (= (and b!4752633 res!2015548) b!4752634))

(declare-fun m!5717305 () Bool)

(assert (=> b!4752633 m!5717305))

(declare-fun m!5717307 () Bool)

(assert (=> b!4752634 m!5717307))

(declare-fun m!5717309 () Bool)

(assert (=> bm!333035 m!5717309))

(declare-fun m!5717311 () Bool)

(assert (=> b!4752632 m!5717311))

(declare-fun m!5717313 () Bool)

(assert (=> bm!333036 m!5717313))

(assert (=> bm!333037 m!5717309))

(declare-fun m!5717315 () Bool)

(assert (=> b!4752630 m!5717315))

(declare-fun m!5717319 () Bool)

(assert (=> b!4752630 m!5717319))

(declare-fun m!5717323 () Bool)

(assert (=> b!4752630 m!5717323))

(declare-fun m!5717325 () Bool)

(assert (=> b!4752630 m!5717325))

(assert (=> b!4752630 m!5717017))

(declare-fun m!5717327 () Bool)

(assert (=> b!4752630 m!5717327))

(declare-fun m!5717329 () Bool)

(assert (=> b!4752630 m!5717329))

(assert (=> b!4752630 m!5717017))

(assert (=> b!4752630 m!5717019))

(assert (=> b!4752630 m!5717329))

(declare-fun m!5717331 () Bool)

(assert (=> b!4752630 m!5717331))

(declare-fun m!5717333 () Bool)

(assert (=> b!4752630 m!5717333))

(assert (=> b!4752630 m!5717325))

(declare-fun m!5717335 () Bool)

(assert (=> d!1519503 m!5717335))

(assert (=> d!1519503 m!5717013))

(assert (=> b!4752546 d!1519503))

(declare-fun d!1519511 () Bool)

(assert (=> d!1519511 (= (eq!1218 lt!1916830 (+!2383 lt!1916826 t!14174)) (= (content!9532 (toList!6117 lt!1916830)) (content!9532 (toList!6117 (+!2383 lt!1916826 t!14174)))))))

(declare-fun bs!1144012 () Bool)

(assert (= bs!1144012 d!1519511))

(assert (=> bs!1144012 m!5717081))

(declare-fun m!5717337 () Bool)

(assert (=> bs!1144012 m!5717337))

(assert (=> b!4752546 d!1519511))

(declare-fun d!1519513 () Bool)

(declare-fun e!2964761 () Bool)

(assert (=> d!1519513 e!2964761))

(declare-fun res!2015560 () Bool)

(assert (=> d!1519513 (=> (not res!2015560) (not e!2964761))))

(declare-fun lt!1917088 () ListMap!5543)

(assert (=> d!1519513 (= res!2015560 (contains!16514 lt!1917088 (_1!30723 t!14174)))))

(declare-fun lt!1917086 () List!53213)

(assert (=> d!1519513 (= lt!1917088 (ListMap!5544 lt!1917086))))

(declare-fun lt!1917085 () Unit!136238)

(declare-fun lt!1917087 () Unit!136238)

(assert (=> d!1519513 (= lt!1917085 lt!1917087)))

(assert (=> d!1519513 (= (getValueByKey!2082 lt!1917086 (_1!30723 t!14174)) (Some!12531 (_2!30723 t!14174)))))

(assert (=> d!1519513 (= lt!1917087 (lemmaContainsTupThenGetReturnValue!1159 lt!1917086 (_1!30723 t!14174) (_2!30723 t!14174)))))

(assert (=> d!1519513 (= lt!1917086 (insertNoDuplicatedKeys!667 (toList!6117 acc!1214) (_1!30723 t!14174) (_2!30723 t!14174)))))

(assert (=> d!1519513 (= (+!2383 acc!1214 t!14174) lt!1917088)))

(declare-fun b!4752650 () Bool)

(declare-fun res!2015561 () Bool)

(assert (=> b!4752650 (=> (not res!2015561) (not e!2964761))))

(assert (=> b!4752650 (= res!2015561 (= (getValueByKey!2082 (toList!6117 lt!1917088) (_1!30723 t!14174)) (Some!12531 (_2!30723 t!14174))))))

(declare-fun b!4752651 () Bool)

(assert (=> b!4752651 (= e!2964761 (contains!16515 (toList!6117 lt!1917088) t!14174))))

(assert (= (and d!1519513 res!2015560) b!4752650))

(assert (= (and b!4752650 res!2015561) b!4752651))

(declare-fun m!5717345 () Bool)

(assert (=> d!1519513 m!5717345))

(declare-fun m!5717347 () Bool)

(assert (=> d!1519513 m!5717347))

(declare-fun m!5717349 () Bool)

(assert (=> d!1519513 m!5717349))

(declare-fun m!5717351 () Bool)

(assert (=> d!1519513 m!5717351))

(declare-fun m!5717353 () Bool)

(assert (=> b!4752650 m!5717353))

(declare-fun m!5717355 () Bool)

(assert (=> b!4752651 m!5717355))

(assert (=> b!4752546 d!1519513))

(declare-fun d!1519519 () Bool)

(assert (=> d!1519519 (= (eq!1218 (+!2383 lt!1916827 t!14174) (+!2383 (+!2383 acc!1214 t!14174) (h!59486 l!14304))) (= (content!9532 (toList!6117 (+!2383 lt!1916827 t!14174))) (content!9532 (toList!6117 (+!2383 (+!2383 acc!1214 t!14174) (h!59486 l!14304))))))))

(declare-fun bs!1144015 () Bool)

(assert (= bs!1144015 d!1519519))

(declare-fun m!5717357 () Bool)

(assert (=> bs!1144015 m!5717357))

(declare-fun m!5717359 () Bool)

(assert (=> bs!1144015 m!5717359))

(assert (=> b!4752546 d!1519519))

(assert (=> b!4752546 d!1519481))

(declare-fun d!1519521 () Bool)

(assert (=> d!1519521 (= (eq!1218 lt!1916828 (addToMapMapFromBucket!1573 l!14304 lt!1916825)) (= (content!9532 (toList!6117 lt!1916828)) (content!9532 (toList!6117 (addToMapMapFromBucket!1573 l!14304 lt!1916825)))))))

(declare-fun bs!1144016 () Bool)

(assert (= bs!1144016 d!1519521))

(assert (=> bs!1144016 m!5717135))

(declare-fun m!5717361 () Bool)

(assert (=> bs!1144016 m!5717361))

(assert (=> b!4752546 d!1519521))

(declare-fun d!1519523 () Bool)

(declare-fun e!2964765 () Bool)

(assert (=> d!1519523 e!2964765))

(declare-fun res!2015565 () Bool)

(assert (=> d!1519523 (=> (not res!2015565) (not e!2964765))))

(declare-fun lt!1917113 () ListMap!5543)

(assert (=> d!1519523 (= res!2015565 (contains!16514 lt!1917113 (_1!30723 t!14174)))))

(declare-fun lt!1917111 () List!53213)

(assert (=> d!1519523 (= lt!1917113 (ListMap!5544 lt!1917111))))

(declare-fun lt!1917110 () Unit!136238)

(declare-fun lt!1917112 () Unit!136238)

(assert (=> d!1519523 (= lt!1917110 lt!1917112)))

(assert (=> d!1519523 (= (getValueByKey!2082 lt!1917111 (_1!30723 t!14174)) (Some!12531 (_2!30723 t!14174)))))

(assert (=> d!1519523 (= lt!1917112 (lemmaContainsTupThenGetReturnValue!1159 lt!1917111 (_1!30723 t!14174) (_2!30723 t!14174)))))

(assert (=> d!1519523 (= lt!1917111 (insertNoDuplicatedKeys!667 (toList!6117 lt!1916826) (_1!30723 t!14174) (_2!30723 t!14174)))))

(assert (=> d!1519523 (= (+!2383 lt!1916826 t!14174) lt!1917113)))

(declare-fun b!4752657 () Bool)

(declare-fun res!2015566 () Bool)

(assert (=> b!4752657 (=> (not res!2015566) (not e!2964765))))

(assert (=> b!4752657 (= res!2015566 (= (getValueByKey!2082 (toList!6117 lt!1917113) (_1!30723 t!14174)) (Some!12531 (_2!30723 t!14174))))))

(declare-fun b!4752658 () Bool)

(assert (=> b!4752658 (= e!2964765 (contains!16515 (toList!6117 lt!1917113) t!14174))))

(assert (= (and d!1519523 res!2015565) b!4752657))

(assert (= (and b!4752657 res!2015566) b!4752658))

(declare-fun m!5717363 () Bool)

(assert (=> d!1519523 m!5717363))

(declare-fun m!5717365 () Bool)

(assert (=> d!1519523 m!5717365))

(declare-fun m!5717367 () Bool)

(assert (=> d!1519523 m!5717367))

(declare-fun m!5717369 () Bool)

(assert (=> d!1519523 m!5717369))

(declare-fun m!5717371 () Bool)

(assert (=> b!4752657 m!5717371))

(declare-fun m!5717373 () Bool)

(assert (=> b!4752658 m!5717373))

(assert (=> b!4752546 d!1519523))

(declare-fun d!1519525 () Bool)

(assert (=> d!1519525 (eq!1218 (addToMapMapFromBucket!1573 (Cons!53089 t!14174 (t!360549 l!14304)) lt!1916827) (+!2383 (addToMapMapFromBucket!1573 (t!360549 l!14304) lt!1916827) t!14174))))

(declare-fun lt!1917116 () Unit!136238)

(declare-fun choose!33833 (tuple2!54858 List!53213 ListMap!5543) Unit!136238)

(assert (=> d!1519525 (= lt!1917116 (choose!33833 t!14174 (t!360549 l!14304) lt!1916827))))

(assert (=> d!1519525 (noDuplicateKeys!2149 (t!360549 l!14304))))

(assert (=> d!1519525 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!463 t!14174 (t!360549 l!14304) lt!1916827) lt!1917116)))

(declare-fun bs!1144029 () Bool)

(assert (= bs!1144029 d!1519525))

(declare-fun m!5717407 () Bool)

(assert (=> bs!1144029 m!5717407))

(assert (=> bs!1144029 m!5716989))

(assert (=> bs!1144029 m!5717121))

(assert (=> bs!1144029 m!5716999))

(declare-fun m!5717409 () Bool)

(assert (=> bs!1144029 m!5717409))

(assert (=> bs!1144029 m!5716999))

(assert (=> bs!1144029 m!5716989))

(assert (=> bs!1144029 m!5717409))

(declare-fun m!5717411 () Bool)

(assert (=> bs!1144029 m!5717411))

(assert (=> b!4752546 d!1519525))

(declare-fun d!1519529 () Bool)

(declare-fun e!2964766 () Bool)

(assert (=> d!1519529 e!2964766))

(declare-fun res!2015567 () Bool)

(assert (=> d!1519529 (=> (not res!2015567) (not e!2964766))))

(declare-fun lt!1917120 () ListMap!5543)

(assert (=> d!1519529 (= res!2015567 (contains!16514 lt!1917120 (_1!30723 (h!59486 l!14304))))))

(declare-fun lt!1917118 () List!53213)

(assert (=> d!1519529 (= lt!1917120 (ListMap!5544 lt!1917118))))

(declare-fun lt!1917117 () Unit!136238)

(declare-fun lt!1917119 () Unit!136238)

(assert (=> d!1519529 (= lt!1917117 lt!1917119)))

(assert (=> d!1519529 (= (getValueByKey!2082 lt!1917118 (_1!30723 (h!59486 l!14304))) (Some!12531 (_2!30723 (h!59486 l!14304))))))

(assert (=> d!1519529 (= lt!1917119 (lemmaContainsTupThenGetReturnValue!1159 lt!1917118 (_1!30723 (h!59486 l!14304)) (_2!30723 (h!59486 l!14304))))))

(assert (=> d!1519529 (= lt!1917118 (insertNoDuplicatedKeys!667 (toList!6117 acc!1214) (_1!30723 (h!59486 l!14304)) (_2!30723 (h!59486 l!14304))))))

(assert (=> d!1519529 (= (+!2383 acc!1214 (h!59486 l!14304)) lt!1917120)))

(declare-fun b!4752659 () Bool)

(declare-fun res!2015568 () Bool)

(assert (=> b!4752659 (=> (not res!2015568) (not e!2964766))))

(assert (=> b!4752659 (= res!2015568 (= (getValueByKey!2082 (toList!6117 lt!1917120) (_1!30723 (h!59486 l!14304))) (Some!12531 (_2!30723 (h!59486 l!14304)))))))

(declare-fun b!4752660 () Bool)

(assert (=> b!4752660 (= e!2964766 (contains!16515 (toList!6117 lt!1917120) (h!59486 l!14304)))))

(assert (= (and d!1519529 res!2015567) b!4752659))

(assert (= (and b!4752659 res!2015568) b!4752660))

(declare-fun m!5717413 () Bool)

(assert (=> d!1519529 m!5717413))

(declare-fun m!5717415 () Bool)

(assert (=> d!1519529 m!5717415))

(declare-fun m!5717417 () Bool)

(assert (=> d!1519529 m!5717417))

(declare-fun m!5717419 () Bool)

(assert (=> d!1519529 m!5717419))

(declare-fun m!5717421 () Bool)

(assert (=> b!4752659 m!5717421))

(declare-fun m!5717423 () Bool)

(assert (=> b!4752660 m!5717423))

(assert (=> b!4752546 d!1519529))

(declare-fun bs!1144030 () Bool)

(declare-fun b!4752662 () Bool)

(assert (= bs!1144030 (and b!4752662 b!4752587)))

(declare-fun lambda!222277 () Int)

(assert (=> bs!1144030 (= (= lt!1916827 (+!2383 lt!1916827 t!14174)) (= lambda!222277 lambda!222221))))

(declare-fun bs!1144031 () Bool)

(assert (= bs!1144031 (and b!4752662 b!4752620)))

(assert (=> bs!1144031 (= lambda!222277 lambda!222239)))

(declare-fun bs!1144032 () Bool)

(assert (= bs!1144032 (and b!4752662 d!1519497)))

(assert (=> bs!1144032 (= (= lt!1916827 lt!1916962) (= lambda!222277 lambda!222232))))

(declare-fun bs!1144033 () Bool)

(assert (= bs!1144033 (and b!4752662 b!4752599)))

(assert (=> bs!1144033 (= (= lt!1916827 lt!1916948) (= lambda!222277 lambda!222227))))

(declare-fun bs!1144034 () Bool)

(assert (= bs!1144034 (and b!4752662 b!4752600)))

(assert (=> bs!1144034 (= (= lt!1916827 (+!2383 lt!1916825 (h!59486 l!14304))) (= lambda!222277 lambda!222225))))

(declare-fun bs!1144035 () Bool)

(assert (= bs!1144035 (and b!4752662 b!4752630)))

(assert (=> bs!1144035 (= (= lt!1916827 lt!1917054) (= lambda!222277 lambda!222271))))

(declare-fun bs!1144036 () Bool)

(assert (= bs!1144036 (and b!4752662 b!4752586)))

(assert (=> bs!1144036 (= (= lt!1916827 lt!1916915) (= lambda!222277 lambda!222223))))

(declare-fun bs!1144037 () Bool)

(assert (= bs!1144037 (and b!4752662 d!1519475)))

(assert (=> bs!1144037 (= (= lt!1916827 lt!1916904) (= lambda!222277 lambda!222224))))

(assert (=> bs!1144033 (= (= lt!1916827 (+!2383 lt!1916825 (h!59486 l!14304))) (= lambda!222277 lambda!222226))))

(declare-fun bs!1144038 () Bool)

(assert (= bs!1144038 (and b!4752662 d!1519503)))

(assert (=> bs!1144038 (= (= lt!1916827 lt!1917043) (= lambda!222277 lambda!222272))))

(declare-fun bs!1144039 () Bool)

(assert (= bs!1144039 (and b!4752662 b!4752631)))

(assert (=> bs!1144039 (= (= lt!1916827 lt!1916825) (= lambda!222277 lambda!222265))))

(assert (=> bs!1144036 (= (= lt!1916827 (+!2383 lt!1916827 t!14174)) (= lambda!222277 lambda!222222))))

(declare-fun bs!1144040 () Bool)

(assert (= bs!1144040 (and b!4752662 b!4752619)))

(assert (=> bs!1144040 (= (= lt!1916827 lt!1917004) (= lambda!222277 lambda!222245))))

(declare-fun bs!1144041 () Bool)

(assert (= bs!1144041 (and b!4752662 d!1519499)))

(assert (=> bs!1144041 (= (= lt!1916827 lt!1916993) (= lambda!222277 lambda!222250))))

(declare-fun bs!1144042 () Bool)

(assert (= bs!1144042 (and b!4752662 b!4752615)))

(assert (=> bs!1144042 (= (= lt!1916827 acc!1214) (= lambda!222277 lambda!222229))))

(declare-fun bs!1144043 () Bool)

(assert (= bs!1144043 (and b!4752662 b!4752614)))

(assert (=> bs!1144043 (= (= lt!1916827 acc!1214) (= lambda!222277 lambda!222230))))

(assert (=> bs!1144043 (= (= lt!1916827 lt!1916973) (= lambda!222277 lambda!222231))))

(assert (=> bs!1144040 (= lambda!222277 lambda!222242)))

(assert (=> bs!1144035 (= (= lt!1916827 lt!1916825) (= lambda!222277 lambda!222269))))

(declare-fun bs!1144044 () Bool)

(assert (= bs!1144044 (and b!4752662 d!1519485)))

(assert (=> bs!1144044 (= (= lt!1916827 lt!1916937) (= lambda!222277 lambda!222228))))

(assert (=> b!4752662 true))

(declare-fun bs!1144045 () Bool)

(declare-fun b!4752661 () Bool)

(assert (= bs!1144045 (and b!4752661 b!4752587)))

(declare-fun lambda!222278 () Int)

(assert (=> bs!1144045 (= (= lt!1916827 (+!2383 lt!1916827 t!14174)) (= lambda!222278 lambda!222221))))

(declare-fun bs!1144046 () Bool)

(assert (= bs!1144046 (and b!4752661 b!4752620)))

(assert (=> bs!1144046 (= lambda!222278 lambda!222239)))

(declare-fun bs!1144047 () Bool)

(assert (= bs!1144047 (and b!4752661 d!1519497)))

(assert (=> bs!1144047 (= (= lt!1916827 lt!1916962) (= lambda!222278 lambda!222232))))

(declare-fun bs!1144048 () Bool)

(assert (= bs!1144048 (and b!4752661 b!4752599)))

(assert (=> bs!1144048 (= (= lt!1916827 lt!1916948) (= lambda!222278 lambda!222227))))

(declare-fun bs!1144049 () Bool)

(assert (= bs!1144049 (and b!4752661 b!4752600)))

(assert (=> bs!1144049 (= (= lt!1916827 (+!2383 lt!1916825 (h!59486 l!14304))) (= lambda!222278 lambda!222225))))

(declare-fun bs!1144050 () Bool)

(assert (= bs!1144050 (and b!4752661 b!4752630)))

(assert (=> bs!1144050 (= (= lt!1916827 lt!1917054) (= lambda!222278 lambda!222271))))

(declare-fun bs!1144051 () Bool)

(assert (= bs!1144051 (and b!4752661 b!4752586)))

(assert (=> bs!1144051 (= (= lt!1916827 lt!1916915) (= lambda!222278 lambda!222223))))

(declare-fun bs!1144052 () Bool)

(assert (= bs!1144052 (and b!4752661 d!1519475)))

(assert (=> bs!1144052 (= (= lt!1916827 lt!1916904) (= lambda!222278 lambda!222224))))

(assert (=> bs!1144048 (= (= lt!1916827 (+!2383 lt!1916825 (h!59486 l!14304))) (= lambda!222278 lambda!222226))))

(declare-fun bs!1144053 () Bool)

(assert (= bs!1144053 (and b!4752661 d!1519503)))

(assert (=> bs!1144053 (= (= lt!1916827 lt!1917043) (= lambda!222278 lambda!222272))))

(declare-fun bs!1144054 () Bool)

(assert (= bs!1144054 (and b!4752661 b!4752631)))

(assert (=> bs!1144054 (= (= lt!1916827 lt!1916825) (= lambda!222278 lambda!222265))))

(assert (=> bs!1144051 (= (= lt!1916827 (+!2383 lt!1916827 t!14174)) (= lambda!222278 lambda!222222))))

(declare-fun bs!1144055 () Bool)

(assert (= bs!1144055 (and b!4752661 b!4752619)))

(assert (=> bs!1144055 (= (= lt!1916827 lt!1917004) (= lambda!222278 lambda!222245))))

(declare-fun bs!1144056 () Bool)

(assert (= bs!1144056 (and b!4752661 d!1519499)))

(assert (=> bs!1144056 (= (= lt!1916827 lt!1916993) (= lambda!222278 lambda!222250))))

(declare-fun bs!1144057 () Bool)

(assert (= bs!1144057 (and b!4752661 b!4752615)))

(assert (=> bs!1144057 (= (= lt!1916827 acc!1214) (= lambda!222278 lambda!222229))))

(declare-fun bs!1144058 () Bool)

(assert (= bs!1144058 (and b!4752661 b!4752614)))

(assert (=> bs!1144058 (= (= lt!1916827 lt!1916973) (= lambda!222278 lambda!222231))))

(assert (=> bs!1144055 (= lambda!222278 lambda!222242)))

(assert (=> bs!1144050 (= (= lt!1916827 lt!1916825) (= lambda!222278 lambda!222269))))

(declare-fun bs!1144059 () Bool)

(assert (= bs!1144059 (and b!4752661 d!1519485)))

(assert (=> bs!1144059 (= (= lt!1916827 lt!1916937) (= lambda!222278 lambda!222228))))

(declare-fun bs!1144060 () Bool)

(assert (= bs!1144060 (and b!4752661 b!4752662)))

(assert (=> bs!1144060 (= lambda!222278 lambda!222277)))

(assert (=> bs!1144058 (= (= lt!1916827 acc!1214) (= lambda!222278 lambda!222230))))

(assert (=> b!4752661 true))

(declare-fun lt!1917132 () ListMap!5543)

(declare-fun lambda!222279 () Int)

(assert (=> bs!1144045 (= (= lt!1917132 (+!2383 lt!1916827 t!14174)) (= lambda!222279 lambda!222221))))

(assert (=> bs!1144046 (= (= lt!1917132 lt!1916827) (= lambda!222279 lambda!222239))))

(assert (=> bs!1144047 (= (= lt!1917132 lt!1916962) (= lambda!222279 lambda!222232))))

(assert (=> bs!1144048 (= (= lt!1917132 lt!1916948) (= lambda!222279 lambda!222227))))

(assert (=> bs!1144049 (= (= lt!1917132 (+!2383 lt!1916825 (h!59486 l!14304))) (= lambda!222279 lambda!222225))))

(assert (=> bs!1144050 (= (= lt!1917132 lt!1917054) (= lambda!222279 lambda!222271))))

(assert (=> bs!1144051 (= (= lt!1917132 lt!1916915) (= lambda!222279 lambda!222223))))

(assert (=> bs!1144052 (= (= lt!1917132 lt!1916904) (= lambda!222279 lambda!222224))))

(assert (=> bs!1144048 (= (= lt!1917132 (+!2383 lt!1916825 (h!59486 l!14304))) (= lambda!222279 lambda!222226))))

(assert (=> bs!1144053 (= (= lt!1917132 lt!1917043) (= lambda!222279 lambda!222272))))

(assert (=> bs!1144054 (= (= lt!1917132 lt!1916825) (= lambda!222279 lambda!222265))))

(assert (=> bs!1144051 (= (= lt!1917132 (+!2383 lt!1916827 t!14174)) (= lambda!222279 lambda!222222))))

(assert (=> bs!1144055 (= (= lt!1917132 lt!1917004) (= lambda!222279 lambda!222245))))

(assert (=> bs!1144056 (= (= lt!1917132 lt!1916993) (= lambda!222279 lambda!222250))))

(assert (=> bs!1144057 (= (= lt!1917132 acc!1214) (= lambda!222279 lambda!222229))))

(assert (=> b!4752661 (= (= lt!1917132 lt!1916827) (= lambda!222279 lambda!222278))))

(assert (=> bs!1144058 (= (= lt!1917132 lt!1916973) (= lambda!222279 lambda!222231))))

(assert (=> bs!1144055 (= (= lt!1917132 lt!1916827) (= lambda!222279 lambda!222242))))

(assert (=> bs!1144050 (= (= lt!1917132 lt!1916825) (= lambda!222279 lambda!222269))))

(assert (=> bs!1144059 (= (= lt!1917132 lt!1916937) (= lambda!222279 lambda!222228))))

(assert (=> bs!1144060 (= (= lt!1917132 lt!1916827) (= lambda!222279 lambda!222277))))

(assert (=> bs!1144058 (= (= lt!1917132 acc!1214) (= lambda!222279 lambda!222230))))

(assert (=> b!4752661 true))

(declare-fun bs!1144061 () Bool)

(declare-fun d!1519531 () Bool)

(assert (= bs!1144061 (and d!1519531 b!4752587)))

(declare-fun lt!1917121 () ListMap!5543)

(declare-fun lambda!222280 () Int)

(assert (=> bs!1144061 (= (= lt!1917121 (+!2383 lt!1916827 t!14174)) (= lambda!222280 lambda!222221))))

(declare-fun bs!1144062 () Bool)

(assert (= bs!1144062 (and d!1519531 b!4752620)))

(assert (=> bs!1144062 (= (= lt!1917121 lt!1916827) (= lambda!222280 lambda!222239))))

(declare-fun bs!1144063 () Bool)

(assert (= bs!1144063 (and d!1519531 d!1519497)))

(assert (=> bs!1144063 (= (= lt!1917121 lt!1916962) (= lambda!222280 lambda!222232))))

(declare-fun bs!1144064 () Bool)

(assert (= bs!1144064 (and d!1519531 b!4752599)))

(assert (=> bs!1144064 (= (= lt!1917121 lt!1916948) (= lambda!222280 lambda!222227))))

(declare-fun bs!1144065 () Bool)

(assert (= bs!1144065 (and d!1519531 b!4752600)))

(assert (=> bs!1144065 (= (= lt!1917121 (+!2383 lt!1916825 (h!59486 l!14304))) (= lambda!222280 lambda!222225))))

(declare-fun bs!1144066 () Bool)

(assert (= bs!1144066 (and d!1519531 b!4752630)))

(assert (=> bs!1144066 (= (= lt!1917121 lt!1917054) (= lambda!222280 lambda!222271))))

(declare-fun bs!1144067 () Bool)

(assert (= bs!1144067 (and d!1519531 b!4752586)))

(assert (=> bs!1144067 (= (= lt!1917121 lt!1916915) (= lambda!222280 lambda!222223))))

(declare-fun bs!1144068 () Bool)

(assert (= bs!1144068 (and d!1519531 d!1519475)))

(assert (=> bs!1144068 (= (= lt!1917121 lt!1916904) (= lambda!222280 lambda!222224))))

(assert (=> bs!1144064 (= (= lt!1917121 (+!2383 lt!1916825 (h!59486 l!14304))) (= lambda!222280 lambda!222226))))

(declare-fun bs!1144069 () Bool)

(assert (= bs!1144069 (and d!1519531 d!1519503)))

(assert (=> bs!1144069 (= (= lt!1917121 lt!1917043) (= lambda!222280 lambda!222272))))

(declare-fun bs!1144070 () Bool)

(assert (= bs!1144070 (and d!1519531 b!4752631)))

(assert (=> bs!1144070 (= (= lt!1917121 lt!1916825) (= lambda!222280 lambda!222265))))

(assert (=> bs!1144067 (= (= lt!1917121 (+!2383 lt!1916827 t!14174)) (= lambda!222280 lambda!222222))))

(declare-fun bs!1144071 () Bool)

(assert (= bs!1144071 (and d!1519531 b!4752619)))

(assert (=> bs!1144071 (= (= lt!1917121 lt!1917004) (= lambda!222280 lambda!222245))))

(declare-fun bs!1144072 () Bool)

(assert (= bs!1144072 (and d!1519531 b!4752615)))

(assert (=> bs!1144072 (= (= lt!1917121 acc!1214) (= lambda!222280 lambda!222229))))

(declare-fun bs!1144073 () Bool)

(assert (= bs!1144073 (and d!1519531 b!4752661)))

(assert (=> bs!1144073 (= (= lt!1917121 lt!1916827) (= lambda!222280 lambda!222278))))

(declare-fun bs!1144074 () Bool)

(assert (= bs!1144074 (and d!1519531 b!4752614)))

(assert (=> bs!1144074 (= (= lt!1917121 lt!1916973) (= lambda!222280 lambda!222231))))

(assert (=> bs!1144071 (= (= lt!1917121 lt!1916827) (= lambda!222280 lambda!222242))))

(assert (=> bs!1144066 (= (= lt!1917121 lt!1916825) (= lambda!222280 lambda!222269))))

(declare-fun bs!1144075 () Bool)

(assert (= bs!1144075 (and d!1519531 d!1519485)))

(assert (=> bs!1144075 (= (= lt!1917121 lt!1916937) (= lambda!222280 lambda!222228))))

(assert (=> bs!1144073 (= (= lt!1917121 lt!1917132) (= lambda!222280 lambda!222279))))

(declare-fun bs!1144076 () Bool)

(assert (= bs!1144076 (and d!1519531 d!1519499)))

(assert (=> bs!1144076 (= (= lt!1917121 lt!1916993) (= lambda!222280 lambda!222250))))

(declare-fun bs!1144077 () Bool)

(assert (= bs!1144077 (and d!1519531 b!4752662)))

(assert (=> bs!1144077 (= (= lt!1917121 lt!1916827) (= lambda!222280 lambda!222277))))

(assert (=> bs!1144074 (= (= lt!1917121 acc!1214) (= lambda!222280 lambda!222230))))

(assert (=> d!1519531 true))

(declare-fun call!333050 () Bool)

(declare-fun c!811499 () Bool)

(declare-fun bm!333044 () Bool)

(assert (=> bm!333044 (= call!333050 (forall!11763 (toList!6117 lt!1916827) (ite c!811499 lambda!222277 lambda!222279)))))

(declare-fun bm!333045 () Bool)

(declare-fun call!333049 () Unit!136238)

(assert (=> bm!333045 (= call!333049 (lemmaContainsAllItsOwnKeys!878 lt!1916827))))

(declare-fun e!2964769 () ListMap!5543)

(assert (=> b!4752661 (= e!2964769 lt!1917132)))

(declare-fun lt!1917127 () ListMap!5543)

(assert (=> b!4752661 (= lt!1917127 (+!2383 lt!1916827 (h!59486 (t!360549 l!14304))))))

(assert (=> b!4752661 (= lt!1917132 (addToMapMapFromBucket!1573 (t!360549 (t!360549 l!14304)) (+!2383 lt!1916827 (h!59486 (t!360549 l!14304)))))))

(declare-fun lt!1917122 () Unit!136238)

(assert (=> b!4752661 (= lt!1917122 call!333049)))

(assert (=> b!4752661 (forall!11763 (toList!6117 lt!1916827) lambda!222278)))

(declare-fun lt!1917134 () Unit!136238)

(assert (=> b!4752661 (= lt!1917134 lt!1917122)))

(assert (=> b!4752661 (forall!11763 (toList!6117 lt!1917127) lambda!222279)))

(declare-fun lt!1917131 () Unit!136238)

(declare-fun Unit!136330 () Unit!136238)

(assert (=> b!4752661 (= lt!1917131 Unit!136330)))

(assert (=> b!4752661 (forall!11763 (t!360549 (t!360549 l!14304)) lambda!222279)))

(declare-fun lt!1917126 () Unit!136238)

(declare-fun Unit!136331 () Unit!136238)

(assert (=> b!4752661 (= lt!1917126 Unit!136331)))

(declare-fun lt!1917130 () Unit!136238)

(declare-fun Unit!136332 () Unit!136238)

(assert (=> b!4752661 (= lt!1917130 Unit!136332)))

(declare-fun lt!1917137 () Unit!136238)

(assert (=> b!4752661 (= lt!1917137 (forallContained!3789 (toList!6117 lt!1917127) lambda!222279 (h!59486 (t!360549 l!14304))))))

(assert (=> b!4752661 (contains!16514 lt!1917127 (_1!30723 (h!59486 (t!360549 l!14304))))))

(declare-fun lt!1917125 () Unit!136238)

(declare-fun Unit!136333 () Unit!136238)

(assert (=> b!4752661 (= lt!1917125 Unit!136333)))

(assert (=> b!4752661 (contains!16514 lt!1917132 (_1!30723 (h!59486 (t!360549 l!14304))))))

(declare-fun lt!1917124 () Unit!136238)

(declare-fun Unit!136334 () Unit!136238)

(assert (=> b!4752661 (= lt!1917124 Unit!136334)))

(assert (=> b!4752661 (forall!11763 (t!360549 l!14304) lambda!222279)))

(declare-fun lt!1917141 () Unit!136238)

(declare-fun Unit!136335 () Unit!136238)

(assert (=> b!4752661 (= lt!1917141 Unit!136335)))

(assert (=> b!4752661 (forall!11763 (toList!6117 lt!1917127) lambda!222279)))

(declare-fun lt!1917139 () Unit!136238)

(declare-fun Unit!136336 () Unit!136238)

(assert (=> b!4752661 (= lt!1917139 Unit!136336)))

(declare-fun lt!1917138 () Unit!136238)

(declare-fun Unit!136337 () Unit!136238)

(assert (=> b!4752661 (= lt!1917138 Unit!136337)))

(declare-fun lt!1917128 () Unit!136238)

(assert (=> b!4752661 (= lt!1917128 (addForallContainsKeyThenBeforeAdding!877 lt!1916827 lt!1917132 (_1!30723 (h!59486 (t!360549 l!14304))) (_2!30723 (h!59486 (t!360549 l!14304)))))))

(declare-fun call!333051 () Bool)

(assert (=> b!4752661 call!333051))

(declare-fun lt!1917123 () Unit!136238)

(assert (=> b!4752661 (= lt!1917123 lt!1917128)))

(assert (=> b!4752661 call!333050))

(declare-fun lt!1917136 () Unit!136238)

(declare-fun Unit!136338 () Unit!136238)

(assert (=> b!4752661 (= lt!1917136 Unit!136338)))

(declare-fun res!2015569 () Bool)

(assert (=> b!4752661 (= res!2015569 (forall!11763 (t!360549 l!14304) lambda!222279))))

(declare-fun e!2964767 () Bool)

(assert (=> b!4752661 (=> (not res!2015569) (not e!2964767))))

(assert (=> b!4752661 e!2964767))

(declare-fun lt!1917129 () Unit!136238)

(declare-fun Unit!136339 () Unit!136238)

(assert (=> b!4752661 (= lt!1917129 Unit!136339)))

(assert (=> b!4752662 (= e!2964769 lt!1916827)))

(declare-fun lt!1917140 () Unit!136238)

(assert (=> b!4752662 (= lt!1917140 call!333049)))

(assert (=> b!4752662 call!333051))

(declare-fun lt!1917133 () Unit!136238)

(assert (=> b!4752662 (= lt!1917133 lt!1917140)))

(assert (=> b!4752662 call!333050))

(declare-fun lt!1917135 () Unit!136238)

(declare-fun Unit!136340 () Unit!136238)

(assert (=> b!4752662 (= lt!1917135 Unit!136340)))

(declare-fun b!4752663 () Bool)

(assert (=> b!4752663 (= e!2964767 (forall!11763 (toList!6117 lt!1916827) lambda!222279))))

(declare-fun bm!333046 () Bool)

(assert (=> bm!333046 (= call!333051 (forall!11763 (toList!6117 lt!1916827) (ite c!811499 lambda!222277 lambda!222279)))))

(declare-fun e!2964768 () Bool)

(assert (=> d!1519531 e!2964768))

(declare-fun res!2015570 () Bool)

(assert (=> d!1519531 (=> (not res!2015570) (not e!2964768))))

(assert (=> d!1519531 (= res!2015570 (forall!11763 (t!360549 l!14304) lambda!222280))))

(assert (=> d!1519531 (= lt!1917121 e!2964769)))

(assert (=> d!1519531 (= c!811499 (is-Nil!53089 (t!360549 l!14304)))))

(assert (=> d!1519531 (noDuplicateKeys!2149 (t!360549 l!14304))))

(assert (=> d!1519531 (= (addToMapMapFromBucket!1573 (t!360549 l!14304) lt!1916827) lt!1917121)))

(declare-fun b!4752664 () Bool)

(declare-fun res!2015571 () Bool)

(assert (=> b!4752664 (=> (not res!2015571) (not e!2964768))))

(assert (=> b!4752664 (= res!2015571 (forall!11763 (toList!6117 lt!1916827) lambda!222280))))

(declare-fun b!4752665 () Bool)

(assert (=> b!4752665 (= e!2964768 (invariantList!1595 (toList!6117 lt!1917121)))))

(assert (= (and d!1519531 c!811499) b!4752662))

(assert (= (and d!1519531 (not c!811499)) b!4752661))

(assert (= (and b!4752661 res!2015569) b!4752663))

(assert (= (or b!4752662 b!4752661) bm!333045))

(assert (= (or b!4752662 b!4752661) bm!333044))

(assert (= (or b!4752662 b!4752661) bm!333046))

(assert (= (and d!1519531 res!2015570) b!4752664))

(assert (= (and b!4752664 res!2015571) b!4752665))

(declare-fun m!5717449 () Bool)

(assert (=> b!4752664 m!5717449))

(declare-fun m!5717451 () Bool)

(assert (=> b!4752665 m!5717451))

(declare-fun m!5717453 () Bool)

(assert (=> bm!333044 m!5717453))

(declare-fun m!5717455 () Bool)

(assert (=> b!4752663 m!5717455))

(assert (=> bm!333045 m!5717233))

(assert (=> bm!333046 m!5717453))

(declare-fun m!5717457 () Bool)

(assert (=> b!4752661 m!5717457))

(declare-fun m!5717459 () Bool)

(assert (=> b!4752661 m!5717459))

(declare-fun m!5717461 () Bool)

(assert (=> b!4752661 m!5717461))

(declare-fun m!5717463 () Bool)

(assert (=> b!4752661 m!5717463))

(declare-fun m!5717465 () Bool)

(assert (=> b!4752661 m!5717465))

(declare-fun m!5717467 () Bool)

(assert (=> b!4752661 m!5717467))

(declare-fun m!5717469 () Bool)

(assert (=> b!4752661 m!5717469))

(assert (=> b!4752661 m!5717465))

(declare-fun m!5717471 () Bool)

(assert (=> b!4752661 m!5717471))

(assert (=> b!4752661 m!5717469))

(declare-fun m!5717473 () Bool)

(assert (=> b!4752661 m!5717473))

(declare-fun m!5717475 () Bool)

(assert (=> b!4752661 m!5717475))

(assert (=> b!4752661 m!5717463))

(declare-fun m!5717477 () Bool)

(assert (=> d!1519531 m!5717477))

(assert (=> d!1519531 m!5717121))

(assert (=> b!4752546 d!1519531))

(declare-fun d!1519537 () Bool)

(declare-fun e!2964774 () Bool)

(assert (=> d!1519537 e!2964774))

(declare-fun res!2015580 () Bool)

(assert (=> d!1519537 (=> (not res!2015580) (not e!2964774))))

(declare-fun lt!1917161 () ListMap!5543)

(assert (=> d!1519537 (= res!2015580 (contains!16514 lt!1917161 (_1!30723 (h!59486 l!14304))))))

(declare-fun lt!1917159 () List!53213)

(assert (=> d!1519537 (= lt!1917161 (ListMap!5544 lt!1917159))))

(declare-fun lt!1917158 () Unit!136238)

(declare-fun lt!1917160 () Unit!136238)

(assert (=> d!1519537 (= lt!1917158 lt!1917160)))

(assert (=> d!1519537 (= (getValueByKey!2082 lt!1917159 (_1!30723 (h!59486 l!14304))) (Some!12531 (_2!30723 (h!59486 l!14304))))))

(assert (=> d!1519537 (= lt!1917160 (lemmaContainsTupThenGetReturnValue!1159 lt!1917159 (_1!30723 (h!59486 l!14304)) (_2!30723 (h!59486 l!14304))))))

(assert (=> d!1519537 (= lt!1917159 (insertNoDuplicatedKeys!667 (toList!6117 (+!2383 acc!1214 t!14174)) (_1!30723 (h!59486 l!14304)) (_2!30723 (h!59486 l!14304))))))

(assert (=> d!1519537 (= (+!2383 (+!2383 acc!1214 t!14174) (h!59486 l!14304)) lt!1917161)))

(declare-fun b!4752674 () Bool)

(declare-fun res!2015581 () Bool)

(assert (=> b!4752674 (=> (not res!2015581) (not e!2964774))))

(assert (=> b!4752674 (= res!2015581 (= (getValueByKey!2082 (toList!6117 lt!1917161) (_1!30723 (h!59486 l!14304))) (Some!12531 (_2!30723 (h!59486 l!14304)))))))

(declare-fun b!4752675 () Bool)

(assert (=> b!4752675 (= e!2964774 (contains!16515 (toList!6117 lt!1917161) (h!59486 l!14304)))))

(assert (= (and d!1519537 res!2015580) b!4752674))

(assert (= (and b!4752674 res!2015581) b!4752675))

(declare-fun m!5717479 () Bool)

(assert (=> d!1519537 m!5717479))

(declare-fun m!5717481 () Bool)

(assert (=> d!1519537 m!5717481))

(declare-fun m!5717483 () Bool)

(assert (=> d!1519537 m!5717483))

(declare-fun m!5717485 () Bool)

(assert (=> d!1519537 m!5717485))

(declare-fun m!5717487 () Bool)

(assert (=> b!4752674 m!5717487))

(declare-fun m!5717489 () Bool)

(assert (=> b!4752675 m!5717489))

(assert (=> b!4752546 d!1519537))

(declare-fun bs!1144078 () Bool)

(declare-fun b!4752677 () Bool)

(assert (= bs!1144078 (and b!4752677 b!4752620)))

(declare-fun lambda!222281 () Int)

(assert (=> bs!1144078 (= (= acc!1214 lt!1916827) (= lambda!222281 lambda!222239))))

(declare-fun bs!1144079 () Bool)

(assert (= bs!1144079 (and b!4752677 d!1519497)))

(assert (=> bs!1144079 (= (= acc!1214 lt!1916962) (= lambda!222281 lambda!222232))))

(declare-fun bs!1144080 () Bool)

(assert (= bs!1144080 (and b!4752677 b!4752599)))

(assert (=> bs!1144080 (= (= acc!1214 lt!1916948) (= lambda!222281 lambda!222227))))

(declare-fun bs!1144081 () Bool)

(assert (= bs!1144081 (and b!4752677 b!4752600)))

(assert (=> bs!1144081 (= (= acc!1214 (+!2383 lt!1916825 (h!59486 l!14304))) (= lambda!222281 lambda!222225))))

(declare-fun bs!1144082 () Bool)

(assert (= bs!1144082 (and b!4752677 b!4752630)))

(assert (=> bs!1144082 (= (= acc!1214 lt!1917054) (= lambda!222281 lambda!222271))))

(declare-fun bs!1144083 () Bool)

(assert (= bs!1144083 (and b!4752677 b!4752586)))

(assert (=> bs!1144083 (= (= acc!1214 lt!1916915) (= lambda!222281 lambda!222223))))

(declare-fun bs!1144084 () Bool)

(assert (= bs!1144084 (and b!4752677 d!1519475)))

(assert (=> bs!1144084 (= (= acc!1214 lt!1916904) (= lambda!222281 lambda!222224))))

(assert (=> bs!1144080 (= (= acc!1214 (+!2383 lt!1916825 (h!59486 l!14304))) (= lambda!222281 lambda!222226))))

(declare-fun bs!1144085 () Bool)

(assert (= bs!1144085 (and b!4752677 d!1519503)))

(assert (=> bs!1144085 (= (= acc!1214 lt!1917043) (= lambda!222281 lambda!222272))))

(declare-fun bs!1144086 () Bool)

(assert (= bs!1144086 (and b!4752677 b!4752631)))

(assert (=> bs!1144086 (= (= acc!1214 lt!1916825) (= lambda!222281 lambda!222265))))

(assert (=> bs!1144083 (= (= acc!1214 (+!2383 lt!1916827 t!14174)) (= lambda!222281 lambda!222222))))

(declare-fun bs!1144087 () Bool)

(assert (= bs!1144087 (and b!4752677 b!4752619)))

(assert (=> bs!1144087 (= (= acc!1214 lt!1917004) (= lambda!222281 lambda!222245))))

(declare-fun bs!1144088 () Bool)

(assert (= bs!1144088 (and b!4752677 b!4752615)))

(assert (=> bs!1144088 (= lambda!222281 lambda!222229)))

(declare-fun bs!1144089 () Bool)

(assert (= bs!1144089 (and b!4752677 b!4752661)))

(assert (=> bs!1144089 (= (= acc!1214 lt!1916827) (= lambda!222281 lambda!222278))))

(declare-fun bs!1144090 () Bool)

(assert (= bs!1144090 (and b!4752677 d!1519531)))

(assert (=> bs!1144090 (= (= acc!1214 lt!1917121) (= lambda!222281 lambda!222280))))

(declare-fun bs!1144091 () Bool)

(assert (= bs!1144091 (and b!4752677 b!4752587)))

(assert (=> bs!1144091 (= (= acc!1214 (+!2383 lt!1916827 t!14174)) (= lambda!222281 lambda!222221))))

(declare-fun bs!1144092 () Bool)

(assert (= bs!1144092 (and b!4752677 b!4752614)))

(assert (=> bs!1144092 (= (= acc!1214 lt!1916973) (= lambda!222281 lambda!222231))))

(assert (=> bs!1144087 (= (= acc!1214 lt!1916827) (= lambda!222281 lambda!222242))))

(assert (=> bs!1144082 (= (= acc!1214 lt!1916825) (= lambda!222281 lambda!222269))))

(declare-fun bs!1144093 () Bool)

(assert (= bs!1144093 (and b!4752677 d!1519485)))

(assert (=> bs!1144093 (= (= acc!1214 lt!1916937) (= lambda!222281 lambda!222228))))

(assert (=> bs!1144089 (= (= acc!1214 lt!1917132) (= lambda!222281 lambda!222279))))

(declare-fun bs!1144095 () Bool)

(assert (= bs!1144095 (and b!4752677 d!1519499)))

(assert (=> bs!1144095 (= (= acc!1214 lt!1916993) (= lambda!222281 lambda!222250))))

(declare-fun bs!1144096 () Bool)

(assert (= bs!1144096 (and b!4752677 b!4752662)))

(assert (=> bs!1144096 (= (= acc!1214 lt!1916827) (= lambda!222281 lambda!222277))))

(assert (=> bs!1144092 (= lambda!222281 lambda!222230)))

(assert (=> b!4752677 true))

(declare-fun bs!1144097 () Bool)

(declare-fun b!4752676 () Bool)

(assert (= bs!1144097 (and b!4752676 b!4752620)))

(declare-fun lambda!222282 () Int)

(assert (=> bs!1144097 (= (= acc!1214 lt!1916827) (= lambda!222282 lambda!222239))))

(declare-fun bs!1144098 () Bool)

(assert (= bs!1144098 (and b!4752676 d!1519497)))

(assert (=> bs!1144098 (= (= acc!1214 lt!1916962) (= lambda!222282 lambda!222232))))

(declare-fun bs!1144099 () Bool)

(assert (= bs!1144099 (and b!4752676 b!4752599)))

(assert (=> bs!1144099 (= (= acc!1214 lt!1916948) (= lambda!222282 lambda!222227))))

(declare-fun bs!1144100 () Bool)

(assert (= bs!1144100 (and b!4752676 b!4752600)))

(assert (=> bs!1144100 (= (= acc!1214 (+!2383 lt!1916825 (h!59486 l!14304))) (= lambda!222282 lambda!222225))))

(declare-fun bs!1144101 () Bool)

(assert (= bs!1144101 (and b!4752676 b!4752630)))

(assert (=> bs!1144101 (= (= acc!1214 lt!1917054) (= lambda!222282 lambda!222271))))

(declare-fun bs!1144102 () Bool)

(assert (= bs!1144102 (and b!4752676 b!4752586)))

(assert (=> bs!1144102 (= (= acc!1214 lt!1916915) (= lambda!222282 lambda!222223))))

(declare-fun bs!1144103 () Bool)

(assert (= bs!1144103 (and b!4752676 d!1519475)))

(assert (=> bs!1144103 (= (= acc!1214 lt!1916904) (= lambda!222282 lambda!222224))))

(assert (=> bs!1144099 (= (= acc!1214 (+!2383 lt!1916825 (h!59486 l!14304))) (= lambda!222282 lambda!222226))))

(declare-fun bs!1144105 () Bool)

(assert (= bs!1144105 (and b!4752676 d!1519503)))

(assert (=> bs!1144105 (= (= acc!1214 lt!1917043) (= lambda!222282 lambda!222272))))

(declare-fun bs!1144106 () Bool)

(assert (= bs!1144106 (and b!4752676 b!4752631)))

(assert (=> bs!1144106 (= (= acc!1214 lt!1916825) (= lambda!222282 lambda!222265))))

(assert (=> bs!1144102 (= (= acc!1214 (+!2383 lt!1916827 t!14174)) (= lambda!222282 lambda!222222))))

(declare-fun bs!1144107 () Bool)

(assert (= bs!1144107 (and b!4752676 b!4752619)))

(assert (=> bs!1144107 (= (= acc!1214 lt!1917004) (= lambda!222282 lambda!222245))))

(declare-fun bs!1144108 () Bool)

(assert (= bs!1144108 (and b!4752676 b!4752677)))

(assert (=> bs!1144108 (= lambda!222282 lambda!222281)))

(declare-fun bs!1144109 () Bool)

(assert (= bs!1144109 (and b!4752676 b!4752615)))

(assert (=> bs!1144109 (= lambda!222282 lambda!222229)))

(declare-fun bs!1144110 () Bool)

(assert (= bs!1144110 (and b!4752676 b!4752661)))

(assert (=> bs!1144110 (= (= acc!1214 lt!1916827) (= lambda!222282 lambda!222278))))

(declare-fun bs!1144111 () Bool)

(assert (= bs!1144111 (and b!4752676 d!1519531)))

(assert (=> bs!1144111 (= (= acc!1214 lt!1917121) (= lambda!222282 lambda!222280))))

(declare-fun bs!1144112 () Bool)

(assert (= bs!1144112 (and b!4752676 b!4752587)))

(assert (=> bs!1144112 (= (= acc!1214 (+!2383 lt!1916827 t!14174)) (= lambda!222282 lambda!222221))))

(declare-fun bs!1144114 () Bool)

(assert (= bs!1144114 (and b!4752676 b!4752614)))

(assert (=> bs!1144114 (= (= acc!1214 lt!1916973) (= lambda!222282 lambda!222231))))

(assert (=> bs!1144107 (= (= acc!1214 lt!1916827) (= lambda!222282 lambda!222242))))

(assert (=> bs!1144101 (= (= acc!1214 lt!1916825) (= lambda!222282 lambda!222269))))

(declare-fun bs!1144115 () Bool)

(assert (= bs!1144115 (and b!4752676 d!1519485)))

(assert (=> bs!1144115 (= (= acc!1214 lt!1916937) (= lambda!222282 lambda!222228))))

(assert (=> bs!1144110 (= (= acc!1214 lt!1917132) (= lambda!222282 lambda!222279))))

(declare-fun bs!1144116 () Bool)

(assert (= bs!1144116 (and b!4752676 d!1519499)))

(assert (=> bs!1144116 (= (= acc!1214 lt!1916993) (= lambda!222282 lambda!222250))))

(declare-fun bs!1144117 () Bool)

(assert (= bs!1144117 (and b!4752676 b!4752662)))

(assert (=> bs!1144117 (= (= acc!1214 lt!1916827) (= lambda!222282 lambda!222277))))

(assert (=> bs!1144114 (= lambda!222282 lambda!222230)))

(assert (=> b!4752676 true))

(declare-fun lambda!222284 () Int)

(declare-fun lt!1917173 () ListMap!5543)

(assert (=> bs!1144097 (= (= lt!1917173 lt!1916827) (= lambda!222284 lambda!222239))))

(assert (=> bs!1144098 (= (= lt!1917173 lt!1916962) (= lambda!222284 lambda!222232))))

(assert (=> bs!1144099 (= (= lt!1917173 lt!1916948) (= lambda!222284 lambda!222227))))

(assert (=> bs!1144100 (= (= lt!1917173 (+!2383 lt!1916825 (h!59486 l!14304))) (= lambda!222284 lambda!222225))))

(assert (=> bs!1144101 (= (= lt!1917173 lt!1917054) (= lambda!222284 lambda!222271))))

(assert (=> bs!1144102 (= (= lt!1917173 lt!1916915) (= lambda!222284 lambda!222223))))

(assert (=> bs!1144103 (= (= lt!1917173 lt!1916904) (= lambda!222284 lambda!222224))))

(assert (=> bs!1144105 (= (= lt!1917173 lt!1917043) (= lambda!222284 lambda!222272))))

(assert (=> bs!1144106 (= (= lt!1917173 lt!1916825) (= lambda!222284 lambda!222265))))

(assert (=> bs!1144102 (= (= lt!1917173 (+!2383 lt!1916827 t!14174)) (= lambda!222284 lambda!222222))))

(assert (=> bs!1144107 (= (= lt!1917173 lt!1917004) (= lambda!222284 lambda!222245))))

(assert (=> bs!1144108 (= (= lt!1917173 acc!1214) (= lambda!222284 lambda!222281))))

(assert (=> bs!1144109 (= (= lt!1917173 acc!1214) (= lambda!222284 lambda!222229))))

(assert (=> bs!1144110 (= (= lt!1917173 lt!1916827) (= lambda!222284 lambda!222278))))

(assert (=> bs!1144111 (= (= lt!1917173 lt!1917121) (= lambda!222284 lambda!222280))))

(assert (=> bs!1144112 (= (= lt!1917173 (+!2383 lt!1916827 t!14174)) (= lambda!222284 lambda!222221))))

(assert (=> bs!1144114 (= (= lt!1917173 lt!1916973) (= lambda!222284 lambda!222231))))

(assert (=> bs!1144107 (= (= lt!1917173 lt!1916827) (= lambda!222284 lambda!222242))))

(assert (=> bs!1144101 (= (= lt!1917173 lt!1916825) (= lambda!222284 lambda!222269))))

(assert (=> bs!1144115 (= (= lt!1917173 lt!1916937) (= lambda!222284 lambda!222228))))

(assert (=> b!4752676 (= (= lt!1917173 acc!1214) (= lambda!222284 lambda!222282))))

(assert (=> bs!1144099 (= (= lt!1917173 (+!2383 lt!1916825 (h!59486 l!14304))) (= lambda!222284 lambda!222226))))

(assert (=> bs!1144110 (= (= lt!1917173 lt!1917132) (= lambda!222284 lambda!222279))))

(assert (=> bs!1144116 (= (= lt!1917173 lt!1916993) (= lambda!222284 lambda!222250))))

(assert (=> bs!1144117 (= (= lt!1917173 lt!1916827) (= lambda!222284 lambda!222277))))

(assert (=> bs!1144114 (= (= lt!1917173 acc!1214) (= lambda!222284 lambda!222230))))

(assert (=> b!4752676 true))

(declare-fun bs!1144131 () Bool)

(declare-fun d!1519539 () Bool)

(assert (= bs!1144131 (and d!1519539 b!4752620)))

(declare-fun lambda!222287 () Int)

(declare-fun lt!1917162 () ListMap!5543)

(assert (=> bs!1144131 (= (= lt!1917162 lt!1916827) (= lambda!222287 lambda!222239))))

(declare-fun bs!1144132 () Bool)

(assert (= bs!1144132 (and d!1519539 d!1519497)))

(assert (=> bs!1144132 (= (= lt!1917162 lt!1916962) (= lambda!222287 lambda!222232))))

(declare-fun bs!1144133 () Bool)

(assert (= bs!1144133 (and d!1519539 b!4752599)))

(assert (=> bs!1144133 (= (= lt!1917162 lt!1916948) (= lambda!222287 lambda!222227))))

(declare-fun bs!1144134 () Bool)

(assert (= bs!1144134 (and d!1519539 b!4752600)))

(assert (=> bs!1144134 (= (= lt!1917162 (+!2383 lt!1916825 (h!59486 l!14304))) (= lambda!222287 lambda!222225))))

(declare-fun bs!1144135 () Bool)

(assert (= bs!1144135 (and d!1519539 b!4752630)))

(assert (=> bs!1144135 (= (= lt!1917162 lt!1917054) (= lambda!222287 lambda!222271))))

(declare-fun bs!1144136 () Bool)

(assert (= bs!1144136 (and d!1519539 b!4752676)))

(assert (=> bs!1144136 (= (= lt!1917162 lt!1917173) (= lambda!222287 lambda!222284))))

(declare-fun bs!1144137 () Bool)

(assert (= bs!1144137 (and d!1519539 b!4752586)))

(assert (=> bs!1144137 (= (= lt!1917162 lt!1916915) (= lambda!222287 lambda!222223))))

(declare-fun bs!1144138 () Bool)

(assert (= bs!1144138 (and d!1519539 d!1519475)))

(assert (=> bs!1144138 (= (= lt!1917162 lt!1916904) (= lambda!222287 lambda!222224))))

(declare-fun bs!1144140 () Bool)

(assert (= bs!1144140 (and d!1519539 d!1519503)))

(assert (=> bs!1144140 (= (= lt!1917162 lt!1917043) (= lambda!222287 lambda!222272))))

(declare-fun bs!1144141 () Bool)

(assert (= bs!1144141 (and d!1519539 b!4752631)))

(assert (=> bs!1144141 (= (= lt!1917162 lt!1916825) (= lambda!222287 lambda!222265))))

(assert (=> bs!1144137 (= (= lt!1917162 (+!2383 lt!1916827 t!14174)) (= lambda!222287 lambda!222222))))

(declare-fun bs!1144143 () Bool)

(assert (= bs!1144143 (and d!1519539 b!4752619)))

(assert (=> bs!1144143 (= (= lt!1917162 lt!1917004) (= lambda!222287 lambda!222245))))

(declare-fun bs!1144145 () Bool)

(assert (= bs!1144145 (and d!1519539 b!4752677)))

(assert (=> bs!1144145 (= (= lt!1917162 acc!1214) (= lambda!222287 lambda!222281))))

(declare-fun bs!1144147 () Bool)

(assert (= bs!1144147 (and d!1519539 b!4752615)))

(assert (=> bs!1144147 (= (= lt!1917162 acc!1214) (= lambda!222287 lambda!222229))))

(declare-fun bs!1144149 () Bool)

(assert (= bs!1144149 (and d!1519539 b!4752661)))

(assert (=> bs!1144149 (= (= lt!1917162 lt!1916827) (= lambda!222287 lambda!222278))))

(declare-fun bs!1144151 () Bool)

(assert (= bs!1144151 (and d!1519539 d!1519531)))

(assert (=> bs!1144151 (= (= lt!1917162 lt!1917121) (= lambda!222287 lambda!222280))))

(declare-fun bs!1144152 () Bool)

(assert (= bs!1144152 (and d!1519539 b!4752587)))

(assert (=> bs!1144152 (= (= lt!1917162 (+!2383 lt!1916827 t!14174)) (= lambda!222287 lambda!222221))))

(declare-fun bs!1144153 () Bool)

(assert (= bs!1144153 (and d!1519539 b!4752614)))

(assert (=> bs!1144153 (= (= lt!1917162 lt!1916973) (= lambda!222287 lambda!222231))))

(assert (=> bs!1144143 (= (= lt!1917162 lt!1916827) (= lambda!222287 lambda!222242))))

(assert (=> bs!1144135 (= (= lt!1917162 lt!1916825) (= lambda!222287 lambda!222269))))

(declare-fun bs!1144156 () Bool)

(assert (= bs!1144156 (and d!1519539 d!1519485)))

(assert (=> bs!1144156 (= (= lt!1917162 lt!1916937) (= lambda!222287 lambda!222228))))

(assert (=> bs!1144136 (= (= lt!1917162 acc!1214) (= lambda!222287 lambda!222282))))

(assert (=> bs!1144133 (= (= lt!1917162 (+!2383 lt!1916825 (h!59486 l!14304))) (= lambda!222287 lambda!222226))))

(assert (=> bs!1144149 (= (= lt!1917162 lt!1917132) (= lambda!222287 lambda!222279))))

(declare-fun bs!1144157 () Bool)

(assert (= bs!1144157 (and d!1519539 d!1519499)))

(assert (=> bs!1144157 (= (= lt!1917162 lt!1916993) (= lambda!222287 lambda!222250))))

(declare-fun bs!1144158 () Bool)

(assert (= bs!1144158 (and d!1519539 b!4752662)))

(assert (=> bs!1144158 (= (= lt!1917162 lt!1916827) (= lambda!222287 lambda!222277))))

(assert (=> bs!1144153 (= (= lt!1917162 acc!1214) (= lambda!222287 lambda!222230))))

(assert (=> d!1519539 true))

(declare-fun bm!333047 () Bool)

(declare-fun call!333053 () Bool)

(declare-fun c!811500 () Bool)

(assert (=> bm!333047 (= call!333053 (forall!11763 (toList!6117 acc!1214) (ite c!811500 lambda!222281 lambda!222284)))))

(declare-fun bm!333048 () Bool)

(declare-fun call!333052 () Unit!136238)

(assert (=> bm!333048 (= call!333052 (lemmaContainsAllItsOwnKeys!878 acc!1214))))

(declare-fun e!2964777 () ListMap!5543)

(assert (=> b!4752676 (= e!2964777 lt!1917173)))

(declare-fun lt!1917168 () ListMap!5543)

(assert (=> b!4752676 (= lt!1917168 (+!2383 acc!1214 (h!59486 lt!1916824)))))

(assert (=> b!4752676 (= lt!1917173 (addToMapMapFromBucket!1573 (t!360549 lt!1916824) (+!2383 acc!1214 (h!59486 lt!1916824))))))

(declare-fun lt!1917163 () Unit!136238)

(assert (=> b!4752676 (= lt!1917163 call!333052)))

(assert (=> b!4752676 (forall!11763 (toList!6117 acc!1214) lambda!222282)))

(declare-fun lt!1917175 () Unit!136238)

(assert (=> b!4752676 (= lt!1917175 lt!1917163)))

(assert (=> b!4752676 (forall!11763 (toList!6117 lt!1917168) lambda!222284)))

(declare-fun lt!1917172 () Unit!136238)

(declare-fun Unit!136352 () Unit!136238)

(assert (=> b!4752676 (= lt!1917172 Unit!136352)))

(assert (=> b!4752676 (forall!11763 (t!360549 lt!1916824) lambda!222284)))

(declare-fun lt!1917167 () Unit!136238)

(declare-fun Unit!136353 () Unit!136238)

(assert (=> b!4752676 (= lt!1917167 Unit!136353)))

(declare-fun lt!1917171 () Unit!136238)

(declare-fun Unit!136354 () Unit!136238)

(assert (=> b!4752676 (= lt!1917171 Unit!136354)))

(declare-fun lt!1917178 () Unit!136238)

(assert (=> b!4752676 (= lt!1917178 (forallContained!3789 (toList!6117 lt!1917168) lambda!222284 (h!59486 lt!1916824)))))

(assert (=> b!4752676 (contains!16514 lt!1917168 (_1!30723 (h!59486 lt!1916824)))))

(declare-fun lt!1917166 () Unit!136238)

(declare-fun Unit!136355 () Unit!136238)

(assert (=> b!4752676 (= lt!1917166 Unit!136355)))

(assert (=> b!4752676 (contains!16514 lt!1917173 (_1!30723 (h!59486 lt!1916824)))))

(declare-fun lt!1917165 () Unit!136238)

(declare-fun Unit!136356 () Unit!136238)

(assert (=> b!4752676 (= lt!1917165 Unit!136356)))

(assert (=> b!4752676 (forall!11763 lt!1916824 lambda!222284)))

(declare-fun lt!1917182 () Unit!136238)

(declare-fun Unit!136357 () Unit!136238)

(assert (=> b!4752676 (= lt!1917182 Unit!136357)))

(assert (=> b!4752676 (forall!11763 (toList!6117 lt!1917168) lambda!222284)))

(declare-fun lt!1917180 () Unit!136238)

(declare-fun Unit!136358 () Unit!136238)

(assert (=> b!4752676 (= lt!1917180 Unit!136358)))

(declare-fun lt!1917179 () Unit!136238)

(declare-fun Unit!136359 () Unit!136238)

(assert (=> b!4752676 (= lt!1917179 Unit!136359)))

(declare-fun lt!1917169 () Unit!136238)

(assert (=> b!4752676 (= lt!1917169 (addForallContainsKeyThenBeforeAdding!877 acc!1214 lt!1917173 (_1!30723 (h!59486 lt!1916824)) (_2!30723 (h!59486 lt!1916824))))))

(declare-fun call!333054 () Bool)

(assert (=> b!4752676 call!333054))

(declare-fun lt!1917164 () Unit!136238)

(assert (=> b!4752676 (= lt!1917164 lt!1917169)))

(assert (=> b!4752676 call!333053))

(declare-fun lt!1917177 () Unit!136238)

(declare-fun Unit!136360 () Unit!136238)

(assert (=> b!4752676 (= lt!1917177 Unit!136360)))

(declare-fun res!2015582 () Bool)

(assert (=> b!4752676 (= res!2015582 (forall!11763 lt!1916824 lambda!222284))))

(declare-fun e!2964775 () Bool)

(assert (=> b!4752676 (=> (not res!2015582) (not e!2964775))))

(assert (=> b!4752676 e!2964775))

(declare-fun lt!1917170 () Unit!136238)

(declare-fun Unit!136361 () Unit!136238)

(assert (=> b!4752676 (= lt!1917170 Unit!136361)))

(assert (=> b!4752677 (= e!2964777 acc!1214)))

(declare-fun lt!1917181 () Unit!136238)

(assert (=> b!4752677 (= lt!1917181 call!333052)))

(assert (=> b!4752677 call!333054))

(declare-fun lt!1917174 () Unit!136238)

(assert (=> b!4752677 (= lt!1917174 lt!1917181)))

(assert (=> b!4752677 call!333053))

(declare-fun lt!1917176 () Unit!136238)

(declare-fun Unit!136362 () Unit!136238)

(assert (=> b!4752677 (= lt!1917176 Unit!136362)))

(declare-fun b!4752678 () Bool)

(assert (=> b!4752678 (= e!2964775 (forall!11763 (toList!6117 acc!1214) lambda!222284))))

(declare-fun bm!333049 () Bool)

(assert (=> bm!333049 (= call!333054 (forall!11763 (toList!6117 acc!1214) (ite c!811500 lambda!222281 lambda!222284)))))

(declare-fun e!2964776 () Bool)

(assert (=> d!1519539 e!2964776))

(declare-fun res!2015583 () Bool)

(assert (=> d!1519539 (=> (not res!2015583) (not e!2964776))))

(assert (=> d!1519539 (= res!2015583 (forall!11763 lt!1916824 lambda!222287))))

(assert (=> d!1519539 (= lt!1917162 e!2964777)))

(assert (=> d!1519539 (= c!811500 (is-Nil!53089 lt!1916824))))

(assert (=> d!1519539 (noDuplicateKeys!2149 lt!1916824)))

(assert (=> d!1519539 (= (addToMapMapFromBucket!1573 lt!1916824 acc!1214) lt!1917162)))

(declare-fun b!4752679 () Bool)

(declare-fun res!2015584 () Bool)

(assert (=> b!4752679 (=> (not res!2015584) (not e!2964776))))

(assert (=> b!4752679 (= res!2015584 (forall!11763 (toList!6117 acc!1214) lambda!222287))))

(declare-fun b!4752680 () Bool)

(assert (=> b!4752680 (= e!2964776 (invariantList!1595 (toList!6117 lt!1917162)))))

(assert (= (and d!1519539 c!811500) b!4752677))

(assert (= (and d!1519539 (not c!811500)) b!4752676))

(assert (= (and b!4752676 res!2015582) b!4752678))

(assert (= (or b!4752677 b!4752676) bm!333048))

(assert (= (or b!4752677 b!4752676) bm!333047))

(assert (= (or b!4752677 b!4752676) bm!333049))

(assert (= (and d!1519539 res!2015583) b!4752679))

(assert (= (and b!4752679 res!2015584) b!4752680))

(declare-fun m!5717561 () Bool)

(assert (=> b!4752679 m!5717561))

(declare-fun m!5717565 () Bool)

(assert (=> b!4752680 m!5717565))

(declare-fun m!5717571 () Bool)

(assert (=> bm!333047 m!5717571))

(declare-fun m!5717573 () Bool)

(assert (=> b!4752678 m!5717573))

(assert (=> bm!333048 m!5717203))

(assert (=> bm!333049 m!5717571))

(declare-fun m!5717577 () Bool)

(assert (=> b!4752676 m!5717577))

(declare-fun m!5717579 () Bool)

(assert (=> b!4752676 m!5717579))

(declare-fun m!5717581 () Bool)

(assert (=> b!4752676 m!5717581))

(declare-fun m!5717583 () Bool)

(assert (=> b!4752676 m!5717583))

(declare-fun m!5717585 () Bool)

(assert (=> b!4752676 m!5717585))

(declare-fun m!5717587 () Bool)

(assert (=> b!4752676 m!5717587))

(declare-fun m!5717589 () Bool)

(assert (=> b!4752676 m!5717589))

(assert (=> b!4752676 m!5717585))

(declare-fun m!5717591 () Bool)

(assert (=> b!4752676 m!5717591))

(assert (=> b!4752676 m!5717589))

(declare-fun m!5717593 () Bool)

(assert (=> b!4752676 m!5717593))

(declare-fun m!5717595 () Bool)

(assert (=> b!4752676 m!5717595))

(assert (=> b!4752676 m!5717583))

(declare-fun m!5717597 () Bool)

(assert (=> d!1519539 m!5717597))

(assert (=> d!1519539 m!5717031))

(assert (=> b!4752546 d!1519539))

(declare-fun b!4752699 () Bool)

(declare-fun tp!1350212 () Bool)

(declare-fun e!2964788 () Bool)

(assert (=> b!4752699 (= e!2964788 (and tp_is_empty!31889 tp_is_empty!31891 tp!1350212))))

(assert (=> b!4752543 (= tp!1350203 e!2964788)))

(assert (= (and b!4752543 (is-Cons!53089 (t!360549 l!14304))) b!4752699))

(declare-fun e!2964789 () Bool)

(declare-fun b!4752700 () Bool)

(declare-fun tp!1350213 () Bool)

(assert (=> b!4752700 (= e!2964789 (and tp_is_empty!31889 tp_is_empty!31891 tp!1350213))))

(assert (=> b!4752542 (= tp!1350202 e!2964789)))

(assert (= (and b!4752542 (is-Cons!53089 (toList!6117 acc!1214))) b!4752700))

(push 1)

(assert (not b!4752699))

(assert (not b!4752623))

(assert (not b!4752605))

(assert (not b!4752589))

(assert (not b!4752619))

(assert (not b!4752651))

(assert (not d!1519511))

(assert (not bm!333045))

(assert (not b!4752661))

(assert (not b!4752630))

(assert (not bm!333026))

(assert (not b!4752616))

(assert (not b!4752663))

(assert (not b!4752612))

(assert (not d!1519475))

(assert (not b!4752680))

(assert (not b!4752660))

(assert (not b!4752659))

(assert (not b!4752634))

(assert (not bm!333047))

(assert (not d!1519519))

(assert (not b!4752618))

(assert (not d!1519493))

(assert (not d!1519487))

(assert (not b!4752601))

(assert (not d!1519497))

(assert (not d!1519481))

(assert tp_is_empty!31891)

(assert (not b!4752664))

(assert (not b!4752613))

(assert (not bm!333048))

(assert (not d!1519525))

(assert (not d!1519513))

(assert tp_is_empty!31889)

(assert (not bm!333024))

(assert (not bm!333027))

(assert (not d!1519499))

(assert (not b!4752604))

(assert (not b!4752610))

(assert (not bm!333044))

(assert (not d!1519485))

(assert (not d!1519473))

(assert (not b!4752632))

(assert (not d!1519521))

(assert (not b!4752622))

(assert (not b!4752678))

(assert (not d!1519483))

(assert (not b!4752676))

(assert (not b!4752597))

(assert (not b!4752617))

(assert (not bm!333022))

(assert (not d!1519523))

(assert (not bm!333020))

(assert (not b!4752611))

(assert (not b!4752598))

(assert (not b!4752621))

(assert (not bm!333025))

(assert (not bm!333036))

(assert (not b!4752633))

(assert (not bm!333028))

(assert (not b!4752590))

(assert (not b!4752586))

(assert (not d!1519531))

(assert (not bm!333049))

(assert (not d!1519503))

(assert (not bm!333019))

(assert (not b!4752658))

(assert (not b!4752700))

(assert (not b!4752665))

(assert (not bm!333023))

(assert (not bm!333017))

(assert (not b!4752614))

(assert (not d!1519539))

(assert (not d!1519529))

(assert (not bm!333018))

(assert (not b!4752674))

(assert (not b!4752650))

(assert (not b!4752679))

(assert (not d!1519495))

(assert (not b!4752657))

(assert (not bm!333035))

(assert (not bm!333046))

(assert (not b!4752602))

(assert (not bm!333021))

(assert (not d!1519501))

(assert (not b!4752675))

(assert (not b!4752603))

(assert (not b!4752599))

(assert (not d!1519537))

(assert (not b!4752588))

(assert (not bm!333037))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

