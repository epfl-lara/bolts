; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!485724 () Bool)

(assert start!485724)

(declare-fun b!4753467 () Bool)

(declare-fun res!2016111 () Bool)

(declare-fun e!2965313 () Bool)

(assert (=> b!4753467 (=> (not res!2016111) (not e!2965313))))

(declare-datatypes ((K!14560 0))(
  ( (K!14561 (val!19919 Int)) )
))
(declare-datatypes ((V!14806 0))(
  ( (V!14807 (val!19920 Int)) )
))
(declare-datatypes ((tuple2!54888 0))(
  ( (tuple2!54889 (_1!30738 K!14560) (_2!30738 V!14806)) )
))
(declare-datatypes ((List!53228 0))(
  ( (Nil!53104) (Cons!53104 (h!59501 tuple2!54888) (t!360572 List!53228)) )
))
(declare-fun l!13029 () List!53228)

(declare-fun noDuplicateKeys!2164 (List!53228) Bool)

(assert (=> b!4753467 (= res!2016111 (noDuplicateKeys!2164 l!13029))))

(declare-fun tp_is_empty!31951 () Bool)

(declare-fun e!2965312 () Bool)

(declare-fun tp!1350325 () Bool)

(declare-fun b!4753468 () Bool)

(declare-fun tp_is_empty!31949 () Bool)

(assert (=> b!4753468 (= e!2965312 (and tp_is_empty!31949 tp_is_empty!31951 tp!1350325))))

(declare-fun b!4753469 () Bool)

(declare-fun res!2016113 () Bool)

(assert (=> b!4753469 (=> (not res!2016113) (not e!2965313))))

(get-info :version)

(assert (=> b!4753469 (= res!2016113 ((_ is Cons!53104) l!13029))))

(declare-fun b!4753470 () Bool)

(declare-fun e!2965314 () Bool)

(declare-fun tp!1350324 () Bool)

(assert (=> b!4753470 (= e!2965314 tp!1350324)))

(declare-fun b!4753471 () Bool)

(assert (=> b!4753471 (= e!2965313 (not (noDuplicateKeys!2164 (t!360572 l!13029))))))

(declare-datatypes ((ListMap!5573 0))(
  ( (ListMap!5574 (toList!6132 List!53228)) )
))
(declare-fun lt!1919180 () ListMap!5573)

(declare-fun lt!1919181 () ListMap!5573)

(declare-fun lt!1919182 () tuple2!54888)

(declare-fun eq!1233 (ListMap!5573 ListMap!5573) Bool)

(declare-fun addToMapMapFromBucket!1586 (List!53228 ListMap!5573) ListMap!5573)

(declare-fun +!2398 (ListMap!5573 tuple2!54888) ListMap!5573)

(assert (=> b!4753471 (eq!1233 (addToMapMapFromBucket!1586 (t!360572 l!13029) lt!1919181) (+!2398 (addToMapMapFromBucket!1586 (t!360572 l!13029) lt!1919180) lt!1919182))))

(declare-fun value!2966 () V!14806)

(declare-datatypes ((Unit!136884 0))(
  ( (Unit!136885) )
))
(declare-fun lt!1919179 () Unit!136884)

(declare-fun key!4572 () K!14560)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!250 (ListMap!5573 K!14560 V!14806 List!53228) Unit!136884)

(assert (=> b!4753471 (= lt!1919179 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!250 lt!1919180 key!4572 value!2966 (t!360572 l!13029)))))

(declare-fun lhm!63 () ListMap!5573)

(assert (=> b!4753471 (eq!1233 lt!1919181 (+!2398 (+!2398 lhm!63 lt!1919182) (h!59501 l!13029)))))

(assert (=> b!4753471 (= lt!1919181 (+!2398 lt!1919180 lt!1919182))))

(assert (=> b!4753471 (= lt!1919182 (tuple2!54889 key!4572 value!2966))))

(declare-fun lt!1919183 () Unit!136884)

(declare-fun addCommutativeForDiffKeys!34 (ListMap!5573 K!14560 V!14806 K!14560 V!14806) Unit!136884)

(assert (=> b!4753471 (= lt!1919183 (addCommutativeForDiffKeys!34 lhm!63 (_1!30738 (h!59501 l!13029)) (_2!30738 (h!59501 l!13029)) key!4572 value!2966))))

(assert (=> b!4753471 (= lt!1919180 (+!2398 lhm!63 (h!59501 l!13029)))))

(declare-fun res!2016112 () Bool)

(assert (=> start!485724 (=> (not res!2016112) (not e!2965313))))

(declare-fun containsKey!3570 (List!53228 K!14560) Bool)

(assert (=> start!485724 (= res!2016112 (not (containsKey!3570 l!13029 key!4572)))))

(assert (=> start!485724 e!2965313))

(assert (=> start!485724 e!2965312))

(assert (=> start!485724 tp_is_empty!31949))

(assert (=> start!485724 tp_is_empty!31951))

(declare-fun inv!68430 (ListMap!5573) Bool)

(assert (=> start!485724 (and (inv!68430 lhm!63) e!2965314)))

(assert (= (and start!485724 res!2016112) b!4753467))

(assert (= (and b!4753467 res!2016111) b!4753469))

(assert (= (and b!4753469 res!2016113) b!4753471))

(assert (= (and start!485724 ((_ is Cons!53104) l!13029)) b!4753468))

(assert (= start!485724 b!4753470))

(declare-fun m!5720577 () Bool)

(assert (=> b!4753467 m!5720577))

(declare-fun m!5720579 () Bool)

(assert (=> b!4753471 m!5720579))

(declare-fun m!5720581 () Bool)

(assert (=> b!4753471 m!5720581))

(declare-fun m!5720583 () Bool)

(assert (=> b!4753471 m!5720583))

(declare-fun m!5720585 () Bool)

(assert (=> b!4753471 m!5720585))

(assert (=> b!4753471 m!5720585))

(declare-fun m!5720587 () Bool)

(assert (=> b!4753471 m!5720587))

(declare-fun m!5720589 () Bool)

(assert (=> b!4753471 m!5720589))

(declare-fun m!5720591 () Bool)

(assert (=> b!4753471 m!5720591))

(declare-fun m!5720593 () Bool)

(assert (=> b!4753471 m!5720593))

(declare-fun m!5720595 () Bool)

(assert (=> b!4753471 m!5720595))

(assert (=> b!4753471 m!5720583))

(declare-fun m!5720597 () Bool)

(assert (=> b!4753471 m!5720597))

(assert (=> b!4753471 m!5720597))

(assert (=> b!4753471 m!5720591))

(declare-fun m!5720599 () Bool)

(assert (=> b!4753471 m!5720599))

(assert (=> b!4753471 m!5720589))

(declare-fun m!5720601 () Bool)

(assert (=> b!4753471 m!5720601))

(declare-fun m!5720603 () Bool)

(assert (=> start!485724 m!5720603))

(declare-fun m!5720605 () Bool)

(assert (=> start!485724 m!5720605))

(check-sat (not b!4753471) tp_is_empty!31951 (not b!4753470) (not b!4753467) (not b!4753468) tp_is_empty!31949 (not start!485724))
(check-sat)
(get-model)

(declare-fun b!4753527 () Bool)

(assert (=> b!4753527 true))

(declare-fun bs!1145712 () Bool)

(declare-fun b!4753528 () Bool)

(assert (= bs!1145712 (and b!4753528 b!4753527)))

(declare-fun lambda!222706 () Int)

(declare-fun lambda!222705 () Int)

