; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!484976 () Bool)

(assert start!484976)

(declare-fun b!4747832 () Bool)

(declare-fun e!2961494 () Bool)

(declare-datatypes ((K!14395 0))(
  ( (K!14396 (val!19787 Int)) )
))
(declare-datatypes ((V!14641 0))(
  ( (V!14642 (val!19788 Int)) )
))
(declare-datatypes ((tuple2!54756 0))(
  ( (tuple2!54757 (_1!30672 K!14395) (_2!30672 V!14641)) )
))
(declare-datatypes ((List!53156 0))(
  ( (Nil!53032) (Cons!53032 (h!59429 tuple2!54756) (t!360468 List!53156)) )
))
(declare-fun l!14304 () List!53156)

(declare-fun noDuplicateKeys!2098 (List!53156) Bool)

(assert (=> b!4747832 (= e!2961494 (not (noDuplicateKeys!2098 (t!360468 l!14304))))))

(declare-fun e!2961493 () Bool)

(assert (=> b!4747832 e!2961493))

(declare-fun res!2012634 () Bool)

(assert (=> b!4747832 (=> (not res!2012634) (not e!2961493))))

(declare-datatypes ((ListMap!5445 0))(
  ( (ListMap!5446 (toList!6068 List!53156)) )
))
(declare-fun lt!1909977 () ListMap!5445)

(declare-fun lt!1909978 () ListMap!5445)

(declare-fun t!14174 () tuple2!54756)

(declare-fun eq!1175 (ListMap!5445 ListMap!5445) Bool)

(declare-fun addToMapMapFromBucket!1524 (List!53156 ListMap!5445) ListMap!5445)

(declare-fun +!2334 (ListMap!5445 tuple2!54756) ListMap!5445)

(assert (=> b!4747832 (= res!2012634 (eq!1175 (addToMapMapFromBucket!1524 (Cons!53032 t!14174 (t!360468 l!14304)) lt!1909977) (+!2334 lt!1909978 t!14174)))))

(declare-datatypes ((Unit!134561 0))(
  ( (Unit!134562) )
))
(declare-fun lt!1909979 () Unit!134561)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!422 (tuple2!54756 List!53156 ListMap!5445) Unit!134561)

(assert (=> b!4747832 (= lt!1909979 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!422 t!14174 (t!360468 l!14304) lt!1909977))))

(assert (=> b!4747832 (= lt!1909978 (addToMapMapFromBucket!1524 (t!360468 l!14304) lt!1909977))))

(declare-fun acc!1214 () ListMap!5445)

(assert (=> b!4747832 (= lt!1909977 (+!2334 acc!1214 (h!59429 l!14304)))))

(declare-fun b!4747833 () Bool)

(declare-fun res!2012635 () Bool)

(assert (=> b!4747833 (=> (not res!2012635) (not e!2961494))))

(assert (=> b!4747833 (= res!2012635 (noDuplicateKeys!2098 (Cons!53032 t!14174 l!14304)))))

(declare-fun b!4747834 () Bool)

(declare-fun e!2961492 () Bool)

(declare-fun tp!1349764 () Bool)

(assert (=> b!4747834 (= e!2961492 tp!1349764)))

(declare-fun b!4747835 () Bool)

(declare-fun res!2012637 () Bool)

(assert (=> b!4747835 (=> (not res!2012637) (not e!2961494))))

(get-info :version)

(assert (=> b!4747835 (= res!2012637 (not ((_ is Nil!53032) l!14304)))))

(declare-fun tp_is_empty!31685 () Bool)

(declare-fun e!2961491 () Bool)

(declare-fun tp!1349765 () Bool)

(declare-fun b!4747836 () Bool)

(declare-fun tp_is_empty!31687 () Bool)

(assert (=> b!4747836 (= e!2961491 (and tp_is_empty!31685 tp_is_empty!31687 tp!1349765))))

(declare-fun b!4747837 () Bool)

(assert (=> b!4747837 (= e!2961493 (eq!1175 lt!1909978 (addToMapMapFromBucket!1524 l!14304 acc!1214)))))

(declare-fun res!2012636 () Bool)

(assert (=> start!484976 (=> (not res!2012636) (not e!2961494))))

(assert (=> start!484976 (= res!2012636 (noDuplicateKeys!2098 l!14304))))

(assert (=> start!484976 e!2961494))

(assert (=> start!484976 e!2961491))

(assert (=> start!484976 (and tp_is_empty!31685 tp_is_empty!31687)))

(declare-fun inv!68267 (ListMap!5445) Bool)

(assert (=> start!484976 (and (inv!68267 acc!1214) e!2961492)))

(assert (= (and start!484976 res!2012636) b!4747833))

(assert (= (and b!4747833 res!2012635) b!4747835))

(assert (= (and b!4747835 res!2012637) b!4747832))

(assert (= (and b!4747832 res!2012634) b!4747837))

(assert (= (and start!484976 ((_ is Cons!53032) l!14304)) b!4747836))

(assert (= start!484976 b!4747834))

(declare-fun m!5705415 () Bool)

(assert (=> b!4747832 m!5705415))

(declare-fun m!5705417 () Bool)

(assert (=> b!4747832 m!5705417))

(declare-fun m!5705419 () Bool)

(assert (=> b!4747832 m!5705419))

(declare-fun m!5705421 () Bool)

(assert (=> b!4747832 m!5705421))

(declare-fun m!5705423 () Bool)

(assert (=> b!4747832 m!5705423))

(assert (=> b!4747832 m!5705419))

(assert (=> b!4747832 m!5705421))

(declare-fun m!5705425 () Bool)

(assert (=> b!4747832 m!5705425))

(declare-fun m!5705427 () Bool)

(assert (=> b!4747832 m!5705427))

(declare-fun m!5705429 () Bool)

(assert (=> b!4747833 m!5705429))

(declare-fun m!5705431 () Bool)

(assert (=> b!4747837 m!5705431))

(assert (=> b!4747837 m!5705431))

(declare-fun m!5705433 () Bool)

(assert (=> b!4747837 m!5705433))

(declare-fun m!5705435 () Bool)

(assert (=> start!484976 m!5705435))

(declare-fun m!5705437 () Bool)

(assert (=> start!484976 m!5705437))

(check-sat (not b!4747832) (not b!4747837) tp_is_empty!31685 (not b!4747836) (not b!4747833) (not b!4747834) (not start!484976) tp_is_empty!31687)
(check-sat)
(get-model)

(declare-fun d!1517345 () Bool)

(declare-fun res!2012648 () Bool)

(declare-fun e!2961505 () Bool)

(assert (=> d!1517345 (=> res!2012648 e!2961505)))

(assert (=> d!1517345 (= res!2012648 (not ((_ is Cons!53032) l!14304)))))

(assert (=> d!1517345 (= (noDuplicateKeys!2098 l!14304) e!2961505)))

(declare-fun b!4747848 () Bool)

(declare-fun e!2961506 () Bool)

(assert (=> b!4747848 (= e!2961505 e!2961506)))

(declare-fun res!2012649 () Bool)

(assert (=> b!4747848 (=> (not res!2012649) (not e!2961506))))

(declare-fun containsKey!3525 (List!53156 K!14395) Bool)

(assert (=> b!4747848 (= res!2012649 (not (containsKey!3525 (t!360468 l!14304) (_1!30672 (h!59429 l!14304)))))))

(declare-fun b!4747849 () Bool)

(assert (=> b!4747849 (= e!2961506 (noDuplicateKeys!2098 (t!360468 l!14304)))))

(assert (= (and d!1517345 (not res!2012648)) b!4747848))

(assert (= (and b!4747848 res!2012649) b!4747849))

(declare-fun m!5705447 () Bool)

(assert (=> b!4747848 m!5705447))

(assert (=> b!4747849 m!5705417))

(assert (=> start!484976 d!1517345))

(declare-fun d!1517351 () Bool)

(declare-fun invariantList!1567 (List!53156) Bool)

(assert (=> d!1517351 (= (inv!68267 acc!1214) (invariantList!1567 (toList!6068 acc!1214)))))

(declare-fun bs!1138610 () Bool)

(assert (= bs!1138610 d!1517351))

