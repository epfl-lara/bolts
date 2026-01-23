; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!437380 () Bool)

(assert start!437380)

(declare-fun b!4460385 () Bool)

(declare-fun res!1849597 () Bool)

(declare-fun e!2777463 () Bool)

(assert (=> b!4460385 (=> (not res!1849597) (not e!2777463))))

(declare-datatypes ((K!11560 0))(
  ( (K!11561 (val!17519 Int)) )
))
(declare-datatypes ((V!11806 0))(
  ( (V!11807 (val!17520 Int)) )
))
(declare-datatypes ((tuple2!50328 0))(
  ( (tuple2!50329 (_1!28458 K!11560) (_2!28458 V!11806)) )
))
(declare-datatypes ((List!50283 0))(
  ( (Nil!50159) (Cons!50159 (h!55904 tuple2!50328) (t!357233 List!50283)) )
))
(declare-datatypes ((ListMap!3205 0))(
  ( (ListMap!3206 (toList!3954 List!50283)) )
))
(declare-fun acc!957 () ListMap!3205)

(declare-fun l!12755 () List!50283)

(declare-fun key!4289 () K!11560)

(declare-fun contains!12661 (ListMap!3205 K!11560) Bool)

(declare-fun addToMapMapFromBucket!561 (List!50283 ListMap!3205) ListMap!3205)

(assert (=> b!4460385 (= res!1849597 (contains!12661 (addToMapMapFromBucket!561 l!12755 acc!957) key!4289))))

(declare-fun b!4460386 () Bool)

(declare-fun e!2777464 () Bool)

(assert (=> b!4460386 (= e!2777463 e!2777464)))

(declare-fun res!1849598 () Bool)

(assert (=> b!4460386 (=> (not res!1849598) (not e!2777464))))

(assert (=> b!4460386 (= res!1849598 (not (= (_1!28458 (h!55904 l!12755)) key!4289)))))

(declare-fun lt!1651498 () ListMap!3205)

(declare-fun +!1335 (ListMap!3205 tuple2!50328) ListMap!3205)

(assert (=> b!4460386 (= lt!1651498 (+!1335 acc!957 (h!55904 l!12755)))))

(declare-fun res!1849600 () Bool)

(assert (=> start!437380 (=> (not res!1849600) (not e!2777463))))

(declare-fun noDuplicateKeys!982 (List!50283) Bool)

(assert (=> start!437380 (= res!1849600 (noDuplicateKeys!982 l!12755))))

(assert (=> start!437380 e!2777463))

(declare-fun e!2777465 () Bool)

(assert (=> start!437380 e!2777465))

(declare-fun tp_is_empty!27149 () Bool)

(assert (=> start!437380 tp_is_empty!27149))

(declare-fun e!2777462 () Bool)

(declare-fun inv!65744 (ListMap!3205) Bool)

(assert (=> start!437380 (and (inv!65744 acc!957) e!2777462)))

(declare-fun b!4460387 () Bool)

(declare-fun tp_is_empty!27151 () Bool)

(declare-fun tp!1335663 () Bool)

(assert (=> b!4460387 (= e!2777465 (and tp_is_empty!27149 tp_is_empty!27151 tp!1335663))))

(declare-fun b!4460388 () Bool)

(declare-fun tp!1335662 () Bool)

(assert (=> b!4460388 (= e!2777462 tp!1335662)))

(declare-fun b!4460389 () Bool)

(declare-fun res!1849599 () Bool)

(assert (=> b!4460389 (=> (not res!1849599) (not e!2777463))))

(get-info :version)

(assert (=> b!4460389 (= res!1849599 ((_ is Cons!50159) l!12755))))

(declare-fun b!4460390 () Bool)

(assert (=> b!4460390 (= e!2777464 (not (contains!12661 (addToMapMapFromBucket!561 (t!357233 l!12755) lt!1651498) key!4289)))))

(declare-fun b!4460391 () Bool)

(declare-fun res!1849601 () Bool)

(assert (=> b!4460391 (=> (not res!1849601) (not e!2777463))))

(declare-fun containsKey!1388 (List!50283 K!11560) Bool)

(assert (=> b!4460391 (= res!1849601 (not (containsKey!1388 l!12755 key!4289)))))

(declare-fun b!4460392 () Bool)

(declare-fun res!1849602 () Bool)

(assert (=> b!4460392 (=> (not res!1849602) (not e!2777464))))

(assert (=> b!4460392 (= res!1849602 (not (containsKey!1388 (t!357233 l!12755) key!4289)))))

(declare-fun b!4460393 () Bool)

(declare-fun res!1849603 () Bool)

(assert (=> b!4460393 (=> (not res!1849603) (not e!2777464))))

(assert (=> b!4460393 (= res!1849603 (noDuplicateKeys!982 (t!357233 l!12755)))))

(assert (= (and start!437380 res!1849600) b!4460391))

(assert (= (and b!4460391 res!1849601) b!4460385))

(assert (= (and b!4460385 res!1849597) b!4460389))

(assert (= (and b!4460389 res!1849599) b!4460386))

(assert (= (and b!4460386 res!1849598) b!4460393))

(assert (= (and b!4460393 res!1849603) b!4460392))

(assert (= (and b!4460392 res!1849602) b!4460390))

(assert (= (and start!437380 ((_ is Cons!50159) l!12755)) b!4460387))

(assert (= start!437380 b!4460388))

(declare-fun m!5163257 () Bool)

(assert (=> b!4460392 m!5163257))

(declare-fun m!5163259 () Bool)

(assert (=> b!4460386 m!5163259))

(declare-fun m!5163261 () Bool)

(assert (=> b!4460385 m!5163261))

(assert (=> b!4460385 m!5163261))

(declare-fun m!5163263 () Bool)

(assert (=> b!4460385 m!5163263))

(declare-fun m!5163265 () Bool)

(assert (=> b!4460393 m!5163265))

(declare-fun m!5163267 () Bool)

(assert (=> b!4460390 m!5163267))

(assert (=> b!4460390 m!5163267))

(declare-fun m!5163269 () Bool)

(assert (=> b!4460390 m!5163269))

(declare-fun m!5163271 () Bool)

(assert (=> b!4460391 m!5163271))

(declare-fun m!5163273 () Bool)

(assert (=> start!437380 m!5163273))

(declare-fun m!5163275 () Bool)

(assert (=> start!437380 m!5163275))

(check-sat (not b!4460386) (not b!4460393) (not b!4460391) tp_is_empty!27149 (not b!4460385) (not b!4460388) (not b!4460392) (not start!437380) (not b!4460387) tp_is_empty!27151 (not b!4460390))
(check-sat)
(get-model)

(declare-fun b!4460432 () Bool)

(declare-datatypes ((Unit!86677 0))(
  ( (Unit!86678) )
))
(declare-fun e!2777494 () Unit!86677)

(declare-fun lt!1651537 () Unit!86677)

(assert (=> b!4460432 (= e!2777494 lt!1651537)))

(declare-fun lt!1651534 () Unit!86677)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!773 (List!50283 K!11560) Unit!86677)

(assert (=> b!4460432 (= lt!1651534 (lemmaContainsKeyImpliesGetValueByKeyDefined!773 (toList!3954 (addToMapMapFromBucket!561 (t!357233 l!12755) lt!1651498)) key!4289))))