(assert (=> bs!1145712 (= lambda!222706 lambda!222705)))

(assert (=> b!4753528 true))

(declare-fun lambda!222707 () Int)

(declare-fun lt!1919354 () ListMap!5573)

(assert (=> bs!1145712 (= (= lt!1919354 lt!1919181) (= lambda!222707 lambda!222705))))

(assert (=> b!4753528 (= (= lt!1919354 lt!1919181) (= lambda!222707 lambda!222706))))

(assert (=> b!4753528 true))

(declare-fun bs!1145713 () Bool)

(declare-fun d!1519936 () Bool)

(assert (= bs!1145713 (and d!1519936 b!4753527)))

(declare-fun lt!1919347 () ListMap!5573)

(declare-fun lambda!222708 () Int)

(assert (=> bs!1145713 (= (= lt!1919347 lt!1919181) (= lambda!222708 lambda!222705))))

(declare-fun bs!1145714 () Bool)

(assert (= bs!1145714 (and d!1519936 b!4753528)))

(assert (=> bs!1145714 (= (= lt!1919347 lt!1919181) (= lambda!222708 lambda!222706))))

(assert (=> bs!1145714 (= (= lt!1919347 lt!1919354) (= lambda!222708 lambda!222707))))

(assert (=> d!1519936 true))

(declare-fun b!4753524 () Bool)

(declare-fun e!2965346 () Bool)

(declare-fun forall!11772 (List!53228 Int) Bool)

(assert (=> b!4753524 (= e!2965346 (forall!11772 (toList!6132 lt!1919181) lambda!222707))))

(declare-fun e!2965347 () Bool)

(assert (=> d!1519936 e!2965347))

(declare-fun res!2016154 () Bool)

(assert (=> d!1519936 (=> (not res!2016154) (not e!2965347))))

(assert (=> d!1519936 (= res!2016154 (forall!11772 (t!360572 l!13029) lambda!222708))))

(declare-fun e!2965348 () ListMap!5573)

(assert (=> d!1519936 (= lt!1919347 e!2965348)))

(declare-fun c!811566 () Bool)

(assert (=> d!1519936 (= c!811566 ((_ is Nil!53104) (t!360572 l!13029)))))

(assert (=> d!1519936 (noDuplicateKeys!2164 (t!360572 l!13029))))

(assert (=> d!1519936 (= (addToMapMapFromBucket!1586 (t!360572 l!13029) lt!1919181) lt!1919347)))

(declare-fun b!4753525 () Bool)

(declare-fun invariantList!1604 (List!53228) Bool)

(assert (=> b!4753525 (= e!2965347 (invariantList!1604 (toList!6132 lt!1919347)))))

(declare-fun call!333250 () Bool)

(declare-fun bm!333245 () Bool)

(assert (=> bm!333245 (= call!333250 (forall!11772 (toList!6132 lt!1919181) (ite c!811566 lambda!222705 lambda!222707)))))

(declare-fun b!4753526 () Bool)

(declare-fun res!2016153 () Bool)

(assert (=> b!4753526 (=> (not res!2016153) (not e!2965347))))

(assert (=> b!4753526 (= res!2016153 (forall!11772 (toList!6132 lt!1919181) lambda!222708))))

(declare-fun bm!333246 () Bool)

(declare-fun lt!1919352 () ListMap!5573)

(declare-fun call!333252 () Bool)

(assert (=> bm!333246 (= call!333252 (forall!11772 (ite c!811566 (toList!6132 lt!1919181) (toList!6132 lt!1919352)) (ite c!811566 lambda!222705 lambda!222707)))))

(assert (=> b!4753527 (= e!2965348 lt!1919181)))

(declare-fun lt!1919358 () Unit!136884)

(declare-fun call!333251 () Unit!136884)

(assert (=> b!4753527 (= lt!1919358 call!333251)))

(assert (=> b!4753527 call!333250))

(declare-fun lt!1919343 () Unit!136884)

(assert (=> b!4753527 (= lt!1919343 lt!1919358)))

(assert (=> b!4753527 call!333252))

(declare-fun lt!1919356 () Unit!136884)

(declare-fun Unit!136897 () Unit!136884)

(assert (=> b!4753527 (= lt!1919356 Unit!136897)))

(assert (=> b!4753528 (= e!2965348 lt!1919354)))

(assert (=> b!4753528 (= lt!1919352 (+!2398 lt!1919181 (h!59501 (t!360572 l!13029))))))

(assert (=> b!4753528 (= lt!1919354 (addToMapMapFromBucket!1586 (t!360572 (t!360572 l!13029)) (+!2398 lt!1919181 (h!59501 (t!360572 l!13029)))))))

(declare-fun lt!1919344 () Unit!136884)

(assert (=> b!4753528 (= lt!1919344 call!333251)))

(assert (=> b!4753528 (forall!11772 (toList!6132 lt!1919181) lambda!222706)))

(declare-fun lt!1919355 () Unit!136884)

(assert (=> b!4753528 (= lt!1919355 lt!1919344)))

(assert (=> b!4753528 (forall!11772 (toList!6132 lt!1919352) lambda!222707)))

(declare-fun lt!1919345 () Unit!136884)

(declare-fun Unit!136898 () Unit!136884)

(assert (=> b!4753528 (= lt!1919345 Unit!136898)))

(assert (=> b!4753528 (forall!11772 (t!360572 (t!360572 l!13029)) lambda!222707)))

(declare-fun lt!1919338 () Unit!136884)

(declare-fun Unit!136899 () Unit!136884)

(assert (=> b!4753528 (= lt!1919338 Unit!136899)))

(declare-fun lt!1919349 () Unit!136884)

(declare-fun Unit!136900 () Unit!136884)

(assert (=> b!4753528 (= lt!1919349 Unit!136900)))

(declare-fun lt!1919350 () Unit!136884)

(declare-fun forallContained!3798 (List!53228 Int tuple2!54888) Unit!136884)

(assert (=> b!4753528 (= lt!1919350 (forallContained!3798 (toList!6132 lt!1919352) lambda!222707 (h!59501 (t!360572 l!13029))))))

(declare-fun contains!16531 (ListMap!5573 K!14560) Bool)

(assert (=> b!4753528 (contains!16531 lt!1919352 (_1!30738 (h!59501 (t!360572 l!13029))))))

(declare-fun lt!1919346 () Unit!136884)

(declare-fun Unit!136903 () Unit!136884)

(assert (=> b!4753528 (= lt!1919346 Unit!136903)))

(assert (=> b!4753528 (contains!16531 lt!1919354 (_1!30738 (h!59501 (t!360572 l!13029))))))

(declare-fun lt!1919351 () Unit!136884)

(declare-fun Unit!136905 () Unit!136884)

(assert (=> b!4753528 (= lt!1919351 Unit!136905)))

(assert (=> b!4753528 (forall!11772 (t!360572 l!13029) lambda!222707)))

(declare-fun lt!1919342 () Unit!136884)

(declare-fun Unit!136906 () Unit!136884)

(assert (=> b!4753528 (= lt!1919342 Unit!136906)))

(assert (=> b!4753528 call!333252))

(declare-fun lt!1919340 () Unit!136884)

(declare-fun Unit!136908 () Unit!136884)

(assert (=> b!4753528 (= lt!1919340 Unit!136908)))

(declare-fun lt!1919357 () Unit!136884)

(declare-fun Unit!136910 () Unit!136884)

(assert (=> b!4753528 (= lt!1919357 Unit!136910)))

