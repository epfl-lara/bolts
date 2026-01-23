; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!485440 () Bool)

(assert start!485440)

(declare-fun res!2014514 () Bool)

(declare-fun e!2963522 () Bool)

(assert (=> start!485440 (=> (not res!2014514) (not e!2963522))))

(declare-datatypes ((K!14510 0))(
  ( (K!14511 (val!19879 Int)) )
))
(declare-datatypes ((V!14756 0))(
  ( (V!14757 (val!19880 Int)) )
))
(declare-datatypes ((tuple2!54848 0))(
  ( (tuple2!54849 (_1!30718 K!14510) (_2!30718 V!14756)) )
))
(declare-datatypes ((List!53206 0))(
  ( (Nil!53082) (Cons!53082 (h!59479 tuple2!54848) (t!360534 List!53206)) )
))
(declare-fun l!14304 () List!53206)

(declare-fun noDuplicateKeys!2144 (List!53206) Bool)

(assert (=> start!485440 (= res!2014514 (noDuplicateKeys!2144 l!14304))))

(assert (=> start!485440 e!2963522))

(declare-fun e!2963521 () Bool)

(assert (=> start!485440 e!2963521))

(declare-fun tp_is_empty!31869 () Bool)

(declare-fun tp_is_empty!31871 () Bool)

(assert (=> start!485440 (and tp_is_empty!31869 tp_is_empty!31871)))

(declare-datatypes ((ListMap!5533 0))(
  ( (ListMap!5534 (toList!6112 List!53206)) )
))
(declare-fun acc!1214 () ListMap!5533)

(declare-fun e!2963518 () Bool)

(declare-fun inv!68380 (ListMap!5533) Bool)

(assert (=> start!485440 (and (inv!68380 acc!1214) e!2963518)))

(declare-fun b!4750829 () Bool)

(declare-fun tp!1350144 () Bool)

(assert (=> b!4750829 (= e!2963518 tp!1350144)))

(declare-fun tp!1350145 () Bool)

(declare-fun b!4750830 () Bool)

(assert (=> b!4750830 (= e!2963521 (and tp_is_empty!31869 tp_is_empty!31871 tp!1350145))))

(declare-fun b!4750831 () Bool)

(declare-fun res!2014512 () Bool)

(declare-fun e!2963520 () Bool)

(assert (=> b!4750831 (=> (not res!2014512) (not e!2963520))))

(declare-fun lt!1914584 () ListMap!5533)

(declare-fun eq!1213 (ListMap!5533 ListMap!5533) Bool)

(declare-fun addToMapMapFromBucket!1568 (List!53206 ListMap!5533) ListMap!5533)

(assert (=> b!4750831 (= res!2014512 (eq!1213 lt!1914584 (addToMapMapFromBucket!1568 l!14304 acc!1214)))))

(declare-fun lt!1914582 () List!53206)

(declare-fun e!2963519 () Bool)

(declare-fun b!4750832 () Bool)

(declare-fun t!14174 () tuple2!54848)

(declare-fun +!2378 (ListMap!5533 tuple2!54848) ListMap!5533)

(assert (=> b!4750832 (= e!2963519 (not (eq!1213 (addToMapMapFromBucket!1568 lt!1914582 acc!1214) (addToMapMapFromBucket!1568 l!14304 (+!2378 acc!1214 t!14174)))))))

(assert (=> b!4750832 e!2963520))

(declare-fun res!2014511 () Bool)

(assert (=> b!4750832 (=> (not res!2014511) (not e!2963520))))

(declare-fun lt!1914585 () ListMap!5533)

(assert (=> b!4750832 (= res!2014511 (eq!1213 lt!1914585 (+!2378 lt!1914584 t!14174)))))

(declare-fun lt!1914583 () ListMap!5533)

(assert (=> b!4750832 (= lt!1914585 (addToMapMapFromBucket!1568 (Cons!53082 t!14174 (t!360534 l!14304)) lt!1914583))))

(declare-datatypes ((Unit!135600 0))(
  ( (Unit!135601) )
))
(declare-fun lt!1914581 () Unit!135600)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!458 (tuple2!54848 List!53206 ListMap!5533) Unit!135600)

(assert (=> b!4750832 (= lt!1914581 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!458 t!14174 (t!360534 l!14304) lt!1914583))))

(assert (=> b!4750832 (= lt!1914584 (addToMapMapFromBucket!1568 (t!360534 l!14304) lt!1914583))))

(assert (=> b!4750832 (= lt!1914583 (+!2378 acc!1214 (h!59479 l!14304)))))

(declare-fun b!4750833 () Bool)

(assert (=> b!4750833 (= e!2963522 e!2963519)))

(declare-fun res!2014513 () Bool)

(assert (=> b!4750833 (=> (not res!2014513) (not e!2963519))))

(assert (=> b!4750833 (= res!2014513 (noDuplicateKeys!2144 lt!1914582))))

(assert (=> b!4750833 (= lt!1914582 (Cons!53082 t!14174 l!14304))))

(declare-fun b!4750834 () Bool)

(declare-fun res!2014515 () Bool)

(assert (=> b!4750834 (=> (not res!2014515) (not e!2963519))))

(get-info :version)

(assert (=> b!4750834 (= res!2014515 (not ((_ is Nil!53082) l!14304)))))

(declare-fun b!4750835 () Bool)

(assert (=> b!4750835 (= e!2963520 (eq!1213 lt!1914585 (addToMapMapFromBucket!1568 (t!360534 l!14304) (+!2378 lt!1914583 t!14174))))))

(assert (= (and start!485440 res!2014514) b!4750833))

(assert (= (and b!4750833 res!2014513) b!4750834))

(assert (= (and b!4750834 res!2014515) b!4750832))

(assert (= (and b!4750832 res!2014511) b!4750831))

(assert (= (and b!4750831 res!2014512) b!4750835))

(assert (= (and start!485440 ((_ is Cons!53082) l!14304)) b!4750830))

(assert (= start!485440 b!4750829))

(declare-fun m!5712121 () Bool)

(assert (=> b!4750835 m!5712121))

(assert (=> b!4750835 m!5712121))

(declare-fun m!5712123 () Bool)

(assert (=> b!4750835 m!5712123))

(assert (=> b!4750835 m!5712123))

(declare-fun m!5712125 () Bool)

(assert (=> b!4750835 m!5712125))

(declare-fun m!5712127 () Bool)

(assert (=> b!4750832 m!5712127))

(declare-fun m!5712129 () Bool)

(assert (=> b!4750832 m!5712129))

(declare-fun m!5712131 () Bool)

(assert (=> b!4750832 m!5712131))

(declare-fun m!5712133 () Bool)

(assert (=> b!4750832 m!5712133))

(assert (=> b!4750832 m!5712131))

(declare-fun m!5712135 () Bool)

(assert (=> b!4750832 m!5712135))

(declare-fun m!5712137 () Bool)

(assert (=> b!4750832 m!5712137))

(declare-fun m!5712139 () Bool)

(assert (=> b!4750832 m!5712139))

(assert (=> b!4750832 m!5712137))

(assert (=> b!4750832 m!5712135))

(declare-fun m!5712141 () Bool)

(assert (=> b!4750832 m!5712141))

(declare-fun m!5712143 () Bool)

(assert (=> b!4750832 m!5712143))

(assert (=> b!4750832 m!5712143))

(declare-fun m!5712145 () Bool)

(assert (=> b!4750832 m!5712145))

(declare-fun m!5712147 () Bool)

(assert (=> b!4750831 m!5712147))

(assert (=> b!4750831 m!5712147))

(declare-fun m!5712149 () Bool)

(assert (=> b!4750831 m!5712149))

(declare-fun m!5712151 () Bool)

(assert (=> start!485440 m!5712151))

(declare-fun m!5712153 () Bool)

(assert (=> start!485440 m!5712153))

(declare-fun m!5712155 () Bool)

(assert (=> b!4750833 m!5712155))

(check-sat (not b!4750833) (not start!485440) (not b!4750835) (not b!4750830) tp_is_empty!31869 (not b!4750829) tp_is_empty!31871 (not b!4750832) (not b!4750831))
(check-sat)
(get-model)

(declare-fun d!1518392 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9524 (List!53206) (InoxSet tuple2!54848))

(assert (=> d!1518392 (= (eq!1213 lt!1914584 (addToMapMapFromBucket!1568 l!14304 acc!1214)) (= (content!9524 (toList!6112 lt!1914584)) (content!9524 (toList!6112 (addToMapMapFromBucket!1568 l!14304 acc!1214)))))))

(declare-fun bs!1140435 () Bool)

(assert (= bs!1140435 d!1518392))

(declare-fun m!5712163 () Bool)

(assert (=> bs!1140435 m!5712163))

(declare-fun m!5712165 () Bool)

(assert (=> bs!1140435 m!5712165))

(assert (=> b!4750831 d!1518392))

(declare-fun b!4750881 () Bool)

(assert (=> b!4750881 true))

(declare-fun bs!1140451 () Bool)

(declare-fun b!4750883 () Bool)

(assert (= bs!1140451 (and b!4750883 b!4750881)))

(declare-fun lambda!221846 () Int)

(declare-fun lambda!221845 () Int)

(assert (=> bs!1140451 (= lambda!221846 lambda!221845)))

(assert (=> b!4750883 true))

(declare-fun lt!1914742 () ListMap!5533)

(declare-fun lambda!221847 () Int)

(assert (=> bs!1140451 (= (= lt!1914742 acc!1214) (= lambda!221847 lambda!221845))))

(assert (=> b!4750883 (= (= lt!1914742 acc!1214) (= lambda!221847 lambda!221846))))

(assert (=> b!4750883 true))

(declare-fun bs!1140453 () Bool)

(declare-fun d!1518398 () Bool)

(assert (= bs!1140453 (and d!1518398 b!4750881)))

(declare-fun lt!1914724 () ListMap!5533)

(declare-fun lambda!221848 () Int)

(assert (=> bs!1140453 (= (= lt!1914724 acc!1214) (= lambda!221848 lambda!221845))))

(declare-fun bs!1140454 () Bool)

(assert (= bs!1140454 (and d!1518398 b!4750883)))

(assert (=> bs!1140454 (= (= lt!1914724 acc!1214) (= lambda!221848 lambda!221846))))

(assert (=> bs!1140454 (= (= lt!1914724 lt!1914742) (= lambda!221848 lambda!221847))))

(assert (=> d!1518398 true))

(declare-fun b!4750880 () Bool)

(declare-fun e!2963550 () Bool)

(declare-fun invariantList!1590 (List!53206) Bool)

(assert (=> b!4750880 (= e!2963550 (invariantList!1590 (toList!6112 lt!1914724)))))

(declare-fun call!332746 () Bool)

(declare-fun c!811166 () Bool)

(declare-fun bm!332739 () Bool)

(declare-fun forall!11758 (List!53206 Int) Bool)

(assert (=> bm!332739 (= call!332746 (forall!11758 (ite c!811166 (toList!6112 acc!1214) l!14304) (ite c!811166 lambda!221845 lambda!221847)))))

(assert (=> d!1518398 e!2963550))

(declare-fun res!2014547 () Bool)

(assert (=> d!1518398 (=> (not res!2014547) (not e!2963550))))

(assert (=> d!1518398 (= res!2014547 (forall!11758 l!14304 lambda!221848))))

(declare-fun e!2963552 () ListMap!5533)

(assert (=> d!1518398 (= lt!1914724 e!2963552)))

(assert (=> d!1518398 (= c!811166 ((_ is Nil!53082) l!14304))))

(assert (=> d!1518398 (noDuplicateKeys!2144 l!14304)))

(assert (=> d!1518398 (= (addToMapMapFromBucket!1568 l!14304 acc!1214) lt!1914724)))

(declare-fun bm!332740 () Bool)

(declare-fun call!332744 () Unit!135600)

(declare-fun lemmaContainsAllItsOwnKeys!873 (ListMap!5533) Unit!135600)

(assert (=> bm!332740 (= call!332744 (lemmaContainsAllItsOwnKeys!873 acc!1214))))

(declare-fun call!332745 () Bool)

(declare-fun bm!332741 () Bool)

(assert (=> bm!332741 (= call!332745 (forall!11758 (toList!6112 acc!1214) (ite c!811166 lambda!221845 lambda!221847)))))

(assert (=> b!4750881 (= e!2963552 acc!1214)))

(declare-fun lt!1914731 () Unit!135600)

(assert (=> b!4750881 (= lt!1914731 call!332744)))

(assert (=> b!4750881 call!332746))

(declare-fun lt!1914733 () Unit!135600)

(assert (=> b!4750881 (= lt!1914733 lt!1914731)))

(assert (=> b!4750881 call!332745))

(declare-fun lt!1914727 () Unit!135600)

(declare-fun Unit!135613 () Unit!135600)

(assert (=> b!4750881 (= lt!1914727 Unit!135613)))

(declare-fun b!4750882 () Bool)

(declare-fun e!2963551 () Bool)

(assert (=> b!4750882 (= e!2963551 call!332745)))

(assert (=> b!4750883 (= e!2963552 lt!1914742)))

(declare-fun lt!1914732 () ListMap!5533)

(assert (=> b!4750883 (= lt!1914732 (+!2378 acc!1214 (h!59479 l!14304)))))

(assert (=> b!4750883 (= lt!1914742 (addToMapMapFromBucket!1568 (t!360534 l!14304) (+!2378 acc!1214 (h!59479 l!14304))))))

(declare-fun lt!1914737 () Unit!135600)

(assert (=> b!4750883 (= lt!1914737 call!332744)))

(assert (=> b!4750883 (forall!11758 (toList!6112 acc!1214) lambda!221846)))

(declare-fun lt!1914743 () Unit!135600)

(assert (=> b!4750883 (= lt!1914743 lt!1914737)))

(assert (=> b!4750883 (forall!11758 (toList!6112 lt!1914732) lambda!221847)))

(declare-fun lt!1914728 () Unit!135600)

(declare-fun Unit!135614 () Unit!135600)

(assert (=> b!4750883 (= lt!1914728 Unit!135614)))

(assert (=> b!4750883 (forall!11758 (t!360534 l!14304) lambda!221847)))

(declare-fun lt!1914744 () Unit!135600)

(declare-fun Unit!135615 () Unit!135600)

(assert (=> b!4750883 (= lt!1914744 Unit!135615)))

(declare-fun lt!1914734 () Unit!135600)

(declare-fun Unit!135616 () Unit!135600)

(assert (=> b!4750883 (= lt!1914734 Unit!135616)))

(declare-fun lt!1914726 () Unit!135600)

(declare-fun forallContained!3784 (List!53206 Int tuple2!54848) Unit!135600)

(assert (=> b!4750883 (= lt!1914726 (forallContained!3784 (toList!6112 lt!1914732) lambda!221847 (h!59479 l!14304)))))

(declare-fun contains!16502 (ListMap!5533 K!14510) Bool)

(assert (=> b!4750883 (contains!16502 lt!1914732 (_1!30718 (h!59479 l!14304)))))

(declare-fun lt!1914729 () Unit!135600)

(declare-fun Unit!135617 () Unit!135600)

(assert (=> b!4750883 (= lt!1914729 Unit!135617)))

(assert (=> b!4750883 (contains!16502 lt!1914742 (_1!30718 (h!59479 l!14304)))))

(declare-fun lt!1914730 () Unit!135600)

(declare-fun Unit!135618 () Unit!135600)

(assert (=> b!4750883 (= lt!1914730 Unit!135618)))

(assert (=> b!4750883 call!332746))

(declare-fun lt!1914741 () Unit!135600)

(declare-fun Unit!135619 () Unit!135600)

(assert (=> b!4750883 (= lt!1914741 Unit!135619)))

(assert (=> b!4750883 (forall!11758 (toList!6112 lt!1914732) lambda!221847)))

(declare-fun lt!1914740 () Unit!135600)

(declare-fun Unit!135620 () Unit!135600)

(assert (=> b!4750883 (= lt!1914740 Unit!135620)))

(declare-fun lt!1914736 () Unit!135600)

(declare-fun Unit!135621 () Unit!135600)

(assert (=> b!4750883 (= lt!1914736 Unit!135621)))

(declare-fun lt!1914739 () Unit!135600)

(declare-fun addForallContainsKeyThenBeforeAdding!872 (ListMap!5533 ListMap!5533 K!14510 V!14756) Unit!135600)

(assert (=> b!4750883 (= lt!1914739 (addForallContainsKeyThenBeforeAdding!872 acc!1214 lt!1914742 (_1!30718 (h!59479 l!14304)) (_2!30718 (h!59479 l!14304))))))

(assert (=> b!4750883 (forall!11758 (toList!6112 acc!1214) lambda!221847)))

(declare-fun lt!1914725 () Unit!135600)

(assert (=> b!4750883 (= lt!1914725 lt!1914739)))

(assert (=> b!4750883 (forall!11758 (toList!6112 acc!1214) lambda!221847)))

(declare-fun lt!1914738 () Unit!135600)

(declare-fun Unit!135622 () Unit!135600)

(assert (=> b!4750883 (= lt!1914738 Unit!135622)))

(declare-fun res!2014548 () Bool)

(assert (=> b!4750883 (= res!2014548 (forall!11758 l!14304 lambda!221847))))

(assert (=> b!4750883 (=> (not res!2014548) (not e!2963551))))

(assert (=> b!4750883 e!2963551))

(declare-fun lt!1914735 () Unit!135600)

(declare-fun Unit!135623 () Unit!135600)

(assert (=> b!4750883 (= lt!1914735 Unit!135623)))

(declare-fun b!4750884 () Bool)

(declare-fun res!2014546 () Bool)

(assert (=> b!4750884 (=> (not res!2014546) (not e!2963550))))

(assert (=> b!4750884 (= res!2014546 (forall!11758 (toList!6112 acc!1214) lambda!221848))))

(assert (= (and d!1518398 c!811166) b!4750881))