(declare-datatypes ((Option!10883 0))(
  ( (None!10882) (Some!10882 (v!44140 V!11806)) )
))
(declare-fun isDefined!8171 (Option!10883) Bool)

(declare-fun getValueByKey!869 (List!50283 K!11560) Option!10883)

(assert (=> b!4460432 (isDefined!8171 (getValueByKey!869 (toList!3954 (addToMapMapFromBucket!561 (t!357233 l!12755) lt!1651498)) key!4289))))

(declare-fun lt!1651532 () Unit!86677)

(assert (=> b!4460432 (= lt!1651532 lt!1651534)))

(declare-fun lemmaInListThenGetKeysListContains!346 (List!50283 K!11560) Unit!86677)

(assert (=> b!4460432 (= lt!1651537 (lemmaInListThenGetKeysListContains!346 (toList!3954 (addToMapMapFromBucket!561 (t!357233 l!12755) lt!1651498)) key!4289))))

(declare-fun call!310515 () Bool)

(assert (=> b!4460432 call!310515))

(declare-fun b!4460433 () Bool)

(declare-fun e!2777496 () Unit!86677)

(assert (=> b!4460433 (= e!2777494 e!2777496)))

(declare-fun c!759127 () Bool)

(assert (=> b!4460433 (= c!759127 call!310515)))

(declare-fun b!4460434 () Bool)

(declare-datatypes ((List!50285 0))(
  ( (Nil!50161) (Cons!50161 (h!55906 K!11560) (t!357235 List!50285)) )
))
(declare-fun e!2777493 () List!50285)

(declare-fun getKeysList!351 (List!50283) List!50285)

(assert (=> b!4460434 (= e!2777493 (getKeysList!351 (toList!3954 (addToMapMapFromBucket!561 (t!357233 l!12755) lt!1651498))))))

(declare-fun e!2777497 () Bool)

(declare-fun b!4460436 () Bool)

(declare-fun contains!12663 (List!50285 K!11560) Bool)

(declare-fun keys!17282 (ListMap!3205) List!50285)

(assert (=> b!4460436 (= e!2777497 (contains!12663 (keys!17282 (addToMapMapFromBucket!561 (t!357233 l!12755) lt!1651498)) key!4289))))

(declare-fun b!4460437 () Bool)

(declare-fun e!2777495 () Bool)

(assert (=> b!4460437 (= e!2777495 (not (contains!12663 (keys!17282 (addToMapMapFromBucket!561 (t!357233 l!12755) lt!1651498)) key!4289)))))

(declare-fun d!1360114 () Bool)

(declare-fun e!2777492 () Bool)

(assert (=> d!1360114 e!2777492))

(declare-fun res!1849619 () Bool)

(assert (=> d!1360114 (=> res!1849619 e!2777492)))

(assert (=> d!1360114 (= res!1849619 e!2777495)))

(declare-fun res!1849620 () Bool)

(assert (=> d!1360114 (=> (not res!1849620) (not e!2777495))))

(declare-fun lt!1651531 () Bool)

(assert (=> d!1360114 (= res!1849620 (not lt!1651531))))

(declare-fun lt!1651533 () Bool)

(assert (=> d!1360114 (= lt!1651531 lt!1651533)))

(declare-fun lt!1651535 () Unit!86677)

(assert (=> d!1360114 (= lt!1651535 e!2777494)))

(declare-fun c!759126 () Bool)

(assert (=> d!1360114 (= c!759126 lt!1651533)))

(declare-fun containsKey!1390 (List!50283 K!11560) Bool)

(assert (=> d!1360114 (= lt!1651533 (containsKey!1390 (toList!3954 (addToMapMapFromBucket!561 (t!357233 l!12755) lt!1651498)) key!4289))))

(assert (=> d!1360114 (= (contains!12661 (addToMapMapFromBucket!561 (t!357233 l!12755) lt!1651498) key!4289) lt!1651531)))

(declare-fun b!4460435 () Bool)

(assert (=> b!4460435 (= e!2777492 e!2777497)))

(declare-fun res!1849618 () Bool)

(assert (=> b!4460435 (=> (not res!1849618) (not e!2777497))))

(assert (=> b!4460435 (= res!1849618 (isDefined!8171 (getValueByKey!869 (toList!3954 (addToMapMapFromBucket!561 (t!357233 l!12755) lt!1651498)) key!4289)))))

(declare-fun bm!310510 () Bool)

(assert (=> bm!310510 (= call!310515 (contains!12663 e!2777493 key!4289))))

(declare-fun c!759125 () Bool)

(assert (=> bm!310510 (= c!759125 c!759126)))

(declare-fun b!4460438 () Bool)

(declare-fun Unit!86679 () Unit!86677)

(assert (=> b!4460438 (= e!2777496 Unit!86679)))

(declare-fun b!4460439 () Bool)

(assert (=> b!4460439 (= e!2777493 (keys!17282 (addToMapMapFromBucket!561 (t!357233 l!12755) lt!1651498)))))

(declare-fun b!4460440 () Bool)

(assert (=> b!4460440 false))

(declare-fun lt!1651536 () Unit!86677)

(declare-fun lt!1651538 () Unit!86677)

(assert (=> b!4460440 (= lt!1651536 lt!1651538)))

(assert (=> b!4460440 (containsKey!1390 (toList!3954 (addToMapMapFromBucket!561 (t!357233 l!12755) lt!1651498)) key!4289)))

(declare-fun lemmaInGetKeysListThenContainsKey!350 (List!50283 K!11560) Unit!86677)

(assert (=> b!4460440 (= lt!1651538 (lemmaInGetKeysListThenContainsKey!350 (toList!3954 (addToMapMapFromBucket!561 (t!357233 l!12755) lt!1651498)) key!4289))))

(declare-fun Unit!86680 () Unit!86677)

(assert (=> b!4460440 (= e!2777496 Unit!86680)))

(assert (= (and d!1360114 c!759126) b!4460432))

(assert (= (and d!1360114 (not c!759126)) b!4460433))

(assert (= (and b!4460433 c!759127) b!4460440))

(assert (= (and b!4460433 (not c!759127)) b!4460438))

(assert (= (or b!4460432 b!4460433) bm!310510))

(assert (= (and bm!310510 c!759125) b!4460434))

(assert (= (and bm!310510 (not c!759125)) b!4460439))

(assert (= (and d!1360114 res!1849620) b!4460437))

(assert (= (and d!1360114 (not res!1849619)) b!4460435))

(assert (= (and b!4460435 res!1849618) b!4460436))

(declare-fun m!5163279 () Bool)

(assert (=> b!4460435 m!5163279))

(assert (=> b!4460435 m!5163279))

(declare-fun m!5163281 () Bool)

(assert (=> b!4460435 m!5163281))

(assert (=> b!4460439 m!5163267))

(declare-fun m!5163283 () Bool)

(assert (=> b!4460439 m!5163283))

(assert (=> b!4460436 m!5163267))

(assert (=> b!4460436 m!5163283))

(assert (=> b!4460436 m!5163283))

(declare-fun m!5163285 () Bool)

(assert (=> b!4460436 m!5163285))

(assert (=> b!4460437 m!5163267))

(assert (=> b!4460437 m!5163283))

(assert (=> b!4460437 m!5163283))

(assert (=> b!4460437 m!5163285))

(declare-fun m!5163287 () Bool)

(assert (=> d!1360114 m!5163287))

(declare-fun m!5163289 () Bool)

(assert (=> b!4460432 m!5163289))

