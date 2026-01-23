; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!759074 () Bool)

(assert start!759074)

(declare-fun b!8057094 () Bool)

(assert (=> b!8057094 true))

(declare-fun bs!1973199 () Bool)

(declare-fun b!8057088 () Bool)

(assert (= bs!1973199 (and b!8057088 b!8057094)))

(declare-fun lambda!474425 () Int)

(declare-fun lambda!474424 () Int)

(declare-datatypes ((V!23165 0))(
  ( (V!23166 (val!33001 Int)) )
))
(declare-datatypes ((K!22911 0))(
  ( (K!22912 (val!33002 Int)) )
))
(declare-datatypes ((tuple2!70966 0))(
  ( (tuple2!70967 (_1!38786 K!22911) (_2!38786 V!23165)) )
))
(declare-datatypes ((List!75731 0))(
  ( (Nil!75605) (Cons!75605 (h!82053 tuple2!70966) (t!391503 List!75731)) )
))
(declare-datatypes ((ListMap!7337 0))(
  ( (ListMap!7338 (toList!11943 List!75731)) )
))
(declare-fun lt!2730769 () ListMap!7337)

(declare-fun acc!836 () ListMap!7337)

(assert (=> bs!1973199 (= (= lt!2730769 acc!836) (= lambda!474425 lambda!474424))))

(assert (=> b!8057088 true))

(declare-fun lambda!474426 () Int)

(assert (=> b!8057094 (= (= lt!2730769 acc!836) (= lambda!474426 lambda!474424))))

(assert (=> bs!1973199 (= lambda!474426 lambda!474425)))

(assert (=> b!8057094 true))

(declare-fun res!3187095 () Bool)

(declare-fun e!4748065 () Bool)

(assert (=> b!8057088 (=> (not res!3187095) (not e!4748065))))

(declare-fun lt!2730771 () ListMap!7337)

(declare-fun forall!18525 (List!75731 Int) Bool)

(assert (=> b!8057088 (= res!3187095 (forall!18525 (toList!11943 lt!2730771) lambda!474425))))

(declare-fun b!8057089 () Bool)

(declare-fun e!4748063 () Bool)

(declare-fun l!10976 () List!75731)

(declare-fun contains!21279 (List!75731 tuple2!70966) Bool)

(assert (=> b!8057089 (= e!4748063 (contains!21279 (toList!11943 lt!2730771) (h!82053 l!10976)))))

(declare-fun b!8057090 () Bool)

(declare-fun e!4748066 () Bool)

(declare-fun tp!2414047 () Bool)

(assert (=> b!8057090 (= e!4748066 tp!2414047)))

(declare-fun b!8057091 () Bool)

(declare-fun res!3187098 () Bool)

(assert (=> b!8057091 (=> (not res!3187098) (not e!4748065))))

(assert (=> b!8057091 (= res!3187098 (forall!18525 (t!391503 l!10976) lambda!474425))))

(declare-fun b!8057092 () Bool)

(declare-fun res!3187096 () Bool)

(declare-fun e!4748067 () Bool)

(assert (=> b!8057092 (=> (not res!3187096) (not e!4748067))))

(assert (=> b!8057092 (= res!3187096 (not (is-Nil!75605 l!10976)))))

(declare-fun tp_is_empty!55057 () Bool)

(declare-fun e!4748064 () Bool)

(declare-fun tp_is_empty!55055 () Bool)

(declare-fun tp!2414046 () Bool)

(declare-fun b!8057093 () Bool)

(assert (=> b!8057093 (= e!4748064 (and tp_is_empty!55055 tp_is_empty!55057 tp!2414046))))

(declare-fun res!3187097 () Bool)

(assert (=> start!759074 (=> (not res!3187097) (not e!4748067))))

(declare-fun noDuplicateKeys!2729 (List!75731) Bool)

(assert (=> start!759074 (= res!3187097 (noDuplicateKeys!2729 l!10976))))

(assert (=> start!759074 e!4748067))

(assert (=> start!759074 e!4748064))

(declare-fun inv!97385 (ListMap!7337) Bool)

(assert (=> start!759074 (and (inv!97385 acc!836) e!4748066)))

(assert (=> b!8057094 (= e!4748067 (not e!4748063))))

(declare-fun res!3187099 () Bool)

(assert (=> b!8057094 (=> (not res!3187099) (not e!4748063))))

(assert (=> b!8057094 (= res!3187099 (forall!18525 (toList!11943 lt!2730771) lambda!474426))))

(assert (=> b!8057094 e!4748065))

(declare-fun res!3187094 () Bool)

(assert (=> b!8057094 (=> (not res!3187094) (not e!4748065))))

(assert (=> b!8057094 (= res!3187094 (forall!18525 (toList!11943 acc!836) lambda!474424))))

(declare-datatypes ((Unit!172558 0))(
  ( (Unit!172559) )
))
(declare-fun lt!2730770 () Unit!172558)

(declare-fun lemmaContainsAllItsOwnKeys!1106 (ListMap!7337) Unit!172558)

(assert (=> b!8057094 (= lt!2730770 (lemmaContainsAllItsOwnKeys!1106 acc!836))))

(declare-fun addToMapMapFromBucket!2010 (List!75731 ListMap!7337) ListMap!7337)

