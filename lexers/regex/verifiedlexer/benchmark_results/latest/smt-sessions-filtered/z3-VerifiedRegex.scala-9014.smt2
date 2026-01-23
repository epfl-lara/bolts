; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!485200 () Bool)

(assert start!485200)

(declare-fun b!4749273 () Bool)

(declare-fun e!2962475 () Bool)

(declare-fun tp_is_empty!31815 () Bool)

(declare-fun tp_is_empty!31813 () Bool)

(declare-fun tp!1350005 () Bool)

(assert (=> b!4749273 (= e!2962475 (and tp_is_empty!31813 tp_is_empty!31815 tp!1350005))))

(declare-fun res!2013615 () Bool)

(declare-fun e!2962476 () Bool)

(assert (=> start!485200 (=> (not res!2013615) (not e!2962476))))

(declare-datatypes ((K!14475 0))(
  ( (K!14476 (val!19851 Int)) )
))
(declare-datatypes ((V!14721 0))(
  ( (V!14722 (val!19852 Int)) )
))
(declare-datatypes ((tuple2!54820 0))(
  ( (tuple2!54821 (_1!30704 K!14475) (_2!30704 V!14721)) )
))
(declare-datatypes ((List!53188 0))(
  ( (Nil!53064) (Cons!53064 (h!59461 tuple2!54820) (t!360512 List!53188)) )
))
(declare-fun l!14304 () List!53188)

(declare-fun noDuplicateKeys!2130 (List!53188) Bool)

(assert (=> start!485200 (= res!2013615 (noDuplicateKeys!2130 l!14304))))

(assert (=> start!485200 e!2962476))

(assert (=> start!485200 e!2962475))

(assert (=> start!485200 (and tp_is_empty!31813 tp_is_empty!31815)))

(declare-datatypes ((ListMap!5505 0))(
  ( (ListMap!5506 (toList!6098 List!53188)) )
))
(declare-fun acc!1214 () ListMap!5505)

(declare-fun e!2962478 () Bool)

(declare-fun inv!68345 (ListMap!5505) Bool)

(assert (=> start!485200 (and (inv!68345 acc!1214) e!2962478)))

(declare-fun lt!1912743 () List!53188)

(declare-fun t!14174 () tuple2!54820)

(declare-fun e!2962477 () Bool)

(declare-fun b!4749274 () Bool)

(declare-fun eq!1205 (ListMap!5505 ListMap!5505) Bool)

(declare-fun addToMapMapFromBucket!1554 (List!53188 ListMap!5505) ListMap!5505)

(declare-fun +!2364 (ListMap!5505 tuple2!54820) ListMap!5505)

(assert (=> b!4749274 (= e!2962477 (not (eq!1205 (addToMapMapFromBucket!1554 lt!1912743 acc!1214) (+!2364 (addToMapMapFromBucket!1554 l!14304 acc!1214) t!14174))))))

(declare-fun b!4749275 () Bool)

(declare-fun res!2013616 () Bool)

(assert (=> b!4749275 (=> (not res!2013616) (not e!2962477))))

(get-info :version)

(assert (=> b!4749275 (= res!2013616 ((_ is Nil!53064) l!14304))))

(declare-fun b!4749276 () Bool)

(assert (=> b!4749276 (= e!2962476 e!2962477)))

(declare-fun res!2013617 () Bool)

(assert (=> b!4749276 (=> (not res!2013617) (not e!2962477))))

(assert (=> b!4749276 (= res!2013617 (noDuplicateKeys!2130 lt!1912743))))

(assert (=> b!4749276 (= lt!1912743 (Cons!53064 t!14174 l!14304))))

(declare-fun b!4749277 () Bool)

(declare-fun tp!1350004 () Bool)

(assert (=> b!4749277 (= e!2962478 tp!1350004)))

(assert (= (and start!485200 res!2013615) b!4749276))

(assert (= (and b!4749276 res!2013617) b!4749275))

(assert (= (and b!4749275 res!2013616) b!4749274))

(assert (= (and start!485200 ((_ is Cons!53064) l!14304)) b!4749273))

(assert (= start!485200 b!4749277))

(declare-fun m!5709397 () Bool)

(assert (=> start!485200 m!5709397))

(declare-fun m!5709399 () Bool)

(assert (=> start!485200 m!5709399))

(declare-fun m!5709401 () Bool)

(assert (=> b!4749274 m!5709401))

(declare-fun m!5709403 () Bool)

(assert (=> b!4749274 m!5709403))

(assert (=> b!4749274 m!5709403))

(declare-fun m!5709405 () Bool)

(assert (=> b!4749274 m!5709405))

(assert (=> b!4749274 m!5709401))

(assert (=> b!4749274 m!5709405))

(declare-fun m!5709407 () Bool)

(assert (=> b!4749274 m!5709407))

(declare-fun m!5709409 () Bool)

(assert (=> b!4749276 m!5709409))

(check-sat (not b!4749277) (not b!4749274) tp_is_empty!31815 tp_is_empty!31813 (not start!485200) (not b!4749276) (not b!4749273))
(check-sat)
(get-model)

(declare-fun d!1517793 () Bool)

(declare-fun res!2013628 () Bool)

(declare-fun e!2962489 () Bool)

(assert (=> d!1517793 (=> res!2013628 e!2962489)))

(assert (=> d!1517793 (= res!2013628 (not ((_ is Cons!53064) lt!1912743)))))

(assert (=> d!1517793 (= (noDuplicateKeys!2130 lt!1912743) e!2962489)))

(declare-fun b!4749288 () Bool)

(declare-fun e!2962490 () Bool)

(assert (=> b!4749288 (= e!2962489 e!2962490)))

(declare-fun res!2013629 () Bool)

(assert (=> b!4749288 (=> (not res!2013629) (not e!2962490))))

(declare-fun containsKey!3538 (List!53188 K!14475) Bool)

(assert (=> b!4749288 (= res!2013629 (not (containsKey!3538 (t!360512 lt!1912743) (_1!30704 (h!59461 lt!1912743)))))))

(declare-fun b!4749289 () Bool)

(assert (=> b!4749289 (= e!2962490 (noDuplicateKeys!2130 (t!360512 lt!1912743)))))

(assert (= (and d!1517793 (not res!2013628)) b!4749288))

(assert (= (and b!4749288 res!2013629) b!4749289))

(declare-fun m!5709415 () Bool)

(assert (=> b!4749288 m!5709415))

(declare-fun m!5709417 () Bool)

(assert (=> b!4749289 m!5709417))

(assert (=> b!4749276 d!1517793))

(declare-fun d!1517797 () Bool)

(declare-fun res!2013630 () Bool)

(declare-fun e!2962491 () Bool)

(assert (=> d!1517797 (=> res!2013630 e!2962491)))

(assert (=> d!1517797 (= res!2013630 (not ((_ is Cons!53064) l!14304)))))

(assert (=> d!1517797 (= (noDuplicateKeys!2130 l!14304) e!2962491)))

(declare-fun b!4749290 () Bool)

(declare-fun e!2962492 () Bool)

(assert (=> b!4749290 (= e!2962491 e!2962492)))

(declare-fun res!2013631 () Bool)

(assert (=> b!4749290 (=> (not res!2013631) (not e!2962492))))

(assert (=> b!4749290 (= res!2013631 (not (containsKey!3538 (t!360512 l!14304) (_1!30704 (h!59461 l!14304)))))))

(declare-fun b!4749291 () Bool)

(assert (=> b!4749291 (= e!2962492 (noDuplicateKeys!2130 (t!360512 l!14304)))))

(assert (= (and d!1517797 (not res!2013630)) b!4749290))

(assert (= (and b!4749290 res!2013631) b!4749291))

(declare-fun m!5709419 () Bool)

(assert (=> b!4749290 m!5709419))

(declare-fun m!5709421 () Bool)

(assert (=> b!4749291 m!5709421))

(assert (=> start!485200 d!1517797))

(declare-fun d!1517799 () Bool)

(declare-fun invariantList!1579 (List!53188) Bool)

(assert (=> d!1517799 (= (inv!68345 acc!1214) (invariantList!1579 (toList!6098 acc!1214)))))

(declare-fun bs!1139852 () Bool)

(assert (= bs!1139852 d!1517799))

(declare-fun m!5709427 () Bool)

(assert (=> bs!1139852 m!5709427))

(assert (=> start!485200 d!1517799))

(declare-fun d!1517803 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9513 (List!53188) (InoxSet tuple2!54820))

(assert (=> d!1517803 (= (eq!1205 (addToMapMapFromBucket!1554 lt!1912743 acc!1214) (+!2364 (addToMapMapFromBucket!1554 l!14304 acc!1214) t!14174)) (= (content!9513 (toList!6098 (addToMapMapFromBucket!1554 lt!1912743 acc!1214))) (content!9513 (toList!6098 (+!2364 (addToMapMapFromBucket!1554 l!14304 acc!1214) t!14174)))))))

(declare-fun bs!1139853 () Bool)

(assert (= bs!1139853 d!1517803))

(declare-fun m!5709429 () Bool)

(assert (=> bs!1139853 m!5709429))

(declare-fun m!5709431 () Bool)

(assert (=> bs!1139853 m!5709431))

(assert (=> b!4749274 d!1517803))

(declare-fun b!4749341 () Bool)

(assert (=> b!4749341 true))

(declare-fun bs!1139870 () Bool)

(declare-fun b!4749338 () Bool)

(assert (= bs!1139870 (and b!4749338 b!4749341)))

(declare-fun lambda!221356 () Int)

(declare-fun lambda!221355 () Int)

(assert (=> bs!1139870 (= lambda!221356 lambda!221355)))

(assert (=> b!4749338 true))

(declare-fun lt!1912897 () ListMap!5505)

(declare-fun lambda!221357 () Int)

(assert (=> bs!1139870 (= (= lt!1912897 acc!1214) (= lambda!221357 lambda!221355))))

(assert (=> b!4749338 (= (= lt!1912897 acc!1214) (= lambda!221357 lambda!221356))))

(assert (=> b!4749338 true))

(declare-fun bs!1139871 () Bool)

(declare-fun d!1517805 () Bool)

(assert (= bs!1139871 (and d!1517805 b!4749341)))

(declare-fun lambda!221358 () Int)

(declare-fun lt!1912889 () ListMap!5505)

(assert (=> bs!1139871 (= (= lt!1912889 acc!1214) (= lambda!221358 lambda!221355))))

(declare-fun bs!1139872 () Bool)

(assert (= bs!1139872 (and d!1517805 b!4749338)))

(assert (=> bs!1139872 (= (= lt!1912889 acc!1214) (= lambda!221358 lambda!221356))))

(assert (=> bs!1139872 (= (= lt!1912889 lt!1912897) (= lambda!221358 lambda!221357))))

(assert (=> d!1517805 true))

(declare-fun c!810932 () Bool)

(declare-fun bm!332506 () Bool)

(declare-fun call!332511 () Bool)

(declare-fun forall!11747 (List!53188 Int) Bool)

(assert (=> bm!332506 (= call!332511 (forall!11747 (toList!6098 acc!1214) (ite c!810932 lambda!221355 lambda!221357)))))

(declare-fun e!2962521 () ListMap!5505)

(assert (=> b!4749338 (= e!2962521 lt!1912897)))

(declare-fun lt!1912896 () ListMap!5505)

(assert (=> b!4749338 (= lt!1912896 (+!2364 acc!1214 (h!59461 lt!1912743)))))

(assert (=> b!4749338 (= lt!1912897 (addToMapMapFromBucket!1554 (t!360512 lt!1912743) (+!2364 acc!1214 (h!59461 lt!1912743))))))

(declare-datatypes ((Unit!135226 0))(
  ( (Unit!135227) )
))
(declare-fun lt!1912887 () Unit!135226)

(declare-fun call!332512 () Unit!135226)

(assert (=> b!4749338 (= lt!1912887 call!332512)))

(assert (=> b!4749338 (forall!11747 (toList!6098 acc!1214) lambda!221356)))

(declare-fun lt!1912898 () Unit!135226)

(assert (=> b!4749338 (= lt!1912898 lt!1912887)))

(assert (=> b!4749338 (forall!11747 (toList!6098 lt!1912896) lambda!221357)))

(declare-fun lt!1912888 () Unit!135226)

(declare-fun Unit!135228 () Unit!135226)

(assert (=> b!4749338 (= lt!1912888 Unit!135228)))

(assert (=> b!4749338 (forall!11747 (t!360512 lt!1912743) lambda!221357)))

(declare-fun lt!1912900 () Unit!135226)

(declare-fun Unit!135229 () Unit!135226)

(assert (=> b!4749338 (= lt!1912900 Unit!135229)))

(declare-fun lt!1912893 () Unit!135226)

(declare-fun Unit!135230 () Unit!135226)

(assert (=> b!4749338 (= lt!1912893 Unit!135230)))

(declare-fun lt!1912899 () Unit!135226)

(declare-fun forallContained!3773 (List!53188 Int tuple2!54820) Unit!135226)

(assert (=> b!4749338 (= lt!1912899 (forallContained!3773 (toList!6098 lt!1912896) lambda!221357 (h!59461 lt!1912743)))))

(declare-fun contains!16476 (ListMap!5505 K!14475) Bool)

(assert (=> b!4749338 (contains!16476 lt!1912896 (_1!30704 (h!59461 lt!1912743)))))

(declare-fun lt!1912901 () Unit!135226)

(declare-fun Unit!135231 () Unit!135226)

(assert (=> b!4749338 (= lt!1912901 Unit!135231)))

(assert (=> b!4749338 (contains!16476 lt!1912897 (_1!30704 (h!59461 lt!1912743)))))

(declare-fun lt!1912891 () Unit!135226)

(declare-fun Unit!135232 () Unit!135226)

(assert (=> b!4749338 (= lt!1912891 Unit!135232)))

(assert (=> b!4749338 (forall!11747 lt!1912743 lambda!221357)))

(declare-fun lt!1912884 () Unit!135226)

(declare-fun Unit!135233 () Unit!135226)

(assert (=> b!4749338 (= lt!1912884 Unit!135233)))

(assert (=> b!4749338 (forall!11747 (toList!6098 lt!1912896) lambda!221357)))

(declare-fun lt!1912883 () Unit!135226)

(declare-fun Unit!135234 () Unit!135226)

(assert (=> b!4749338 (= lt!1912883 Unit!135234)))

(declare-fun lt!1912892 () Unit!135226)

(declare-fun Unit!135235 () Unit!135226)

(assert (=> b!4749338 (= lt!1912892 Unit!135235)))

(declare-fun lt!1912890 () Unit!135226)

(declare-fun addForallContainsKeyThenBeforeAdding!861 (ListMap!5505 ListMap!5505 K!14475 V!14721) Unit!135226)

(assert (=> b!4749338 (= lt!1912890 (addForallContainsKeyThenBeforeAdding!861 acc!1214 lt!1912897 (_1!30704 (h!59461 lt!1912743)) (_2!30704 (h!59461 lt!1912743))))))

(declare-fun call!332510 () Bool)

(assert (=> b!4749338 call!332510))

(declare-fun lt!1912894 () Unit!135226)

(assert (=> b!4749338 (= lt!1912894 lt!1912890)))

(assert (=> b!4749338 call!332511))

(declare-fun lt!1912886 () Unit!135226)

(declare-fun Unit!135236 () Unit!135226)

(assert (=> b!4749338 (= lt!1912886 Unit!135236)))

(declare-fun res!2013659 () Bool)

(assert (=> b!4749338 (= res!2013659 (forall!11747 lt!1912743 lambda!221357))))

(declare-fun e!2962520 () Bool)

(assert (=> b!4749338 (=> (not res!2013659) (not e!2962520))))

(assert (=> b!4749338 e!2962520))

(declare-fun lt!1912895 () Unit!135226)

(declare-fun Unit!135238 () Unit!135226)

(assert (=> b!4749338 (= lt!1912895 Unit!135238)))

(declare-fun b!4749339 () Bool)

(declare-fun res!2013658 () Bool)

(declare-fun e!2962522 () Bool)

(assert (=> b!4749339 (=> (not res!2013658) (not e!2962522))))

(assert (=> b!4749339 (= res!2013658 (forall!11747 (toList!6098 acc!1214) lambda!221358))))

(declare-fun b!4749340 () Bool)

(assert (=> b!4749340 (= e!2962522 (invariantList!1579 (toList!6098 lt!1912889)))))

(assert (=> b!4749341 (= e!2962521 acc!1214)))

(declare-fun lt!1912902 () Unit!135226)

(assert (=> b!4749341 (= lt!1912902 call!332512)))

(assert (=> b!4749341 call!332510))

(declare-fun lt!1912882 () Unit!135226)

(assert (=> b!4749341 (= lt!1912882 lt!1912902)))

(assert (=> b!4749341 call!332511))

(declare-fun lt!1912885 () Unit!135226)

(declare-fun Unit!135239 () Unit!135226)

(assert (=> b!4749341 (= lt!1912885 Unit!135239)))

(declare-fun b!4749342 () Bool)

(assert (=> b!4749342 (= e!2962520 (forall!11747 (toList!6098 acc!1214) lambda!221357))))

(declare-fun bm!332507 () Bool)

(assert (=> bm!332507 (= call!332510 (forall!11747 (toList!6098 acc!1214) (ite c!810932 lambda!221355 lambda!221357)))))

(assert (=> d!1517805 e!2962522))

(declare-fun res!2013660 () Bool)

(assert (=> d!1517805 (=> (not res!2013660) (not e!2962522))))

(assert (=> d!1517805 (= res!2013660 (forall!11747 lt!1912743 lambda!221358))))

(assert (=> d!1517805 (= lt!1912889 e!2962521)))

(assert (=> d!1517805 (= c!810932 ((_ is Nil!53064) lt!1912743))))

(assert (=> d!1517805 (noDuplicateKeys!2130 lt!1912743)))

(assert (=> d!1517805 (= (addToMapMapFromBucket!1554 lt!1912743 acc!1214) lt!1912889)))

(declare-fun bm!332505 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!862 (ListMap!5505) Unit!135226)

(assert (=> bm!332505 (= call!332512 (lemmaContainsAllItsOwnKeys!862 acc!1214))))

(assert (= (and d!1517805 c!810932) b!4749341))

(assert (= (and d!1517805 (not c!810932)) b!4749338))

(assert (= (and b!4749338 res!2013659) b!4749342))

(assert (= (or b!4749341 b!4749338) bm!332505))

(assert (= (or b!4749341 b!4749338) bm!332506))

(assert (= (or b!4749341 b!4749338) bm!332507))

(assert (= (and d!1517805 res!2013660) b!4749339))

(assert (= (and b!4749339 res!2013658) b!4749340))

(declare-fun m!5709513 () Bool)

(assert (=> bm!332505 m!5709513))

(declare-fun m!5709515 () Bool)

(assert (=> b!4749338 m!5709515))

(declare-fun m!5709517 () Bool)

(assert (=> b!4749338 m!5709517))

(declare-fun m!5709519 () Bool)

(assert (=> b!4749338 m!5709519))

(declare-fun m!5709521 () Bool)

(assert (=> b!4749338 m!5709521))

(declare-fun m!5709523 () Bool)

(assert (=> b!4749338 m!5709523))

(declare-fun m!5709525 () Bool)

(assert (=> b!4749338 m!5709525))

(assert (=> b!4749338 m!5709515))

(declare-fun m!5709527 () Bool)

(assert (=> b!4749338 m!5709527))

(declare-fun m!5709529 () Bool)

(assert (=> b!4749338 m!5709529))

(assert (=> b!4749338 m!5709523))

(declare-fun m!5709531 () Bool)

(assert (=> b!4749338 m!5709531))

(assert (=> b!4749338 m!5709519))

(declare-fun m!5709533 () Bool)

(assert (=> b!4749338 m!5709533))

(declare-fun m!5709535 () Bool)

(assert (=> d!1517805 m!5709535))

(assert (=> d!1517805 m!5709409))

(declare-fun m!5709537 () Bool)

(assert (=> b!4749339 m!5709537))

(declare-fun m!5709539 () Bool)

(assert (=> bm!332506 m!5709539))

(declare-fun m!5709541 () Bool)

(assert (=> b!4749342 m!5709541))

(declare-fun m!5709543 () Bool)

(assert (=> b!4749340 m!5709543))

(assert (=> bm!332507 m!5709539))

(assert (=> b!4749274 d!1517805))

(declare-fun d!1517815 () Bool)

(declare-fun e!2962525 () Bool)

(assert (=> d!1517815 e!2962525))

(declare-fun res!2013666 () Bool)

(assert (=> d!1517815 (=> (not res!2013666) (not e!2962525))))

(declare-fun lt!1912912 () ListMap!5505)

(assert (=> d!1517815 (= res!2013666 (contains!16476 lt!1912912 (_1!30704 t!14174)))))

(declare-fun lt!1912911 () List!53188)

(assert (=> d!1517815 (= lt!1912912 (ListMap!5506 lt!1912911))))

(declare-fun lt!1912914 () Unit!135226)

(declare-fun lt!1912913 () Unit!135226)

(assert (=> d!1517815 (= lt!1912914 lt!1912913)))

(declare-datatypes ((Option!12516 0))(
  ( (None!12515) (Some!12515 (v!47210 V!14721)) )
))
(declare-fun getValueByKey!2066 (List!53188 K!14475) Option!12516)

(assert (=> d!1517815 (= (getValueByKey!2066 lt!1912911 (_1!30704 t!14174)) (Some!12515 (_2!30704 t!14174)))))

(declare-fun lemmaContainsTupThenGetReturnValue!1143 (List!53188 K!14475 V!14721) Unit!135226)

(assert (=> d!1517815 (= lt!1912913 (lemmaContainsTupThenGetReturnValue!1143 lt!1912911 (_1!30704 t!14174) (_2!30704 t!14174)))))

(declare-fun insertNoDuplicatedKeys!651 (List!53188 K!14475 V!14721) List!53188)

(assert (=> d!1517815 (= lt!1912911 (insertNoDuplicatedKeys!651 (toList!6098 (addToMapMapFromBucket!1554 l!14304 acc!1214)) (_1!30704 t!14174) (_2!30704 t!14174)))))

(assert (=> d!1517815 (= (+!2364 (addToMapMapFromBucket!1554 l!14304 acc!1214) t!14174) lt!1912912)))

(declare-fun b!4749349 () Bool)

(declare-fun res!2013665 () Bool)

(assert (=> b!4749349 (=> (not res!2013665) (not e!2962525))))

(assert (=> b!4749349 (= res!2013665 (= (getValueByKey!2066 (toList!6098 lt!1912912) (_1!30704 t!14174)) (Some!12515 (_2!30704 t!14174))))))

(declare-fun b!4749350 () Bool)

(declare-fun contains!16477 (List!53188 tuple2!54820) Bool)

(assert (=> b!4749350 (= e!2962525 (contains!16477 (toList!6098 lt!1912912) t!14174))))

(assert (= (and d!1517815 res!2013666) b!4749349))

(assert (= (and b!4749349 res!2013665) b!4749350))

(declare-fun m!5709545 () Bool)

(assert (=> d!1517815 m!5709545))

(declare-fun m!5709547 () Bool)

(assert (=> d!1517815 m!5709547))

(declare-fun m!5709549 () Bool)

(assert (=> d!1517815 m!5709549))

(declare-fun m!5709551 () Bool)

(assert (=> d!1517815 m!5709551))

(declare-fun m!5709553 () Bool)

(assert (=> b!4749349 m!5709553))

(declare-fun m!5709555 () Bool)

(assert (=> b!4749350 m!5709555))

(assert (=> b!4749274 d!1517815))

(declare-fun bs!1139873 () Bool)

(declare-fun b!4749354 () Bool)

(assert (= bs!1139873 (and b!4749354 b!4749341)))

(declare-fun lambda!221359 () Int)

(assert (=> bs!1139873 (= lambda!221359 lambda!221355)))

(declare-fun bs!1139874 () Bool)

(assert (= bs!1139874 (and b!4749354 b!4749338)))

(assert (=> bs!1139874 (= lambda!221359 lambda!221356)))

(assert (=> bs!1139874 (= (= acc!1214 lt!1912897) (= lambda!221359 lambda!221357))))

(declare-fun bs!1139875 () Bool)

(assert (= bs!1139875 (and b!4749354 d!1517805)))

(assert (=> bs!1139875 (= (= acc!1214 lt!1912889) (= lambda!221359 lambda!221358))))

(assert (=> b!4749354 true))

(declare-fun bs!1139876 () Bool)

(declare-fun b!4749351 () Bool)

(assert (= bs!1139876 (and b!4749351 b!4749354)))

(declare-fun lambda!221360 () Int)

(assert (=> bs!1139876 (= lambda!221360 lambda!221359)))

(declare-fun bs!1139877 () Bool)

(assert (= bs!1139877 (and b!4749351 b!4749338)))

(assert (=> bs!1139877 (= (= acc!1214 lt!1912897) (= lambda!221360 lambda!221357))))

(assert (=> bs!1139877 (= lambda!221360 lambda!221356)))

(declare-fun bs!1139878 () Bool)

(assert (= bs!1139878 (and b!4749351 b!4749341)))

(assert (=> bs!1139878 (= lambda!221360 lambda!221355)))

(declare-fun bs!1139879 () Bool)

(assert (= bs!1139879 (and b!4749351 d!1517805)))

(assert (=> bs!1139879 (= (= acc!1214 lt!1912889) (= lambda!221360 lambda!221358))))

(assert (=> b!4749351 true))

(declare-fun lambda!221361 () Int)

(declare-fun lt!1912930 () ListMap!5505)

(assert (=> bs!1139876 (= (= lt!1912930 acc!1214) (= lambda!221361 lambda!221359))))