(assert (= (and d!1518398 (not c!811166)) b!4750883))

(assert (= (and b!4750883 res!2014548) b!4750882))

(assert (= (or b!4750881 b!4750883) bm!332740))

(assert (= (or b!4750881 b!4750882) bm!332741))

(assert (= (or b!4750881 b!4750883) bm!332739))

(assert (= (and d!1518398 res!2014547) b!4750884))

(assert (= (and b!4750884 res!2014546) b!4750880))

(declare-fun m!5712277 () Bool)

(assert (=> b!4750884 m!5712277))

(declare-fun m!5712279 () Bool)

(assert (=> bm!332739 m!5712279))

(declare-fun m!5712281 () Bool)

(assert (=> b!4750883 m!5712281))

(declare-fun m!5712283 () Bool)

(assert (=> b!4750883 m!5712283))

(declare-fun m!5712285 () Bool)

(assert (=> b!4750883 m!5712285))

(declare-fun m!5712287 () Bool)

(assert (=> b!4750883 m!5712287))

(declare-fun m!5712289 () Bool)

(assert (=> b!4750883 m!5712289))

(assert (=> b!4750883 m!5712127))

(declare-fun m!5712291 () Bool)

(assert (=> b!4750883 m!5712291))

(declare-fun m!5712293 () Bool)

(assert (=> b!4750883 m!5712293))

(assert (=> b!4750883 m!5712283))

(declare-fun m!5712295 () Bool)

(assert (=> b!4750883 m!5712295))

(declare-fun m!5712297 () Bool)

(assert (=> b!4750883 m!5712297))

(declare-fun m!5712299 () Bool)

(assert (=> b!4750883 m!5712299))

(assert (=> b!4750883 m!5712127))

(assert (=> b!4750883 m!5712289))

(declare-fun m!5712301 () Bool)

(assert (=> bm!332740 m!5712301))

(declare-fun m!5712303 () Bool)

(assert (=> d!1518398 m!5712303))

(assert (=> d!1518398 m!5712151))

(declare-fun m!5712305 () Bool)

(assert (=> bm!332741 m!5712305))

(declare-fun m!5712307 () Bool)

(assert (=> b!4750880 m!5712307))

(assert (=> b!4750831 d!1518398))

(declare-fun bs!1140467 () Bool)

(declare-fun b!4750897 () Bool)

(assert (= bs!1140467 (and b!4750897 b!4750881)))

(declare-fun lambda!221851 () Int)

(assert (=> bs!1140467 (= (= (+!2378 acc!1214 t!14174) acc!1214) (= lambda!221851 lambda!221845))))

(declare-fun bs!1140469 () Bool)

(assert (= bs!1140469 (and b!4750897 b!4750883)))

(assert (=> bs!1140469 (= (= (+!2378 acc!1214 t!14174) acc!1214) (= lambda!221851 lambda!221846))))

(assert (=> bs!1140469 (= (= (+!2378 acc!1214 t!14174) lt!1914742) (= lambda!221851 lambda!221847))))

(declare-fun bs!1140470 () Bool)

(assert (= bs!1140470 (and b!4750897 d!1518398)))

(assert (=> bs!1140470 (= (= (+!2378 acc!1214 t!14174) lt!1914724) (= lambda!221851 lambda!221848))))

(assert (=> b!4750897 true))

(declare-fun bs!1140471 () Bool)

(declare-fun b!4750899 () Bool)

(assert (= bs!1140471 (and b!4750899 b!4750897)))

(declare-fun lambda!221853 () Int)

(assert (=> bs!1140471 (= lambda!221853 lambda!221851)))

(declare-fun bs!1140472 () Bool)

(assert (= bs!1140472 (and b!4750899 b!4750883)))

(assert (=> bs!1140472 (= (= (+!2378 acc!1214 t!14174) lt!1914742) (= lambda!221853 lambda!221847))))

(declare-fun bs!1140473 () Bool)

(assert (= bs!1140473 (and b!4750899 b!4750881)))

(assert (=> bs!1140473 (= (= (+!2378 acc!1214 t!14174) acc!1214) (= lambda!221853 lambda!221845))))

(assert (=> bs!1140472 (= (= (+!2378 acc!1214 t!14174) acc!1214) (= lambda!221853 lambda!221846))))

(declare-fun bs!1140474 () Bool)

(assert (= bs!1140474 (and b!4750899 d!1518398)))

(assert (=> bs!1140474 (= (= (+!2378 acc!1214 t!14174) lt!1914724) (= lambda!221853 lambda!221848))))

(assert (=> b!4750899 true))

(declare-fun lt!1914795 () ListMap!5533)

(declare-fun lambda!221854 () Int)

(assert (=> bs!1140471 (= (= lt!1914795 (+!2378 acc!1214 t!14174)) (= lambda!221854 lambda!221851))))

(assert (=> bs!1140472 (= (= lt!1914795 lt!1914742) (= lambda!221854 lambda!221847))))

(assert (=> b!4750899 (= (= lt!1914795 (+!2378 acc!1214 t!14174)) (= lambda!221854 lambda!221853))))

(assert (=> bs!1140473 (= (= lt!1914795 acc!1214) (= lambda!221854 lambda!221845))))

(assert (=> bs!1140472 (= (= lt!1914795 acc!1214) (= lambda!221854 lambda!221846))))

(assert (=> bs!1140474 (= (= lt!1914795 lt!1914724) (= lambda!221854 lambda!221848))))

(assert (=> b!4750899 true))

(declare-fun bs!1140482 () Bool)

(declare-fun d!1518412 () Bool)

(assert (= bs!1140482 (and d!1518412 b!4750897)))

(declare-fun lambda!221856 () Int)

(declare-fun lt!1914777 () ListMap!5533)

(assert (=> bs!1140482 (= (= lt!1914777 (+!2378 acc!1214 t!14174)) (= lambda!221856 lambda!221851))))

(declare-fun bs!1140484 () Bool)

(assert (= bs!1140484 (and d!1518412 b!4750883)))

(assert (=> bs!1140484 (= (= lt!1914777 lt!1914742) (= lambda!221856 lambda!221847))))

(declare-fun bs!1140485 () Bool)

(assert (= bs!1140485 (and d!1518412 b!4750899)))

(assert (=> bs!1140485 (= (= lt!1914777 (+!2378 acc!1214 t!14174)) (= lambda!221856 lambda!221853))))

(declare-fun bs!1140486 () Bool)

(assert (= bs!1140486 (and d!1518412 b!4750881)))

(assert (=> bs!1140486 (= (= lt!1914777 acc!1214) (= lambda!221856 lambda!221845))))

(assert (=> bs!1140485 (= (= lt!1914777 lt!1914795) (= lambda!221856 lambda!221854))))

(assert (=> bs!1140484 (= (= lt!1914777 acc!1214) (= lambda!221856 lambda!221846))))

(declare-fun bs!1140487 () Bool)

(assert (= bs!1140487 (and d!1518412 d!1518398)))

(assert (=> bs!1140487 (= (= lt!1914777 lt!1914724) (= lambda!221856 lambda!221848))))

(assert (=> d!1518412 true))

(declare-fun b!4750896 () Bool)

(declare-fun e!2963558 () Bool)

(assert (=> b!4750896 (= e!2963558 (invariantList!1590 (toList!6112 lt!1914777)))))

(declare-fun call!332752 () Bool)

(declare-fun c!811168 () Bool)

(declare-fun bm!332745 () Bool)

(assert (=> bm!332745 (= call!332752 (forall!11758 (ite c!811168 (toList!6112 (+!2378 acc!1214 t!14174)) l!14304) (ite c!811168 lambda!221851 lambda!221854)))))

(assert (=> d!1518412 e!2963558))

(declare-fun res!2014557 () Bool)

(assert (=> d!1518412 (=> (not res!2014557) (not e!2963558))))

(assert (=> d!1518412 (= res!2014557 (forall!11758 l!14304 lambda!221856))))

(declare-fun e!2963560 () ListMap!5533)

(assert (=> d!1518412 (= lt!1914777 e!2963560)))

(assert (=> d!1518412 (= c!811168 ((_ is Nil!53082) l!14304))))

(assert (=> d!1518412 (noDuplicateKeys!2144 l!14304)))

(assert (=> d!1518412 (= (addToMapMapFromBucket!1568 l!14304 (+!2378 acc!1214 t!14174)) lt!1914777)))

(declare-fun bm!332746 () Bool)

(declare-fun call!332750 () Unit!135600)

(assert (=> bm!332746 (= call!332750 (lemmaContainsAllItsOwnKeys!873 (+!2378 acc!1214 t!14174)))))

(declare-fun call!332751 () Bool)

(declare-fun bm!332747 () Bool)

(assert (=> bm!332747 (= call!332751 (forall!11758 (toList!6112 (+!2378 acc!1214 t!14174)) (ite c!811168 lambda!221851 lambda!221854)))))

(assert (=> b!4750897 (= e!2963560 (+!2378 acc!1214 t!14174))))

(declare-fun lt!1914784 () Unit!135600)

(assert (=> b!4750897 (= lt!1914784 call!332750)))

(assert (=> b!4750897 call!332752))

(declare-fun lt!1914786 () Unit!135600)

(assert (=> b!4750897 (= lt!1914786 lt!1914784)))

(assert (=> b!4750897 call!332751))

(declare-fun lt!1914780 () Unit!135600)

(declare-fun Unit!135635 () Unit!135600)

(assert (=> b!4750897 (= lt!1914780 Unit!135635)))

(declare-fun b!4750898 () Bool)

(declare-fun e!2963559 () Bool)

(assert (=> b!4750898 (= e!2963559 call!332751)))

(assert (=> b!4750899 (= e!2963560 lt!1914795)))

(declare-fun lt!1914785 () ListMap!5533)

(assert (=> b!4750899 (= lt!1914785 (+!2378 (+!2378 acc!1214 t!14174) (h!59479 l!14304)))))

(assert (=> b!4750899 (= lt!1914795 (addToMapMapFromBucket!1568 (t!360534 l!14304) (+!2378 (+!2378 acc!1214 t!14174) (h!59479 l!14304))))))

(declare-fun lt!1914790 () Unit!135600)

(assert (=> b!4750899 (= lt!1914790 call!332750)))

(assert (=> b!4750899 (forall!11758 (toList!6112 (+!2378 acc!1214 t!14174)) lambda!221853)))

(declare-fun lt!1914796 () Unit!135600)

(assert (=> b!4750899 (= lt!1914796 lt!1914790)))

(assert (=> b!4750899 (forall!11758 (toList!6112 lt!1914785) lambda!221854)))

(declare-fun lt!1914781 () Unit!135600)

(declare-fun Unit!135636 () Unit!135600)

(assert (=> b!4750899 (= lt!1914781 Unit!135636)))

(assert (=> b!4750899 (forall!11758 (t!360534 l!14304) lambda!221854)))

(declare-fun lt!1914797 () Unit!135600)

(declare-fun Unit!135637 () Unit!135600)

(assert (=> b!4750899 (= lt!1914797 Unit!135637)))

(declare-fun lt!1914787 () Unit!135600)

(declare-fun Unit!135638 () Unit!135600)

(assert (=> b!4750899 (= lt!1914787 Unit!135638)))

(declare-fun lt!1914779 () Unit!135600)

(assert (=> b!4750899 (= lt!1914779 (forallContained!3784 (toList!6112 lt!1914785) lambda!221854 (h!59479 l!14304)))))

(assert (=> b!4750899 (contains!16502 lt!1914785 (_1!30718 (h!59479 l!14304)))))

(declare-fun lt!1914782 () Unit!135600)

(declare-fun Unit!135639 () Unit!135600)

(assert (=> b!4750899 (= lt!1914782 Unit!135639)))

(assert (=> b!4750899 (contains!16502 lt!1914795 (_1!30718 (h!59479 l!14304)))))

(declare-fun lt!1914783 () Unit!135600)

(declare-fun Unit!135640 () Unit!135600)

(assert (=> b!4750899 (= lt!1914783 Unit!135640)))

(assert (=> b!4750899 call!332752))

(declare-fun lt!1914794 () Unit!135600)

(declare-fun Unit!135641 () Unit!135600)

(assert (=> b!4750899 (= lt!1914794 Unit!135641)))

(assert (=> b!4750899 (forall!11758 (toList!6112 lt!1914785) lambda!221854)))

(declare-fun lt!1914793 () Unit!135600)

(declare-fun Unit!135642 () Unit!135600)

(assert (=> b!4750899 (= lt!1914793 Unit!135642)))

(declare-fun lt!1914789 () Unit!135600)

(declare-fun Unit!135643 () Unit!135600)

(assert (=> b!4750899 (= lt!1914789 Unit!135643)))

(declare-fun lt!1914792 () Unit!135600)

(assert (=> b!4750899 (= lt!1914792 (addForallContainsKeyThenBeforeAdding!872 (+!2378 acc!1214 t!14174) lt!1914795 (_1!30718 (h!59479 l!14304)) (_2!30718 (h!59479 l!14304))))))

(assert (=> b!4750899 (forall!11758 (toList!6112 (+!2378 acc!1214 t!14174)) lambda!221854)))

(declare-fun lt!1914778 () Unit!135600)

(assert (=> b!4750899 (= lt!1914778 lt!1914792)))

(assert (=> b!4750899 (forall!11758 (toList!6112 (+!2378 acc!1214 t!14174)) lambda!221854)))

(declare-fun lt!1914791 () Unit!135600)

(declare-fun Unit!135644 () Unit!135600)

(assert (=> b!4750899 (= lt!1914791 Unit!135644)))

(declare-fun res!2014558 () Bool)

(assert (=> b!4750899 (= res!2014558 (forall!11758 l!14304 lambda!221854))))

(assert (=> b!4750899 (=> (not res!2014558) (not e!2963559))))

(assert (=> b!4750899 e!2963559))

(declare-fun lt!1914788 () Unit!135600)

(declare-fun Unit!135645 () Unit!135600)

(assert (=> b!4750899 (= lt!1914788 Unit!135645)))

(declare-fun b!4750900 () Bool)

(declare-fun res!2014556 () Bool)

(assert (=> b!4750900 (=> (not res!2014556) (not e!2963558))))

(assert (=> b!4750900 (= res!2014556 (forall!11758 (toList!6112 (+!2378 acc!1214 t!14174)) lambda!221856))))

(assert (= (and d!1518412 c!811168) b!4750897))

(assert (= (and d!1518412 (not c!811168)) b!4750899))

(assert (= (and b!4750899 res!2014558) b!4750898))

(assert (= (or b!4750897 b!4750899) bm!332746))

(assert (= (or b!4750897 b!4750898) bm!332747))

(assert (= (or b!4750897 b!4750899) bm!332745))

(assert (= (and d!1518412 res!2014557) b!4750900))

(assert (= (and b!4750900 res!2014556) b!4750896))

(declare-fun m!5712327 () Bool)

(assert (=> b!4750900 m!5712327))

(declare-fun m!5712335 () Bool)

(assert (=> bm!332745 m!5712335))

(declare-fun m!5712337 () Bool)

(assert (=> b!4750899 m!5712337))

(declare-fun m!5712339 () Bool)

(assert (=> b!4750899 m!5712339))

(declare-fun m!5712343 () Bool)

(assert (=> b!4750899 m!5712343))

(declare-fun m!5712345 () Bool)

(assert (=> b!4750899 m!5712345))

(declare-fun m!5712349 () Bool)

(assert (=> b!4750899 m!5712349))

(declare-fun m!5712353 () Bool)

(assert (=> b!4750899 m!5712353))

(declare-fun m!5712357 () Bool)

(assert (=> b!4750899 m!5712357))

(declare-fun m!5712361 () Bool)

(assert (=> b!4750899 m!5712361))

(assert (=> b!4750899 m!5712339))

(assert (=> b!4750899 m!5712131))

(declare-fun m!5712363 () Bool)

(assert (=> b!4750899 m!5712363))

(declare-fun m!5712365 () Bool)

(assert (=> b!4750899 m!5712365))

(declare-fun m!5712367 () Bool)

(assert (=> b!4750899 m!5712367))

(assert (=> b!4750899 m!5712131))

(assert (=> b!4750899 m!5712353))

(assert (=> b!4750899 m!5712349))

(assert (=> bm!332746 m!5712131))

(declare-fun m!5712369 () Bool)

(assert (=> bm!332746 m!5712369))

(declare-fun m!5712371 () Bool)

(assert (=> d!1518412 m!5712371))

(assert (=> d!1518412 m!5712151))

(declare-fun m!5712373 () Bool)

(assert (=> bm!332747 m!5712373))

(declare-fun m!5712375 () Bool)

(assert (=> b!4750896 m!5712375))

(assert (=> b!4750832 d!1518412))

(declare-fun d!1518416 () Bool)

(declare-fun e!2963569 () Bool)

(assert (=> d!1518416 e!2963569))

(declare-fun res!2014570 () Bool)

(assert (=> d!1518416 (=> (not res!2014570) (not e!2963569))))

(declare-fun lt!1914851 () ListMap!5533)

(assert (=> d!1518416 (= res!2014570 (contains!16502 lt!1914851 (_1!30718 t!14174)))))

(declare-fun lt!1914848 () List!53206)

(assert (=> d!1518416 (= lt!1914851 (ListMap!5534 lt!1914848))))

(declare-fun lt!1914850 () Unit!135600)

(declare-fun lt!1914849 () Unit!135600)

(assert (=> d!1518416 (= lt!1914850 lt!1914849)))

(declare-datatypes ((Option!12527 0))(
  ( (None!12526) (Some!12526 (v!47225 V!14756)) )
))
(declare-fun getValueByKey!2077 (List!53206 K!14510) Option!12527)

(assert (=> d!1518416 (= (getValueByKey!2077 lt!1914848 (_1!30718 t!14174)) (Some!12526 (_2!30718 t!14174)))))

