; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!757954 () Bool)

(assert start!757954)

(declare-datatypes ((K!22683 0))(
  ( (K!22684 (val!32819 Int)) )
))
(declare-datatypes ((B!4477 0))(
  ( (B!4478 (val!32820 Int)) )
))
(declare-datatypes ((tuple2!70784 0))(
  ( (tuple2!70785 (_1!38695 K!22683) (_2!38695 B!4477)) )
))
(declare-datatypes ((List!75595 0))(
  ( (Nil!75469) (Cons!75469 (h!81917 tuple2!70784) (t!391367 List!75595)) )
))
(declare-datatypes ((ListMap!7187 0))(
  ( (ListMap!7188 (toList!11868 List!75595)) )
))
(declare-fun thiss!41873 () ListMap!7187)

(declare-fun key!1636 () K!22683)

(declare-fun inv!97172 (ListMap!7187) Bool)

(declare-fun removePresrvNoDuplicatedKeys!409 (List!75595 K!22683) List!75595)

(assert (=> start!757954 (not (inv!97172 (ListMap!7188 (removePresrvNoDuplicatedKeys!409 (toList!11868 thiss!41873) key!1636))))))

(declare-fun e!4742182 () Bool)

(assert (=> start!757954 (and (inv!97172 thiss!41873) e!4742182)))

(declare-fun tp_is_empty!54689 () Bool)

(assert (=> start!757954 tp_is_empty!54689))

(declare-fun b!8048342 () Bool)

(declare-fun tp!2413335 () Bool)

(assert (=> b!8048342 (= e!4742182 tp!2413335)))

(assert (= start!757954 b!8048342))

(declare-fun m!8399536 () Bool)

(assert (=> start!757954 m!8399536))

(declare-fun m!8399538 () Bool)

(assert (=> start!757954 m!8399538))

(declare-fun m!8399540 () Bool)

(assert (=> start!757954 m!8399540))

(check-sat (not start!757954) (not b!8048342) tp_is_empty!54689)
(check-sat)
(get-model)

(declare-fun d!2396939 () Bool)

(declare-fun invariantList!1910 (List!75595) Bool)

(assert (=> d!2396939 (= (inv!97172 (ListMap!7188 (removePresrvNoDuplicatedKeys!409 (toList!11868 thiss!41873) key!1636))) (invariantList!1910 (toList!11868 (ListMap!7188 (removePresrvNoDuplicatedKeys!409 (toList!11868 thiss!41873) key!1636)))))))

(declare-fun bs!1971806 () Bool)

(assert (= bs!1971806 d!2396939))

(declare-fun m!8399544 () Bool)

(assert (=> bs!1971806 m!8399544))

(assert (=> start!757954 d!2396939))

(declare-fun bm!746734 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun call!746739 () (InoxSet tuple2!70784))

(declare-fun content!16080 (List!75595) (InoxSet tuple2!70784))

(assert (=> bm!746734 (= call!746739 (content!16080 (toList!11868 thiss!41873)))))

(declare-fun b!8048443 () Bool)

(declare-fun e!4742240 () List!75595)

(declare-fun e!4742242 () List!75595)

(assert (=> b!8048443 (= e!4742240 e!4742242)))

(declare-fun c!1475591 () Bool)

(get-info :version)

(assert (=> b!8048443 (= c!1475591 (and ((_ is Cons!75469) (toList!11868 thiss!41873)) (not (= (_1!38695 (h!81917 (toList!11868 thiss!41873))) key!1636))))))

(declare-fun b!8048444 () Bool)

(declare-datatypes ((Unit!171188 0))(
  ( (Unit!171189) )
))
(declare-fun e!4742237 () Unit!171188)

(declare-fun Unit!171190 () Unit!171188)

(assert (=> b!8048444 (= e!4742237 Unit!171190)))

(declare-fun lt!2723059 () Unit!171188)

(declare-fun lemmaInGetKeysListThenContainsKey!1218 (List!75595 K!22683) Unit!171188)

(assert (=> b!8048444 (= lt!2723059 (lemmaInGetKeysListThenContainsKey!1218 (t!391367 (toList!11868 thiss!41873)) (_1!38695 (h!81917 (toList!11868 thiss!41873)))))))

(declare-fun call!746742 () Bool)

(assert (=> b!8048444 call!746742))

(declare-fun lt!2723062 () Unit!171188)

(assert (=> b!8048444 (= lt!2723062 lt!2723059)))

(assert (=> b!8048444 false))

(declare-fun b!8048445 () Bool)

(assert (=> b!8048445 (= e!4742240 (t!391367 (toList!11868 thiss!41873)))))