(assert (=> b!4749351 (= (= lt!1912930 acc!1214) (= lambda!221361 lambda!221360))))

(assert (=> bs!1139877 (= (= lt!1912930 lt!1912897) (= lambda!221361 lambda!221357))))

(assert (=> bs!1139877 (= (= lt!1912930 acc!1214) (= lambda!221361 lambda!221356))))

(assert (=> bs!1139878 (= (= lt!1912930 acc!1214) (= lambda!221361 lambda!221355))))

(assert (=> bs!1139879 (= (= lt!1912930 lt!1912889) (= lambda!221361 lambda!221358))))

(assert (=> b!4749351 true))

(declare-fun bs!1139880 () Bool)

(declare-fun d!1517817 () Bool)

(assert (= bs!1139880 (and d!1517817 b!4749354)))

(declare-fun lt!1912922 () ListMap!5505)

(declare-fun lambda!221362 () Int)

(assert (=> bs!1139880 (= (= lt!1912922 acc!1214) (= lambda!221362 lambda!221359))))

(declare-fun bs!1139881 () Bool)

(assert (= bs!1139881 (and d!1517817 b!4749351)))

(assert (=> bs!1139881 (= (= lt!1912922 acc!1214) (= lambda!221362 lambda!221360))))

(assert (=> bs!1139881 (= (= lt!1912922 lt!1912930) (= lambda!221362 lambda!221361))))

(declare-fun bs!1139882 () Bool)

(assert (= bs!1139882 (and d!1517817 b!4749338)))

(assert (=> bs!1139882 (= (= lt!1912922 lt!1912897) (= lambda!221362 lambda!221357))))

(assert (=> bs!1139882 (= (= lt!1912922 acc!1214) (= lambda!221362 lambda!221356))))

(declare-fun bs!1139883 () Bool)

(assert (= bs!1139883 (and d!1517817 b!4749341)))

(assert (=> bs!1139883 (= (= lt!1912922 acc!1214) (= lambda!221362 lambda!221355))))

(declare-fun bs!1139884 () Bool)

(assert (= bs!1139884 (and d!1517817 d!1517805)))

(assert (=> bs!1139884 (= (= lt!1912922 lt!1912889) (= lambda!221362 lambda!221358))))

(assert (=> d!1517817 true))

(declare-fun bm!332509 () Bool)

(declare-fun call!332514 () Bool)

(declare-fun c!810933 () Bool)

(assert (=> bm!332509 (= call!332514 (forall!11747 (toList!6098 acc!1214) (ite c!810933 lambda!221359 lambda!221361)))))

(declare-fun e!2962527 () ListMap!5505)

(assert (=> b!4749351 (= e!2962527 lt!1912930)))

(declare-fun lt!1912929 () ListMap!5505)

(assert (=> b!4749351 (= lt!1912929 (+!2364 acc!1214 (h!59461 l!14304)))))

(assert (=> b!4749351 (= lt!1912930 (addToMapMapFromBucket!1554 (t!360512 l!14304) (+!2364 acc!1214 (h!59461 l!14304))))))

(declare-fun lt!1912920 () Unit!135226)

(declare-fun call!332515 () Unit!135226)

(assert (=> b!4749351 (= lt!1912920 call!332515)))

(assert (=> b!4749351 (forall!11747 (toList!6098 acc!1214) lambda!221360)))

(declare-fun lt!1912931 () Unit!135226)

(assert (=> b!4749351 (= lt!1912931 lt!1912920)))

(assert (=> b!4749351 (forall!11747 (toList!6098 lt!1912929) lambda!221361)))

(declare-fun lt!1912921 () Unit!135226)

(declare-fun Unit!135250 () Unit!135226)

(assert (=> b!4749351 (= lt!1912921 Unit!135250)))

(assert (=> b!4749351 (forall!11747 (t!360512 l!14304) lambda!221361)))

(declare-fun lt!1912933 () Unit!135226)

(declare-fun Unit!135251 () Unit!135226)

(assert (=> b!4749351 (= lt!1912933 Unit!135251)))

(declare-fun lt!1912926 () Unit!135226)

(declare-fun Unit!135252 () Unit!135226)

(assert (=> b!4749351 (= lt!1912926 Unit!135252)))

(declare-fun lt!1912932 () Unit!135226)

(assert (=> b!4749351 (= lt!1912932 (forallContained!3773 (toList!6098 lt!1912929) lambda!221361 (h!59461 l!14304)))))

(assert (=> b!4749351 (contains!16476 lt!1912929 (_1!30704 (h!59461 l!14304)))))

(declare-fun lt!1912934 () Unit!135226)

(declare-fun Unit!135253 () Unit!135226)

(assert (=> b!4749351 (= lt!1912934 Unit!135253)))

(assert (=> b!4749351 (contains!16476 lt!1912930 (_1!30704 (h!59461 l!14304)))))

(declare-fun lt!1912924 () Unit!135226)

(declare-fun Unit!135254 () Unit!135226)

(assert (=> b!4749351 (= lt!1912924 Unit!135254)))

(assert (=> b!4749351 (forall!11747 l!14304 lambda!221361)))

(declare-fun lt!1912917 () Unit!135226)

(declare-fun Unit!135255 () Unit!135226)

(assert (=> b!4749351 (= lt!1912917 Unit!135255)))

(assert (=> b!4749351 (forall!11747 (toList!6098 lt!1912929) lambda!221361)))

(declare-fun lt!1912916 () Unit!135226)

(declare-fun Unit!135256 () Unit!135226)

(assert (=> b!4749351 (= lt!1912916 Unit!135256)))

(declare-fun lt!1912925 () Unit!135226)

(declare-fun Unit!135257 () Unit!135226)

(assert (=> b!4749351 (= lt!1912925 Unit!135257)))

(declare-fun lt!1912923 () Unit!135226)

(assert (=> b!4749351 (= lt!1912923 (addForallContainsKeyThenBeforeAdding!861 acc!1214 lt!1912930 (_1!30704 (h!59461 l!14304)) (_2!30704 (h!59461 l!14304))))))

(declare-fun call!332513 () Bool)

(assert (=> b!4749351 call!332513))

(declare-fun lt!1912927 () Unit!135226)

(assert (=> b!4749351 (= lt!1912927 lt!1912923)))

(assert (=> b!4749351 call!332514))

(declare-fun lt!1912919 () Unit!135226)

(declare-fun Unit!135258 () Unit!135226)

(assert (=> b!4749351 (= lt!1912919 Unit!135258)))

(declare-fun res!2013668 () Bool)

(assert (=> b!4749351 (= res!2013668 (forall!11747 l!14304 lambda!221361))))

(declare-fun e!2962526 () Bool)

(assert (=> b!4749351 (=> (not res!2013668) (not e!2962526))))

(assert (=> b!4749351 e!2962526))

(declare-fun lt!1912928 () Unit!135226)

(declare-fun Unit!135259 () Unit!135226)

(assert (=> b!4749351 (= lt!1912928 Unit!135259)))

(declare-fun b!4749352 () Bool)

(declare-fun res!2013667 () Bool)

(declare-fun e!2962528 () Bool)

(assert (=> b!4749352 (=> (not res!2013667) (not e!2962528))))

(assert (=> b!4749352 (= res!2013667 (forall!11747 (toList!6098 acc!1214) lambda!221362))))

(declare-fun b!4749353 () Bool)

(assert (=> b!4749353 (= e!2962528 (invariantList!1579 (toList!6098 lt!1912922)))))

(assert (=> b!4749354 (= e!2962527 acc!1214)))

(declare-fun lt!1912935 () Unit!135226)

(assert (=> b!4749354 (= lt!1912935 call!332515)))

(assert (=> b!4749354 call!332513))

(declare-fun lt!1912915 () Unit!135226)

(assert (=> b!4749354 (= lt!1912915 lt!1912935)))

(assert (=> b!4749354 call!332514))

(declare-fun lt!1912918 () Unit!135226)

(declare-fun Unit!135260 () Unit!135226)

(assert (=> b!4749354 (= lt!1912918 Unit!135260)))

(declare-fun b!4749355 () Bool)

(assert (=> b!4749355 (= e!2962526 (forall!11747 (toList!6098 acc!1214) lambda!221361))))

(declare-fun bm!332510 () Bool)

(assert (=> bm!332510 (= call!332513 (forall!11747 (toList!6098 acc!1214) (ite c!810933 lambda!221359 lambda!221361)))))

(assert (=> d!1517817 e!2962528))

(declare-fun res!2013669 () Bool)

(assert (=> d!1517817 (=> (not res!2013669) (not e!2962528))))

(assert (=> d!1517817 (= res!2013669 (forall!11747 l!14304 lambda!221362))))

(assert (=> d!1517817 (= lt!1912922 e!2962527)))

(assert (=> d!1517817 (= c!810933 ((_ is Nil!53064) l!14304))))

(assert (=> d!1517817 (noDuplicateKeys!2130 l!14304)))

(assert (=> d!1517817 (= (addToMapMapFromBucket!1554 l!14304 acc!1214) lt!1912922)))

(declare-fun bm!332508 () Bool)

(assert (=> bm!332508 (= call!332515 (lemmaContainsAllItsOwnKeys!862 acc!1214))))

(assert (= (and d!1517817 c!810933) b!4749354))

(assert (= (and d!1517817 (not c!810933)) b!4749351))

(assert (= (and b!4749351 res!2013668) b!4749355))

(assert (= (or b!4749354 b!4749351) bm!332508))

(assert (= (or b!4749354 b!4749351) bm!332509))

(assert (= (or b!4749354 b!4749351) bm!332510))

(assert (= (and d!1517817 res!2013669) b!4749352))

(assert (= (and b!4749352 res!2013667) b!4749353))

(assert (=> bm!332508 m!5709513))

(declare-fun m!5709557 () Bool)

(assert (=> b!4749351 m!5709557))

(declare-fun m!5709559 () Bool)

(assert (=> b!4749351 m!5709559))

(declare-fun m!5709561 () Bool)

(assert (=> b!4749351 m!5709561))

(declare-fun m!5709563 () Bool)

(assert (=> b!4749351 m!5709563))

(declare-fun m!5709565 () Bool)

(assert (=> b!4749351 m!5709565))

(declare-fun m!5709567 () Bool)

(assert (=> b!4749351 m!5709567))

(assert (=> b!4749351 m!5709557))

(declare-fun m!5709569 () Bool)

(assert (=> b!4749351 m!5709569))

(declare-fun m!5709571 () Bool)

(assert (=> b!4749351 m!5709571))

(assert (=> b!4749351 m!5709565))

(declare-fun m!5709573 () Bool)

(assert (=> b!4749351 m!5709573))

(assert (=> b!4749351 m!5709561))

(declare-fun m!5709575 () Bool)

(assert (=> b!4749351 m!5709575))

(declare-fun m!5709577 () Bool)

(assert (=> d!1517817 m!5709577))

(assert (=> d!1517817 m!5709397))

(declare-fun m!5709579 () Bool)

(assert (=> b!4749352 m!5709579))

(declare-fun m!5709581 () Bool)

(assert (=> bm!332509 m!5709581))

(declare-fun m!5709583 () Bool)

(assert (=> b!4749355 m!5709583))

(declare-fun m!5709585 () Bool)

(assert (=> b!4749353 m!5709585))

(assert (=> bm!332510 m!5709581))

(assert (=> b!4749274 d!1517817))

(declare-fun b!4749360 () Bool)

(declare-fun e!2962531 () Bool)

(declare-fun tp!1350012 () Bool)

(assert (=> b!4749360 (= e!2962531 (and tp_is_empty!31813 tp_is_empty!31815 tp!1350012))))

(assert (=> b!4749277 (= tp!1350004 e!2962531)))

(assert (= (and b!4749277 ((_ is Cons!53064) (toList!6098 acc!1214))) b!4749360))

(declare-fun b!4749361 () Bool)

(declare-fun e!2962532 () Bool)

(declare-fun tp!1350013 () Bool)

(assert (=> b!4749361 (= e!2962532 (and tp_is_empty!31813 tp_is_empty!31815 tp!1350013))))

(assert (=> b!4749273 (= tp!1350005 e!2962532)))

(assert (= (and b!4749273 ((_ is Cons!53064) (t!360512 l!14304))) b!4749361))

(check-sat (not d!1517817) (not b!4749351) (not bm!332506) (not bm!332505) (not d!1517799) (not b!4749353) tp_is_empty!31815 tp_is_empty!31813 (not bm!332508) (not b!4749361) (not b!4749291) (not b!4749342) (not b!4749289) (not b!4749338) (not b!4749352) (not b!4749340) (not b!4749349) (not b!4749290) (not d!1517805) (not b!4749288) (not b!4749339) (not b!4749350) (not b!4749355) (not bm!332510) (not d!1517803) (not b!4749360) (not bm!332509) (not d!1517815) (not bm!332507))
(check-sat)
(get-model)

(declare-fun d!1517819 () Bool)

(declare-fun res!2013674 () Bool)

(declare-fun e!2962537 () Bool)

(assert (=> d!1517819 (=> res!2013674 e!2962537)))

(assert (=> d!1517819 (= res!2013674 ((_ is Nil!53064) (toList!6098 acc!1214)))))

(assert (=> d!1517819 (= (forall!11747 (toList!6098 acc!1214) (ite c!810933 lambda!221359 lambda!221361)) e!2962537)))

(declare-fun b!4749366 () Bool)

(declare-fun e!2962538 () Bool)

(assert (=> b!4749366 (= e!2962537 e!2962538)))

(declare-fun res!2013675 () Bool)

(assert (=> b!4749366 (=> (not res!2013675) (not e!2962538))))

(declare-fun dynLambda!21896 (Int tuple2!54820) Bool)

(assert (=> b!4749366 (= res!2013675 (dynLambda!21896 (ite c!810933 lambda!221359 lambda!221361) (h!59461 (toList!6098 acc!1214))))))

(declare-fun b!4749367 () Bool)

(assert (=> b!4749367 (= e!2962538 (forall!11747 (t!360512 (toList!6098 acc!1214)) (ite c!810933 lambda!221359 lambda!221361)))))

(assert (= (and d!1517819 (not res!2013674)) b!4749366))

(assert (= (and b!4749366 res!2013675) b!4749367))

(declare-fun b_lambda!182981 () Bool)

(assert (=> (not b_lambda!182981) (not b!4749366)))

(declare-fun m!5709587 () Bool)

(assert (=> b!4749366 m!5709587))

(declare-fun m!5709589 () Bool)

(assert (=> b!4749367 m!5709589))

(assert (=> bm!332510 d!1517819))

(declare-fun d!1517821 () Bool)

(declare-fun noDuplicatedKeys!398 (List!53188) Bool)

(assert (=> d!1517821 (= (invariantList!1579 (toList!6098 acc!1214)) (noDuplicatedKeys!398 (toList!6098 acc!1214)))))

(declare-fun bs!1139885 () Bool)

(assert (= bs!1139885 d!1517821))

(declare-fun m!5709591 () Bool)

(assert (=> bs!1139885 m!5709591))

(assert (=> d!1517799 d!1517821))

(declare-fun d!1517823 () Bool)

(declare-fun res!2013676 () Bool)

(declare-fun e!2962539 () Bool)

(assert (=> d!1517823 (=> res!2013676 e!2962539)))

(assert (=> d!1517823 (= res!2013676 ((_ is Nil!53064) (toList!6098 acc!1214)))))

(assert (=> d!1517823 (= (forall!11747 (toList!6098 acc!1214) lambda!221361) e!2962539)))

(declare-fun b!4749368 () Bool)

(declare-fun e!2962540 () Bool)

(assert (=> b!4749368 (= e!2962539 e!2962540)))

(declare-fun res!2013677 () Bool)

(assert (=> b!4749368 (=> (not res!2013677) (not e!2962540))))

(assert (=> b!4749368 (= res!2013677 (dynLambda!21896 lambda!221361 (h!59461 (toList!6098 acc!1214))))))

(declare-fun b!4749369 () Bool)

(assert (=> b!4749369 (= e!2962540 (forall!11747 (t!360512 (toList!6098 acc!1214)) lambda!221361))))

(assert (= (and d!1517823 (not res!2013676)) b!4749368))

(assert (= (and b!4749368 res!2013677) b!4749369))

(declare-fun b_lambda!182983 () Bool)

(assert (=> (not b_lambda!182983) (not b!4749368)))

(declare-fun m!5709593 () Bool)

(assert (=> b!4749368 m!5709593))

(declare-fun m!5709595 () Bool)

(assert (=> b!4749369 m!5709595))

(assert (=> b!4749355 d!1517823))

(declare-fun d!1517825 () Bool)

(declare-fun res!2013678 () Bool)

(declare-fun e!2962541 () Bool)

(assert (=> d!1517825 (=> res!2013678 e!2962541)))

(assert (=> d!1517825 (= res!2013678 (not ((_ is Cons!53064) (t!360512 lt!1912743))))))

(assert (=> d!1517825 (= (noDuplicateKeys!2130 (t!360512 lt!1912743)) e!2962541)))

(declare-fun b!4749370 () Bool)

(declare-fun e!2962542 () Bool)

(assert (=> b!4749370 (= e!2962541 e!2962542)))

(declare-fun res!2013679 () Bool)

(assert (=> b!4749370 (=> (not res!2013679) (not e!2962542))))

(assert (=> b!4749370 (= res!2013679 (not (containsKey!3538 (t!360512 (t!360512 lt!1912743)) (_1!30704 (h!59461 (t!360512 lt!1912743))))))))

(declare-fun b!4749371 () Bool)

(assert (=> b!4749371 (= e!2962542 (noDuplicateKeys!2130 (t!360512 (t!360512 lt!1912743))))))

(assert (= (and d!1517825 (not res!2013678)) b!4749370))

(assert (= (and b!4749370 res!2013679) b!4749371))

(declare-fun m!5709597 () Bool)

(assert (=> b!4749370 m!5709597))

(declare-fun m!5709599 () Bool)

(assert (=> b!4749371 m!5709599))

(assert (=> b!4749289 d!1517825))

(declare-fun d!1517827 () Bool)

(declare-fun res!2013680 () Bool)

(declare-fun e!2962543 () Bool)

(assert (=> d!1517827 (=> res!2013680 e!2962543)))

(assert (=> d!1517827 (= res!2013680 ((_ is Nil!53064) l!14304))))

(assert (=> d!1517827 (= (forall!11747 l!14304 lambda!221362) e!2962543)))

(declare-fun b!4749372 () Bool)

(declare-fun e!2962544 () Bool)

(assert (=> b!4749372 (= e!2962543 e!2962544)))

(declare-fun res!2013681 () Bool)

(assert (=> b!4749372 (=> (not res!2013681) (not e!2962544))))

(assert (=> b!4749372 (= res!2013681 (dynLambda!21896 lambda!221362 (h!59461 l!14304)))))

(declare-fun b!4749373 () Bool)

(assert (=> b!4749373 (= e!2962544 (forall!11747 (t!360512 l!14304) lambda!221362))))

(assert (= (and d!1517827 (not res!2013680)) b!4749372))

(assert (= (and b!4749372 res!2013681) b!4749373))

(declare-fun b_lambda!182985 () Bool)

(assert (=> (not b_lambda!182985) (not b!4749372)))

(declare-fun m!5709601 () Bool)

(assert (=> b!4749372 m!5709601))

(declare-fun m!5709603 () Bool)

(assert (=> b!4749373 m!5709603))

(assert (=> d!1517817 d!1517827))

(assert (=> d!1517817 d!1517797))

(declare-fun d!1517829 () Bool)

(declare-fun res!2013682 () Bool)

(declare-fun e!2962545 () Bool)

(assert (=> d!1517829 (=> res!2013682 e!2962545)))

(assert (=> d!1517829 (= res!2013682 ((_ is Nil!53064) lt!1912743))))

(assert (=> d!1517829 (= (forall!11747 lt!1912743 lambda!221358) e!2962545)))

(declare-fun b!4749374 () Bool)

(declare-fun e!2962546 () Bool)

(assert (=> b!4749374 (= e!2962545 e!2962546)))

(declare-fun res!2013683 () Bool)

(assert (=> b!4749374 (=> (not res!2013683) (not e!2962546))))

(assert (=> b!4749374 (= res!2013683 (dynLambda!21896 lambda!221358 (h!59461 lt!1912743)))))

(declare-fun b!4749375 () Bool)

(assert (=> b!4749375 (= e!2962546 (forall!11747 (t!360512 lt!1912743) lambda!221358))))

(assert (= (and d!1517829 (not res!2013682)) b!4749374))

(assert (= (and b!4749374 res!2013683) b!4749375))

(declare-fun b_lambda!182987 () Bool)

(assert (=> (not b_lambda!182987) (not b!4749374)))

(declare-fun m!5709605 () Bool)

(assert (=> b!4749374 m!5709605))

(declare-fun m!5709607 () Bool)

(assert (=> b!4749375 m!5709607))

(assert (=> d!1517805 d!1517829))

(assert (=> d!1517805 d!1517793))

(declare-fun b!4749387 () Bool)

(declare-fun e!2962552 () Option!12516)

(assert (=> b!4749387 (= e!2962552 None!12515)))

(declare-fun b!4749384 () Bool)

(declare-fun e!2962551 () Option!12516)

(assert (=> b!4749384 (= e!2962551 (Some!12515 (_2!30704 (h!59461 (toList!6098 lt!1912912)))))))

(declare-fun d!1517831 () Bool)

(declare-fun c!810938 () Bool)

(assert (=> d!1517831 (= c!810938 (and ((_ is Cons!53064) (toList!6098 lt!1912912)) (= (_1!30704 (h!59461 (toList!6098 lt!1912912))) (_1!30704 t!14174))))))

(assert (=> d!1517831 (= (getValueByKey!2066 (toList!6098 lt!1912912) (_1!30704 t!14174)) e!2962551)))

(declare-fun b!4749385 () Bool)

(assert (=> b!4749385 (= e!2962551 e!2962552)))

(declare-fun c!810939 () Bool)

(assert (=> b!4749385 (= c!810939 (and ((_ is Cons!53064) (toList!6098 lt!1912912)) (not (= (_1!30704 (h!59461 (toList!6098 lt!1912912))) (_1!30704 t!14174)))))))

(declare-fun b!4749386 () Bool)

(assert (=> b!4749386 (= e!2962552 (getValueByKey!2066 (t!360512 (toList!6098 lt!1912912)) (_1!30704 t!14174)))))

(assert (= (and d!1517831 c!810938) b!4749384))

(assert (= (and d!1517831 (not c!810938)) b!4749385))

(assert (= (and b!4749385 c!810939) b!4749386))

(assert (= (and b!4749385 (not c!810939)) b!4749387))

(declare-fun m!5709609 () Bool)

(assert (=> b!4749386 m!5709609))

(assert (=> b!4749349 d!1517831))

(declare-fun b!4749412 () Bool)

(declare-datatypes ((List!53189 0))(
  ( (Nil!53065) (Cons!53065 (h!59462 K!14475) (t!360513 List!53189)) )
))
(declare-fun e!2962574 () List!53189)

(declare-fun getKeysList!999 (List!53188) List!53189)

(assert (=> b!4749412 (= e!2962574 (getKeysList!999 (toList!6098 lt!1912912)))))

(declare-fun b!4749413 () Bool)

(assert (=> b!4749413 false))

(declare-fun lt!1912954 () Unit!135226)

(declare-fun lt!1912952 () Unit!135226)

(assert (=> b!4749413 (= lt!1912954 lt!1912952)))

(declare-fun containsKey!3539 (List!53188 K!14475) Bool)

(assert (=> b!4749413 (containsKey!3539 (toList!6098 lt!1912912) (_1!30704 t!14174))))

(declare-fun lemmaInGetKeysListThenContainsKey!998 (List!53188 K!14475) Unit!135226)

(assert (=> b!4749413 (= lt!1912952 (lemmaInGetKeysListThenContainsKey!998 (toList!6098 lt!1912912) (_1!30704 t!14174)))))

(declare-fun e!2962575 () Unit!135226)

(declare-fun Unit!135261 () Unit!135226)

(assert (=> b!4749413 (= e!2962575 Unit!135261)))

(declare-fun b!4749414 () Bool)

(declare-fun e!2962576 () Unit!135226)

(declare-fun lt!1912959 () Unit!135226)

(assert (=> b!4749414 (= e!2962576 lt!1912959)))

(declare-fun lt!1912955 () Unit!135226)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1939 (List!53188 K!14475) Unit!135226)

(assert (=> b!4749414 (= lt!1912955 (lemmaContainsKeyImpliesGetValueByKeyDefined!1939 (toList!6098 lt!1912912) (_1!30704 t!14174)))))

(declare-fun isDefined!9752 (Option!12516) Bool)

(assert (=> b!4749414 (isDefined!9752 (getValueByKey!2066 (toList!6098 lt!1912912) (_1!30704 t!14174)))))

(declare-fun lt!1912957 () Unit!135226)

(assert (=> b!4749414 (= lt!1912957 lt!1912955)))

(declare-fun lemmaInListThenGetKeysListContains!994 (List!53188 K!14475) Unit!135226)

(assert (=> b!4749414 (= lt!1912959 (lemmaInListThenGetKeysListContains!994 (toList!6098 lt!1912912) (_1!30704 t!14174)))))

(declare-fun call!332518 () Bool)

(assert (=> b!4749414 call!332518))

(declare-fun b!4749415 () Bool)

(declare-fun e!2962571 () Bool)

(declare-fun contains!16478 (List!53189 K!14475) Bool)

(declare-fun keys!19140 (ListMap!5505) List!53189)

(assert (=> b!4749415 (= e!2962571 (not (contains!16478 (keys!19140 lt!1912912) (_1!30704 t!14174))))))

(declare-fun b!4749416 () Bool)