(declare-fun m!5705449 () Bool)

(assert (=> bs!1138610 m!5705449))

(assert (=> start!484976 d!1517351))

(declare-fun d!1517353 () Bool)

(declare-fun res!2012650 () Bool)

(declare-fun e!2961507 () Bool)

(assert (=> d!1517353 (=> res!2012650 e!2961507)))

(assert (=> d!1517353 (= res!2012650 (not ((_ is Cons!53032) (Cons!53032 t!14174 l!14304))))))

(assert (=> d!1517353 (= (noDuplicateKeys!2098 (Cons!53032 t!14174 l!14304)) e!2961507)))

(declare-fun b!4747850 () Bool)

(declare-fun e!2961508 () Bool)

(assert (=> b!4747850 (= e!2961507 e!2961508)))

(declare-fun res!2012651 () Bool)

(assert (=> b!4747850 (=> (not res!2012651) (not e!2961508))))

(assert (=> b!4747850 (= res!2012651 (not (containsKey!3525 (t!360468 (Cons!53032 t!14174 l!14304)) (_1!30672 (h!59429 (Cons!53032 t!14174 l!14304))))))))

(declare-fun b!4747851 () Bool)

(assert (=> b!4747851 (= e!2961508 (noDuplicateKeys!2098 (t!360468 (Cons!53032 t!14174 l!14304))))))

(assert (= (and d!1517353 (not res!2012650)) b!4747850))

(assert (= (and b!4747850 res!2012651) b!4747851))

(declare-fun m!5705451 () Bool)

(assert (=> b!4747850 m!5705451))

(declare-fun m!5705453 () Bool)

(assert (=> b!4747851 m!5705453))

(assert (=> b!4747833 d!1517353))

(declare-fun d!1517355 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9501 (List!53156) (InoxSet tuple2!54756))

(assert (=> d!1517355 (= (eq!1175 lt!1909978 (addToMapMapFromBucket!1524 l!14304 acc!1214)) (= (content!9501 (toList!6068 lt!1909978)) (content!9501 (toList!6068 (addToMapMapFromBucket!1524 l!14304 acc!1214)))))))

(declare-fun bs!1138611 () Bool)

(assert (= bs!1138611 d!1517355))

(declare-fun m!5705455 () Bool)

(assert (=> bs!1138611 m!5705455))

(declare-fun m!5705457 () Bool)

(assert (=> bs!1138611 m!5705457))

(assert (=> b!4747837 d!1517355))

(declare-fun b!4747900 () Bool)

(assert (=> b!4747900 true))

(declare-fun bs!1138641 () Bool)

(declare-fun b!4747897 () Bool)

(assert (= bs!1138641 (and b!4747897 b!4747900)))

(declare-fun lambda!220807 () Int)

(declare-fun lambda!220806 () Int)

(assert (=> bs!1138641 (= lambda!220807 lambda!220806)))

(assert (=> b!4747897 true))

(declare-fun lambda!220808 () Int)

(declare-fun lt!1910157 () ListMap!5445)

(assert (=> bs!1138641 (= (= lt!1910157 acc!1214) (= lambda!220808 lambda!220806))))

(assert (=> b!4747897 (= (= lt!1910157 acc!1214) (= lambda!220808 lambda!220807))))

(assert (=> b!4747897 true))

(declare-fun bs!1138648 () Bool)

(declare-fun d!1517357 () Bool)

(assert (= bs!1138648 (and d!1517357 b!4747900)))

(declare-fun lt!1910159 () ListMap!5445)

(declare-fun lambda!220810 () Int)

(assert (=> bs!1138648 (= (= lt!1910159 acc!1214) (= lambda!220810 lambda!220806))))

(declare-fun bs!1138650 () Bool)

(assert (= bs!1138650 (and d!1517357 b!4747897)))

(assert (=> bs!1138650 (= (= lt!1910159 acc!1214) (= lambda!220810 lambda!220807))))

(assert (=> bs!1138650 (= (= lt!1910159 lt!1910157) (= lambda!220810 lambda!220808))))

(assert (=> d!1517357 true))

(declare-fun bm!332274 () Bool)

(declare-fun c!810849 () Bool)

(declare-fun call!332280 () Bool)

(declare-fun forall!11735 (List!53156 Int) Bool)

(assert (=> bm!332274 (= call!332280 (forall!11735 (toList!6068 acc!1214) (ite c!810849 lambda!220806 lambda!220808)))))

(declare-fun e!2961537 () ListMap!5445)

(assert (=> b!4747897 (= e!2961537 lt!1910157)))

(declare-fun lt!1910153 () ListMap!5445)

(assert (=> b!4747897 (= lt!1910153 (+!2334 acc!1214 (h!59429 l!14304)))))

(assert (=> b!4747897 (= lt!1910157 (addToMapMapFromBucket!1524 (t!360468 l!14304) (+!2334 acc!1214 (h!59429 l!14304))))))

(declare-fun lt!1910145 () Unit!134561)

(declare-fun call!332281 () Unit!134561)

(assert (=> b!4747897 (= lt!1910145 call!332281)))

(assert (=> b!4747897 (forall!11735 (toList!6068 acc!1214) lambda!220807)))

(declare-fun lt!1910148 () Unit!134561)

(assert (=> b!4747897 (= lt!1910148 lt!1910145)))

(assert (=> b!4747897 (forall!11735 (toList!6068 lt!1910153) lambda!220808)))

(declare-fun lt!1910141 () Unit!134561)

(declare-fun Unit!134574 () Unit!134561)

(assert (=> b!4747897 (= lt!1910141 Unit!134574)))

(assert (=> b!4747897 (forall!11735 (t!360468 l!14304) lambda!220808)))

(declare-fun lt!1910150 () Unit!134561)

(declare-fun Unit!134575 () Unit!134561)

(assert (=> b!4747897 (= lt!1910150 Unit!134575)))

(declare-fun lt!1910154 () Unit!134561)

(declare-fun Unit!134576 () Unit!134561)

(assert (=> b!4747897 (= lt!1910154 Unit!134576)))

(declare-fun lt!1910151 () Unit!134561)

(declare-fun forallContained!3761 (List!53156 Int tuple2!54756) Unit!134561)

(assert (=> b!4747897 (= lt!1910151 (forallContained!3761 (toList!6068 lt!1910153) lambda!220808 (h!59429 l!14304)))))

(declare-fun contains!16452 (ListMap!5445 K!14395) Bool)

(assert (=> b!4747897 (contains!16452 lt!1910153 (_1!30672 (h!59429 l!14304)))))

(declare-fun lt!1910149 () Unit!134561)

(declare-fun Unit!134577 () Unit!134561)

(assert (=> b!4747897 (= lt!1910149 Unit!134577)))

(assert (=> b!4747897 (contains!16452 lt!1910157 (_1!30672 (h!59429 l!14304)))))

(declare-fun lt!1910152 () Unit!134561)

(declare-fun Unit!134578 () Unit!134561)

(assert (=> b!4747897 (= lt!1910152 Unit!134578)))

(assert (=> b!4747897 (forall!11735 l!14304 lambda!220808)))

(declare-fun lt!1910155 () Unit!134561)

(declare-fun Unit!134579 () Unit!134561)

(assert (=> b!4747897 (= lt!1910155 Unit!134579)))

(assert (=> b!4747897 (forall!11735 (toList!6068 lt!1910153) lambda!220808)))

(declare-fun lt!1910144 () Unit!134561)

(declare-fun Unit!134580 () Unit!134561)

(assert (=> b!4747897 (= lt!1910144 Unit!134580)))

(declare-fun lt!1910139 () Unit!134561)

(declare-fun Unit!134581 () Unit!134561)

(assert (=> b!4747897 (= lt!1910139 Unit!134581)))

(declare-fun lt!1910146 () Unit!134561)

(declare-fun addForallContainsKeyThenBeforeAdding!849 (ListMap!5445 ListMap!5445 K!14395 V!14641) Unit!134561)

(assert (=> b!4747897 (= lt!1910146 (addForallContainsKeyThenBeforeAdding!849 acc!1214 lt!1910157 (_1!30672 (h!59429 l!14304)) (_2!30672 (h!59429 l!14304))))))