(declare-fun lemmaContainsTupThenGetReturnValue!1154 (List!53206 K!14510 V!14756) Unit!135600)

(assert (=> d!1518416 (= lt!1914849 (lemmaContainsTupThenGetReturnValue!1154 lt!1914848 (_1!30718 t!14174) (_2!30718 t!14174)))))

(declare-fun insertNoDuplicatedKeys!662 (List!53206 K!14510 V!14756) List!53206)

(assert (=> d!1518416 (= lt!1914848 (insertNoDuplicatedKeys!662 (toList!6112 acc!1214) (_1!30718 t!14174) (_2!30718 t!14174)))))

(assert (=> d!1518416 (= (+!2378 acc!1214 t!14174) lt!1914851)))

(declare-fun b!4750915 () Bool)

(declare-fun res!2014569 () Bool)

(assert (=> b!4750915 (=> (not res!2014569) (not e!2963569))))

(assert (=> b!4750915 (= res!2014569 (= (getValueByKey!2077 (toList!6112 lt!1914851) (_1!30718 t!14174)) (Some!12526 (_2!30718 t!14174))))))

(declare-fun b!4750916 () Bool)

(declare-fun contains!16503 (List!53206 tuple2!54848) Bool)

(assert (=> b!4750916 (= e!2963569 (contains!16503 (toList!6112 lt!1914851) t!14174))))

(assert (= (and d!1518416 res!2014570) b!4750915))

(assert (= (and b!4750915 res!2014569) b!4750916))

(declare-fun m!5712423 () Bool)

(assert (=> d!1518416 m!5712423))

(declare-fun m!5712425 () Bool)

(assert (=> d!1518416 m!5712425))

(declare-fun m!5712427 () Bool)

(assert (=> d!1518416 m!5712427))

(declare-fun m!5712429 () Bool)

(assert (=> d!1518416 m!5712429))

(declare-fun m!5712431 () Bool)

(assert (=> b!4750915 m!5712431))

(declare-fun m!5712433 () Bool)

(assert (=> b!4750916 m!5712433))

(assert (=> b!4750832 d!1518416))

(declare-fun bs!1140534 () Bool)

(declare-fun b!4750918 () Bool)

(assert (= bs!1140534 (and b!4750918 b!4750897)))

(declare-fun lambda!221863 () Int)

(assert (=> bs!1140534 (= (= lt!1914583 (+!2378 acc!1214 t!14174)) (= lambda!221863 lambda!221851))))

(declare-fun bs!1140537 () Bool)

(assert (= bs!1140537 (and b!4750918 b!4750883)))

(assert (=> bs!1140537 (= (= lt!1914583 lt!1914742) (= lambda!221863 lambda!221847))))

(declare-fun bs!1140539 () Bool)

(assert (= bs!1140539 (and b!4750918 b!4750899)))

(assert (=> bs!1140539 (= (= lt!1914583 (+!2378 acc!1214 t!14174)) (= lambda!221863 lambda!221853))))

(declare-fun bs!1140541 () Bool)

(assert (= bs!1140541 (and b!4750918 d!1518412)))

(assert (=> bs!1140541 (= (= lt!1914583 lt!1914777) (= lambda!221863 lambda!221856))))

(declare-fun bs!1140543 () Bool)

(assert (= bs!1140543 (and b!4750918 b!4750881)))

(assert (=> bs!1140543 (= (= lt!1914583 acc!1214) (= lambda!221863 lambda!221845))))

(assert (=> bs!1140539 (= (= lt!1914583 lt!1914795) (= lambda!221863 lambda!221854))))

(assert (=> bs!1140537 (= (= lt!1914583 acc!1214) (= lambda!221863 lambda!221846))))

(declare-fun bs!1140547 () Bool)

(assert (= bs!1140547 (and b!4750918 d!1518398)))

(assert (=> bs!1140547 (= (= lt!1914583 lt!1914724) (= lambda!221863 lambda!221848))))

(assert (=> b!4750918 true))

(declare-fun bs!1140552 () Bool)

(declare-fun b!4750920 () Bool)

(assert (= bs!1140552 (and b!4750920 b!4750897)))

(declare-fun lambda!221864 () Int)

(assert (=> bs!1140552 (= (= lt!1914583 (+!2378 acc!1214 t!14174)) (= lambda!221864 lambda!221851))))

(declare-fun bs!1140553 () Bool)

(assert (= bs!1140553 (and b!4750920 b!4750883)))

(assert (=> bs!1140553 (= (= lt!1914583 lt!1914742) (= lambda!221864 lambda!221847))))

(declare-fun bs!1140554 () Bool)

(assert (= bs!1140554 (and b!4750920 b!4750899)))

(assert (=> bs!1140554 (= (= lt!1914583 (+!2378 acc!1214 t!14174)) (= lambda!221864 lambda!221853))))

(declare-fun bs!1140555 () Bool)

(assert (= bs!1140555 (and b!4750920 d!1518412)))

(assert (=> bs!1140555 (= (= lt!1914583 lt!1914777) (= lambda!221864 lambda!221856))))

(declare-fun bs!1140556 () Bool)

(assert (= bs!1140556 (and b!4750920 b!4750881)))

(assert (=> bs!1140556 (= (= lt!1914583 acc!1214) (= lambda!221864 lambda!221845))))

(assert (=> bs!1140554 (= (= lt!1914583 lt!1914795) (= lambda!221864 lambda!221854))))

(declare-fun bs!1140557 () Bool)

(assert (= bs!1140557 (and b!4750920 d!1518398)))

(assert (=> bs!1140557 (= (= lt!1914583 lt!1914724) (= lambda!221864 lambda!221848))))

(assert (=> bs!1140553 (= (= lt!1914583 acc!1214) (= lambda!221864 lambda!221846))))

(declare-fun bs!1140558 () Bool)

(assert (= bs!1140558 (and b!4750920 b!4750918)))

(assert (=> bs!1140558 (= lambda!221864 lambda!221863)))

(assert (=> b!4750920 true))

(declare-fun lt!1914870 () ListMap!5533)

(declare-fun lambda!221866 () Int)

(assert (=> bs!1140552 (= (= lt!1914870 (+!2378 acc!1214 t!14174)) (= lambda!221866 lambda!221851))))

(assert (=> bs!1140553 (= (= lt!1914870 lt!1914742) (= lambda!221866 lambda!221847))))

(assert (=> bs!1140554 (= (= lt!1914870 (+!2378 acc!1214 t!14174)) (= lambda!221866 lambda!221853))))

(assert (=> bs!1140555 (= (= lt!1914870 lt!1914777) (= lambda!221866 lambda!221856))))

(assert (=> bs!1140554 (= (= lt!1914870 lt!1914795) (= lambda!221866 lambda!221854))))

(assert (=> bs!1140557 (= (= lt!1914870 lt!1914724) (= lambda!221866 lambda!221848))))

(assert (=> b!4750920 (= (= lt!1914870 lt!1914583) (= lambda!221866 lambda!221864))))

(assert (=> bs!1140556 (= (= lt!1914870 acc!1214) (= lambda!221866 lambda!221845))))

(assert (=> bs!1140553 (= (= lt!1914870 acc!1214) (= lambda!221866 lambda!221846))))

(assert (=> bs!1140558 (= (= lt!1914870 lt!1914583) (= lambda!221866 lambda!221863))))

(assert (=> b!4750920 true))

(declare-fun bs!1140560 () Bool)

(declare-fun d!1518426 () Bool)

(assert (= bs!1140560 (and d!1518426 b!4750897)))

(declare-fun lambda!221868 () Int)

(declare-fun lt!1914852 () ListMap!5533)

(assert (=> bs!1140560 (= (= lt!1914852 (+!2378 acc!1214 t!14174)) (= lambda!221868 lambda!221851))))

(declare-fun bs!1140562 () Bool)

(assert (= bs!1140562 (and d!1518426 b!4750883)))

(assert (=> bs!1140562 (= (= lt!1914852 lt!1914742) (= lambda!221868 lambda!221847))))

(declare-fun bs!1140564 () Bool)

(assert (= bs!1140564 (and d!1518426 b!4750899)))

(assert (=> bs!1140564 (= (= lt!1914852 (+!2378 acc!1214 t!14174)) (= lambda!221868 lambda!221853))))

(declare-fun bs!1140566 () Bool)

(assert (= bs!1140566 (and d!1518426 d!1518412)))

(assert (=> bs!1140566 (= (= lt!1914852 lt!1914777) (= lambda!221868 lambda!221856))))

(declare-fun bs!1140568 () Bool)

(assert (= bs!1140568 (and d!1518426 b!4750920)))

(assert (=> bs!1140568 (= (= lt!1914852 lt!1914870) (= lambda!221868 lambda!221866))))

(assert (=> bs!1140564 (= (= lt!1914852 lt!1914795) (= lambda!221868 lambda!221854))))

(declare-fun bs!1140571 () Bool)

(assert (= bs!1140571 (and d!1518426 d!1518398)))

(assert (=> bs!1140571 (= (= lt!1914852 lt!1914724) (= lambda!221868 lambda!221848))))

(assert (=> bs!1140568 (= (= lt!1914852 lt!1914583) (= lambda!221868 lambda!221864))))

(declare-fun bs!1140574 () Bool)

(assert (= bs!1140574 (and d!1518426 b!4750881)))

(assert (=> bs!1140574 (= (= lt!1914852 acc!1214) (= lambda!221868 lambda!221845))))

(assert (=> bs!1140562 (= (= lt!1914852 acc!1214) (= lambda!221868 lambda!221846))))

(declare-fun bs!1140576 () Bool)

(assert (= bs!1140576 (and d!1518426 b!4750918)))

(assert (=> bs!1140576 (= (= lt!1914852 lt!1914583) (= lambda!221868 lambda!221863))))

(assert (=> d!1518426 true))

(declare-fun b!4750917 () Bool)

(declare-fun e!2963570 () Bool)

(assert (=> b!4750917 (= e!2963570 (invariantList!1590 (toList!6112 lt!1914852)))))

(declare-fun bm!332754 () Bool)

(declare-fun call!332761 () Bool)

(declare-fun c!811171 () Bool)

(assert (=> bm!332754 (= call!332761 (forall!11758 (ite c!811171 (toList!6112 lt!1914583) (t!360534 l!14304)) (ite c!811171 lambda!221863 lambda!221866)))))

(assert (=> d!1518426 e!2963570))

(declare-fun res!2014572 () Bool)

(assert (=> d!1518426 (=> (not res!2014572) (not e!2963570))))

(assert (=> d!1518426 (= res!2014572 (forall!11758 (t!360534 l!14304) lambda!221868))))

(declare-fun e!2963572 () ListMap!5533)

(assert (=> d!1518426 (= lt!1914852 e!2963572)))

(assert (=> d!1518426 (= c!811171 ((_ is Nil!53082) (t!360534 l!14304)))))

(assert (=> d!1518426 (noDuplicateKeys!2144 (t!360534 l!14304))))

(assert (=> d!1518426 (= (addToMapMapFromBucket!1568 (t!360534 l!14304) lt!1914583) lt!1914852)))

(declare-fun bm!332755 () Bool)

(declare-fun call!332759 () Unit!135600)

(assert (=> bm!332755 (= call!332759 (lemmaContainsAllItsOwnKeys!873 lt!1914583))))

(declare-fun call!332760 () Bool)

(declare-fun bm!332756 () Bool)

(assert (=> bm!332756 (= call!332760 (forall!11758 (toList!6112 lt!1914583) (ite c!811171 lambda!221863 lambda!221866)))))

(assert (=> b!4750918 (= e!2963572 lt!1914583)))

(declare-fun lt!1914859 () Unit!135600)

(assert (=> b!4750918 (= lt!1914859 call!332759)))

(assert (=> b!4750918 call!332761))

(declare-fun lt!1914861 () Unit!135600)

(assert (=> b!4750918 (= lt!1914861 lt!1914859)))

(assert (=> b!4750918 call!332760))

(declare-fun lt!1914855 () Unit!135600)

(declare-fun Unit!135656 () Unit!135600)

(assert (=> b!4750918 (= lt!1914855 Unit!135656)))

(declare-fun b!4750919 () Bool)

(declare-fun e!2963571 () Bool)

(assert (=> b!4750919 (= e!2963571 call!332760)))

(assert (=> b!4750920 (= e!2963572 lt!1914870)))

(declare-fun lt!1914860 () ListMap!5533)

(assert (=> b!4750920 (= lt!1914860 (+!2378 lt!1914583 (h!59479 (t!360534 l!14304))))))

(assert (=> b!4750920 (= lt!1914870 (addToMapMapFromBucket!1568 (t!360534 (t!360534 l!14304)) (+!2378 lt!1914583 (h!59479 (t!360534 l!14304)))))))

(declare-fun lt!1914865 () Unit!135600)

(assert (=> b!4750920 (= lt!1914865 call!332759)))

(assert (=> b!4750920 (forall!11758 (toList!6112 lt!1914583) lambda!221864)))

(declare-fun lt!1914871 () Unit!135600)

(assert (=> b!4750920 (= lt!1914871 lt!1914865)))

(assert (=> b!4750920 (forall!11758 (toList!6112 lt!1914860) lambda!221866)))

(declare-fun lt!1914856 () Unit!135600)

(declare-fun Unit!135658 () Unit!135600)

(assert (=> b!4750920 (= lt!1914856 Unit!135658)))

(assert (=> b!4750920 (forall!11758 (t!360534 (t!360534 l!14304)) lambda!221866)))

(declare-fun lt!1914872 () Unit!135600)

(declare-fun Unit!135659 () Unit!135600)

(assert (=> b!4750920 (= lt!1914872 Unit!135659)))

(declare-fun lt!1914862 () Unit!135600)

(declare-fun Unit!135660 () Unit!135600)

(assert (=> b!4750920 (= lt!1914862 Unit!135660)))

(declare-fun lt!1914854 () Unit!135600)

(assert (=> b!4750920 (= lt!1914854 (forallContained!3784 (toList!6112 lt!1914860) lambda!221866 (h!59479 (t!360534 l!14304))))))

(assert (=> b!4750920 (contains!16502 lt!1914860 (_1!30718 (h!59479 (t!360534 l!14304))))))

(declare-fun lt!1914857 () Unit!135600)

(declare-fun Unit!135661 () Unit!135600)

(assert (=> b!4750920 (= lt!1914857 Unit!135661)))

(assert (=> b!4750920 (contains!16502 lt!1914870 (_1!30718 (h!59479 (t!360534 l!14304))))))

(declare-fun lt!1914858 () Unit!135600)

(declare-fun Unit!135662 () Unit!135600)

(assert (=> b!4750920 (= lt!1914858 Unit!135662)))

(assert (=> b!4750920 call!332761))

(declare-fun lt!1914869 () Unit!135600)

(declare-fun Unit!135663 () Unit!135600)

(assert (=> b!4750920 (= lt!1914869 Unit!135663)))

(assert (=> b!4750920 (forall!11758 (toList!6112 lt!1914860) lambda!221866)))

(declare-fun lt!1914868 () Unit!135600)

(declare-fun Unit!135664 () Unit!135600)

(assert (=> b!4750920 (= lt!1914868 Unit!135664)))

(declare-fun lt!1914864 () Unit!135600)

(declare-fun Unit!135665 () Unit!135600)

(assert (=> b!4750920 (= lt!1914864 Unit!135665)))

(declare-fun lt!1914867 () Unit!135600)

(assert (=> b!4750920 (= lt!1914867 (addForallContainsKeyThenBeforeAdding!872 lt!1914583 lt!1914870 (_1!30718 (h!59479 (t!360534 l!14304))) (_2!30718 (h!59479 (t!360534 l!14304)))))))

(assert (=> b!4750920 (forall!11758 (toList!6112 lt!1914583) lambda!221866)))

(declare-fun lt!1914853 () Unit!135600)

(assert (=> b!4750920 (= lt!1914853 lt!1914867)))

(assert (=> b!4750920 (forall!11758 (toList!6112 lt!1914583) lambda!221866)))

(declare-fun lt!1914866 () Unit!135600)

(declare-fun Unit!135666 () Unit!135600)

(assert (=> b!4750920 (= lt!1914866 Unit!135666)))

(declare-fun res!2014573 () Bool)

(assert (=> b!4750920 (= res!2014573 (forall!11758 (t!360534 l!14304) lambda!221866))))

(assert (=> b!4750920 (=> (not res!2014573) (not e!2963571))))

(assert (=> b!4750920 e!2963571))

(declare-fun lt!1914863 () Unit!135600)

(declare-fun Unit!135667 () Unit!135600)

(assert (=> b!4750920 (= lt!1914863 Unit!135667)))

(declare-fun b!4750921 () Bool)

(declare-fun res!2014571 () Bool)

(assert (=> b!4750921 (=> (not res!2014571) (not e!2963570))))

(assert (=> b!4750921 (= res!2014571 (forall!11758 (toList!6112 lt!1914583) lambda!221868))))

(assert (= (and d!1518426 c!811171) b!4750918))

(assert (= (and d!1518426 (not c!811171)) b!4750920))

(assert (= (and b!4750920 res!2014573) b!4750919))

(assert (= (or b!4750918 b!4750920) bm!332755))

(assert (= (or b!4750918 b!4750919) bm!332756))

(assert (= (or b!4750918 b!4750920) bm!332754))

(assert (= (and d!1518426 res!2014572) b!4750921))

(assert (= (and b!4750921 res!2014571) b!4750917))

(declare-fun m!5712435 () Bool)

(assert (=> b!4750921 m!5712435))

(declare-fun m!5712437 () Bool)

(assert (=> bm!332754 m!5712437))

(declare-fun m!5712439 () Bool)

(assert (=> b!4750920 m!5712439))

(declare-fun m!5712441 () Bool)

(assert (=> b!4750920 m!5712441))

(declare-fun m!5712443 () Bool)

(assert (=> b!4750920 m!5712443))