(assert (=> b!8057094 (= lt!2730769 (addToMapMapFromBucket!2010 (t!391503 l!10976) lt!2730771))))

(declare-fun +!2694 (ListMap!7337 tuple2!70966) ListMap!7337)

(assert (=> b!8057094 (= lt!2730771 (+!2694 acc!836 (h!82053 l!10976)))))

(declare-fun b!8057095 () Bool)

(assert (=> b!8057095 (= e!4748065 (= l!10976 (Cons!75605 (h!82053 l!10976) (t!391503 l!10976))))))

(assert (= (and start!759074 res!3187097) b!8057092))

(assert (= (and b!8057092 res!3187096) b!8057094))

(assert (= (and b!8057094 res!3187094) b!8057088))

(assert (= (and b!8057088 res!3187095) b!8057091))

(assert (= (and b!8057091 res!3187098) b!8057095))

(assert (= (and b!8057094 res!3187099) b!8057089))

(assert (= (and start!759074 (is-Cons!75605 l!10976)) b!8057093))

(assert (= start!759074 b!8057090))

(declare-fun m!8410232 () Bool)

(assert (=> b!8057089 m!8410232))

(declare-fun m!8410234 () Bool)

(assert (=> b!8057088 m!8410234))

(declare-fun m!8410236 () Bool)

(assert (=> start!759074 m!8410236))

(declare-fun m!8410238 () Bool)

(assert (=> start!759074 m!8410238))

(declare-fun m!8410240 () Bool)

(assert (=> b!8057091 m!8410240))

(declare-fun m!8410242 () Bool)

(assert (=> b!8057094 m!8410242))

(declare-fun m!8410244 () Bool)

(assert (=> b!8057094 m!8410244))

(declare-fun m!8410246 () Bool)

(assert (=> b!8057094 m!8410246))

(declare-fun m!8410248 () Bool)

(assert (=> b!8057094 m!8410248))

(declare-fun m!8410250 () Bool)

(assert (=> b!8057094 m!8410250))

(push 1)

(assert (not b!8057094))

(assert tp_is_empty!55057)

(assert (not b!8057093))

(assert tp_is_empty!55055)

(assert (not start!759074))

(assert (not b!8057090))

(assert (not b!8057088))

(assert (not b!8057091))

(assert (not b!8057089))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2398797 () Bool)

(declare-fun lt!2730783 () Bool)

(declare-fun content!16133 (List!75731) (Set tuple2!70966))

(assert (=> d!2398797 (= lt!2730783 (set.member (h!82053 l!10976) (content!16133 (toList!11943 lt!2730771))))))

(declare-fun e!4748087 () Bool)

(assert (=> d!2398797 (= lt!2730783 e!4748087)))

(declare-fun res!3187123 () Bool)

(assert (=> d!2398797 (=> (not res!3187123) (not e!4748087))))

(assert (=> d!2398797 (= res!3187123 (is-Cons!75605 (toList!11943 lt!2730771)))))

(assert (=> d!2398797 (= (contains!21279 (toList!11943 lt!2730771) (h!82053 l!10976)) lt!2730783)))

(declare-fun b!8057128 () Bool)

(declare-fun e!4748088 () Bool)

(assert (=> b!8057128 (= e!4748087 e!4748088)))

(declare-fun res!3187122 () Bool)

(assert (=> b!8057128 (=> res!3187122 e!4748088)))

(assert (=> b!8057128 (= res!3187122 (= (h!82053 (toList!11943 lt!2730771)) (h!82053 l!10976)))))

(declare-fun b!8057129 () Bool)

(assert (=> b!8057129 (= e!4748088 (contains!21279 (t!391503 (toList!11943 lt!2730771)) (h!82053 l!10976)))))

(assert (= (and d!2398797 res!3187123) b!8057128))

(assert (= (and b!8057128 (not res!3187122)) b!8057129))

(declare-fun m!8410272 () Bool)

(assert (=> d!2398797 m!8410272))

(declare-fun m!8410274 () Bool)

(assert (=> d!2398797 m!8410274))

(declare-fun m!8410276 () Bool)

(assert (=> b!8057129 m!8410276))

(assert (=> b!8057089 d!2398797))

(declare-fun d!2398799 () Bool)

(declare-fun res!3187128 () Bool)

(declare-fun e!4748093 () Bool)

(assert (=> d!2398799 (=> res!3187128 e!4748093)))

(assert (=> d!2398799 (= res!3187128 (is-Nil!75605 (t!391503 l!10976)))))

(assert (=> d!2398799 (= (forall!18525 (t!391503 l!10976) lambda!474425) e!4748093)))

(declare-fun b!8057134 () Bool)

(declare-fun e!4748094 () Bool)

(assert (=> b!8057134 (= e!4748093 e!4748094)))

(declare-fun res!3187129 () Bool)

(assert (=> b!8057134 (=> (not res!3187129) (not e!4748094))))

(declare-fun dynLambda!30271 (Int tuple2!70966) Bool)

(assert (=> b!8057134 (= res!3187129 (dynLambda!30271 lambda!474425 (h!82053 (t!391503 l!10976))))))

(declare-fun b!8057135 () Bool)