(declare-fun call!332279 () Bool)

(assert (=> b!4747897 call!332279))

(declare-fun lt!1910158 () Unit!134561)

(assert (=> b!4747897 (= lt!1910158 lt!1910146)))

(assert (=> b!4747897 (forall!11735 (toList!6068 acc!1214) lambda!220808)))

(declare-fun lt!1910140 () Unit!134561)

(declare-fun Unit!134582 () Unit!134561)

(assert (=> b!4747897 (= lt!1910140 Unit!134582)))

(declare-fun res!2012681 () Bool)

(assert (=> b!4747897 (= res!2012681 (forall!11735 l!14304 lambda!220808))))

(declare-fun e!2961536 () Bool)

(assert (=> b!4747897 (=> (not res!2012681) (not e!2961536))))

(assert (=> b!4747897 e!2961536))

(declare-fun lt!1910143 () Unit!134561)

(declare-fun Unit!134583 () Unit!134561)

(assert (=> b!4747897 (= lt!1910143 Unit!134583)))

(declare-fun b!4747898 () Bool)

(declare-fun e!2961535 () Bool)

(assert (=> b!4747898 (= e!2961535 (invariantList!1567 (toList!6068 lt!1910159)))))

(assert (=> d!1517357 e!2961535))

(declare-fun res!2012682 () Bool)

(assert (=> d!1517357 (=> (not res!2012682) (not e!2961535))))

(assert (=> d!1517357 (= res!2012682 (forall!11735 l!14304 lambda!220810))))

(assert (=> d!1517357 (= lt!1910159 e!2961537)))

(assert (=> d!1517357 (= c!810849 ((_ is Nil!53032) l!14304))))

(assert (=> d!1517357 (noDuplicateKeys!2098 l!14304)))

(assert (=> d!1517357 (= (addToMapMapFromBucket!1524 l!14304 acc!1214) lt!1910159)))

(declare-fun b!4747899 () Bool)

(declare-fun res!2012683 () Bool)

(assert (=> b!4747899 (=> (not res!2012683) (not e!2961535))))

(assert (=> b!4747899 (= res!2012683 (forall!11735 (toList!6068 acc!1214) lambda!220810))))

(declare-fun bm!332275 () Bool)

(assert (=> bm!332275 (= call!332279 (forall!11735 (toList!6068 acc!1214) (ite c!810849 lambda!220806 lambda!220808)))))

(assert (=> b!4747900 (= e!2961537 acc!1214)))

(declare-fun lt!1910156 () Unit!134561)

(assert (=> b!4747900 (= lt!1910156 call!332281)))

(assert (=> b!4747900 call!332280))

(declare-fun lt!1910147 () Unit!134561)

(assert (=> b!4747900 (= lt!1910147 lt!1910156)))

(assert (=> b!4747900 call!332279))

(declare-fun lt!1910142 () Unit!134561)

(declare-fun Unit!134584 () Unit!134561)

(assert (=> b!4747900 (= lt!1910142 Unit!134584)))

(declare-fun b!4747901 () Bool)

(assert (=> b!4747901 (= e!2961536 call!332280)))

(declare-fun bm!332276 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!850 (ListMap!5445) Unit!134561)

(assert (=> bm!332276 (= call!332281 (lemmaContainsAllItsOwnKeys!850 acc!1214))))

(assert (= (and d!1517357 c!810849) b!4747900))

(assert (= (and d!1517357 (not c!810849)) b!4747897))

(assert (= (and b!4747897 res!2012681) b!4747901))

(assert (= (or b!4747900 b!4747897) bm!332276))

(assert (= (or b!4747900 b!4747901) bm!332274))

(assert (= (or b!4747900 b!4747897) bm!332275))

(assert (= (and d!1517357 res!2012682) b!4747899))

(assert (= (and b!4747899 res!2012683) b!4747898))

(declare-fun m!5705537 () Bool)

(assert (=> b!4747898 m!5705537))

(assert (=> b!4747897 m!5705415))

(declare-fun m!5705539 () Bool)

(assert (=> b!4747897 m!5705539))

(declare-fun m!5705541 () Bool)

(assert (=> b!4747897 m!5705541))

(declare-fun m!5705543 () Bool)

(assert (=> b!4747897 m!5705543))

(declare-fun m!5705545 () Bool)

(assert (=> b!4747897 m!5705545))

(declare-fun m!5705547 () Bool)

(assert (=> b!4747897 m!5705547))

(declare-fun m!5705551 () Bool)

(assert (=> b!4747897 m!5705551))

(assert (=> b!4747897 m!5705551))

(assert (=> b!4747897 m!5705415))

(declare-fun m!5705555 () Bool)

(assert (=> b!4747897 m!5705555))

(declare-fun m!5705557 () Bool)

(assert (=> b!4747897 m!5705557))

(declare-fun m!5705561 () Bool)

(assert (=> b!4747897 m!5705561))

(declare-fun m!5705567 () Bool)

(assert (=> b!4747897 m!5705567))

(assert (=> b!4747897 m!5705547))

(declare-fun m!5705571 () Bool)

(assert (=> bm!332275 m!5705571))

(declare-fun m!5705573 () Bool)

(assert (=> bm!332276 m!5705573))

(assert (=> bm!332274 m!5705571))

(declare-fun m!5705579 () Bool)

(assert (=> d!1517357 m!5705579))

(assert (=> d!1517357 m!5705435))

(declare-fun m!5705583 () Bool)

(assert (=> b!4747899 m!5705583))

(assert (=> b!4747837 d!1517357))

(declare-fun d!1517369 () Bool)

(declare-fun e!2961541 () Bool)

(assert (=> d!1517369 e!2961541))

(declare-fun res!2012691 () Bool)

(assert (=> d!1517369 (=> (not res!2012691) (not e!2961541))))

(declare-fun lt!1910174 () ListMap!5445)

(assert (=> d!1517369 (= res!2012691 (contains!16452 lt!1910174 (_1!30672 t!14174)))))

(declare-fun lt!1910177 () List!53156)

(assert (=> d!1517369 (= lt!1910174 (ListMap!5446 lt!1910177))))

(declare-fun lt!1910176 () Unit!134561)

(declare-fun lt!1910175 () Unit!134561)

(assert (=> d!1517369 (= lt!1910176 lt!1910175)))

(declare-datatypes ((Option!12504 0))(
  ( (None!12503) (Some!12503 (v!47198 V!14641)) )
))
(declare-fun getValueByKey!2054 (List!53156 K!14395) Option!12504)

(assert (=> d!1517369 (= (getValueByKey!2054 lt!1910177 (_1!30672 t!14174)) (Some!12503 (_2!30672 t!14174)))))

(declare-fun lemmaContainsTupThenGetReturnValue!1131 (List!53156 K!14395 V!14641) Unit!134561)

(assert (=> d!1517369 (= lt!1910175 (lemmaContainsTupThenGetReturnValue!1131 lt!1910177 (_1!30672 t!14174) (_2!30672 t!14174)))))

(declare-fun insertNoDuplicatedKeys!639 (List!53156 K!14395 V!14641) List!53156)

(assert (=> d!1517369 (= lt!1910177 (insertNoDuplicatedKeys!639 (toList!6068 lt!1909978) (_1!30672 t!14174) (_2!30672 t!14174)))))

(assert (=> d!1517369 (= (+!2334 lt!1909978 t!14174) lt!1910174)))

(declare-fun b!4747910 () Bool)

(declare-fun res!2012690 () Bool)

(assert (=> b!4747910 (=> (not res!2012690) (not e!2961541))))

(assert (=> b!4747910 (= res!2012690 (= (getValueByKey!2054 (toList!6068 lt!1910174) (_1!30672 t!14174)) (Some!12503 (_2!30672 t!14174))))))

(declare-fun b!4747911 () Bool)

(declare-fun contains!16453 (List!53156 tuple2!54756) Bool)

(assert (=> b!4747911 (= e!2961541 (contains!16453 (toList!6068 lt!1910174) t!14174))))

(assert (= (and d!1517369 res!2012691) b!4747910))