(assert (=> b!4460432 m!5163279))

(assert (=> b!4460432 m!5163279))

(assert (=> b!4460432 m!5163281))

(declare-fun m!5163291 () Bool)

(assert (=> b!4460432 m!5163291))

(declare-fun m!5163293 () Bool)

(assert (=> b!4460434 m!5163293))

(declare-fun m!5163295 () Bool)

(assert (=> bm!310510 m!5163295))

(assert (=> b!4460440 m!5163287))

(declare-fun m!5163297 () Bool)

(assert (=> b!4460440 m!5163297))

(assert (=> b!4460390 d!1360114))

(declare-fun b!4460506 () Bool)

(assert (=> b!4460506 true))

(declare-fun bs!791426 () Bool)

(declare-fun b!4460503 () Bool)

(assert (= bs!791426 (and b!4460503 b!4460506)))

(declare-fun lambda!161629 () Int)

(declare-fun lambda!161628 () Int)

(assert (=> bs!791426 (= lambda!161629 lambda!161628)))

(assert (=> b!4460503 true))

(declare-fun lambda!161630 () Int)

(declare-fun lt!1651681 () ListMap!3205)

(assert (=> bs!791426 (= (= lt!1651681 lt!1651498) (= lambda!161630 lambda!161628))))

(assert (=> b!4460503 (= (= lt!1651681 lt!1651498) (= lambda!161630 lambda!161629))))

(assert (=> b!4460503 true))

(declare-fun bs!791427 () Bool)

(declare-fun d!1360122 () Bool)

(assert (= bs!791427 (and d!1360122 b!4460506)))

(declare-fun lt!1651685 () ListMap!3205)

(declare-fun lambda!161631 () Int)

(assert (=> bs!791427 (= (= lt!1651685 lt!1651498) (= lambda!161631 lambda!161628))))

(declare-fun bs!791428 () Bool)

(assert (= bs!791428 (and d!1360122 b!4460503)))

(assert (=> bs!791428 (= (= lt!1651685 lt!1651498) (= lambda!161631 lambda!161629))))

(assert (=> bs!791428 (= (= lt!1651685 lt!1651681) (= lambda!161631 lambda!161630))))

(assert (=> d!1360122 true))

(declare-fun e!2777542 () ListMap!3205)

(assert (=> b!4460503 (= e!2777542 lt!1651681)))

(declare-fun lt!1651701 () ListMap!3205)

(assert (=> b!4460503 (= lt!1651701 (+!1335 lt!1651498 (h!55904 (t!357233 l!12755))))))

(assert (=> b!4460503 (= lt!1651681 (addToMapMapFromBucket!561 (t!357233 (t!357233 l!12755)) (+!1335 lt!1651498 (h!55904 (t!357233 l!12755)))))))

(declare-fun lt!1651698 () Unit!86677)

(declare-fun call!310537 () Unit!86677)

(assert (=> b!4460503 (= lt!1651698 call!310537)))

(declare-fun forall!9913 (List!50283 Int) Bool)

(assert (=> b!4460503 (forall!9913 (toList!3954 lt!1651498) lambda!161629)))

(declare-fun lt!1651696 () Unit!86677)

(assert (=> b!4460503 (= lt!1651696 lt!1651698)))

(declare-fun call!310538 () Bool)

(assert (=> b!4460503 call!310538))

(declare-fun lt!1651699 () Unit!86677)

(declare-fun Unit!86684 () Unit!86677)

(assert (=> b!4460503 (= lt!1651699 Unit!86684)))

(assert (=> b!4460503 (forall!9913 (t!357233 (t!357233 l!12755)) lambda!161630)))

(declare-fun lt!1651683 () Unit!86677)

(declare-fun Unit!86686 () Unit!86677)

(assert (=> b!4460503 (= lt!1651683 Unit!86686)))

(declare-fun lt!1651684 () Unit!86677)

(declare-fun Unit!86687 () Unit!86677)

(assert (=> b!4460503 (= lt!1651684 Unit!86687)))

(declare-fun lt!1651700 () Unit!86677)

(declare-fun forallContained!2202 (List!50283 Int tuple2!50328) Unit!86677)

(assert (=> b!4460503 (= lt!1651700 (forallContained!2202 (toList!3954 lt!1651701) lambda!161630 (h!55904 (t!357233 l!12755))))))

(assert (=> b!4460503 (contains!12661 lt!1651701 (_1!28458 (h!55904 (t!357233 l!12755))))))

(declare-fun lt!1651694 () Unit!86677)

(declare-fun Unit!86690 () Unit!86677)

(assert (=> b!4460503 (= lt!1651694 Unit!86690)))

(assert (=> b!4460503 (contains!12661 lt!1651681 (_1!28458 (h!55904 (t!357233 l!12755))))))

(declare-fun lt!1651686 () Unit!86677)

(declare-fun Unit!86692 () Unit!86677)

(assert (=> b!4460503 (= lt!1651686 Unit!86692)))

(assert (=> b!4460503 (forall!9913 (t!357233 l!12755) lambda!161630)))

(declare-fun lt!1651688 () Unit!86677)

(declare-fun Unit!86694 () Unit!86677)

(assert (=> b!4460503 (= lt!1651688 Unit!86694)))

(assert (=> b!4460503 (forall!9913 (toList!3954 lt!1651701) lambda!161630)))

(declare-fun lt!1651689 () Unit!86677)

(declare-fun Unit!86695 () Unit!86677)

(assert (=> b!4460503 (= lt!1651689 Unit!86695)))

(declare-fun lt!1651693 () Unit!86677)

(declare-fun Unit!86696 () Unit!86677)

(assert (=> b!4460503 (= lt!1651693 Unit!86696)))

(declare-fun lt!1651695 () Unit!86677)

(declare-fun addForallContainsKeyThenBeforeAdding!251 (ListMap!3205 ListMap!3205 K!11560 V!11806) Unit!86677)

(assert (=> b!4460503 (= lt!1651695 (addForallContainsKeyThenBeforeAdding!251 lt!1651498 lt!1651681 (_1!28458 (h!55904 (t!357233 l!12755))) (_2!28458 (h!55904 (t!357233 l!12755)))))))

(assert (=> b!4460503 (forall!9913 (toList!3954 lt!1651498) lambda!161630)))

(declare-fun lt!1651687 () Unit!86677)

(assert (=> b!4460503 (= lt!1651687 lt!1651695)))

(declare-fun call!310536 () Bool)

(assert (=> b!4460503 call!310536))

(declare-fun lt!1651691 () Unit!86677)

(declare-fun Unit!86698 () Unit!86677)

(assert (=> b!4460503 (= lt!1651691 Unit!86698)))

(declare-fun res!1849658 () Bool)

(assert (=> b!4460503 (= res!1849658 (forall!9913 (t!357233 l!12755) lambda!161630))))

(declare-fun e!2777540 () Bool)

(assert (=> b!4460503 (=> (not res!1849658) (not e!2777540))))

(assert (=> b!4460503 e!2777540))

(declare-fun lt!1651690 () Unit!86677)

(declare-fun Unit!86700 () Unit!86677)

(assert (=> b!4460503 (= lt!1651690 Unit!86700)))

(declare-fun e!2777541 () Bool)

(assert (=> d!1360122 e!2777541))

(declare-fun res!1849659 () Bool)

(assert (=> d!1360122 (=> (not res!1849659) (not e!2777541))))