(assert (=> b!8057135 (= e!4748094 (forall!18525 (t!391503 (t!391503 l!10976)) lambda!474425))))

(assert (= (and d!2398799 (not res!3187128)) b!8057134))

(assert (= (and b!8057134 res!3187129) b!8057135))

(declare-fun b_lambda!290503 () Bool)

(assert (=> (not b_lambda!290503) (not b!8057134)))

(declare-fun m!8410278 () Bool)

(assert (=> b!8057134 m!8410278))

(declare-fun m!8410280 () Bool)

(assert (=> b!8057135 m!8410280))

(assert (=> b!8057091 d!2398799))

(declare-fun bs!1973201 () Bool)

(declare-fun b!8057166 () Bool)

(assert (= bs!1973201 (and b!8057166 b!8057094)))

(declare-fun lambda!474466 () Int)

(assert (=> bs!1973201 (= (= lt!2730771 acc!836) (= lambda!474466 lambda!474424))))

(declare-fun bs!1973202 () Bool)

(assert (= bs!1973202 (and b!8057166 b!8057088)))

(assert (=> bs!1973202 (= (= lt!2730771 lt!2730769) (= lambda!474466 lambda!474425))))

(assert (=> bs!1973201 (= (= lt!2730771 lt!2730769) (= lambda!474466 lambda!474426))))

(assert (=> b!8057166 true))

(declare-fun bs!1973203 () Bool)

(declare-fun b!8057169 () Bool)

(assert (= bs!1973203 (and b!8057169 b!8057094)))

(declare-fun lambda!474467 () Int)

(assert (=> bs!1973203 (= (= lt!2730771 acc!836) (= lambda!474467 lambda!474424))))

(declare-fun bs!1973204 () Bool)

(assert (= bs!1973204 (and b!8057169 b!8057088)))

(assert (=> bs!1973204 (= (= lt!2730771 lt!2730769) (= lambda!474467 lambda!474425))))

(assert (=> bs!1973203 (= (= lt!2730771 lt!2730769) (= lambda!474467 lambda!474426))))

(declare-fun bs!1973205 () Bool)

(assert (= bs!1973205 (and b!8057169 b!8057166)))

(assert (=> bs!1973205 (= lambda!474467 lambda!474466)))

(assert (=> b!8057169 true))

(declare-fun lambda!474468 () Int)

(declare-fun lt!2730852 () ListMap!7337)

(assert (=> bs!1973204 (= (= lt!2730852 lt!2730769) (= lambda!474468 lambda!474425))))

(assert (=> bs!1973203 (= (= lt!2730852 lt!2730769) (= lambda!474468 lambda!474426))))

(assert (=> bs!1973203 (= (= lt!2730852 acc!836) (= lambda!474468 lambda!474424))))

(assert (=> b!8057169 (= (= lt!2730852 lt!2730771) (= lambda!474468 lambda!474467))))

(assert (=> bs!1973205 (= (= lt!2730852 lt!2730771) (= lambda!474468 lambda!474466))))

(assert (=> b!8057169 true))

(declare-fun bs!1973206 () Bool)

(declare-fun d!2398801 () Bool)

(assert (= bs!1973206 (and d!2398801 b!8057088)))

(declare-fun lambda!474469 () Int)

(declare-fun lt!2730857 () ListMap!7337)

(assert (=> bs!1973206 (= (= lt!2730857 lt!2730769) (= lambda!474469 lambda!474425))))

(declare-fun bs!1973207 () Bool)

(assert (= bs!1973207 (and d!2398801 b!8057094)))

(assert (=> bs!1973207 (= (= lt!2730857 lt!2730769) (= lambda!474469 lambda!474426))))

(assert (=> bs!1973207 (= (= lt!2730857 acc!836) (= lambda!474469 lambda!474424))))

(declare-fun bs!1973208 () Bool)

(assert (= bs!1973208 (and d!2398801 b!8057169)))

(assert (=> bs!1973208 (= (= lt!2730857 lt!2730852) (= lambda!474469 lambda!474468))))

(assert (=> bs!1973208 (= (= lt!2730857 lt!2730771) (= lambda!474469 lambda!474467))))

(declare-fun bs!1973209 () Bool)

(assert (= bs!1973209 (and d!2398801 b!8057166)))

(assert (=> bs!1973209 (= (= lt!2730857 lt!2730771) (= lambda!474469 lambda!474466))))

(assert (=> d!2398801 true))

(declare-fun call!747543 () Bool)

(declare-fun bm!747537 () Bool)

(declare-fun c!1476672 () Bool)

(assert (=> bm!747537 (= call!747543 (forall!18525 (ite c!1476672 (toList!11943 lt!2730771) (t!391503 (t!391503 l!10976))) (ite c!1476672 lambda!474466 lambda!474468)))))

(declare-fun e!4748120 () ListMap!7337)

(assert (=> b!8057166 (= e!4748120 lt!2730771)))

(declare-fun lt!2730844 () Unit!172558)

(declare-fun call!747542 () Unit!172558)

(assert (=> b!8057166 (= lt!2730844 call!747542)))

(declare-fun call!747544 () Bool)

(assert (=> b!8057166 call!747544))

(declare-fun lt!2730856 () Unit!172558)