(assert (= (and b!4747910 res!2012690) b!4747911))

(declare-fun m!5705611 () Bool)

(assert (=> d!1517369 m!5705611))

(declare-fun m!5705613 () Bool)

(assert (=> d!1517369 m!5705613))

(declare-fun m!5705615 () Bool)

(assert (=> d!1517369 m!5705615))

(declare-fun m!5705617 () Bool)

(assert (=> d!1517369 m!5705617))

(declare-fun m!5705619 () Bool)

(assert (=> b!4747910 m!5705619))

(declare-fun m!5705621 () Bool)

(assert (=> b!4747911 m!5705621))

(assert (=> b!4747832 d!1517369))

(declare-fun d!1517375 () Bool)

(declare-fun e!2961542 () Bool)

(assert (=> d!1517375 e!2961542))

(declare-fun res!2012693 () Bool)

(assert (=> d!1517375 (=> (not res!2012693) (not e!2961542))))

(declare-fun lt!1910178 () ListMap!5445)

(assert (=> d!1517375 (= res!2012693 (contains!16452 lt!1910178 (_1!30672 (h!59429 l!14304))))))

(declare-fun lt!1910181 () List!53156)

(assert (=> d!1517375 (= lt!1910178 (ListMap!5446 lt!1910181))))

(declare-fun lt!1910180 () Unit!134561)

(declare-fun lt!1910179 () Unit!134561)

(assert (=> d!1517375 (= lt!1910180 lt!1910179)))

(assert (=> d!1517375 (= (getValueByKey!2054 lt!1910181 (_1!30672 (h!59429 l!14304))) (Some!12503 (_2!30672 (h!59429 l!14304))))))

(assert (=> d!1517375 (= lt!1910179 (lemmaContainsTupThenGetReturnValue!1131 lt!1910181 (_1!30672 (h!59429 l!14304)) (_2!30672 (h!59429 l!14304))))))

(assert (=> d!1517375 (= lt!1910181 (insertNoDuplicatedKeys!639 (toList!6068 acc!1214) (_1!30672 (h!59429 l!14304)) (_2!30672 (h!59429 l!14304))))))

(assert (=> d!1517375 (= (+!2334 acc!1214 (h!59429 l!14304)) lt!1910178)))

(declare-fun b!4747912 () Bool)

(declare-fun res!2012692 () Bool)

(assert (=> b!4747912 (=> (not res!2012692) (not e!2961542))))

(assert (=> b!4747912 (= res!2012692 (= (getValueByKey!2054 (toList!6068 lt!1910178) (_1!30672 (h!59429 l!14304))) (Some!12503 (_2!30672 (h!59429 l!14304)))))))

(declare-fun b!4747913 () Bool)

(assert (=> b!4747913 (= e!2961542 (contains!16453 (toList!6068 lt!1910178) (h!59429 l!14304)))))

(assert (= (and d!1517375 res!2012693) b!4747912))

(assert (= (and b!4747912 res!2012692) b!4747913))

(declare-fun m!5705623 () Bool)

(assert (=> d!1517375 m!5705623))

(declare-fun m!5705625 () Bool)

(assert (=> d!1517375 m!5705625))

(declare-fun m!5705627 () Bool)

(assert (=> d!1517375 m!5705627))

(declare-fun m!5705629 () Bool)

(assert (=> d!1517375 m!5705629))

(declare-fun m!5705631 () Bool)

(assert (=> b!4747912 m!5705631))

(declare-fun m!5705635 () Bool)

(assert (=> b!4747913 m!5705635))

(assert (=> b!4747832 d!1517375))

(declare-fun bs!1138653 () Bool)

(declare-fun b!4747917 () Bool)

(assert (= bs!1138653 (and b!4747917 b!4747900)))

(declare-fun lambda!220811 () Int)

(assert (=> bs!1138653 (= (= lt!1909977 acc!1214) (= lambda!220811 lambda!220806))))

(declare-fun bs!1138654 () Bool)

(assert (= bs!1138654 (and b!4747917 b!4747897)))

(assert (=> bs!1138654 (= (= lt!1909977 acc!1214) (= lambda!220811 lambda!220807))))

(assert (=> bs!1138654 (= (= lt!1909977 lt!1910157) (= lambda!220811 lambda!220808))))

(declare-fun bs!1138656 () Bool)

(assert (= bs!1138656 (and b!4747917 d!1517357)))

(assert (=> bs!1138656 (= (= lt!1909977 lt!1910159) (= lambda!220811 lambda!220810))))

(assert (=> b!4747917 true))

(declare-fun bs!1138657 () Bool)

(declare-fun b!4747914 () Bool)

(assert (= bs!1138657 (and b!4747914 b!4747897)))

(declare-fun lambda!220812 () Int)

(assert (=> bs!1138657 (= (= lt!1909977 acc!1214) (= lambda!220812 lambda!220807))))

(declare-fun bs!1138658 () Bool)

(assert (= bs!1138658 (and b!4747914 b!4747917)))

(assert (=> bs!1138658 (= lambda!220812 lambda!220811)))

(declare-fun bs!1138659 () Bool)

(assert (= bs!1138659 (and b!4747914 b!4747900)))

(assert (=> bs!1138659 (= (= lt!1909977 acc!1214) (= lambda!220812 lambda!220806))))

(assert (=> bs!1138657 (= (= lt!1909977 lt!1910157) (= lambda!220812 lambda!220808))))

(declare-fun bs!1138660 () Bool)

(assert (= bs!1138660 (and b!4747914 d!1517357)))

(assert (=> bs!1138660 (= (= lt!1909977 lt!1910159) (= lambda!220812 lambda!220810))))

(assert (=> b!4747914 true))

(declare-fun lt!1910201 () ListMap!5445)

(declare-fun lambda!220813 () Int)

(assert (=> b!4747914 (= (= lt!1910201 lt!1909977) (= lambda!220813 lambda!220812))))

(assert (=> bs!1138657 (= (= lt!1910201 acc!1214) (= lambda!220813 lambda!220807))))

(assert (=> bs!1138658 (= (= lt!1910201 lt!1909977) (= lambda!220813 lambda!220811))))

(assert (=> bs!1138659 (= (= lt!1910201 acc!1214) (= lambda!220813 lambda!220806))))

(assert (=> bs!1138657 (= (= lt!1910201 lt!1910157) (= lambda!220813 lambda!220808))))

(assert (=> bs!1138660 (= (= lt!1910201 lt!1910159) (= lambda!220813 lambda!220810))))

(assert (=> b!4747914 true))

(declare-fun bs!1138661 () Bool)

(declare-fun d!1517377 () Bool)

(assert (= bs!1138661 (and d!1517377 b!4747914)))

(declare-fun lt!1910203 () ListMap!5445)

(declare-fun lambda!220814 () Int)

(assert (=> bs!1138661 (= (= lt!1910203 lt!1910201) (= lambda!220814 lambda!220813))))

(assert (=> bs!1138661 (= (= lt!1910203 lt!1909977) (= lambda!220814 lambda!220812))))

(declare-fun bs!1138662 () Bool)

(assert (= bs!1138662 (and d!1517377 b!4747897)))

(assert (=> bs!1138662 (= (= lt!1910203 acc!1214) (= lambda!220814 lambda!220807))))

(declare-fun bs!1138663 () Bool)

(assert (= bs!1138663 (and d!1517377 b!4747917)))

(assert (=> bs!1138663 (= (= lt!1910203 lt!1909977) (= lambda!220814 lambda!220811))))

(declare-fun bs!1138664 () Bool)

(assert (= bs!1138664 (and d!1517377 b!4747900)))

(assert (=> bs!1138664 (= (= lt!1910203 acc!1214) (= lambda!220814 lambda!220806))))

(assert (=> bs!1138662 (= (= lt!1910203 lt!1910157) (= lambda!220814 lambda!220808))))

(declare-fun bs!1138665 () Bool)

(assert (= bs!1138665 (and d!1517377 d!1517357)))

(assert (=> bs!1138665 (= (= lt!1910203 lt!1910159) (= lambda!220814 lambda!220810))))

(assert (=> d!1517377 true))

(declare-fun bm!332277 () Bool)