(declare-fun c!1475592 () Bool)

(declare-fun call!746743 () Bool)

(assert (=> b!8048445 (= c!1475592 call!746743)))

(declare-fun lt!2723050 () Unit!171188)

(declare-fun e!4742243 () Unit!171188)

(assert (=> b!8048445 (= lt!2723050 e!4742243)))

(declare-fun c!1475598 () Bool)

(declare-fun bm!746735 () Bool)

(declare-fun lt!2723053 () K!22683)

(declare-fun containsKey!4782 (List!75595 K!22683) Bool)

(assert (=> bm!746735 (= call!746742 (containsKey!4782 (t!391367 (toList!11868 thiss!41873)) (ite c!1475598 lt!2723053 (_1!38695 (h!81917 (toList!11868 thiss!41873))))))))

(declare-fun b!8048446 () Bool)

(declare-fun res!3181556 () Bool)

(declare-fun e!4742241 () Bool)

(assert (=> b!8048446 (=> (not res!3181556) (not e!4742241))))

(declare-fun lt!2723048 () List!75595)

(assert (=> b!8048446 (= res!3181556 (not (containsKey!4782 lt!2723048 key!1636)))))

(declare-fun b!8048447 () Bool)

(declare-fun e!4742239 () Bool)

(declare-fun call!746741 () (InoxSet tuple2!70784))

(assert (=> b!8048447 (= e!4742239 (= call!746741 call!746739))))

(declare-fun b!8048448 () Bool)

(declare-fun e!4742238 () Unit!171188)

(declare-fun Unit!171191 () Unit!171188)

(assert (=> b!8048448 (= e!4742238 Unit!171191)))

(declare-fun bm!746736 () Bool)

(declare-fun call!746740 () (InoxSet tuple2!70784))

(assert (=> bm!746736 (= call!746740 (content!16080 (toList!11868 thiss!41873)))))

(declare-fun b!8048449 () Bool)

(declare-fun Unit!171193 () Unit!171188)

(assert (=> b!8048449 (= e!4742237 Unit!171193)))

(declare-fun b!8048450 () Bool)

(declare-fun e!4742235 () List!75595)

(assert (=> b!8048450 (= e!4742235 (removePresrvNoDuplicatedKeys!409 (t!391367 (toList!11868 thiss!41873)) key!1636))))

(declare-fun b!8048451 () Bool)

(declare-fun lt!2723047 () Unit!171188)

(assert (=> b!8048451 (= lt!2723047 e!4742238)))

(declare-fun c!1475593 () Bool)

(assert (=> b!8048451 (= c!1475593 call!746743)))

(declare-fun lt!2723063 () Unit!171188)

(assert (=> b!8048451 (= lt!2723063 e!4742237)))

(declare-fun c!1475596 () Bool)

(declare-datatypes ((List!75597 0))(
  ( (Nil!75471) (Cons!75471 (h!81919 K!22683) (t!391369 List!75597)) )
))
(declare-fun contains!21084 (List!75597 K!22683) Bool)

(declare-fun getKeysList!1218 (List!75595) List!75597)

(assert (=> b!8048451 (= c!1475596 (contains!21084 (getKeysList!1218 (t!391367 (toList!11868 thiss!41873))) (_1!38695 (h!81917 (toList!11868 thiss!41873)))))))

(declare-fun lt!2723052 () List!75595)

(declare-fun $colon$colon!3425 (List!75595 tuple2!70784) List!75595)

(assert (=> b!8048451 (= lt!2723052 ($colon$colon!3425 (removePresrvNoDuplicatedKeys!409 (t!391367 (toList!11868 thiss!41873)) key!1636) (h!81917 (toList!11868 thiss!41873))))))

(assert (=> b!8048451 (= e!4742242 lt!2723052)))

(declare-fun b!8048452 () Bool)

(declare-fun call!746744 () (InoxSet tuple2!70784))

(assert (=> b!8048452 (= call!746744 call!746740)))

(declare-fun Unit!171195 () Unit!171188)

(assert (=> b!8048452 (= e!4742243 Unit!171195)))

(declare-fun b!8048453 () Bool)

(declare-datatypes ((Option!17975 0))(
  ( (None!17974) (Some!17974 (v!55255 B!4477)) )
))
(declare-fun get!27167 (Option!17975) B!4477)

(declare-fun getValueByKey!2759 (List!75595 K!22683) Option!17975)

(assert (=> b!8048453 (= call!746744 ((_ map and) call!746740 ((_ map not) (store ((as const (Array tuple2!70784 Bool)) false) (tuple2!70785 key!1636 (get!27167 (getValueByKey!2759 (toList!11868 thiss!41873) key!1636))) true))))))