(assert (=> d!1360122 (= res!1849659 (forall!9913 (t!357233 l!12755) lambda!161631))))

(assert (=> d!1360122 (= lt!1651685 e!2777542)))

(declare-fun c!759140 () Bool)

(assert (=> d!1360122 (= c!759140 ((_ is Nil!50159) (t!357233 l!12755)))))

(assert (=> d!1360122 (noDuplicateKeys!982 (t!357233 l!12755))))

(assert (=> d!1360122 (= (addToMapMapFromBucket!561 (t!357233 l!12755) lt!1651498) lt!1651685)))

(declare-fun b!4460504 () Bool)

(declare-fun res!1849657 () Bool)

(assert (=> b!4460504 (=> (not res!1849657) (not e!2777541))))

(assert (=> b!4460504 (= res!1849657 (forall!9913 (toList!3954 lt!1651498) lambda!161631))))

(declare-fun b!4460505 () Bool)

(assert (=> b!4460505 (= e!2777540 (forall!9913 (toList!3954 lt!1651498) lambda!161630))))

(assert (=> b!4460506 (= e!2777542 lt!1651498)))

(declare-fun lt!1651697 () Unit!86677)

(assert (=> b!4460506 (= lt!1651697 call!310537)))

(assert (=> b!4460506 call!310538))

(declare-fun lt!1651682 () Unit!86677)

(assert (=> b!4460506 (= lt!1651682 lt!1651697)))

(assert (=> b!4460506 call!310536))

(declare-fun lt!1651692 () Unit!86677)

(declare-fun Unit!86702 () Unit!86677)

(assert (=> b!4460506 (= lt!1651692 Unit!86702)))

(declare-fun bm!310531 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!252 (ListMap!3205) Unit!86677)

(assert (=> bm!310531 (= call!310537 (lemmaContainsAllItsOwnKeys!252 lt!1651498))))

(declare-fun b!4460507 () Bool)

(declare-fun invariantList!904 (List!50283) Bool)

(assert (=> b!4460507 (= e!2777541 (invariantList!904 (toList!3954 lt!1651685)))))

(declare-fun bm!310532 () Bool)

(assert (=> bm!310532 (= call!310536 (forall!9913 (toList!3954 lt!1651498) (ite c!759140 lambda!161628 lambda!161630)))))

(declare-fun bm!310533 () Bool)

(assert (=> bm!310533 (= call!310538 (forall!9913 (ite c!759140 (toList!3954 lt!1651498) (toList!3954 lt!1651701)) (ite c!759140 lambda!161628 lambda!161630)))))

(assert (= (and d!1360122 c!759140) b!4460506))

(assert (= (and d!1360122 (not c!759140)) b!4460503))

(assert (= (and b!4460503 res!1849658) b!4460505))

(assert (= (or b!4460506 b!4460503) bm!310533))

(assert (= (or b!4460506 b!4460503) bm!310532))

(assert (= (or b!4460506 b!4460503) bm!310531))

(assert (= (and d!1360122 res!1849659) b!4460504))

(assert (= (and b!4460504 res!1849657) b!4460507))

(declare-fun m!5163405 () Bool)

(assert (=> b!4460503 m!5163405))

(declare-fun m!5163407 () Bool)

(assert (=> b!4460503 m!5163407))

(declare-fun m!5163409 () Bool)

(assert (=> b!4460503 m!5163409))

(declare-fun m!5163411 () Bool)

(assert (=> b!4460503 m!5163411))

(declare-fun m!5163413 () Bool)

(assert (=> b!4460503 m!5163413))

(declare-fun m!5163415 () Bool)

(assert (=> b!4460503 m!5163415))

(declare-fun m!5163417 () Bool)

(assert (=> b!4460503 m!5163417))

(declare-fun m!5163419 () Bool)

(assert (=> b!4460503 m!5163419))

(declare-fun m!5163421 () Bool)

(assert (=> b!4460503 m!5163421))

(declare-fun m!5163423 () Bool)

(assert (=> b!4460503 m!5163423))

(assert (=> b!4460503 m!5163411))

(assert (=> b!4460503 m!5163419))

(declare-fun m!5163425 () Bool)

(assert (=> b!4460503 m!5163425))

(declare-fun m!5163427 () Bool)

(assert (=> b!4460504 m!5163427))

(declare-fun m!5163429 () Bool)

(assert (=> bm!310532 m!5163429))

(declare-fun m!5163431 () Bool)

(assert (=> bm!310533 m!5163431))

(assert (=> b!4460505 m!5163423))

(declare-fun m!5163433 () Bool)

(assert (=> b!4460507 m!5163433))

(declare-fun m!5163435 () Bool)

(assert (=> d!1360122 m!5163435))

(assert (=> d!1360122 m!5163265))

(declare-fun m!5163437 () Bool)

(assert (=> bm!310531 m!5163437))

(assert (=> b!4460390 d!1360122))

(declare-fun d!1360134 () Bool)

(declare-fun res!1849664 () Bool)

(declare-fun e!2777547 () Bool)

(assert (=> d!1360134 (=> res!1849664 e!2777547)))

(assert (=> d!1360134 (= res!1849664 (not ((_ is Cons!50159) l!12755)))))

(assert (=> d!1360134 (= (noDuplicateKeys!982 l!12755) e!2777547)))

(declare-fun b!4460514 () Bool)

(declare-fun e!2777548 () Bool)

(assert (=> b!4460514 (= e!2777547 e!2777548)))

(declare-fun res!1849665 () Bool)

(assert (=> b!4460514 (=> (not res!1849665) (not e!2777548))))

(assert (=> b!4460514 (= res!1849665 (not (containsKey!1388 (t!357233 l!12755) (_1!28458 (h!55904 l!12755)))))))

(declare-fun b!4460515 () Bool)

(assert (=> b!4460515 (= e!2777548 (noDuplicateKeys!982 (t!357233 l!12755)))))

(assert (= (and d!1360134 (not res!1849664)) b!4460514))

(assert (= (and b!4460514 res!1849665) b!4460515))

(declare-fun m!5163439 () Bool)

(assert (=> b!4460514 m!5163439))

(assert (=> b!4460515 m!5163265))

(assert (=> start!437380 d!1360134))

(declare-fun d!1360136 () Bool)

(assert (=> d!1360136 (= (inv!65744 acc!957) (invariantList!904 (toList!3954 acc!957)))))

(declare-fun bs!791429 () Bool)

(assert (= bs!791429 d!1360136))

(declare-fun m!5163441 () Bool)

(assert (=> bs!791429 m!5163441))

(assert (=> start!437380 d!1360136))

(declare-fun b!4460516 () Bool)

(declare-fun e!2777551 () Unit!86677)

(declare-fun lt!1651708 () Unit!86677)

(assert (=> b!4460516 (= e!2777551 lt!1651708)))

(declare-fun lt!1651705 () Unit!86677)

(assert (=> b!4460516 (= lt!1651705 (lemmaContainsKeyImpliesGetValueByKeyDefined!773 (toList!3954 (addToMapMapFromBucket!561 l!12755 acc!957)) key!4289))))

(assert (=> b!4460516 (isDefined!8171 (getValueByKey!869 (toList!3954 (addToMapMapFromBucket!561 l!12755 acc!957)) key!4289))))

(declare-fun lt!1651703 () Unit!86677)

(assert (=> b!4460516 (= lt!1651703 lt!1651705)))