(declare-fun e!2962572 () Bool)

(declare-fun e!2962573 () Bool)

(assert (=> b!4749416 (= e!2962572 e!2962573)))

(declare-fun res!2013696 () Bool)

(assert (=> b!4749416 (=> (not res!2013696) (not e!2962573))))

(assert (=> b!4749416 (= res!2013696 (isDefined!9752 (getValueByKey!2066 (toList!6098 lt!1912912) (_1!30704 t!14174))))))

(declare-fun bm!332513 () Bool)

(assert (=> bm!332513 (= call!332518 (contains!16478 e!2962574 (_1!30704 t!14174)))))

(declare-fun c!810947 () Bool)

(declare-fun c!810946 () Bool)

(assert (=> bm!332513 (= c!810947 c!810946)))

(declare-fun b!4749417 () Bool)

(assert (=> b!4749417 (= e!2962573 (contains!16478 (keys!19140 lt!1912912) (_1!30704 t!14174)))))

(declare-fun b!4749418 () Bool)

(assert (=> b!4749418 (= e!2962574 (keys!19140 lt!1912912))))

(declare-fun d!1517833 () Bool)

(assert (=> d!1517833 e!2962572))

(declare-fun res!2013698 () Bool)

(assert (=> d!1517833 (=> res!2013698 e!2962572)))

(assert (=> d!1517833 (= res!2013698 e!2962571)))

(declare-fun res!2013697 () Bool)

(assert (=> d!1517833 (=> (not res!2013697) (not e!2962571))))

(declare-fun lt!1912953 () Bool)

(assert (=> d!1517833 (= res!2013697 (not lt!1912953))))

(declare-fun lt!1912956 () Bool)

(assert (=> d!1517833 (= lt!1912953 lt!1912956)))

(declare-fun lt!1912958 () Unit!135226)

(assert (=> d!1517833 (= lt!1912958 e!2962576)))

(assert (=> d!1517833 (= c!810946 lt!1912956)))

(assert (=> d!1517833 (= lt!1912956 (containsKey!3539 (toList!6098 lt!1912912) (_1!30704 t!14174)))))

(assert (=> d!1517833 (= (contains!16476 lt!1912912 (_1!30704 t!14174)) lt!1912953)))

(declare-fun b!4749419 () Bool)

(assert (=> b!4749419 (= e!2962576 e!2962575)))

(declare-fun c!810948 () Bool)

(assert (=> b!4749419 (= c!810948 call!332518)))

(declare-fun b!4749420 () Bool)

(declare-fun Unit!135262 () Unit!135226)

(assert (=> b!4749420 (= e!2962575 Unit!135262)))

(assert (= (and d!1517833 c!810946) b!4749414))

(assert (= (and d!1517833 (not c!810946)) b!4749419))

(assert (= (and b!4749419 c!810948) b!4749413))

(assert (= (and b!4749419 (not c!810948)) b!4749420))

(assert (= (or b!4749414 b!4749419) bm!332513))

(assert (= (and bm!332513 c!810947) b!4749412))

(assert (= (and bm!332513 (not c!810947)) b!4749418))

(assert (= (and d!1517833 res!2013697) b!4749415))

(assert (= (and d!1517833 (not res!2013698)) b!4749416))

(assert (= (and b!4749416 res!2013696) b!4749417))

(declare-fun m!5709617 () Bool)

(assert (=> b!4749418 m!5709617))

(declare-fun m!5709619 () Bool)

(assert (=> b!4749413 m!5709619))

(declare-fun m!5709623 () Bool)

(assert (=> b!4749413 m!5709623))

(assert (=> b!4749415 m!5709617))

(assert (=> b!4749415 m!5709617))

(declare-fun m!5709627 () Bool)

(assert (=> b!4749415 m!5709627))

(assert (=> b!4749416 m!5709553))

(assert (=> b!4749416 m!5709553))

(declare-fun m!5709629 () Bool)

(assert (=> b!4749416 m!5709629))

(declare-fun m!5709631 () Bool)

(assert (=> b!4749412 m!5709631))

(declare-fun m!5709633 () Bool)

(assert (=> bm!332513 m!5709633))

(declare-fun m!5709635 () Bool)

(assert (=> b!4749414 m!5709635))

(assert (=> b!4749414 m!5709553))

(assert (=> b!4749414 m!5709553))

(assert (=> b!4749414 m!5709629))

(declare-fun m!5709637 () Bool)

(assert (=> b!4749414 m!5709637))

(assert (=> b!4749417 m!5709617))

(assert (=> b!4749417 m!5709617))

(assert (=> b!4749417 m!5709627))

(assert (=> d!1517833 m!5709619))

(assert (=> d!1517815 d!1517833))

(declare-fun b!4749426 () Bool)

(declare-fun e!2962580 () Option!12516)

(assert (=> b!4749426 (= e!2962580 None!12515)))

(declare-fun b!4749423 () Bool)

(declare-fun e!2962579 () Option!12516)

(assert (=> b!4749423 (= e!2962579 (Some!12515 (_2!30704 (h!59461 lt!1912911))))))

(declare-fun d!1517843 () Bool)

(declare-fun c!810949 () Bool)

(assert (=> d!1517843 (= c!810949 (and ((_ is Cons!53064) lt!1912911) (= (_1!30704 (h!59461 lt!1912911)) (_1!30704 t!14174))))))

(assert (=> d!1517843 (= (getValueByKey!2066 lt!1912911 (_1!30704 t!14174)) e!2962579)))

(declare-fun b!4749424 () Bool)

(assert (=> b!4749424 (= e!2962579 e!2962580)))

(declare-fun c!810950 () Bool)

(assert (=> b!4749424 (= c!810950 (and ((_ is Cons!53064) lt!1912911) (not (= (_1!30704 (h!59461 lt!1912911)) (_1!30704 t!14174)))))))

(declare-fun b!4749425 () Bool)

(assert (=> b!4749425 (= e!2962580 (getValueByKey!2066 (t!360512 lt!1912911) (_1!30704 t!14174)))))

(assert (= (and d!1517843 c!810949) b!4749423))

(assert (= (and d!1517843 (not c!810949)) b!4749424))

(assert (= (and b!4749424 c!810950) b!4749425))

(assert (= (and b!4749424 (not c!810950)) b!4749426))

(declare-fun m!5709639 () Bool)

(assert (=> b!4749425 m!5709639))

(assert (=> d!1517815 d!1517843))

(declare-fun d!1517845 () Bool)

(assert (=> d!1517845 (= (getValueByKey!2066 lt!1912911 (_1!30704 t!14174)) (Some!12515 (_2!30704 t!14174)))))

(declare-fun lt!1912965 () Unit!135226)

(declare-fun choose!33797 (List!53188 K!14475 V!14721) Unit!135226)

(assert (=> d!1517845 (= lt!1912965 (choose!33797 lt!1912911 (_1!30704 t!14174) (_2!30704 t!14174)))))

(declare-fun e!2962591 () Bool)

(assert (=> d!1517845 e!2962591))

(declare-fun res!2013713 () Bool)

(assert (=> d!1517845 (=> (not res!2013713) (not e!2962591))))

(assert (=> d!1517845 (= res!2013713 (invariantList!1579 lt!1912911))))

(assert (=> d!1517845 (= (lemmaContainsTupThenGetReturnValue!1143 lt!1912911 (_1!30704 t!14174) (_2!30704 t!14174)) lt!1912965)))

(declare-fun b!4749439 () Bool)

(declare-fun res!2013714 () Bool)

(assert (=> b!4749439 (=> (not res!2013714) (not e!2962591))))

(assert (=> b!4749439 (= res!2013714 (containsKey!3539 lt!1912911 (_1!30704 t!14174)))))

(declare-fun b!4749440 () Bool)

(assert (=> b!4749440 (= e!2962591 (contains!16477 lt!1912911 (tuple2!54821 (_1!30704 t!14174) (_2!30704 t!14174))))))

(assert (= (and d!1517845 res!2013713) b!4749439))

(assert (= (and b!4749439 res!2013714) b!4749440))

(assert (=> d!1517845 m!5709547))

(declare-fun m!5709651 () Bool)

(assert (=> d!1517845 m!5709651))

(declare-fun m!5709653 () Bool)

(assert (=> d!1517845 m!5709653))

(declare-fun m!5709655 () Bool)

(assert (=> b!4749439 m!5709655))

(declare-fun m!5709657 () Bool)

(assert (=> b!4749440 m!5709657))

(assert (=> d!1517815 d!1517845))

(declare-fun b!4749504 () Bool)

(declare-fun e!2962635 () List!53188)

(declare-fun call!332532 () List!53188)

(assert (=> b!4749504 (= e!2962635 call!332532)))

(declare-fun bm!332525 () Bool)

(declare-fun call!332531 () List!53188)

(assert (=> bm!332525 (= call!332532 call!332531)))

(declare-fun c!810973 () Bool)

(declare-fun c!810972 () Bool)

(assert (=> bm!332525 (= c!810973 c!810972)))

(declare-fun b!4749505 () Bool)

(declare-fun lt!1913018 () List!53188)

(assert (=> b!4749505 (= e!2962635 lt!1913018)))

(assert (=> b!4749505 (= lt!1913018 call!332532)))

(declare-fun c!810970 () Bool)

(assert (=> b!4749505 (= c!810970 (containsKey!3539 (insertNoDuplicatedKeys!651 (t!360512 (toList!6098 (addToMapMapFromBucket!1554 l!14304 acc!1214))) (_1!30704 t!14174) (_2!30704 t!14174)) (_1!30704 (h!59461 (toList!6098 (addToMapMapFromBucket!1554 l!14304 acc!1214))))))))

(declare-fun lt!1913024 () Unit!135226)

(declare-fun e!2962632 () Unit!135226)

(assert (=> b!4749505 (= lt!1913024 e!2962632)))

(declare-fun b!4749506 () Bool)

(declare-fun e!2962634 () List!53188)

(declare-fun e!2962638 () List!53188)

(assert (=> b!4749506 (= e!2962634 e!2962638)))

(declare-fun res!2013741 () Bool)

(assert (=> b!4749506 (= res!2013741 ((_ is Cons!53064) (toList!6098 (addToMapMapFromBucket!1554 l!14304 acc!1214))))))

(declare-fun e!2962637 () Bool)

(assert (=> b!4749506 (=> (not res!2013741) (not e!2962637))))

(declare-fun c!810974 () Bool)

(assert (=> b!4749506 (= c!810974 e!2962637)))

(declare-fun b!4749507 () Bool)

(declare-fun e!2962636 () List!53188)

(assert (=> b!4749507 (= e!2962636 Nil!53064)))

(declare-fun b!4749508 () Bool)

(assert (=> b!4749508 (= e!2962636 (insertNoDuplicatedKeys!651 (t!360512 (toList!6098 (addToMapMapFromBucket!1554 l!14304 acc!1214))) (_1!30704 t!14174) (_2!30704 t!14174)))))

(declare-fun bm!332526 () Bool)

(declare-fun call!332533 () List!53188)

(assert (=> bm!332526 (= call!332531 call!332533)))

(declare-fun b!4749509 () Bool)

(assert (=> b!4749509 (= c!810972 ((_ is Cons!53064) (toList!6098 (addToMapMapFromBucket!1554 l!14304 acc!1214))))))

(assert (=> b!4749509 (= e!2962638 e!2962635)))

(declare-fun b!4749510 () Bool)

(declare-fun res!2013740 () Bool)

(declare-fun e!2962633 () Bool)

(assert (=> b!4749510 (=> (not res!2013740) (not e!2962633))))

(declare-fun lt!1913015 () List!53188)

(assert (=> b!4749510 (= res!2013740 (containsKey!3539 lt!1913015 (_1!30704 t!14174)))))

(declare-fun b!4749511 () Bool)

(declare-fun res!2013743 () Bool)

(assert (=> b!4749511 (=> (not res!2013743) (not e!2962633))))

(assert (=> b!4749511 (= res!2013743 (contains!16477 lt!1913015 (tuple2!54821 (_1!30704 t!14174) (_2!30704 t!14174))))))

(declare-fun b!4749512 () Bool)

(assert (=> b!4749512 (= e!2962638 call!332531)))

(declare-fun d!1517851 () Bool)

(assert (=> d!1517851 e!2962633))

(declare-fun res!2013742 () Bool)

(assert (=> d!1517851 (=> (not res!2013742) (not e!2962633))))

(assert (=> d!1517851 (= res!2013742 (invariantList!1579 lt!1913015))))

(assert (=> d!1517851 (= lt!1913015 e!2962634)))

(declare-fun c!810971 () Bool)

(assert (=> d!1517851 (= c!810971 (and ((_ is Cons!53064) (toList!6098 (addToMapMapFromBucket!1554 l!14304 acc!1214))) (= (_1!30704 (h!59461 (toList!6098 (addToMapMapFromBucket!1554 l!14304 acc!1214)))) (_1!30704 t!14174))))))

(assert (=> d!1517851 (invariantList!1579 (toList!6098 (addToMapMapFromBucket!1554 l!14304 acc!1214)))))

(assert (=> d!1517851 (= (insertNoDuplicatedKeys!651 (toList!6098 (addToMapMapFromBucket!1554 l!14304 acc!1214)) (_1!30704 t!14174) (_2!30704 t!14174)) lt!1913015)))

(declare-fun b!4749513 () Bool)

(declare-fun Unit!135263 () Unit!135226)

(assert (=> b!4749513 (= e!2962632 Unit!135263)))

(declare-fun lt!1913021 () List!53188)

(declare-fun call!332530 () List!53189)

(declare-fun bm!332527 () Bool)

(assert (=> bm!332527 (= call!332530 (getKeysList!999 (ite c!810971 (toList!6098 (addToMapMapFromBucket!1554 l!14304 acc!1214)) lt!1913021)))))

(declare-fun b!4749514 () Bool)

(declare-fun content!9514 (List!53189) (InoxSet K!14475))

(assert (=> b!4749514 (= e!2962633 (= (content!9514 (getKeysList!999 lt!1913015)) ((_ map or) (content!9514 (getKeysList!999 (toList!6098 (addToMapMapFromBucket!1554 l!14304 acc!1214)))) (store ((as const (Array K!14475 Bool)) false) (_1!30704 t!14174) true))))))

(declare-fun bm!332528 () Bool)

(declare-fun $colon$colon!1093 (List!53188 tuple2!54820) List!53188)

(assert (=> bm!332528 (= call!332533 ($colon$colon!1093 (ite c!810971 (t!360512 (toList!6098 (addToMapMapFromBucket!1554 l!14304 acc!1214))) (ite c!810974 (toList!6098 (addToMapMapFromBucket!1554 l!14304 acc!1214)) e!2962636)) (ite (or c!810971 c!810974) (tuple2!54821 (_1!30704 t!14174) (_2!30704 t!14174)) (ite c!810972 (h!59461 (toList!6098 (addToMapMapFromBucket!1554 l!14304 acc!1214))) (tuple2!54821 (_1!30704 t!14174) (_2!30704 t!14174))))))))

(declare-fun b!4749515 () Bool)

(assert (=> b!4749515 false))

(declare-fun lt!1913022 () Unit!135226)

(declare-fun lt!1913016 () Unit!135226)

(assert (=> b!4749515 (= lt!1913022 lt!1913016)))

(assert (=> b!4749515 (containsKey!3539 (t!360512 (toList!6098 (addToMapMapFromBucket!1554 l!14304 acc!1214))) (_1!30704 (h!59461 (toList!6098 (addToMapMapFromBucket!1554 l!14304 acc!1214)))))))

(assert (=> b!4749515 (= lt!1913016 (lemmaInGetKeysListThenContainsKey!998 (t!360512 (toList!6098 (addToMapMapFromBucket!1554 l!14304 acc!1214))) (_1!30704 (h!59461 (toList!6098 (addToMapMapFromBucket!1554 l!14304 acc!1214))))))))

(declare-fun lt!1913019 () Unit!135226)

(declare-fun lt!1913023 () Unit!135226)

(assert (=> b!4749515 (= lt!1913019 lt!1913023)))

(assert (=> b!4749515 (contains!16478 call!332530 (_1!30704 (h!59461 (toList!6098 (addToMapMapFromBucket!1554 l!14304 acc!1214)))))))

(assert (=> b!4749515 (= lt!1913023 (lemmaInListThenGetKeysListContains!994 lt!1913021 (_1!30704 (h!59461 (toList!6098 (addToMapMapFromBucket!1554 l!14304 acc!1214))))))))

(assert (=> b!4749515 (= lt!1913021 (insertNoDuplicatedKeys!651 (t!360512 (toList!6098 (addToMapMapFromBucket!1554 l!14304 acc!1214))) (_1!30704 t!14174) (_2!30704 t!14174)))))

(declare-fun Unit!135264 () Unit!135226)

(assert (=> b!4749515 (= e!2962632 Unit!135264)))

(declare-fun b!4749516 () Bool)

(assert (=> b!4749516 (= e!2962637 (not (containsKey!3539 (toList!6098 (addToMapMapFromBucket!1554 l!14304 acc!1214)) (_1!30704 t!14174))))))

(declare-fun b!4749517 () Bool)

(assert (=> b!4749517 (= e!2962634 call!332533)))

(declare-fun lt!1913017 () List!53189)

(assert (=> b!4749517 (= lt!1913017 call!332530)))

(declare-fun lt!1913020 () Unit!135226)

(declare-fun lemmaSubseqRefl!156 (List!53189) Unit!135226)

(assert (=> b!4749517 (= lt!1913020 (lemmaSubseqRefl!156 lt!1913017))))

(declare-fun subseq!672 (List!53189 List!53189) Bool)

(assert (=> b!4749517 (subseq!672 lt!1913017 lt!1913017)))

(declare-fun lt!1913025 () Unit!135226)

(assert (=> b!4749517 (= lt!1913025 lt!1913020)))

(assert (= (and d!1517851 c!810971) b!4749517))

(assert (= (and d!1517851 (not c!810971)) b!4749506))

(assert (= (and b!4749506 res!2013741) b!4749516))

(assert (= (and b!4749506 c!810974) b!4749512))

(assert (= (and b!4749506 (not c!810974)) b!4749509))

(assert (= (and b!4749509 c!810972) b!4749505))

(assert (= (and b!4749509 (not c!810972)) b!4749504))

(assert (= (and b!4749505 c!810970) b!4749515))

(assert (= (and b!4749505 (not c!810970)) b!4749513))

(assert (= (or b!4749505 b!4749504) bm!332525))

(assert (= (and bm!332525 c!810973) b!4749508))

(assert (= (and bm!332525 (not c!810973)) b!4749507))

(assert (= (or b!4749512 bm!332525) bm!332526))

(assert (= (or b!4749517 b!4749515) bm!332527))

(assert (= (or b!4749517 bm!332526) bm!332528))

(assert (= (and d!1517851 res!2013742) b!4749510))

(assert (= (and b!4749510 res!2013740) b!4749511))

(assert (= (and b!4749511 res!2013743) b!4749514))

(declare-fun m!5709687 () Bool)

(assert (=> b!4749514 m!5709687))

(assert (=> b!4749514 m!5709687))

(declare-fun m!5709689 () Bool)

(assert (=> b!4749514 m!5709689))

(declare-fun m!5709691 () Bool)

(assert (=> b!4749514 m!5709691))

(declare-fun m!5709693 () Bool)

(assert (=> b!4749514 m!5709693))

(assert (=> b!4749514 m!5709693))

(declare-fun m!5709695 () Bool)

(assert (=> b!4749514 m!5709695))

(declare-fun m!5709697 () Bool)

(assert (=> b!4749517 m!5709697))

(declare-fun m!5709699 () Bool)

(assert (=> b!4749517 m!5709699))

(declare-fun m!5709701 () Bool)

(assert (=> b!4749508 m!5709701))

(declare-fun m!5709703 () Bool)

(assert (=> b!4749510 m!5709703))

(declare-fun m!5709705 () Bool)

(assert (=> b!4749516 m!5709705))

(declare-fun m!5709707 () Bool)

(assert (=> bm!332527 m!5709707))

(declare-fun m!5709709 () Bool)

(assert (=> d!1517851 m!5709709))

(declare-fun m!5709711 () Bool)

(assert (=> d!1517851 m!5709711))

(declare-fun m!5709713 () Bool)

(assert (=> b!4749515 m!5709713))

(assert (=> b!4749515 m!5709701))

(declare-fun m!5709715 () Bool)

(assert (=> b!4749515 m!5709715))

(declare-fun m!5709717 () Bool)

(assert (=> b!4749515 m!5709717))

(declare-fun m!5709719 () Bool)

(assert (=> b!4749515 m!5709719))

(declare-fun m!5709721 () Bool)

(assert (=> bm!332528 m!5709721))

(assert (=> b!4749505 m!5709701))

(assert (=> b!4749505 m!5709701))

(declare-fun m!5709723 () Bool)

(assert (=> b!4749505 m!5709723))

(declare-fun m!5709725 () Bool)

(assert (=> b!4749511 m!5709725))

(assert (=> d!1517815 d!1517851))

(declare-fun bs!1139894 () Bool)

(declare-fun d!1517861 () Bool)

(assert (= bs!1139894 (and d!1517861 b!4749354)))

(declare-fun lambda!221368 () Int)

(assert (=> bs!1139894 (= lambda!221368 lambda!221359)))

(declare-fun bs!1139895 () Bool)

(assert (= bs!1139895 (and d!1517861 d!1517817)))

(assert (=> bs!1139895 (= (= acc!1214 lt!1912922) (= lambda!221368 lambda!221362))))

(declare-fun bs!1139896 () Bool)

(assert (= bs!1139896 (and d!1517861 b!4749351)))

(assert (=> bs!1139896 (= lambda!221368 lambda!221360)))

(assert (=> bs!1139896 (= (= acc!1214 lt!1912930) (= lambda!221368 lambda!221361))))

(declare-fun bs!1139897 () Bool)

(assert (= bs!1139897 (and d!1517861 b!4749338)))

(assert (=> bs!1139897 (= (= acc!1214 lt!1912897) (= lambda!221368 lambda!221357))))

(assert (=> bs!1139897 (= lambda!221368 lambda!221356)))

(declare-fun bs!1139898 () Bool)

(assert (= bs!1139898 (and d!1517861 b!4749341)))

(assert (=> bs!1139898 (= lambda!221368 lambda!221355)))

(declare-fun bs!1139899 () Bool)

(assert (= bs!1139899 (and d!1517861 d!1517805)))

(assert (=> bs!1139899 (= (= acc!1214 lt!1912889) (= lambda!221368 lambda!221358))))

(assert (=> d!1517861 true))

(assert (=> d!1517861 (forall!11747 (toList!6098 acc!1214) lambda!221368)))

(declare-fun lt!1913031 () Unit!135226)

(declare-fun choose!33799 (ListMap!5505) Unit!135226)

(assert (=> d!1517861 (= lt!1913031 (choose!33799 acc!1214))))

(assert (=> d!1517861 (= (lemmaContainsAllItsOwnKeys!862 acc!1214) lt!1913031)))

(declare-fun bs!1139900 () Bool)

(assert (= bs!1139900 d!1517861))

(declare-fun m!5709737 () Bool)

(assert (=> bs!1139900 m!5709737))

(declare-fun m!5709739 () Bool)

(assert (=> bs!1139900 m!5709739))

(assert (=> bm!332505 d!1517861))

(declare-fun d!1517867 () Bool)

(declare-fun res!2013750 () Bool)

(declare-fun e!2962648 () Bool)

(assert (=> d!1517867 (=> res!2013750 e!2962648)))

(assert (=> d!1517867 (= res!2013750 ((_ is Nil!53064) (toList!6098 acc!1214)))))

(assert (=> d!1517867 (= (forall!11747 (toList!6098 acc!1214) (ite c!810932 lambda!221355 lambda!221357)) e!2962648)))

(declare-fun b!4749536 () Bool)

(declare-fun e!2962649 () Bool)

(assert (=> b!4749536 (= e!2962648 e!2962649)))

(declare-fun res!2013751 () Bool)

(assert (=> b!4749536 (=> (not res!2013751) (not e!2962649))))

(assert (=> b!4749536 (= res!2013751 (dynLambda!21896 (ite c!810932 lambda!221355 lambda!221357) (h!59461 (toList!6098 acc!1214))))))

(declare-fun b!4749537 () Bool)

(assert (=> b!4749537 (= e!2962649 (forall!11747 (t!360512 (toList!6098 acc!1214)) (ite c!810932 lambda!221355 lambda!221357)))))

(assert (= (and d!1517867 (not res!2013750)) b!4749536))

(assert (= (and b!4749536 res!2013751) b!4749537))

(declare-fun b_lambda!182995 () Bool)

(assert (=> (not b_lambda!182995) (not b!4749536)))

(declare-fun m!5709741 () Bool)

(assert (=> b!4749536 m!5709741))

(declare-fun m!5709743 () Bool)

(assert (=> b!4749537 m!5709743))

(assert (=> bm!332506 d!1517867))

(declare-fun d!1517869 () Bool)

(declare-fun lt!1913034 () Bool)

(assert (=> d!1517869 (= lt!1913034 (select (content!9513 (toList!6098 lt!1912912)) t!14174))))

(declare-fun e!2962655 () Bool)

(assert (=> d!1517869 (= lt!1913034 e!2962655)))

(declare-fun res!2013756 () Bool)

(assert (=> d!1517869 (=> (not res!2013756) (not e!2962655))))

(assert (=> d!1517869 (= res!2013756 ((_ is Cons!53064) (toList!6098 lt!1912912)))))

(assert (=> d!1517869 (= (contains!16477 (toList!6098 lt!1912912) t!14174) lt!1913034)))

(declare-fun b!4749542 () Bool)