(declare-fun m!5712445 () Bool)

(assert (=> b!4750920 m!5712445))

(declare-fun m!5712447 () Bool)

(assert (=> b!4750920 m!5712447))

(declare-fun m!5712449 () Bool)

(assert (=> b!4750920 m!5712449))

(declare-fun m!5712451 () Bool)

(assert (=> b!4750920 m!5712451))

(declare-fun m!5712453 () Bool)

(assert (=> b!4750920 m!5712453))

(assert (=> b!4750920 m!5712441))

(declare-fun m!5712455 () Bool)

(assert (=> b!4750920 m!5712455))

(declare-fun m!5712457 () Bool)

(assert (=> b!4750920 m!5712457))

(declare-fun m!5712461 () Bool)

(assert (=> b!4750920 m!5712461))

(assert (=> b!4750920 m!5712449))

(assert (=> b!4750920 m!5712447))

(declare-fun m!5712465 () Bool)

(assert (=> bm!332755 m!5712465))

(declare-fun m!5712469 () Bool)

(assert (=> d!1518426 m!5712469))

(declare-fun m!5712471 () Bool)

(assert (=> d!1518426 m!5712471))

(declare-fun m!5712475 () Bool)

(assert (=> bm!332756 m!5712475))

(declare-fun m!5712479 () Bool)

(assert (=> b!4750917 m!5712479))

(assert (=> b!4750832 d!1518426))

(declare-fun d!1518428 () Bool)

(assert (=> d!1518428 (= (eq!1213 lt!1914585 (+!2378 lt!1914584 t!14174)) (= (content!9524 (toList!6112 lt!1914585)) (content!9524 (toList!6112 (+!2378 lt!1914584 t!14174)))))))

(declare-fun bs!1140581 () Bool)

(assert (= bs!1140581 d!1518428))

(declare-fun m!5712491 () Bool)

(assert (=> bs!1140581 m!5712491))

(declare-fun m!5712495 () Bool)

(assert (=> bs!1140581 m!5712495))

(assert (=> b!4750832 d!1518428))

(declare-fun d!1518430 () Bool)

(declare-fun e!2963573 () Bool)

(assert (=> d!1518430 e!2963573))

(declare-fun res!2014575 () Bool)

(assert (=> d!1518430 (=> (not res!2014575) (not e!2963573))))

(declare-fun lt!1914876 () ListMap!5533)

(assert (=> d!1518430 (= res!2014575 (contains!16502 lt!1914876 (_1!30718 t!14174)))))

(declare-fun lt!1914873 () List!53206)

(assert (=> d!1518430 (= lt!1914876 (ListMap!5534 lt!1914873))))

(declare-fun lt!1914875 () Unit!135600)

(declare-fun lt!1914874 () Unit!135600)

(assert (=> d!1518430 (= lt!1914875 lt!1914874)))

(assert (=> d!1518430 (= (getValueByKey!2077 lt!1914873 (_1!30718 t!14174)) (Some!12526 (_2!30718 t!14174)))))

(assert (=> d!1518430 (= lt!1914874 (lemmaContainsTupThenGetReturnValue!1154 lt!1914873 (_1!30718 t!14174) (_2!30718 t!14174)))))

(assert (=> d!1518430 (= lt!1914873 (insertNoDuplicatedKeys!662 (toList!6112 lt!1914584) (_1!30718 t!14174) (_2!30718 t!14174)))))

(assert (=> d!1518430 (= (+!2378 lt!1914584 t!14174) lt!1914876)))

(declare-fun b!4750922 () Bool)

(declare-fun res!2014574 () Bool)

(assert (=> b!4750922 (=> (not res!2014574) (not e!2963573))))

(assert (=> b!4750922 (= res!2014574 (= (getValueByKey!2077 (toList!6112 lt!1914876) (_1!30718 t!14174)) (Some!12526 (_2!30718 t!14174))))))

(declare-fun b!4750923 () Bool)

(assert (=> b!4750923 (= e!2963573 (contains!16503 (toList!6112 lt!1914876) t!14174))))

(assert (= (and d!1518430 res!2014575) b!4750922))

(assert (= (and b!4750922 res!2014574) b!4750923))

(declare-fun m!5712507 () Bool)

(assert (=> d!1518430 m!5712507))

(declare-fun m!5712509 () Bool)

(assert (=> d!1518430 m!5712509))

(declare-fun m!5712511 () Bool)

(assert (=> d!1518430 m!5712511))

(declare-fun m!5712513 () Bool)

(assert (=> d!1518430 m!5712513))

(declare-fun m!5712515 () Bool)

(assert (=> b!4750922 m!5712515))

(declare-fun m!5712517 () Bool)

(assert (=> b!4750923 m!5712517))

(assert (=> b!4750832 d!1518430))

(declare-fun bs!1140585 () Bool)

(declare-fun b!4750930 () Bool)

(assert (= bs!1140585 (and b!4750930 b!4750897)))

(declare-fun lambda!221870 () Int)

(assert (=> bs!1140585 (= (= lt!1914583 (+!2378 acc!1214 t!14174)) (= lambda!221870 lambda!221851))))

(declare-fun bs!1140588 () Bool)

(assert (= bs!1140588 (and b!4750930 b!4750883)))

(assert (=> bs!1140588 (= (= lt!1914583 lt!1914742) (= lambda!221870 lambda!221847))))

(declare-fun bs!1140590 () Bool)

(assert (= bs!1140590 (and b!4750930 b!4750899)))

(assert (=> bs!1140590 (= (= lt!1914583 (+!2378 acc!1214 t!14174)) (= lambda!221870 lambda!221853))))

(declare-fun bs!1140592 () Bool)

(assert (= bs!1140592 (and b!4750930 d!1518412)))

(assert (=> bs!1140592 (= (= lt!1914583 lt!1914777) (= lambda!221870 lambda!221856))))

(declare-fun bs!1140594 () Bool)

(assert (= bs!1140594 (and b!4750930 d!1518426)))

(assert (=> bs!1140594 (= (= lt!1914583 lt!1914852) (= lambda!221870 lambda!221868))))

(declare-fun bs!1140596 () Bool)

(assert (= bs!1140596 (and b!4750930 b!4750920)))

(assert (=> bs!1140596 (= (= lt!1914583 lt!1914870) (= lambda!221870 lambda!221866))))

(assert (=> bs!1140590 (= (= lt!1914583 lt!1914795) (= lambda!221870 lambda!221854))))

(declare-fun bs!1140599 () Bool)

(assert (= bs!1140599 (and b!4750930 d!1518398)))

(assert (=> bs!1140599 (= (= lt!1914583 lt!1914724) (= lambda!221870 lambda!221848))))

(assert (=> bs!1140596 (= lambda!221870 lambda!221864)))

(declare-fun bs!1140601 () Bool)

(assert (= bs!1140601 (and b!4750930 b!4750881)))

(assert (=> bs!1140601 (= (= lt!1914583 acc!1214) (= lambda!221870 lambda!221845))))

(assert (=> bs!1140588 (= (= lt!1914583 acc!1214) (= lambda!221870 lambda!221846))))

(declare-fun bs!1140603 () Bool)

(assert (= bs!1140603 (and b!4750930 b!4750918)))

(assert (=> bs!1140603 (= lambda!221870 lambda!221863)))

(assert (=> b!4750930 true))

(declare-fun bs!1140607 () Bool)

(declare-fun b!4750932 () Bool)

(assert (= bs!1140607 (and b!4750932 b!4750897)))

(declare-fun lambda!221871 () Int)

(assert (=> bs!1140607 (= (= lt!1914583 (+!2378 acc!1214 t!14174)) (= lambda!221871 lambda!221851))))

(declare-fun bs!1140608 () Bool)

(assert (= bs!1140608 (and b!4750932 b!4750883)))

(assert (=> bs!1140608 (= (= lt!1914583 lt!1914742) (= lambda!221871 lambda!221847))))

(declare-fun bs!1140609 () Bool)

(assert (= bs!1140609 (and b!4750932 b!4750899)))

(assert (=> bs!1140609 (= (= lt!1914583 (+!2378 acc!1214 t!14174)) (= lambda!221871 lambda!221853))))

(declare-fun bs!1140610 () Bool)

(assert (= bs!1140610 (and b!4750932 d!1518412)))

(assert (=> bs!1140610 (= (= lt!1914583 lt!1914777) (= lambda!221871 lambda!221856))))

(declare-fun bs!1140611 () Bool)

(assert (= bs!1140611 (and b!4750932 d!1518426)))

(assert (=> bs!1140611 (= (= lt!1914583 lt!1914852) (= lambda!221871 lambda!221868))))

(declare-fun bs!1140613 () Bool)

(assert (= bs!1140613 (and b!4750932 b!4750920)))

(assert (=> bs!1140613 (= (= lt!1914583 lt!1914870) (= lambda!221871 lambda!221866))))

(declare-fun bs!1140614 () Bool)

(assert (= bs!1140614 (and b!4750932 b!4750930)))

(assert (=> bs!1140614 (= lambda!221871 lambda!221870)))

(assert (=> bs!1140609 (= (= lt!1914583 lt!1914795) (= lambda!221871 lambda!221854))))

(declare-fun bs!1140617 () Bool)

(assert (= bs!1140617 (and b!4750932 d!1518398)))

(assert (=> bs!1140617 (= (= lt!1914583 lt!1914724) (= lambda!221871 lambda!221848))))

(assert (=> bs!1140613 (= lambda!221871 lambda!221864)))

(declare-fun bs!1140620 () Bool)

(assert (= bs!1140620 (and b!4750932 b!4750881)))

(assert (=> bs!1140620 (= (= lt!1914583 acc!1214) (= lambda!221871 lambda!221845))))

(assert (=> bs!1140608 (= (= lt!1914583 acc!1214) (= lambda!221871 lambda!221846))))

(declare-fun bs!1140623 () Bool)

(assert (= bs!1140623 (and b!4750932 b!4750918)))

(assert (=> bs!1140623 (= lambda!221871 lambda!221863)))

(assert (=> b!4750932 true))

(declare-fun lt!1914916 () ListMap!5533)

(declare-fun lambda!221873 () Int)

(assert (=> bs!1140607 (= (= lt!1914916 (+!2378 acc!1214 t!14174)) (= lambda!221873 lambda!221851))))

(assert (=> bs!1140608 (= (= lt!1914916 lt!1914742) (= lambda!221873 lambda!221847))))

(assert (=> bs!1140609 (= (= lt!1914916 (+!2378 acc!1214 t!14174)) (= lambda!221873 lambda!221853))))

(assert (=> bs!1140610 (= (= lt!1914916 lt!1914777) (= lambda!221873 lambda!221856))))

(assert (=> bs!1140611 (= (= lt!1914916 lt!1914852) (= lambda!221873 lambda!221868))))

(assert (=> bs!1140613 (= (= lt!1914916 lt!1914870) (= lambda!221873 lambda!221866))))

(assert (=> b!4750932 (= (= lt!1914916 lt!1914583) (= lambda!221873 lambda!221871))))

(assert (=> bs!1140614 (= (= lt!1914916 lt!1914583) (= lambda!221873 lambda!221870))))

(assert (=> bs!1140609 (= (= lt!1914916 lt!1914795) (= lambda!221873 lambda!221854))))

(assert (=> bs!1140617 (= (= lt!1914916 lt!1914724) (= lambda!221873 lambda!221848))))

(assert (=> bs!1140613 (= (= lt!1914916 lt!1914583) (= lambda!221873 lambda!221864))))

(assert (=> bs!1140620 (= (= lt!1914916 acc!1214) (= lambda!221873 lambda!221845))))

(assert (=> bs!1140608 (= (= lt!1914916 acc!1214) (= lambda!221873 lambda!221846))))

(assert (=> bs!1140623 (= (= lt!1914916 lt!1914583) (= lambda!221873 lambda!221863))))

(assert (=> b!4750932 true))

(declare-fun bs!1140633 () Bool)

(declare-fun d!1518436 () Bool)

(assert (= bs!1140633 (and d!1518436 b!4750897)))

(declare-fun lambda!221875 () Int)

(declare-fun lt!1914898 () ListMap!5533)

(assert (=> bs!1140633 (= (= lt!1914898 (+!2378 acc!1214 t!14174)) (= lambda!221875 lambda!221851))))

(declare-fun bs!1140634 () Bool)

(assert (= bs!1140634 (and d!1518436 b!4750883)))

(assert (=> bs!1140634 (= (= lt!1914898 lt!1914742) (= lambda!221875 lambda!221847))))

(declare-fun bs!1140635 () Bool)

(assert (= bs!1140635 (and d!1518436 d!1518412)))

(assert (=> bs!1140635 (= (= lt!1914898 lt!1914777) (= lambda!221875 lambda!221856))))

(declare-fun bs!1140636 () Bool)

(assert (= bs!1140636 (and d!1518436 d!1518426)))

(assert (=> bs!1140636 (= (= lt!1914898 lt!1914852) (= lambda!221875 lambda!221868))))

(declare-fun bs!1140637 () Bool)

(assert (= bs!1140637 (and d!1518436 b!4750920)))

(assert (=> bs!1140637 (= (= lt!1914898 lt!1914870) (= lambda!221875 lambda!221866))))

(declare-fun bs!1140638 () Bool)

(assert (= bs!1140638 (and d!1518436 b!4750932)))

(assert (=> bs!1140638 (= (= lt!1914898 lt!1914583) (= lambda!221875 lambda!221871))))

(declare-fun bs!1140639 () Bool)

(assert (= bs!1140639 (and d!1518436 b!4750930)))

(assert (=> bs!1140639 (= (= lt!1914898 lt!1914583) (= lambda!221875 lambda!221870))))

(declare-fun bs!1140640 () Bool)

(assert (= bs!1140640 (and d!1518436 b!4750899)))

(assert (=> bs!1140640 (= (= lt!1914898 lt!1914795) (= lambda!221875 lambda!221854))))

(declare-fun bs!1140641 () Bool)

(assert (= bs!1140641 (and d!1518436 d!1518398)))

(assert (=> bs!1140641 (= (= lt!1914898 lt!1914724) (= lambda!221875 lambda!221848))))

(assert (=> bs!1140640 (= (= lt!1914898 (+!2378 acc!1214 t!14174)) (= lambda!221875 lambda!221853))))

(assert (=> bs!1140638 (= (= lt!1914898 lt!1914916) (= lambda!221875 lambda!221873))))

(assert (=> bs!1140637 (= (= lt!1914898 lt!1914583) (= lambda!221875 lambda!221864))))

(declare-fun bs!1140642 () Bool)

(assert (= bs!1140642 (and d!1518436 b!4750881)))

(assert (=> bs!1140642 (= (= lt!1914898 acc!1214) (= lambda!221875 lambda!221845))))

(assert (=> bs!1140634 (= (= lt!1914898 acc!1214) (= lambda!221875 lambda!221846))))

(declare-fun bs!1140643 () Bool)

(assert (= bs!1140643 (and d!1518436 b!4750918)))

(assert (=> bs!1140643 (= (= lt!1914898 lt!1914583) (= lambda!221875 lambda!221863))))

(assert (=> d!1518436 true))

(declare-fun b!4750929 () Bool)

(declare-fun e!2963577 () Bool)

(assert (=> b!4750929 (= e!2963577 (invariantList!1590 (toList!6112 lt!1914898)))))

(declare-fun call!332767 () Bool)

(declare-fun bm!332760 () Bool)

(declare-fun c!811173 () Bool)

(assert (=> bm!332760 (= call!332767 (forall!11758 (ite c!811173 (toList!6112 lt!1914583) (Cons!53082 t!14174 (t!360534 l!14304))) (ite c!811173 lambda!221870 lambda!221873)))))

(assert (=> d!1518436 e!2963577))

(declare-fun res!2014580 () Bool)

(assert (=> d!1518436 (=> (not res!2014580) (not e!2963577))))

(assert (=> d!1518436 (= res!2014580 (forall!11758 (Cons!53082 t!14174 (t!360534 l!14304)) lambda!221875))))

(declare-fun e!2963579 () ListMap!5533)

(assert (=> d!1518436 (= lt!1914898 e!2963579)))

(assert (=> d!1518436 (= c!811173 ((_ is Nil!53082) (Cons!53082 t!14174 (t!360534 l!14304))))))

(assert (=> d!1518436 (noDuplicateKeys!2144 (Cons!53082 t!14174 (t!360534 l!14304)))))

(assert (=> d!1518436 (= (addToMapMapFromBucket!1568 (Cons!53082 t!14174 (t!360534 l!14304)) lt!1914583) lt!1914898)))

(declare-fun bm!332761 () Bool)

(declare-fun call!332765 () Unit!135600)

(assert (=> bm!332761 (= call!332765 (lemmaContainsAllItsOwnKeys!873 lt!1914583))))

(declare-fun bm!332762 () Bool)

(declare-fun call!332766 () Bool)

(assert (=> bm!332762 (= call!332766 (forall!11758 (toList!6112 lt!1914583) (ite c!811173 lambda!221870 lambda!221873)))))

(assert (=> b!4750930 (= e!2963579 lt!1914583)))

(declare-fun lt!1914905 () Unit!135600)

(assert (=> b!4750930 (= lt!1914905 call!332765)))

(assert (=> b!4750930 call!332767))

(declare-fun lt!1914907 () Unit!135600)

(assert (=> b!4750930 (= lt!1914907 lt!1914905)))

(assert (=> b!4750930 call!332766))

(declare-fun lt!1914901 () Unit!135600)

(declare-fun Unit!135679 () Unit!135600)

(assert (=> b!4750930 (= lt!1914901 Unit!135679)))

(declare-fun b!4750931 () Bool)

(declare-fun e!2963578 () Bool)

(assert (=> b!4750931 (= e!2963578 call!332766)))

(assert (=> b!4750932 (= e!2963579 lt!1914916)))

(declare-fun lt!1914906 () ListMap!5533)