(assert (=> b!4460516 (= lt!1651708 (lemmaInListThenGetKeysListContains!346 (toList!3954 (addToMapMapFromBucket!561 l!12755 acc!957)) key!4289))))

(declare-fun call!310539 () Bool)

(assert (=> b!4460516 call!310539))

(declare-fun b!4460517 () Bool)

(declare-fun e!2777553 () Unit!86677)

(assert (=> b!4460517 (= e!2777551 e!2777553)))

(declare-fun c!759143 () Bool)

(assert (=> b!4460517 (= c!759143 call!310539)))

(declare-fun b!4460518 () Bool)

(declare-fun e!2777550 () List!50285)

(assert (=> b!4460518 (= e!2777550 (getKeysList!351 (toList!3954 (addToMapMapFromBucket!561 l!12755 acc!957))))))

(declare-fun e!2777554 () Bool)

(declare-fun b!4460520 () Bool)

(assert (=> b!4460520 (= e!2777554 (contains!12663 (keys!17282 (addToMapMapFromBucket!561 l!12755 acc!957)) key!4289))))

(declare-fun b!4460521 () Bool)

(declare-fun e!2777552 () Bool)

(assert (=> b!4460521 (= e!2777552 (not (contains!12663 (keys!17282 (addToMapMapFromBucket!561 l!12755 acc!957)) key!4289)))))

(declare-fun d!1360138 () Bool)

(declare-fun e!2777549 () Bool)

(assert (=> d!1360138 e!2777549))

(declare-fun res!1849667 () Bool)

(assert (=> d!1360138 (=> res!1849667 e!2777549)))

(assert (=> d!1360138 (= res!1849667 e!2777552)))

(declare-fun res!1849668 () Bool)

(assert (=> d!1360138 (=> (not res!1849668) (not e!2777552))))

(declare-fun lt!1651702 () Bool)

(assert (=> d!1360138 (= res!1849668 (not lt!1651702))))

(declare-fun lt!1651704 () Bool)

(assert (=> d!1360138 (= lt!1651702 lt!1651704)))

(declare-fun lt!1651706 () Unit!86677)

(assert (=> d!1360138 (= lt!1651706 e!2777551)))

(declare-fun c!759142 () Bool)

(assert (=> d!1360138 (= c!759142 lt!1651704)))

(assert (=> d!1360138 (= lt!1651704 (containsKey!1390 (toList!3954 (addToMapMapFromBucket!561 l!12755 acc!957)) key!4289))))

(assert (=> d!1360138 (= (contains!12661 (addToMapMapFromBucket!561 l!12755 acc!957) key!4289) lt!1651702)))

(declare-fun b!4460519 () Bool)

(assert (=> b!4460519 (= e!2777549 e!2777554)))

(declare-fun res!1849666 () Bool)

(assert (=> b!4460519 (=> (not res!1849666) (not e!2777554))))

(assert (=> b!4460519 (= res!1849666 (isDefined!8171 (getValueByKey!869 (toList!3954 (addToMapMapFromBucket!561 l!12755 acc!957)) key!4289)))))

(declare-fun bm!310534 () Bool)

(assert (=> bm!310534 (= call!310539 (contains!12663 e!2777550 key!4289))))

(declare-fun c!759141 () Bool)

(assert (=> bm!310534 (= c!759141 c!759142)))

(declare-fun b!4460522 () Bool)

(declare-fun Unit!86705 () Unit!86677)

(assert (=> b!4460522 (= e!2777553 Unit!86705)))

(declare-fun b!4460523 () Bool)

(assert (=> b!4460523 (= e!2777550 (keys!17282 (addToMapMapFromBucket!561 l!12755 acc!957)))))

(declare-fun b!4460524 () Bool)

(assert (=> b!4460524 false))

(declare-fun lt!1651707 () Unit!86677)

(declare-fun lt!1651709 () Unit!86677)

(assert (=> b!4460524 (= lt!1651707 lt!1651709)))

(assert (=> b!4460524 (containsKey!1390 (toList!3954 (addToMapMapFromBucket!561 l!12755 acc!957)) key!4289)))

(assert (=> b!4460524 (= lt!1651709 (lemmaInGetKeysListThenContainsKey!350 (toList!3954 (addToMapMapFromBucket!561 l!12755 acc!957)) key!4289))))

(declare-fun Unit!86706 () Unit!86677)

(assert (=> b!4460524 (= e!2777553 Unit!86706)))

(assert (= (and d!1360138 c!759142) b!4460516))

(assert (= (and d!1360138 (not c!759142)) b!4460517))

(assert (= (and b!4460517 c!759143) b!4460524))

(assert (= (and b!4460517 (not c!759143)) b!4460522))

(assert (= (or b!4460516 b!4460517) bm!310534))

(assert (= (and bm!310534 c!759141) b!4460518))

(assert (= (and bm!310534 (not c!759141)) b!4460523))

(assert (= (and d!1360138 res!1849668) b!4460521))

(assert (= (and d!1360138 (not res!1849667)) b!4460519))

(assert (= (and b!4460519 res!1849666) b!4460520))

(declare-fun m!5163443 () Bool)

(assert (=> b!4460519 m!5163443))

(assert (=> b!4460519 m!5163443))

(declare-fun m!5163445 () Bool)

(assert (=> b!4460519 m!5163445))

(assert (=> b!4460523 m!5163261))

(declare-fun m!5163447 () Bool)

(assert (=> b!4460523 m!5163447))

(assert (=> b!4460520 m!5163261))

(assert (=> b!4460520 m!5163447))

(assert (=> b!4460520 m!5163447))

(declare-fun m!5163449 () Bool)

(assert (=> b!4460520 m!5163449))

(assert (=> b!4460521 m!5163261))

(assert (=> b!4460521 m!5163447))

(assert (=> b!4460521 m!5163447))

(assert (=> b!4460521 m!5163449))

(declare-fun m!5163451 () Bool)

(assert (=> d!1360138 m!5163451))

(declare-fun m!5163453 () Bool)

(assert (=> b!4460516 m!5163453))

(assert (=> b!4460516 m!5163443))

(assert (=> b!4460516 m!5163443))

(assert (=> b!4460516 m!5163445))

(declare-fun m!5163455 () Bool)

(assert (=> b!4460516 m!5163455))

(declare-fun m!5163457 () Bool)

(assert (=> b!4460518 m!5163457))

(declare-fun m!5163459 () Bool)

(assert (=> bm!310534 m!5163459))

(assert (=> b!4460524 m!5163451))

(declare-fun m!5163461 () Bool)

(assert (=> b!4460524 m!5163461))

(assert (=> b!4460385 d!1360138))

(declare-fun bs!791430 () Bool)

(declare-fun b!4460530 () Bool)

(assert (= bs!791430 (and b!4460530 b!4460506)))

(declare-fun lambda!161632 () Int)

(assert (=> bs!791430 (= (= acc!957 lt!1651498) (= lambda!161632 lambda!161628))))

(declare-fun bs!791431 () Bool)

(assert (= bs!791431 (and b!4460530 b!4460503)))

(assert (=> bs!791431 (= (= acc!957 lt!1651498) (= lambda!161632 lambda!161629))))

(assert (=> bs!791431 (= (= acc!957 lt!1651681) (= lambda!161632 lambda!161630))))

(declare-fun bs!791432 () Bool)

(assert (= bs!791432 (and b!4460530 d!1360122)))