(declare-fun call!332283 () Bool)

(declare-fun c!810850 () Bool)

(assert (=> bm!332277 (= call!332283 (forall!11735 (toList!6068 lt!1909977) (ite c!810850 lambda!220811 lambda!220813)))))

(declare-fun e!2961545 () ListMap!5445)

(assert (=> b!4747914 (= e!2961545 lt!1910201)))

(declare-fun lt!1910197 () ListMap!5445)

(assert (=> b!4747914 (= lt!1910197 (+!2334 lt!1909977 (h!59429 (Cons!53032 t!14174 (t!360468 l!14304)))))))

(assert (=> b!4747914 (= lt!1910201 (addToMapMapFromBucket!1524 (t!360468 (Cons!53032 t!14174 (t!360468 l!14304))) (+!2334 lt!1909977 (h!59429 (Cons!53032 t!14174 (t!360468 l!14304))))))))

(declare-fun lt!1910189 () Unit!134561)

(declare-fun call!332284 () Unit!134561)

(assert (=> b!4747914 (= lt!1910189 call!332284)))

(assert (=> b!4747914 (forall!11735 (toList!6068 lt!1909977) lambda!220812)))

(declare-fun lt!1910192 () Unit!134561)

(assert (=> b!4747914 (= lt!1910192 lt!1910189)))

(assert (=> b!4747914 (forall!11735 (toList!6068 lt!1910197) lambda!220813)))

(declare-fun lt!1910185 () Unit!134561)

(declare-fun Unit!134596 () Unit!134561)

(assert (=> b!4747914 (= lt!1910185 Unit!134596)))

(assert (=> b!4747914 (forall!11735 (t!360468 (Cons!53032 t!14174 (t!360468 l!14304))) lambda!220813)))

(declare-fun lt!1910194 () Unit!134561)

(declare-fun Unit!134597 () Unit!134561)

(assert (=> b!4747914 (= lt!1910194 Unit!134597)))

(declare-fun lt!1910198 () Unit!134561)

(declare-fun Unit!134598 () Unit!134561)

(assert (=> b!4747914 (= lt!1910198 Unit!134598)))

(declare-fun lt!1910195 () Unit!134561)

(assert (=> b!4747914 (= lt!1910195 (forallContained!3761 (toList!6068 lt!1910197) lambda!220813 (h!59429 (Cons!53032 t!14174 (t!360468 l!14304)))))))

(assert (=> b!4747914 (contains!16452 lt!1910197 (_1!30672 (h!59429 (Cons!53032 t!14174 (t!360468 l!14304)))))))

(declare-fun lt!1910193 () Unit!134561)

(declare-fun Unit!134599 () Unit!134561)

(assert (=> b!4747914 (= lt!1910193 Unit!134599)))

(assert (=> b!4747914 (contains!16452 lt!1910201 (_1!30672 (h!59429 (Cons!53032 t!14174 (t!360468 l!14304)))))))

(declare-fun lt!1910196 () Unit!134561)

(declare-fun Unit!134600 () Unit!134561)

(assert (=> b!4747914 (= lt!1910196 Unit!134600)))

(assert (=> b!4747914 (forall!11735 (Cons!53032 t!14174 (t!360468 l!14304)) lambda!220813)))

(declare-fun lt!1910199 () Unit!134561)

(declare-fun Unit!134601 () Unit!134561)

(assert (=> b!4747914 (= lt!1910199 Unit!134601)))

(assert (=> b!4747914 (forall!11735 (toList!6068 lt!1910197) lambda!220813)))

(declare-fun lt!1910188 () Unit!134561)

(declare-fun Unit!134602 () Unit!134561)

(assert (=> b!4747914 (= lt!1910188 Unit!134602)))

(declare-fun lt!1910183 () Unit!134561)

(declare-fun Unit!134603 () Unit!134561)

(assert (=> b!4747914 (= lt!1910183 Unit!134603)))

(declare-fun lt!1910190 () Unit!134561)

(assert (=> b!4747914 (= lt!1910190 (addForallContainsKeyThenBeforeAdding!849 lt!1909977 lt!1910201 (_1!30672 (h!59429 (Cons!53032 t!14174 (t!360468 l!14304)))) (_2!30672 (h!59429 (Cons!53032 t!14174 (t!360468 l!14304))))))))

(declare-fun call!332282 () Bool)

(assert (=> b!4747914 call!332282))

(declare-fun lt!1910202 () Unit!134561)

(assert (=> b!4747914 (= lt!1910202 lt!1910190)))

(assert (=> b!4747914 (forall!11735 (toList!6068 lt!1909977) lambda!220813)))

(declare-fun lt!1910184 () Unit!134561)

(declare-fun Unit!134604 () Unit!134561)

(assert (=> b!4747914 (= lt!1910184 Unit!134604)))

(declare-fun res!2012694 () Bool)

(assert (=> b!4747914 (= res!2012694 (forall!11735 (Cons!53032 t!14174 (t!360468 l!14304)) lambda!220813))))

(declare-fun e!2961544 () Bool)

(assert (=> b!4747914 (=> (not res!2012694) (not e!2961544))))

(assert (=> b!4747914 e!2961544))

(declare-fun lt!1910187 () Unit!134561)

(declare-fun Unit!134605 () Unit!134561)

(assert (=> b!4747914 (= lt!1910187 Unit!134605)))

(declare-fun b!4747915 () Bool)

(declare-fun e!2961543 () Bool)

(assert (=> b!4747915 (= e!2961543 (invariantList!1567 (toList!6068 lt!1910203)))))

(assert (=> d!1517377 e!2961543))

(declare-fun res!2012695 () Bool)

(assert (=> d!1517377 (=> (not res!2012695) (not e!2961543))))

(assert (=> d!1517377 (= res!2012695 (forall!11735 (Cons!53032 t!14174 (t!360468 l!14304)) lambda!220814))))

(assert (=> d!1517377 (= lt!1910203 e!2961545)))

(assert (=> d!1517377 (= c!810850 ((_ is Nil!53032) (Cons!53032 t!14174 (t!360468 l!14304))))))

(assert (=> d!1517377 (noDuplicateKeys!2098 (Cons!53032 t!14174 (t!360468 l!14304)))))

(assert (=> d!1517377 (= (addToMapMapFromBucket!1524 (Cons!53032 t!14174 (t!360468 l!14304)) lt!1909977) lt!1910203)))

(declare-fun b!4747916 () Bool)

(declare-fun res!2012696 () Bool)

(assert (=> b!4747916 (=> (not res!2012696) (not e!2961543))))

(assert (=> b!4747916 (= res!2012696 (forall!11735 (toList!6068 lt!1909977) lambda!220814))))

(declare-fun bm!332278 () Bool)

(assert (=> bm!332278 (= call!332282 (forall!11735 (toList!6068 lt!1909977) (ite c!810850 lambda!220811 lambda!220813)))))

(assert (=> b!4747917 (= e!2961545 lt!1909977)))

(declare-fun lt!1910200 () Unit!134561)

(assert (=> b!4747917 (= lt!1910200 call!332284)))

(assert (=> b!4747917 call!332283))

(declare-fun lt!1910191 () Unit!134561)

(assert (=> b!4747917 (= lt!1910191 lt!1910200)))

(assert (=> b!4747917 call!332282))

(declare-fun lt!1910186 () Unit!134561)

(declare-fun Unit!134606 () Unit!134561)

(assert (=> b!4747917 (= lt!1910186 Unit!134606)))

(declare-fun b!4747918 () Bool)

(assert (=> b!4747918 (= e!2961544 call!332283)))

(declare-fun bm!332279 () Bool)

(assert (=> bm!332279 (= call!332284 (lemmaContainsAllItsOwnKeys!850 lt!1909977))))

(assert (= (and d!1517377 c!810850) b!4747917))

(assert (= (and d!1517377 (not c!810850)) b!4747914))

(assert (= (and b!4747914 res!2012694) b!4747918))

(assert (= (or b!4747917 b!4747914) bm!332279))

(assert (= (or b!4747917 b!4747918) bm!332277))

(assert (= (or b!4747917 b!4747914) bm!332278))