(declare-fun lt!1919339 () Unit!136884)

(declare-fun addForallContainsKeyThenBeforeAdding!886 (ListMap!5573 ListMap!5573 K!14560 V!14806) Unit!136884)

(assert (=> b!4753528 (= lt!1919339 (addForallContainsKeyThenBeforeAdding!886 lt!1919181 lt!1919354 (_1!30738 (h!59501 (t!360572 l!13029))) (_2!30738 (h!59501 (t!360572 l!13029)))))))

(assert (=> b!4753528 (forall!11772 (toList!6132 lt!1919181) lambda!222707)))

(declare-fun lt!1919353 () Unit!136884)

(assert (=> b!4753528 (= lt!1919353 lt!1919339)))

(assert (=> b!4753528 call!333250))

(declare-fun lt!1919341 () Unit!136884)

(declare-fun Unit!136914 () Unit!136884)

(assert (=> b!4753528 (= lt!1919341 Unit!136914)))

(declare-fun res!2016152 () Bool)

(assert (=> b!4753528 (= res!2016152 (forall!11772 (t!360572 l!13029) lambda!222707))))

(assert (=> b!4753528 (=> (not res!2016152) (not e!2965346))))

(assert (=> b!4753528 e!2965346))

(declare-fun lt!1919348 () Unit!136884)

(declare-fun Unit!136915 () Unit!136884)

(assert (=> b!4753528 (= lt!1919348 Unit!136915)))

(declare-fun bm!333247 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!887 (ListMap!5573) Unit!136884)

(assert (=> bm!333247 (= call!333251 (lemmaContainsAllItsOwnKeys!887 lt!1919181))))

(assert (= (and d!1519936 c!811566) b!4753527))

(assert (= (and d!1519936 (not c!811566)) b!4753528))

(assert (= (and b!4753528 res!2016152) b!4753524))

(assert (= (or b!4753527 b!4753528) bm!333246))

(assert (= (or b!4753527 b!4753528) bm!333245))

(assert (= (or b!4753527 b!4753528) bm!333247))

(assert (= (and d!1519936 res!2016154) b!4753526))

(assert (= (and b!4753526 res!2016153) b!4753525))

(declare-fun m!5720743 () Bool)

(assert (=> b!4753524 m!5720743))

(declare-fun m!5720745 () Bool)

(assert (=> bm!333247 m!5720745))

(declare-fun m!5720747 () Bool)

(assert (=> bm!333246 m!5720747))

(declare-fun m!5720749 () Bool)

(assert (=> d!1519936 m!5720749))

(assert (=> d!1519936 m!5720579))

(declare-fun m!5720751 () Bool)

(assert (=> b!4753528 m!5720751))

(declare-fun m!5720753 () Bool)

(assert (=> b!4753528 m!5720753))

(declare-fun m!5720755 () Bool)

(assert (=> b!4753528 m!5720755))

(declare-fun m!5720757 () Bool)

(assert (=> b!4753528 m!5720757))

(declare-fun m!5720759 () Bool)

(assert (=> b!4753528 m!5720759))

(declare-fun m!5720761 () Bool)

(assert (=> b!4753528 m!5720761))

(declare-fun m!5720763 () Bool)

(assert (=> b!4753528 m!5720763))

(declare-fun m!5720765 () Bool)

(assert (=> b!4753528 m!5720765))

(assert (=> b!4753528 m!5720759))

(declare-fun m!5720767 () Bool)

(assert (=> b!4753528 m!5720767))

(assert (=> b!4753528 m!5720743))

(assert (=> b!4753528 m!5720753))

(declare-fun m!5720769 () Bool)

(assert (=> b!4753528 m!5720769))

(declare-fun m!5720771 () Bool)

(assert (=> b!4753526 m!5720771))

(declare-fun m!5720773 () Bool)

(assert (=> b!4753525 m!5720773))

(declare-fun m!5720775 () Bool)

(assert (=> bm!333245 m!5720775))

(assert (=> b!4753471 d!1519936))

(declare-fun d!1519958 () Bool)

(declare-fun res!2016159 () Bool)

(declare-fun e!2965353 () Bool)

(assert (=> d!1519958 (=> res!2016159 e!2965353)))

(assert (=> d!1519958 (= res!2016159 (not ((_ is Cons!53104) (t!360572 l!13029))))))

(assert (=> d!1519958 (= (noDuplicateKeys!2164 (t!360572 l!13029)) e!2965353)))

(declare-fun b!4753535 () Bool)

(declare-fun e!2965354 () Bool)

(assert (=> b!4753535 (= e!2965353 e!2965354)))

(declare-fun res!2016160 () Bool)

(assert (=> b!4753535 (=> (not res!2016160) (not e!2965354))))

(assert (=> b!4753535 (= res!2016160 (not (containsKey!3570 (t!360572 (t!360572 l!13029)) (_1!30738 (h!59501 (t!360572 l!13029))))))))

(declare-fun b!4753536 () Bool)

(assert (=> b!4753536 (= e!2965354 (noDuplicateKeys!2164 (t!360572 (t!360572 l!13029))))))

(assert (= (and d!1519958 (not res!2016159)) b!4753535))

(assert (= (and b!4753535 res!2016160) b!4753536))

(declare-fun m!5720789 () Bool)

(assert (=> b!4753535 m!5720789))

(declare-fun m!5720791 () Bool)

(assert (=> b!4753536 m!5720791))

(assert (=> b!4753471 d!1519958))

(declare-fun bs!1145716 () Bool)

(declare-fun b!4753540 () Bool)

(assert (= bs!1145716 (and b!4753540 b!4753527)))

(declare-fun lambda!222709 () Int)

(assert (=> bs!1145716 (= (= lt!1919180 lt!1919181) (= lambda!222709 lambda!222705))))

(declare-fun bs!1145717 () Bool)

(assert (= bs!1145717 (and b!4753540 b!4753528)))

(assert (=> bs!1145717 (= (= lt!1919180 lt!1919181) (= lambda!222709 lambda!222706))))

(assert (=> bs!1145717 (= (= lt!1919180 lt!1919354) (= lambda!222709 lambda!222707))))

(declare-fun bs!1145718 () Bool)

(assert (= bs!1145718 (and b!4753540 d!1519936)))

(assert (=> bs!1145718 (= (= lt!1919180 lt!1919347) (= lambda!222709 lambda!222708))))

(assert (=> b!4753540 true))

(declare-fun bs!1145719 () Bool)

(declare-fun b!4753541 () Bool)

(assert (= bs!1145719 (and b!4753541 d!1519936)))

(declare-fun lambda!222710 () Int)

(assert (=> bs!1145719 (= (= lt!1919180 lt!1919347) (= lambda!222710 lambda!222708))))

(declare-fun bs!1145720 () Bool)

(assert (= bs!1145720 (and b!4753541 b!4753528)))

(assert (=> bs!1145720 (= (= lt!1919180 lt!1919354) (= lambda!222710 lambda!222707))))

(declare-fun bs!1145721 () Bool)

(assert (= bs!1145721 (and b!4753541 b!4753540)))

(assert (=> bs!1145721 (= lambda!222710 lambda!222709)))

(assert (=> bs!1145720 (= (= lt!1919180 lt!1919181) (= lambda!222710 lambda!222706))))

(declare-fun bs!1145722 () Bool)

(assert (= bs!1145722 (and b!4753541 b!4753527)))

(assert (=> bs!1145722 (= (= lt!1919180 lt!1919181) (= lambda!222710 lambda!222705))))