(assert (=> b!8057166 (= lt!2730856 lt!2730844)))

(assert (=> b!8057166 call!747543))

(declare-fun lt!2730843 () Unit!172558)

(declare-fun Unit!172562 () Unit!172558)

(assert (=> b!8057166 (= lt!2730843 Unit!172562)))

(declare-fun e!4748118 () Bool)

(assert (=> d!2398801 e!4748118))

(declare-fun res!3187158 () Bool)

(assert (=> d!2398801 (=> (not res!3187158) (not e!4748118))))

(assert (=> d!2398801 (= res!3187158 (forall!18525 (t!391503 l!10976) lambda!474469))))

(assert (=> d!2398801 (= lt!2730857 e!4748120)))

(assert (=> d!2398801 (= c!1476672 (is-Nil!75605 (t!391503 l!10976)))))

(assert (=> d!2398801 (noDuplicateKeys!2729 (t!391503 l!10976))))

(assert (=> d!2398801 (= (addToMapMapFromBucket!2010 (t!391503 l!10976) lt!2730771) lt!2730857)))

(declare-fun b!8057167 () Bool)

(declare-fun res!3187156 () Bool)

(assert (=> b!8057167 (=> (not res!3187156) (not e!4748118))))

(assert (=> b!8057167 (= res!3187156 (forall!18525 (toList!11943 lt!2730771) lambda!474469))))

(declare-fun b!8057168 () Bool)

(declare-fun invariantList!1954 (List!75731) Bool)

(assert (=> b!8057168 (= e!4748118 (invariantList!1954 (toList!11943 lt!2730857)))))

(declare-fun bm!747538 () Bool)

(assert (=> bm!747538 (= call!747544 (forall!18525 (toList!11943 lt!2730771) (ite c!1476672 lambda!474466 lambda!474468)))))

(assert (=> b!8057169 (= e!4748120 lt!2730852)))

(declare-fun lt!2730841 () ListMap!7337)

(assert (=> b!8057169 (= lt!2730841 (+!2694 lt!2730771 (h!82053 (t!391503 l!10976))))))

(assert (=> b!8057169 (= lt!2730852 (addToMapMapFromBucket!2010 (t!391503 (t!391503 l!10976)) (+!2694 lt!2730771 (h!82053 (t!391503 l!10976)))))))

(declare-fun lt!2730859 () Unit!172558)

(assert (=> b!8057169 (= lt!2730859 call!747542)))

(assert (=> b!8057169 (forall!18525 (toList!11943 lt!2730771) lambda!474467)))

(declare-fun lt!2730861 () Unit!172558)

(assert (=> b!8057169 (= lt!2730861 lt!2730859)))

(assert (=> b!8057169 (forall!18525 (toList!11943 lt!2730841) lambda!474468)))

(declare-fun lt!2730842 () Unit!172558)

(declare-fun Unit!172563 () Unit!172558)

(assert (=> b!8057169 (= lt!2730842 Unit!172563)))

(assert (=> b!8057169 call!747543))

(declare-fun lt!2730851 () Unit!172558)

(declare-fun Unit!172564 () Unit!172558)

(assert (=> b!8057169 (= lt!2730851 Unit!172564)))

(declare-fun lt!2730855 () Unit!172558)

(declare-fun Unit!172565 () Unit!172558)

(assert (=> b!8057169 (= lt!2730855 Unit!172565)))

(declare-fun lt!2730848 () Unit!172558)

(declare-fun forallContained!4679 (List!75731 Int tuple2!70966) Unit!172558)

(assert (=> b!8057169 (= lt!2730848 (forallContained!4679 (toList!11943 lt!2730841) lambda!474468 (h!82053 (t!391503 l!10976))))))

(declare-fun contains!21281 (ListMap!7337 K!22911) Bool)

(assert (=> b!8057169 (contains!21281 lt!2730841 (_1!38786 (h!82053 (t!391503 l!10976))))))

(declare-fun lt!2730853 () Unit!172558)

(declare-fun Unit!172566 () Unit!172558)

(assert (=> b!8057169 (= lt!2730853 Unit!172566)))

(assert (=> b!8057169 (contains!21281 lt!2730852 (_1!38786 (h!82053 (t!391503 l!10976))))))

(declare-fun lt!2730860 () Unit!172558)

(declare-fun Unit!172567 () Unit!172558)

(assert (=> b!8057169 (= lt!2730860 Unit!172567)))

(assert (=> b!8057169 (forall!18525 (t!391503 l!10976) lambda!474468)))

(declare-fun lt!2730850 () Unit!172558)

(declare-fun Unit!172568 () Unit!172558)

(assert (=> b!8057169 (= lt!2730850 Unit!172568)))

(assert (=> b!8057169 (forall!18525 (toList!11943 lt!2730841) lambda!474468)))

(declare-fun lt!2730846 () Unit!172558)

(declare-fun Unit!172569 () Unit!172558)

(assert (=> b!8057169 (= lt!2730846 Unit!172569)))

(declare-fun lt!2730845 () Unit!172558)

(declare-fun Unit!172570 () Unit!172558)

(assert (=> b!8057169 (= lt!2730845 Unit!172570)))

(declare-fun lt!2730849 () Unit!172558)