(assert (= (and d!1517377 res!2012695) b!4747916))

(assert (= (and b!4747916 res!2012696) b!4747915))

(declare-fun m!5705649 () Bool)

(assert (=> b!4747915 m!5705649))

(declare-fun m!5705651 () Bool)

(assert (=> b!4747914 m!5705651))

(declare-fun m!5705653 () Bool)

(assert (=> b!4747914 m!5705653))

(declare-fun m!5705655 () Bool)

(assert (=> b!4747914 m!5705655))

(declare-fun m!5705657 () Bool)

(assert (=> b!4747914 m!5705657))

(declare-fun m!5705659 () Bool)

(assert (=> b!4747914 m!5705659))

(declare-fun m!5705661 () Bool)

(assert (=> b!4747914 m!5705661))

(declare-fun m!5705663 () Bool)

(assert (=> b!4747914 m!5705663))

(assert (=> b!4747914 m!5705663))

(assert (=> b!4747914 m!5705651))

(declare-fun m!5705665 () Bool)

(assert (=> b!4747914 m!5705665))

(declare-fun m!5705667 () Bool)

(assert (=> b!4747914 m!5705667))

(declare-fun m!5705669 () Bool)

(assert (=> b!4747914 m!5705669))

(declare-fun m!5705671 () Bool)

(assert (=> b!4747914 m!5705671))

(assert (=> b!4747914 m!5705661))

(declare-fun m!5705673 () Bool)

(assert (=> bm!332278 m!5705673))

(declare-fun m!5705675 () Bool)

(assert (=> bm!332279 m!5705675))

(assert (=> bm!332277 m!5705673))

(declare-fun m!5705677 () Bool)

(assert (=> d!1517377 m!5705677))

(declare-fun m!5705679 () Bool)

(assert (=> d!1517377 m!5705679))

(declare-fun m!5705681 () Bool)

(assert (=> b!4747916 m!5705681))

(assert (=> b!4747832 d!1517377))

(declare-fun d!1517383 () Bool)

(declare-fun res!2012699 () Bool)

(declare-fun e!2961552 () Bool)

(assert (=> d!1517383 (=> res!2012699 e!2961552)))

(assert (=> d!1517383 (= res!2012699 (not ((_ is Cons!53032) (t!360468 l!14304))))))

(assert (=> d!1517383 (= (noDuplicateKeys!2098 (t!360468 l!14304)) e!2961552)))

(declare-fun b!4747927 () Bool)

(declare-fun e!2961553 () Bool)

(assert (=> b!4747927 (= e!2961552 e!2961553)))

(declare-fun res!2012700 () Bool)

(assert (=> b!4747927 (=> (not res!2012700) (not e!2961553))))

(assert (=> b!4747927 (= res!2012700 (not (containsKey!3525 (t!360468 (t!360468 l!14304)) (_1!30672 (h!59429 (t!360468 l!14304))))))))

(declare-fun b!4747928 () Bool)

(assert (=> b!4747928 (= e!2961553 (noDuplicateKeys!2098 (t!360468 (t!360468 l!14304))))))

(assert (= (and d!1517383 (not res!2012699)) b!4747927))

(assert (= (and b!4747927 res!2012700) b!4747928))

(declare-fun m!5705683 () Bool)

(assert (=> b!4747927 m!5705683))

(declare-fun m!5705685 () Bool)

(assert (=> b!4747928 m!5705685))

(assert (=> b!4747832 d!1517383))

(declare-fun d!1517385 () Bool)

(assert (=> d!1517385 (= (eq!1175 (addToMapMapFromBucket!1524 (Cons!53032 t!14174 (t!360468 l!14304)) lt!1909977) (+!2334 lt!1909978 t!14174)) (= (content!9501 (toList!6068 (addToMapMapFromBucket!1524 (Cons!53032 t!14174 (t!360468 l!14304)) lt!1909977))) (content!9501 (toList!6068 (+!2334 lt!1909978 t!14174)))))))

(declare-fun bs!1138666 () Bool)

(assert (= bs!1138666 d!1517385))

(declare-fun m!5705687 () Bool)

(assert (=> bs!1138666 m!5705687))

(declare-fun m!5705689 () Bool)

(assert (=> bs!1138666 m!5705689))

(assert (=> b!4747832 d!1517385))

(declare-fun d!1517387 () Bool)

(assert (=> d!1517387 (eq!1175 (addToMapMapFromBucket!1524 (Cons!53032 t!14174 (t!360468 l!14304)) lt!1909977) (+!2334 (addToMapMapFromBucket!1524 (t!360468 l!14304) lt!1909977) t!14174))))

(declare-fun lt!1910206 () Unit!134561)

(declare-fun choose!33781 (tuple2!54756 List!53156 ListMap!5445) Unit!134561)

(assert (=> d!1517387 (= lt!1910206 (choose!33781 t!14174 (t!360468 l!14304) lt!1909977))))

(assert (=> d!1517387 (noDuplicateKeys!2098 (t!360468 l!14304))))

(assert (=> d!1517387 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!422 t!14174 (t!360468 l!14304) lt!1909977) lt!1910206)))

(declare-fun bs!1138667 () Bool)

(assert (= bs!1138667 d!1517387))

(assert (=> bs!1138667 m!5705423))

(assert (=> bs!1138667 m!5705419))

(declare-fun m!5705691 () Bool)

(assert (=> bs!1138667 m!5705691))

(assert (=> bs!1138667 m!5705419))

(declare-fun m!5705693 () Bool)

(assert (=> bs!1138667 m!5705693))

(declare-fun m!5705695 () Bool)

(assert (=> bs!1138667 m!5705695))

(assert (=> bs!1138667 m!5705417))

(assert (=> bs!1138667 m!5705423))

(assert (=> bs!1138667 m!5705693))

(assert (=> b!4747832 d!1517387))

(declare-fun bs!1138668 () Bool)

(declare-fun b!4747932 () Bool)

(assert (= bs!1138668 (and b!4747932 b!4747914)))

(declare-fun lambda!220815 () Int)

(assert (=> bs!1138668 (= (= lt!1909977 lt!1910201) (= lambda!220815 lambda!220813))))

(assert (=> bs!1138668 (= lambda!220815 lambda!220812)))

(declare-fun bs!1138669 () Bool)

(assert (= bs!1138669 (and b!4747932 d!1517377)))

(assert (=> bs!1138669 (= (= lt!1909977 lt!1910203) (= lambda!220815 lambda!220814))))

(declare-fun bs!1138670 () Bool)

(assert (= bs!1138670 (and b!4747932 b!4747897)))

(assert (=> bs!1138670 (= (= lt!1909977 acc!1214) (= lambda!220815 lambda!220807))))

(declare-fun bs!1138671 () Bool)

(assert (= bs!1138671 (and b!4747932 b!4747917)))

(assert (=> bs!1138671 (= lambda!220815 lambda!220811)))

(declare-fun bs!1138672 () Bool)

(assert (= bs!1138672 (and b!4747932 b!4747900)))

(assert (=> bs!1138672 (= (= lt!1909977 acc!1214) (= lambda!220815 lambda!220806))))

(assert (=> bs!1138670 (= (= lt!1909977 lt!1910157) (= lambda!220815 lambda!220808))))

(declare-fun bs!1138673 () Bool)

(assert (= bs!1138673 (and b!4747932 d!1517357)))

(assert (=> bs!1138673 (= (= lt!1909977 lt!1910159) (= lambda!220815 lambda!220810))))

(assert (=> b!4747932 true))

(declare-fun bs!1138674 () Bool)

(declare-fun b!4747929 () Bool)

(assert (= bs!1138674 (and b!4747929 b!4747914)))

(declare-fun lambda!220816 () Int)

(assert (=> bs!1138674 (= (= lt!1909977 lt!1910201) (= lambda!220816 lambda!220813))))

(assert (=> bs!1138674 (= lambda!220816 lambda!220812)))

(declare-fun bs!1138675 () Bool)

(assert (= bs!1138675 (and b!4747929 d!1517377)))

(assert (=> bs!1138675 (= (= lt!1909977 lt!1910203) (= lambda!220816 lambda!220814))))

(declare-fun bs!1138676 () Bool)