(assert (=> bs!791432 (= (= acc!957 lt!1651685) (= lambda!161632 lambda!161631))))

(assert (=> b!4460530 true))

(declare-fun bs!791433 () Bool)

(declare-fun b!4460527 () Bool)

(assert (= bs!791433 (and b!4460527 b!4460506)))

(declare-fun lambda!161633 () Int)

(assert (=> bs!791433 (= (= acc!957 lt!1651498) (= lambda!161633 lambda!161628))))

(declare-fun bs!791434 () Bool)

(assert (= bs!791434 (and b!4460527 b!4460503)))

(assert (=> bs!791434 (= (= acc!957 lt!1651498) (= lambda!161633 lambda!161629))))

(assert (=> bs!791434 (= (= acc!957 lt!1651681) (= lambda!161633 lambda!161630))))

(declare-fun bs!791435 () Bool)

(assert (= bs!791435 (and b!4460527 b!4460530)))

(assert (=> bs!791435 (= lambda!161633 lambda!161632)))

(declare-fun bs!791436 () Bool)

(assert (= bs!791436 (and b!4460527 d!1360122)))

(assert (=> bs!791436 (= (= acc!957 lt!1651685) (= lambda!161633 lambda!161631))))

(assert (=> b!4460527 true))

(declare-fun lambda!161634 () Int)

(declare-fun lt!1651718 () ListMap!3205)

(assert (=> bs!791433 (= (= lt!1651718 lt!1651498) (= lambda!161634 lambda!161628))))

(assert (=> bs!791434 (= (= lt!1651718 lt!1651498) (= lambda!161634 lambda!161629))))

(assert (=> bs!791434 (= (= lt!1651718 lt!1651681) (= lambda!161634 lambda!161630))))

(assert (=> bs!791435 (= (= lt!1651718 acc!957) (= lambda!161634 lambda!161632))))

(assert (=> b!4460527 (= (= lt!1651718 acc!957) (= lambda!161634 lambda!161633))))

(assert (=> bs!791436 (= (= lt!1651718 lt!1651685) (= lambda!161634 lambda!161631))))

(assert (=> b!4460527 true))

(declare-fun bs!791437 () Bool)

(declare-fun d!1360140 () Bool)

(assert (= bs!791437 (and d!1360140 b!4460506)))

(declare-fun lambda!161635 () Int)

(declare-fun lt!1651722 () ListMap!3205)

(assert (=> bs!791437 (= (= lt!1651722 lt!1651498) (= lambda!161635 lambda!161628))))

(declare-fun bs!791438 () Bool)

(assert (= bs!791438 (and d!1360140 b!4460503)))

(assert (=> bs!791438 (= (= lt!1651722 lt!1651498) (= lambda!161635 lambda!161629))))

(assert (=> bs!791438 (= (= lt!1651722 lt!1651681) (= lambda!161635 lambda!161630))))

(declare-fun bs!791439 () Bool)

(assert (= bs!791439 (and d!1360140 b!4460530)))

(assert (=> bs!791439 (= (= lt!1651722 acc!957) (= lambda!161635 lambda!161632))))

(declare-fun bs!791440 () Bool)

(assert (= bs!791440 (and d!1360140 b!4460527)))

(assert (=> bs!791440 (= (= lt!1651722 acc!957) (= lambda!161635 lambda!161633))))

(assert (=> bs!791440 (= (= lt!1651722 lt!1651718) (= lambda!161635 lambda!161634))))

(declare-fun bs!791442 () Bool)

(assert (= bs!791442 (and d!1360140 d!1360122)))

(assert (=> bs!791442 (= (= lt!1651722 lt!1651685) (= lambda!161635 lambda!161631))))

(assert (=> d!1360140 true))

(declare-fun e!2777559 () ListMap!3205)

(assert (=> b!4460527 (= e!2777559 lt!1651718)))

(declare-fun lt!1651738 () ListMap!3205)

(assert (=> b!4460527 (= lt!1651738 (+!1335 acc!957 (h!55904 l!12755)))))

(assert (=> b!4460527 (= lt!1651718 (addToMapMapFromBucket!561 (t!357233 l!12755) (+!1335 acc!957 (h!55904 l!12755))))))

(declare-fun lt!1651735 () Unit!86677)

(declare-fun call!310541 () Unit!86677)

(assert (=> b!4460527 (= lt!1651735 call!310541)))

(assert (=> b!4460527 (forall!9913 (toList!3954 acc!957) lambda!161633)))

(declare-fun lt!1651733 () Unit!86677)

(assert (=> b!4460527 (= lt!1651733 lt!1651735)))

(declare-fun call!310542 () Bool)

(assert (=> b!4460527 call!310542))

(declare-fun lt!1651736 () Unit!86677)

(declare-fun Unit!86707 () Unit!86677)

(assert (=> b!4460527 (= lt!1651736 Unit!86707)))

(assert (=> b!4460527 (forall!9913 (t!357233 l!12755) lambda!161634)))

(declare-fun lt!1651720 () Unit!86677)

(declare-fun Unit!86708 () Unit!86677)

(assert (=> b!4460527 (= lt!1651720 Unit!86708)))

(declare-fun lt!1651721 () Unit!86677)

(declare-fun Unit!86709 () Unit!86677)

(assert (=> b!4460527 (= lt!1651721 Unit!86709)))

(declare-fun lt!1651737 () Unit!86677)

(assert (=> b!4460527 (= lt!1651737 (forallContained!2202 (toList!3954 lt!1651738) lambda!161634 (h!55904 l!12755)))))

(assert (=> b!4460527 (contains!12661 lt!1651738 (_1!28458 (h!55904 l!12755)))))

(declare-fun lt!1651731 () Unit!86677)

(declare-fun Unit!86710 () Unit!86677)

(assert (=> b!4460527 (= lt!1651731 Unit!86710)))

(assert (=> b!4460527 (contains!12661 lt!1651718 (_1!28458 (h!55904 l!12755)))))

(declare-fun lt!1651723 () Unit!86677)

(declare-fun Unit!86711 () Unit!86677)

(assert (=> b!4460527 (= lt!1651723 Unit!86711)))

(assert (=> b!4460527 (forall!9913 l!12755 lambda!161634)))

(declare-fun lt!1651725 () Unit!86677)

(declare-fun Unit!86712 () Unit!86677)

(assert (=> b!4460527 (= lt!1651725 Unit!86712)))

(assert (=> b!4460527 (forall!9913 (toList!3954 lt!1651738) lambda!161634)))

(declare-fun lt!1651726 () Unit!86677)

(declare-fun Unit!86713 () Unit!86677)

(assert (=> b!4460527 (= lt!1651726 Unit!86713)))

(declare-fun lt!1651730 () Unit!86677)

(declare-fun Unit!86714 () Unit!86677)

(assert (=> b!4460527 (= lt!1651730 Unit!86714)))

(declare-fun lt!1651732 () Unit!86677)

(assert (=> b!4460527 (= lt!1651732 (addForallContainsKeyThenBeforeAdding!251 acc!957 lt!1651718 (_1!28458 (h!55904 l!12755)) (_2!28458 (h!55904 l!12755))))))

(assert (=> b!4460527 (forall!9913 (toList!3954 acc!957) lambda!161634)))

(declare-fun lt!1651724 () Unit!86677)

(assert (=> b!4460527 (= lt!1651724 lt!1651732)))