(declare-fun lt!2723057 () Unit!171188)

(declare-fun e!4742236 () Unit!171188)

(assert (=> b!8048453 (= lt!2723057 e!4742236)))

(declare-fun c!1475595 () Bool)

(declare-fun contains!21085 (List!75595 tuple2!70784) Bool)

(assert (=> b!8048453 (= c!1475595 (contains!21085 (t!391367 (toList!11868 thiss!41873)) (tuple2!70785 key!1636 (get!27167 (getValueByKey!2759 (toList!11868 thiss!41873) key!1636)))))))

(declare-fun Unit!171196 () Unit!171188)

(assert (=> b!8048453 (= e!4742243 Unit!171196)))

(declare-fun b!8048454 () Bool)

(assert (=> b!8048454 (= e!4742239 (= call!746741 ((_ map and) call!746739 ((_ map not) (store ((as const (Array tuple2!70784 Bool)) false) (tuple2!70785 key!1636 (get!27167 (getValueByKey!2759 (toList!11868 thiss!41873) key!1636))) true)))))))

(assert (=> b!8048454 (containsKey!4782 (toList!11868 thiss!41873) key!1636)))

(declare-fun lt!2723058 () Unit!171188)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2530 (List!75595 K!22683) Unit!171188)

(assert (=> b!8048454 (= lt!2723058 (lemmaContainsKeyImpliesGetValueByKeyDefined!2530 (toList!11868 thiss!41873) key!1636))))

(declare-fun isDefined!14508 (Option!17975) Bool)

(assert (=> b!8048454 (isDefined!14508 (getValueByKey!2759 (toList!11868 thiss!41873) key!1636))))

(declare-fun lt!2723055 () Unit!171188)

(assert (=> b!8048454 (= lt!2723055 lt!2723058)))

(declare-fun bm!746737 () Bool)

(assert (=> bm!746737 (= call!746741 (content!16080 lt!2723048))))

(declare-fun b!8048455 () Bool)

(assert (=> b!8048455 (= e!4742242 Nil!75469)))

(declare-fun b!8048456 () Bool)

(assert (=> b!8048456 (= e!4742241 e!4742239)))

(declare-fun c!1475594 () Bool)

(assert (=> b!8048456 (= c!1475594 (containsKey!4782 (toList!11868 thiss!41873) key!1636))))

(declare-fun b!8048457 () Bool)

(declare-fun Unit!171197 () Unit!171188)

(assert (=> b!8048457 (= e!4742236 Unit!171197)))

(declare-fun d!2396945 () Bool)

(assert (=> d!2396945 e!4742241))

(declare-fun res!3181558 () Bool)

(assert (=> d!2396945 (=> (not res!3181558) (not e!4742241))))

(assert (=> d!2396945 (= res!3181558 (invariantList!1910 lt!2723048))))

(assert (=> d!2396945 (= lt!2723048 e!4742240)))

(assert (=> d!2396945 (= c!1475598 (and ((_ is Cons!75469) (toList!11868 thiss!41873)) (= (_1!38695 (h!81917 (toList!11868 thiss!41873))) key!1636)))))

(assert (=> d!2396945 (invariantList!1910 (toList!11868 thiss!41873))))

(assert (=> d!2396945 (= (removePresrvNoDuplicatedKeys!409 (toList!11868 thiss!41873) key!1636) lt!2723048)))

(declare-fun bm!746738 () Bool)

(assert (=> bm!746738 (= call!746744 (content!16080 (t!391367 (toList!11868 thiss!41873))))))

(declare-fun b!8048458 () Bool)

(assert (=> b!8048458 (= e!4742235 (toList!11868 thiss!41873))))

(declare-fun bm!746739 () Bool)

(assert (=> bm!746739 (= call!746743 (containsKey!4782 e!4742235 (ite c!1475598 key!1636 (_1!38695 (h!81917 (toList!11868 thiss!41873))))))))

(declare-fun c!1475597 () Bool)

(assert (=> bm!746739 (= c!1475597 c!1475598)))

(declare-fun b!8048459 () Bool)

(declare-fun Unit!171198 () Unit!171188)

(assert (=> b!8048459 (= e!4742236 Unit!171198)))

(declare-fun lt!2723060 () B!4477)

(assert (=> b!8048459 (= lt!2723060 (get!27167 (getValueByKey!2759 (toList!11868 thiss!41873) key!1636)))))

(assert (=> b!8048459 (= lt!2723053 key!1636)))