(declare-fun addForallContainsKeyThenBeforeAdding!1104 (ListMap!7337 ListMap!7337 K!22911 V!23165) Unit!172558)

(assert (=> b!8057169 (= lt!2730849 (addForallContainsKeyThenBeforeAdding!1104 lt!2730771 lt!2730852 (_1!38786 (h!82053 (t!391503 l!10976))) (_2!38786 (h!82053 (t!391503 l!10976)))))))

(assert (=> b!8057169 (forall!18525 (toList!11943 lt!2730771) lambda!474468)))

(declare-fun lt!2730858 () Unit!172558)

(assert (=> b!8057169 (= lt!2730858 lt!2730849)))

(assert (=> b!8057169 call!747544))

(declare-fun lt!2730847 () Unit!172558)

(declare-fun Unit!172571 () Unit!172558)

(assert (=> b!8057169 (= lt!2730847 Unit!172571)))

(declare-fun res!3187157 () Bool)

(assert (=> b!8057169 (= res!3187157 (forall!18525 (t!391503 l!10976) lambda!474468))))

(declare-fun e!4748119 () Bool)

(assert (=> b!8057169 (=> (not res!3187157) (not e!4748119))))

(assert (=> b!8057169 e!4748119))

(declare-fun lt!2730854 () Unit!172558)

(declare-fun Unit!172572 () Unit!172558)

(assert (=> b!8057169 (= lt!2730854 Unit!172572)))

(declare-fun b!8057170 () Bool)

(assert (=> b!8057170 (= e!4748119 (forall!18525 (toList!11943 lt!2730771) lambda!474468))))

(declare-fun bm!747539 () Bool)

(assert (=> bm!747539 (= call!747542 (lemmaContainsAllItsOwnKeys!1106 lt!2730771))))

(assert (= (and d!2398801 c!1476672) b!8057166))

(assert (= (and d!2398801 (not c!1476672)) b!8057169))

(assert (= (and b!8057169 res!3187157) b!8057170))

(assert (= (or b!8057166 b!8057169) bm!747538))

(assert (= (or b!8057166 b!8057169) bm!747537))

(assert (= (or b!8057166 b!8057169) bm!747539))

(assert (= (and d!2398801 res!3187158) b!8057167))

(assert (= (and b!8057167 res!3187156) b!8057168))

(declare-fun m!8410308 () Bool)

(assert (=> bm!747537 m!8410308))

(declare-fun m!8410310 () Bool)

(assert (=> d!2398801 m!8410310))

(declare-fun m!8410312 () Bool)

(assert (=> d!2398801 m!8410312))

(declare-fun m!8410314 () Bool)

(assert (=> b!8057169 m!8410314))

(declare-fun m!8410316 () Bool)

(assert (=> b!8057169 m!8410316))

(declare-fun m!8410318 () Bool)

(assert (=> b!8057169 m!8410318))

(declare-fun m!8410320 () Bool)

(assert (=> b!8057169 m!8410320))

(declare-fun m!8410322 () Bool)

(assert (=> b!8057169 m!8410322))

(declare-fun m!8410324 () Bool)

(assert (=> b!8057169 m!8410324))

(assert (=> b!8057169 m!8410318))

(declare-fun m!8410326 () Bool)

(assert (=> b!8057169 m!8410326))

(assert (=> b!8057169 m!8410316))

(declare-fun m!8410328 () Bool)

(assert (=> b!8057169 m!8410328))

(declare-fun m!8410330 () Bool)

(assert (=> b!8057169 m!8410330))

(assert (=> b!8057169 m!8410320))

(declare-fun m!8410332 () Bool)

(assert (=> b!8057169 m!8410332))

(declare-fun m!8410334 () Bool)

(assert (=> bm!747538 m!8410334))

(declare-fun m!8410336 () Bool)

(assert (=> bm!747539 m!8410336))

(declare-fun m!8410338 () Bool)

(assert (=> b!8057168 m!8410338))

(declare-fun m!8410340 () Bool)

(assert (=> b!8057167 m!8410340))

(assert (=> b!8057170 m!8410328))

(assert (=> b!8057094 d!2398801))

(declare-fun d!2398813 () Bool)

(declare-fun res!3187159 () Bool)

(declare-fun e!4748121 () Bool)

(assert (=> d!2398813 (=> res!3187159 e!4748121)))

(assert (=> d!2398813 (= res!3187159 (is-Nil!75605 (toList!11943 acc!836)))))

(assert (=> d!2398813 (= (forall!18525 (toList!11943 acc!836) lambda!474424) e!4748121)))

(declare-fun b!8057171 () Bool)

(declare-fun e!4748122 () Bool)

(assert (=> b!8057171 (= e!4748121 e!4748122)))

(declare-fun res!3187160 () Bool)

(assert (=> b!8057171 (=> (not res!3187160) (not e!4748122))))

(assert (=> b!8057171 (= res!3187160 (dynLambda!30271 lambda!474424 (h!82053 (toList!11943 acc!836))))))

(declare-fun b!8057172 () Bool)

(assert (=> b!8057172 (= e!4748122 (forall!18525 (t!391503 (toList!11943 acc!836)) lambda!474424))))

(assert (= (and d!2398813 (not res!3187159)) b!8057171))