(assert (=> b!4750932 (= lt!1914906 (+!2378 lt!1914583 (h!59479 (Cons!53082 t!14174 (t!360534 l!14304)))))))

(assert (=> b!4750932 (= lt!1914916 (addToMapMapFromBucket!1568 (t!360534 (Cons!53082 t!14174 (t!360534 l!14304))) (+!2378 lt!1914583 (h!59479 (Cons!53082 t!14174 (t!360534 l!14304))))))))

(declare-fun lt!1914911 () Unit!135600)

(assert (=> b!4750932 (= lt!1914911 call!332765)))

(assert (=> b!4750932 (forall!11758 (toList!6112 lt!1914583) lambda!221871)))

(declare-fun lt!1914917 () Unit!135600)

(assert (=> b!4750932 (= lt!1914917 lt!1914911)))

(assert (=> b!4750932 (forall!11758 (toList!6112 lt!1914906) lambda!221873)))

(declare-fun lt!1914902 () Unit!135600)

(declare-fun Unit!135680 () Unit!135600)

(assert (=> b!4750932 (= lt!1914902 Unit!135680)))

(assert (=> b!4750932 (forall!11758 (t!360534 (Cons!53082 t!14174 (t!360534 l!14304))) lambda!221873)))

(declare-fun lt!1914918 () Unit!135600)

(declare-fun Unit!135681 () Unit!135600)

(assert (=> b!4750932 (= lt!1914918 Unit!135681)))

(declare-fun lt!1914908 () Unit!135600)

(declare-fun Unit!135682 () Unit!135600)

(assert (=> b!4750932 (= lt!1914908 Unit!135682)))

(declare-fun lt!1914900 () Unit!135600)

(assert (=> b!4750932 (= lt!1914900 (forallContained!3784 (toList!6112 lt!1914906) lambda!221873 (h!59479 (Cons!53082 t!14174 (t!360534 l!14304)))))))

(assert (=> b!4750932 (contains!16502 lt!1914906 (_1!30718 (h!59479 (Cons!53082 t!14174 (t!360534 l!14304)))))))

(declare-fun lt!1914903 () Unit!135600)

(declare-fun Unit!135683 () Unit!135600)

(assert (=> b!4750932 (= lt!1914903 Unit!135683)))

(assert (=> b!4750932 (contains!16502 lt!1914916 (_1!30718 (h!59479 (Cons!53082 t!14174 (t!360534 l!14304)))))))

(declare-fun lt!1914904 () Unit!135600)

(declare-fun Unit!135684 () Unit!135600)

(assert (=> b!4750932 (= lt!1914904 Unit!135684)))

(assert (=> b!4750932 call!332767))

(declare-fun lt!1914915 () Unit!135600)

(declare-fun Unit!135685 () Unit!135600)

(assert (=> b!4750932 (= lt!1914915 Unit!135685)))

(assert (=> b!4750932 (forall!11758 (toList!6112 lt!1914906) lambda!221873)))

(declare-fun lt!1914914 () Unit!135600)

(declare-fun Unit!135686 () Unit!135600)

(assert (=> b!4750932 (= lt!1914914 Unit!135686)))

(declare-fun lt!1914910 () Unit!135600)

(declare-fun Unit!135687 () Unit!135600)

(assert (=> b!4750932 (= lt!1914910 Unit!135687)))

(declare-fun lt!1914913 () Unit!135600)

(assert (=> b!4750932 (= lt!1914913 (addForallContainsKeyThenBeforeAdding!872 lt!1914583 lt!1914916 (_1!30718 (h!59479 (Cons!53082 t!14174 (t!360534 l!14304)))) (_2!30718 (h!59479 (Cons!53082 t!14174 (t!360534 l!14304))))))))

(assert (=> b!4750932 (forall!11758 (toList!6112 lt!1914583) lambda!221873)))

(declare-fun lt!1914899 () Unit!135600)

(assert (=> b!4750932 (= lt!1914899 lt!1914913)))

(assert (=> b!4750932 (forall!11758 (toList!6112 lt!1914583) lambda!221873)))

(declare-fun lt!1914912 () Unit!135600)

(declare-fun Unit!135688 () Unit!135600)

(assert (=> b!4750932 (= lt!1914912 Unit!135688)))

(declare-fun res!2014581 () Bool)

(assert (=> b!4750932 (= res!2014581 (forall!11758 (Cons!53082 t!14174 (t!360534 l!14304)) lambda!221873))))

(assert (=> b!4750932 (=> (not res!2014581) (not e!2963578))))

(assert (=> b!4750932 e!2963578))

(declare-fun lt!1914909 () Unit!135600)

(declare-fun Unit!135689 () Unit!135600)

(assert (=> b!4750932 (= lt!1914909 Unit!135689)))

(declare-fun b!4750933 () Bool)

(declare-fun res!2014579 () Bool)

(assert (=> b!4750933 (=> (not res!2014579) (not e!2963577))))

(assert (=> b!4750933 (= res!2014579 (forall!11758 (toList!6112 lt!1914583) lambda!221875))))

(assert (= (and d!1518436 c!811173) b!4750930))

(assert (= (and d!1518436 (not c!811173)) b!4750932))

(assert (= (and b!4750932 res!2014581) b!4750931))

(assert (= (or b!4750930 b!4750932) bm!332761))

(assert (= (or b!4750930 b!4750931) bm!332762))

(assert (= (or b!4750930 b!4750932) bm!332760))

(assert (= (and d!1518436 res!2014580) b!4750933))

(assert (= (and b!4750933 res!2014579) b!4750929))

(declare-fun m!5712519 () Bool)

(assert (=> b!4750933 m!5712519))

(declare-fun m!5712521 () Bool)

(assert (=> bm!332760 m!5712521))

(declare-fun m!5712523 () Bool)

(assert (=> b!4750932 m!5712523))

(declare-fun m!5712525 () Bool)

(assert (=> b!4750932 m!5712525))

(declare-fun m!5712527 () Bool)

(assert (=> b!4750932 m!5712527))

(declare-fun m!5712529 () Bool)

(assert (=> b!4750932 m!5712529))

(declare-fun m!5712531 () Bool)

(assert (=> b!4750932 m!5712531))

(declare-fun m!5712533 () Bool)

(assert (=> b!4750932 m!5712533))

(declare-fun m!5712535 () Bool)

(assert (=> b!4750932 m!5712535))

(declare-fun m!5712537 () Bool)

(assert (=> b!4750932 m!5712537))

(assert (=> b!4750932 m!5712525))

(declare-fun m!5712539 () Bool)

(assert (=> b!4750932 m!5712539))

(declare-fun m!5712541 () Bool)

(assert (=> b!4750932 m!5712541))

(declare-fun m!5712543 () Bool)

(assert (=> b!4750932 m!5712543))

(assert (=> b!4750932 m!5712533))

(assert (=> b!4750932 m!5712531))

(assert (=> bm!332761 m!5712465))

(declare-fun m!5712545 () Bool)

(assert (=> d!1518436 m!5712545))

(declare-fun m!5712547 () Bool)

(assert (=> d!1518436 m!5712547))

(declare-fun m!5712549 () Bool)

(assert (=> bm!332762 m!5712549))

(declare-fun m!5712551 () Bool)

(assert (=> b!4750929 m!5712551))

(assert (=> b!4750832 d!1518436))

(declare-fun d!1518438 () Bool)

(declare-fun e!2963580 () Bool)

(assert (=> d!1518438 e!2963580))

(declare-fun res!2014583 () Bool)

(assert (=> d!1518438 (=> (not res!2014583) (not e!2963580))))

(declare-fun lt!1914922 () ListMap!5533)

(assert (=> d!1518438 (= res!2014583 (contains!16502 lt!1914922 (_1!30718 (h!59479 l!14304))))))

(declare-fun lt!1914919 () List!53206)

(assert (=> d!1518438 (= lt!1914922 (ListMap!5534 lt!1914919))))

(declare-fun lt!1914921 () Unit!135600)

(declare-fun lt!1914920 () Unit!135600)

(assert (=> d!1518438 (= lt!1914921 lt!1914920)))

(assert (=> d!1518438 (= (getValueByKey!2077 lt!1914919 (_1!30718 (h!59479 l!14304))) (Some!12526 (_2!30718 (h!59479 l!14304))))))

(assert (=> d!1518438 (= lt!1914920 (lemmaContainsTupThenGetReturnValue!1154 lt!1914919 (_1!30718 (h!59479 l!14304)) (_2!30718 (h!59479 l!14304))))))

(assert (=> d!1518438 (= lt!1914919 (insertNoDuplicatedKeys!662 (toList!6112 acc!1214) (_1!30718 (h!59479 l!14304)) (_2!30718 (h!59479 l!14304))))))

(assert (=> d!1518438 (= (+!2378 acc!1214 (h!59479 l!14304)) lt!1914922)))

(declare-fun b!4750934 () Bool)

(declare-fun res!2014582 () Bool)

(assert (=> b!4750934 (=> (not res!2014582) (not e!2963580))))

(assert (=> b!4750934 (= res!2014582 (= (getValueByKey!2077 (toList!6112 lt!1914922) (_1!30718 (h!59479 l!14304))) (Some!12526 (_2!30718 (h!59479 l!14304)))))))

(declare-fun b!4750935 () Bool)

(assert (=> b!4750935 (= e!2963580 (contains!16503 (toList!6112 lt!1914922) (h!59479 l!14304)))))

(assert (= (and d!1518438 res!2014583) b!4750934))

(assert (= (and b!4750934 res!2014582) b!4750935))

(declare-fun m!5712553 () Bool)

(assert (=> d!1518438 m!5712553))

(declare-fun m!5712555 () Bool)

(assert (=> d!1518438 m!5712555))

(declare-fun m!5712557 () Bool)

(assert (=> d!1518438 m!5712557))

(declare-fun m!5712559 () Bool)

(assert (=> d!1518438 m!5712559))

(declare-fun m!5712561 () Bool)

(assert (=> b!4750934 m!5712561))

(declare-fun m!5712563 () Bool)

(assert (=> b!4750935 m!5712563))

(assert (=> b!4750832 d!1518438))

(declare-fun d!1518440 () Bool)

(assert (=> d!1518440 (= (eq!1213 (addToMapMapFromBucket!1568 lt!1914582 acc!1214) (addToMapMapFromBucket!1568 l!14304 (+!2378 acc!1214 t!14174))) (= (content!9524 (toList!6112 (addToMapMapFromBucket!1568 lt!1914582 acc!1214))) (content!9524 (toList!6112 (addToMapMapFromBucket!1568 l!14304 (+!2378 acc!1214 t!14174))))))))

(declare-fun bs!1140661 () Bool)

(assert (= bs!1140661 d!1518440))

(declare-fun m!5712565 () Bool)

(assert (=> bs!1140661 m!5712565))

(declare-fun m!5712567 () Bool)

(assert (=> bs!1140661 m!5712567))

(assert (=> b!4750832 d!1518440))

(declare-fun bs!1140662 () Bool)

(declare-fun b!4750937 () Bool)

(assert (= bs!1140662 (and b!4750937 b!4750897)))

(declare-fun lambda!221877 () Int)

(assert (=> bs!1140662 (= (= acc!1214 (+!2378 acc!1214 t!14174)) (= lambda!221877 lambda!221851))))

(declare-fun bs!1140663 () Bool)

(assert (= bs!1140663 (and b!4750937 b!4750883)))

(assert (=> bs!1140663 (= (= acc!1214 lt!1914742) (= lambda!221877 lambda!221847))))

(declare-fun bs!1140664 () Bool)

(assert (= bs!1140664 (and b!4750937 d!1518412)))

(assert (=> bs!1140664 (= (= acc!1214 lt!1914777) (= lambda!221877 lambda!221856))))

(declare-fun bs!1140665 () Bool)

(assert (= bs!1140665 (and b!4750937 d!1518426)))

(assert (=> bs!1140665 (= (= acc!1214 lt!1914852) (= lambda!221877 lambda!221868))))

(declare-fun bs!1140666 () Bool)

(assert (= bs!1140666 (and b!4750937 b!4750920)))

(assert (=> bs!1140666 (= (= acc!1214 lt!1914870) (= lambda!221877 lambda!221866))))

(declare-fun bs!1140667 () Bool)

(assert (= bs!1140667 (and b!4750937 d!1518436)))

(assert (=> bs!1140667 (= (= acc!1214 lt!1914898) (= lambda!221877 lambda!221875))))

(declare-fun bs!1140668 () Bool)

(assert (= bs!1140668 (and b!4750937 b!4750932)))

(assert (=> bs!1140668 (= (= acc!1214 lt!1914583) (= lambda!221877 lambda!221871))))

(declare-fun bs!1140669 () Bool)

(assert (= bs!1140669 (and b!4750937 b!4750930)))

(assert (=> bs!1140669 (= (= acc!1214 lt!1914583) (= lambda!221877 lambda!221870))))

(declare-fun bs!1140670 () Bool)

(assert (= bs!1140670 (and b!4750937 b!4750899)))

(assert (=> bs!1140670 (= (= acc!1214 lt!1914795) (= lambda!221877 lambda!221854))))

(declare-fun bs!1140671 () Bool)

(assert (= bs!1140671 (and b!4750937 d!1518398)))

(assert (=> bs!1140671 (= (= acc!1214 lt!1914724) (= lambda!221877 lambda!221848))))

(assert (=> bs!1140670 (= (= acc!1214 (+!2378 acc!1214 t!14174)) (= lambda!221877 lambda!221853))))

(assert (=> bs!1140668 (= (= acc!1214 lt!1914916) (= lambda!221877 lambda!221873))))

(assert (=> bs!1140666 (= (= acc!1214 lt!1914583) (= lambda!221877 lambda!221864))))

(declare-fun bs!1140672 () Bool)

(assert (= bs!1140672 (and b!4750937 b!4750881)))

(assert (=> bs!1140672 (= lambda!221877 lambda!221845)))

(assert (=> bs!1140663 (= lambda!221877 lambda!221846)))

(declare-fun bs!1140673 () Bool)

(assert (= bs!1140673 (and b!4750937 b!4750918)))

(assert (=> bs!1140673 (= (= acc!1214 lt!1914583) (= lambda!221877 lambda!221863))))

(assert (=> b!4750937 true))

(declare-fun bs!1140674 () Bool)

(declare-fun b!4750939 () Bool)

(assert (= bs!1140674 (and b!4750939 b!4750897)))

(declare-fun lambda!221878 () Int)

(assert (=> bs!1140674 (= (= acc!1214 (+!2378 acc!1214 t!14174)) (= lambda!221878 lambda!221851))))

(declare-fun bs!1140675 () Bool)

(assert (= bs!1140675 (and b!4750939 b!4750883)))

(assert (=> bs!1140675 (= (= acc!1214 lt!1914742) (= lambda!221878 lambda!221847))))

(declare-fun bs!1140676 () Bool)

(assert (= bs!1140676 (and b!4750939 d!1518426)))

(assert (=> bs!1140676 (= (= acc!1214 lt!1914852) (= lambda!221878 lambda!221868))))

(declare-fun bs!1140677 () Bool)

(assert (= bs!1140677 (and b!4750939 b!4750920)))

(assert (=> bs!1140677 (= (= acc!1214 lt!1914870) (= lambda!221878 lambda!221866))))

(declare-fun bs!1140678 () Bool)

(assert (= bs!1140678 (and b!4750939 d!1518436)))

(assert (=> bs!1140678 (= (= acc!1214 lt!1914898) (= lambda!221878 lambda!221875))))

(declare-fun bs!1140679 () Bool)

(assert (= bs!1140679 (and b!4750939 b!4750932)))

(assert (=> bs!1140679 (= (= acc!1214 lt!1914583) (= lambda!221878 lambda!221871))))

(declare-fun bs!1140680 () Bool)

(assert (= bs!1140680 (and b!4750939 b!4750930)))

(assert (=> bs!1140680 (= (= acc!1214 lt!1914583) (= lambda!221878 lambda!221870))))

(declare-fun bs!1140681 () Bool)

(assert (= bs!1140681 (and b!4750939 b!4750899)))

(assert (=> bs!1140681 (= (= acc!1214 lt!1914795) (= lambda!221878 lambda!221854))))

(declare-fun bs!1140682 () Bool)

(assert (= bs!1140682 (and b!4750939 d!1518398)))

(assert (=> bs!1140682 (= (= acc!1214 lt!1914724) (= lambda!221878 lambda!221848))))

(assert (=> bs!1140681 (= (= acc!1214 (+!2378 acc!1214 t!14174)) (= lambda!221878 lambda!221853))))

(assert (=> bs!1140679 (= (= acc!1214 lt!1914916) (= lambda!221878 lambda!221873))))

(declare-fun bs!1140683 () Bool)

(assert (= bs!1140683 (and b!4750939 b!4750937)))

(assert (=> bs!1140683 (= lambda!221878 lambda!221877)))

(declare-fun bs!1140684 () Bool)

(assert (= bs!1140684 (and b!4750939 d!1518412)))

(assert (=> bs!1140684 (= (= acc!1214 lt!1914777) (= lambda!221878 lambda!221856))))

(assert (=> bs!1140677 (= (= acc!1214 lt!1914583) (= lambda!221878 lambda!221864))))

(declare-fun bs!1140685 () Bool)

(assert (= bs!1140685 (and b!4750939 b!4750881)))

(assert (=> bs!1140685 (= lambda!221878 lambda!221845)))

(assert (=> bs!1140675 (= lambda!221878 lambda!221846)))

(declare-fun bs!1140686 () Bool)

(assert (= bs!1140686 (and b!4750939 b!4750918)))

(assert (=> bs!1140686 (= (= acc!1214 lt!1914583) (= lambda!221878 lambda!221863))))

(assert (=> b!4750939 true))

(declare-fun lambda!221879 () Int)

(declare-fun lt!1914941 () ListMap!5533)