(declare-fun e!2962654 () Bool)

(assert (=> b!4749542 (= e!2962655 e!2962654)))

(declare-fun res!2013757 () Bool)

(assert (=> b!4749542 (=> res!2013757 e!2962654)))

(assert (=> b!4749542 (= res!2013757 (= (h!59461 (toList!6098 lt!1912912)) t!14174))))

(declare-fun b!4749543 () Bool)

(assert (=> b!4749543 (= e!2962654 (contains!16477 (t!360512 (toList!6098 lt!1912912)) t!14174))))

(assert (= (and d!1517869 res!2013756) b!4749542))

(assert (= (and b!4749542 (not res!2013757)) b!4749543))

(declare-fun m!5709745 () Bool)

(assert (=> d!1517869 m!5709745))

(declare-fun m!5709747 () Bool)

(assert (=> d!1517869 m!5709747))

(declare-fun m!5709749 () Bool)

(assert (=> b!4749543 m!5709749))

(assert (=> b!4749350 d!1517869))

(declare-fun d!1517871 () Bool)

(declare-fun res!2013758 () Bool)

(declare-fun e!2962656 () Bool)

(assert (=> d!1517871 (=> res!2013758 e!2962656)))

(assert (=> d!1517871 (= res!2013758 ((_ is Nil!53064) (toList!6098 acc!1214)))))

(assert (=> d!1517871 (= (forall!11747 (toList!6098 acc!1214) lambda!221358) e!2962656)))

(declare-fun b!4749544 () Bool)

(declare-fun e!2962657 () Bool)

(assert (=> b!4749544 (= e!2962656 e!2962657)))

(declare-fun res!2013759 () Bool)

(assert (=> b!4749544 (=> (not res!2013759) (not e!2962657))))

(assert (=> b!4749544 (= res!2013759 (dynLambda!21896 lambda!221358 (h!59461 (toList!6098 acc!1214))))))

(declare-fun b!4749545 () Bool)

(assert (=> b!4749545 (= e!2962657 (forall!11747 (t!360512 (toList!6098 acc!1214)) lambda!221358))))

(assert (= (and d!1517871 (not res!2013758)) b!4749544))

(assert (= (and b!4749544 res!2013759) b!4749545))

(declare-fun b_lambda!182997 () Bool)

(assert (=> (not b_lambda!182997) (not b!4749544)))

(declare-fun m!5709751 () Bool)

(assert (=> b!4749544 m!5709751))

(declare-fun m!5709753 () Bool)

(assert (=> b!4749545 m!5709753))

(assert (=> b!4749339 d!1517871))

(declare-fun d!1517873 () Bool)

(declare-fun c!810983 () Bool)

(assert (=> d!1517873 (= c!810983 ((_ is Nil!53064) (toList!6098 (addToMapMapFromBucket!1554 lt!1912743 acc!1214))))))

(declare-fun e!2962660 () (InoxSet tuple2!54820))

(assert (=> d!1517873 (= (content!9513 (toList!6098 (addToMapMapFromBucket!1554 lt!1912743 acc!1214))) e!2962660)))

(declare-fun b!4749550 () Bool)

(assert (=> b!4749550 (= e!2962660 ((as const (Array tuple2!54820 Bool)) false))))

(declare-fun b!4749551 () Bool)

(assert (=> b!4749551 (= e!2962660 ((_ map or) (store ((as const (Array tuple2!54820 Bool)) false) (h!59461 (toList!6098 (addToMapMapFromBucket!1554 lt!1912743 acc!1214))) true) (content!9513 (t!360512 (toList!6098 (addToMapMapFromBucket!1554 lt!1912743 acc!1214))))))))

(assert (= (and d!1517873 c!810983) b!4749550))

(assert (= (and d!1517873 (not c!810983)) b!4749551))

(declare-fun m!5709755 () Bool)

(assert (=> b!4749551 m!5709755))

(declare-fun m!5709757 () Bool)

(assert (=> b!4749551 m!5709757))

(assert (=> d!1517803 d!1517873))

(declare-fun d!1517875 () Bool)

(declare-fun c!810984 () Bool)

(assert (=> d!1517875 (= c!810984 ((_ is Nil!53064) (toList!6098 (+!2364 (addToMapMapFromBucket!1554 l!14304 acc!1214) t!14174))))))

(declare-fun e!2962661 () (InoxSet tuple2!54820))

(assert (=> d!1517875 (= (content!9513 (toList!6098 (+!2364 (addToMapMapFromBucket!1554 l!14304 acc!1214) t!14174))) e!2962661)))

(declare-fun b!4749552 () Bool)

(assert (=> b!4749552 (= e!2962661 ((as const (Array tuple2!54820 Bool)) false))))

(declare-fun b!4749553 () Bool)

(assert (=> b!4749553 (= e!2962661 ((_ map or) (store ((as const (Array tuple2!54820 Bool)) false) (h!59461 (toList!6098 (+!2364 (addToMapMapFromBucket!1554 l!14304 acc!1214) t!14174))) true) (content!9513 (t!360512 (toList!6098 (+!2364 (addToMapMapFromBucket!1554 l!14304 acc!1214) t!14174))))))))

(assert (= (and d!1517875 c!810984) b!4749552))

(assert (= (and d!1517875 (not c!810984)) b!4749553))

(declare-fun m!5709759 () Bool)

(assert (=> b!4749553 m!5709759))

(declare-fun m!5709761 () Bool)

(assert (=> b!4749553 m!5709761))

(assert (=> d!1517803 d!1517875))

(assert (=> bm!332508 d!1517861))

(declare-fun d!1517877 () Bool)

(declare-fun res!2013764 () Bool)

(declare-fun e!2962666 () Bool)

(assert (=> d!1517877 (=> res!2013764 e!2962666)))

(assert (=> d!1517877 (= res!2013764 (and ((_ is Cons!53064) (t!360512 l!14304)) (= (_1!30704 (h!59461 (t!360512 l!14304))) (_1!30704 (h!59461 l!14304)))))))

(assert (=> d!1517877 (= (containsKey!3538 (t!360512 l!14304) (_1!30704 (h!59461 l!14304))) e!2962666)))

(declare-fun b!4749558 () Bool)

(declare-fun e!2962667 () Bool)

(assert (=> b!4749558 (= e!2962666 e!2962667)))

(declare-fun res!2013765 () Bool)

(assert (=> b!4749558 (=> (not res!2013765) (not e!2962667))))

(assert (=> b!4749558 (= res!2013765 ((_ is Cons!53064) (t!360512 l!14304)))))

(declare-fun b!4749559 () Bool)

(assert (=> b!4749559 (= e!2962667 (containsKey!3538 (t!360512 (t!360512 l!14304)) (_1!30704 (h!59461 l!14304))))))

(assert (= (and d!1517877 (not res!2013764)) b!4749558))

(assert (= (and b!4749558 res!2013765) b!4749559))

(declare-fun m!5709763 () Bool)

(assert (=> b!4749559 m!5709763))

(assert (=> b!4749290 d!1517877))

(declare-fun d!1517879 () Bool)

(assert (=> d!1517879 (dynLambda!21896 lambda!221357 (h!59461 lt!1912743))))

(declare-fun lt!1913037 () Unit!135226)

(declare-fun choose!33801 (List!53188 Int tuple2!54820) Unit!135226)

(assert (=> d!1517879 (= lt!1913037 (choose!33801 (toList!6098 lt!1912896) lambda!221357 (h!59461 lt!1912743)))))

(declare-fun e!2962670 () Bool)

(assert (=> d!1517879 e!2962670))

(declare-fun res!2013768 () Bool)

(assert (=> d!1517879 (=> (not res!2013768) (not e!2962670))))

(assert (=> d!1517879 (= res!2013768 (forall!11747 (toList!6098 lt!1912896) lambda!221357))))

(assert (=> d!1517879 (= (forallContained!3773 (toList!6098 lt!1912896) lambda!221357 (h!59461 lt!1912743)) lt!1913037)))

(declare-fun b!4749562 () Bool)

(assert (=> b!4749562 (= e!2962670 (contains!16477 (toList!6098 lt!1912896) (h!59461 lt!1912743)))))

(assert (= (and d!1517879 res!2013768) b!4749562))

(declare-fun b_lambda!182999 () Bool)

(assert (=> (not b_lambda!182999) (not d!1517879)))

(declare-fun m!5709765 () Bool)

(assert (=> d!1517879 m!5709765))

(declare-fun m!5709767 () Bool)

(assert (=> d!1517879 m!5709767))

(assert (=> d!1517879 m!5709515))

(declare-fun m!5709769 () Bool)

(assert (=> b!4749562 m!5709769))

(assert (=> b!4749338 d!1517879))

(declare-fun d!1517881 () Bool)

(declare-fun e!2962671 () Bool)

(assert (=> d!1517881 e!2962671))

(declare-fun res!2013770 () Bool)

(assert (=> d!1517881 (=> (not res!2013770) (not e!2962671))))

(declare-fun lt!1913039 () ListMap!5505)

(assert (=> d!1517881 (= res!2013770 (contains!16476 lt!1913039 (_1!30704 (h!59461 lt!1912743))))))

(declare-fun lt!1913038 () List!53188)

(assert (=> d!1517881 (= lt!1913039 (ListMap!5506 lt!1913038))))

(declare-fun lt!1913041 () Unit!135226)

(declare-fun lt!1913040 () Unit!135226)

(assert (=> d!1517881 (= lt!1913041 lt!1913040)))

(assert (=> d!1517881 (= (getValueByKey!2066 lt!1913038 (_1!30704 (h!59461 lt!1912743))) (Some!12515 (_2!30704 (h!59461 lt!1912743))))))

(assert (=> d!1517881 (= lt!1913040 (lemmaContainsTupThenGetReturnValue!1143 lt!1913038 (_1!30704 (h!59461 lt!1912743)) (_2!30704 (h!59461 lt!1912743))))))

(assert (=> d!1517881 (= lt!1913038 (insertNoDuplicatedKeys!651 (toList!6098 acc!1214) (_1!30704 (h!59461 lt!1912743)) (_2!30704 (h!59461 lt!1912743))))))

(assert (=> d!1517881 (= (+!2364 acc!1214 (h!59461 lt!1912743)) lt!1913039)))

(declare-fun b!4749563 () Bool)

(declare-fun res!2013769 () Bool)

(assert (=> b!4749563 (=> (not res!2013769) (not e!2962671))))

(assert (=> b!4749563 (= res!2013769 (= (getValueByKey!2066 (toList!6098 lt!1913039) (_1!30704 (h!59461 lt!1912743))) (Some!12515 (_2!30704 (h!59461 lt!1912743)))))))

(declare-fun b!4749564 () Bool)

(assert (=> b!4749564 (= e!2962671 (contains!16477 (toList!6098 lt!1913039) (h!59461 lt!1912743)))))

(assert (= (and d!1517881 res!2013770) b!4749563))

(assert (= (and b!4749563 res!2013769) b!4749564))

(declare-fun m!5709771 () Bool)

(assert (=> d!1517881 m!5709771))

(declare-fun m!5709773 () Bool)

(assert (=> d!1517881 m!5709773))

(declare-fun m!5709775 () Bool)

(assert (=> d!1517881 m!5709775))

(declare-fun m!5709777 () Bool)

(assert (=> d!1517881 m!5709777))

(declare-fun m!5709779 () Bool)

(assert (=> b!4749563 m!5709779))

(declare-fun m!5709781 () Bool)

(assert (=> b!4749564 m!5709781))

(assert (=> b!4749338 d!1517881))

(declare-fun d!1517883 () Bool)

(declare-fun res!2013771 () Bool)

(declare-fun e!2962672 () Bool)

(assert (=> d!1517883 (=> res!2013771 e!2962672)))

(assert (=> d!1517883 (= res!2013771 ((_ is Nil!53064) (t!360512 lt!1912743)))))

(assert (=> d!1517883 (= (forall!11747 (t!360512 lt!1912743) lambda!221357) e!2962672)))

(declare-fun b!4749565 () Bool)

(declare-fun e!2962673 () Bool)

(assert (=> b!4749565 (= e!2962672 e!2962673)))

(declare-fun res!2013772 () Bool)

(assert (=> b!4749565 (=> (not res!2013772) (not e!2962673))))

(assert (=> b!4749565 (= res!2013772 (dynLambda!21896 lambda!221357 (h!59461 (t!360512 lt!1912743))))))

(declare-fun b!4749566 () Bool)

(assert (=> b!4749566 (= e!2962673 (forall!11747 (t!360512 (t!360512 lt!1912743)) lambda!221357))))

(assert (= (and d!1517883 (not res!2013771)) b!4749565))

(assert (= (and b!4749565 res!2013772) b!4749566))

(declare-fun b_lambda!183001 () Bool)

(assert (=> (not b_lambda!183001) (not b!4749565)))

(declare-fun m!5709783 () Bool)

(assert (=> b!4749565 m!5709783))

(declare-fun m!5709785 () Bool)

(assert (=> b!4749566 m!5709785))

(assert (=> b!4749338 d!1517883))

(declare-fun d!1517885 () Bool)

(declare-fun res!2013773 () Bool)

(declare-fun e!2962674 () Bool)

(assert (=> d!1517885 (=> res!2013773 e!2962674)))

(assert (=> d!1517885 (= res!2013773 ((_ is Nil!53064) lt!1912743))))

(assert (=> d!1517885 (= (forall!11747 lt!1912743 lambda!221357) e!2962674)))

(declare-fun b!4749567 () Bool)

(declare-fun e!2962675 () Bool)

(assert (=> b!4749567 (= e!2962674 e!2962675)))

(declare-fun res!2013774 () Bool)

(assert (=> b!4749567 (=> (not res!2013774) (not e!2962675))))

(assert (=> b!4749567 (= res!2013774 (dynLambda!21896 lambda!221357 (h!59461 lt!1912743)))))

(declare-fun b!4749568 () Bool)

(assert (=> b!4749568 (= e!2962675 (forall!11747 (t!360512 lt!1912743) lambda!221357))))

(assert (= (and d!1517885 (not res!2013773)) b!4749567))

(assert (= (and b!4749567 res!2013774) b!4749568))

(declare-fun b_lambda!183003 () Bool)

(assert (=> (not b_lambda!183003) (not b!4749567)))

(assert (=> b!4749567 m!5709765))

(assert (=> b!4749568 m!5709529))

(assert (=> b!4749338 d!1517885))

(declare-fun b!4749569 () Bool)

(declare-fun e!2962679 () List!53189)

(assert (=> b!4749569 (= e!2962679 (getKeysList!999 (toList!6098 lt!1912896)))))

(declare-fun b!4749570 () Bool)

(assert (=> b!4749570 false))

(declare-fun lt!1913044 () Unit!135226)

(declare-fun lt!1913042 () Unit!135226)

(assert (=> b!4749570 (= lt!1913044 lt!1913042)))

(assert (=> b!4749570 (containsKey!3539 (toList!6098 lt!1912896) (_1!30704 (h!59461 lt!1912743)))))

(assert (=> b!4749570 (= lt!1913042 (lemmaInGetKeysListThenContainsKey!998 (toList!6098 lt!1912896) (_1!30704 (h!59461 lt!1912743))))))

(declare-fun e!2962680 () Unit!135226)

(declare-fun Unit!135269 () Unit!135226)

(assert (=> b!4749570 (= e!2962680 Unit!135269)))

(declare-fun b!4749571 () Bool)

(declare-fun e!2962681 () Unit!135226)

(declare-fun lt!1913049 () Unit!135226)

(assert (=> b!4749571 (= e!2962681 lt!1913049)))

(declare-fun lt!1913045 () Unit!135226)

(assert (=> b!4749571 (= lt!1913045 (lemmaContainsKeyImpliesGetValueByKeyDefined!1939 (toList!6098 lt!1912896) (_1!30704 (h!59461 lt!1912743))))))

(assert (=> b!4749571 (isDefined!9752 (getValueByKey!2066 (toList!6098 lt!1912896) (_1!30704 (h!59461 lt!1912743))))))

(declare-fun lt!1913047 () Unit!135226)

(assert (=> b!4749571 (= lt!1913047 lt!1913045)))

(assert (=> b!4749571 (= lt!1913049 (lemmaInListThenGetKeysListContains!994 (toList!6098 lt!1912896) (_1!30704 (h!59461 lt!1912743))))))

(declare-fun call!332534 () Bool)

(assert (=> b!4749571 call!332534))

(declare-fun b!4749572 () Bool)

(declare-fun e!2962676 () Bool)

(assert (=> b!4749572 (= e!2962676 (not (contains!16478 (keys!19140 lt!1912896) (_1!30704 (h!59461 lt!1912743)))))))

(declare-fun b!4749573 () Bool)

(declare-fun e!2962677 () Bool)

(declare-fun e!2962678 () Bool)

(assert (=> b!4749573 (= e!2962677 e!2962678)))

(declare-fun res!2013775 () Bool)

(assert (=> b!4749573 (=> (not res!2013775) (not e!2962678))))

(assert (=> b!4749573 (= res!2013775 (isDefined!9752 (getValueByKey!2066 (toList!6098 lt!1912896) (_1!30704 (h!59461 lt!1912743)))))))

(declare-fun bm!332529 () Bool)

(assert (=> bm!332529 (= call!332534 (contains!16478 e!2962679 (_1!30704 (h!59461 lt!1912743))))))

(declare-fun c!810986 () Bool)

(declare-fun c!810985 () Bool)

(assert (=> bm!332529 (= c!810986 c!810985)))

(declare-fun b!4749574 () Bool)

(assert (=> b!4749574 (= e!2962678 (contains!16478 (keys!19140 lt!1912896) (_1!30704 (h!59461 lt!1912743))))))

(declare-fun b!4749575 () Bool)

(assert (=> b!4749575 (= e!2962679 (keys!19140 lt!1912896))))

(declare-fun d!1517887 () Bool)

(assert (=> d!1517887 e!2962677))

(declare-fun res!2013777 () Bool)

(assert (=> d!1517887 (=> res!2013777 e!2962677)))

(assert (=> d!1517887 (= res!2013777 e!2962676)))

(declare-fun res!2013776 () Bool)

(assert (=> d!1517887 (=> (not res!2013776) (not e!2962676))))

(declare-fun lt!1913043 () Bool)

(assert (=> d!1517887 (= res!2013776 (not lt!1913043))))

(declare-fun lt!1913046 () Bool)

(assert (=> d!1517887 (= lt!1913043 lt!1913046)))

(declare-fun lt!1913048 () Unit!135226)

(assert (=> d!1517887 (= lt!1913048 e!2962681)))

(assert (=> d!1517887 (= c!810985 lt!1913046)))

(assert (=> d!1517887 (= lt!1913046 (containsKey!3539 (toList!6098 lt!1912896) (_1!30704 (h!59461 lt!1912743))))))

(assert (=> d!1517887 (= (contains!16476 lt!1912896 (_1!30704 (h!59461 lt!1912743))) lt!1913043)))

(declare-fun b!4749576 () Bool)

(assert (=> b!4749576 (= e!2962681 e!2962680)))

(declare-fun c!810987 () Bool)

(assert (=> b!4749576 (= c!810987 call!332534)))

(declare-fun b!4749577 () Bool)

(declare-fun Unit!135270 () Unit!135226)

(assert (=> b!4749577 (= e!2962680 Unit!135270)))

(assert (= (and d!1517887 c!810985) b!4749571))

(assert (= (and d!1517887 (not c!810985)) b!4749576))

(assert (= (and b!4749576 c!810987) b!4749570))

(assert (= (and b!4749576 (not c!810987)) b!4749577))

(assert (= (or b!4749571 b!4749576) bm!332529))

(assert (= (and bm!332529 c!810986) b!4749569))

(assert (= (and bm!332529 (not c!810986)) b!4749575))

(assert (= (and d!1517887 res!2013776) b!4749572))

(assert (= (and d!1517887 (not res!2013777)) b!4749573))

(assert (= (and b!4749573 res!2013775) b!4749574))

(declare-fun m!5709787 () Bool)

(assert (=> b!4749575 m!5709787))

(declare-fun m!5709789 () Bool)

(assert (=> b!4749570 m!5709789))

(declare-fun m!5709791 () Bool)

(assert (=> b!4749570 m!5709791))

(assert (=> b!4749572 m!5709787))

(assert (=> b!4749572 m!5709787))

(declare-fun m!5709793 () Bool)

(assert (=> b!4749572 m!5709793))

(declare-fun m!5709795 () Bool)

(assert (=> b!4749573 m!5709795))

(assert (=> b!4749573 m!5709795))

(declare-fun m!5709797 () Bool)

(assert (=> b!4749573 m!5709797))

(declare-fun m!5709799 () Bool)

(assert (=> b!4749569 m!5709799))

(declare-fun m!5709801 () Bool)

(assert (=> bm!332529 m!5709801))

(declare-fun m!5709803 () Bool)

(assert (=> b!4749571 m!5709803))

(assert (=> b!4749571 m!5709795))

(assert (=> b!4749571 m!5709795))

(assert (=> b!4749571 m!5709797))

(declare-fun m!5709805 () Bool)

(assert (=> b!4749571 m!5709805))

(assert (=> b!4749574 m!5709787))

(assert (=> b!4749574 m!5709787))

(assert (=> b!4749574 m!5709793))

(assert (=> d!1517887 m!5709789))

(assert (=> b!4749338 d!1517887))

(declare-fun d!1517889 () Bool)

(declare-fun res!2013778 () Bool)

(declare-fun e!2962682 () Bool)

(assert (=> d!1517889 (=> res!2013778 e!2962682)))

(assert (=> d!1517889 (= res!2013778 ((_ is Nil!53064) (toList!6098 acc!1214)))))

(assert (=> d!1517889 (= (forall!11747 (toList!6098 acc!1214) lambda!221356) e!2962682)))

(declare-fun b!4749578 () Bool)

(declare-fun e!2962683 () Bool)

(assert (=> b!4749578 (= e!2962682 e!2962683)))

(declare-fun res!2013779 () Bool)

(assert (=> b!4749578 (=> (not res!2013779) (not e!2962683))))

(assert (=> b!4749578 (= res!2013779 (dynLambda!21896 lambda!221356 (h!59461 (toList!6098 acc!1214))))))

(declare-fun b!4749579 () Bool)

(assert (=> b!4749579 (= e!2962683 (forall!11747 (t!360512 (toList!6098 acc!1214)) lambda!221356))))

(assert (= (and d!1517889 (not res!2013778)) b!4749578))

(assert (= (and b!4749578 res!2013779) b!4749579))

(declare-fun b_lambda!183005 () Bool)

(assert (=> (not b_lambda!183005) (not b!4749578)))

(declare-fun m!5709807 () Bool)

(assert (=> b!4749578 m!5709807))

(declare-fun m!5709809 () Bool)

(assert (=> b!4749579 m!5709809))

(assert (=> b!4749338 d!1517889))

(declare-fun b!4749580 () Bool)

(declare-fun e!2962687 () List!53189)

(assert (=> b!4749580 (= e!2962687 (getKeysList!999 (toList!6098 lt!1912897)))))

(declare-fun b!4749581 () Bool)

(assert (=> b!4749581 false))

(declare-fun lt!1913052 () Unit!135226)

(declare-fun lt!1913050 () Unit!135226)

(assert (=> b!4749581 (= lt!1913052 lt!1913050)))

(assert (=> b!4749581 (containsKey!3539 (toList!6098 lt!1912897) (_1!30704 (h!59461 lt!1912743)))))

(assert (=> b!4749581 (= lt!1913050 (lemmaInGetKeysListThenContainsKey!998 (toList!6098 lt!1912897) (_1!30704 (h!59461 lt!1912743))))))

(declare-fun e!2962688 () Unit!135226)

(declare-fun Unit!135271 () Unit!135226)

(assert (=> b!4749581 (= e!2962688 Unit!135271)))

(declare-fun b!4749582 () Bool)

(declare-fun e!2962689 () Unit!135226)

(declare-fun lt!1913057 () Unit!135226)

(assert (=> b!4749582 (= e!2962689 lt!1913057)))

(declare-fun lt!1913053 () Unit!135226)

(assert (=> b!4749582 (= lt!1913053 (lemmaContainsKeyImpliesGetValueByKeyDefined!1939 (toList!6098 lt!1912897) (_1!30704 (h!59461 lt!1912743))))))

(assert (=> b!4749582 (isDefined!9752 (getValueByKey!2066 (toList!6098 lt!1912897) (_1!30704 (h!59461 lt!1912743))))))

(declare-fun lt!1913055 () Unit!135226)

(assert (=> b!4749582 (= lt!1913055 lt!1913053)))

(assert (=> b!4749582 (= lt!1913057 (lemmaInListThenGetKeysListContains!994 (toList!6098 lt!1912897) (_1!30704 (h!59461 lt!1912743))))))

(declare-fun call!332535 () Bool)

(assert (=> b!4749582 call!332535))

(declare-fun b!4749583 () Bool)

(declare-fun e!2962684 () Bool)

(assert (=> b!4749583 (= e!2962684 (not (contains!16478 (keys!19140 lt!1912897) (_1!30704 (h!59461 lt!1912743)))))))

(declare-fun b!4749584 () Bool)

(declare-fun e!2962685 () Bool)

(declare-fun e!2962686 () Bool)

(assert (=> b!4749584 (= e!2962685 e!2962686)))

(declare-fun res!2013780 () Bool)

(assert (=> b!4749584 (=> (not res!2013780) (not e!2962686))))

(assert (=> b!4749584 (= res!2013780 (isDefined!9752 (getValueByKey!2066 (toList!6098 lt!1912897) (_1!30704 (h!59461 lt!1912743)))))))

(declare-fun bm!332530 () Bool)