(assert (= (and b!8057171 res!3187160) b!8057172))

(declare-fun b_lambda!290509 () Bool)

(assert (=> (not b_lambda!290509) (not b!8057171)))

(declare-fun m!8410342 () Bool)

(assert (=> b!8057171 m!8410342))

(declare-fun m!8410344 () Bool)

(assert (=> b!8057172 m!8410344))

(assert (=> b!8057094 d!2398813))

(declare-fun d!2398815 () Bool)

(declare-fun e!4748125 () Bool)

(assert (=> d!2398815 e!4748125))

(declare-fun res!3187165 () Bool)

(assert (=> d!2398815 (=> (not res!3187165) (not e!4748125))))

(declare-fun lt!2730870 () ListMap!7337)

(assert (=> d!2398815 (= res!3187165 (contains!21281 lt!2730870 (_1!38786 (h!82053 l!10976))))))

(declare-fun lt!2730871 () List!75731)

(assert (=> d!2398815 (= lt!2730870 (ListMap!7338 lt!2730871))))

(declare-fun lt!2730873 () Unit!172558)

(declare-fun lt!2730872 () Unit!172558)

(assert (=> d!2398815 (= lt!2730873 lt!2730872)))

(declare-datatypes ((Option!18019 0))(
  ( (None!18018) (Some!18018 (v!55375 V!23165)) )
))
(declare-fun getValueByKey!2803 (List!75731 K!22911) Option!18019)

(assert (=> d!2398815 (= (getValueByKey!2803 lt!2730871 (_1!38786 (h!82053 l!10976))) (Some!18018 (_2!38786 (h!82053 l!10976))))))

(declare-fun lemmaContainsTupThenGetReturnValue!1296 (List!75731 K!22911 V!23165) Unit!172558)

(assert (=> d!2398815 (= lt!2730872 (lemmaContainsTupThenGetReturnValue!1296 lt!2730871 (_1!38786 (h!82053 l!10976)) (_2!38786 (h!82053 l!10976))))))

(declare-fun insertNoDuplicatedKeys!804 (List!75731 K!22911 V!23165) List!75731)

(assert (=> d!2398815 (= lt!2730871 (insertNoDuplicatedKeys!804 (toList!11943 acc!836) (_1!38786 (h!82053 l!10976)) (_2!38786 (h!82053 l!10976))))))

(assert (=> d!2398815 (= (+!2694 acc!836 (h!82053 l!10976)) lt!2730870)))

(declare-fun b!8057177 () Bool)

(declare-fun res!3187166 () Bool)

(assert (=> b!8057177 (=> (not res!3187166) (not e!4748125))))

(assert (=> b!8057177 (= res!3187166 (= (getValueByKey!2803 (toList!11943 lt!2730870) (_1!38786 (h!82053 l!10976))) (Some!18018 (_2!38786 (h!82053 l!10976)))))))

(declare-fun b!8057178 () Bool)

(assert (=> b!8057178 (= e!4748125 (contains!21279 (toList!11943 lt!2730870) (h!82053 l!10976)))))

(assert (= (and d!2398815 res!3187165) b!8057177))

(assert (= (and b!8057177 res!3187166) b!8057178))

(declare-fun m!8410346 () Bool)

(assert (=> d!2398815 m!8410346))

(declare-fun m!8410348 () Bool)

(assert (=> d!2398815 m!8410348))

(declare-fun m!8410350 () Bool)

(assert (=> d!2398815 m!8410350))

(declare-fun m!8410352 () Bool)

(assert (=> d!2398815 m!8410352))

(declare-fun m!8410354 () Bool)

(assert (=> b!8057177 m!8410354))

(declare-fun m!8410356 () Bool)

(assert (=> b!8057178 m!8410356))

(assert (=> b!8057094 d!2398815))

(declare-fun d!2398817 () Bool)

(declare-fun res!3187167 () Bool)

(declare-fun e!4748126 () Bool)

(assert (=> d!2398817 (=> res!3187167 e!4748126)))

(assert (=> d!2398817 (= res!3187167 (is-Nil!75605 (toList!11943 lt!2730771)))))

(assert (=> d!2398817 (= (forall!18525 (toList!11943 lt!2730771) lambda!474426) e!4748126)))

(declare-fun b!8057179 () Bool)

(declare-fun e!4748127 () Bool)

(assert (=> b!8057179 (= e!4748126 e!4748127)))

(declare-fun res!3187168 () Bool)

(assert (=> b!8057179 (=> (not res!3187168) (not e!4748127))))

(assert (=> b!8057179 (= res!3187168 (dynLambda!30271 lambda!474426 (h!82053 (toList!11943 lt!2730771))))))

(declare-fun b!8057180 () Bool)

(assert (=> b!8057180 (= e!4748127 (forall!18525 (t!391503 (toList!11943 lt!2730771)) lambda!474426))))

(assert (= (and d!2398817 (not res!3187167)) b!8057179))

(assert (= (and b!8057179 res!3187168) b!8057180))

(declare-fun b_lambda!290511 () Bool)

(assert (=> (not b_lambda!290511) (not b!8057179)))

(declare-fun m!8410358 () Bool)

(assert (=> b!8057179 m!8410358))