(assert (=> b!4753541 true))

(declare-fun lt!1919378 () ListMap!5573)

(declare-fun lambda!222711 () Int)

(assert (=> bs!1145719 (= (= lt!1919378 lt!1919347) (= lambda!222711 lambda!222708))))

(assert (=> bs!1145720 (= (= lt!1919378 lt!1919354) (= lambda!222711 lambda!222707))))

(assert (=> bs!1145721 (= (= lt!1919378 lt!1919180) (= lambda!222711 lambda!222709))))

(assert (=> bs!1145720 (= (= lt!1919378 lt!1919181) (= lambda!222711 lambda!222706))))

(assert (=> b!4753541 (= (= lt!1919378 lt!1919180) (= lambda!222711 lambda!222710))))

(assert (=> bs!1145722 (= (= lt!1919378 lt!1919181) (= lambda!222711 lambda!222705))))

(assert (=> b!4753541 true))

(declare-fun bs!1145723 () Bool)

(declare-fun d!1519962 () Bool)

(assert (= bs!1145723 (and d!1519962 d!1519936)))

(declare-fun lt!1919371 () ListMap!5573)

(declare-fun lambda!222712 () Int)

(assert (=> bs!1145723 (= (= lt!1919371 lt!1919347) (= lambda!222712 lambda!222708))))

(declare-fun bs!1145724 () Bool)

(assert (= bs!1145724 (and d!1519962 b!4753528)))

(assert (=> bs!1145724 (= (= lt!1919371 lt!1919354) (= lambda!222712 lambda!222707))))

(declare-fun bs!1145725 () Bool)

(assert (= bs!1145725 (and d!1519962 b!4753541)))

(assert (=> bs!1145725 (= (= lt!1919371 lt!1919378) (= lambda!222712 lambda!222711))))

(declare-fun bs!1145726 () Bool)

(assert (= bs!1145726 (and d!1519962 b!4753540)))

(assert (=> bs!1145726 (= (= lt!1919371 lt!1919180) (= lambda!222712 lambda!222709))))

(assert (=> bs!1145724 (= (= lt!1919371 lt!1919181) (= lambda!222712 lambda!222706))))

(assert (=> bs!1145725 (= (= lt!1919371 lt!1919180) (= lambda!222712 lambda!222710))))

(declare-fun bs!1145727 () Bool)

(assert (= bs!1145727 (and d!1519962 b!4753527)))

(assert (=> bs!1145727 (= (= lt!1919371 lt!1919181) (= lambda!222712 lambda!222705))))

(assert (=> d!1519962 true))

(declare-fun b!4753537 () Bool)

(declare-fun e!2965355 () Bool)

(assert (=> b!4753537 (= e!2965355 (forall!11772 (toList!6132 lt!1919180) lambda!222711))))

(declare-fun e!2965356 () Bool)

(assert (=> d!1519962 e!2965356))

(declare-fun res!2016163 () Bool)

(assert (=> d!1519962 (=> (not res!2016163) (not e!2965356))))

(assert (=> d!1519962 (= res!2016163 (forall!11772 (t!360572 l!13029) lambda!222712))))

(declare-fun e!2965357 () ListMap!5573)

(assert (=> d!1519962 (= lt!1919371 e!2965357)))

(declare-fun c!811567 () Bool)

(assert (=> d!1519962 (= c!811567 ((_ is Nil!53104) (t!360572 l!13029)))))

(assert (=> d!1519962 (noDuplicateKeys!2164 (t!360572 l!13029))))

(assert (=> d!1519962 (= (addToMapMapFromBucket!1586 (t!360572 l!13029) lt!1919180) lt!1919371)))

(declare-fun b!4753538 () Bool)

(assert (=> b!4753538 (= e!2965356 (invariantList!1604 (toList!6132 lt!1919371)))))

(declare-fun call!333253 () Bool)

(declare-fun bm!333248 () Bool)

(assert (=> bm!333248 (= call!333253 (forall!11772 (toList!6132 lt!1919180) (ite c!811567 lambda!222709 lambda!222711)))))

(declare-fun b!4753539 () Bool)

(declare-fun res!2016162 () Bool)

(assert (=> b!4753539 (=> (not res!2016162) (not e!2965356))))

(assert (=> b!4753539 (= res!2016162 (forall!11772 (toList!6132 lt!1919180) lambda!222712))))

(declare-fun call!333255 () Bool)

(declare-fun bm!333249 () Bool)

(declare-fun lt!1919376 () ListMap!5573)

(assert (=> bm!333249 (= call!333255 (forall!11772 (ite c!811567 (toList!6132 lt!1919180) (toList!6132 lt!1919376)) (ite c!811567 lambda!222709 lambda!222711)))))

(assert (=> b!4753540 (= e!2965357 lt!1919180)))

(declare-fun lt!1919382 () Unit!136884)

(declare-fun call!333254 () Unit!136884)

(assert (=> b!4753540 (= lt!1919382 call!333254)))

(assert (=> b!4753540 call!333253))

(declare-fun lt!1919367 () Unit!136884)

(assert (=> b!4753540 (= lt!1919367 lt!1919382)))

(assert (=> b!4753540 call!333255))

(declare-fun lt!1919380 () Unit!136884)

(declare-fun Unit!136919 () Unit!136884)

(assert (=> b!4753540 (= lt!1919380 Unit!136919)))

(assert (=> b!4753541 (= e!2965357 lt!1919378)))

(assert (=> b!4753541 (= lt!1919376 (+!2398 lt!1919180 (h!59501 (t!360572 l!13029))))))

(assert (=> b!4753541 (= lt!1919378 (addToMapMapFromBucket!1586 (t!360572 (t!360572 l!13029)) (+!2398 lt!1919180 (h!59501 (t!360572 l!13029)))))))

(declare-fun lt!1919368 () Unit!136884)

(assert (=> b!4753541 (= lt!1919368 call!333254)))

(assert (=> b!4753541 (forall!11772 (toList!6132 lt!1919180) lambda!222710)))

(declare-fun lt!1919379 () Unit!136884)

(assert (=> b!4753541 (= lt!1919379 lt!1919368)))

(assert (=> b!4753541 (forall!11772 (toList!6132 lt!1919376) lambda!222711)))

(declare-fun lt!1919369 () Unit!136884)

(declare-fun Unit!136920 () Unit!136884)

(assert (=> b!4753541 (= lt!1919369 Unit!136920)))

(assert (=> b!4753541 (forall!11772 (t!360572 (t!360572 l!13029)) lambda!222711)))

(declare-fun lt!1919362 () Unit!136884)

(declare-fun Unit!136921 () Unit!136884)

(assert (=> b!4753541 (= lt!1919362 Unit!136921)))

(declare-fun lt!1919373 () Unit!136884)

(declare-fun Unit!136922 () Unit!136884)

(assert (=> b!4753541 (= lt!1919373 Unit!136922)))

(declare-fun lt!1919374 () Unit!136884)

(assert (=> b!4753541 (= lt!1919374 (forallContained!3798 (toList!6132 lt!1919376) lambda!222711 (h!59501 (t!360572 l!13029))))))

(assert (=> b!4753541 (contains!16531 lt!1919376 (_1!30738 (h!59501 (t!360572 l!13029))))))

(declare-fun lt!1919370 () Unit!136884)

(declare-fun Unit!136923 () Unit!136884)

(assert (=> b!4753541 (= lt!1919370 Unit!136923)))

(assert (=> b!4753541 (contains!16531 lt!1919378 (_1!30738 (h!59501 (t!360572 l!13029))))))