(declare-fun call!310540 () Bool)

(assert (=> b!4460527 call!310540))

(declare-fun lt!1651728 () Unit!86677)

(declare-fun Unit!86715 () Unit!86677)

(assert (=> b!4460527 (= lt!1651728 Unit!86715)))

(declare-fun res!1849672 () Bool)

(assert (=> b!4460527 (= res!1849672 (forall!9913 l!12755 lambda!161634))))

(declare-fun e!2777557 () Bool)

(assert (=> b!4460527 (=> (not res!1849672) (not e!2777557))))

(assert (=> b!4460527 e!2777557))

(declare-fun lt!1651727 () Unit!86677)

(declare-fun Unit!86717 () Unit!86677)

(assert (=> b!4460527 (= lt!1651727 Unit!86717)))

(declare-fun e!2777558 () Bool)

(assert (=> d!1360140 e!2777558))

(declare-fun res!1849673 () Bool)

(assert (=> d!1360140 (=> (not res!1849673) (not e!2777558))))

(assert (=> d!1360140 (= res!1849673 (forall!9913 l!12755 lambda!161635))))

(assert (=> d!1360140 (= lt!1651722 e!2777559)))

(declare-fun c!759144 () Bool)

(assert (=> d!1360140 (= c!759144 ((_ is Nil!50159) l!12755))))

(assert (=> d!1360140 (noDuplicateKeys!982 l!12755)))

(assert (=> d!1360140 (= (addToMapMapFromBucket!561 l!12755 acc!957) lt!1651722)))

(declare-fun b!4460528 () Bool)

(declare-fun res!1849669 () Bool)

(assert (=> b!4460528 (=> (not res!1849669) (not e!2777558))))

(assert (=> b!4460528 (= res!1849669 (forall!9913 (toList!3954 acc!957) lambda!161635))))

(declare-fun b!4460529 () Bool)

(assert (=> b!4460529 (= e!2777557 (forall!9913 (toList!3954 acc!957) lambda!161634))))

(assert (=> b!4460530 (= e!2777559 acc!957)))

(declare-fun lt!1651734 () Unit!86677)

(assert (=> b!4460530 (= lt!1651734 call!310541)))

(assert (=> b!4460530 call!310542))

(declare-fun lt!1651719 () Unit!86677)

(assert (=> b!4460530 (= lt!1651719 lt!1651734)))

(assert (=> b!4460530 call!310540))

(declare-fun lt!1651729 () Unit!86677)

(declare-fun Unit!86724 () Unit!86677)

(assert (=> b!4460530 (= lt!1651729 Unit!86724)))

(declare-fun bm!310535 () Bool)

(assert (=> bm!310535 (= call!310541 (lemmaContainsAllItsOwnKeys!252 acc!957))))

(declare-fun b!4460531 () Bool)

(assert (=> b!4460531 (= e!2777558 (invariantList!904 (toList!3954 lt!1651722)))))

(declare-fun bm!310536 () Bool)

(assert (=> bm!310536 (= call!310540 (forall!9913 (toList!3954 acc!957) (ite c!759144 lambda!161632 lambda!161634)))))

(declare-fun bm!310537 () Bool)

(assert (=> bm!310537 (= call!310542 (forall!9913 (ite c!759144 (toList!3954 acc!957) (toList!3954 lt!1651738)) (ite c!759144 lambda!161632 lambda!161634)))))

(assert (= (and d!1360140 c!759144) b!4460530))

(assert (= (and d!1360140 (not c!759144)) b!4460527))

(assert (= (and b!4460527 res!1849672) b!4460529))

(assert (= (or b!4460530 b!4460527) bm!310537))

(assert (= (or b!4460530 b!4460527) bm!310536))

(assert (= (or b!4460530 b!4460527) bm!310535))

(assert (= (and d!1360140 res!1849673) b!4460528))

(assert (= (and b!4460528 res!1849669) b!4460531))

(declare-fun m!5163479 () Bool)

(assert (=> b!4460527 m!5163479))

(declare-fun m!5163481 () Bool)

(assert (=> b!4460527 m!5163481))

(declare-fun m!5163483 () Bool)

(assert (=> b!4460527 m!5163483))

(declare-fun m!5163485 () Bool)

(assert (=> b!4460527 m!5163485))

(declare-fun m!5163487 () Bool)

(assert (=> b!4460527 m!5163487))

(declare-fun m!5163489 () Bool)

(assert (=> b!4460527 m!5163489))

(declare-fun m!5163491 () Bool)

(assert (=> b!4460527 m!5163491))

(assert (=> b!4460527 m!5163259))

(declare-fun m!5163493 () Bool)

(assert (=> b!4460527 m!5163493))

(declare-fun m!5163495 () Bool)

(assert (=> b!4460527 m!5163495))

(assert (=> b!4460527 m!5163485))

(assert (=> b!4460527 m!5163259))

(declare-fun m!5163497 () Bool)

(assert (=> b!4460527 m!5163497))

(declare-fun m!5163499 () Bool)

(assert (=> b!4460528 m!5163499))

(declare-fun m!5163501 () Bool)

(assert (=> bm!310536 m!5163501))

(declare-fun m!5163503 () Bool)

(assert (=> bm!310537 m!5163503))

(assert (=> b!4460529 m!5163495))

(declare-fun m!5163505 () Bool)

(assert (=> b!4460531 m!5163505))

(declare-fun m!5163507 () Bool)

(assert (=> d!1360140 m!5163507))

(assert (=> d!1360140 m!5163273))

(declare-fun m!5163509 () Bool)

(assert (=> bm!310535 m!5163509))

(assert (=> b!4460385 d!1360140))

(declare-fun d!1360146 () Bool)

(declare-fun e!2777569 () Bool)

(assert (=> d!1360146 e!2777569))

(declare-fun res!1849684 () Bool)

(assert (=> d!1360146 (=> (not res!1849684) (not e!2777569))))

(declare-fun lt!1651752 () ListMap!3205)

(assert (=> d!1360146 (= res!1849684 (contains!12661 lt!1651752 (_1!28458 (h!55904 l!12755))))))

(declare-fun lt!1651751 () List!50283)

(assert (=> d!1360146 (= lt!1651752 (ListMap!3206 lt!1651751))))

(declare-fun lt!1651754 () Unit!86677)

(declare-fun lt!1651753 () Unit!86677)

(assert (=> d!1360146 (= lt!1651754 lt!1651753)))

(assert (=> d!1360146 (= (getValueByKey!869 lt!1651751 (_1!28458 (h!55904 l!12755))) (Some!10882 (_2!28458 (h!55904 l!12755))))))

(declare-fun lemmaContainsTupThenGetReturnValue!563 (List!50283 K!11560 V!11806) Unit!86677)

(assert (=> d!1360146 (= lt!1651753 (lemmaContainsTupThenGetReturnValue!563 lt!1651751 (_1!28458 (h!55904 l!12755)) (_2!28458 (h!55904 l!12755))))))

(declare-fun insertNoDuplicatedKeys!257 (List!50283 K!11560 V!11806) List!50283)

(assert (=> d!1360146 (= lt!1651751 (insertNoDuplicatedKeys!257 (toList!3954 acc!957) (_1!28458 (h!55904 l!12755)) (_2!28458 (h!55904 l!12755))))))

(assert (=> d!1360146 (= (+!1335 acc!957 (h!55904 l!12755)) lt!1651752)))