(declare-fun m!8410360 () Bool)

(assert (=> b!8057180 m!8410360))

(assert (=> b!8057094 d!2398817))

(declare-fun bs!1973210 () Bool)

(declare-fun d!2398819 () Bool)

(assert (= bs!1973210 (and d!2398819 b!8057088)))

(declare-fun lambda!474472 () Int)

(assert (=> bs!1973210 (= (= acc!836 lt!2730769) (= lambda!474472 lambda!474425))))

(declare-fun bs!1973211 () Bool)

(assert (= bs!1973211 (and d!2398819 b!8057094)))

(assert (=> bs!1973211 (= lambda!474472 lambda!474424)))

(declare-fun bs!1973212 () Bool)

(assert (= bs!1973212 (and d!2398819 b!8057169)))

(assert (=> bs!1973212 (= (= acc!836 lt!2730852) (= lambda!474472 lambda!474468))))

(assert (=> bs!1973211 (= (= acc!836 lt!2730769) (= lambda!474472 lambda!474426))))

(declare-fun bs!1973213 () Bool)

(assert (= bs!1973213 (and d!2398819 d!2398801)))

(assert (=> bs!1973213 (= (= acc!836 lt!2730857) (= lambda!474472 lambda!474469))))

(assert (=> bs!1973212 (= (= acc!836 lt!2730771) (= lambda!474472 lambda!474467))))

(declare-fun bs!1973214 () Bool)

(assert (= bs!1973214 (and d!2398819 b!8057166)))

(assert (=> bs!1973214 (= (= acc!836 lt!2730771) (= lambda!474472 lambda!474466))))

(assert (=> d!2398819 true))

(assert (=> d!2398819 (forall!18525 (toList!11943 acc!836) lambda!474472)))

(declare-fun lt!2730876 () Unit!172558)

(declare-fun choose!60564 (ListMap!7337) Unit!172558)

(assert (=> d!2398819 (= lt!2730876 (choose!60564 acc!836))))

(assert (=> d!2398819 (= (lemmaContainsAllItsOwnKeys!1106 acc!836) lt!2730876)))

(declare-fun bs!1973215 () Bool)

(assert (= bs!1973215 d!2398819))

(declare-fun m!8410362 () Bool)

(assert (=> bs!1973215 m!8410362))

(declare-fun m!8410364 () Bool)

(assert (=> bs!1973215 m!8410364))

(assert (=> b!8057094 d!2398819))

(declare-fun d!2398821 () Bool)

(declare-fun res!3187173 () Bool)

(declare-fun e!4748132 () Bool)

(assert (=> d!2398821 (=> res!3187173 e!4748132)))

(assert (=> d!2398821 (= res!3187173 (not (is-Cons!75605 l!10976)))))

(assert (=> d!2398821 (= (noDuplicateKeys!2729 l!10976) e!4748132)))

(declare-fun b!8057185 () Bool)

(declare-fun e!4748133 () Bool)

(assert (=> b!8057185 (= e!4748132 e!4748133)))

(declare-fun res!3187174 () Bool)

(assert (=> b!8057185 (=> (not res!3187174) (not e!4748133))))

(declare-fun containsKey!4912 (List!75731 K!22911) Bool)

(assert (=> b!8057185 (= res!3187174 (not (containsKey!4912 (t!391503 l!10976) (_1!38786 (h!82053 l!10976)))))))

(declare-fun b!8057186 () Bool)

(assert (=> b!8057186 (= e!4748133 (noDuplicateKeys!2729 (t!391503 l!10976)))))

(assert (= (and d!2398821 (not res!3187173)) b!8057185))

(assert (= (and b!8057185 res!3187174) b!8057186))

(declare-fun m!8410366 () Bool)

(assert (=> b!8057185 m!8410366))

(assert (=> b!8057186 m!8410312))

(assert (=> start!759074 d!2398821))

(declare-fun d!2398823 () Bool)

(assert (=> d!2398823 (= (inv!97385 acc!836) (invariantList!1954 (toList!11943 acc!836)))))

(declare-fun bs!1973216 () Bool)

(assert (= bs!1973216 d!2398823))

(declare-fun m!8410368 () Bool)

(assert (=> bs!1973216 m!8410368))

(assert (=> start!759074 d!2398823))

(declare-fun d!2398825 () Bool)

(declare-fun res!3187175 () Bool)

(declare-fun e!4748134 () Bool)

(assert (=> d!2398825 (=> res!3187175 e!4748134)))

(assert (=> d!2398825 (= res!3187175 (is-Nil!75605 (toList!11943 lt!2730771)))))

(assert (=> d!2398825 (= (forall!18525 (toList!11943 lt!2730771) lambda!474425) e!4748134)))

(declare-fun b!8057187 () Bool)

(declare-fun e!4748135 () Bool)

(assert (=> b!8057187 (= e!4748134 e!4748135)))

(declare-fun res!3187176 () Bool)

(assert (=> b!8057187 (=> (not res!3187176) (not e!4748135))))

(assert (=> b!8057187 (= res!3187176 (dynLambda!30271 lambda!474425 (h!82053 (toList!11943 lt!2730771))))))

(declare-fun b!8057188 () Bool)