(assert (= bs!1138676 (and b!4747929 b!4747932)))

(assert (=> bs!1138676 (= lambda!220816 lambda!220815)))

(declare-fun bs!1138677 () Bool)

(assert (= bs!1138677 (and b!4747929 b!4747897)))

(assert (=> bs!1138677 (= (= lt!1909977 acc!1214) (= lambda!220816 lambda!220807))))

(declare-fun bs!1138678 () Bool)

(assert (= bs!1138678 (and b!4747929 b!4747917)))

(assert (=> bs!1138678 (= lambda!220816 lambda!220811)))

(declare-fun bs!1138679 () Bool)

(assert (= bs!1138679 (and b!4747929 b!4747900)))

(assert (=> bs!1138679 (= (= lt!1909977 acc!1214) (= lambda!220816 lambda!220806))))

(assert (=> bs!1138677 (= (= lt!1909977 lt!1910157) (= lambda!220816 lambda!220808))))

(declare-fun bs!1138680 () Bool)

(assert (= bs!1138680 (and b!4747929 d!1517357)))

(assert (=> bs!1138680 (= (= lt!1909977 lt!1910159) (= lambda!220816 lambda!220810))))

(assert (=> b!4747929 true))

(declare-fun lt!1910225 () ListMap!5445)

(declare-fun lambda!220817 () Int)

(assert (=> bs!1138674 (= (= lt!1910225 lt!1910201) (= lambda!220817 lambda!220813))))

(assert (=> bs!1138674 (= (= lt!1910225 lt!1909977) (= lambda!220817 lambda!220812))))

(assert (=> b!4747929 (= (= lt!1910225 lt!1909977) (= lambda!220817 lambda!220816))))

(assert (=> bs!1138675 (= (= lt!1910225 lt!1910203) (= lambda!220817 lambda!220814))))

(assert (=> bs!1138676 (= (= lt!1910225 lt!1909977) (= lambda!220817 lambda!220815))))

(assert (=> bs!1138677 (= (= lt!1910225 acc!1214) (= lambda!220817 lambda!220807))))

(assert (=> bs!1138678 (= (= lt!1910225 lt!1909977) (= lambda!220817 lambda!220811))))

(assert (=> bs!1138679 (= (= lt!1910225 acc!1214) (= lambda!220817 lambda!220806))))

(assert (=> bs!1138677 (= (= lt!1910225 lt!1910157) (= lambda!220817 lambda!220808))))

(assert (=> bs!1138680 (= (= lt!1910225 lt!1910159) (= lambda!220817 lambda!220810))))

(assert (=> b!4747929 true))

(declare-fun bs!1138681 () Bool)

(declare-fun d!1517389 () Bool)

(assert (= bs!1138681 (and d!1517389 b!4747914)))

(declare-fun lambda!220818 () Int)

(declare-fun lt!1910227 () ListMap!5445)

(assert (=> bs!1138681 (= (= lt!1910227 lt!1910201) (= lambda!220818 lambda!220813))))

(assert (=> bs!1138681 (= (= lt!1910227 lt!1909977) (= lambda!220818 lambda!220812))))

(declare-fun bs!1138682 () Bool)

(assert (= bs!1138682 (and d!1517389 b!4747929)))

(assert (=> bs!1138682 (= (= lt!1910227 lt!1909977) (= lambda!220818 lambda!220816))))

(declare-fun bs!1138683 () Bool)

(assert (= bs!1138683 (and d!1517389 d!1517377)))

(assert (=> bs!1138683 (= (= lt!1910227 lt!1910203) (= lambda!220818 lambda!220814))))

(declare-fun bs!1138684 () Bool)

(assert (= bs!1138684 (and d!1517389 b!4747932)))

(assert (=> bs!1138684 (= (= lt!1910227 lt!1909977) (= lambda!220818 lambda!220815))))

(assert (=> bs!1138682 (= (= lt!1910227 lt!1910225) (= lambda!220818 lambda!220817))))

(declare-fun bs!1138685 () Bool)

(assert (= bs!1138685 (and d!1517389 b!4747897)))

(assert (=> bs!1138685 (= (= lt!1910227 acc!1214) (= lambda!220818 lambda!220807))))

(declare-fun bs!1138686 () Bool)

(assert (= bs!1138686 (and d!1517389 b!4747917)))

(assert (=> bs!1138686 (= (= lt!1910227 lt!1909977) (= lambda!220818 lambda!220811))))

(declare-fun bs!1138687 () Bool)

(assert (= bs!1138687 (and d!1517389 b!4747900)))

(assert (=> bs!1138687 (= (= lt!1910227 acc!1214) (= lambda!220818 lambda!220806))))

(assert (=> bs!1138685 (= (= lt!1910227 lt!1910157) (= lambda!220818 lambda!220808))))

(declare-fun bs!1138688 () Bool)

(assert (= bs!1138688 (and d!1517389 d!1517357)))

(assert (=> bs!1138688 (= (= lt!1910227 lt!1910159) (= lambda!220818 lambda!220810))))

(assert (=> d!1517389 true))

(declare-fun c!810851 () Bool)

(declare-fun bm!332280 () Bool)

(declare-fun call!332286 () Bool)

(assert (=> bm!332280 (= call!332286 (forall!11735 (toList!6068 lt!1909977) (ite c!810851 lambda!220815 lambda!220817)))))

(declare-fun e!2961556 () ListMap!5445)

(assert (=> b!4747929 (= e!2961556 lt!1910225)))

(declare-fun lt!1910221 () ListMap!5445)

(assert (=> b!4747929 (= lt!1910221 (+!2334 lt!1909977 (h!59429 (t!360468 l!14304))))))

(assert (=> b!4747929 (= lt!1910225 (addToMapMapFromBucket!1524 (t!360468 (t!360468 l!14304)) (+!2334 lt!1909977 (h!59429 (t!360468 l!14304)))))))

(declare-fun lt!1910213 () Unit!134561)

(declare-fun call!332287 () Unit!134561)

(assert (=> b!4747929 (= lt!1910213 call!332287)))

(assert (=> b!4747929 (forall!11735 (toList!6068 lt!1909977) lambda!220816)))

(declare-fun lt!1910216 () Unit!134561)

(assert (=> b!4747929 (= lt!1910216 lt!1910213)))

(assert (=> b!4747929 (forall!11735 (toList!6068 lt!1910221) lambda!220817)))

(declare-fun lt!1910209 () Unit!134561)

(declare-fun Unit!134618 () Unit!134561)

(assert (=> b!4747929 (= lt!1910209 Unit!134618)))

(assert (=> b!4747929 (forall!11735 (t!360468 (t!360468 l!14304)) lambda!220817)))

(declare-fun lt!1910218 () Unit!134561)

(declare-fun Unit!134619 () Unit!134561)

(assert (=> b!4747929 (= lt!1910218 Unit!134619)))

(declare-fun lt!1910222 () Unit!134561)

(declare-fun Unit!134620 () Unit!134561)

(assert (=> b!4747929 (= lt!1910222 Unit!134620)))

(declare-fun lt!1910219 () Unit!134561)

(assert (=> b!4747929 (= lt!1910219 (forallContained!3761 (toList!6068 lt!1910221) lambda!220817 (h!59429 (t!360468 l!14304))))))

(assert (=> b!4747929 (contains!16452 lt!1910221 (_1!30672 (h!59429 (t!360468 l!14304))))))

(declare-fun lt!1910217 () Unit!134561)

(declare-fun Unit!134621 () Unit!134561)

(assert (=> b!4747929 (= lt!1910217 Unit!134621)))

(assert (=> b!4747929 (contains!16452 lt!1910225 (_1!30672 (h!59429 (t!360468 l!14304))))))

(declare-fun lt!1910220 () Unit!134561)

(declare-fun Unit!134622 () Unit!134561)

(assert (=> b!4747929 (= lt!1910220 Unit!134622)))

(assert (=> b!4747929 (forall!11735 (t!360468 l!14304) lambda!220817)))

(declare-fun lt!1910223 () Unit!134561)

(declare-fun Unit!134623 () Unit!134561)

(assert (=> b!4747929 (= lt!1910223 Unit!134623)))