(declare-fun b!4460548 () Bool)

(declare-fun res!1849685 () Bool)

(assert (=> b!4460548 (=> (not res!1849685) (not e!2777569))))

(assert (=> b!4460548 (= res!1849685 (= (getValueByKey!869 (toList!3954 lt!1651752) (_1!28458 (h!55904 l!12755))) (Some!10882 (_2!28458 (h!55904 l!12755)))))))

(declare-fun b!4460549 () Bool)

(declare-fun contains!12664 (List!50283 tuple2!50328) Bool)

(assert (=> b!4460549 (= e!2777569 (contains!12664 (toList!3954 lt!1651752) (h!55904 l!12755)))))

(assert (= (and d!1360146 res!1849684) b!4460548))

(assert (= (and b!4460548 res!1849685) b!4460549))

(declare-fun m!5163511 () Bool)

(assert (=> d!1360146 m!5163511))

(declare-fun m!5163513 () Bool)

(assert (=> d!1360146 m!5163513))

(declare-fun m!5163515 () Bool)

(assert (=> d!1360146 m!5163515))

(declare-fun m!5163517 () Bool)

(assert (=> d!1360146 m!5163517))

(declare-fun m!5163519 () Bool)

(assert (=> b!4460548 m!5163519))

(declare-fun m!5163521 () Bool)

(assert (=> b!4460549 m!5163521))

(assert (=> b!4460386 d!1360146))

(declare-fun d!1360148 () Bool)

(declare-fun res!1849690 () Bool)

(declare-fun e!2777574 () Bool)

(assert (=> d!1360148 (=> res!1849690 e!2777574)))

(assert (=> d!1360148 (= res!1849690 (and ((_ is Cons!50159) l!12755) (= (_1!28458 (h!55904 l!12755)) key!4289)))))

(assert (=> d!1360148 (= (containsKey!1388 l!12755 key!4289) e!2777574)))

(declare-fun b!4460554 () Bool)

(declare-fun e!2777575 () Bool)

(assert (=> b!4460554 (= e!2777574 e!2777575)))

(declare-fun res!1849691 () Bool)

(assert (=> b!4460554 (=> (not res!1849691) (not e!2777575))))

(assert (=> b!4460554 (= res!1849691 ((_ is Cons!50159) l!12755))))

(declare-fun b!4460555 () Bool)

(assert (=> b!4460555 (= e!2777575 (containsKey!1388 (t!357233 l!12755) key!4289))))

(assert (= (and d!1360148 (not res!1849690)) b!4460554))

(assert (= (and b!4460554 res!1849691) b!4460555))

(assert (=> b!4460555 m!5163257))

(assert (=> b!4460391 d!1360148))

(declare-fun d!1360150 () Bool)

(declare-fun res!1849692 () Bool)

(declare-fun e!2777576 () Bool)

(assert (=> d!1360150 (=> res!1849692 e!2777576)))

(assert (=> d!1360150 (= res!1849692 (and ((_ is Cons!50159) (t!357233 l!12755)) (= (_1!28458 (h!55904 (t!357233 l!12755))) key!4289)))))

(assert (=> d!1360150 (= (containsKey!1388 (t!357233 l!12755) key!4289) e!2777576)))

(declare-fun b!4460556 () Bool)

(declare-fun e!2777577 () Bool)

(assert (=> b!4460556 (= e!2777576 e!2777577)))

(declare-fun res!1849693 () Bool)

(assert (=> b!4460556 (=> (not res!1849693) (not e!2777577))))

(assert (=> b!4460556 (= res!1849693 ((_ is Cons!50159) (t!357233 l!12755)))))

(declare-fun b!4460557 () Bool)

(assert (=> b!4460557 (= e!2777577 (containsKey!1388 (t!357233 (t!357233 l!12755)) key!4289))))

(assert (= (and d!1360150 (not res!1849692)) b!4460556))

(assert (= (and b!4460556 res!1849693) b!4460557))

(declare-fun m!5163523 () Bool)

(assert (=> b!4460557 m!5163523))

(assert (=> b!4460392 d!1360150))

(declare-fun d!1360152 () Bool)

(declare-fun res!1849694 () Bool)

(declare-fun e!2777578 () Bool)

(assert (=> d!1360152 (=> res!1849694 e!2777578)))

(assert (=> d!1360152 (= res!1849694 (not ((_ is Cons!50159) (t!357233 l!12755))))))

(assert (=> d!1360152 (= (noDuplicateKeys!982 (t!357233 l!12755)) e!2777578)))

(declare-fun b!4460558 () Bool)

(declare-fun e!2777579 () Bool)

(assert (=> b!4460558 (= e!2777578 e!2777579)))

(declare-fun res!1849695 () Bool)

(assert (=> b!4460558 (=> (not res!1849695) (not e!2777579))))

(assert (=> b!4460558 (= res!1849695 (not (containsKey!1388 (t!357233 (t!357233 l!12755)) (_1!28458 (h!55904 (t!357233 l!12755))))))))

(declare-fun b!4460559 () Bool)

(assert (=> b!4460559 (= e!2777579 (noDuplicateKeys!982 (t!357233 (t!357233 l!12755))))))

(assert (= (and d!1360152 (not res!1849694)) b!4460558))

(assert (= (and b!4460558 res!1849695) b!4460559))

(declare-fun m!5163525 () Bool)

(assert (=> b!4460558 m!5163525))

(declare-fun m!5163527 () Bool)

(assert (=> b!4460559 m!5163527))

(assert (=> b!4460393 d!1360152))

(declare-fun e!2777582 () Bool)

(declare-fun b!4460564 () Bool)

(declare-fun tp!1335670 () Bool)

(assert (=> b!4460564 (= e!2777582 (and tp_is_empty!27149 tp_is_empty!27151 tp!1335670))))

(assert (=> b!4460387 (= tp!1335663 e!2777582)))

(assert (= (and b!4460387 ((_ is Cons!50159) (t!357233 l!12755))) b!4460564))

(declare-fun tp!1335671 () Bool)

(declare-fun e!2777583 () Bool)

(declare-fun b!4460565 () Bool)

(assert (=> b!4460565 (= e!2777583 (and tp_is_empty!27149 tp_is_empty!27151 tp!1335671))))

(assert (=> b!4460388 (= tp!1335662 e!2777583)))

(assert (= (and b!4460388 ((_ is Cons!50159) (toList!3954 acc!957))) b!4460565))

(check-sat (not b!4460559) (not b!4460436) (not bm!310510) (not b!4460504) tp_is_empty!27149 (not bm!310532) (not b!4460564) (not b!4460524) (not d!1360114) (not b!4460437) (not b!4460518) (not d!1360136) (not bm!310535) (not bm!310536) (not b!4460434) (not bm!310534) (not b!4460503) (not b!4460531) (not b!4460516) (not b!4460549) (not d!1360138) (not d!1360140) (not b!4460435) (not b!4460519) (not d!1360122) (not b!4460505) (not b!4460523) (not bm!310531) (not b!4460439) (not b!4460565) (not b!4460432) (not b!4460558) (not b!4460507) (not b!4460548) (not b!4460515) (not b!4460555) tp_is_empty!27151 (not b!4460527) (not b!4460521) (not b!4460528) (not b!4460557) (not b!4460514) (not b!4460520) (not bm!310533) (not d!1360146) (not b!4460440) (not bm!310537) (not b!4460529))
(check-sat)