(assert (=> b!8057188 (= e!4748135 (forall!18525 (t!391503 (toList!11943 lt!2730771)) lambda!474425))))

(assert (= (and d!2398825 (not res!3187175)) b!8057187))

(assert (= (and b!8057187 res!3187176) b!8057188))

(declare-fun b_lambda!290513 () Bool)

(assert (=> (not b_lambda!290513) (not b!8057187)))

(declare-fun m!8410370 () Bool)

(assert (=> b!8057187 m!8410370))

(declare-fun m!8410372 () Bool)

(assert (=> b!8057188 m!8410372))

(assert (=> b!8057088 d!2398825))

(declare-fun b!8057193 () Bool)

(declare-fun tp!2414056 () Bool)

(declare-fun e!4748138 () Bool)

(assert (=> b!8057193 (= e!4748138 (and tp_is_empty!55055 tp_is_empty!55057 tp!2414056))))

(assert (=> b!8057090 (= tp!2414047 e!4748138)))

(assert (= (and b!8057090 (is-Cons!75605 (toList!11943 acc!836))) b!8057193))

(declare-fun tp!2414057 () Bool)

(declare-fun b!8057194 () Bool)

(declare-fun e!4748139 () Bool)

(assert (=> b!8057194 (= e!4748139 (and tp_is_empty!55055 tp_is_empty!55057 tp!2414057))))

(assert (=> b!8057093 (= tp!2414046 e!4748139)))

(assert (= (and b!8057093 (is-Cons!75605 (t!391503 l!10976))) b!8057194))

(declare-fun b_lambda!290515 () Bool)

(assert (= b_lambda!290503 (or b!8057088 b_lambda!290515)))

(declare-fun bs!1973217 () Bool)

(declare-fun d!2398827 () Bool)

(assert (= bs!1973217 (and d!2398827 b!8057088)))

(assert (=> bs!1973217 (= (dynLambda!30271 lambda!474425 (h!82053 (t!391503 l!10976))) (contains!21281 lt!2730769 (_1!38786 (h!82053 (t!391503 l!10976)))))))

(declare-fun m!8410374 () Bool)

(assert (=> bs!1973217 m!8410374))

(assert (=> b!8057134 d!2398827))

(declare-fun b_lambda!290517 () Bool)

(assert (= b_lambda!290509 (or b!8057094 b_lambda!290517)))

(declare-fun bs!1973218 () Bool)

(declare-fun d!2398829 () Bool)

(assert (= bs!1973218 (and d!2398829 b!8057094)))

(assert (=> bs!1973218 (= (dynLambda!30271 lambda!474424 (h!82053 (toList!11943 acc!836))) (contains!21281 acc!836 (_1!38786 (h!82053 (toList!11943 acc!836)))))))

(declare-fun m!8410376 () Bool)

(assert (=> bs!1973218 m!8410376))

(assert (=> b!8057171 d!2398829))

(declare-fun b_lambda!290519 () Bool)

(assert (= b_lambda!290511 (or b!8057094 b_lambda!290519)))

(declare-fun bs!1973219 () Bool)

(declare-fun d!2398831 () Bool)

(assert (= bs!1973219 (and d!2398831 b!8057094)))

(assert (=> bs!1973219 (= (dynLambda!30271 lambda!474426 (h!82053 (toList!11943 lt!2730771))) (contains!21281 lt!2730769 (_1!38786 (h!82053 (toList!11943 lt!2730771)))))))

(declare-fun m!8410378 () Bool)

(assert (=> bs!1973219 m!8410378))

(assert (=> b!8057179 d!2398831))

(declare-fun b_lambda!290521 () Bool)

(assert (= b_lambda!290513 (or b!8057088 b_lambda!290521)))

(declare-fun bs!1973220 () Bool)

(declare-fun d!2398833 () Bool)

(assert (= bs!1973220 (and d!2398833 b!8057088)))

(assert (=> bs!1973220 (= (dynLambda!30271 lambda!474425 (h!82053 (toList!11943 lt!2730771))) (contains!21281 lt!2730769 (_1!38786 (h!82053 (toList!11943 lt!2730771)))))))

(assert (=> bs!1973220 m!8410378))

(assert (=> b!8057187 d!2398833))

(push 1)

(assert (not b!8057172))

(assert (not d!2398819))

(assert (not bm!747539))

(assert (not b!8057170))

(assert (not b_lambda!290515))

(assert (not bm!747537))

(assert (not bs!1973219))

(assert (not b!8057177))

(assert (not b!8057135))

(assert (not d!2398823))

(assert (not b!8057186))

(assert tp_is_empty!55057)

(assert (not b!8057194))

(assert (not d!2398801))

(assert (not d!2398815))

(assert (not bs!1973220))

(assert tp_is_empty!55055)

(assert (not b!8057129))

(assert (not bs!1973218))

(assert (not b!8057188))

(assert (not b!8057168))

(assert (not bm!747538))

(assert (not b!8057178))

(assert (not b_lambda!290521))

(assert (not b!8057193))

(assert (not bs!1973217))

(assert (not b!8057185))

(assert (not b!8057169))

(assert (not b!8057180))

(assert (not b_lambda!290519))

(assert (not b_lambda!290517))

(assert (not d!2398797))

(assert (not b!8057167))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