(declare-fun lt!1919375 () Unit!136884)

(declare-fun Unit!136924 () Unit!136884)

(assert (=> b!4753541 (= lt!1919375 Unit!136924)))

(assert (=> b!4753541 (forall!11772 (t!360572 l!13029) lambda!222711)))

(declare-fun lt!1919366 () Unit!136884)

(declare-fun Unit!136925 () Unit!136884)

(assert (=> b!4753541 (= lt!1919366 Unit!136925)))

(assert (=> b!4753541 call!333255))

(declare-fun lt!1919364 () Unit!136884)

(declare-fun Unit!136926 () Unit!136884)

(assert (=> b!4753541 (= lt!1919364 Unit!136926)))

(declare-fun lt!1919381 () Unit!136884)

(declare-fun Unit!136927 () Unit!136884)

(assert (=> b!4753541 (= lt!1919381 Unit!136927)))

(declare-fun lt!1919363 () Unit!136884)

(assert (=> b!4753541 (= lt!1919363 (addForallContainsKeyThenBeforeAdding!886 lt!1919180 lt!1919378 (_1!30738 (h!59501 (t!360572 l!13029))) (_2!30738 (h!59501 (t!360572 l!13029)))))))

(assert (=> b!4753541 (forall!11772 (toList!6132 lt!1919180) lambda!222711)))

(declare-fun lt!1919377 () Unit!136884)

(assert (=> b!4753541 (= lt!1919377 lt!1919363)))

(assert (=> b!4753541 call!333253))

(declare-fun lt!1919365 () Unit!136884)

(declare-fun Unit!136928 () Unit!136884)

(assert (=> b!4753541 (= lt!1919365 Unit!136928)))

(declare-fun res!2016161 () Bool)

(assert (=> b!4753541 (= res!2016161 (forall!11772 (t!360572 l!13029) lambda!222711))))

(assert (=> b!4753541 (=> (not res!2016161) (not e!2965355))))

(assert (=> b!4753541 e!2965355))

(declare-fun lt!1919372 () Unit!136884)

(declare-fun Unit!136929 () Unit!136884)

(assert (=> b!4753541 (= lt!1919372 Unit!136929)))

(declare-fun bm!333250 () Bool)

(assert (=> bm!333250 (= call!333254 (lemmaContainsAllItsOwnKeys!887 lt!1919180))))

(assert (= (and d!1519962 c!811567) b!4753540))

(assert (= (and d!1519962 (not c!811567)) b!4753541))

(assert (= (and b!4753541 res!2016161) b!4753537))

(assert (= (or b!4753540 b!4753541) bm!333249))

(assert (= (or b!4753540 b!4753541) bm!333248))

(assert (= (or b!4753540 b!4753541) bm!333250))

(assert (= (and d!1519962 res!2016163) b!4753539))

(assert (= (and b!4753539 res!2016162) b!4753538))

(declare-fun m!5720793 () Bool)

(assert (=> b!4753537 m!5720793))

(declare-fun m!5720795 () Bool)

(assert (=> bm!333250 m!5720795))

(declare-fun m!5720797 () Bool)

(assert (=> bm!333249 m!5720797))

(declare-fun m!5720799 () Bool)

(assert (=> d!1519962 m!5720799))

(assert (=> d!1519962 m!5720579))

(declare-fun m!5720801 () Bool)

(assert (=> b!4753541 m!5720801))

(declare-fun m!5720803 () Bool)

(assert (=> b!4753541 m!5720803))

(declare-fun m!5720805 () Bool)

(assert (=> b!4753541 m!5720805))

(declare-fun m!5720807 () Bool)

(assert (=> b!4753541 m!5720807))

(declare-fun m!5720809 () Bool)

(assert (=> b!4753541 m!5720809))

(declare-fun m!5720811 () Bool)

(assert (=> b!4753541 m!5720811))

(declare-fun m!5720813 () Bool)

(assert (=> b!4753541 m!5720813))

(declare-fun m!5720815 () Bool)

(assert (=> b!4753541 m!5720815))

(assert (=> b!4753541 m!5720809))

(declare-fun m!5720817 () Bool)

(assert (=> b!4753541 m!5720817))

(assert (=> b!4753541 m!5720793))

(assert (=> b!4753541 m!5720803))

(declare-fun m!5720819 () Bool)

(assert (=> b!4753541 m!5720819))

(declare-fun m!5720821 () Bool)

(assert (=> b!4753539 m!5720821))

(declare-fun m!5720823 () Bool)

(assert (=> b!4753538 m!5720823))

(declare-fun m!5720825 () Bool)

(assert (=> bm!333248 m!5720825))

(assert (=> b!4753471 d!1519962))

(declare-fun d!1519964 () Bool)

(declare-fun e!2965372 () Bool)

(assert (=> d!1519964 e!2965372))

(declare-fun res!2016176 () Bool)

(assert (=> d!1519964 (=> (not res!2016176) (not e!2965372))))

(declare-fun lt!1919397 () ListMap!5573)

(assert (=> d!1519964 (= res!2016176 (contains!16531 lt!1919397 (_1!30738 lt!1919182)))))

(declare-fun lt!1919394 () List!53228)

(assert (=> d!1519964 (= lt!1919397 (ListMap!5574 lt!1919394))))

(declare-fun lt!1919395 () Unit!136884)

(declare-fun lt!1919396 () Unit!136884)

(assert (=> d!1519964 (= lt!1919395 lt!1919396)))

(declare-datatypes ((Option!12541 0))(
  ( (None!12540) (Some!12540 (v!47241 V!14806)) )
))
(declare-fun getValueByKey!2091 (List!53228 K!14560) Option!12541)

(assert (=> d!1519964 (= (getValueByKey!2091 lt!1919394 (_1!30738 lt!1919182)) (Some!12540 (_2!30738 lt!1919182)))))

(declare-fun lemmaContainsTupThenGetReturnValue!1168 (List!53228 K!14560 V!14806) Unit!136884)

(assert (=> d!1519964 (= lt!1919396 (lemmaContainsTupThenGetReturnValue!1168 lt!1919394 (_1!30738 lt!1919182) (_2!30738 lt!1919182)))))

(declare-fun insertNoDuplicatedKeys!676 (List!53228 K!14560 V!14806) List!53228)

(assert (=> d!1519964 (= lt!1919394 (insertNoDuplicatedKeys!676 (toList!6132 (addToMapMapFromBucket!1586 (t!360572 l!13029) lt!1919180)) (_1!30738 lt!1919182) (_2!30738 lt!1919182)))))

(assert (=> d!1519964 (= (+!2398 (addToMapMapFromBucket!1586 (t!360572 l!13029) lt!1919180) lt!1919182) lt!1919397)))

(declare-fun b!4753560 () Bool)

(declare-fun res!2016177 () Bool)

(assert (=> b!4753560 (=> (not res!2016177) (not e!2965372))))

(assert (=> b!4753560 (= res!2016177 (= (getValueByKey!2091 (toList!6132 lt!1919397) (_1!30738 lt!1919182)) (Some!12540 (_2!30738 lt!1919182))))))

(declare-fun b!4753561 () Bool)

(declare-fun contains!16533 (List!53228 tuple2!54888) Bool)

(assert (=> b!4753561 (= e!2965372 (contains!16533 (toList!6132 lt!1919397) lt!1919182))))

(assert (= (and d!1519964 res!2016176) b!4753560))

(assert (= (and b!4753560 res!2016177) b!4753561))