(assert (=> bm!332530 (= call!332535 (contains!16478 e!2962687 (_1!30704 (h!59461 lt!1912743))))))

(declare-fun c!810989 () Bool)

(declare-fun c!810988 () Bool)

(assert (=> bm!332530 (= c!810989 c!810988)))

(declare-fun b!4749585 () Bool)

(assert (=> b!4749585 (= e!2962686 (contains!16478 (keys!19140 lt!1912897) (_1!30704 (h!59461 lt!1912743))))))

(declare-fun b!4749586 () Bool)

(assert (=> b!4749586 (= e!2962687 (keys!19140 lt!1912897))))

(declare-fun d!1517891 () Bool)

(assert (=> d!1517891 e!2962685))

(declare-fun res!2013782 () Bool)

(assert (=> d!1517891 (=> res!2013782 e!2962685)))

(assert (=> d!1517891 (= res!2013782 e!2962684)))

(declare-fun res!2013781 () Bool)

(assert (=> d!1517891 (=> (not res!2013781) (not e!2962684))))

(declare-fun lt!1913051 () Bool)

(assert (=> d!1517891 (= res!2013781 (not lt!1913051))))

(declare-fun lt!1913054 () Bool)

(assert (=> d!1517891 (= lt!1913051 lt!1913054)))

(declare-fun lt!1913056 () Unit!135226)

(assert (=> d!1517891 (= lt!1913056 e!2962689)))

(assert (=> d!1517891 (= c!810988 lt!1913054)))

(assert (=> d!1517891 (= lt!1913054 (containsKey!3539 (toList!6098 lt!1912897) (_1!30704 (h!59461 lt!1912743))))))

(assert (=> d!1517891 (= (contains!16476 lt!1912897 (_1!30704 (h!59461 lt!1912743))) lt!1913051)))

(declare-fun b!4749587 () Bool)

(assert (=> b!4749587 (= e!2962689 e!2962688)))

(declare-fun c!810990 () Bool)

(assert (=> b!4749587 (= c!810990 call!332535)))

(declare-fun b!4749588 () Bool)

(declare-fun Unit!135272 () Unit!135226)

(assert (=> b!4749588 (= e!2962688 Unit!135272)))

(assert (= (and d!1517891 c!810988) b!4749582))

(assert (= (and d!1517891 (not c!810988)) b!4749587))

(assert (= (and b!4749587 c!810990) b!4749581))

(assert (= (and b!4749587 (not c!810990)) b!4749588))

(assert (= (or b!4749582 b!4749587) bm!332530))

(assert (= (and bm!332530 c!810989) b!4749580))

(assert (= (and bm!332530 (not c!810989)) b!4749586))

(assert (= (and d!1517891 res!2013781) b!4749583))

(assert (= (and d!1517891 (not res!2013782)) b!4749584))

(assert (= (and b!4749584 res!2013780) b!4749585))

(declare-fun m!5709811 () Bool)

(assert (=> b!4749586 m!5709811))

(declare-fun m!5709813 () Bool)

(assert (=> b!4749581 m!5709813))

(declare-fun m!5709815 () Bool)

(assert (=> b!4749581 m!5709815))

(assert (=> b!4749583 m!5709811))

(assert (=> b!4749583 m!5709811))

(declare-fun m!5709817 () Bool)

(assert (=> b!4749583 m!5709817))

(declare-fun m!5709819 () Bool)

(assert (=> b!4749584 m!5709819))

(assert (=> b!4749584 m!5709819))

(declare-fun m!5709821 () Bool)

(assert (=> b!4749584 m!5709821))

(declare-fun m!5709823 () Bool)

(assert (=> b!4749580 m!5709823))

(declare-fun m!5709825 () Bool)

(assert (=> bm!332530 m!5709825))

(declare-fun m!5709827 () Bool)

(assert (=> b!4749582 m!5709827))

(assert (=> b!4749582 m!5709819))

(assert (=> b!4749582 m!5709819))

(assert (=> b!4749582 m!5709821))

(declare-fun m!5709829 () Bool)

(assert (=> b!4749582 m!5709829))

(assert (=> b!4749585 m!5709811))

(assert (=> b!4749585 m!5709811))

(assert (=> b!4749585 m!5709817))

(assert (=> d!1517891 m!5709813))

(assert (=> b!4749338 d!1517891))

(declare-fun d!1517893 () Bool)

(declare-fun res!2013783 () Bool)

(declare-fun e!2962690 () Bool)

(assert (=> d!1517893 (=> res!2013783 e!2962690)))

(assert (=> d!1517893 (= res!2013783 ((_ is Nil!53064) (toList!6098 lt!1912896)))))

(assert (=> d!1517893 (= (forall!11747 (toList!6098 lt!1912896) lambda!221357) e!2962690)))

(declare-fun b!4749591 () Bool)

(declare-fun e!2962691 () Bool)

(assert (=> b!4749591 (= e!2962690 e!2962691)))

(declare-fun res!2013784 () Bool)

(assert (=> b!4749591 (=> (not res!2013784) (not e!2962691))))

(assert (=> b!4749591 (= res!2013784 (dynLambda!21896 lambda!221357 (h!59461 (toList!6098 lt!1912896))))))

(declare-fun b!4749592 () Bool)

(assert (=> b!4749592 (= e!2962691 (forall!11747 (t!360512 (toList!6098 lt!1912896)) lambda!221357))))

(assert (= (and d!1517893 (not res!2013783)) b!4749591))

(assert (= (and b!4749591 res!2013784) b!4749592))

(declare-fun b_lambda!183007 () Bool)

(assert (=> (not b_lambda!183007) (not b!4749591)))

(declare-fun m!5709831 () Bool)

(assert (=> b!4749591 m!5709831))

(declare-fun m!5709833 () Bool)

(assert (=> b!4749592 m!5709833))

(assert (=> b!4749338 d!1517893))

(declare-fun bs!1139901 () Bool)

(declare-fun d!1517895 () Bool)

(assert (= bs!1139901 (and d!1517895 b!4749354)))

(declare-fun lambda!221373 () Int)

(assert (=> bs!1139901 (= (= lt!1912897 acc!1214) (= lambda!221373 lambda!221359))))

(declare-fun bs!1139902 () Bool)

(assert (= bs!1139902 (and d!1517895 d!1517817)))

(assert (=> bs!1139902 (= (= lt!1912897 lt!1912922) (= lambda!221373 lambda!221362))))

(declare-fun bs!1139903 () Bool)

(assert (= bs!1139903 (and d!1517895 b!4749351)))

(assert (=> bs!1139903 (= (= lt!1912897 lt!1912930) (= lambda!221373 lambda!221361))))

(declare-fun bs!1139904 () Bool)

(assert (= bs!1139904 (and d!1517895 b!4749338)))

(assert (=> bs!1139904 (= lambda!221373 lambda!221357)))

(assert (=> bs!1139904 (= (= lt!1912897 acc!1214) (= lambda!221373 lambda!221356))))

(declare-fun bs!1139905 () Bool)

(assert (= bs!1139905 (and d!1517895 b!4749341)))

(assert (=> bs!1139905 (= (= lt!1912897 acc!1214) (= lambda!221373 lambda!221355))))

(declare-fun bs!1139906 () Bool)

(assert (= bs!1139906 (and d!1517895 d!1517805)))

(assert (=> bs!1139906 (= (= lt!1912897 lt!1912889) (= lambda!221373 lambda!221358))))

(declare-fun bs!1139907 () Bool)

(assert (= bs!1139907 (and d!1517895 d!1517861)))

(assert (=> bs!1139907 (= (= lt!1912897 acc!1214) (= lambda!221373 lambda!221368))))

(assert (=> bs!1139903 (= (= lt!1912897 acc!1214) (= lambda!221373 lambda!221360))))

(assert (=> d!1517895 true))

(assert (=> d!1517895 (forall!11747 (toList!6098 acc!1214) lambda!221373)))

(declare-fun lt!1913082 () Unit!135226)

(declare-fun choose!33803 (ListMap!5505 ListMap!5505 K!14475 V!14721) Unit!135226)

(assert (=> d!1517895 (= lt!1913082 (choose!33803 acc!1214 lt!1912897 (_1!30704 (h!59461 lt!1912743)) (_2!30704 (h!59461 lt!1912743))))))

(assert (=> d!1517895 (forall!11747 (toList!6098 (+!2364 acc!1214 (tuple2!54821 (_1!30704 (h!59461 lt!1912743)) (_2!30704 (h!59461 lt!1912743))))) lambda!221373)))

(assert (=> d!1517895 (= (addForallContainsKeyThenBeforeAdding!861 acc!1214 lt!1912897 (_1!30704 (h!59461 lt!1912743)) (_2!30704 (h!59461 lt!1912743))) lt!1913082)))

(declare-fun bs!1139908 () Bool)

(assert (= bs!1139908 d!1517895))

(declare-fun m!5709835 () Bool)

(assert (=> bs!1139908 m!5709835))

(declare-fun m!5709837 () Bool)

(assert (=> bs!1139908 m!5709837))

(declare-fun m!5709839 () Bool)

(assert (=> bs!1139908 m!5709839))

(declare-fun m!5709841 () Bool)

(assert (=> bs!1139908 m!5709841))

(assert (=> b!4749338 d!1517895))

(declare-fun bs!1139909 () Bool)

(declare-fun b!4749637 () Bool)

(assert (= bs!1139909 (and b!4749637 b!4749354)))

(declare-fun lambda!221374 () Int)

(assert (=> bs!1139909 (= (= (+!2364 acc!1214 (h!59461 lt!1912743)) acc!1214) (= lambda!221374 lambda!221359))))

(declare-fun bs!1139910 () Bool)

(assert (= bs!1139910 (and b!4749637 d!1517817)))

(assert (=> bs!1139910 (= (= (+!2364 acc!1214 (h!59461 lt!1912743)) lt!1912922) (= lambda!221374 lambda!221362))))

(declare-fun bs!1139911 () Bool)

(assert (= bs!1139911 (and b!4749637 b!4749351)))

(assert (=> bs!1139911 (= (= (+!2364 acc!1214 (h!59461 lt!1912743)) lt!1912930) (= lambda!221374 lambda!221361))))

(declare-fun bs!1139912 () Bool)

(assert (= bs!1139912 (and b!4749637 d!1517895)))

(assert (=> bs!1139912 (= (= (+!2364 acc!1214 (h!59461 lt!1912743)) lt!1912897) (= lambda!221374 lambda!221373))))

(declare-fun bs!1139913 () Bool)

(assert (= bs!1139913 (and b!4749637 b!4749338)))

(assert (=> bs!1139913 (= (= (+!2364 acc!1214 (h!59461 lt!1912743)) lt!1912897) (= lambda!221374 lambda!221357))))

(assert (=> bs!1139913 (= (= (+!2364 acc!1214 (h!59461 lt!1912743)) acc!1214) (= lambda!221374 lambda!221356))))

(declare-fun bs!1139914 () Bool)

(assert (= bs!1139914 (and b!4749637 b!4749341)))

(assert (=> bs!1139914 (= (= (+!2364 acc!1214 (h!59461 lt!1912743)) acc!1214) (= lambda!221374 lambda!221355))))

(declare-fun bs!1139915 () Bool)

(assert (= bs!1139915 (and b!4749637 d!1517805)))

(assert (=> bs!1139915 (= (= (+!2364 acc!1214 (h!59461 lt!1912743)) lt!1912889) (= lambda!221374 lambda!221358))))

(declare-fun bs!1139916 () Bool)

(assert (= bs!1139916 (and b!4749637 d!1517861)))

(assert (=> bs!1139916 (= (= (+!2364 acc!1214 (h!59461 lt!1912743)) acc!1214) (= lambda!221374 lambda!221368))))

(assert (=> bs!1139911 (= (= (+!2364 acc!1214 (h!59461 lt!1912743)) acc!1214) (= lambda!221374 lambda!221360))))

(assert (=> b!4749637 true))

(declare-fun bs!1139917 () Bool)

(declare-fun b!4749634 () Bool)

(assert (= bs!1139917 (and b!4749634 b!4749354)))

(declare-fun lambda!221375 () Int)

(assert (=> bs!1139917 (= (= (+!2364 acc!1214 (h!59461 lt!1912743)) acc!1214) (= lambda!221375 lambda!221359))))

(declare-fun bs!1139918 () Bool)

(assert (= bs!1139918 (and b!4749634 d!1517817)))

(assert (=> bs!1139918 (= (= (+!2364 acc!1214 (h!59461 lt!1912743)) lt!1912922) (= lambda!221375 lambda!221362))))

(declare-fun bs!1139919 () Bool)

(assert (= bs!1139919 (and b!4749634 b!4749351)))

(assert (=> bs!1139919 (= (= (+!2364 acc!1214 (h!59461 lt!1912743)) lt!1912930) (= lambda!221375 lambda!221361))))

(declare-fun bs!1139920 () Bool)

(assert (= bs!1139920 (and b!4749634 d!1517895)))

(assert (=> bs!1139920 (= (= (+!2364 acc!1214 (h!59461 lt!1912743)) lt!1912897) (= lambda!221375 lambda!221373))))

(declare-fun bs!1139921 () Bool)

(assert (= bs!1139921 (and b!4749634 b!4749637)))

(assert (=> bs!1139921 (= lambda!221375 lambda!221374)))

(declare-fun bs!1139922 () Bool)

(assert (= bs!1139922 (and b!4749634 b!4749338)))

(assert (=> bs!1139922 (= (= (+!2364 acc!1214 (h!59461 lt!1912743)) lt!1912897) (= lambda!221375 lambda!221357))))

(assert (=> bs!1139922 (= (= (+!2364 acc!1214 (h!59461 lt!1912743)) acc!1214) (= lambda!221375 lambda!221356))))

(declare-fun bs!1139923 () Bool)

(assert (= bs!1139923 (and b!4749634 b!4749341)))

(assert (=> bs!1139923 (= (= (+!2364 acc!1214 (h!59461 lt!1912743)) acc!1214) (= lambda!221375 lambda!221355))))

(declare-fun bs!1139924 () Bool)

(assert (= bs!1139924 (and b!4749634 d!1517805)))

(assert (=> bs!1139924 (= (= (+!2364 acc!1214 (h!59461 lt!1912743)) lt!1912889) (= lambda!221375 lambda!221358))))

(declare-fun bs!1139925 () Bool)

(assert (= bs!1139925 (and b!4749634 d!1517861)))

(assert (=> bs!1139925 (= (= (+!2364 acc!1214 (h!59461 lt!1912743)) acc!1214) (= lambda!221375 lambda!221368))))

(assert (=> bs!1139919 (= (= (+!2364 acc!1214 (h!59461 lt!1912743)) acc!1214) (= lambda!221375 lambda!221360))))

(assert (=> b!4749634 true))

(declare-fun lambda!221376 () Int)

(declare-fun lt!1913109 () ListMap!5505)

(assert (=> b!4749634 (= (= lt!1913109 (+!2364 acc!1214 (h!59461 lt!1912743))) (= lambda!221376 lambda!221375))))

(assert (=> bs!1139917 (= (= lt!1913109 acc!1214) (= lambda!221376 lambda!221359))))

(assert (=> bs!1139918 (= (= lt!1913109 lt!1912922) (= lambda!221376 lambda!221362))))

(assert (=> bs!1139919 (= (= lt!1913109 lt!1912930) (= lambda!221376 lambda!221361))))

(assert (=> bs!1139920 (= (= lt!1913109 lt!1912897) (= lambda!221376 lambda!221373))))

(assert (=> bs!1139921 (= (= lt!1913109 (+!2364 acc!1214 (h!59461 lt!1912743))) (= lambda!221376 lambda!221374))))

(assert (=> bs!1139922 (= (= lt!1913109 lt!1912897) (= lambda!221376 lambda!221357))))

(assert (=> bs!1139922 (= (= lt!1913109 acc!1214) (= lambda!221376 lambda!221356))))

(assert (=> bs!1139923 (= (= lt!1913109 acc!1214) (= lambda!221376 lambda!221355))))

(assert (=> bs!1139924 (= (= lt!1913109 lt!1912889) (= lambda!221376 lambda!221358))))

(assert (=> bs!1139925 (= (= lt!1913109 acc!1214) (= lambda!221376 lambda!221368))))

(assert (=> bs!1139919 (= (= lt!1913109 acc!1214) (= lambda!221376 lambda!221360))))

(assert (=> b!4749634 true))

(declare-fun bs!1139927 () Bool)

(declare-fun d!1517897 () Bool)

(assert (= bs!1139927 (and d!1517897 b!4749354)))

(declare-fun lt!1913101 () ListMap!5505)

(declare-fun lambda!221377 () Int)

(assert (=> bs!1139927 (= (= lt!1913101 acc!1214) (= lambda!221377 lambda!221359))))

(declare-fun bs!1139928 () Bool)

(assert (= bs!1139928 (and d!1517897 d!1517817)))

(assert (=> bs!1139928 (= (= lt!1913101 lt!1912922) (= lambda!221377 lambda!221362))))

(declare-fun bs!1139929 () Bool)

(assert (= bs!1139929 (and d!1517897 b!4749351)))

(assert (=> bs!1139929 (= (= lt!1913101 lt!1912930) (= lambda!221377 lambda!221361))))

(declare-fun bs!1139930 () Bool)

(assert (= bs!1139930 (and d!1517897 d!1517895)))

(assert (=> bs!1139930 (= (= lt!1913101 lt!1912897) (= lambda!221377 lambda!221373))))

(declare-fun bs!1139931 () Bool)

(assert (= bs!1139931 (and d!1517897 b!4749637)))

(assert (=> bs!1139931 (= (= lt!1913101 (+!2364 acc!1214 (h!59461 lt!1912743))) (= lambda!221377 lambda!221374))))

(declare-fun bs!1139932 () Bool)

(assert (= bs!1139932 (and d!1517897 b!4749634)))

(assert (=> bs!1139932 (= (= lt!1913101 lt!1913109) (= lambda!221377 lambda!221376))))

(assert (=> bs!1139932 (= (= lt!1913101 (+!2364 acc!1214 (h!59461 lt!1912743))) (= lambda!221377 lambda!221375))))

(declare-fun bs!1139933 () Bool)

(assert (= bs!1139933 (and d!1517897 b!4749338)))

(assert (=> bs!1139933 (= (= lt!1913101 lt!1912897) (= lambda!221377 lambda!221357))))

(assert (=> bs!1139933 (= (= lt!1913101 acc!1214) (= lambda!221377 lambda!221356))))

(declare-fun bs!1139934 () Bool)

(assert (= bs!1139934 (and d!1517897 b!4749341)))

(assert (=> bs!1139934 (= (= lt!1913101 acc!1214) (= lambda!221377 lambda!221355))))

(declare-fun bs!1139935 () Bool)

(assert (= bs!1139935 (and d!1517897 d!1517805)))

(assert (=> bs!1139935 (= (= lt!1913101 lt!1912889) (= lambda!221377 lambda!221358))))

(declare-fun bs!1139936 () Bool)

(assert (= bs!1139936 (and d!1517897 d!1517861)))

(assert (=> bs!1139936 (= (= lt!1913101 acc!1214) (= lambda!221377 lambda!221368))))

(assert (=> bs!1139929 (= (= lt!1913101 acc!1214) (= lambda!221377 lambda!221360))))

(assert (=> d!1517897 true))

(declare-fun bm!332544 () Bool)

(declare-fun call!332549 () Bool)

(declare-fun c!811006 () Bool)

(assert (=> bm!332544 (= call!332549 (forall!11747 (toList!6098 (+!2364 acc!1214 (h!59461 lt!1912743))) (ite c!811006 lambda!221374 lambda!221376)))))

(declare-fun e!2962714 () ListMap!5505)

(assert (=> b!4749634 (= e!2962714 lt!1913109)))

(declare-fun lt!1913108 () ListMap!5505)

(assert (=> b!4749634 (= lt!1913108 (+!2364 (+!2364 acc!1214 (h!59461 lt!1912743)) (h!59461 (t!360512 lt!1912743))))))

(assert (=> b!4749634 (= lt!1913109 (addToMapMapFromBucket!1554 (t!360512 (t!360512 lt!1912743)) (+!2364 (+!2364 acc!1214 (h!59461 lt!1912743)) (h!59461 (t!360512 lt!1912743)))))))

(declare-fun lt!1913099 () Unit!135226)

(declare-fun call!332550 () Unit!135226)

(assert (=> b!4749634 (= lt!1913099 call!332550)))

(assert (=> b!4749634 (forall!11747 (toList!6098 (+!2364 acc!1214 (h!59461 lt!1912743))) lambda!221375)))

(declare-fun lt!1913110 () Unit!135226)

(assert (=> b!4749634 (= lt!1913110 lt!1913099)))

(assert (=> b!4749634 (forall!11747 (toList!6098 lt!1913108) lambda!221376)))

(declare-fun lt!1913100 () Unit!135226)

(declare-fun Unit!135284 () Unit!135226)

(assert (=> b!4749634 (= lt!1913100 Unit!135284)))

(assert (=> b!4749634 (forall!11747 (t!360512 (t!360512 lt!1912743)) lambda!221376)))

(declare-fun lt!1913112 () Unit!135226)

(declare-fun Unit!135285 () Unit!135226)

(assert (=> b!4749634 (= lt!1913112 Unit!135285)))

(declare-fun lt!1913105 () Unit!135226)

(declare-fun Unit!135286 () Unit!135226)

(assert (=> b!4749634 (= lt!1913105 Unit!135286)))

(declare-fun lt!1913111 () Unit!135226)

(assert (=> b!4749634 (= lt!1913111 (forallContained!3773 (toList!6098 lt!1913108) lambda!221376 (h!59461 (t!360512 lt!1912743))))))

(assert (=> b!4749634 (contains!16476 lt!1913108 (_1!30704 (h!59461 (t!360512 lt!1912743))))))

(declare-fun lt!1913113 () Unit!135226)

(declare-fun Unit!135287 () Unit!135226)

(assert (=> b!4749634 (= lt!1913113 Unit!135287)))

(assert (=> b!4749634 (contains!16476 lt!1913109 (_1!30704 (h!59461 (t!360512 lt!1912743))))))

(declare-fun lt!1913103 () Unit!135226)

(declare-fun Unit!135288 () Unit!135226)

(assert (=> b!4749634 (= lt!1913103 Unit!135288)))

(assert (=> b!4749634 (forall!11747 (t!360512 lt!1912743) lambda!221376)))

(declare-fun lt!1913096 () Unit!135226)

(declare-fun Unit!135289 () Unit!135226)

(assert (=> b!4749634 (= lt!1913096 Unit!135289)))

(assert (=> b!4749634 (forall!11747 (toList!6098 lt!1913108) lambda!221376)))

(declare-fun lt!1913095 () Unit!135226)

(declare-fun Unit!135290 () Unit!135226)

(assert (=> b!4749634 (= lt!1913095 Unit!135290)))

(declare-fun lt!1913104 () Unit!135226)

(declare-fun Unit!135291 () Unit!135226)

(assert (=> b!4749634 (= lt!1913104 Unit!135291)))

(declare-fun lt!1913102 () Unit!135226)

(assert (=> b!4749634 (= lt!1913102 (addForallContainsKeyThenBeforeAdding!861 (+!2364 acc!1214 (h!59461 lt!1912743)) lt!1913109 (_1!30704 (h!59461 (t!360512 lt!1912743))) (_2!30704 (h!59461 (t!360512 lt!1912743)))))))

(declare-fun call!332548 () Bool)

(assert (=> b!4749634 call!332548))

(declare-fun lt!1913106 () Unit!135226)

(assert (=> b!4749634 (= lt!1913106 lt!1913102)))

(assert (=> b!4749634 call!332549))

(declare-fun lt!1913098 () Unit!135226)

(declare-fun Unit!135292 () Unit!135226)

(assert (=> b!4749634 (= lt!1913098 Unit!135292)))

(declare-fun res!2013798 () Bool)

(assert (=> b!4749634 (= res!2013798 (forall!11747 (t!360512 lt!1912743) lambda!221376))))

(declare-fun e!2962713 () Bool)

(assert (=> b!4749634 (=> (not res!2013798) (not e!2962713))))

(assert (=> b!4749634 e!2962713))

(declare-fun lt!1913107 () Unit!135226)

(declare-fun Unit!135293 () Unit!135226)

(assert (=> b!4749634 (= lt!1913107 Unit!135293)))

(declare-fun b!4749635 () Bool)

(declare-fun res!2013797 () Bool)

(declare-fun e!2962715 () Bool)

(assert (=> b!4749635 (=> (not res!2013797) (not e!2962715))))

(assert (=> b!4749635 (= res!2013797 (forall!11747 (toList!6098 (+!2364 acc!1214 (h!59461 lt!1912743))) lambda!221377))))

(declare-fun b!4749636 () Bool)

(assert (=> b!4749636 (= e!2962715 (invariantList!1579 (toList!6098 lt!1913101)))))

(assert (=> b!4749637 (= e!2962714 (+!2364 acc!1214 (h!59461 lt!1912743)))))

(declare-fun lt!1913114 () Unit!135226)

(assert (=> b!4749637 (= lt!1913114 call!332550)))

(assert (=> b!4749637 call!332548))

(declare-fun lt!1913094 () Unit!135226)

(assert (=> b!4749637 (= lt!1913094 lt!1913114)))

(assert (=> b!4749637 call!332549))

(declare-fun lt!1913097 () Unit!135226)

(declare-fun Unit!135295 () Unit!135226)

(assert (=> b!4749637 (= lt!1913097 Unit!135295)))

(declare-fun b!4749638 () Bool)

(assert (=> b!4749638 (= e!2962713 (forall!11747 (toList!6098 (+!2364 acc!1214 (h!59461 lt!1912743))) lambda!221376))))