(assert (=> bs!1140674 (= (= lt!1914941 (+!2378 acc!1214 t!14174)) (= lambda!221879 lambda!221851))))

(assert (=> bs!1140675 (= (= lt!1914941 lt!1914742) (= lambda!221879 lambda!221847))))

(assert (=> bs!1140676 (= (= lt!1914941 lt!1914852) (= lambda!221879 lambda!221868))))

(assert (=> bs!1140677 (= (= lt!1914941 lt!1914870) (= lambda!221879 lambda!221866))))

(assert (=> bs!1140679 (= (= lt!1914941 lt!1914583) (= lambda!221879 lambda!221871))))

(assert (=> bs!1140680 (= (= lt!1914941 lt!1914583) (= lambda!221879 lambda!221870))))

(assert (=> bs!1140681 (= (= lt!1914941 lt!1914795) (= lambda!221879 lambda!221854))))

(assert (=> bs!1140682 (= (= lt!1914941 lt!1914724) (= lambda!221879 lambda!221848))))

(assert (=> bs!1140681 (= (= lt!1914941 (+!2378 acc!1214 t!14174)) (= lambda!221879 lambda!221853))))

(assert (=> bs!1140679 (= (= lt!1914941 lt!1914916) (= lambda!221879 lambda!221873))))

(assert (=> bs!1140683 (= (= lt!1914941 acc!1214) (= lambda!221879 lambda!221877))))

(assert (=> bs!1140684 (= (= lt!1914941 lt!1914777) (= lambda!221879 lambda!221856))))

(assert (=> bs!1140678 (= (= lt!1914941 lt!1914898) (= lambda!221879 lambda!221875))))

(assert (=> b!4750939 (= (= lt!1914941 acc!1214) (= lambda!221879 lambda!221878))))

(assert (=> bs!1140677 (= (= lt!1914941 lt!1914583) (= lambda!221879 lambda!221864))))

(assert (=> bs!1140685 (= (= lt!1914941 acc!1214) (= lambda!221879 lambda!221845))))

(assert (=> bs!1140675 (= (= lt!1914941 acc!1214) (= lambda!221879 lambda!221846))))

(assert (=> bs!1140686 (= (= lt!1914941 lt!1914583) (= lambda!221879 lambda!221863))))

(assert (=> b!4750939 true))

(declare-fun bs!1140687 () Bool)

(declare-fun d!1518442 () Bool)

(assert (= bs!1140687 (and d!1518442 b!4750897)))

(declare-fun lambda!221880 () Int)

(declare-fun lt!1914923 () ListMap!5533)

(assert (=> bs!1140687 (= (= lt!1914923 (+!2378 acc!1214 t!14174)) (= lambda!221880 lambda!221851))))

(declare-fun bs!1140688 () Bool)

(assert (= bs!1140688 (and d!1518442 b!4750883)))

(assert (=> bs!1140688 (= (= lt!1914923 lt!1914742) (= lambda!221880 lambda!221847))))

(declare-fun bs!1140689 () Bool)

(assert (= bs!1140689 (and d!1518442 d!1518426)))

(assert (=> bs!1140689 (= (= lt!1914923 lt!1914852) (= lambda!221880 lambda!221868))))

(declare-fun bs!1140690 () Bool)

(assert (= bs!1140690 (and d!1518442 b!4750939)))

(assert (=> bs!1140690 (= (= lt!1914923 lt!1914941) (= lambda!221880 lambda!221879))))

(declare-fun bs!1140691 () Bool)

(assert (= bs!1140691 (and d!1518442 b!4750920)))

(assert (=> bs!1140691 (= (= lt!1914923 lt!1914870) (= lambda!221880 lambda!221866))))

(declare-fun bs!1140692 () Bool)

(assert (= bs!1140692 (and d!1518442 b!4750932)))

(assert (=> bs!1140692 (= (= lt!1914923 lt!1914583) (= lambda!221880 lambda!221871))))

(declare-fun bs!1140693 () Bool)

(assert (= bs!1140693 (and d!1518442 b!4750930)))

(assert (=> bs!1140693 (= (= lt!1914923 lt!1914583) (= lambda!221880 lambda!221870))))

(declare-fun bs!1140694 () Bool)

(assert (= bs!1140694 (and d!1518442 b!4750899)))

(assert (=> bs!1140694 (= (= lt!1914923 lt!1914795) (= lambda!221880 lambda!221854))))

(declare-fun bs!1140695 () Bool)

(assert (= bs!1140695 (and d!1518442 d!1518398)))

(assert (=> bs!1140695 (= (= lt!1914923 lt!1914724) (= lambda!221880 lambda!221848))))

(assert (=> bs!1140694 (= (= lt!1914923 (+!2378 acc!1214 t!14174)) (= lambda!221880 lambda!221853))))

(assert (=> bs!1140692 (= (= lt!1914923 lt!1914916) (= lambda!221880 lambda!221873))))

(declare-fun bs!1140696 () Bool)

(assert (= bs!1140696 (and d!1518442 b!4750937)))

(assert (=> bs!1140696 (= (= lt!1914923 acc!1214) (= lambda!221880 lambda!221877))))

(declare-fun bs!1140697 () Bool)

(assert (= bs!1140697 (and d!1518442 d!1518412)))

(assert (=> bs!1140697 (= (= lt!1914923 lt!1914777) (= lambda!221880 lambda!221856))))

(declare-fun bs!1140698 () Bool)

(assert (= bs!1140698 (and d!1518442 d!1518436)))

(assert (=> bs!1140698 (= (= lt!1914923 lt!1914898) (= lambda!221880 lambda!221875))))

(assert (=> bs!1140690 (= (= lt!1914923 acc!1214) (= lambda!221880 lambda!221878))))

(assert (=> bs!1140691 (= (= lt!1914923 lt!1914583) (= lambda!221880 lambda!221864))))

(declare-fun bs!1140699 () Bool)

(assert (= bs!1140699 (and d!1518442 b!4750881)))

(assert (=> bs!1140699 (= (= lt!1914923 acc!1214) (= lambda!221880 lambda!221845))))

(assert (=> bs!1140688 (= (= lt!1914923 acc!1214) (= lambda!221880 lambda!221846))))

(declare-fun bs!1140700 () Bool)

(assert (= bs!1140700 (and d!1518442 b!4750918)))

(assert (=> bs!1140700 (= (= lt!1914923 lt!1914583) (= lambda!221880 lambda!221863))))

(assert (=> d!1518442 true))

(declare-fun b!4750936 () Bool)

(declare-fun e!2963581 () Bool)

(assert (=> b!4750936 (= e!2963581 (invariantList!1590 (toList!6112 lt!1914923)))))

(declare-fun c!811174 () Bool)

(declare-fun call!332770 () Bool)

(declare-fun bm!332763 () Bool)

(assert (=> bm!332763 (= call!332770 (forall!11758 (ite c!811174 (toList!6112 acc!1214) lt!1914582) (ite c!811174 lambda!221877 lambda!221879)))))

(assert (=> d!1518442 e!2963581))

(declare-fun res!2014585 () Bool)

(assert (=> d!1518442 (=> (not res!2014585) (not e!2963581))))

(assert (=> d!1518442 (= res!2014585 (forall!11758 lt!1914582 lambda!221880))))

(declare-fun e!2963583 () ListMap!5533)

(assert (=> d!1518442 (= lt!1914923 e!2963583)))

(assert (=> d!1518442 (= c!811174 ((_ is Nil!53082) lt!1914582))))

(assert (=> d!1518442 (noDuplicateKeys!2144 lt!1914582)))

(assert (=> d!1518442 (= (addToMapMapFromBucket!1568 lt!1914582 acc!1214) lt!1914923)))

(declare-fun bm!332764 () Bool)

(declare-fun call!332768 () Unit!135600)

(assert (=> bm!332764 (= call!332768 (lemmaContainsAllItsOwnKeys!873 acc!1214))))

(declare-fun call!332769 () Bool)

(declare-fun bm!332765 () Bool)

(assert (=> bm!332765 (= call!332769 (forall!11758 (toList!6112 acc!1214) (ite c!811174 lambda!221877 lambda!221879)))))

(assert (=> b!4750937 (= e!2963583 acc!1214)))

(declare-fun lt!1914930 () Unit!135600)

(assert (=> b!4750937 (= lt!1914930 call!332768)))

(assert (=> b!4750937 call!332770))

(declare-fun lt!1914932 () Unit!135600)

(assert (=> b!4750937 (= lt!1914932 lt!1914930)))

(assert (=> b!4750937 call!332769))

(declare-fun lt!1914926 () Unit!135600)

(declare-fun Unit!135701 () Unit!135600)

(assert (=> b!4750937 (= lt!1914926 Unit!135701)))

(declare-fun b!4750938 () Bool)

(declare-fun e!2963582 () Bool)

(assert (=> b!4750938 (= e!2963582 call!332769)))

(assert (=> b!4750939 (= e!2963583 lt!1914941)))

(declare-fun lt!1914931 () ListMap!5533)

(assert (=> b!4750939 (= lt!1914931 (+!2378 acc!1214 (h!59479 lt!1914582)))))

(assert (=> b!4750939 (= lt!1914941 (addToMapMapFromBucket!1568 (t!360534 lt!1914582) (+!2378 acc!1214 (h!59479 lt!1914582))))))

(declare-fun lt!1914936 () Unit!135600)

(assert (=> b!4750939 (= lt!1914936 call!332768)))

(assert (=> b!4750939 (forall!11758 (toList!6112 acc!1214) lambda!221878)))

(declare-fun lt!1914942 () Unit!135600)

(assert (=> b!4750939 (= lt!1914942 lt!1914936)))

(assert (=> b!4750939 (forall!11758 (toList!6112 lt!1914931) lambda!221879)))

(declare-fun lt!1914927 () Unit!135600)

(declare-fun Unit!135702 () Unit!135600)

(assert (=> b!4750939 (= lt!1914927 Unit!135702)))

(assert (=> b!4750939 (forall!11758 (t!360534 lt!1914582) lambda!221879)))

(declare-fun lt!1914943 () Unit!135600)

(declare-fun Unit!135703 () Unit!135600)

(assert (=> b!4750939 (= lt!1914943 Unit!135703)))

(declare-fun lt!1914933 () Unit!135600)

(declare-fun Unit!135704 () Unit!135600)

(assert (=> b!4750939 (= lt!1914933 Unit!135704)))

(declare-fun lt!1914925 () Unit!135600)

(assert (=> b!4750939 (= lt!1914925 (forallContained!3784 (toList!6112 lt!1914931) lambda!221879 (h!59479 lt!1914582)))))

(assert (=> b!4750939 (contains!16502 lt!1914931 (_1!30718 (h!59479 lt!1914582)))))

(declare-fun lt!1914928 () Unit!135600)

(declare-fun Unit!135705 () Unit!135600)

(assert (=> b!4750939 (= lt!1914928 Unit!135705)))

(assert (=> b!4750939 (contains!16502 lt!1914941 (_1!30718 (h!59479 lt!1914582)))))

(declare-fun lt!1914929 () Unit!135600)

(declare-fun Unit!135706 () Unit!135600)

(assert (=> b!4750939 (= lt!1914929 Unit!135706)))

(assert (=> b!4750939 call!332770))

(declare-fun lt!1914940 () Unit!135600)

(declare-fun Unit!135707 () Unit!135600)

(assert (=> b!4750939 (= lt!1914940 Unit!135707)))

(assert (=> b!4750939 (forall!11758 (toList!6112 lt!1914931) lambda!221879)))

(declare-fun lt!1914939 () Unit!135600)

(declare-fun Unit!135708 () Unit!135600)

(assert (=> b!4750939 (= lt!1914939 Unit!135708)))

(declare-fun lt!1914935 () Unit!135600)

(declare-fun Unit!135709 () Unit!135600)

(assert (=> b!4750939 (= lt!1914935 Unit!135709)))

(declare-fun lt!1914938 () Unit!135600)

(assert (=> b!4750939 (= lt!1914938 (addForallContainsKeyThenBeforeAdding!872 acc!1214 lt!1914941 (_1!30718 (h!59479 lt!1914582)) (_2!30718 (h!59479 lt!1914582))))))

(assert (=> b!4750939 (forall!11758 (toList!6112 acc!1214) lambda!221879)))

(declare-fun lt!1914924 () Unit!135600)

(assert (=> b!4750939 (= lt!1914924 lt!1914938)))

(assert (=> b!4750939 (forall!11758 (toList!6112 acc!1214) lambda!221879)))

(declare-fun lt!1914937 () Unit!135600)

(declare-fun Unit!135710 () Unit!135600)

(assert (=> b!4750939 (= lt!1914937 Unit!135710)))

(declare-fun res!2014586 () Bool)

(assert (=> b!4750939 (= res!2014586 (forall!11758 lt!1914582 lambda!221879))))

(assert (=> b!4750939 (=> (not res!2014586) (not e!2963582))))

(assert (=> b!4750939 e!2963582))

(declare-fun lt!1914934 () Unit!135600)

(declare-fun Unit!135711 () Unit!135600)

(assert (=> b!4750939 (= lt!1914934 Unit!135711)))

(declare-fun b!4750940 () Bool)

(declare-fun res!2014584 () Bool)

(assert (=> b!4750940 (=> (not res!2014584) (not e!2963581))))

(assert (=> b!4750940 (= res!2014584 (forall!11758 (toList!6112 acc!1214) lambda!221880))))

(assert (= (and d!1518442 c!811174) b!4750937))

(assert (= (and d!1518442 (not c!811174)) b!4750939))

(assert (= (and b!4750939 res!2014586) b!4750938))

(assert (= (or b!4750937 b!4750939) bm!332764))

(assert (= (or b!4750937 b!4750938) bm!332765))

(assert (= (or b!4750937 b!4750939) bm!332763))

(assert (= (and d!1518442 res!2014585) b!4750940))

(assert (= (and b!4750940 res!2014584) b!4750936))

(declare-fun m!5712619 () Bool)

(assert (=> b!4750940 m!5712619))

(declare-fun m!5712621 () Bool)

(assert (=> bm!332763 m!5712621))

(declare-fun m!5712623 () Bool)

(assert (=> b!4750939 m!5712623))

(declare-fun m!5712625 () Bool)

(assert (=> b!4750939 m!5712625))

(declare-fun m!5712627 () Bool)

(assert (=> b!4750939 m!5712627))

(declare-fun m!5712629 () Bool)

(assert (=> b!4750939 m!5712629))

(declare-fun m!5712631 () Bool)

(assert (=> b!4750939 m!5712631))

(declare-fun m!5712633 () Bool)

(assert (=> b!4750939 m!5712633))

(declare-fun m!5712635 () Bool)

(assert (=> b!4750939 m!5712635))

(declare-fun m!5712637 () Bool)

(assert (=> b!4750939 m!5712637))

(assert (=> b!4750939 m!5712625))

(declare-fun m!5712639 () Bool)

(assert (=> b!4750939 m!5712639))

(declare-fun m!5712641 () Bool)

(assert (=> b!4750939 m!5712641))

(declare-fun m!5712643 () Bool)

(assert (=> b!4750939 m!5712643))

(assert (=> b!4750939 m!5712633))

(assert (=> b!4750939 m!5712631))

(assert (=> bm!332764 m!5712301))

(declare-fun m!5712645 () Bool)

(assert (=> d!1518442 m!5712645))

(assert (=> d!1518442 m!5712155))

(declare-fun m!5712647 () Bool)

(assert (=> bm!332765 m!5712647))

(declare-fun m!5712649 () Bool)

(assert (=> b!4750936 m!5712649))

(assert (=> b!4750832 d!1518442))

(declare-fun d!1518448 () Bool)

(assert (=> d!1518448 (eq!1213 (addToMapMapFromBucket!1568 (Cons!53082 t!14174 (t!360534 l!14304)) lt!1914583) (+!2378 (addToMapMapFromBucket!1568 (t!360534 l!14304) lt!1914583) t!14174))))

(declare-fun lt!1914950 () Unit!135600)

(declare-fun choose!33818 (tuple2!54848 List!53206 ListMap!5533) Unit!135600)

(assert (=> d!1518448 (= lt!1914950 (choose!33818 t!14174 (t!360534 l!14304) lt!1914583))))

(assert (=> d!1518448 (noDuplicateKeys!2144 (t!360534 l!14304))))

(assert (=> d!1518448 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!458 t!14174 (t!360534 l!14304) lt!1914583) lt!1914950)))

(declare-fun bs!1140701 () Bool)

(assert (= bs!1140701 d!1518448))

(assert (=> bs!1140701 m!5712133))

(assert (=> bs!1140701 m!5712471))

(assert (=> bs!1140701 m!5712129))

(assert (=> bs!1140701 m!5712129))

(declare-fun m!5712651 () Bool)

(assert (=> bs!1140701 m!5712651))

(declare-fun m!5712653 () Bool)

(assert (=> bs!1140701 m!5712653))

(assert (=> bs!1140701 m!5712133))

(assert (=> bs!1140701 m!5712651))

(declare-fun m!5712655 () Bool)

(assert (=> bs!1140701 m!5712655))

(assert (=> b!4750832 d!1518448))

(declare-fun d!1518450 () Bool)

(declare-fun res!2014595 () Bool)

(declare-fun e!2963595 () Bool)

(assert (=> d!1518450 (=> res!2014595 e!2963595)))

(assert (=> d!1518450 (= res!2014595 (not ((_ is Cons!53082) lt!1914582)))))

(assert (=> d!1518450 (= (noDuplicateKeys!2144 lt!1914582) e!2963595)))

(declare-fun b!4750955 () Bool)

(declare-fun e!2963596 () Bool)

(assert (=> b!4750955 (= e!2963595 e!2963596)))

(declare-fun res!2014596 () Bool)

(assert (=> b!4750955 (=> (not res!2014596) (not e!2963596))))

(declare-fun containsKey!3553 (List!53206 K!14510) Bool)