(declare-fun m!5720847 () Bool)

(assert (=> d!1519964 m!5720847))

(declare-fun m!5720849 () Bool)

(assert (=> d!1519964 m!5720849))

(declare-fun m!5720851 () Bool)

(assert (=> d!1519964 m!5720851))

(declare-fun m!5720853 () Bool)

(assert (=> d!1519964 m!5720853))

(declare-fun m!5720855 () Bool)

(assert (=> b!4753560 m!5720855))

(declare-fun m!5720857 () Bool)

(assert (=> b!4753561 m!5720857))

(assert (=> b!4753471 d!1519964))

(declare-fun d!1519974 () Bool)

(declare-fun e!2965373 () Bool)

(assert (=> d!1519974 e!2965373))

(declare-fun res!2016178 () Bool)

(assert (=> d!1519974 (=> (not res!2016178) (not e!2965373))))

(declare-fun lt!1919401 () ListMap!5573)

(assert (=> d!1519974 (= res!2016178 (contains!16531 lt!1919401 (_1!30738 lt!1919182)))))

(declare-fun lt!1919398 () List!53228)

(assert (=> d!1519974 (= lt!1919401 (ListMap!5574 lt!1919398))))

(declare-fun lt!1919399 () Unit!136884)

(declare-fun lt!1919400 () Unit!136884)

(assert (=> d!1519974 (= lt!1919399 lt!1919400)))

(assert (=> d!1519974 (= (getValueByKey!2091 lt!1919398 (_1!30738 lt!1919182)) (Some!12540 (_2!30738 lt!1919182)))))

(assert (=> d!1519974 (= lt!1919400 (lemmaContainsTupThenGetReturnValue!1168 lt!1919398 (_1!30738 lt!1919182) (_2!30738 lt!1919182)))))

(assert (=> d!1519974 (= lt!1919398 (insertNoDuplicatedKeys!676 (toList!6132 lhm!63) (_1!30738 lt!1919182) (_2!30738 lt!1919182)))))

(assert (=> d!1519974 (= (+!2398 lhm!63 lt!1919182) lt!1919401)))

(declare-fun b!4753562 () Bool)

(declare-fun res!2016179 () Bool)

(assert (=> b!4753562 (=> (not res!2016179) (not e!2965373))))

(assert (=> b!4753562 (= res!2016179 (= (getValueByKey!2091 (toList!6132 lt!1919401) (_1!30738 lt!1919182)) (Some!12540 (_2!30738 lt!1919182))))))

(declare-fun b!4753563 () Bool)

(assert (=> b!4753563 (= e!2965373 (contains!16533 (toList!6132 lt!1919401) lt!1919182))))

(assert (= (and d!1519974 res!2016178) b!4753562))

(assert (= (and b!4753562 res!2016179) b!4753563))

(declare-fun m!5720859 () Bool)

(assert (=> d!1519974 m!5720859))

(declare-fun m!5720861 () Bool)

(assert (=> d!1519974 m!5720861))

(declare-fun m!5720863 () Bool)

(assert (=> d!1519974 m!5720863))

(declare-fun m!5720865 () Bool)

(assert (=> d!1519974 m!5720865))

(declare-fun m!5720867 () Bool)

(assert (=> b!4753562 m!5720867))

(declare-fun m!5720869 () Bool)

(assert (=> b!4753563 m!5720869))

(assert (=> b!4753471 d!1519974))

(declare-fun d!1519976 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9541 (List!53228) (InoxSet tuple2!54888))

(assert (=> d!1519976 (= (eq!1233 (addToMapMapFromBucket!1586 (t!360572 l!13029) lt!1919181) (+!2398 (addToMapMapFromBucket!1586 (t!360572 l!13029) lt!1919180) lt!1919182)) (= (content!9541 (toList!6132 (addToMapMapFromBucket!1586 (t!360572 l!13029) lt!1919181))) (content!9541 (toList!6132 (+!2398 (addToMapMapFromBucket!1586 (t!360572 l!13029) lt!1919180) lt!1919182)))))))

(declare-fun bs!1145731 () Bool)

(assert (= bs!1145731 d!1519976))

(declare-fun m!5720871 () Bool)

(assert (=> bs!1145731 m!5720871))

(declare-fun m!5720873 () Bool)

(assert (=> bs!1145731 m!5720873))

(assert (=> b!4753471 d!1519976))

(declare-fun d!1519978 () Bool)

(assert (=> d!1519978 (= (eq!1233 lt!1919181 (+!2398 (+!2398 lhm!63 lt!1919182) (h!59501 l!13029))) (= (content!9541 (toList!6132 lt!1919181)) (content!9541 (toList!6132 (+!2398 (+!2398 lhm!63 lt!1919182) (h!59501 l!13029))))))))

(declare-fun bs!1145732 () Bool)

(assert (= bs!1145732 d!1519978))

(declare-fun m!5720875 () Bool)

(assert (=> bs!1145732 m!5720875))

(declare-fun m!5720877 () Bool)

(assert (=> bs!1145732 m!5720877))

(assert (=> b!4753471 d!1519978))

(declare-fun d!1519980 () Bool)

(declare-fun e!2965374 () Bool)

(assert (=> d!1519980 e!2965374))

(declare-fun res!2016180 () Bool)

(assert (=> d!1519980 (=> (not res!2016180) (not e!2965374))))

(declare-fun lt!1919405 () ListMap!5573)

(assert (=> d!1519980 (= res!2016180 (contains!16531 lt!1919405 (_1!30738 (h!59501 l!13029))))))

(declare-fun lt!1919402 () List!53228)

(assert (=> d!1519980 (= lt!1919405 (ListMap!5574 lt!1919402))))

(declare-fun lt!1919403 () Unit!136884)

(declare-fun lt!1919404 () Unit!136884)

(assert (=> d!1519980 (= lt!1919403 lt!1919404)))

(assert (=> d!1519980 (= (getValueByKey!2091 lt!1919402 (_1!30738 (h!59501 l!13029))) (Some!12540 (_2!30738 (h!59501 l!13029))))))

(assert (=> d!1519980 (= lt!1919404 (lemmaContainsTupThenGetReturnValue!1168 lt!1919402 (_1!30738 (h!59501 l!13029)) (_2!30738 (h!59501 l!13029))))))

(assert (=> d!1519980 (= lt!1919402 (insertNoDuplicatedKeys!676 (toList!6132 (+!2398 lhm!63 lt!1919182)) (_1!30738 (h!59501 l!13029)) (_2!30738 (h!59501 l!13029))))))

(assert (=> d!1519980 (= (+!2398 (+!2398 lhm!63 lt!1919182) (h!59501 l!13029)) lt!1919405)))

(declare-fun b!4753564 () Bool)

(declare-fun res!2016181 () Bool)

(assert (=> b!4753564 (=> (not res!2016181) (not e!2965374))))

(assert (=> b!4753564 (= res!2016181 (= (getValueByKey!2091 (toList!6132 lt!1919405) (_1!30738 (h!59501 l!13029))) (Some!12540 (_2!30738 (h!59501 l!13029)))))))

(declare-fun b!4753565 () Bool)

(assert (=> b!4753565 (= e!2965374 (contains!16533 (toList!6132 lt!1919405) (h!59501 l!13029)))))

(assert (= (and d!1519980 res!2016180) b!4753564))

(assert (= (and b!4753564 res!2016181) b!4753565))

(declare-fun m!5720879 () Bool)

(assert (=> d!1519980 m!5720879))

(declare-fun m!5720881 () Bool)