(assert (=> b!4747929 (forall!11735 (toList!6068 lt!1910221) lambda!220817)))

(declare-fun lt!1910212 () Unit!134561)

(declare-fun Unit!134624 () Unit!134561)

(assert (=> b!4747929 (= lt!1910212 Unit!134624)))

(declare-fun lt!1910207 () Unit!134561)

(declare-fun Unit!134625 () Unit!134561)

(assert (=> b!4747929 (= lt!1910207 Unit!134625)))

(declare-fun lt!1910214 () Unit!134561)

(assert (=> b!4747929 (= lt!1910214 (addForallContainsKeyThenBeforeAdding!849 lt!1909977 lt!1910225 (_1!30672 (h!59429 (t!360468 l!14304))) (_2!30672 (h!59429 (t!360468 l!14304)))))))

(declare-fun call!332285 () Bool)

(assert (=> b!4747929 call!332285))

(declare-fun lt!1910226 () Unit!134561)

(assert (=> b!4747929 (= lt!1910226 lt!1910214)))

(assert (=> b!4747929 (forall!11735 (toList!6068 lt!1909977) lambda!220817)))

(declare-fun lt!1910208 () Unit!134561)

(declare-fun Unit!134626 () Unit!134561)

(assert (=> b!4747929 (= lt!1910208 Unit!134626)))

(declare-fun res!2012701 () Bool)

(assert (=> b!4747929 (= res!2012701 (forall!11735 (t!360468 l!14304) lambda!220817))))

(declare-fun e!2961555 () Bool)

(assert (=> b!4747929 (=> (not res!2012701) (not e!2961555))))

(assert (=> b!4747929 e!2961555))

(declare-fun lt!1910211 () Unit!134561)

(declare-fun Unit!134627 () Unit!134561)

(assert (=> b!4747929 (= lt!1910211 Unit!134627)))

(declare-fun b!4747930 () Bool)

(declare-fun e!2961554 () Bool)

(assert (=> b!4747930 (= e!2961554 (invariantList!1567 (toList!6068 lt!1910227)))))

(assert (=> d!1517389 e!2961554))

(declare-fun res!2012702 () Bool)

(assert (=> d!1517389 (=> (not res!2012702) (not e!2961554))))

(assert (=> d!1517389 (= res!2012702 (forall!11735 (t!360468 l!14304) lambda!220818))))

(assert (=> d!1517389 (= lt!1910227 e!2961556)))

(assert (=> d!1517389 (= c!810851 ((_ is Nil!53032) (t!360468 l!14304)))))

(assert (=> d!1517389 (noDuplicateKeys!2098 (t!360468 l!14304))))

(assert (=> d!1517389 (= (addToMapMapFromBucket!1524 (t!360468 l!14304) lt!1909977) lt!1910227)))

(declare-fun b!4747931 () Bool)

(declare-fun res!2012703 () Bool)

(assert (=> b!4747931 (=> (not res!2012703) (not e!2961554))))

(assert (=> b!4747931 (= res!2012703 (forall!11735 (toList!6068 lt!1909977) lambda!220818))))

(declare-fun bm!332281 () Bool)

(assert (=> bm!332281 (= call!332285 (forall!11735 (toList!6068 lt!1909977) (ite c!810851 lambda!220815 lambda!220817)))))

(assert (=> b!4747932 (= e!2961556 lt!1909977)))

(declare-fun lt!1910224 () Unit!134561)

(assert (=> b!4747932 (= lt!1910224 call!332287)))

(assert (=> b!4747932 call!332286))

(declare-fun lt!1910215 () Unit!134561)

(assert (=> b!4747932 (= lt!1910215 lt!1910224)))

(assert (=> b!4747932 call!332285))

(declare-fun lt!1910210 () Unit!134561)

(declare-fun Unit!134628 () Unit!134561)

(assert (=> b!4747932 (= lt!1910210 Unit!134628)))

(declare-fun b!4747933 () Bool)

(assert (=> b!4747933 (= e!2961555 call!332286)))

(declare-fun bm!332282 () Bool)

(assert (=> bm!332282 (= call!332287 (lemmaContainsAllItsOwnKeys!850 lt!1909977))))

(assert (= (and d!1517389 c!810851) b!4747932))

(assert (= (and d!1517389 (not c!810851)) b!4747929))

(assert (= (and b!4747929 res!2012701) b!4747933))

(assert (= (or b!4747932 b!4747929) bm!332282))

(assert (= (or b!4747932 b!4747933) bm!332280))

(assert (= (or b!4747932 b!4747929) bm!332281))

(assert (= (and d!1517389 res!2012702) b!4747931))

(assert (= (and b!4747931 res!2012703) b!4747930))

(declare-fun m!5705697 () Bool)

(assert (=> b!4747930 m!5705697))

(declare-fun m!5705699 () Bool)

(assert (=> b!4747929 m!5705699))

(declare-fun m!5705701 () Bool)

(assert (=> b!4747929 m!5705701))

(declare-fun m!5705703 () Bool)

(assert (=> b!4747929 m!5705703))

(declare-fun m!5705705 () Bool)

(assert (=> b!4747929 m!5705705))

(declare-fun m!5705707 () Bool)

(assert (=> b!4747929 m!5705707))

(declare-fun m!5705709 () Bool)

(assert (=> b!4747929 m!5705709))

(declare-fun m!5705711 () Bool)

(assert (=> b!4747929 m!5705711))

(assert (=> b!4747929 m!5705711))

(assert (=> b!4747929 m!5705699))

(declare-fun m!5705713 () Bool)

(assert (=> b!4747929 m!5705713))

(declare-fun m!5705715 () Bool)

(assert (=> b!4747929 m!5705715))

(declare-fun m!5705717 () Bool)

(assert (=> b!4747929 m!5705717))

(declare-fun m!5705719 () Bool)

(assert (=> b!4747929 m!5705719))

(assert (=> b!4747929 m!5705709))

(declare-fun m!5705721 () Bool)

(assert (=> bm!332281 m!5705721))

(assert (=> bm!332282 m!5705675))

(assert (=> bm!332280 m!5705721))

(declare-fun m!5705723 () Bool)

(assert (=> d!1517389 m!5705723))

(assert (=> d!1517389 m!5705417))

(declare-fun m!5705725 () Bool)

(assert (=> b!4747931 m!5705725))

(assert (=> b!4747832 d!1517389))

(declare-fun tp!1349772 () Bool)

(declare-fun b!4747938 () Bool)

(declare-fun e!2961559 () Bool)

(assert (=> b!4747938 (= e!2961559 (and tp_is_empty!31685 tp_is_empty!31687 tp!1349772))))

(assert (=> b!4747836 (= tp!1349765 e!2961559)))

(assert (= (and b!4747836 ((_ is Cons!53032) (t!360468 l!14304))) b!4747938))

(declare-fun e!2961560 () Bool)

(declare-fun b!4747939 () Bool)

(declare-fun tp!1349773 () Bool)

(assert (=> b!4747939 (= e!2961560 (and tp_is_empty!31685 tp_is_empty!31687 tp!1349773))))

(assert (=> b!4747834 (= tp!1349764 e!2961560)))

(assert (= (and b!4747834 ((_ is Cons!53032) (toList!6068 acc!1214))) b!4747939))

(check-sat (not d!1517351) (not b!4747851) (not b!4747850) (not d!1517389) (not bm!332282) (not bm!332277) (not bm!332275) (not b!4747897) (not b!4747911) (not b!4747931) (not d!1517369) (not d!1517377) (not bm!332280) (not b!4747910) (not d!1517387) tp_is_empty!31687 (not b!4747849) (not bm!332281) (not b!4747848) (not b!4747938) (not b!4747930) (not b!4747914) (not d!1517385) (not b!4747928) (not d!1517355) (not b!4747939) tp_is_empty!31685 (not b!4747913) (not b!4747898) (not b!4747915) (not b!4747899) (not b!4747929) (not bm!332276) (not d!1517375) (not d!1517357) (not b!4747927) (not bm!332279) (not bm!332274) (not b!4747916) (not bm!332278) (not b!4747912))
(check-sat)