(declare-fun lt!2723064 () K!22683)

(assert (=> b!8048459 (= lt!2723064 key!1636)))

(declare-fun lt!2723054 () Unit!171188)

(declare-fun lemmaContainsTupleThenContainsKey!111 (List!75595 K!22683 B!4477) Unit!171188)

(assert (=> b!8048459 (= lt!2723054 (lemmaContainsTupleThenContainsKey!111 (t!391367 (toList!11868 thiss!41873)) lt!2723053 (get!27167 (getValueByKey!2759 (toList!11868 thiss!41873) key!1636))))))

(assert (=> b!8048459 call!746742))

(declare-fun lt!2723051 () Unit!171188)

(assert (=> b!8048459 (= lt!2723051 lt!2723054)))

(assert (=> b!8048459 false))

(declare-fun b!8048460 () Bool)

(declare-fun res!3181557 () Bool)

(assert (=> b!8048460 (=> (not res!3181557) (not e!4742241))))

(declare-fun content!16081 (List!75597) (InoxSet K!22683))

(assert (=> b!8048460 (= res!3181557 (= (content!16081 (getKeysList!1218 lt!2723048)) ((_ map and) (content!16081 (getKeysList!1218 (toList!11868 thiss!41873))) ((_ map not) (store ((as const (Array K!22683 Bool)) false) key!1636 true)))))))

(declare-fun b!8048461 () Bool)

(declare-fun Unit!171199 () Unit!171188)

(assert (=> b!8048461 (= e!4742238 Unit!171199)))

(declare-fun lt!2723056 () List!75595)

(assert (=> b!8048461 (= lt!2723056 (removePresrvNoDuplicatedKeys!409 (t!391367 (toList!11868 thiss!41873)) key!1636))))

(declare-fun lt!2723049 () Unit!171188)

(declare-fun lemmaInListThenGetKeysListContains!1213 (List!75595 K!22683) Unit!171188)

(assert (=> b!8048461 (= lt!2723049 (lemmaInListThenGetKeysListContains!1213 lt!2723056 (_1!38695 (h!81917 (toList!11868 thiss!41873)))))))

(assert (=> b!8048461 (contains!21084 (getKeysList!1218 lt!2723056) (_1!38695 (h!81917 (toList!11868 thiss!41873))))))

(declare-fun lt!2723061 () Unit!171188)

(assert (=> b!8048461 (= lt!2723061 lt!2723049)))

(assert (=> b!8048461 false))

(assert (= (and d!2396945 c!1475598) b!8048445))

(assert (= (and d!2396945 (not c!1475598)) b!8048443))

(assert (= (and b!8048445 c!1475592) b!8048453))

(assert (= (and b!8048445 (not c!1475592)) b!8048452))

(assert (= (and b!8048453 c!1475595) b!8048459))

(assert (= (and b!8048453 (not c!1475595)) b!8048457))

(assert (= (or b!8048453 b!8048452) bm!746738))

(assert (= (or b!8048453 b!8048452) bm!746736))

(assert (= (and b!8048443 c!1475591) b!8048451))

(assert (= (and b!8048443 (not c!1475591)) b!8048455))

(assert (= (and b!8048451 c!1475596) b!8048444))

(assert (= (and b!8048451 (not c!1475596)) b!8048449))

(assert (= (and b!8048451 c!1475593) b!8048461))

(assert (= (and b!8048451 (not c!1475593)) b!8048448))

(assert (= (or b!8048459 b!8048444) bm!746735))

(assert (= (or b!8048445 b!8048451) bm!746739))

(assert (= (and bm!746739 c!1475597) b!8048458))

(assert (= (and bm!746739 (not c!1475597)) b!8048450))

(assert (= (and d!2396945 res!3181558) b!8048446))

(assert (= (and b!8048446 res!3181556) b!8048460))

(assert (= (and b!8048460 res!3181557) b!8048456))

(assert (= (and b!8048456 c!1475594) b!8048454))

(assert (= (and b!8048456 (not c!1475594)) b!8048447))

(assert (= (or b!8048454 b!8048447) bm!746737))

(assert (= (or b!8048454 b!8048447) bm!746734))

(declare-fun m!8399604 () Bool)

(assert (=> bm!746734 m!8399604))

(declare-fun m!8399606 () Bool)

(assert (=> bm!746738 m!8399606))

(declare-fun m!8399608 () Bool)

(assert (=> bm!746737 m!8399608))

(declare-fun m!8399610 () Bool)

(assert (=> d!2396945 m!8399610))

(declare-fun m!8399612 () Bool)

(assert (=> d!2396945 m!8399612))