(assert (=> d!1519980 m!5720881))

(declare-fun m!5720883 () Bool)

(assert (=> d!1519980 m!5720883))

(declare-fun m!5720885 () Bool)

(assert (=> d!1519980 m!5720885))

(declare-fun m!5720887 () Bool)

(assert (=> b!4753564 m!5720887))

(declare-fun m!5720889 () Bool)

(assert (=> b!4753565 m!5720889))

(assert (=> b!4753471 d!1519980))

(declare-fun d!1519982 () Bool)

(declare-fun e!2965375 () Bool)

(assert (=> d!1519982 e!2965375))

(declare-fun res!2016182 () Bool)

(assert (=> d!1519982 (=> (not res!2016182) (not e!2965375))))

(declare-fun lt!1919409 () ListMap!5573)

(assert (=> d!1519982 (= res!2016182 (contains!16531 lt!1919409 (_1!30738 (h!59501 l!13029))))))

(declare-fun lt!1919406 () List!53228)

(assert (=> d!1519982 (= lt!1919409 (ListMap!5574 lt!1919406))))

(declare-fun lt!1919407 () Unit!136884)

(declare-fun lt!1919408 () Unit!136884)

(assert (=> d!1519982 (= lt!1919407 lt!1919408)))

(assert (=> d!1519982 (= (getValueByKey!2091 lt!1919406 (_1!30738 (h!59501 l!13029))) (Some!12540 (_2!30738 (h!59501 l!13029))))))

(assert (=> d!1519982 (= lt!1919408 (lemmaContainsTupThenGetReturnValue!1168 lt!1919406 (_1!30738 (h!59501 l!13029)) (_2!30738 (h!59501 l!13029))))))

(assert (=> d!1519982 (= lt!1919406 (insertNoDuplicatedKeys!676 (toList!6132 lhm!63) (_1!30738 (h!59501 l!13029)) (_2!30738 (h!59501 l!13029))))))

(assert (=> d!1519982 (= (+!2398 lhm!63 (h!59501 l!13029)) lt!1919409)))

(declare-fun b!4753566 () Bool)

(declare-fun res!2016183 () Bool)

(assert (=> b!4753566 (=> (not res!2016183) (not e!2965375))))

(assert (=> b!4753566 (= res!2016183 (= (getValueByKey!2091 (toList!6132 lt!1919409) (_1!30738 (h!59501 l!13029))) (Some!12540 (_2!30738 (h!59501 l!13029)))))))

(declare-fun b!4753567 () Bool)

(assert (=> b!4753567 (= e!2965375 (contains!16533 (toList!6132 lt!1919409) (h!59501 l!13029)))))

(assert (= (and d!1519982 res!2016182) b!4753566))

(assert (= (and b!4753566 res!2016183) b!4753567))

(declare-fun m!5720891 () Bool)

(assert (=> d!1519982 m!5720891))

(declare-fun m!5720893 () Bool)

(assert (=> d!1519982 m!5720893))

(declare-fun m!5720895 () Bool)

(assert (=> d!1519982 m!5720895))

(declare-fun m!5720897 () Bool)

(assert (=> d!1519982 m!5720897))

(declare-fun m!5720899 () Bool)

(assert (=> b!4753566 m!5720899))

(declare-fun m!5720901 () Bool)

(assert (=> b!4753567 m!5720901))

(assert (=> b!4753471 d!1519982))

(declare-fun d!1519984 () Bool)

(assert (=> d!1519984 (eq!1233 (+!2398 (+!2398 lhm!63 (tuple2!54889 (_1!30738 (h!59501 l!13029)) (_2!30738 (h!59501 l!13029)))) (tuple2!54889 key!4572 value!2966)) (+!2398 (+!2398 lhm!63 (tuple2!54889 key!4572 value!2966)) (tuple2!54889 (_1!30738 (h!59501 l!13029)) (_2!30738 (h!59501 l!13029)))))))

(declare-fun lt!1919412 () Unit!136884)

(declare-fun choose!33853 (ListMap!5573 K!14560 V!14806 K!14560 V!14806) Unit!136884)

(assert (=> d!1519984 (= lt!1919412 (choose!33853 lhm!63 (_1!30738 (h!59501 l!13029)) (_2!30738 (h!59501 l!13029)) key!4572 value!2966))))

(assert (=> d!1519984 (not (= (_1!30738 (h!59501 l!13029)) key!4572))))

(assert (=> d!1519984 (= (addCommutativeForDiffKeys!34 lhm!63 (_1!30738 (h!59501 l!13029)) (_2!30738 (h!59501 l!13029)) key!4572 value!2966) lt!1919412)))

(declare-fun bs!1145733 () Bool)

(assert (= bs!1145733 d!1519984))

(declare-fun m!5720903 () Bool)

(assert (=> bs!1145733 m!5720903))

(assert (=> bs!1145733 m!5720903))

(declare-fun m!5720905 () Bool)

(assert (=> bs!1145733 m!5720905))

(declare-fun m!5720907 () Bool)

(assert (=> bs!1145733 m!5720907))

(declare-fun m!5720909 () Bool)

(assert (=> bs!1145733 m!5720909))

(assert (=> bs!1145733 m!5720905))

(assert (=> bs!1145733 m!5720909))

(declare-fun m!5720911 () Bool)

(assert (=> bs!1145733 m!5720911))

(declare-fun m!5720913 () Bool)

(assert (=> bs!1145733 m!5720913))

(assert (=> bs!1145733 m!5720907))

(assert (=> b!4753471 d!1519984))

(declare-fun d!1519986 () Bool)

(assert (=> d!1519986 (eq!1233 (addToMapMapFromBucket!1586 (t!360572 l!13029) (+!2398 lt!1919180 (tuple2!54889 key!4572 value!2966))) (+!2398 (addToMapMapFromBucket!1586 (t!360572 l!13029) lt!1919180) (tuple2!54889 key!4572 value!2966)))))

(declare-fun lt!1919415 () Unit!136884)

(declare-fun choose!33854 (ListMap!5573 K!14560 V!14806 List!53228) Unit!136884)

(assert (=> d!1519986 (= lt!1919415 (choose!33854 lt!1919180 key!4572 value!2966 (t!360572 l!13029)))))

(assert (=> d!1519986 (not (containsKey!3570 (t!360572 l!13029) key!4572))))

(assert (=> d!1519986 (= (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!250 lt!1919180 key!4572 value!2966 (t!360572 l!13029)) lt!1919415)))

(declare-fun bs!1145734 () Bool)

(assert (= bs!1145734 d!1519986))

(assert (=> bs!1145734 m!5720597))

(declare-fun m!5720915 () Bool)

(assert (=> bs!1145734 m!5720915))

(declare-fun m!5720917 () Bool)

(assert (=> bs!1145734 m!5720917))

(assert (=> bs!1145734 m!5720917))

(declare-fun m!5720919 () Bool)

(assert (=> bs!1145734 m!5720919))

(declare-fun m!5720921 () Bool)

(assert (=> bs!1145734 m!5720921))

(assert (=> bs!1145734 m!5720597))

(assert (=> bs!1145734 m!5720919))

(declare-fun m!5720923 () Bool)

(assert (=> bs!1145734 m!5720923))

(assert (=> bs!1145734 m!5720915))

(declare-fun m!5720925 () Bool)

(assert (=> bs!1145734 m!5720925))

(assert (=> b!4753471 d!1519986))

(declare-fun d!1519988 () Bool)

(declare-fun e!2965376 () Bool)