(declare-fun bm!332545 () Bool)

(assert (=> bm!332545 (= call!332548 (forall!11747 (toList!6098 (+!2364 acc!1214 (h!59461 lt!1912743))) (ite c!811006 lambda!221374 lambda!221376)))))

(assert (=> d!1517897 e!2962715))

(declare-fun res!2013799 () Bool)

(assert (=> d!1517897 (=> (not res!2013799) (not e!2962715))))

(assert (=> d!1517897 (= res!2013799 (forall!11747 (t!360512 lt!1912743) lambda!221377))))

(assert (=> d!1517897 (= lt!1913101 e!2962714)))

(assert (=> d!1517897 (= c!811006 ((_ is Nil!53064) (t!360512 lt!1912743)))))

(assert (=> d!1517897 (noDuplicateKeys!2130 (t!360512 lt!1912743))))

(assert (=> d!1517897 (= (addToMapMapFromBucket!1554 (t!360512 lt!1912743) (+!2364 acc!1214 (h!59461 lt!1912743))) lt!1913101)))

(declare-fun bm!332543 () Bool)

(assert (=> bm!332543 (= call!332550 (lemmaContainsAllItsOwnKeys!862 (+!2364 acc!1214 (h!59461 lt!1912743))))))

(assert (= (and d!1517897 c!811006) b!4749637))

(assert (= (and d!1517897 (not c!811006)) b!4749634))

(assert (= (and b!4749634 res!2013798) b!4749638))

(assert (= (or b!4749637 b!4749634) bm!332543))

(assert (= (or b!4749637 b!4749634) bm!332544))

(assert (= (or b!4749637 b!4749634) bm!332545))

(assert (= (and d!1517897 res!2013799) b!4749635))

(assert (= (and b!4749635 res!2013797) b!4749636))

(assert (=> bm!332543 m!5709519))

(declare-fun m!5709905 () Bool)

(assert (=> bm!332543 m!5709905))

(declare-fun m!5709907 () Bool)

(assert (=> b!4749634 m!5709907))

(declare-fun m!5709909 () Bool)

(assert (=> b!4749634 m!5709909))

(assert (=> b!4749634 m!5709519))

(declare-fun m!5709911 () Bool)

(assert (=> b!4749634 m!5709911))

(declare-fun m!5709913 () Bool)

(assert (=> b!4749634 m!5709913))

(declare-fun m!5709915 () Bool)

(assert (=> b!4749634 m!5709915))

(declare-fun m!5709917 () Bool)

(assert (=> b!4749634 m!5709917))

(assert (=> b!4749634 m!5709907))

(declare-fun m!5709919 () Bool)

(assert (=> b!4749634 m!5709919))

(declare-fun m!5709921 () Bool)

(assert (=> b!4749634 m!5709921))

(assert (=> b!4749634 m!5709915))

(assert (=> b!4749634 m!5709519))

(declare-fun m!5709923 () Bool)

(assert (=> b!4749634 m!5709923))

(assert (=> b!4749634 m!5709911))

(declare-fun m!5709925 () Bool)

(assert (=> b!4749634 m!5709925))

(declare-fun m!5709927 () Bool)

(assert (=> d!1517897 m!5709927))

(assert (=> d!1517897 m!5709417))

(declare-fun m!5709929 () Bool)

(assert (=> b!4749635 m!5709929))

(declare-fun m!5709931 () Bool)

(assert (=> bm!332544 m!5709931))

(declare-fun m!5709933 () Bool)

(assert (=> b!4749638 m!5709933))

(declare-fun m!5709935 () Bool)

(assert (=> b!4749636 m!5709935))

(assert (=> bm!332545 m!5709931))

(assert (=> b!4749338 d!1517897))

(declare-fun d!1517913 () Bool)

(declare-fun res!2013809 () Bool)

(declare-fun e!2962729 () Bool)

(assert (=> d!1517913 (=> res!2013809 e!2962729)))

(assert (=> d!1517913 (= res!2013809 ((_ is Nil!53064) (t!360512 l!14304)))))

(assert (=> d!1517913 (= (forall!11747 (t!360512 l!14304) lambda!221361) e!2962729)))

(declare-fun b!4749656 () Bool)

(declare-fun e!2962730 () Bool)

(assert (=> b!4749656 (= e!2962729 e!2962730)))

(declare-fun res!2013810 () Bool)

(assert (=> b!4749656 (=> (not res!2013810) (not e!2962730))))

(assert (=> b!4749656 (= res!2013810 (dynLambda!21896 lambda!221361 (h!59461 (t!360512 l!14304))))))

(declare-fun b!4749657 () Bool)

(assert (=> b!4749657 (= e!2962730 (forall!11747 (t!360512 (t!360512 l!14304)) lambda!221361))))

(assert (= (and d!1517913 (not res!2013809)) b!4749656))

(assert (= (and b!4749656 res!2013810) b!4749657))

(declare-fun b_lambda!183017 () Bool)

(assert (=> (not b_lambda!183017) (not b!4749656)))

(declare-fun m!5709943 () Bool)

(assert (=> b!4749656 m!5709943))

(declare-fun m!5709945 () Bool)

(assert (=> b!4749657 m!5709945))

(assert (=> b!4749351 d!1517913))

(declare-fun b!4749660 () Bool)

(declare-fun e!2962735 () List!53189)

(assert (=> b!4749660 (= e!2962735 (getKeysList!999 (toList!6098 lt!1912930)))))

(declare-fun b!4749661 () Bool)

(assert (=> b!4749661 false))

(declare-fun lt!1913124 () Unit!135226)

(declare-fun lt!1913122 () Unit!135226)

(assert (=> b!4749661 (= lt!1913124 lt!1913122)))

(assert (=> b!4749661 (containsKey!3539 (toList!6098 lt!1912930) (_1!30704 (h!59461 l!14304)))))

(assert (=> b!4749661 (= lt!1913122 (lemmaInGetKeysListThenContainsKey!998 (toList!6098 lt!1912930) (_1!30704 (h!59461 l!14304))))))

(declare-fun e!2962736 () Unit!135226)

(declare-fun Unit!135297 () Unit!135226)

(assert (=> b!4749661 (= e!2962736 Unit!135297)))

(declare-fun b!4749662 () Bool)

(declare-fun e!2962737 () Unit!135226)

(declare-fun lt!1913129 () Unit!135226)

(assert (=> b!4749662 (= e!2962737 lt!1913129)))

(declare-fun lt!1913125 () Unit!135226)

(assert (=> b!4749662 (= lt!1913125 (lemmaContainsKeyImpliesGetValueByKeyDefined!1939 (toList!6098 lt!1912930) (_1!30704 (h!59461 l!14304))))))

(assert (=> b!4749662 (isDefined!9752 (getValueByKey!2066 (toList!6098 lt!1912930) (_1!30704 (h!59461 l!14304))))))

(declare-fun lt!1913127 () Unit!135226)

(assert (=> b!4749662 (= lt!1913127 lt!1913125)))

(assert (=> b!4749662 (= lt!1913129 (lemmaInListThenGetKeysListContains!994 (toList!6098 lt!1912930) (_1!30704 (h!59461 l!14304))))))

(declare-fun call!332551 () Bool)

(assert (=> b!4749662 call!332551))

(declare-fun b!4749663 () Bool)

(declare-fun e!2962732 () Bool)

(assert (=> b!4749663 (= e!2962732 (not (contains!16478 (keys!19140 lt!1912930) (_1!30704 (h!59461 l!14304)))))))

(declare-fun b!4749664 () Bool)

(declare-fun e!2962733 () Bool)

(declare-fun e!2962734 () Bool)

(assert (=> b!4749664 (= e!2962733 e!2962734)))

(declare-fun res!2013813 () Bool)

(assert (=> b!4749664 (=> (not res!2013813) (not e!2962734))))

(assert (=> b!4749664 (= res!2013813 (isDefined!9752 (getValueByKey!2066 (toList!6098 lt!1912930) (_1!30704 (h!59461 l!14304)))))))

(declare-fun bm!332546 () Bool)

(assert (=> bm!332546 (= call!332551 (contains!16478 e!2962735 (_1!30704 (h!59461 l!14304))))))

(declare-fun c!811012 () Bool)

(declare-fun c!811011 () Bool)

(assert (=> bm!332546 (= c!811012 c!811011)))

(declare-fun b!4749665 () Bool)

(assert (=> b!4749665 (= e!2962734 (contains!16478 (keys!19140 lt!1912930) (_1!30704 (h!59461 l!14304))))))

(declare-fun b!4749666 () Bool)

(assert (=> b!4749666 (= e!2962735 (keys!19140 lt!1912930))))

(declare-fun d!1517917 () Bool)

(assert (=> d!1517917 e!2962733))

(declare-fun res!2013815 () Bool)

(assert (=> d!1517917 (=> res!2013815 e!2962733)))

(assert (=> d!1517917 (= res!2013815 e!2962732)))

(declare-fun res!2013814 () Bool)

(assert (=> d!1517917 (=> (not res!2013814) (not e!2962732))))

(declare-fun lt!1913123 () Bool)

(assert (=> d!1517917 (= res!2013814 (not lt!1913123))))

(declare-fun lt!1913126 () Bool)

(assert (=> d!1517917 (= lt!1913123 lt!1913126)))

(declare-fun lt!1913128 () Unit!135226)

(assert (=> d!1517917 (= lt!1913128 e!2962737)))

(assert (=> d!1517917 (= c!811011 lt!1913126)))

(assert (=> d!1517917 (= lt!1913126 (containsKey!3539 (toList!6098 lt!1912930) (_1!30704 (h!59461 l!14304))))))

(assert (=> d!1517917 (= (contains!16476 lt!1912930 (_1!30704 (h!59461 l!14304))) lt!1913123)))

(declare-fun b!4749667 () Bool)

(assert (=> b!4749667 (= e!2962737 e!2962736)))

(declare-fun c!811013 () Bool)

(assert (=> b!4749667 (= c!811013 call!332551)))

(declare-fun b!4749668 () Bool)

(declare-fun Unit!135298 () Unit!135226)

(assert (=> b!4749668 (= e!2962736 Unit!135298)))

(assert (= (and d!1517917 c!811011) b!4749662))

(assert (= (and d!1517917 (not c!811011)) b!4749667))

(assert (= (and b!4749667 c!811013) b!4749661))

(assert (= (and b!4749667 (not c!811013)) b!4749668))

(assert (= (or b!4749662 b!4749667) bm!332546))

(assert (= (and bm!332546 c!811012) b!4749660))

(assert (= (and bm!332546 (not c!811012)) b!4749666))

(assert (= (and d!1517917 res!2013814) b!4749663))

(assert (= (and d!1517917 (not res!2013815)) b!4749664))

(assert (= (and b!4749664 res!2013813) b!4749665))

(declare-fun m!5709959 () Bool)

(assert (=> b!4749666 m!5709959))

(declare-fun m!5709961 () Bool)

(assert (=> b!4749661 m!5709961))

(declare-fun m!5709963 () Bool)

(assert (=> b!4749661 m!5709963))

(assert (=> b!4749663 m!5709959))

(assert (=> b!4749663 m!5709959))

(declare-fun m!5709965 () Bool)

(assert (=> b!4749663 m!5709965))

(declare-fun m!5709967 () Bool)

(assert (=> b!4749664 m!5709967))

(assert (=> b!4749664 m!5709967))

(declare-fun m!5709969 () Bool)

(assert (=> b!4749664 m!5709969))

(declare-fun m!5709971 () Bool)

(assert (=> b!4749660 m!5709971))

(declare-fun m!5709973 () Bool)

(assert (=> bm!332546 m!5709973))

(declare-fun m!5709975 () Bool)

(assert (=> b!4749662 m!5709975))

(assert (=> b!4749662 m!5709967))

(assert (=> b!4749662 m!5709967))

(assert (=> b!4749662 m!5709969))

(declare-fun m!5709977 () Bool)

(assert (=> b!4749662 m!5709977))

(assert (=> b!4749665 m!5709959))

(assert (=> b!4749665 m!5709959))

(assert (=> b!4749665 m!5709965))

(assert (=> d!1517917 m!5709961))

(assert (=> b!4749351 d!1517917))

(declare-fun b!4749674 () Bool)

(declare-fun e!2962744 () List!53189)

(assert (=> b!4749674 (= e!2962744 (getKeysList!999 (toList!6098 lt!1912929)))))

(declare-fun b!4749675 () Bool)

(assert (=> b!4749675 false))

(declare-fun lt!1913153 () Unit!135226)

(declare-fun lt!1913151 () Unit!135226)

(assert (=> b!4749675 (= lt!1913153 lt!1913151)))

(assert (=> b!4749675 (containsKey!3539 (toList!6098 lt!1912929) (_1!30704 (h!59461 l!14304)))))

(assert (=> b!4749675 (= lt!1913151 (lemmaInGetKeysListThenContainsKey!998 (toList!6098 lt!1912929) (_1!30704 (h!59461 l!14304))))))

(declare-fun e!2962745 () Unit!135226)

(declare-fun Unit!135299 () Unit!135226)

(assert (=> b!4749675 (= e!2962745 Unit!135299)))

(declare-fun b!4749676 () Bool)

(declare-fun e!2962746 () Unit!135226)

(declare-fun lt!1913158 () Unit!135226)

(assert (=> b!4749676 (= e!2962746 lt!1913158)))

(declare-fun lt!1913154 () Unit!135226)

(assert (=> b!4749676 (= lt!1913154 (lemmaContainsKeyImpliesGetValueByKeyDefined!1939 (toList!6098 lt!1912929) (_1!30704 (h!59461 l!14304))))))

(assert (=> b!4749676 (isDefined!9752 (getValueByKey!2066 (toList!6098 lt!1912929) (_1!30704 (h!59461 l!14304))))))

(declare-fun lt!1913156 () Unit!135226)

(assert (=> b!4749676 (= lt!1913156 lt!1913154)))

(assert (=> b!4749676 (= lt!1913158 (lemmaInListThenGetKeysListContains!994 (toList!6098 lt!1912929) (_1!30704 (h!59461 l!14304))))))

(declare-fun call!332555 () Bool)

(assert (=> b!4749676 call!332555))

(declare-fun b!4749677 () Bool)

(declare-fun e!2962741 () Bool)

(assert (=> b!4749677 (= e!2962741 (not (contains!16478 (keys!19140 lt!1912929) (_1!30704 (h!59461 l!14304)))))))

(declare-fun b!4749678 () Bool)

(declare-fun e!2962742 () Bool)

(declare-fun e!2962743 () Bool)

(assert (=> b!4749678 (= e!2962742 e!2962743)))

(declare-fun res!2013819 () Bool)

(assert (=> b!4749678 (=> (not res!2013819) (not e!2962743))))

(assert (=> b!4749678 (= res!2013819 (isDefined!9752 (getValueByKey!2066 (toList!6098 lt!1912929) (_1!30704 (h!59461 l!14304)))))))

(declare-fun bm!332550 () Bool)

(assert (=> bm!332550 (= call!332555 (contains!16478 e!2962744 (_1!30704 (h!59461 l!14304))))))

(declare-fun c!811016 () Bool)

(declare-fun c!811015 () Bool)

(assert (=> bm!332550 (= c!811016 c!811015)))

(declare-fun b!4749679 () Bool)

(assert (=> b!4749679 (= e!2962743 (contains!16478 (keys!19140 lt!1912929) (_1!30704 (h!59461 l!14304))))))

(declare-fun b!4749680 () Bool)

(assert (=> b!4749680 (= e!2962744 (keys!19140 lt!1912929))))

(declare-fun d!1517921 () Bool)

(assert (=> d!1517921 e!2962742))

(declare-fun res!2013821 () Bool)

(assert (=> d!1517921 (=> res!2013821 e!2962742)))

(assert (=> d!1517921 (= res!2013821 e!2962741)))

(declare-fun res!2013820 () Bool)

(assert (=> d!1517921 (=> (not res!2013820) (not e!2962741))))

(declare-fun lt!1913152 () Bool)

(assert (=> d!1517921 (= res!2013820 (not lt!1913152))))

(declare-fun lt!1913155 () Bool)

(assert (=> d!1517921 (= lt!1913152 lt!1913155)))

(declare-fun lt!1913157 () Unit!135226)

(assert (=> d!1517921 (= lt!1913157 e!2962746)))

(assert (=> d!1517921 (= c!811015 lt!1913155)))

(assert (=> d!1517921 (= lt!1913155 (containsKey!3539 (toList!6098 lt!1912929) (_1!30704 (h!59461 l!14304))))))

(assert (=> d!1517921 (= (contains!16476 lt!1912929 (_1!30704 (h!59461 l!14304))) lt!1913152)))

(declare-fun b!4749681 () Bool)

(assert (=> b!4749681 (= e!2962746 e!2962745)))

(declare-fun c!811017 () Bool)

(assert (=> b!4749681 (= c!811017 call!332555)))

(declare-fun b!4749682 () Bool)

(declare-fun Unit!135302 () Unit!135226)

(assert (=> b!4749682 (= e!2962745 Unit!135302)))

(assert (= (and d!1517921 c!811015) b!4749676))

(assert (= (and d!1517921 (not c!811015)) b!4749681))

(assert (= (and b!4749681 c!811017) b!4749675))

(assert (= (and b!4749681 (not c!811017)) b!4749682))

(assert (= (or b!4749676 b!4749681) bm!332550))

(assert (= (and bm!332550 c!811016) b!4749674))

(assert (= (and bm!332550 (not c!811016)) b!4749680))

(assert (= (and d!1517921 res!2013820) b!4749677))

(assert (= (and d!1517921 (not res!2013821)) b!4749678))

(assert (= (and b!4749678 res!2013819) b!4749679))

(declare-fun m!5709979 () Bool)

(assert (=> b!4749680 m!5709979))

(declare-fun m!5709981 () Bool)

(assert (=> b!4749675 m!5709981))

(declare-fun m!5709983 () Bool)

(assert (=> b!4749675 m!5709983))

(assert (=> b!4749677 m!5709979))

(assert (=> b!4749677 m!5709979))

(declare-fun m!5709985 () Bool)

(assert (=> b!4749677 m!5709985))

(declare-fun m!5709987 () Bool)

(assert (=> b!4749678 m!5709987))

(assert (=> b!4749678 m!5709987))

(declare-fun m!5709989 () Bool)

(assert (=> b!4749678 m!5709989))

(declare-fun m!5709991 () Bool)

(assert (=> b!4749674 m!5709991))

(declare-fun m!5709993 () Bool)

(assert (=> bm!332550 m!5709993))

(declare-fun m!5709995 () Bool)

(assert (=> b!4749676 m!5709995))

(assert (=> b!4749676 m!5709987))

(assert (=> b!4749676 m!5709987))

(assert (=> b!4749676 m!5709989))

(declare-fun m!5709997 () Bool)

(assert (=> b!4749676 m!5709997))

(assert (=> b!4749679 m!5709979))

(assert (=> b!4749679 m!5709979))

(assert (=> b!4749679 m!5709985))

(assert (=> d!1517921 m!5709981))

(assert (=> b!4749351 d!1517921))

(declare-fun d!1517923 () Bool)

(declare-fun res!2013822 () Bool)

(declare-fun e!2962747 () Bool)

(assert (=> d!1517923 (=> res!2013822 e!2962747)))

(assert (=> d!1517923 (= res!2013822 ((_ is Nil!53064) (toList!6098 lt!1912929)))))

(assert (=> d!1517923 (= (forall!11747 (toList!6098 lt!1912929) lambda!221361) e!2962747)))

(declare-fun b!4749683 () Bool)

(declare-fun e!2962748 () Bool)

(assert (=> b!4749683 (= e!2962747 e!2962748)))

(declare-fun res!2013823 () Bool)

(assert (=> b!4749683 (=> (not res!2013823) (not e!2962748))))

(assert (=> b!4749683 (= res!2013823 (dynLambda!21896 lambda!221361 (h!59461 (toList!6098 lt!1912929))))))

(declare-fun b!4749684 () Bool)

(assert (=> b!4749684 (= e!2962748 (forall!11747 (t!360512 (toList!6098 lt!1912929)) lambda!221361))))

(assert (= (and d!1517923 (not res!2013822)) b!4749683))

(assert (= (and b!4749683 res!2013823) b!4749684))

(declare-fun b_lambda!183019 () Bool)

(assert (=> (not b_lambda!183019) (not b!4749683)))

(declare-fun m!5709999 () Bool)

(assert (=> b!4749683 m!5709999))

(declare-fun m!5710001 () Bool)

(assert (=> b!4749684 m!5710001))

(assert (=> b!4749351 d!1517923))

(declare-fun d!1517925 () Bool)

(assert (=> d!1517925 (dynLambda!21896 lambda!221361 (h!59461 l!14304))))

(declare-fun lt!1913159 () Unit!135226)

(assert (=> d!1517925 (= lt!1913159 (choose!33801 (toList!6098 lt!1912929) lambda!221361 (h!59461 l!14304)))))

(declare-fun e!2962749 () Bool)

(assert (=> d!1517925 e!2962749))

(declare-fun res!2013824 () Bool)

(assert (=> d!1517925 (=> (not res!2013824) (not e!2962749))))

(assert (=> d!1517925 (= res!2013824 (forall!11747 (toList!6098 lt!1912929) lambda!221361))))

(assert (=> d!1517925 (= (forallContained!3773 (toList!6098 lt!1912929) lambda!221361 (h!59461 l!14304)) lt!1913159)))

(declare-fun b!4749685 () Bool)

(assert (=> b!4749685 (= e!2962749 (contains!16477 (toList!6098 lt!1912929) (h!59461 l!14304)))))

(assert (= (and d!1517925 res!2013824) b!4749685))

(declare-fun b_lambda!183021 () Bool)

(assert (=> (not b_lambda!183021) (not d!1517925)))

(declare-fun m!5710003 () Bool)

(assert (=> d!1517925 m!5710003))

(declare-fun m!5710005 () Bool)

(assert (=> d!1517925 m!5710005))

(assert (=> d!1517925 m!5709557))

(declare-fun m!5710007 () Bool)

(assert (=> b!4749685 m!5710007))

(assert (=> b!4749351 d!1517925))

(declare-fun d!1517927 () Bool)

(declare-fun res!2013825 () Bool)

(declare-fun e!2962750 () Bool)

(assert (=> d!1517927 (=> res!2013825 e!2962750)))

(assert (=> d!1517927 (= res!2013825 ((_ is Nil!53064) l!14304))))

(assert (=> d!1517927 (= (forall!11747 l!14304 lambda!221361) e!2962750)))

(declare-fun b!4749686 () Bool)

(declare-fun e!2962751 () Bool)

(assert (=> b!4749686 (= e!2962750 e!2962751)))

(declare-fun res!2013826 () Bool)

(assert (=> b!4749686 (=> (not res!2013826) (not e!2962751))))

(assert (=> b!4749686 (= res!2013826 (dynLambda!21896 lambda!221361 (h!59461 l!14304)))))

(declare-fun b!4749687 () Bool)

(assert (=> b!4749687 (= e!2962751 (forall!11747 (t!360512 l!14304) lambda!221361))))

(assert (= (and d!1517927 (not res!2013825)) b!4749686))

(assert (= (and b!4749686 res!2013826) b!4749687))

(declare-fun b_lambda!183023 () Bool)

(assert (=> (not b_lambda!183023) (not b!4749686)))

(assert (=> b!4749686 m!5710003))

(assert (=> b!4749687 m!5709571))

(assert (=> b!4749351 d!1517927))

(declare-fun bs!1139952 () Bool)

(declare-fun d!1517929 () Bool)

(assert (= bs!1139952 (and d!1517929 b!4749354)))

(declare-fun lambda!221381 () Int)

(assert (=> bs!1139952 (= (= lt!1912930 acc!1214) (= lambda!221381 lambda!221359))))

(declare-fun bs!1139953 () Bool)

(assert (= bs!1139953 (and d!1517929 d!1517817)))

(assert (=> bs!1139953 (= (= lt!1912930 lt!1912922) (= lambda!221381 lambda!221362))))

(declare-fun bs!1139954 () Bool)

(assert (= bs!1139954 (and d!1517929 b!4749351)))

(assert (=> bs!1139954 (= lambda!221381 lambda!221361)))

(declare-fun bs!1139955 () Bool)

(assert (= bs!1139955 (and d!1517929 d!1517895)))

(assert (=> bs!1139955 (= (= lt!1912930 lt!1912897) (= lambda!221381 lambda!221373))))

(declare-fun bs!1139956 () Bool)

(assert (= bs!1139956 (and d!1517929 b!4749637)))

(assert (=> bs!1139956 (= (= lt!1912930 (+!2364 acc!1214 (h!59461 lt!1912743))) (= lambda!221381 lambda!221374))))

(declare-fun bs!1139957 () Bool)

(assert (= bs!1139957 (and d!1517929 d!1517897)))

(assert (=> bs!1139957 (= (= lt!1912930 lt!1913101) (= lambda!221381 lambda!221377))))

(declare-fun bs!1139958 () Bool)

(assert (= bs!1139958 (and d!1517929 b!4749634)))

(assert (=> bs!1139958 (= (= lt!1912930 lt!1913109) (= lambda!221381 lambda!221376))))

(assert (=> bs!1139958 (= (= lt!1912930 (+!2364 acc!1214 (h!59461 lt!1912743))) (= lambda!221381 lambda!221375))))

(declare-fun bs!1139959 () Bool)

(assert (= bs!1139959 (and d!1517929 b!4749338)))

(assert (=> bs!1139959 (= (= lt!1912930 lt!1912897) (= lambda!221381 lambda!221357))))

(assert (=> bs!1139959 (= (= lt!1912930 acc!1214) (= lambda!221381 lambda!221356))))

(declare-fun bs!1139960 () Bool)