(assert (=> b!4750955 (= res!2014596 (not (containsKey!3553 (t!360534 lt!1914582) (_1!30718 (h!59479 lt!1914582)))))))

(declare-fun b!4750956 () Bool)

(assert (=> b!4750956 (= e!2963596 (noDuplicateKeys!2144 (t!360534 lt!1914582)))))

(assert (= (and d!1518450 (not res!2014595)) b!4750955))

(assert (= (and b!4750955 res!2014596) b!4750956))

(declare-fun m!5712657 () Bool)

(assert (=> b!4750955 m!5712657))

(declare-fun m!5712659 () Bool)

(assert (=> b!4750956 m!5712659))

(assert (=> b!4750833 d!1518450))

(declare-fun d!1518452 () Bool)

(declare-fun res!2014597 () Bool)

(declare-fun e!2963597 () Bool)

(assert (=> d!1518452 (=> res!2014597 e!2963597)))

(assert (=> d!1518452 (= res!2014597 (not ((_ is Cons!53082) l!14304)))))

(assert (=> d!1518452 (= (noDuplicateKeys!2144 l!14304) e!2963597)))

(declare-fun b!4750957 () Bool)

(declare-fun e!2963598 () Bool)

(assert (=> b!4750957 (= e!2963597 e!2963598)))

(declare-fun res!2014598 () Bool)

(assert (=> b!4750957 (=> (not res!2014598) (not e!2963598))))

(assert (=> b!4750957 (= res!2014598 (not (containsKey!3553 (t!360534 l!14304) (_1!30718 (h!59479 l!14304)))))))

(declare-fun b!4750958 () Bool)

(assert (=> b!4750958 (= e!2963598 (noDuplicateKeys!2144 (t!360534 l!14304)))))

(assert (= (and d!1518452 (not res!2014597)) b!4750957))

(assert (= (and b!4750957 res!2014598) b!4750958))

(declare-fun m!5712661 () Bool)

(assert (=> b!4750957 m!5712661))

(assert (=> b!4750958 m!5712471))

(assert (=> start!485440 d!1518452))

(declare-fun d!1518454 () Bool)

(assert (=> d!1518454 (= (inv!68380 acc!1214) (invariantList!1590 (toList!6112 acc!1214)))))

(declare-fun bs!1140702 () Bool)

(assert (= bs!1140702 d!1518454))

(declare-fun m!5712663 () Bool)

(assert (=> bs!1140702 m!5712663))

(assert (=> start!485440 d!1518454))

(declare-fun d!1518456 () Bool)

(assert (=> d!1518456 (= (eq!1213 lt!1914585 (addToMapMapFromBucket!1568 (t!360534 l!14304) (+!2378 lt!1914583 t!14174))) (= (content!9524 (toList!6112 lt!1914585)) (content!9524 (toList!6112 (addToMapMapFromBucket!1568 (t!360534 l!14304) (+!2378 lt!1914583 t!14174))))))))

(declare-fun bs!1140703 () Bool)

(assert (= bs!1140703 d!1518456))

(assert (=> bs!1140703 m!5712491))

(declare-fun m!5712665 () Bool)

(assert (=> bs!1140703 m!5712665))

(assert (=> b!4750835 d!1518456))

(declare-fun bs!1140704 () Bool)

(declare-fun b!4750960 () Bool)

(assert (= bs!1140704 (and b!4750960 b!4750897)))

(declare-fun lambda!221881 () Int)

(assert (=> bs!1140704 (= (= (+!2378 lt!1914583 t!14174) (+!2378 acc!1214 t!14174)) (= lambda!221881 lambda!221851))))

(declare-fun bs!1140705 () Bool)

(assert (= bs!1140705 (and b!4750960 b!4750883)))

(assert (=> bs!1140705 (= (= (+!2378 lt!1914583 t!14174) lt!1914742) (= lambda!221881 lambda!221847))))

(declare-fun bs!1140706 () Bool)

(assert (= bs!1140706 (and b!4750960 d!1518442)))

(assert (=> bs!1140706 (= (= (+!2378 lt!1914583 t!14174) lt!1914923) (= lambda!221881 lambda!221880))))

(declare-fun bs!1140707 () Bool)

(assert (= bs!1140707 (and b!4750960 d!1518426)))

(assert (=> bs!1140707 (= (= (+!2378 lt!1914583 t!14174) lt!1914852) (= lambda!221881 lambda!221868))))

(declare-fun bs!1140708 () Bool)

(assert (= bs!1140708 (and b!4750960 b!4750939)))

(assert (=> bs!1140708 (= (= (+!2378 lt!1914583 t!14174) lt!1914941) (= lambda!221881 lambda!221879))))

(declare-fun bs!1140709 () Bool)

(assert (= bs!1140709 (and b!4750960 b!4750920)))

(assert (=> bs!1140709 (= (= (+!2378 lt!1914583 t!14174) lt!1914870) (= lambda!221881 lambda!221866))))

(declare-fun bs!1140710 () Bool)

(assert (= bs!1140710 (and b!4750960 b!4750932)))

(assert (=> bs!1140710 (= (= (+!2378 lt!1914583 t!14174) lt!1914583) (= lambda!221881 lambda!221871))))

(declare-fun bs!1140711 () Bool)

(assert (= bs!1140711 (and b!4750960 b!4750930)))

(assert (=> bs!1140711 (= (= (+!2378 lt!1914583 t!14174) lt!1914583) (= lambda!221881 lambda!221870))))

(declare-fun bs!1140712 () Bool)

(assert (= bs!1140712 (and b!4750960 b!4750899)))

(assert (=> bs!1140712 (= (= (+!2378 lt!1914583 t!14174) lt!1914795) (= lambda!221881 lambda!221854))))

(declare-fun bs!1140713 () Bool)

(assert (= bs!1140713 (and b!4750960 d!1518398)))

(assert (=> bs!1140713 (= (= (+!2378 lt!1914583 t!14174) lt!1914724) (= lambda!221881 lambda!221848))))

(assert (=> bs!1140712 (= (= (+!2378 lt!1914583 t!14174) (+!2378 acc!1214 t!14174)) (= lambda!221881 lambda!221853))))

(assert (=> bs!1140710 (= (= (+!2378 lt!1914583 t!14174) lt!1914916) (= lambda!221881 lambda!221873))))

(declare-fun bs!1140714 () Bool)

(assert (= bs!1140714 (and b!4750960 b!4750937)))

(assert (=> bs!1140714 (= (= (+!2378 lt!1914583 t!14174) acc!1214) (= lambda!221881 lambda!221877))))

(declare-fun bs!1140715 () Bool)

(assert (= bs!1140715 (and b!4750960 d!1518412)))

(assert (=> bs!1140715 (= (= (+!2378 lt!1914583 t!14174) lt!1914777) (= lambda!221881 lambda!221856))))

(declare-fun bs!1140716 () Bool)

(assert (= bs!1140716 (and b!4750960 d!1518436)))

(assert (=> bs!1140716 (= (= (+!2378 lt!1914583 t!14174) lt!1914898) (= lambda!221881 lambda!221875))))

(assert (=> bs!1140708 (= (= (+!2378 lt!1914583 t!14174) acc!1214) (= lambda!221881 lambda!221878))))

(assert (=> bs!1140709 (= (= (+!2378 lt!1914583 t!14174) lt!1914583) (= lambda!221881 lambda!221864))))

(declare-fun bs!1140717 () Bool)

(assert (= bs!1140717 (and b!4750960 b!4750881)))

(assert (=> bs!1140717 (= (= (+!2378 lt!1914583 t!14174) acc!1214) (= lambda!221881 lambda!221845))))

(assert (=> bs!1140705 (= (= (+!2378 lt!1914583 t!14174) acc!1214) (= lambda!221881 lambda!221846))))

(declare-fun bs!1140718 () Bool)

(assert (= bs!1140718 (and b!4750960 b!4750918)))

(assert (=> bs!1140718 (= (= (+!2378 lt!1914583 t!14174) lt!1914583) (= lambda!221881 lambda!221863))))

(assert (=> b!4750960 true))

(declare-fun bs!1140719 () Bool)

(declare-fun b!4750962 () Bool)

(assert (= bs!1140719 (and b!4750962 b!4750897)))

(declare-fun lambda!221882 () Int)

(assert (=> bs!1140719 (= (= (+!2378 lt!1914583 t!14174) (+!2378 acc!1214 t!14174)) (= lambda!221882 lambda!221851))))

(declare-fun bs!1140720 () Bool)

(assert (= bs!1140720 (and b!4750962 b!4750883)))

(assert (=> bs!1140720 (= (= (+!2378 lt!1914583 t!14174) lt!1914742) (= lambda!221882 lambda!221847))))

(declare-fun bs!1140721 () Bool)

(assert (= bs!1140721 (and b!4750962 d!1518442)))

(assert (=> bs!1140721 (= (= (+!2378 lt!1914583 t!14174) lt!1914923) (= lambda!221882 lambda!221880))))

(declare-fun bs!1140722 () Bool)

(assert (= bs!1140722 (and b!4750962 d!1518426)))

(assert (=> bs!1140722 (= (= (+!2378 lt!1914583 t!14174) lt!1914852) (= lambda!221882 lambda!221868))))

(declare-fun bs!1140723 () Bool)

(assert (= bs!1140723 (and b!4750962 b!4750939)))

(assert (=> bs!1140723 (= (= (+!2378 lt!1914583 t!14174) lt!1914941) (= lambda!221882 lambda!221879))))

(declare-fun bs!1140724 () Bool)

(assert (= bs!1140724 (and b!4750962 b!4750920)))

(assert (=> bs!1140724 (= (= (+!2378 lt!1914583 t!14174) lt!1914870) (= lambda!221882 lambda!221866))))

(declare-fun bs!1140725 () Bool)

(assert (= bs!1140725 (and b!4750962 b!4750932)))

(assert (=> bs!1140725 (= (= (+!2378 lt!1914583 t!14174) lt!1914583) (= lambda!221882 lambda!221871))))

(declare-fun bs!1140726 () Bool)

(assert (= bs!1140726 (and b!4750962 b!4750930)))

(assert (=> bs!1140726 (= (= (+!2378 lt!1914583 t!14174) lt!1914583) (= lambda!221882 lambda!221870))))

(declare-fun bs!1140727 () Bool)

(assert (= bs!1140727 (and b!4750962 b!4750899)))

(assert (=> bs!1140727 (= (= (+!2378 lt!1914583 t!14174) lt!1914795) (= lambda!221882 lambda!221854))))

(declare-fun bs!1140728 () Bool)

(assert (= bs!1140728 (and b!4750962 d!1518398)))

(assert (=> bs!1140728 (= (= (+!2378 lt!1914583 t!14174) lt!1914724) (= lambda!221882 lambda!221848))))

(assert (=> bs!1140727 (= (= (+!2378 lt!1914583 t!14174) (+!2378 acc!1214 t!14174)) (= lambda!221882 lambda!221853))))

(assert (=> bs!1140725 (= (= (+!2378 lt!1914583 t!14174) lt!1914916) (= lambda!221882 lambda!221873))))

(declare-fun bs!1140729 () Bool)

(assert (= bs!1140729 (and b!4750962 b!4750937)))

(assert (=> bs!1140729 (= (= (+!2378 lt!1914583 t!14174) acc!1214) (= lambda!221882 lambda!221877))))

(declare-fun bs!1140730 () Bool)

(assert (= bs!1140730 (and b!4750962 d!1518412)))

(assert (=> bs!1140730 (= (= (+!2378 lt!1914583 t!14174) lt!1914777) (= lambda!221882 lambda!221856))))

(declare-fun bs!1140731 () Bool)

(assert (= bs!1140731 (and b!4750962 d!1518436)))

(assert (=> bs!1140731 (= (= (+!2378 lt!1914583 t!14174) lt!1914898) (= lambda!221882 lambda!221875))))

(assert (=> bs!1140723 (= (= (+!2378 lt!1914583 t!14174) acc!1214) (= lambda!221882 lambda!221878))))

(assert (=> bs!1140724 (= (= (+!2378 lt!1914583 t!14174) lt!1914583) (= lambda!221882 lambda!221864))))

(declare-fun bs!1140732 () Bool)

(assert (= bs!1140732 (and b!4750962 b!4750881)))

(assert (=> bs!1140732 (= (= (+!2378 lt!1914583 t!14174) acc!1214) (= lambda!221882 lambda!221845))))

(assert (=> bs!1140720 (= (= (+!2378 lt!1914583 t!14174) acc!1214) (= lambda!221882 lambda!221846))))

(declare-fun bs!1140733 () Bool)

(assert (= bs!1140733 (and b!4750962 b!4750960)))

(assert (=> bs!1140733 (= lambda!221882 lambda!221881)))

(declare-fun bs!1140734 () Bool)

(assert (= bs!1140734 (and b!4750962 b!4750918)))

(assert (=> bs!1140734 (= (= (+!2378 lt!1914583 t!14174) lt!1914583) (= lambda!221882 lambda!221863))))

(assert (=> b!4750962 true))

(declare-fun lt!1914969 () ListMap!5533)

(declare-fun lambda!221883 () Int)

(assert (=> bs!1140719 (= (= lt!1914969 (+!2378 acc!1214 t!14174)) (= lambda!221883 lambda!221851))))

(assert (=> bs!1140720 (= (= lt!1914969 lt!1914742) (= lambda!221883 lambda!221847))))

(assert (=> bs!1140721 (= (= lt!1914969 lt!1914923) (= lambda!221883 lambda!221880))))

(assert (=> bs!1140722 (= (= lt!1914969 lt!1914852) (= lambda!221883 lambda!221868))))

(assert (=> bs!1140723 (= (= lt!1914969 lt!1914941) (= lambda!221883 lambda!221879))))

(assert (=> bs!1140724 (= (= lt!1914969 lt!1914870) (= lambda!221883 lambda!221866))))

(assert (=> bs!1140725 (= (= lt!1914969 lt!1914583) (= lambda!221883 lambda!221871))))

(assert (=> bs!1140726 (= (= lt!1914969 lt!1914583) (= lambda!221883 lambda!221870))))

(assert (=> bs!1140727 (= (= lt!1914969 lt!1914795) (= lambda!221883 lambda!221854))))

(assert (=> bs!1140727 (= (= lt!1914969 (+!2378 acc!1214 t!14174)) (= lambda!221883 lambda!221853))))

(assert (=> bs!1140725 (= (= lt!1914969 lt!1914916) (= lambda!221883 lambda!221873))))

(assert (=> bs!1140729 (= (= lt!1914969 acc!1214) (= lambda!221883 lambda!221877))))

(assert (=> bs!1140730 (= (= lt!1914969 lt!1914777) (= lambda!221883 lambda!221856))))

(assert (=> bs!1140731 (= (= lt!1914969 lt!1914898) (= lambda!221883 lambda!221875))))

(assert (=> bs!1140723 (= (= lt!1914969 acc!1214) (= lambda!221883 lambda!221878))))

(assert (=> bs!1140724 (= (= lt!1914969 lt!1914583) (= lambda!221883 lambda!221864))))

(assert (=> bs!1140732 (= (= lt!1914969 acc!1214) (= lambda!221883 lambda!221845))))

(assert (=> bs!1140720 (= (= lt!1914969 acc!1214) (= lambda!221883 lambda!221846))))

(assert (=> bs!1140733 (= (= lt!1914969 (+!2378 lt!1914583 t!14174)) (= lambda!221883 lambda!221881))))

(assert (=> bs!1140734 (= (= lt!1914969 lt!1914583) (= lambda!221883 lambda!221863))))

(assert (=> b!4750962 (= (= lt!1914969 (+!2378 lt!1914583 t!14174)) (= lambda!221883 lambda!221882))))

(assert (=> bs!1140728 (= (= lt!1914969 lt!1914724) (= lambda!221883 lambda!221848))))

(assert (=> b!4750962 true))

(declare-fun bs!1140735 () Bool)

(declare-fun d!1518458 () Bool)

(assert (= bs!1140735 (and d!1518458 b!4750897)))

(declare-fun lt!1914951 () ListMap!5533)

(declare-fun lambda!221884 () Int)

(assert (=> bs!1140735 (= (= lt!1914951 (+!2378 acc!1214 t!14174)) (= lambda!221884 lambda!221851))))

(declare-fun bs!1140736 () Bool)

(assert (= bs!1140736 (and d!1518458 b!4750883)))

(assert (=> bs!1140736 (= (= lt!1914951 lt!1914742) (= lambda!221884 lambda!221847))))

(declare-fun bs!1140737 () Bool)

(assert (= bs!1140737 (and d!1518458 d!1518442)))

(assert (=> bs!1140737 (= (= lt!1914951 lt!1914923) (= lambda!221884 lambda!221880))))

(declare-fun bs!1140738 () Bool)

(assert (= bs!1140738 (and d!1518458 d!1518426)))

(assert (=> bs!1140738 (= (= lt!1914951 lt!1914852) (= lambda!221884 lambda!221868))))

(declare-fun bs!1140739 () Bool)

(assert (= bs!1140739 (and d!1518458 b!4750939)))

(assert (=> bs!1140739 (= (= lt!1914951 lt!1914941) (= lambda!221884 lambda!221879))))

(declare-fun bs!1140740 () Bool)

(assert (= bs!1140740 (and d!1518458 b!4750920)))

(assert (=> bs!1140740 (= (= lt!1914951 lt!1914870) (= lambda!221884 lambda!221866))))

(declare-fun bs!1140741 () Bool)

(assert (= bs!1140741 (and d!1518458 b!4750932)))

(assert (=> bs!1140741 (= (= lt!1914951 lt!1914583) (= lambda!221884 lambda!221871))))

(declare-fun bs!1140742 () Bool)

(assert (= bs!1140742 (and d!1518458 b!4750930)))

(assert (=> bs!1140742 (= (= lt!1914951 lt!1914583) (= lambda!221884 lambda!221870))))