(assert (=> d!1519988 e!2965376))

(declare-fun res!2016184 () Bool)

(assert (=> d!1519988 (=> (not res!2016184) (not e!2965376))))

(declare-fun lt!1919419 () ListMap!5573)

(assert (=> d!1519988 (= res!2016184 (contains!16531 lt!1919419 (_1!30738 lt!1919182)))))

(declare-fun lt!1919416 () List!53228)

(assert (=> d!1519988 (= lt!1919419 (ListMap!5574 lt!1919416))))

(declare-fun lt!1919417 () Unit!136884)

(declare-fun lt!1919418 () Unit!136884)

(assert (=> d!1519988 (= lt!1919417 lt!1919418)))

(assert (=> d!1519988 (= (getValueByKey!2091 lt!1919416 (_1!30738 lt!1919182)) (Some!12540 (_2!30738 lt!1919182)))))

(assert (=> d!1519988 (= lt!1919418 (lemmaContainsTupThenGetReturnValue!1168 lt!1919416 (_1!30738 lt!1919182) (_2!30738 lt!1919182)))))

(assert (=> d!1519988 (= lt!1919416 (insertNoDuplicatedKeys!676 (toList!6132 lt!1919180) (_1!30738 lt!1919182) (_2!30738 lt!1919182)))))

(assert (=> d!1519988 (= (+!2398 lt!1919180 lt!1919182) lt!1919419)))

(declare-fun b!4753568 () Bool)

(declare-fun res!2016185 () Bool)

(assert (=> b!4753568 (=> (not res!2016185) (not e!2965376))))

(assert (=> b!4753568 (= res!2016185 (= (getValueByKey!2091 (toList!6132 lt!1919419) (_1!30738 lt!1919182)) (Some!12540 (_2!30738 lt!1919182))))))

(declare-fun b!4753569 () Bool)

(assert (=> b!4753569 (= e!2965376 (contains!16533 (toList!6132 lt!1919419) lt!1919182))))

(assert (= (and d!1519988 res!2016184) b!4753568))

(assert (= (and b!4753568 res!2016185) b!4753569))

(declare-fun m!5720927 () Bool)

(assert (=> d!1519988 m!5720927))

(declare-fun m!5720929 () Bool)

(assert (=> d!1519988 m!5720929))

(declare-fun m!5720931 () Bool)

(assert (=> d!1519988 m!5720931))

(declare-fun m!5720933 () Bool)

(assert (=> d!1519988 m!5720933))

(declare-fun m!5720935 () Bool)

(assert (=> b!4753568 m!5720935))

(declare-fun m!5720937 () Bool)

(assert (=> b!4753569 m!5720937))

(assert (=> b!4753471 d!1519988))

(declare-fun d!1519990 () Bool)

(declare-fun res!2016186 () Bool)

(declare-fun e!2965377 () Bool)

(assert (=> d!1519990 (=> res!2016186 e!2965377)))

(assert (=> d!1519990 (= res!2016186 (not ((_ is Cons!53104) l!13029)))))

(assert (=> d!1519990 (= (noDuplicateKeys!2164 l!13029) e!2965377)))

(declare-fun b!4753570 () Bool)

(declare-fun e!2965378 () Bool)

(assert (=> b!4753570 (= e!2965377 e!2965378)))

(declare-fun res!2016187 () Bool)

(assert (=> b!4753570 (=> (not res!2016187) (not e!2965378))))

(assert (=> b!4753570 (= res!2016187 (not (containsKey!3570 (t!360572 l!13029) (_1!30738 (h!59501 l!13029)))))))

(declare-fun b!4753571 () Bool)

(assert (=> b!4753571 (= e!2965378 (noDuplicateKeys!2164 (t!360572 l!13029)))))

(assert (= (and d!1519990 (not res!2016186)) b!4753570))

(assert (= (and b!4753570 res!2016187) b!4753571))

(declare-fun m!5720939 () Bool)

(assert (=> b!4753570 m!5720939))

(assert (=> b!4753571 m!5720579))

(assert (=> b!4753467 d!1519990))

(declare-fun d!1519992 () Bool)

(declare-fun res!2016192 () Bool)

(declare-fun e!2965383 () Bool)

(assert (=> d!1519992 (=> res!2016192 e!2965383)))

(assert (=> d!1519992 (= res!2016192 (and ((_ is Cons!53104) l!13029) (= (_1!30738 (h!59501 l!13029)) key!4572)))))

(assert (=> d!1519992 (= (containsKey!3570 l!13029 key!4572) e!2965383)))

(declare-fun b!4753576 () Bool)

(declare-fun e!2965384 () Bool)

(assert (=> b!4753576 (= e!2965383 e!2965384)))

(declare-fun res!2016193 () Bool)

(assert (=> b!4753576 (=> (not res!2016193) (not e!2965384))))

(assert (=> b!4753576 (= res!2016193 ((_ is Cons!53104) l!13029))))

(declare-fun b!4753577 () Bool)

(assert (=> b!4753577 (= e!2965384 (containsKey!3570 (t!360572 l!13029) key!4572))))

(assert (= (and d!1519992 (not res!2016192)) b!4753576))

(assert (= (and b!4753576 res!2016193) b!4753577))

(assert (=> b!4753577 m!5720923))

(assert (=> start!485724 d!1519992))

(declare-fun d!1519994 () Bool)

(assert (=> d!1519994 (= (inv!68430 lhm!63) (invariantList!1604 (toList!6132 lhm!63)))))

(declare-fun bs!1145735 () Bool)

(assert (= bs!1145735 d!1519994))

(declare-fun m!5720941 () Bool)

(assert (=> bs!1145735 m!5720941))

(assert (=> start!485724 d!1519994))

(declare-fun tp!1350332 () Bool)

(declare-fun b!4753582 () Bool)

(declare-fun e!2965387 () Bool)

(assert (=> b!4753582 (= e!2965387 (and tp_is_empty!31949 tp_is_empty!31951 tp!1350332))))

(assert (=> b!4753468 (= tp!1350325 e!2965387)))

(assert (= (and b!4753468 ((_ is Cons!53104) (t!360572 l!13029))) b!4753582))

(declare-fun e!2965388 () Bool)

(declare-fun b!4753583 () Bool)

(declare-fun tp!1350333 () Bool)

(assert (=> b!4753583 (= e!2965388 (and tp_is_empty!31949 tp_is_empty!31951 tp!1350333))))

(assert (=> b!4753470 (= tp!1350324 e!2965388)))

(assert (= (and b!4753470 ((_ is Cons!53104) (toList!6132 lhm!63))) b!4753583))

(check-sat (not d!1519964) (not d!1519978) (not b!4753582) (not d!1519986) (not d!1519982) (not b!4753541) (not b!4753560) (not d!1519994) (not b!4753567) (not bm!333248) (not d!1519974) (not b!4753583) tp_is_empty!31949 (not b!4753562) (not b!4753524) (not b!4753528) (not b!4753565) (not b!4753537) (not b!4753577) (not b!4753526) (not d!1519980) (not b!4753563) (not b!4753536) (not d!1519962) (not b!4753561) (not b!4753538) (not d!1519976) (not bm!333250) (not bm!333245) tp_is_empty!31951 (not b!4753525) (not b!4753539) (not d!1519988) (not b!4753535) (not b!4753569) (not bm!333246) (not d!1519984) (not b!4753571) (not d!1519936) (not b!4753566) (not b!4753564) (not b!4753570) (not b!4753568) (not bm!333247) (not bm!333249))
(check-sat)