(assert (= bs!1139960 (and d!1517929 b!4749341)))

(assert (=> bs!1139960 (= (= lt!1912930 acc!1214) (= lambda!221381 lambda!221355))))

(declare-fun bs!1139961 () Bool)

(assert (= bs!1139961 (and d!1517929 d!1517805)))

(assert (=> bs!1139961 (= (= lt!1912930 lt!1912889) (= lambda!221381 lambda!221358))))

(declare-fun bs!1139962 () Bool)

(assert (= bs!1139962 (and d!1517929 d!1517861)))

(assert (=> bs!1139962 (= (= lt!1912930 acc!1214) (= lambda!221381 lambda!221368))))

(assert (=> bs!1139954 (= (= lt!1912930 acc!1214) (= lambda!221381 lambda!221360))))

(assert (=> d!1517929 true))

(assert (=> d!1517929 (forall!11747 (toList!6098 acc!1214) lambda!221381)))

(declare-fun lt!1913160 () Unit!135226)

(assert (=> d!1517929 (= lt!1913160 (choose!33803 acc!1214 lt!1912930 (_1!30704 (h!59461 l!14304)) (_2!30704 (h!59461 l!14304))))))

(assert (=> d!1517929 (forall!11747 (toList!6098 (+!2364 acc!1214 (tuple2!54821 (_1!30704 (h!59461 l!14304)) (_2!30704 (h!59461 l!14304))))) lambda!221381)))

(assert (=> d!1517929 (= (addForallContainsKeyThenBeforeAdding!861 acc!1214 lt!1912930 (_1!30704 (h!59461 l!14304)) (_2!30704 (h!59461 l!14304))) lt!1913160)))

(declare-fun bs!1139963 () Bool)

(assert (= bs!1139963 d!1517929))

(declare-fun m!5710009 () Bool)

(assert (=> bs!1139963 m!5710009))

(declare-fun m!5710011 () Bool)

(assert (=> bs!1139963 m!5710011))

(declare-fun m!5710013 () Bool)

(assert (=> bs!1139963 m!5710013))

(declare-fun m!5710015 () Bool)

(assert (=> bs!1139963 m!5710015))

(assert (=> b!4749351 d!1517929))

(declare-fun bs!1139969 () Bool)

(declare-fun b!4749691 () Bool)

(assert (= bs!1139969 (and b!4749691 b!4749354)))

(declare-fun lambda!221383 () Int)

(assert (=> bs!1139969 (= (= (+!2364 acc!1214 (h!59461 l!14304)) acc!1214) (= lambda!221383 lambda!221359))))

(declare-fun bs!1139971 () Bool)

(assert (= bs!1139971 (and b!4749691 d!1517817)))

(assert (=> bs!1139971 (= (= (+!2364 acc!1214 (h!59461 l!14304)) lt!1912922) (= lambda!221383 lambda!221362))))

(declare-fun bs!1139973 () Bool)

(assert (= bs!1139973 (and b!4749691 b!4749351)))

(assert (=> bs!1139973 (= (= (+!2364 acc!1214 (h!59461 l!14304)) lt!1912930) (= lambda!221383 lambda!221361))))

(declare-fun bs!1139974 () Bool)

(assert (= bs!1139974 (and b!4749691 d!1517895)))

(assert (=> bs!1139974 (= (= (+!2364 acc!1214 (h!59461 l!14304)) lt!1912897) (= lambda!221383 lambda!221373))))

(declare-fun bs!1139976 () Bool)

(assert (= bs!1139976 (and b!4749691 b!4749637)))

(assert (=> bs!1139976 (= (= (+!2364 acc!1214 (h!59461 l!14304)) (+!2364 acc!1214 (h!59461 lt!1912743))) (= lambda!221383 lambda!221374))))

(declare-fun bs!1139978 () Bool)

(assert (= bs!1139978 (and b!4749691 d!1517897)))

(assert (=> bs!1139978 (= (= (+!2364 acc!1214 (h!59461 l!14304)) lt!1913101) (= lambda!221383 lambda!221377))))

(declare-fun bs!1139979 () Bool)

(assert (= bs!1139979 (and b!4749691 d!1517929)))

(assert (=> bs!1139979 (= (= (+!2364 acc!1214 (h!59461 l!14304)) lt!1912930) (= lambda!221383 lambda!221381))))

(declare-fun bs!1139980 () Bool)

(assert (= bs!1139980 (and b!4749691 b!4749634)))

(assert (=> bs!1139980 (= (= (+!2364 acc!1214 (h!59461 l!14304)) lt!1913109) (= lambda!221383 lambda!221376))))

(assert (=> bs!1139980 (= (= (+!2364 acc!1214 (h!59461 l!14304)) (+!2364 acc!1214 (h!59461 lt!1912743))) (= lambda!221383 lambda!221375))))

(declare-fun bs!1139981 () Bool)

(assert (= bs!1139981 (and b!4749691 b!4749338)))

(assert (=> bs!1139981 (= (= (+!2364 acc!1214 (h!59461 l!14304)) lt!1912897) (= lambda!221383 lambda!221357))))

(assert (=> bs!1139981 (= (= (+!2364 acc!1214 (h!59461 l!14304)) acc!1214) (= lambda!221383 lambda!221356))))

(declare-fun bs!1139982 () Bool)

(assert (= bs!1139982 (and b!4749691 b!4749341)))

(assert (=> bs!1139982 (= (= (+!2364 acc!1214 (h!59461 l!14304)) acc!1214) (= lambda!221383 lambda!221355))))

(declare-fun bs!1139983 () Bool)

(assert (= bs!1139983 (and b!4749691 d!1517805)))

(assert (=> bs!1139983 (= (= (+!2364 acc!1214 (h!59461 l!14304)) lt!1912889) (= lambda!221383 lambda!221358))))

(declare-fun bs!1139984 () Bool)

(assert (= bs!1139984 (and b!4749691 d!1517861)))

(assert (=> bs!1139984 (= (= (+!2364 acc!1214 (h!59461 l!14304)) acc!1214) (= lambda!221383 lambda!221368))))

(assert (=> bs!1139973 (= (= (+!2364 acc!1214 (h!59461 l!14304)) acc!1214) (= lambda!221383 lambda!221360))))

(assert (=> b!4749691 true))

(declare-fun bs!1139985 () Bool)

(declare-fun b!4749688 () Bool)

(assert (= bs!1139985 (and b!4749688 b!4749691)))

(declare-fun lambda!221384 () Int)

(assert (=> bs!1139985 (= lambda!221384 lambda!221383)))

(declare-fun bs!1139986 () Bool)

(assert (= bs!1139986 (and b!4749688 b!4749354)))

(assert (=> bs!1139986 (= (= (+!2364 acc!1214 (h!59461 l!14304)) acc!1214) (= lambda!221384 lambda!221359))))

(declare-fun bs!1139987 () Bool)

(assert (= bs!1139987 (and b!4749688 d!1517817)))

(assert (=> bs!1139987 (= (= (+!2364 acc!1214 (h!59461 l!14304)) lt!1912922) (= lambda!221384 lambda!221362))))

(declare-fun bs!1139988 () Bool)

(assert (= bs!1139988 (and b!4749688 b!4749351)))

(assert (=> bs!1139988 (= (= (+!2364 acc!1214 (h!59461 l!14304)) lt!1912930) (= lambda!221384 lambda!221361))))

(declare-fun bs!1139989 () Bool)

(assert (= bs!1139989 (and b!4749688 d!1517895)))

(assert (=> bs!1139989 (= (= (+!2364 acc!1214 (h!59461 l!14304)) lt!1912897) (= lambda!221384 lambda!221373))))

(declare-fun bs!1139990 () Bool)

(assert (= bs!1139990 (and b!4749688 b!4749637)))

(assert (=> bs!1139990 (= (= (+!2364 acc!1214 (h!59461 l!14304)) (+!2364 acc!1214 (h!59461 lt!1912743))) (= lambda!221384 lambda!221374))))

(declare-fun bs!1139991 () Bool)

(assert (= bs!1139991 (and b!4749688 d!1517897)))

(assert (=> bs!1139991 (= (= (+!2364 acc!1214 (h!59461 l!14304)) lt!1913101) (= lambda!221384 lambda!221377))))

(declare-fun bs!1139992 () Bool)

(assert (= bs!1139992 (and b!4749688 d!1517929)))

(assert (=> bs!1139992 (= (= (+!2364 acc!1214 (h!59461 l!14304)) lt!1912930) (= lambda!221384 lambda!221381))))

(declare-fun bs!1139993 () Bool)

(assert (= bs!1139993 (and b!4749688 b!4749634)))

(assert (=> bs!1139993 (= (= (+!2364 acc!1214 (h!59461 l!14304)) lt!1913109) (= lambda!221384 lambda!221376))))

(assert (=> bs!1139993 (= (= (+!2364 acc!1214 (h!59461 l!14304)) (+!2364 acc!1214 (h!59461 lt!1912743))) (= lambda!221384 lambda!221375))))

(declare-fun bs!1139994 () Bool)

(assert (= bs!1139994 (and b!4749688 b!4749338)))

(assert (=> bs!1139994 (= (= (+!2364 acc!1214 (h!59461 l!14304)) lt!1912897) (= lambda!221384 lambda!221357))))

(assert (=> bs!1139994 (= (= (+!2364 acc!1214 (h!59461 l!14304)) acc!1214) (= lambda!221384 lambda!221356))))

(declare-fun bs!1139995 () Bool)

(assert (= bs!1139995 (and b!4749688 b!4749341)))

(assert (=> bs!1139995 (= (= (+!2364 acc!1214 (h!59461 l!14304)) acc!1214) (= lambda!221384 lambda!221355))))

(declare-fun bs!1139996 () Bool)

(assert (= bs!1139996 (and b!4749688 d!1517805)))

(assert (=> bs!1139996 (= (= (+!2364 acc!1214 (h!59461 l!14304)) lt!1912889) (= lambda!221384 lambda!221358))))

(declare-fun bs!1139997 () Bool)

(assert (= bs!1139997 (and b!4749688 d!1517861)))

(assert (=> bs!1139997 (= (= (+!2364 acc!1214 (h!59461 l!14304)) acc!1214) (= lambda!221384 lambda!221368))))

(assert (=> bs!1139988 (= (= (+!2364 acc!1214 (h!59461 l!14304)) acc!1214) (= lambda!221384 lambda!221360))))

(assert (=> b!4749688 true))

(declare-fun lambda!221385 () Int)

(declare-fun lt!1913176 () ListMap!5505)

(assert (=> bs!1139985 (= (= lt!1913176 (+!2364 acc!1214 (h!59461 l!14304))) (= lambda!221385 lambda!221383))))

(assert (=> bs!1139986 (= (= lt!1913176 acc!1214) (= lambda!221385 lambda!221359))))

(assert (=> b!4749688 (= (= lt!1913176 (+!2364 acc!1214 (h!59461 l!14304))) (= lambda!221385 lambda!221384))))

(assert (=> bs!1139987 (= (= lt!1913176 lt!1912922) (= lambda!221385 lambda!221362))))

(assert (=> bs!1139988 (= (= lt!1913176 lt!1912930) (= lambda!221385 lambda!221361))))

(assert (=> bs!1139989 (= (= lt!1913176 lt!1912897) (= lambda!221385 lambda!221373))))

(assert (=> bs!1139990 (= (= lt!1913176 (+!2364 acc!1214 (h!59461 lt!1912743))) (= lambda!221385 lambda!221374))))

(assert (=> bs!1139991 (= (= lt!1913176 lt!1913101) (= lambda!221385 lambda!221377))))

(assert (=> bs!1139992 (= (= lt!1913176 lt!1912930) (= lambda!221385 lambda!221381))))

(assert (=> bs!1139993 (= (= lt!1913176 lt!1913109) (= lambda!221385 lambda!221376))))

(assert (=> bs!1139993 (= (= lt!1913176 (+!2364 acc!1214 (h!59461 lt!1912743))) (= lambda!221385 lambda!221375))))

(assert (=> bs!1139994 (= (= lt!1913176 lt!1912897) (= lambda!221385 lambda!221357))))

(assert (=> bs!1139994 (= (= lt!1913176 acc!1214) (= lambda!221385 lambda!221356))))

(assert (=> bs!1139995 (= (= lt!1913176 acc!1214) (= lambda!221385 lambda!221355))))

(assert (=> bs!1139996 (= (= lt!1913176 lt!1912889) (= lambda!221385 lambda!221358))))

(assert (=> bs!1139997 (= (= lt!1913176 acc!1214) (= lambda!221385 lambda!221368))))

(assert (=> bs!1139988 (= (= lt!1913176 acc!1214) (= lambda!221385 lambda!221360))))

(assert (=> b!4749688 true))

(declare-fun bs!1139998 () Bool)

(declare-fun d!1517931 () Bool)

(assert (= bs!1139998 (and d!1517931 b!4749691)))

(declare-fun lt!1913168 () ListMap!5505)

(declare-fun lambda!221386 () Int)

(assert (=> bs!1139998 (= (= lt!1913168 (+!2364 acc!1214 (h!59461 l!14304))) (= lambda!221386 lambda!221383))))

(declare-fun bs!1139999 () Bool)

(assert (= bs!1139999 (and d!1517931 b!4749354)))

(assert (=> bs!1139999 (= (= lt!1913168 acc!1214) (= lambda!221386 lambda!221359))))

(declare-fun bs!1140000 () Bool)

(assert (= bs!1140000 (and d!1517931 b!4749688)))

(assert (=> bs!1140000 (= (= lt!1913168 (+!2364 acc!1214 (h!59461 l!14304))) (= lambda!221386 lambda!221384))))

(declare-fun bs!1140001 () Bool)

(assert (= bs!1140001 (and d!1517931 d!1517817)))

(assert (=> bs!1140001 (= (= lt!1913168 lt!1912922) (= lambda!221386 lambda!221362))))

(assert (=> bs!1140000 (= (= lt!1913168 lt!1913176) (= lambda!221386 lambda!221385))))

(declare-fun bs!1140002 () Bool)

(assert (= bs!1140002 (and d!1517931 b!4749351)))

(assert (=> bs!1140002 (= (= lt!1913168 lt!1912930) (= lambda!221386 lambda!221361))))

(declare-fun bs!1140003 () Bool)

(assert (= bs!1140003 (and d!1517931 d!1517895)))

(assert (=> bs!1140003 (= (= lt!1913168 lt!1912897) (= lambda!221386 lambda!221373))))

(declare-fun bs!1140004 () Bool)

(assert (= bs!1140004 (and d!1517931 b!4749637)))

(assert (=> bs!1140004 (= (= lt!1913168 (+!2364 acc!1214 (h!59461 lt!1912743))) (= lambda!221386 lambda!221374))))

(declare-fun bs!1140005 () Bool)

(assert (= bs!1140005 (and d!1517931 d!1517897)))

(assert (=> bs!1140005 (= (= lt!1913168 lt!1913101) (= lambda!221386 lambda!221377))))

(declare-fun bs!1140006 () Bool)

(assert (= bs!1140006 (and d!1517931 d!1517929)))

(assert (=> bs!1140006 (= (= lt!1913168 lt!1912930) (= lambda!221386 lambda!221381))))

(declare-fun bs!1140007 () Bool)

(assert (= bs!1140007 (and d!1517931 b!4749634)))

(assert (=> bs!1140007 (= (= lt!1913168 lt!1913109) (= lambda!221386 lambda!221376))))

(assert (=> bs!1140007 (= (= lt!1913168 (+!2364 acc!1214 (h!59461 lt!1912743))) (= lambda!221386 lambda!221375))))

(declare-fun bs!1140008 () Bool)

(assert (= bs!1140008 (and d!1517931 b!4749338)))

(assert (=> bs!1140008 (= (= lt!1913168 lt!1912897) (= lambda!221386 lambda!221357))))

(assert (=> bs!1140008 (= (= lt!1913168 acc!1214) (= lambda!221386 lambda!221356))))

(declare-fun bs!1140009 () Bool)

(assert (= bs!1140009 (and d!1517931 b!4749341)))

(assert (=> bs!1140009 (= (= lt!1913168 acc!1214) (= lambda!221386 lambda!221355))))

(declare-fun bs!1140010 () Bool)

(assert (= bs!1140010 (and d!1517931 d!1517805)))

(assert (=> bs!1140010 (= (= lt!1913168 lt!1912889) (= lambda!221386 lambda!221358))))

(declare-fun bs!1140011 () Bool)

(assert (= bs!1140011 (and d!1517931 d!1517861)))

(assert (=> bs!1140011 (= (= lt!1913168 acc!1214) (= lambda!221386 lambda!221368))))

(assert (=> bs!1140002 (= (= lt!1913168 acc!1214) (= lambda!221386 lambda!221360))))

(assert (=> d!1517931 true))

(declare-fun bm!332552 () Bool)

(declare-fun call!332557 () Bool)

(declare-fun c!811018 () Bool)

(assert (=> bm!332552 (= call!332557 (forall!11747 (toList!6098 (+!2364 acc!1214 (h!59461 l!14304))) (ite c!811018 lambda!221383 lambda!221385)))))

(declare-fun e!2962753 () ListMap!5505)

(assert (=> b!4749688 (= e!2962753 lt!1913176)))

(declare-fun lt!1913175 () ListMap!5505)

(assert (=> b!4749688 (= lt!1913175 (+!2364 (+!2364 acc!1214 (h!59461 l!14304)) (h!59461 (t!360512 l!14304))))))

(assert (=> b!4749688 (= lt!1913176 (addToMapMapFromBucket!1554 (t!360512 (t!360512 l!14304)) (+!2364 (+!2364 acc!1214 (h!59461 l!14304)) (h!59461 (t!360512 l!14304)))))))

(declare-fun lt!1913166 () Unit!135226)

(declare-fun call!332558 () Unit!135226)

(assert (=> b!4749688 (= lt!1913166 call!332558)))

(assert (=> b!4749688 (forall!11747 (toList!6098 (+!2364 acc!1214 (h!59461 l!14304))) lambda!221384)))

(declare-fun lt!1913177 () Unit!135226)

(assert (=> b!4749688 (= lt!1913177 lt!1913166)))

(assert (=> b!4749688 (forall!11747 (toList!6098 lt!1913175) lambda!221385)))

(declare-fun lt!1913167 () Unit!135226)

(declare-fun Unit!135305 () Unit!135226)

(assert (=> b!4749688 (= lt!1913167 Unit!135305)))

(assert (=> b!4749688 (forall!11747 (t!360512 (t!360512 l!14304)) lambda!221385)))

(declare-fun lt!1913179 () Unit!135226)

(declare-fun Unit!135306 () Unit!135226)

(assert (=> b!4749688 (= lt!1913179 Unit!135306)))

(declare-fun lt!1913172 () Unit!135226)

(declare-fun Unit!135307 () Unit!135226)

(assert (=> b!4749688 (= lt!1913172 Unit!135307)))

(declare-fun lt!1913178 () Unit!135226)

(assert (=> b!4749688 (= lt!1913178 (forallContained!3773 (toList!6098 lt!1913175) lambda!221385 (h!59461 (t!360512 l!14304))))))

(assert (=> b!4749688 (contains!16476 lt!1913175 (_1!30704 (h!59461 (t!360512 l!14304))))))

(declare-fun lt!1913180 () Unit!135226)

(declare-fun Unit!135308 () Unit!135226)

(assert (=> b!4749688 (= lt!1913180 Unit!135308)))

(assert (=> b!4749688 (contains!16476 lt!1913176 (_1!30704 (h!59461 (t!360512 l!14304))))))

(declare-fun lt!1913170 () Unit!135226)

(declare-fun Unit!135309 () Unit!135226)

(assert (=> b!4749688 (= lt!1913170 Unit!135309)))

(assert (=> b!4749688 (forall!11747 (t!360512 l!14304) lambda!221385)))

(declare-fun lt!1913163 () Unit!135226)

(declare-fun Unit!135310 () Unit!135226)

(assert (=> b!4749688 (= lt!1913163 Unit!135310)))

(assert (=> b!4749688 (forall!11747 (toList!6098 lt!1913175) lambda!221385)))

(declare-fun lt!1913162 () Unit!135226)

(declare-fun Unit!135311 () Unit!135226)

(assert (=> b!4749688 (= lt!1913162 Unit!135311)))

(declare-fun lt!1913171 () Unit!135226)

(declare-fun Unit!135312 () Unit!135226)

(assert (=> b!4749688 (= lt!1913171 Unit!135312)))

(declare-fun lt!1913169 () Unit!135226)

(assert (=> b!4749688 (= lt!1913169 (addForallContainsKeyThenBeforeAdding!861 (+!2364 acc!1214 (h!59461 l!14304)) lt!1913176 (_1!30704 (h!59461 (t!360512 l!14304))) (_2!30704 (h!59461 (t!360512 l!14304)))))))

(declare-fun call!332556 () Bool)

(assert (=> b!4749688 call!332556))

(declare-fun lt!1913173 () Unit!135226)

(assert (=> b!4749688 (= lt!1913173 lt!1913169)))

(assert (=> b!4749688 call!332557))

(declare-fun lt!1913165 () Unit!135226)

(declare-fun Unit!135313 () Unit!135226)

(assert (=> b!4749688 (= lt!1913165 Unit!135313)))

(declare-fun res!2013828 () Bool)

(assert (=> b!4749688 (= res!2013828 (forall!11747 (t!360512 l!14304) lambda!221385))))

(declare-fun e!2962752 () Bool)

(assert (=> b!4749688 (=> (not res!2013828) (not e!2962752))))

(assert (=> b!4749688 e!2962752))

(declare-fun lt!1913174 () Unit!135226)

(declare-fun Unit!135314 () Unit!135226)

(assert (=> b!4749688 (= lt!1913174 Unit!135314)))

(declare-fun b!4749689 () Bool)

(declare-fun res!2013827 () Bool)

(declare-fun e!2962754 () Bool)

(assert (=> b!4749689 (=> (not res!2013827) (not e!2962754))))

(assert (=> b!4749689 (= res!2013827 (forall!11747 (toList!6098 (+!2364 acc!1214 (h!59461 l!14304))) lambda!221386))))

(declare-fun b!4749690 () Bool)

(assert (=> b!4749690 (= e!2962754 (invariantList!1579 (toList!6098 lt!1913168)))))

(assert (=> b!4749691 (= e!2962753 (+!2364 acc!1214 (h!59461 l!14304)))))

(declare-fun lt!1913181 () Unit!135226)

(assert (=> b!4749691 (= lt!1913181 call!332558)))

(assert (=> b!4749691 call!332556))

(declare-fun lt!1913161 () Unit!135226)

(assert (=> b!4749691 (= lt!1913161 lt!1913181)))

(assert (=> b!4749691 call!332557))

(declare-fun lt!1913164 () Unit!135226)

(declare-fun Unit!135315 () Unit!135226)

(assert (=> b!4749691 (= lt!1913164 Unit!135315)))

(declare-fun b!4749692 () Bool)

(assert (=> b!4749692 (= e!2962752 (forall!11747 (toList!6098 (+!2364 acc!1214 (h!59461 l!14304))) lambda!221385))))

(declare-fun bm!332553 () Bool)

(assert (=> bm!332553 (= call!332556 (forall!11747 (toList!6098 (+!2364 acc!1214 (h!59461 l!14304))) (ite c!811018 lambda!221383 lambda!221385)))))

(assert (=> d!1517931 e!2962754))

(declare-fun res!2013829 () Bool)

(assert (=> d!1517931 (=> (not res!2013829) (not e!2962754))))

(assert (=> d!1517931 (= res!2013829 (forall!11747 (t!360512 l!14304) lambda!221386))))

(assert (=> d!1517931 (= lt!1913168 e!2962753)))

(assert (=> d!1517931 (= c!811018 ((_ is Nil!53064) (t!360512 l!14304)))))

(assert (=> d!1517931 (noDuplicateKeys!2130 (t!360512 l!14304))))

(assert (=> d!1517931 (= (addToMapMapFromBucket!1554 (t!360512 l!14304) (+!2364 acc!1214 (h!59461 l!14304))) lt!1913168)))

(declare-fun bm!332551 () Bool)

(assert (=> bm!332551 (= call!332558 (lemmaContainsAllItsOwnKeys!862 (+!2364 acc!1214 (h!59461 l!14304))))))

(assert (= (and d!1517931 c!811018) b!4749691))

(assert (= (and d!1517931 (not c!811018)) b!4749688))

(assert (= (and b!4749688 res!2013828) b!4749692))

(assert (= (or b!4749691 b!4749688) bm!332551))

(assert (= (or b!4749691 b!4749688) bm!332552))

(assert (= (or b!4749691 b!4749688) bm!332553))

(assert (= (and d!1517931 res!2013829) b!4749689))

(assert (= (and b!4749689 res!2013827) b!4749690))

(assert (=> bm!332551 m!5709561))

(declare-fun m!5710071 () Bool)

(assert (=> bm!332551 m!5710071))

(declare-fun m!5710073 () Bool)

(assert (=> b!4749688 m!5710073))

(declare-fun m!5710075 () Bool)

(assert (=> b!4749688 m!5710075))

(assert (=> b!4749688 m!5709561))

(declare-fun m!5710077 () Bool)

(assert (=> b!4749688 m!5710077))

(declare-fun m!5710079 () Bool)

(assert (=> b!4749688 m!5710079))

(declare-fun m!5710081 () Bool)

(assert (=> b!4749688 m!5710081))

(declare-fun m!5710083 () Bool)

(assert (=> b!4749688 m!5710083))

(assert (=> b!4749688 m!5710073))

(declare-fun m!5710085 () Bool)

(assert (=> b!4749688 m!5710085))

(declare-fun m!5710087 () Bool)