(declare-fun m!8399614 () Bool)

(assert (=> b!8048461 m!8399614))

(declare-fun m!8399616 () Bool)

(assert (=> b!8048461 m!8399616))

(declare-fun m!8399618 () Bool)

(assert (=> b!8048461 m!8399618))

(assert (=> b!8048461 m!8399618))

(declare-fun m!8399620 () Bool)

(assert (=> b!8048461 m!8399620))

(declare-fun m!8399622 () Bool)

(assert (=> b!8048460 m!8399622))

(assert (=> b!8048460 m!8399622))

(declare-fun m!8399624 () Bool)

(assert (=> b!8048460 m!8399624))

(declare-fun m!8399626 () Bool)

(assert (=> b!8048460 m!8399626))

(declare-fun m!8399628 () Bool)

(assert (=> b!8048460 m!8399628))

(declare-fun m!8399630 () Bool)

(assert (=> b!8048460 m!8399630))

(assert (=> b!8048460 m!8399626))

(assert (=> b!8048450 m!8399614))

(declare-fun m!8399632 () Bool)

(assert (=> b!8048446 m!8399632))

(declare-fun m!8399634 () Bool)

(assert (=> b!8048453 m!8399634))

(assert (=> b!8048453 m!8399634))

(declare-fun m!8399636 () Bool)

(assert (=> b!8048453 m!8399636))

(declare-fun m!8399638 () Bool)

(assert (=> b!8048453 m!8399638))

(declare-fun m!8399640 () Bool)

(assert (=> b!8048453 m!8399640))

(declare-fun m!8399642 () Bool)

(assert (=> bm!746735 m!8399642))

(assert (=> bm!746736 m!8399604))

(declare-fun m!8399644 () Bool)

(assert (=> bm!746739 m!8399644))

(declare-fun m!8399646 () Bool)

(assert (=> b!8048444 m!8399646))

(declare-fun m!8399648 () Bool)

(assert (=> b!8048451 m!8399648))

(assert (=> b!8048451 m!8399648))

(declare-fun m!8399650 () Bool)

(assert (=> b!8048451 m!8399650))

(assert (=> b!8048451 m!8399614))

(assert (=> b!8048451 m!8399614))

(declare-fun m!8399652 () Bool)

(assert (=> b!8048451 m!8399652))

(assert (=> b!8048454 m!8399638))

(declare-fun m!8399654 () Bool)

(assert (=> b!8048454 m!8399654))

(assert (=> b!8048454 m!8399634))

(assert (=> b!8048454 m!8399636))

(assert (=> b!8048454 m!8399634))

(declare-fun m!8399656 () Bool)

(assert (=> b!8048454 m!8399656))

(assert (=> b!8048454 m!8399634))

(declare-fun m!8399658 () Bool)

(assert (=> b!8048454 m!8399658))

(assert (=> b!8048459 m!8399634))

(assert (=> b!8048459 m!8399634))

(assert (=> b!8048459 m!8399636))

(assert (=> b!8048459 m!8399636))

(declare-fun m!8399660 () Bool)

(assert (=> b!8048459 m!8399660))

(assert (=> b!8048456 m!8399658))

(assert (=> start!757954 d!2396945))

(declare-fun d!2396949 () Bool)

(assert (=> d!2396949 (= (inv!97172 thiss!41873) (invariantList!1910 (toList!11868 thiss!41873)))))

(declare-fun bs!1971808 () Bool)

(assert (= bs!1971808 d!2396949))

(assert (=> bs!1971808 m!8399612))

(assert (=> start!757954 d!2396949))

(declare-fun tp!2413341 () Bool)

(declare-fun tp_is_empty!54693 () Bool)

(declare-fun e!4742246 () Bool)

(declare-fun b!8048466 () Bool)

(assert (=> b!8048466 (= e!4742246 (and tp_is_empty!54689 tp_is_empty!54693 tp!2413341))))

(assert (=> b!8048342 (= tp!2413335 e!4742246)))

(assert (= (and b!8048342 ((_ is Cons!75469) (toList!11868 thiss!41873))) b!8048466))

(check-sat (not b!8048454) (not d!2396945) (not b!8048466) (not b!8048444) (not bm!746738) (not bm!746736) (not b!8048453) (not b!8048446) (not bm!746739) (not bm!746735) (not b!8048459) (not d!2396939) (not bm!746737) (not b!8048461) (not b!8048450) (not b!8048456) (not bm!746734) tp_is_empty!54689 tp_is_empty!54693 (not d!2396949) (not b!8048451) (not b!8048460))
(check-sat)