(declare-fun bs!1140743 () Bool)

(assert (= bs!1140743 (and d!1518458 b!4750899)))

(assert (=> bs!1140743 (= (= lt!1914951 lt!1914795) (= lambda!221884 lambda!221854))))

(assert (=> bs!1140743 (= (= lt!1914951 (+!2378 acc!1214 t!14174)) (= lambda!221884 lambda!221853))))

(assert (=> bs!1140741 (= (= lt!1914951 lt!1914916) (= lambda!221884 lambda!221873))))

(declare-fun bs!1140744 () Bool)

(assert (= bs!1140744 (and d!1518458 b!4750937)))

(assert (=> bs!1140744 (= (= lt!1914951 acc!1214) (= lambda!221884 lambda!221877))))

(declare-fun bs!1140745 () Bool)

(assert (= bs!1140745 (and d!1518458 d!1518412)))

(assert (=> bs!1140745 (= (= lt!1914951 lt!1914777) (= lambda!221884 lambda!221856))))

(declare-fun bs!1140746 () Bool)

(assert (= bs!1140746 (and d!1518458 b!4750962)))

(assert (=> bs!1140746 (= (= lt!1914951 lt!1914969) (= lambda!221884 lambda!221883))))

(declare-fun bs!1140747 () Bool)

(assert (= bs!1140747 (and d!1518458 d!1518436)))

(assert (=> bs!1140747 (= (= lt!1914951 lt!1914898) (= lambda!221884 lambda!221875))))

(assert (=> bs!1140739 (= (= lt!1914951 acc!1214) (= lambda!221884 lambda!221878))))

(assert (=> bs!1140740 (= (= lt!1914951 lt!1914583) (= lambda!221884 lambda!221864))))

(declare-fun bs!1140748 () Bool)

(assert (= bs!1140748 (and d!1518458 b!4750881)))

(assert (=> bs!1140748 (= (= lt!1914951 acc!1214) (= lambda!221884 lambda!221845))))

(assert (=> bs!1140736 (= (= lt!1914951 acc!1214) (= lambda!221884 lambda!221846))))

(declare-fun bs!1140749 () Bool)

(assert (= bs!1140749 (and d!1518458 b!4750960)))

(assert (=> bs!1140749 (= (= lt!1914951 (+!2378 lt!1914583 t!14174)) (= lambda!221884 lambda!221881))))

(declare-fun bs!1140750 () Bool)

(assert (= bs!1140750 (and d!1518458 b!4750918)))

(assert (=> bs!1140750 (= (= lt!1914951 lt!1914583) (= lambda!221884 lambda!221863))))

(assert (=> bs!1140746 (= (= lt!1914951 (+!2378 lt!1914583 t!14174)) (= lambda!221884 lambda!221882))))

(declare-fun bs!1140751 () Bool)

(assert (= bs!1140751 (and d!1518458 d!1518398)))

(assert (=> bs!1140751 (= (= lt!1914951 lt!1914724) (= lambda!221884 lambda!221848))))

(assert (=> d!1518458 true))

(declare-fun b!4750959 () Bool)

(declare-fun e!2963599 () Bool)

(assert (=> b!4750959 (= e!2963599 (invariantList!1590 (toList!6112 lt!1914951)))))

(declare-fun bm!332766 () Bool)

(declare-fun c!811175 () Bool)

(declare-fun call!332773 () Bool)

(assert (=> bm!332766 (= call!332773 (forall!11758 (ite c!811175 (toList!6112 (+!2378 lt!1914583 t!14174)) (t!360534 l!14304)) (ite c!811175 lambda!221881 lambda!221883)))))

(assert (=> d!1518458 e!2963599))

(declare-fun res!2014600 () Bool)

(assert (=> d!1518458 (=> (not res!2014600) (not e!2963599))))

(assert (=> d!1518458 (= res!2014600 (forall!11758 (t!360534 l!14304) lambda!221884))))

(declare-fun e!2963601 () ListMap!5533)

(assert (=> d!1518458 (= lt!1914951 e!2963601)))

(assert (=> d!1518458 (= c!811175 ((_ is Nil!53082) (t!360534 l!14304)))))

(assert (=> d!1518458 (noDuplicateKeys!2144 (t!360534 l!14304))))

(assert (=> d!1518458 (= (addToMapMapFromBucket!1568 (t!360534 l!14304) (+!2378 lt!1914583 t!14174)) lt!1914951)))

(declare-fun bm!332767 () Bool)

(declare-fun call!332771 () Unit!135600)

(assert (=> bm!332767 (= call!332771 (lemmaContainsAllItsOwnKeys!873 (+!2378 lt!1914583 t!14174)))))

(declare-fun call!332772 () Bool)

(declare-fun bm!332768 () Bool)

(assert (=> bm!332768 (= call!332772 (forall!11758 (toList!6112 (+!2378 lt!1914583 t!14174)) (ite c!811175 lambda!221881 lambda!221883)))))

(assert (=> b!4750960 (= e!2963601 (+!2378 lt!1914583 t!14174))))

(declare-fun lt!1914958 () Unit!135600)

(assert (=> b!4750960 (= lt!1914958 call!332771)))

(assert (=> b!4750960 call!332773))

(declare-fun lt!1914960 () Unit!135600)

(assert (=> b!4750960 (= lt!1914960 lt!1914958)))

(assert (=> b!4750960 call!332772))

(declare-fun lt!1914954 () Unit!135600)

(declare-fun Unit!135723 () Unit!135600)

(assert (=> b!4750960 (= lt!1914954 Unit!135723)))

(declare-fun b!4750961 () Bool)

(declare-fun e!2963600 () Bool)

(assert (=> b!4750961 (= e!2963600 call!332772)))

(assert (=> b!4750962 (= e!2963601 lt!1914969)))

(declare-fun lt!1914959 () ListMap!5533)

(assert (=> b!4750962 (= lt!1914959 (+!2378 (+!2378 lt!1914583 t!14174) (h!59479 (t!360534 l!14304))))))

(assert (=> b!4750962 (= lt!1914969 (addToMapMapFromBucket!1568 (t!360534 (t!360534 l!14304)) (+!2378 (+!2378 lt!1914583 t!14174) (h!59479 (t!360534 l!14304)))))))

(declare-fun lt!1914964 () Unit!135600)

(assert (=> b!4750962 (= lt!1914964 call!332771)))

(assert (=> b!4750962 (forall!11758 (toList!6112 (+!2378 lt!1914583 t!14174)) lambda!221882)))

(declare-fun lt!1914970 () Unit!135600)

(assert (=> b!4750962 (= lt!1914970 lt!1914964)))

(assert (=> b!4750962 (forall!11758 (toList!6112 lt!1914959) lambda!221883)))

(declare-fun lt!1914955 () Unit!135600)

(declare-fun Unit!135724 () Unit!135600)

(assert (=> b!4750962 (= lt!1914955 Unit!135724)))

(assert (=> b!4750962 (forall!11758 (t!360534 (t!360534 l!14304)) lambda!221883)))

(declare-fun lt!1914971 () Unit!135600)

(declare-fun Unit!135725 () Unit!135600)

(assert (=> b!4750962 (= lt!1914971 Unit!135725)))

(declare-fun lt!1914961 () Unit!135600)

(declare-fun Unit!135726 () Unit!135600)

(assert (=> b!4750962 (= lt!1914961 Unit!135726)))

(declare-fun lt!1914953 () Unit!135600)

(assert (=> b!4750962 (= lt!1914953 (forallContained!3784 (toList!6112 lt!1914959) lambda!221883 (h!59479 (t!360534 l!14304))))))

(assert (=> b!4750962 (contains!16502 lt!1914959 (_1!30718 (h!59479 (t!360534 l!14304))))))

(declare-fun lt!1914956 () Unit!135600)

(declare-fun Unit!135727 () Unit!135600)

(assert (=> b!4750962 (= lt!1914956 Unit!135727)))

(assert (=> b!4750962 (contains!16502 lt!1914969 (_1!30718 (h!59479 (t!360534 l!14304))))))

(declare-fun lt!1914957 () Unit!135600)

(declare-fun Unit!135728 () Unit!135600)

(assert (=> b!4750962 (= lt!1914957 Unit!135728)))

(assert (=> b!4750962 call!332773))

(declare-fun lt!1914968 () Unit!135600)

(declare-fun Unit!135729 () Unit!135600)

(assert (=> b!4750962 (= lt!1914968 Unit!135729)))

(assert (=> b!4750962 (forall!11758 (toList!6112 lt!1914959) lambda!221883)))

(declare-fun lt!1914967 () Unit!135600)

(declare-fun Unit!135730 () Unit!135600)

(assert (=> b!4750962 (= lt!1914967 Unit!135730)))

(declare-fun lt!1914963 () Unit!135600)

(declare-fun Unit!135731 () Unit!135600)

(assert (=> b!4750962 (= lt!1914963 Unit!135731)))

(declare-fun lt!1914966 () Unit!135600)

(assert (=> b!4750962 (= lt!1914966 (addForallContainsKeyThenBeforeAdding!872 (+!2378 lt!1914583 t!14174) lt!1914969 (_1!30718 (h!59479 (t!360534 l!14304))) (_2!30718 (h!59479 (t!360534 l!14304)))))))

(assert (=> b!4750962 (forall!11758 (toList!6112 (+!2378 lt!1914583 t!14174)) lambda!221883)))

(declare-fun lt!1914952 () Unit!135600)

(assert (=> b!4750962 (= lt!1914952 lt!1914966)))

(assert (=> b!4750962 (forall!11758 (toList!6112 (+!2378 lt!1914583 t!14174)) lambda!221883)))

(declare-fun lt!1914965 () Unit!135600)

(declare-fun Unit!135732 () Unit!135600)

(assert (=> b!4750962 (= lt!1914965 Unit!135732)))

(declare-fun res!2014601 () Bool)

(assert (=> b!4750962 (= res!2014601 (forall!11758 (t!360534 l!14304) lambda!221883))))

(assert (=> b!4750962 (=> (not res!2014601) (not e!2963600))))

(assert (=> b!4750962 e!2963600))

(declare-fun lt!1914962 () Unit!135600)

(declare-fun Unit!135733 () Unit!135600)

(assert (=> b!4750962 (= lt!1914962 Unit!135733)))

(declare-fun b!4750963 () Bool)

(declare-fun res!2014599 () Bool)

(assert (=> b!4750963 (=> (not res!2014599) (not e!2963599))))

(assert (=> b!4750963 (= res!2014599 (forall!11758 (toList!6112 (+!2378 lt!1914583 t!14174)) lambda!221884))))

(assert (= (and d!1518458 c!811175) b!4750960))

(assert (= (and d!1518458 (not c!811175)) b!4750962))

(assert (= (and b!4750962 res!2014601) b!4750961))

(assert (= (or b!4750960 b!4750962) bm!332767))

(assert (= (or b!4750960 b!4750961) bm!332768))

(assert (= (or b!4750960 b!4750962) bm!332766))

(assert (= (and d!1518458 res!2014600) b!4750963))

(assert (= (and b!4750963 res!2014599) b!4750959))

(declare-fun m!5712667 () Bool)

(assert (=> b!4750963 m!5712667))

(declare-fun m!5712669 () Bool)

(assert (=> bm!332766 m!5712669))

(declare-fun m!5712671 () Bool)

(assert (=> b!4750962 m!5712671))

(declare-fun m!5712673 () Bool)

(assert (=> b!4750962 m!5712673))

(declare-fun m!5712675 () Bool)

(assert (=> b!4750962 m!5712675))

(declare-fun m!5712677 () Bool)

(assert (=> b!4750962 m!5712677))

(declare-fun m!5712679 () Bool)

(assert (=> b!4750962 m!5712679))

(declare-fun m!5712681 () Bool)

(assert (=> b!4750962 m!5712681))

(declare-fun m!5712683 () Bool)

(assert (=> b!4750962 m!5712683))

(declare-fun m!5712685 () Bool)

(assert (=> b!4750962 m!5712685))

(assert (=> b!4750962 m!5712673))

(assert (=> b!4750962 m!5712121))

(declare-fun m!5712687 () Bool)

(assert (=> b!4750962 m!5712687))

(declare-fun m!5712689 () Bool)

(assert (=> b!4750962 m!5712689))

(declare-fun m!5712691 () Bool)

(assert (=> b!4750962 m!5712691))

(assert (=> b!4750962 m!5712121))

(assert (=> b!4750962 m!5712681))

(assert (=> b!4750962 m!5712679))

(assert (=> bm!332767 m!5712121))

(declare-fun m!5712693 () Bool)

(assert (=> bm!332767 m!5712693))

(declare-fun m!5712695 () Bool)

(assert (=> d!1518458 m!5712695))

(assert (=> d!1518458 m!5712471))

(declare-fun m!5712697 () Bool)

(assert (=> bm!332768 m!5712697))

(declare-fun m!5712699 () Bool)

(assert (=> b!4750959 m!5712699))

(assert (=> b!4750835 d!1518458))

(declare-fun d!1518460 () Bool)

(declare-fun e!2963602 () Bool)

(assert (=> d!1518460 e!2963602))

(declare-fun res!2014603 () Bool)

(assert (=> d!1518460 (=> (not res!2014603) (not e!2963602))))

(declare-fun lt!1914975 () ListMap!5533)

(assert (=> d!1518460 (= res!2014603 (contains!16502 lt!1914975 (_1!30718 t!14174)))))

(declare-fun lt!1914972 () List!53206)

(assert (=> d!1518460 (= lt!1914975 (ListMap!5534 lt!1914972))))

(declare-fun lt!1914974 () Unit!135600)

(declare-fun lt!1914973 () Unit!135600)

(assert (=> d!1518460 (= lt!1914974 lt!1914973)))

(assert (=> d!1518460 (= (getValueByKey!2077 lt!1914972 (_1!30718 t!14174)) (Some!12526 (_2!30718 t!14174)))))

(assert (=> d!1518460 (= lt!1914973 (lemmaContainsTupThenGetReturnValue!1154 lt!1914972 (_1!30718 t!14174) (_2!30718 t!14174)))))

(assert (=> d!1518460 (= lt!1914972 (insertNoDuplicatedKeys!662 (toList!6112 lt!1914583) (_1!30718 t!14174) (_2!30718 t!14174)))))

(assert (=> d!1518460 (= (+!2378 lt!1914583 t!14174) lt!1914975)))

(declare-fun b!4750964 () Bool)

(declare-fun res!2014602 () Bool)

(assert (=> b!4750964 (=> (not res!2014602) (not e!2963602))))

(assert (=> b!4750964 (= res!2014602 (= (getValueByKey!2077 (toList!6112 lt!1914975) (_1!30718 t!14174)) (Some!12526 (_2!30718 t!14174))))))

(declare-fun b!4750965 () Bool)

(assert (=> b!4750965 (= e!2963602 (contains!16503 (toList!6112 lt!1914975) t!14174))))

(assert (= (and d!1518460 res!2014603) b!4750964))

(assert (= (and b!4750964 res!2014602) b!4750965))

(declare-fun m!5712701 () Bool)

(assert (=> d!1518460 m!5712701))

(declare-fun m!5712703 () Bool)

(assert (=> d!1518460 m!5712703))

(declare-fun m!5712705 () Bool)

(assert (=> d!1518460 m!5712705))

(declare-fun m!5712707 () Bool)

(assert (=> d!1518460 m!5712707))

(declare-fun m!5712709 () Bool)

(assert (=> b!4750964 m!5712709))

(declare-fun m!5712711 () Bool)

(assert (=> b!4750965 m!5712711))

(assert (=> b!4750835 d!1518460))

(declare-fun e!2963605 () Bool)

(declare-fun b!4750970 () Bool)

(declare-fun tp!1350152 () Bool)

(assert (=> b!4750970 (= e!2963605 (and tp_is_empty!31869 tp_is_empty!31871 tp!1350152))))

(assert (=> b!4750830 (= tp!1350145 e!2963605)))

(assert (= (and b!4750830 ((_ is Cons!53082) (t!360534 l!14304))) b!4750970))

(declare-fun tp!1350153 () Bool)

(declare-fun e!2963606 () Bool)

(declare-fun b!4750971 () Bool)

(assert (=> b!4750971 (= e!2963606 (and tp_is_empty!31869 tp_is_empty!31871 tp!1350153))))

(assert (=> b!4750829 (= tp!1350144 e!2963606)))

(assert (= (and b!4750829 ((_ is Cons!53082) (toList!6112 acc!1214))) b!4750971))

(check-sat (not b!4750933) (not b!4750896) (not b!4750899) (not b!4750958) (not b!4750971) (not bm!332760) (not bm!332756) (not b!4750921) (not b!4750959) (not b!4750965) (not d!1518398) (not b!4750940) (not bm!332745) (not bm!332761) (not b!4750957) (not b!4750922) (not b!4750935) (not d!1518456) (not bm!332755) (not bm!332747) (not bm!332767) (not d!1518412) (not bm!332762) (not b!4750936) (not b!4750964) (not b!4750884) (not d!1518438) (not b!4750900) (not bm!332739) (not b!4750920) (not b!4750916) (not d!1518428) (not b!4750970) (not b!4750883) (not bm!332754) tp_is_empty!31869 (not d!1518442) (not b!4750932) (not d!1518426) (not bm!332763) (not b!4750929) (not b!4750917) (not d!1518430) (not bm!332765) (not b!4750963) (not b!4750962) (not b!4750880) (not bm!332746) (not d!1518436) (not d!1518454) (not bm!332768) (not b!4750934) (not d!1518458) (not b!4750915) (not b!4750923) (not bm!332740) (not b!4750956) (not b!4750939) tp_is_empty!31871 (not bm!332741) (not d!1518392) (not d!1518460) (not d!1518416) (not d!1518440) (not bm!332766) (not d!1518448) (not bm!332764) (not b!4750955))
(check-sat)