(assert (=> b!4749688 m!5710087))

(assert (=> b!4749688 m!5710081))

(assert (=> b!4749688 m!5709561))

(declare-fun m!5710089 () Bool)

(assert (=> b!4749688 m!5710089))

(assert (=> b!4749688 m!5710077))

(declare-fun m!5710091 () Bool)

(assert (=> b!4749688 m!5710091))

(declare-fun m!5710093 () Bool)

(assert (=> d!1517931 m!5710093))

(assert (=> d!1517931 m!5709421))

(declare-fun m!5710095 () Bool)

(assert (=> b!4749689 m!5710095))

(declare-fun m!5710097 () Bool)

(assert (=> bm!332552 m!5710097))

(declare-fun m!5710099 () Bool)

(assert (=> b!4749692 m!5710099))

(declare-fun m!5710101 () Bool)

(assert (=> b!4749690 m!5710101))

(assert (=> bm!332553 m!5710097))

(assert (=> b!4749351 d!1517931))

(declare-fun d!1517939 () Bool)

(declare-fun res!2013835 () Bool)

(declare-fun e!2962763 () Bool)

(assert (=> d!1517939 (=> res!2013835 e!2962763)))

(assert (=> d!1517939 (= res!2013835 ((_ is Nil!53064) (toList!6098 acc!1214)))))

(assert (=> d!1517939 (= (forall!11747 (toList!6098 acc!1214) lambda!221360) e!2962763)))

(declare-fun b!4749704 () Bool)

(declare-fun e!2962764 () Bool)

(assert (=> b!4749704 (= e!2962763 e!2962764)))

(declare-fun res!2013836 () Bool)

(assert (=> b!4749704 (=> (not res!2013836) (not e!2962764))))

(assert (=> b!4749704 (= res!2013836 (dynLambda!21896 lambda!221360 (h!59461 (toList!6098 acc!1214))))))

(declare-fun b!4749705 () Bool)

(assert (=> b!4749705 (= e!2962764 (forall!11747 (t!360512 (toList!6098 acc!1214)) lambda!221360))))

(assert (= (and d!1517939 (not res!2013835)) b!4749704))

(assert (= (and b!4749704 res!2013836) b!4749705))

(declare-fun b_lambda!183027 () Bool)

(assert (=> (not b_lambda!183027) (not b!4749704)))

(declare-fun m!5710103 () Bool)

(assert (=> b!4749704 m!5710103))

(declare-fun m!5710105 () Bool)

(assert (=> b!4749705 m!5710105))

(assert (=> b!4749351 d!1517939))

(declare-fun d!1517941 () Bool)

(declare-fun e!2962765 () Bool)

(assert (=> d!1517941 e!2962765))

(declare-fun res!2013838 () Bool)

(assert (=> d!1517941 (=> (not res!2013838) (not e!2962765))))

(declare-fun lt!1913191 () ListMap!5505)

(assert (=> d!1517941 (= res!2013838 (contains!16476 lt!1913191 (_1!30704 (h!59461 l!14304))))))

(declare-fun lt!1913190 () List!53188)

(assert (=> d!1517941 (= lt!1913191 (ListMap!5506 lt!1913190))))

(declare-fun lt!1913193 () Unit!135226)

(declare-fun lt!1913192 () Unit!135226)

(assert (=> d!1517941 (= lt!1913193 lt!1913192)))

(assert (=> d!1517941 (= (getValueByKey!2066 lt!1913190 (_1!30704 (h!59461 l!14304))) (Some!12515 (_2!30704 (h!59461 l!14304))))))

(assert (=> d!1517941 (= lt!1913192 (lemmaContainsTupThenGetReturnValue!1143 lt!1913190 (_1!30704 (h!59461 l!14304)) (_2!30704 (h!59461 l!14304))))))

(assert (=> d!1517941 (= lt!1913190 (insertNoDuplicatedKeys!651 (toList!6098 acc!1214) (_1!30704 (h!59461 l!14304)) (_2!30704 (h!59461 l!14304))))))

(assert (=> d!1517941 (= (+!2364 acc!1214 (h!59461 l!14304)) lt!1913191)))

(declare-fun b!4749706 () Bool)

(declare-fun res!2013837 () Bool)

(assert (=> b!4749706 (=> (not res!2013837) (not e!2962765))))

(assert (=> b!4749706 (= res!2013837 (= (getValueByKey!2066 (toList!6098 lt!1913191) (_1!30704 (h!59461 l!14304))) (Some!12515 (_2!30704 (h!59461 l!14304)))))))

(declare-fun b!4749707 () Bool)

(assert (=> b!4749707 (= e!2962765 (contains!16477 (toList!6098 lt!1913191) (h!59461 l!14304)))))

(assert (= (and d!1517941 res!2013838) b!4749706))

(assert (= (and b!4749706 res!2013837) b!4749707))

(declare-fun m!5710107 () Bool)

(assert (=> d!1517941 m!5710107))

(declare-fun m!5710109 () Bool)

(assert (=> d!1517941 m!5710109))

(declare-fun m!5710111 () Bool)

(assert (=> d!1517941 m!5710111))

(declare-fun m!5710113 () Bool)

(assert (=> d!1517941 m!5710113))

(declare-fun m!5710115 () Bool)

(assert (=> b!4749706 m!5710115))

(declare-fun m!5710117 () Bool)

(assert (=> b!4749707 m!5710117))

(assert (=> b!4749351 d!1517941))

(declare-fun d!1517943 () Bool)

(declare-fun res!2013839 () Bool)

(declare-fun e!2962766 () Bool)

(assert (=> d!1517943 (=> res!2013839 e!2962766)))

(assert (=> d!1517943 (= res!2013839 ((_ is Nil!53064) (toList!6098 acc!1214)))))

(assert (=> d!1517943 (= (forall!11747 (toList!6098 acc!1214) lambda!221357) e!2962766)))

(declare-fun b!4749708 () Bool)

(declare-fun e!2962767 () Bool)

(assert (=> b!4749708 (= e!2962766 e!2962767)))

(declare-fun res!2013840 () Bool)

(assert (=> b!4749708 (=> (not res!2013840) (not e!2962767))))

(assert (=> b!4749708 (= res!2013840 (dynLambda!21896 lambda!221357 (h!59461 (toList!6098 acc!1214))))))

(declare-fun b!4749709 () Bool)

(assert (=> b!4749709 (= e!2962767 (forall!11747 (t!360512 (toList!6098 acc!1214)) lambda!221357))))

(assert (= (and d!1517943 (not res!2013839)) b!4749708))

(assert (= (and b!4749708 res!2013840) b!4749709))

(declare-fun b_lambda!183029 () Bool)

(assert (=> (not b_lambda!183029) (not b!4749708)))

(declare-fun m!5710119 () Bool)

(assert (=> b!4749708 m!5710119))

(declare-fun m!5710121 () Bool)

(assert (=> b!4749709 m!5710121))

(assert (=> b!4749342 d!1517943))

(declare-fun d!1517945 () Bool)

(assert (=> d!1517945 (= (invariantList!1579 (toList!6098 lt!1912889)) (noDuplicatedKeys!398 (toList!6098 lt!1912889)))))

(declare-fun bs!1140012 () Bool)

(assert (= bs!1140012 d!1517945))

(declare-fun m!5710123 () Bool)

(assert (=> bs!1140012 m!5710123))

(assert (=> b!4749340 d!1517945))

(declare-fun d!1517947 () Bool)

(declare-fun res!2013841 () Bool)

(declare-fun e!2962768 () Bool)

(assert (=> d!1517947 (=> res!2013841 e!2962768)))

(assert (=> d!1517947 (= res!2013841 (not ((_ is Cons!53064) (t!360512 l!14304))))))

(assert (=> d!1517947 (= (noDuplicateKeys!2130 (t!360512 l!14304)) e!2962768)))

(declare-fun b!4749710 () Bool)

(declare-fun e!2962769 () Bool)

(assert (=> b!4749710 (= e!2962768 e!2962769)))

(declare-fun res!2013842 () Bool)

(assert (=> b!4749710 (=> (not res!2013842) (not e!2962769))))

(assert (=> b!4749710 (= res!2013842 (not (containsKey!3538 (t!360512 (t!360512 l!14304)) (_1!30704 (h!59461 (t!360512 l!14304))))))))

(declare-fun b!4749711 () Bool)

(assert (=> b!4749711 (= e!2962769 (noDuplicateKeys!2130 (t!360512 (t!360512 l!14304))))))

(assert (= (and d!1517947 (not res!2013841)) b!4749710))

(assert (= (and b!4749710 res!2013842) b!4749711))

(declare-fun m!5710125 () Bool)

(assert (=> b!4749710 m!5710125))

(declare-fun m!5710127 () Bool)

(assert (=> b!4749711 m!5710127))

(assert (=> b!4749291 d!1517947))

(assert (=> bm!332509 d!1517819))

(declare-fun d!1517949 () Bool)

(declare-fun res!2013843 () Bool)

(declare-fun e!2962770 () Bool)

(assert (=> d!1517949 (=> res!2013843 e!2962770)))

(assert (=> d!1517949 (= res!2013843 (and ((_ is Cons!53064) (t!360512 lt!1912743)) (= (_1!30704 (h!59461 (t!360512 lt!1912743))) (_1!30704 (h!59461 lt!1912743)))))))

(assert (=> d!1517949 (= (containsKey!3538 (t!360512 lt!1912743) (_1!30704 (h!59461 lt!1912743))) e!2962770)))

(declare-fun b!4749713 () Bool)

(declare-fun e!2962771 () Bool)

(assert (=> b!4749713 (= e!2962770 e!2962771)))

(declare-fun res!2013844 () Bool)

(assert (=> b!4749713 (=> (not res!2013844) (not e!2962771))))

(assert (=> b!4749713 (= res!2013844 ((_ is Cons!53064) (t!360512 lt!1912743)))))

(declare-fun b!4749714 () Bool)

(assert (=> b!4749714 (= e!2962771 (containsKey!3538 (t!360512 (t!360512 lt!1912743)) (_1!30704 (h!59461 lt!1912743))))))

(assert (= (and d!1517949 (not res!2013843)) b!4749713))

(assert (= (and b!4749713 res!2013844) b!4749714))

(declare-fun m!5710129 () Bool)

(assert (=> b!4749714 m!5710129))

(assert (=> b!4749288 d!1517949))

(assert (=> bm!332507 d!1517867))

(declare-fun d!1517951 () Bool)

(declare-fun res!2013845 () Bool)

(declare-fun e!2962772 () Bool)

(assert (=> d!1517951 (=> res!2013845 e!2962772)))

(assert (=> d!1517951 (= res!2013845 ((_ is Nil!53064) (toList!6098 acc!1214)))))

(assert (=> d!1517951 (= (forall!11747 (toList!6098 acc!1214) lambda!221362) e!2962772)))

(declare-fun b!4749715 () Bool)

(declare-fun e!2962773 () Bool)

(assert (=> b!4749715 (= e!2962772 e!2962773)))

(declare-fun res!2013846 () Bool)

(assert (=> b!4749715 (=> (not res!2013846) (not e!2962773))))

(assert (=> b!4749715 (= res!2013846 (dynLambda!21896 lambda!221362 (h!59461 (toList!6098 acc!1214))))))

(declare-fun b!4749716 () Bool)

(assert (=> b!4749716 (= e!2962773 (forall!11747 (t!360512 (toList!6098 acc!1214)) lambda!221362))))

(assert (= (and d!1517951 (not res!2013845)) b!4749715))

(assert (= (and b!4749715 res!2013846) b!4749716))

(declare-fun b_lambda!183031 () Bool)

(assert (=> (not b_lambda!183031) (not b!4749715)))

(declare-fun m!5710131 () Bool)

(assert (=> b!4749715 m!5710131))

(declare-fun m!5710133 () Bool)

(assert (=> b!4749716 m!5710133))

(assert (=> b!4749352 d!1517951))

(declare-fun d!1517953 () Bool)

(assert (=> d!1517953 (= (invariantList!1579 (toList!6098 lt!1912922)) (noDuplicatedKeys!398 (toList!6098 lt!1912922)))))

(declare-fun bs!1140013 () Bool)

(assert (= bs!1140013 d!1517953))

(declare-fun m!5710135 () Bool)

(assert (=> bs!1140013 m!5710135))

(assert (=> b!4749353 d!1517953))

(declare-fun e!2962774 () Bool)

(declare-fun b!4749717 () Bool)

(declare-fun tp!1350014 () Bool)

(assert (=> b!4749717 (= e!2962774 (and tp_is_empty!31813 tp_is_empty!31815 tp!1350014))))

(assert (=> b!4749361 (= tp!1350013 e!2962774)))

(assert (= (and b!4749361 ((_ is Cons!53064) (t!360512 (t!360512 l!14304)))) b!4749717))

(declare-fun b!4749718 () Bool)

(declare-fun e!2962775 () Bool)

(declare-fun tp!1350015 () Bool)

(assert (=> b!4749718 (= e!2962775 (and tp_is_empty!31813 tp_is_empty!31815 tp!1350015))))

(assert (=> b!4749360 (= tp!1350012 e!2962775)))

(assert (= (and b!4749360 ((_ is Cons!53064) (t!360512 (toList!6098 acc!1214)))) b!4749718))

(declare-fun b_lambda!183033 () Bool)

(assert (= b_lambda!183029 (or b!4749338 b_lambda!183033)))

(declare-fun bs!1140014 () Bool)

(declare-fun d!1517955 () Bool)

(assert (= bs!1140014 (and d!1517955 b!4749338)))

(assert (=> bs!1140014 (= (dynLambda!21896 lambda!221357 (h!59461 (toList!6098 acc!1214))) (contains!16476 lt!1912897 (_1!30704 (h!59461 (toList!6098 acc!1214)))))))

(declare-fun m!5710137 () Bool)

(assert (=> bs!1140014 m!5710137))

(assert (=> b!4749708 d!1517955))

(declare-fun b_lambda!183035 () Bool)

(assert (= b_lambda!182999 (or b!4749338 b_lambda!183035)))

(declare-fun bs!1140015 () Bool)

(declare-fun d!1517957 () Bool)

(assert (= bs!1140015 (and d!1517957 b!4749338)))

(assert (=> bs!1140015 (= (dynLambda!21896 lambda!221357 (h!59461 lt!1912743)) (contains!16476 lt!1912897 (_1!30704 (h!59461 lt!1912743))))))

(assert (=> bs!1140015 m!5709525))

(assert (=> d!1517879 d!1517957))

(declare-fun b_lambda!183037 () Bool)

(assert (= b_lambda!183001 (or b!4749338 b_lambda!183037)))

(declare-fun bs!1140016 () Bool)

(declare-fun d!1517959 () Bool)

(assert (= bs!1140016 (and d!1517959 b!4749338)))

(assert (=> bs!1140016 (= (dynLambda!21896 lambda!221357 (h!59461 (t!360512 lt!1912743))) (contains!16476 lt!1912897 (_1!30704 (h!59461 (t!360512 lt!1912743)))))))

(declare-fun m!5710139 () Bool)

(assert (=> bs!1140016 m!5710139))

(assert (=> b!4749565 d!1517959))

(declare-fun b_lambda!183039 () Bool)

(assert (= b_lambda!183031 (or d!1517817 b_lambda!183039)))

(declare-fun bs!1140017 () Bool)

(declare-fun d!1517961 () Bool)

(assert (= bs!1140017 (and d!1517961 d!1517817)))

(assert (=> bs!1140017 (= (dynLambda!21896 lambda!221362 (h!59461 (toList!6098 acc!1214))) (contains!16476 lt!1912922 (_1!30704 (h!59461 (toList!6098 acc!1214)))))))

(declare-fun m!5710141 () Bool)

(assert (=> bs!1140017 m!5710141))

(assert (=> b!4749715 d!1517961))

(declare-fun b_lambda!183041 () Bool)

(assert (= b_lambda!183021 (or b!4749351 b_lambda!183041)))

(declare-fun bs!1140018 () Bool)

(declare-fun d!1517963 () Bool)

(assert (= bs!1140018 (and d!1517963 b!4749351)))

(assert (=> bs!1140018 (= (dynLambda!21896 lambda!221361 (h!59461 l!14304)) (contains!16476 lt!1912930 (_1!30704 (h!59461 l!14304))))))

(assert (=> bs!1140018 m!5709567))

(assert (=> d!1517925 d!1517963))

(declare-fun b_lambda!183043 () Bool)

(assert (= b_lambda!182987 (or d!1517805 b_lambda!183043)))

(declare-fun bs!1140019 () Bool)

(declare-fun d!1517965 () Bool)

(assert (= bs!1140019 (and d!1517965 d!1517805)))

(assert (=> bs!1140019 (= (dynLambda!21896 lambda!221358 (h!59461 lt!1912743)) (contains!16476 lt!1912889 (_1!30704 (h!59461 lt!1912743))))))

(declare-fun m!5710143 () Bool)

(assert (=> bs!1140019 m!5710143))

(assert (=> b!4749374 d!1517965))

(declare-fun b_lambda!183045 () Bool)

(assert (= b_lambda!183005 (or b!4749338 b_lambda!183045)))

(declare-fun bs!1140020 () Bool)

(declare-fun d!1517967 () Bool)

(assert (= bs!1140020 (and d!1517967 b!4749338)))

(assert (=> bs!1140020 (= (dynLambda!21896 lambda!221356 (h!59461 (toList!6098 acc!1214))) (contains!16476 acc!1214 (_1!30704 (h!59461 (toList!6098 acc!1214)))))))

(declare-fun m!5710145 () Bool)

(assert (=> bs!1140020 m!5710145))

(assert (=> b!4749578 d!1517967))

(declare-fun b_lambda!183047 () Bool)

(assert (= b_lambda!183017 (or b!4749351 b_lambda!183047)))

(declare-fun bs!1140021 () Bool)

(declare-fun d!1517969 () Bool)

(assert (= bs!1140021 (and d!1517969 b!4749351)))

(assert (=> bs!1140021 (= (dynLambda!21896 lambda!221361 (h!59461 (t!360512 l!14304))) (contains!16476 lt!1912930 (_1!30704 (h!59461 (t!360512 l!14304)))))))

(declare-fun m!5710147 () Bool)

(assert (=> bs!1140021 m!5710147))

(assert (=> b!4749656 d!1517969))

(declare-fun b_lambda!183049 () Bool)

(assert (= b_lambda!182983 (or b!4749351 b_lambda!183049)))

(declare-fun bs!1140022 () Bool)

(declare-fun d!1517971 () Bool)

(assert (= bs!1140022 (and d!1517971 b!4749351)))

(assert (=> bs!1140022 (= (dynLambda!21896 lambda!221361 (h!59461 (toList!6098 acc!1214))) (contains!16476 lt!1912930 (_1!30704 (h!59461 (toList!6098 acc!1214)))))))

(declare-fun m!5710149 () Bool)

(assert (=> bs!1140022 m!5710149))

(assert (=> b!4749368 d!1517971))

(declare-fun b_lambda!183051 () Bool)

(assert (= b_lambda!183019 (or b!4749351 b_lambda!183051)))

(declare-fun bs!1140023 () Bool)

(declare-fun d!1517973 () Bool)

(assert (= bs!1140023 (and d!1517973 b!4749351)))

(assert (=> bs!1140023 (= (dynLambda!21896 lambda!221361 (h!59461 (toList!6098 lt!1912929))) (contains!16476 lt!1912930 (_1!30704 (h!59461 (toList!6098 lt!1912929)))))))

(declare-fun m!5710151 () Bool)

(assert (=> bs!1140023 m!5710151))

(assert (=> b!4749683 d!1517973))

(declare-fun b_lambda!183053 () Bool)

(assert (= b_lambda!183027 (or b!4749351 b_lambda!183053)))

(declare-fun bs!1140024 () Bool)

(declare-fun d!1517975 () Bool)

(assert (= bs!1140024 (and d!1517975 b!4749351)))

(assert (=> bs!1140024 (= (dynLambda!21896 lambda!221360 (h!59461 (toList!6098 acc!1214))) (contains!16476 acc!1214 (_1!30704 (h!59461 (toList!6098 acc!1214)))))))

(assert (=> bs!1140024 m!5710145))

(assert (=> b!4749704 d!1517975))

(declare-fun b_lambda!183055 () Bool)

(assert (= b_lambda!183023 (or b!4749351 b_lambda!183055)))

(assert (=> b!4749686 d!1517963))

(declare-fun b_lambda!183057 () Bool)

(assert (= b_lambda!183007 (or b!4749338 b_lambda!183057)))

(declare-fun bs!1140026 () Bool)

(declare-fun d!1517977 () Bool)

(assert (= bs!1140026 (and d!1517977 b!4749338)))

(assert (=> bs!1140026 (= (dynLambda!21896 lambda!221357 (h!59461 (toList!6098 lt!1912896))) (contains!16476 lt!1912897 (_1!30704 (h!59461 (toList!6098 lt!1912896)))))))

(declare-fun m!5710153 () Bool)

(assert (=> bs!1140026 m!5710153))

(assert (=> b!4749591 d!1517977))

(declare-fun b_lambda!183059 () Bool)

(assert (= b_lambda!182985 (or d!1517817 b_lambda!183059)))

(declare-fun bs!1140028 () Bool)

(declare-fun d!1517979 () Bool)

(assert (= bs!1140028 (and d!1517979 d!1517817)))

(assert (=> bs!1140028 (= (dynLambda!21896 lambda!221362 (h!59461 l!14304)) (contains!16476 lt!1912922 (_1!30704 (h!59461 l!14304))))))

(declare-fun m!5710155 () Bool)

(assert (=> bs!1140028 m!5710155))

(assert (=> b!4749372 d!1517979))

(declare-fun b_lambda!183061 () Bool)

(assert (= b_lambda!183003 (or b!4749338 b_lambda!183061)))

(assert (=> b!4749567 d!1517957))

(declare-fun b_lambda!183063 () Bool)

(assert (= b_lambda!182997 (or d!1517805 b_lambda!183063)))

(declare-fun bs!1140031 () Bool)

(declare-fun d!1517981 () Bool)

(assert (= bs!1140031 (and d!1517981 d!1517805)))

(assert (=> bs!1140031 (= (dynLambda!21896 lambda!221358 (h!59461 (toList!6098 acc!1214))) (contains!16476 lt!1912889 (_1!30704 (h!59461 (toList!6098 acc!1214)))))))

(declare-fun m!5710157 () Bool)

(assert (=> bs!1140031 m!5710157))

(assert (=> b!4749544 d!1517981))

(check-sat (not b!4749370) (not d!1517897) (not b!4749690) (not b!4749688) (not b!4749439) (not d!1517929) (not b_lambda!183059) (not b_lambda!183063) (not d!1517879) (not b!4749678) (not b!4749580) (not b!4749661) (not d!1517921) (not bs!1140023) (not b!4749689) (not d!1517945) (not b_lambda!183035) (not b!4749582) (not b!4749417) (not bm!332544) (not bs!1140031) (not b!4749684) (not b!4749716) (not b!4749638) (not b_lambda!182995) (not b_lambda!183045) (not d!1517845) (not bm!332553) (not b!4749386) (not d!1517821) (not b!4749418) (not d!1517869) (not b!4749710) (not b!4749543) (not b!4749592) (not b!4749566) (not bm!332550) (not bs!1140018) (not b!4749367) (not b!4749570) (not b!4749584) (not b!4749662) (not b!4749680) (not b!4749585) (not b_lambda!183055) (not b!4749511) (not b!4749574) (not b!4749516) (not bm!332552) (not b!4749657) (not b_lambda!183047) (not b!4749677) (not bm!332545) (not b!4749537) (not d!1517887) (not b_lambda!183037) (not b!4749573) (not b_lambda!183033) (not b_lambda!183053) (not b!4749636) (not b!4749514) (not bs!1140021) (not bs!1140024) (not bs!1140015) (not b_lambda!183051) (not b!4749705) (not b!4749375) (not b!4749571) (not b!4749666) (not b!4749717) (not b!4749575) (not bs!1140026) (not d!1517851) (not b!4749553) (not b!4749563) (not b!4749692) (not bs!1140022) (not d!1517833) (not b_lambda!183043) (not b!4749581) (not b!4749545) (not b!4749564) (not d!1517931) (not bm!332530) (not b!4749572) (not b_lambda!182981) (not b!4749714) (not b_lambda!183057) (not bm!332529) (not b!4749676) (not d!1517925) (not bm!332527) (not bm!332528) (not d!1517917) (not b!4749687) (not b!4749562) (not bs!1140028) (not b!4749711) (not b!4749660) (not b_lambda!183061) (not b!4749371) (not d!1517881) (not b!4749635) (not b!4749707) (not b!4749685) (not b!4749675) (not b!4749634) tp_is_empty!31815 (not b!4749674) (not b!4749586) (not b!4749664) tp_is_empty!31813 (not b!4749373) (not bm!332513) (not bs!1140020) (not b!4749505) (not b!4749718) (not d!1517941) (not b!4749706) (not bm!332546) (not b!4749559) (not bm!332551) (not bs!1140016) (not b_lambda!183041) (not b!4749508) (not b!4749414) (not b!4749413) (not d!1517891) (not b!4749369) (not b!4749425) (not b!4749579) (not b!4749551) (not d!1517953) (not b!4749569) (not d!1517861) (not b!4749679) (not b!4749517) (not b!4749416) (not b!4749583) (not b!4749412) (not b_lambda!183039) (not bs!1140014) (not b!4749415) (not b!4749568) (not b!4749665) (not d!1517895) (not b!4749709) (not bs!1140017) (not b!4749663) (not bm!332543) (not bs!1140019) (not b_lambda!183049) (not b!4749440) (not b!4749510) (not b!4749515))
(check-sat)
