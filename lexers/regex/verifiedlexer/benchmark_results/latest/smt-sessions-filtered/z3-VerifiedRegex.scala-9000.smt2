; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!485032 () Bool)

(assert start!485032)

(declare-fun b!4748117 () Bool)

(declare-fun e!2961676 () Bool)

(declare-fun tp!1349805 () Bool)

(assert (=> b!4748117 (= e!2961676 tp!1349805)))

(declare-fun b!4748118 () Bool)

(declare-fun res!2012825 () Bool)

(declare-fun e!2961673 () Bool)

(assert (=> b!4748118 (=> (not res!2012825) (not e!2961673))))

(declare-datatypes ((K!14405 0))(
  ( (K!14406 (val!19795 Int)) )
))
(declare-datatypes ((V!14651 0))(
  ( (V!14652 (val!19796 Int)) )
))
(declare-datatypes ((tuple2!54764 0))(
  ( (tuple2!54765 (_1!30676 K!14405) (_2!30676 V!14651)) )
))
(declare-datatypes ((List!53160 0))(
  ( (Nil!53036) (Cons!53036 (h!59433 tuple2!54764) (t!360476 List!53160)) )
))
(declare-fun l!14304 () List!53160)

(declare-datatypes ((ListMap!5453 0))(
  ( (ListMap!5454 (toList!6072 List!53160)) )
))
(declare-fun acc!1214 () ListMap!5453)

(declare-fun lt!1910533 () ListMap!5453)

(declare-fun eq!1179 (ListMap!5453 ListMap!5453) Bool)

(declare-fun addToMapMapFromBucket!1528 (List!53160 ListMap!5453) ListMap!5453)

(assert (=> b!4748118 (= res!2012825 (eq!1179 lt!1910533 (addToMapMapFromBucket!1528 l!14304 acc!1214)))))

(declare-fun b!4748119 () Bool)

(declare-fun e!2961675 () Bool)

(declare-fun tp!1349804 () Bool)

(declare-fun tp_is_empty!31701 () Bool)

(declare-fun tp_is_empty!31703 () Bool)

(assert (=> b!4748119 (= e!2961675 (and tp_is_empty!31701 tp_is_empty!31703 tp!1349804))))

(declare-fun b!4748120 () Bool)

(declare-fun res!2012823 () Bool)

(declare-fun e!2961674 () Bool)

(assert (=> b!4748120 (=> (not res!2012823) (not e!2961674))))

(declare-fun t!14174 () tuple2!54764)

(declare-fun noDuplicateKeys!2102 (List!53160) Bool)

(assert (=> b!4748120 (= res!2012823 (noDuplicateKeys!2102 (Cons!53036 t!14174 l!14304)))))

(declare-fun b!4748121 () Bool)

(declare-fun lt!1910536 () List!53160)

(assert (=> b!4748121 (= e!2961674 (not (noDuplicateKeys!2102 lt!1910536)))))

(assert (=> b!4748121 e!2961673))

(declare-fun res!2012826 () Bool)

(assert (=> b!4748121 (=> (not res!2012826) (not e!2961673))))

(declare-fun lt!1910537 () ListMap!5453)

(declare-fun +!2338 (ListMap!5453 tuple2!54764) ListMap!5453)

(assert (=> b!4748121 (= res!2012826 (eq!1179 lt!1910537 (+!2338 lt!1910533 t!14174)))))

(declare-fun lt!1910535 () ListMap!5453)

(assert (=> b!4748121 (= lt!1910537 (addToMapMapFromBucket!1528 lt!1910536 lt!1910535))))

(assert (=> b!4748121 (= lt!1910536 (Cons!53036 t!14174 (t!360476 l!14304)))))

(declare-datatypes ((Unit!134701 0))(
  ( (Unit!134702) )
))
(declare-fun lt!1910534 () Unit!134701)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!426 (tuple2!54764 List!53160 ListMap!5453) Unit!134701)

(assert (=> b!4748121 (= lt!1910534 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!426 t!14174 (t!360476 l!14304) lt!1910535))))

(assert (=> b!4748121 (= lt!1910533 (addToMapMapFromBucket!1528 (t!360476 l!14304) lt!1910535))))

(assert (=> b!4748121 (= lt!1910535 (+!2338 acc!1214 (h!59433 l!14304)))))

(declare-fun b!4748122 () Bool)

(assert (=> b!4748122 (= e!2961673 (eq!1179 lt!1910537 (addToMapMapFromBucket!1528 (t!360476 l!14304) (+!2338 lt!1910535 t!14174))))))

(declare-fun b!4748123 () Bool)

(declare-fun res!2012827 () Bool)

(assert (=> b!4748123 (=> (not res!2012827) (not e!2961674))))

(get-info :version)

(assert (=> b!4748123 (= res!2012827 (not ((_ is Nil!53036) l!14304)))))

(declare-fun res!2012824 () Bool)

(assert (=> start!485032 (=> (not res!2012824) (not e!2961674))))

(assert (=> start!485032 (= res!2012824 (noDuplicateKeys!2102 l!14304))))

(assert (=> start!485032 e!2961674))

(assert (=> start!485032 e!2961675))

(assert (=> start!485032 (and tp_is_empty!31701 tp_is_empty!31703)))

(declare-fun inv!68277 (ListMap!5453) Bool)

(assert (=> start!485032 (and (inv!68277 acc!1214) e!2961676)))

(assert (= (and start!485032 res!2012824) b!4748120))

(assert (= (and b!4748120 res!2012823) b!4748123))

(assert (= (and b!4748123 res!2012827) b!4748121))

(assert (= (and b!4748121 res!2012826) b!4748118))

(assert (= (and b!4748118 res!2012825) b!4748122))

(assert (= (and start!485032 ((_ is Cons!53036) l!14304)) b!4748119))

(assert (= start!485032 b!4748117))

(declare-fun m!5706127 () Bool)

(assert (=> b!4748121 m!5706127))

(declare-fun m!5706129 () Bool)

(assert (=> b!4748121 m!5706129))

(declare-fun m!5706131 () Bool)

(assert (=> b!4748121 m!5706131))

(declare-fun m!5706133 () Bool)

(assert (=> b!4748121 m!5706133))

(declare-fun m!5706135 () Bool)

(assert (=> b!4748121 m!5706135))

(declare-fun m!5706137 () Bool)

(assert (=> b!4748121 m!5706137))

(declare-fun m!5706139 () Bool)

(assert (=> b!4748121 m!5706139))

(assert (=> b!4748121 m!5706137))

(declare-fun m!5706141 () Bool)

(assert (=> b!4748118 m!5706141))

(assert (=> b!4748118 m!5706141))

(declare-fun m!5706143 () Bool)

(assert (=> b!4748118 m!5706143))

(declare-fun m!5706145 () Bool)

(assert (=> start!485032 m!5706145))

(declare-fun m!5706147 () Bool)

(assert (=> start!485032 m!5706147))

(declare-fun m!5706149 () Bool)

(assert (=> b!4748122 m!5706149))

(assert (=> b!4748122 m!5706149))

(declare-fun m!5706151 () Bool)

(assert (=> b!4748122 m!5706151))

(assert (=> b!4748122 m!5706151))

(declare-fun m!5706153 () Bool)

(assert (=> b!4748122 m!5706153))

(declare-fun m!5706155 () Bool)

(assert (=> b!4748120 m!5706155))

(check-sat (not start!485032) (not b!4748122) (not b!4748117) (not b!4748118) tp_is_empty!31701 (not b!4748119) (not b!4748120) (not b!4748121) tp_is_empty!31703)
(check-sat)
(get-model)

(declare-fun d!1517447 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9504 (List!53160) (InoxSet tuple2!54764))

(assert (=> d!1517447 (= (eq!1179 lt!1910537 (addToMapMapFromBucket!1528 (t!360476 l!14304) (+!2338 lt!1910535 t!14174))) (= (content!9504 (toList!6072 lt!1910537)) (content!9504 (toList!6072 (addToMapMapFromBucket!1528 (t!360476 l!14304) (+!2338 lt!1910535 t!14174))))))))

(declare-fun bs!1138773 () Bool)

(assert (= bs!1138773 d!1517447))

(declare-fun m!5706157 () Bool)

(assert (=> bs!1138773 m!5706157))

(declare-fun m!5706159 () Bool)

(assert (=> bs!1138773 m!5706159))

(assert (=> b!4748122 d!1517447))

(declare-fun b!4748174 () Bool)

(assert (=> b!4748174 true))

(declare-fun bs!1138790 () Bool)

(declare-fun b!4748170 () Bool)

(assert (= bs!1138790 (and b!4748170 b!4748174)))

(declare-fun lambda!220964 () Int)

(declare-fun lambda!220962 () Int)

(assert (=> bs!1138790 (= lambda!220964 lambda!220962)))

(assert (=> b!4748170 true))

(declare-fun lt!1910699 () ListMap!5453)

(declare-fun lambda!220965 () Int)

(assert (=> bs!1138790 (= (= lt!1910699 (+!2338 lt!1910535 t!14174)) (= lambda!220965 lambda!220962))))

(assert (=> b!4748170 (= (= lt!1910699 (+!2338 lt!1910535 t!14174)) (= lambda!220965 lambda!220964))))

(assert (=> b!4748170 true))

(declare-fun bs!1138792 () Bool)

(declare-fun d!1517449 () Bool)

(assert (= bs!1138792 (and d!1517449 b!4748174)))

(declare-fun lt!1910701 () ListMap!5453)

(declare-fun lambda!220966 () Int)

(assert (=> bs!1138792 (= (= lt!1910701 (+!2338 lt!1910535 t!14174)) (= lambda!220966 lambda!220962))))

(declare-fun bs!1138793 () Bool)

(assert (= bs!1138793 (and d!1517449 b!4748170)))

(assert (=> bs!1138793 (= (= lt!1910701 (+!2338 lt!1910535 t!14174)) (= lambda!220966 lambda!220964))))

(assert (=> bs!1138793 (= (= lt!1910701 lt!1910699) (= lambda!220966 lambda!220965))))

(assert (=> d!1517449 true))

(declare-fun call!332338 () Bool)

(declare-fun bm!332331 () Bool)

(declare-fun c!810868 () Bool)

(declare-fun forall!11739 (List!53160 Int) Bool)

(assert (=> bm!332331 (= call!332338 (forall!11739 (toList!6072 (+!2338 lt!1910535 t!14174)) (ite c!810868 lambda!220962 lambda!220965)))))

(declare-fun e!2961707 () ListMap!5453)

(assert (=> b!4748170 (= e!2961707 lt!1910699)))

(declare-fun lt!1910702 () ListMap!5453)

(assert (=> b!4748170 (= lt!1910702 (+!2338 (+!2338 lt!1910535 t!14174) (h!59433 (t!360476 l!14304))))))

(assert (=> b!4748170 (= lt!1910699 (addToMapMapFromBucket!1528 (t!360476 (t!360476 l!14304)) (+!2338 (+!2338 lt!1910535 t!14174) (h!59433 (t!360476 l!14304)))))))

(declare-fun lt!1910691 () Unit!134701)

(declare-fun call!332336 () Unit!134701)

(assert (=> b!4748170 (= lt!1910691 call!332336)))

(assert (=> b!4748170 (forall!11739 (toList!6072 (+!2338 lt!1910535 t!14174)) lambda!220964)))

(declare-fun lt!1910688 () Unit!134701)

(assert (=> b!4748170 (= lt!1910688 lt!1910691)))

(assert (=> b!4748170 (forall!11739 (toList!6072 lt!1910702) lambda!220965)))

(declare-fun lt!1910697 () Unit!134701)

(declare-fun Unit!134714 () Unit!134701)

(assert (=> b!4748170 (= lt!1910697 Unit!134714)))

(assert (=> b!4748170 (forall!11739 (t!360476 (t!360476 l!14304)) lambda!220965)))

(declare-fun lt!1910685 () Unit!134701)

(declare-fun Unit!134715 () Unit!134701)

(assert (=> b!4748170 (= lt!1910685 Unit!134715)))

(declare-fun lt!1910684 () Unit!134701)

(declare-fun Unit!134716 () Unit!134701)

(assert (=> b!4748170 (= lt!1910684 Unit!134716)))

(declare-fun lt!1910687 () Unit!134701)

(declare-fun forallContained!3765 (List!53160 Int tuple2!54764) Unit!134701)

(assert (=> b!4748170 (= lt!1910687 (forallContained!3765 (toList!6072 lt!1910702) lambda!220965 (h!59433 (t!360476 l!14304))))))

(declare-fun contains!16460 (ListMap!5453 K!14405) Bool)

(assert (=> b!4748170 (contains!16460 lt!1910702 (_1!30676 (h!59433 (t!360476 l!14304))))))

(declare-fun lt!1910695 () Unit!134701)

(declare-fun Unit!134717 () Unit!134701)

(assert (=> b!4748170 (= lt!1910695 Unit!134717)))

(assert (=> b!4748170 (contains!16460 lt!1910699 (_1!30676 (h!59433 (t!360476 l!14304))))))

(declare-fun lt!1910698 () Unit!134701)

(declare-fun Unit!134718 () Unit!134701)

(assert (=> b!4748170 (= lt!1910698 Unit!134718)))

(declare-fun call!332337 () Bool)

(assert (=> b!4748170 call!332337))

(declare-fun lt!1910694 () Unit!134701)

(declare-fun Unit!134719 () Unit!134701)

(assert (=> b!4748170 (= lt!1910694 Unit!134719)))

(assert (=> b!4748170 (forall!11739 (toList!6072 lt!1910702) lambda!220965)))

(declare-fun lt!1910683 () Unit!134701)

(declare-fun Unit!134720 () Unit!134701)

(assert (=> b!4748170 (= lt!1910683 Unit!134720)))

(declare-fun lt!1910703 () Unit!134701)

(declare-fun Unit!134721 () Unit!134701)

(assert (=> b!4748170 (= lt!1910703 Unit!134721)))

(declare-fun lt!1910686 () Unit!134701)

(declare-fun addForallContainsKeyThenBeforeAdding!853 (ListMap!5453 ListMap!5453 K!14405 V!14651) Unit!134701)

(assert (=> b!4748170 (= lt!1910686 (addForallContainsKeyThenBeforeAdding!853 (+!2338 lt!1910535 t!14174) lt!1910699 (_1!30676 (h!59433 (t!360476 l!14304))) (_2!30676 (h!59433 (t!360476 l!14304)))))))

(assert (=> b!4748170 (forall!11739 (toList!6072 (+!2338 lt!1910535 t!14174)) lambda!220965)))

(declare-fun lt!1910700 () Unit!134701)

(assert (=> b!4748170 (= lt!1910700 lt!1910686)))

(assert (=> b!4748170 call!332338))

(declare-fun lt!1910689 () Unit!134701)

(declare-fun Unit!134722 () Unit!134701)

(assert (=> b!4748170 (= lt!1910689 Unit!134722)))

(declare-fun res!2012860 () Bool)

(assert (=> b!4748170 (= res!2012860 (forall!11739 (t!360476 l!14304) lambda!220965))))

(declare-fun e!2961705 () Bool)

(assert (=> b!4748170 (=> (not res!2012860) (not e!2961705))))

(assert (=> b!4748170 e!2961705))

(declare-fun lt!1910693 () Unit!134701)

(declare-fun Unit!134723 () Unit!134701)

(assert (=> b!4748170 (= lt!1910693 Unit!134723)))

(declare-fun b!4748171 () Bool)

(declare-fun e!2961706 () Bool)

(declare-fun invariantList!1571 (List!53160) Bool)

(assert (=> b!4748171 (= e!2961706 (invariantList!1571 (toList!6072 lt!1910701)))))

(declare-fun b!4748172 () Bool)

(assert (=> b!4748172 (= e!2961705 (forall!11739 (toList!6072 (+!2338 lt!1910535 t!14174)) lambda!220965))))

(declare-fun bm!332332 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!854 (ListMap!5453) Unit!134701)

(assert (=> bm!332332 (= call!332336 (lemmaContainsAllItsOwnKeys!854 (+!2338 lt!1910535 t!14174)))))

(declare-fun bm!332333 () Bool)

(assert (=> bm!332333 (= call!332337 (forall!11739 (ite c!810868 (toList!6072 (+!2338 lt!1910535 t!14174)) (t!360476 l!14304)) (ite c!810868 lambda!220962 lambda!220965)))))

(assert (=> d!1517449 e!2961706))

(declare-fun res!2012861 () Bool)

(assert (=> d!1517449 (=> (not res!2012861) (not e!2961706))))

(assert (=> d!1517449 (= res!2012861 (forall!11739 (t!360476 l!14304) lambda!220966))))

(assert (=> d!1517449 (= lt!1910701 e!2961707)))

(assert (=> d!1517449 (= c!810868 ((_ is Nil!53036) (t!360476 l!14304)))))

(assert (=> d!1517449 (noDuplicateKeys!2102 (t!360476 l!14304))))

(assert (=> d!1517449 (= (addToMapMapFromBucket!1528 (t!360476 l!14304) (+!2338 lt!1910535 t!14174)) lt!1910701)))

(declare-fun b!4748173 () Bool)

(declare-fun res!2012862 () Bool)

(assert (=> b!4748173 (=> (not res!2012862) (not e!2961706))))

(assert (=> b!4748173 (= res!2012862 (forall!11739 (toList!6072 (+!2338 lt!1910535 t!14174)) lambda!220966))))

(assert (=> b!4748174 (= e!2961707 (+!2338 lt!1910535 t!14174))))

(declare-fun lt!1910690 () Unit!134701)

(assert (=> b!4748174 (= lt!1910690 call!332336)))

(assert (=> b!4748174 call!332337))

(declare-fun lt!1910696 () Unit!134701)

(assert (=> b!4748174 (= lt!1910696 lt!1910690)))

(assert (=> b!4748174 call!332338))

(declare-fun lt!1910692 () Unit!134701)

(declare-fun Unit!134724 () Unit!134701)

(assert (=> b!4748174 (= lt!1910692 Unit!134724)))

(assert (= (and d!1517449 c!810868) b!4748174))

(assert (= (and d!1517449 (not c!810868)) b!4748170))

(assert (= (and b!4748170 res!2012860) b!4748172))

(assert (= (or b!4748174 b!4748170) bm!332332))

(assert (= (or b!4748174 b!4748170) bm!332331))

(assert (= (or b!4748174 b!4748170) bm!332333))

(assert (= (and d!1517449 res!2012861) b!4748173))

(assert (= (and b!4748173 res!2012862) b!4748171))

(declare-fun m!5706269 () Bool)

(assert (=> bm!332333 m!5706269))

(declare-fun m!5706271 () Bool)

(assert (=> b!4748171 m!5706271))

(assert (=> bm!332332 m!5706149))

(declare-fun m!5706273 () Bool)

(assert (=> bm!332332 m!5706273))

(declare-fun m!5706275 () Bool)

(assert (=> d!1517449 m!5706275))

(declare-fun m!5706279 () Bool)

(assert (=> d!1517449 m!5706279))

(declare-fun m!5706281 () Bool)

(assert (=> bm!332331 m!5706281))

(declare-fun m!5706283 () Bool)

(assert (=> b!4748173 m!5706283))

(declare-fun m!5706285 () Bool)

(assert (=> b!4748172 m!5706285))

(assert (=> b!4748170 m!5706149))

(declare-fun m!5706287 () Bool)

(assert (=> b!4748170 m!5706287))

(declare-fun m!5706289 () Bool)

(assert (=> b!4748170 m!5706289))

(assert (=> b!4748170 m!5706287))

(declare-fun m!5706291 () Bool)

(assert (=> b!4748170 m!5706291))

(declare-fun m!5706293 () Bool)

(assert (=> b!4748170 m!5706293))

(declare-fun m!5706295 () Bool)

(assert (=> b!4748170 m!5706295))

(declare-fun m!5706297 () Bool)

(assert (=> b!4748170 m!5706297))

(declare-fun m!5706299 () Bool)

(assert (=> b!4748170 m!5706299))

(assert (=> b!4748170 m!5706149))

(declare-fun m!5706301 () Bool)

(assert (=> b!4748170 m!5706301))

(declare-fun m!5706303 () Bool)

(assert (=> b!4748170 m!5706303))

(assert (=> b!4748170 m!5706285))

(assert (=> b!4748170 m!5706295))

(declare-fun m!5706305 () Bool)

(assert (=> b!4748170 m!5706305))

(assert (=> b!4748122 d!1517449))

(declare-fun d!1517471 () Bool)

(declare-fun e!2961721 () Bool)

(assert (=> d!1517471 e!2961721))

(declare-fun res!2012880 () Bool)

(assert (=> d!1517471 (=> (not res!2012880) (not e!2961721))))

(declare-fun lt!1910758 () ListMap!5453)

(assert (=> d!1517471 (= res!2012880 (contains!16460 lt!1910758 (_1!30676 t!14174)))))

(declare-fun lt!1910759 () List!53160)

(assert (=> d!1517471 (= lt!1910758 (ListMap!5454 lt!1910759))))

(declare-fun lt!1910760 () Unit!134701)

(declare-fun lt!1910761 () Unit!134701)

(assert (=> d!1517471 (= lt!1910760 lt!1910761)))

(declare-datatypes ((Option!12508 0))(
  ( (None!12507) (Some!12507 (v!47202 V!14651)) )
))
(declare-fun getValueByKey!2058 (List!53160 K!14405) Option!12508)

(assert (=> d!1517471 (= (getValueByKey!2058 lt!1910759 (_1!30676 t!14174)) (Some!12507 (_2!30676 t!14174)))))

(declare-fun lemmaContainsTupThenGetReturnValue!1135 (List!53160 K!14405 V!14651) Unit!134701)

(assert (=> d!1517471 (= lt!1910761 (lemmaContainsTupThenGetReturnValue!1135 lt!1910759 (_1!30676 t!14174) (_2!30676 t!14174)))))

(declare-fun insertNoDuplicatedKeys!643 (List!53160 K!14405 V!14651) List!53160)

(assert (=> d!1517471 (= lt!1910759 (insertNoDuplicatedKeys!643 (toList!6072 lt!1910535) (_1!30676 t!14174) (_2!30676 t!14174)))))

(assert (=> d!1517471 (= (+!2338 lt!1910535 t!14174) lt!1910758)))

(declare-fun b!4748197 () Bool)

(declare-fun res!2012879 () Bool)

(assert (=> b!4748197 (=> (not res!2012879) (not e!2961721))))

(assert (=> b!4748197 (= res!2012879 (= (getValueByKey!2058 (toList!6072 lt!1910758) (_1!30676 t!14174)) (Some!12507 (_2!30676 t!14174))))))

(declare-fun b!4748198 () Bool)

(declare-fun contains!16461 (List!53160 tuple2!54764) Bool)

(assert (=> b!4748198 (= e!2961721 (contains!16461 (toList!6072 lt!1910758) t!14174))))

(assert (= (and d!1517471 res!2012880) b!4748197))

(assert (= (and b!4748197 res!2012879) b!4748198))

(declare-fun m!5706359 () Bool)

(assert (=> d!1517471 m!5706359))

(declare-fun m!5706361 () Bool)

(assert (=> d!1517471 m!5706361))

(declare-fun m!5706363 () Bool)

(assert (=> d!1517471 m!5706363))

(declare-fun m!5706365 () Bool)

(assert (=> d!1517471 m!5706365))

(declare-fun m!5706367 () Bool)

(assert (=> b!4748197 m!5706367))

(declare-fun m!5706369 () Bool)

(assert (=> b!4748198 m!5706369))

(assert (=> b!4748122 d!1517471))

(declare-fun d!1517481 () Bool)

(assert (=> d!1517481 (= (eq!1179 lt!1910533 (addToMapMapFromBucket!1528 l!14304 acc!1214)) (= (content!9504 (toList!6072 lt!1910533)) (content!9504 (toList!6072 (addToMapMapFromBucket!1528 l!14304 acc!1214)))))))

(declare-fun bs!1138821 () Bool)

(assert (= bs!1138821 d!1517481))

(declare-fun m!5706371 () Bool)

(assert (=> bs!1138821 m!5706371))

(declare-fun m!5706373 () Bool)

(assert (=> bs!1138821 m!5706373))

(assert (=> b!4748118 d!1517481))

(declare-fun bs!1138823 () Bool)

(declare-fun b!4748203 () Bool)

(assert (= bs!1138823 (and b!4748203 b!4748174)))

(declare-fun lambda!220972 () Int)

(assert (=> bs!1138823 (= (= acc!1214 (+!2338 lt!1910535 t!14174)) (= lambda!220972 lambda!220962))))

(declare-fun bs!1138824 () Bool)

(assert (= bs!1138824 (and b!4748203 b!4748170)))

(assert (=> bs!1138824 (= (= acc!1214 (+!2338 lt!1910535 t!14174)) (= lambda!220972 lambda!220964))))

(assert (=> bs!1138824 (= (= acc!1214 lt!1910699) (= lambda!220972 lambda!220965))))

(declare-fun bs!1138826 () Bool)

(assert (= bs!1138826 (and b!4748203 d!1517449)))

(assert (=> bs!1138826 (= (= acc!1214 lt!1910701) (= lambda!220972 lambda!220966))))

(assert (=> b!4748203 true))

(declare-fun bs!1138828 () Bool)

(declare-fun b!4748199 () Bool)

(assert (= bs!1138828 (and b!4748199 d!1517449)))

(declare-fun lambda!220973 () Int)

(assert (=> bs!1138828 (= (= acc!1214 lt!1910701) (= lambda!220973 lambda!220966))))

(declare-fun bs!1138829 () Bool)

(assert (= bs!1138829 (and b!4748199 b!4748170)))

(assert (=> bs!1138829 (= (= acc!1214 lt!1910699) (= lambda!220973 lambda!220965))))

(assert (=> bs!1138829 (= (= acc!1214 (+!2338 lt!1910535 t!14174)) (= lambda!220973 lambda!220964))))

(declare-fun bs!1138831 () Bool)

(assert (= bs!1138831 (and b!4748199 b!4748174)))

(assert (=> bs!1138831 (= (= acc!1214 (+!2338 lt!1910535 t!14174)) (= lambda!220973 lambda!220962))))

(declare-fun bs!1138832 () Bool)

(assert (= bs!1138832 (and b!4748199 b!4748203)))

(assert (=> bs!1138832 (= lambda!220973 lambda!220972)))

(assert (=> b!4748199 true))

(declare-fun lambda!220974 () Int)

(declare-fun lt!1910778 () ListMap!5453)

(assert (=> bs!1138828 (= (= lt!1910778 lt!1910701) (= lambda!220974 lambda!220966))))

(assert (=> bs!1138829 (= (= lt!1910778 lt!1910699) (= lambda!220974 lambda!220965))))

(assert (=> b!4748199 (= (= lt!1910778 acc!1214) (= lambda!220974 lambda!220973))))

(assert (=> bs!1138829 (= (= lt!1910778 (+!2338 lt!1910535 t!14174)) (= lambda!220974 lambda!220964))))

(assert (=> bs!1138831 (= (= lt!1910778 (+!2338 lt!1910535 t!14174)) (= lambda!220974 lambda!220962))))

(assert (=> bs!1138832 (= (= lt!1910778 acc!1214) (= lambda!220974 lambda!220972))))

(assert (=> b!4748199 true))

(declare-fun bs!1138842 () Bool)

(declare-fun d!1517483 () Bool)

(assert (= bs!1138842 (and d!1517483 d!1517449)))

(declare-fun lambda!220976 () Int)

(declare-fun lt!1910780 () ListMap!5453)

(assert (=> bs!1138842 (= (= lt!1910780 lt!1910701) (= lambda!220976 lambda!220966))))

(declare-fun bs!1138843 () Bool)

(assert (= bs!1138843 (and d!1517483 b!4748170)))

(assert (=> bs!1138843 (= (= lt!1910780 lt!1910699) (= lambda!220976 lambda!220965))))

(declare-fun bs!1138844 () Bool)

(assert (= bs!1138844 (and d!1517483 b!4748199)))

(assert (=> bs!1138844 (= (= lt!1910780 acc!1214) (= lambda!220976 lambda!220973))))

(assert (=> bs!1138844 (= (= lt!1910780 lt!1910778) (= lambda!220976 lambda!220974))))

(assert (=> bs!1138843 (= (= lt!1910780 (+!2338 lt!1910535 t!14174)) (= lambda!220976 lambda!220964))))

(declare-fun bs!1138847 () Bool)

(assert (= bs!1138847 (and d!1517483 b!4748174)))

(assert (=> bs!1138847 (= (= lt!1910780 (+!2338 lt!1910535 t!14174)) (= lambda!220976 lambda!220962))))

(declare-fun bs!1138848 () Bool)

(assert (= bs!1138848 (and d!1517483 b!4748203)))

(assert (=> bs!1138848 (= (= lt!1910780 acc!1214) (= lambda!220976 lambda!220972))))

(assert (=> d!1517483 true))

(declare-fun c!810871 () Bool)

(declare-fun bm!332340 () Bool)

(declare-fun call!332347 () Bool)

(assert (=> bm!332340 (= call!332347 (forall!11739 (toList!6072 acc!1214) (ite c!810871 lambda!220972 lambda!220974)))))

(declare-fun e!2961724 () ListMap!5453)

(assert (=> b!4748199 (= e!2961724 lt!1910778)))

(declare-fun lt!1910781 () ListMap!5453)

(assert (=> b!4748199 (= lt!1910781 (+!2338 acc!1214 (h!59433 l!14304)))))

(assert (=> b!4748199 (= lt!1910778 (addToMapMapFromBucket!1528 (t!360476 l!14304) (+!2338 acc!1214 (h!59433 l!14304))))))

(declare-fun lt!1910770 () Unit!134701)

(declare-fun call!332345 () Unit!134701)

(assert (=> b!4748199 (= lt!1910770 call!332345)))

(assert (=> b!4748199 (forall!11739 (toList!6072 acc!1214) lambda!220973)))

(declare-fun lt!1910767 () Unit!134701)

(assert (=> b!4748199 (= lt!1910767 lt!1910770)))

(assert (=> b!4748199 (forall!11739 (toList!6072 lt!1910781) lambda!220974)))

(declare-fun lt!1910776 () Unit!134701)

(declare-fun Unit!134736 () Unit!134701)

(assert (=> b!4748199 (= lt!1910776 Unit!134736)))

(assert (=> b!4748199 (forall!11739 (t!360476 l!14304) lambda!220974)))

(declare-fun lt!1910764 () Unit!134701)

(declare-fun Unit!134737 () Unit!134701)

(assert (=> b!4748199 (= lt!1910764 Unit!134737)))

(declare-fun lt!1910763 () Unit!134701)

(declare-fun Unit!134738 () Unit!134701)

(assert (=> b!4748199 (= lt!1910763 Unit!134738)))

(declare-fun lt!1910766 () Unit!134701)

(assert (=> b!4748199 (= lt!1910766 (forallContained!3765 (toList!6072 lt!1910781) lambda!220974 (h!59433 l!14304)))))

(assert (=> b!4748199 (contains!16460 lt!1910781 (_1!30676 (h!59433 l!14304)))))

(declare-fun lt!1910774 () Unit!134701)

(declare-fun Unit!134739 () Unit!134701)

(assert (=> b!4748199 (= lt!1910774 Unit!134739)))

(assert (=> b!4748199 (contains!16460 lt!1910778 (_1!30676 (h!59433 l!14304)))))

(declare-fun lt!1910777 () Unit!134701)

(declare-fun Unit!134740 () Unit!134701)

(assert (=> b!4748199 (= lt!1910777 Unit!134740)))

(declare-fun call!332346 () Bool)

(assert (=> b!4748199 call!332346))

(declare-fun lt!1910773 () Unit!134701)

(declare-fun Unit!134741 () Unit!134701)

(assert (=> b!4748199 (= lt!1910773 Unit!134741)))

(assert (=> b!4748199 (forall!11739 (toList!6072 lt!1910781) lambda!220974)))

(declare-fun lt!1910762 () Unit!134701)

(declare-fun Unit!134742 () Unit!134701)

(assert (=> b!4748199 (= lt!1910762 Unit!134742)))

(declare-fun lt!1910782 () Unit!134701)

(declare-fun Unit!134743 () Unit!134701)

(assert (=> b!4748199 (= lt!1910782 Unit!134743)))

(declare-fun lt!1910765 () Unit!134701)

(assert (=> b!4748199 (= lt!1910765 (addForallContainsKeyThenBeforeAdding!853 acc!1214 lt!1910778 (_1!30676 (h!59433 l!14304)) (_2!30676 (h!59433 l!14304))))))

(assert (=> b!4748199 (forall!11739 (toList!6072 acc!1214) lambda!220974)))

(declare-fun lt!1910779 () Unit!134701)

(assert (=> b!4748199 (= lt!1910779 lt!1910765)))

(assert (=> b!4748199 call!332347))

(declare-fun lt!1910768 () Unit!134701)

(declare-fun Unit!134744 () Unit!134701)

(assert (=> b!4748199 (= lt!1910768 Unit!134744)))

(declare-fun res!2012881 () Bool)

(assert (=> b!4748199 (= res!2012881 (forall!11739 l!14304 lambda!220974))))

(declare-fun e!2961722 () Bool)

(assert (=> b!4748199 (=> (not res!2012881) (not e!2961722))))

(assert (=> b!4748199 e!2961722))

(declare-fun lt!1910772 () Unit!134701)

(declare-fun Unit!134745 () Unit!134701)

(assert (=> b!4748199 (= lt!1910772 Unit!134745)))

(declare-fun b!4748200 () Bool)

(declare-fun e!2961723 () Bool)

(assert (=> b!4748200 (= e!2961723 (invariantList!1571 (toList!6072 lt!1910780)))))

(declare-fun b!4748201 () Bool)

(assert (=> b!4748201 (= e!2961722 (forall!11739 (toList!6072 acc!1214) lambda!220974))))

(declare-fun bm!332341 () Bool)

(assert (=> bm!332341 (= call!332345 (lemmaContainsAllItsOwnKeys!854 acc!1214))))

(declare-fun bm!332342 () Bool)

(assert (=> bm!332342 (= call!332346 (forall!11739 (ite c!810871 (toList!6072 acc!1214) l!14304) (ite c!810871 lambda!220972 lambda!220974)))))

(assert (=> d!1517483 e!2961723))

(declare-fun res!2012882 () Bool)

(assert (=> d!1517483 (=> (not res!2012882) (not e!2961723))))

(assert (=> d!1517483 (= res!2012882 (forall!11739 l!14304 lambda!220976))))

(assert (=> d!1517483 (= lt!1910780 e!2961724)))

(assert (=> d!1517483 (= c!810871 ((_ is Nil!53036) l!14304))))

(assert (=> d!1517483 (noDuplicateKeys!2102 l!14304)))

(assert (=> d!1517483 (= (addToMapMapFromBucket!1528 l!14304 acc!1214) lt!1910780)))

(declare-fun b!4748202 () Bool)

(declare-fun res!2012883 () Bool)

(assert (=> b!4748202 (=> (not res!2012883) (not e!2961723))))

(assert (=> b!4748202 (= res!2012883 (forall!11739 (toList!6072 acc!1214) lambda!220976))))

(assert (=> b!4748203 (= e!2961724 acc!1214)))

(declare-fun lt!1910769 () Unit!134701)

(assert (=> b!4748203 (= lt!1910769 call!332345)))

(assert (=> b!4748203 call!332346))

(declare-fun lt!1910775 () Unit!134701)

(assert (=> b!4748203 (= lt!1910775 lt!1910769)))

(assert (=> b!4748203 call!332347))

(declare-fun lt!1910771 () Unit!134701)

(declare-fun Unit!134746 () Unit!134701)

(assert (=> b!4748203 (= lt!1910771 Unit!134746)))

(assert (= (and d!1517483 c!810871) b!4748203))

(assert (= (and d!1517483 (not c!810871)) b!4748199))

(assert (= (and b!4748199 res!2012881) b!4748201))

(assert (= (or b!4748203 b!4748199) bm!332341))

(assert (= (or b!4748203 b!4748199) bm!332340))

(assert (= (or b!4748203 b!4748199) bm!332342))

(assert (= (and d!1517483 res!2012882) b!4748202))

(assert (= (and b!4748202 res!2012883) b!4748200))

(declare-fun m!5706375 () Bool)

(assert (=> bm!332342 m!5706375))

(declare-fun m!5706377 () Bool)

(assert (=> b!4748200 m!5706377))

(declare-fun m!5706379 () Bool)

(assert (=> bm!332341 m!5706379))

(declare-fun m!5706381 () Bool)

(assert (=> d!1517483 m!5706381))

(assert (=> d!1517483 m!5706145))

(declare-fun m!5706383 () Bool)

(assert (=> bm!332340 m!5706383))

(declare-fun m!5706385 () Bool)

(assert (=> b!4748202 m!5706385))

(declare-fun m!5706387 () Bool)

(assert (=> b!4748201 m!5706387))

(assert (=> b!4748199 m!5706133))

(declare-fun m!5706389 () Bool)

(assert (=> b!4748199 m!5706389))

(assert (=> b!4748199 m!5706133))

(declare-fun m!5706391 () Bool)

(assert (=> b!4748199 m!5706391))

(declare-fun m!5706393 () Bool)

(assert (=> b!4748199 m!5706393))

(declare-fun m!5706395 () Bool)

(assert (=> b!4748199 m!5706395))

(declare-fun m!5706397 () Bool)

(assert (=> b!4748199 m!5706397))

(declare-fun m!5706399 () Bool)

(assert (=> b!4748199 m!5706399))

(declare-fun m!5706401 () Bool)

(assert (=> b!4748199 m!5706401))

(declare-fun m!5706403 () Bool)

(assert (=> b!4748199 m!5706403))

(assert (=> b!4748199 m!5706387))

(assert (=> b!4748199 m!5706395))

(declare-fun m!5706405 () Bool)

(assert (=> b!4748199 m!5706405))

(assert (=> b!4748118 d!1517483))

(declare-fun d!1517485 () Bool)

(declare-fun res!2012888 () Bool)

(declare-fun e!2961729 () Bool)

(assert (=> d!1517485 (=> res!2012888 e!2961729)))

(assert (=> d!1517485 (= res!2012888 (not ((_ is Cons!53036) l!14304)))))

(assert (=> d!1517485 (= (noDuplicateKeys!2102 l!14304) e!2961729)))

(declare-fun b!4748208 () Bool)

(declare-fun e!2961730 () Bool)

(assert (=> b!4748208 (= e!2961729 e!2961730)))

(declare-fun res!2012889 () Bool)

(assert (=> b!4748208 (=> (not res!2012889) (not e!2961730))))

(declare-fun containsKey!3529 (List!53160 K!14405) Bool)

(assert (=> b!4748208 (= res!2012889 (not (containsKey!3529 (t!360476 l!14304) (_1!30676 (h!59433 l!14304)))))))

(declare-fun b!4748209 () Bool)

(assert (=> b!4748209 (= e!2961730 (noDuplicateKeys!2102 (t!360476 l!14304)))))

(assert (= (and d!1517485 (not res!2012888)) b!4748208))

(assert (= (and b!4748208 res!2012889) b!4748209))

(declare-fun m!5706415 () Bool)

(assert (=> b!4748208 m!5706415))

(assert (=> b!4748209 m!5706279))

(assert (=> start!485032 d!1517485))

(declare-fun d!1517487 () Bool)

(assert (=> d!1517487 (= (inv!68277 acc!1214) (invariantList!1571 (toList!6072 acc!1214)))))

(declare-fun bs!1138861 () Bool)

(assert (= bs!1138861 d!1517487))

(declare-fun m!5706439 () Bool)

(assert (=> bs!1138861 m!5706439))

(assert (=> start!485032 d!1517487))

(declare-fun d!1517489 () Bool)

(declare-fun e!2961733 () Bool)

(assert (=> d!1517489 e!2961733))

(declare-fun res!2012891 () Bool)

(assert (=> d!1517489 (=> (not res!2012891) (not e!2961733))))

(declare-fun lt!1910783 () ListMap!5453)

(assert (=> d!1517489 (= res!2012891 (contains!16460 lt!1910783 (_1!30676 (h!59433 l!14304))))))

(declare-fun lt!1910784 () List!53160)

(assert (=> d!1517489 (= lt!1910783 (ListMap!5454 lt!1910784))))

(declare-fun lt!1910785 () Unit!134701)

(declare-fun lt!1910786 () Unit!134701)

(assert (=> d!1517489 (= lt!1910785 lt!1910786)))

(assert (=> d!1517489 (= (getValueByKey!2058 lt!1910784 (_1!30676 (h!59433 l!14304))) (Some!12507 (_2!30676 (h!59433 l!14304))))))

(assert (=> d!1517489 (= lt!1910786 (lemmaContainsTupThenGetReturnValue!1135 lt!1910784 (_1!30676 (h!59433 l!14304)) (_2!30676 (h!59433 l!14304))))))

(assert (=> d!1517489 (= lt!1910784 (insertNoDuplicatedKeys!643 (toList!6072 acc!1214) (_1!30676 (h!59433 l!14304)) (_2!30676 (h!59433 l!14304))))))

(assert (=> d!1517489 (= (+!2338 acc!1214 (h!59433 l!14304)) lt!1910783)))

(declare-fun b!4748214 () Bool)

(declare-fun res!2012890 () Bool)

(assert (=> b!4748214 (=> (not res!2012890) (not e!2961733))))

(assert (=> b!4748214 (= res!2012890 (= (getValueByKey!2058 (toList!6072 lt!1910783) (_1!30676 (h!59433 l!14304))) (Some!12507 (_2!30676 (h!59433 l!14304)))))))

(declare-fun b!4748215 () Bool)

(assert (=> b!4748215 (= e!2961733 (contains!16461 (toList!6072 lt!1910783) (h!59433 l!14304)))))

(assert (= (and d!1517489 res!2012891) b!4748214))

(assert (= (and b!4748214 res!2012890) b!4748215))

(declare-fun m!5706441 () Bool)

(assert (=> d!1517489 m!5706441))

(declare-fun m!5706443 () Bool)

(assert (=> d!1517489 m!5706443))

(declare-fun m!5706445 () Bool)

(assert (=> d!1517489 m!5706445))

(declare-fun m!5706447 () Bool)

(assert (=> d!1517489 m!5706447))

(declare-fun m!5706449 () Bool)

(assert (=> b!4748214 m!5706449))

(declare-fun m!5706451 () Bool)

(assert (=> b!4748215 m!5706451))

(assert (=> b!4748121 d!1517489))

(declare-fun d!1517491 () Bool)

(declare-fun e!2961736 () Bool)

(assert (=> d!1517491 e!2961736))

(declare-fun res!2012893 () Bool)

(assert (=> d!1517491 (=> (not res!2012893) (not e!2961736))))

(declare-fun lt!1910787 () ListMap!5453)

(assert (=> d!1517491 (= res!2012893 (contains!16460 lt!1910787 (_1!30676 t!14174)))))

(declare-fun lt!1910788 () List!53160)

(assert (=> d!1517491 (= lt!1910787 (ListMap!5454 lt!1910788))))

(declare-fun lt!1910789 () Unit!134701)

(declare-fun lt!1910790 () Unit!134701)

(assert (=> d!1517491 (= lt!1910789 lt!1910790)))

(assert (=> d!1517491 (= (getValueByKey!2058 lt!1910788 (_1!30676 t!14174)) (Some!12507 (_2!30676 t!14174)))))

(assert (=> d!1517491 (= lt!1910790 (lemmaContainsTupThenGetReturnValue!1135 lt!1910788 (_1!30676 t!14174) (_2!30676 t!14174)))))

(assert (=> d!1517491 (= lt!1910788 (insertNoDuplicatedKeys!643 (toList!6072 lt!1910533) (_1!30676 t!14174) (_2!30676 t!14174)))))

(assert (=> d!1517491 (= (+!2338 lt!1910533 t!14174) lt!1910787)))

(declare-fun b!4748218 () Bool)

(declare-fun res!2012892 () Bool)

(assert (=> b!4748218 (=> (not res!2012892) (not e!2961736))))

(assert (=> b!4748218 (= res!2012892 (= (getValueByKey!2058 (toList!6072 lt!1910787) (_1!30676 t!14174)) (Some!12507 (_2!30676 t!14174))))))

(declare-fun b!4748219 () Bool)

(assert (=> b!4748219 (= e!2961736 (contains!16461 (toList!6072 lt!1910787) t!14174))))

(assert (= (and d!1517491 res!2012893) b!4748218))

(assert (= (and b!4748218 res!2012892) b!4748219))

(declare-fun m!5706453 () Bool)

(assert (=> d!1517491 m!5706453))

(declare-fun m!5706455 () Bool)

(assert (=> d!1517491 m!5706455))

(declare-fun m!5706457 () Bool)

(assert (=> d!1517491 m!5706457))

(declare-fun m!5706459 () Bool)

(assert (=> d!1517491 m!5706459))

(declare-fun m!5706461 () Bool)

(assert (=> b!4748218 m!5706461))

(declare-fun m!5706463 () Bool)

(assert (=> b!4748219 m!5706463))

(assert (=> b!4748121 d!1517491))

(declare-fun d!1517493 () Bool)

(declare-fun res!2012894 () Bool)

(declare-fun e!2961737 () Bool)

(assert (=> d!1517493 (=> res!2012894 e!2961737)))

(assert (=> d!1517493 (= res!2012894 (not ((_ is Cons!53036) lt!1910536)))))

(assert (=> d!1517493 (= (noDuplicateKeys!2102 lt!1910536) e!2961737)))

(declare-fun b!4748220 () Bool)

(declare-fun e!2961738 () Bool)

(assert (=> b!4748220 (= e!2961737 e!2961738)))

(declare-fun res!2012895 () Bool)

(assert (=> b!4748220 (=> (not res!2012895) (not e!2961738))))

(assert (=> b!4748220 (= res!2012895 (not (containsKey!3529 (t!360476 lt!1910536) (_1!30676 (h!59433 lt!1910536)))))))

(declare-fun b!4748221 () Bool)

(assert (=> b!4748221 (= e!2961738 (noDuplicateKeys!2102 (t!360476 lt!1910536)))))

(assert (= (and d!1517493 (not res!2012894)) b!4748220))

(assert (= (and b!4748220 res!2012895) b!4748221))

(declare-fun m!5706465 () Bool)

(assert (=> b!4748220 m!5706465))

(declare-fun m!5706467 () Bool)

(assert (=> b!4748221 m!5706467))

(assert (=> b!4748121 d!1517493))

(declare-fun bs!1138862 () Bool)

(declare-fun b!4748226 () Bool)

(assert (= bs!1138862 (and b!4748226 d!1517449)))

(declare-fun lambda!220979 () Int)

(assert (=> bs!1138862 (= (= lt!1910535 lt!1910701) (= lambda!220979 lambda!220966))))

(declare-fun bs!1138863 () Bool)

(assert (= bs!1138863 (and b!4748226 b!4748170)))

(assert (=> bs!1138863 (= (= lt!1910535 lt!1910699) (= lambda!220979 lambda!220965))))

(declare-fun bs!1138864 () Bool)

(assert (= bs!1138864 (and b!4748226 b!4748199)))

(assert (=> bs!1138864 (= (= lt!1910535 acc!1214) (= lambda!220979 lambda!220973))))

(declare-fun bs!1138865 () Bool)

(assert (= bs!1138865 (and b!4748226 d!1517483)))

(assert (=> bs!1138865 (= (= lt!1910535 lt!1910780) (= lambda!220979 lambda!220976))))

(assert (=> bs!1138864 (= (= lt!1910535 lt!1910778) (= lambda!220979 lambda!220974))))

(assert (=> bs!1138863 (= (= lt!1910535 (+!2338 lt!1910535 t!14174)) (= lambda!220979 lambda!220964))))

(declare-fun bs!1138866 () Bool)

(assert (= bs!1138866 (and b!4748226 b!4748174)))

(assert (=> bs!1138866 (= (= lt!1910535 (+!2338 lt!1910535 t!14174)) (= lambda!220979 lambda!220962))))

(declare-fun bs!1138867 () Bool)

(assert (= bs!1138867 (and b!4748226 b!4748203)))

(assert (=> bs!1138867 (= (= lt!1910535 acc!1214) (= lambda!220979 lambda!220972))))

(assert (=> b!4748226 true))

(declare-fun bs!1138868 () Bool)

(declare-fun b!4748222 () Bool)

(assert (= bs!1138868 (and b!4748222 d!1517449)))

(declare-fun lambda!220980 () Int)

(assert (=> bs!1138868 (= (= lt!1910535 lt!1910701) (= lambda!220980 lambda!220966))))

(declare-fun bs!1138869 () Bool)

(assert (= bs!1138869 (and b!4748222 b!4748170)))

(assert (=> bs!1138869 (= (= lt!1910535 lt!1910699) (= lambda!220980 lambda!220965))))

(declare-fun bs!1138870 () Bool)

(assert (= bs!1138870 (and b!4748222 b!4748226)))

(assert (=> bs!1138870 (= lambda!220980 lambda!220979)))

(declare-fun bs!1138871 () Bool)

(assert (= bs!1138871 (and b!4748222 b!4748199)))

(assert (=> bs!1138871 (= (= lt!1910535 acc!1214) (= lambda!220980 lambda!220973))))

(declare-fun bs!1138872 () Bool)

(assert (= bs!1138872 (and b!4748222 d!1517483)))

(assert (=> bs!1138872 (= (= lt!1910535 lt!1910780) (= lambda!220980 lambda!220976))))

(assert (=> bs!1138871 (= (= lt!1910535 lt!1910778) (= lambda!220980 lambda!220974))))

(assert (=> bs!1138869 (= (= lt!1910535 (+!2338 lt!1910535 t!14174)) (= lambda!220980 lambda!220964))))

(declare-fun bs!1138873 () Bool)

(assert (= bs!1138873 (and b!4748222 b!4748174)))

(assert (=> bs!1138873 (= (= lt!1910535 (+!2338 lt!1910535 t!14174)) (= lambda!220980 lambda!220962))))

(declare-fun bs!1138874 () Bool)

(assert (= bs!1138874 (and b!4748222 b!4748203)))

(assert (=> bs!1138874 (= (= lt!1910535 acc!1214) (= lambda!220980 lambda!220972))))

(assert (=> b!4748222 true))

(declare-fun lt!1910807 () ListMap!5453)

(declare-fun lambda!220981 () Int)

(assert (=> bs!1138868 (= (= lt!1910807 lt!1910701) (= lambda!220981 lambda!220966))))

(assert (=> bs!1138869 (= (= lt!1910807 lt!1910699) (= lambda!220981 lambda!220965))))

(assert (=> bs!1138870 (= (= lt!1910807 lt!1910535) (= lambda!220981 lambda!220979))))

(assert (=> bs!1138871 (= (= lt!1910807 acc!1214) (= lambda!220981 lambda!220973))))

(assert (=> bs!1138872 (= (= lt!1910807 lt!1910780) (= lambda!220981 lambda!220976))))

(assert (=> bs!1138871 (= (= lt!1910807 lt!1910778) (= lambda!220981 lambda!220974))))

(assert (=> bs!1138873 (= (= lt!1910807 (+!2338 lt!1910535 t!14174)) (= lambda!220981 lambda!220962))))

(assert (=> bs!1138874 (= (= lt!1910807 acc!1214) (= lambda!220981 lambda!220972))))

(assert (=> bs!1138869 (= (= lt!1910807 (+!2338 lt!1910535 t!14174)) (= lambda!220981 lambda!220964))))

(assert (=> b!4748222 (= (= lt!1910807 lt!1910535) (= lambda!220981 lambda!220980))))

(assert (=> b!4748222 true))

(declare-fun bs!1138875 () Bool)

(declare-fun d!1517495 () Bool)

(assert (= bs!1138875 (and d!1517495 d!1517449)))

(declare-fun lambda!220982 () Int)

(declare-fun lt!1910809 () ListMap!5453)

(assert (=> bs!1138875 (= (= lt!1910809 lt!1910701) (= lambda!220982 lambda!220966))))

(declare-fun bs!1138876 () Bool)

(assert (= bs!1138876 (and d!1517495 b!4748170)))

(assert (=> bs!1138876 (= (= lt!1910809 lt!1910699) (= lambda!220982 lambda!220965))))

(declare-fun bs!1138877 () Bool)

(assert (= bs!1138877 (and d!1517495 b!4748226)))

(assert (=> bs!1138877 (= (= lt!1910809 lt!1910535) (= lambda!220982 lambda!220979))))

(declare-fun bs!1138878 () Bool)

(assert (= bs!1138878 (and d!1517495 b!4748222)))

(assert (=> bs!1138878 (= (= lt!1910809 lt!1910807) (= lambda!220982 lambda!220981))))

(declare-fun bs!1138879 () Bool)

(assert (= bs!1138879 (and d!1517495 b!4748199)))

(assert (=> bs!1138879 (= (= lt!1910809 acc!1214) (= lambda!220982 lambda!220973))))

(declare-fun bs!1138880 () Bool)

(assert (= bs!1138880 (and d!1517495 d!1517483)))

(assert (=> bs!1138880 (= (= lt!1910809 lt!1910780) (= lambda!220982 lambda!220976))))

(assert (=> bs!1138879 (= (= lt!1910809 lt!1910778) (= lambda!220982 lambda!220974))))

(declare-fun bs!1138881 () Bool)

(assert (= bs!1138881 (and d!1517495 b!4748174)))

(assert (=> bs!1138881 (= (= lt!1910809 (+!2338 lt!1910535 t!14174)) (= lambda!220982 lambda!220962))))

(declare-fun bs!1138882 () Bool)

(assert (= bs!1138882 (and d!1517495 b!4748203)))

(assert (=> bs!1138882 (= (= lt!1910809 acc!1214) (= lambda!220982 lambda!220972))))

(assert (=> bs!1138876 (= (= lt!1910809 (+!2338 lt!1910535 t!14174)) (= lambda!220982 lambda!220964))))

(assert (=> bs!1138878 (= (= lt!1910809 lt!1910535) (= lambda!220982 lambda!220980))))

(assert (=> d!1517495 true))

(declare-fun c!810872 () Bool)

(declare-fun bm!332343 () Bool)

(declare-fun call!332350 () Bool)

(assert (=> bm!332343 (= call!332350 (forall!11739 (toList!6072 lt!1910535) (ite c!810872 lambda!220979 lambda!220981)))))

(declare-fun e!2961741 () ListMap!5453)

(assert (=> b!4748222 (= e!2961741 lt!1910807)))

(declare-fun lt!1910810 () ListMap!5453)

(assert (=> b!4748222 (= lt!1910810 (+!2338 lt!1910535 (h!59433 lt!1910536)))))

(assert (=> b!4748222 (= lt!1910807 (addToMapMapFromBucket!1528 (t!360476 lt!1910536) (+!2338 lt!1910535 (h!59433 lt!1910536))))))

(declare-fun lt!1910799 () Unit!134701)

(declare-fun call!332348 () Unit!134701)

(assert (=> b!4748222 (= lt!1910799 call!332348)))

(assert (=> b!4748222 (forall!11739 (toList!6072 lt!1910535) lambda!220980)))

(declare-fun lt!1910796 () Unit!134701)

(assert (=> b!4748222 (= lt!1910796 lt!1910799)))

(assert (=> b!4748222 (forall!11739 (toList!6072 lt!1910810) lambda!220981)))

(declare-fun lt!1910805 () Unit!134701)

(declare-fun Unit!134758 () Unit!134701)

(assert (=> b!4748222 (= lt!1910805 Unit!134758)))

(assert (=> b!4748222 (forall!11739 (t!360476 lt!1910536) lambda!220981)))

(declare-fun lt!1910793 () Unit!134701)

(declare-fun Unit!134759 () Unit!134701)

(assert (=> b!4748222 (= lt!1910793 Unit!134759)))

(declare-fun lt!1910792 () Unit!134701)

(declare-fun Unit!134760 () Unit!134701)

(assert (=> b!4748222 (= lt!1910792 Unit!134760)))

(declare-fun lt!1910795 () Unit!134701)

(assert (=> b!4748222 (= lt!1910795 (forallContained!3765 (toList!6072 lt!1910810) lambda!220981 (h!59433 lt!1910536)))))

(assert (=> b!4748222 (contains!16460 lt!1910810 (_1!30676 (h!59433 lt!1910536)))))

(declare-fun lt!1910803 () Unit!134701)

(declare-fun Unit!134761 () Unit!134701)

(assert (=> b!4748222 (= lt!1910803 Unit!134761)))

(assert (=> b!4748222 (contains!16460 lt!1910807 (_1!30676 (h!59433 lt!1910536)))))

(declare-fun lt!1910806 () Unit!134701)

(declare-fun Unit!134762 () Unit!134701)

(assert (=> b!4748222 (= lt!1910806 Unit!134762)))

(declare-fun call!332349 () Bool)

(assert (=> b!4748222 call!332349))

(declare-fun lt!1910802 () Unit!134701)

(declare-fun Unit!134763 () Unit!134701)

(assert (=> b!4748222 (= lt!1910802 Unit!134763)))

(assert (=> b!4748222 (forall!11739 (toList!6072 lt!1910810) lambda!220981)))

(declare-fun lt!1910791 () Unit!134701)

(declare-fun Unit!134764 () Unit!134701)

(assert (=> b!4748222 (= lt!1910791 Unit!134764)))

(declare-fun lt!1910811 () Unit!134701)

(declare-fun Unit!134765 () Unit!134701)

(assert (=> b!4748222 (= lt!1910811 Unit!134765)))

(declare-fun lt!1910794 () Unit!134701)

(assert (=> b!4748222 (= lt!1910794 (addForallContainsKeyThenBeforeAdding!853 lt!1910535 lt!1910807 (_1!30676 (h!59433 lt!1910536)) (_2!30676 (h!59433 lt!1910536))))))

(assert (=> b!4748222 (forall!11739 (toList!6072 lt!1910535) lambda!220981)))

(declare-fun lt!1910808 () Unit!134701)

(assert (=> b!4748222 (= lt!1910808 lt!1910794)))

(assert (=> b!4748222 call!332350))

(declare-fun lt!1910797 () Unit!134701)

(declare-fun Unit!134766 () Unit!134701)

(assert (=> b!4748222 (= lt!1910797 Unit!134766)))

(declare-fun res!2012896 () Bool)

(assert (=> b!4748222 (= res!2012896 (forall!11739 lt!1910536 lambda!220981))))

(declare-fun e!2961739 () Bool)

(assert (=> b!4748222 (=> (not res!2012896) (not e!2961739))))

(assert (=> b!4748222 e!2961739))

(declare-fun lt!1910801 () Unit!134701)

(declare-fun Unit!134767 () Unit!134701)

(assert (=> b!4748222 (= lt!1910801 Unit!134767)))

(declare-fun b!4748223 () Bool)

(declare-fun e!2961740 () Bool)

(assert (=> b!4748223 (= e!2961740 (invariantList!1571 (toList!6072 lt!1910809)))))

(declare-fun b!4748224 () Bool)

(assert (=> b!4748224 (= e!2961739 (forall!11739 (toList!6072 lt!1910535) lambda!220981))))

(declare-fun bm!332344 () Bool)

(assert (=> bm!332344 (= call!332348 (lemmaContainsAllItsOwnKeys!854 lt!1910535))))

(declare-fun bm!332345 () Bool)

(assert (=> bm!332345 (= call!332349 (forall!11739 (ite c!810872 (toList!6072 lt!1910535) lt!1910536) (ite c!810872 lambda!220979 lambda!220981)))))

(assert (=> d!1517495 e!2961740))

(declare-fun res!2012897 () Bool)

(assert (=> d!1517495 (=> (not res!2012897) (not e!2961740))))

(assert (=> d!1517495 (= res!2012897 (forall!11739 lt!1910536 lambda!220982))))

(assert (=> d!1517495 (= lt!1910809 e!2961741)))

(assert (=> d!1517495 (= c!810872 ((_ is Nil!53036) lt!1910536))))

(assert (=> d!1517495 (noDuplicateKeys!2102 lt!1910536)))

(assert (=> d!1517495 (= (addToMapMapFromBucket!1528 lt!1910536 lt!1910535) lt!1910809)))

(declare-fun b!4748225 () Bool)

(declare-fun res!2012898 () Bool)

(assert (=> b!4748225 (=> (not res!2012898) (not e!2961740))))

(assert (=> b!4748225 (= res!2012898 (forall!11739 (toList!6072 lt!1910535) lambda!220982))))

(assert (=> b!4748226 (= e!2961741 lt!1910535)))

(declare-fun lt!1910798 () Unit!134701)

(assert (=> b!4748226 (= lt!1910798 call!332348)))

(assert (=> b!4748226 call!332349))

(declare-fun lt!1910804 () Unit!134701)

(assert (=> b!4748226 (= lt!1910804 lt!1910798)))

(assert (=> b!4748226 call!332350))

(declare-fun lt!1910800 () Unit!134701)

(declare-fun Unit!134768 () Unit!134701)

(assert (=> b!4748226 (= lt!1910800 Unit!134768)))

(assert (= (and d!1517495 c!810872) b!4748226))

(assert (= (and d!1517495 (not c!810872)) b!4748222))

(assert (= (and b!4748222 res!2012896) b!4748224))

(assert (= (or b!4748226 b!4748222) bm!332344))

(assert (= (or b!4748226 b!4748222) bm!332343))

(assert (= (or b!4748226 b!4748222) bm!332345))

(assert (= (and d!1517495 res!2012897) b!4748225))

(assert (= (and b!4748225 res!2012898) b!4748223))

(declare-fun m!5706469 () Bool)

(assert (=> bm!332345 m!5706469))

(declare-fun m!5706471 () Bool)

(assert (=> b!4748223 m!5706471))

(declare-fun m!5706473 () Bool)

(assert (=> bm!332344 m!5706473))

(declare-fun m!5706475 () Bool)

(assert (=> d!1517495 m!5706475))

(assert (=> d!1517495 m!5706127))

(declare-fun m!5706477 () Bool)

(assert (=> bm!332343 m!5706477))

(declare-fun m!5706479 () Bool)

(assert (=> b!4748225 m!5706479))

(declare-fun m!5706481 () Bool)

(assert (=> b!4748224 m!5706481))

(declare-fun m!5706483 () Bool)

(assert (=> b!4748222 m!5706483))

(declare-fun m!5706485 () Bool)

(assert (=> b!4748222 m!5706485))

(assert (=> b!4748222 m!5706483))

(declare-fun m!5706487 () Bool)

(assert (=> b!4748222 m!5706487))

(declare-fun m!5706489 () Bool)

(assert (=> b!4748222 m!5706489))

(declare-fun m!5706491 () Bool)

(assert (=> b!4748222 m!5706491))

(declare-fun m!5706493 () Bool)

(assert (=> b!4748222 m!5706493))

(declare-fun m!5706495 () Bool)

(assert (=> b!4748222 m!5706495))

(declare-fun m!5706497 () Bool)

(assert (=> b!4748222 m!5706497))

(declare-fun m!5706499 () Bool)

(assert (=> b!4748222 m!5706499))

(assert (=> b!4748222 m!5706481))

(assert (=> b!4748222 m!5706491))

(declare-fun m!5706501 () Bool)

(assert (=> b!4748222 m!5706501))

(assert (=> b!4748121 d!1517495))

(declare-fun d!1517497 () Bool)

(assert (=> d!1517497 (= (eq!1179 lt!1910537 (+!2338 lt!1910533 t!14174)) (= (content!9504 (toList!6072 lt!1910537)) (content!9504 (toList!6072 (+!2338 lt!1910533 t!14174)))))))

(declare-fun bs!1138883 () Bool)

(assert (= bs!1138883 d!1517497))

(assert (=> bs!1138883 m!5706157))

(declare-fun m!5706503 () Bool)

(assert (=> bs!1138883 m!5706503))

(assert (=> b!4748121 d!1517497))

(declare-fun d!1517499 () Bool)

(assert (=> d!1517499 (eq!1179 (addToMapMapFromBucket!1528 (Cons!53036 t!14174 (t!360476 l!14304)) lt!1910535) (+!2338 (addToMapMapFromBucket!1528 (t!360476 l!14304) lt!1910535) t!14174))))

(declare-fun lt!1910814 () Unit!134701)

(declare-fun choose!33786 (tuple2!54764 List!53160 ListMap!5453) Unit!134701)

(assert (=> d!1517499 (= lt!1910814 (choose!33786 t!14174 (t!360476 l!14304) lt!1910535))))

(assert (=> d!1517499 (noDuplicateKeys!2102 (t!360476 l!14304))))

(assert (=> d!1517499 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!426 t!14174 (t!360476 l!14304) lt!1910535) lt!1910814)))

(declare-fun bs!1138884 () Bool)

(assert (= bs!1138884 d!1517499))

(assert (=> bs!1138884 m!5706279))

(declare-fun m!5706505 () Bool)

(assert (=> bs!1138884 m!5706505))

(assert (=> bs!1138884 m!5706129))

(declare-fun m!5706507 () Bool)

(assert (=> bs!1138884 m!5706507))

(declare-fun m!5706509 () Bool)

(assert (=> bs!1138884 m!5706509))

(assert (=> bs!1138884 m!5706507))

(declare-fun m!5706511 () Bool)

(assert (=> bs!1138884 m!5706511))

(assert (=> bs!1138884 m!5706129))

(assert (=> bs!1138884 m!5706509))

(assert (=> b!4748121 d!1517499))

(declare-fun bs!1138885 () Bool)

(declare-fun b!4748231 () Bool)

(assert (= bs!1138885 (and b!4748231 d!1517449)))

(declare-fun lambda!220983 () Int)

(assert (=> bs!1138885 (= (= lt!1910535 lt!1910701) (= lambda!220983 lambda!220966))))

(declare-fun bs!1138886 () Bool)

(assert (= bs!1138886 (and b!4748231 b!4748170)))

(assert (=> bs!1138886 (= (= lt!1910535 lt!1910699) (= lambda!220983 lambda!220965))))

(declare-fun bs!1138887 () Bool)

(assert (= bs!1138887 (and b!4748231 b!4748226)))

(assert (=> bs!1138887 (= lambda!220983 lambda!220979)))

(declare-fun bs!1138888 () Bool)

(assert (= bs!1138888 (and b!4748231 b!4748222)))

(assert (=> bs!1138888 (= (= lt!1910535 lt!1910807) (= lambda!220983 lambda!220981))))

(declare-fun bs!1138889 () Bool)

(assert (= bs!1138889 (and b!4748231 b!4748199)))

(assert (=> bs!1138889 (= (= lt!1910535 acc!1214) (= lambda!220983 lambda!220973))))

(assert (=> bs!1138889 (= (= lt!1910535 lt!1910778) (= lambda!220983 lambda!220974))))

(declare-fun bs!1138890 () Bool)

(assert (= bs!1138890 (and b!4748231 d!1517483)))

(assert (=> bs!1138890 (= (= lt!1910535 lt!1910780) (= lambda!220983 lambda!220976))))

(declare-fun bs!1138891 () Bool)

(assert (= bs!1138891 (and b!4748231 d!1517495)))

(assert (=> bs!1138891 (= (= lt!1910535 lt!1910809) (= lambda!220983 lambda!220982))))

(declare-fun bs!1138892 () Bool)

(assert (= bs!1138892 (and b!4748231 b!4748174)))

(assert (=> bs!1138892 (= (= lt!1910535 (+!2338 lt!1910535 t!14174)) (= lambda!220983 lambda!220962))))

(declare-fun bs!1138893 () Bool)

(assert (= bs!1138893 (and b!4748231 b!4748203)))

(assert (=> bs!1138893 (= (= lt!1910535 acc!1214) (= lambda!220983 lambda!220972))))

(assert (=> bs!1138886 (= (= lt!1910535 (+!2338 lt!1910535 t!14174)) (= lambda!220983 lambda!220964))))

(assert (=> bs!1138888 (= lambda!220983 lambda!220980)))

(assert (=> b!4748231 true))

(declare-fun bs!1138894 () Bool)

(declare-fun b!4748227 () Bool)

(assert (= bs!1138894 (and b!4748227 d!1517449)))

(declare-fun lambda!220984 () Int)

(assert (=> bs!1138894 (= (= lt!1910535 lt!1910701) (= lambda!220984 lambda!220966))))

(declare-fun bs!1138895 () Bool)

(assert (= bs!1138895 (and b!4748227 b!4748170)))

(assert (=> bs!1138895 (= (= lt!1910535 lt!1910699) (= lambda!220984 lambda!220965))))

(declare-fun bs!1138896 () Bool)

(assert (= bs!1138896 (and b!4748227 b!4748226)))

(assert (=> bs!1138896 (= lambda!220984 lambda!220979)))

(declare-fun bs!1138897 () Bool)

(assert (= bs!1138897 (and b!4748227 b!4748222)))

(assert (=> bs!1138897 (= (= lt!1910535 lt!1910807) (= lambda!220984 lambda!220981))))

(declare-fun bs!1138898 () Bool)

(assert (= bs!1138898 (and b!4748227 b!4748199)))

(assert (=> bs!1138898 (= (= lt!1910535 acc!1214) (= lambda!220984 lambda!220973))))

(assert (=> bs!1138898 (= (= lt!1910535 lt!1910778) (= lambda!220984 lambda!220974))))

(declare-fun bs!1138899 () Bool)

(assert (= bs!1138899 (and b!4748227 d!1517483)))

(assert (=> bs!1138899 (= (= lt!1910535 lt!1910780) (= lambda!220984 lambda!220976))))

(declare-fun bs!1138900 () Bool)

(assert (= bs!1138900 (and b!4748227 d!1517495)))

(assert (=> bs!1138900 (= (= lt!1910535 lt!1910809) (= lambda!220984 lambda!220982))))

(declare-fun bs!1138901 () Bool)

(assert (= bs!1138901 (and b!4748227 b!4748174)))

(assert (=> bs!1138901 (= (= lt!1910535 (+!2338 lt!1910535 t!14174)) (= lambda!220984 lambda!220962))))

(declare-fun bs!1138902 () Bool)

(assert (= bs!1138902 (and b!4748227 b!4748231)))

(assert (=> bs!1138902 (= lambda!220984 lambda!220983)))

(declare-fun bs!1138903 () Bool)

(assert (= bs!1138903 (and b!4748227 b!4748203)))

(assert (=> bs!1138903 (= (= lt!1910535 acc!1214) (= lambda!220984 lambda!220972))))

(assert (=> bs!1138895 (= (= lt!1910535 (+!2338 lt!1910535 t!14174)) (= lambda!220984 lambda!220964))))

(assert (=> bs!1138897 (= lambda!220984 lambda!220980)))

(assert (=> b!4748227 true))

(declare-fun lambda!220985 () Int)

(declare-fun lt!1910831 () ListMap!5453)

(assert (=> bs!1138894 (= (= lt!1910831 lt!1910701) (= lambda!220985 lambda!220966))))

(assert (=> bs!1138895 (= (= lt!1910831 lt!1910699) (= lambda!220985 lambda!220965))))

(assert (=> bs!1138896 (= (= lt!1910831 lt!1910535) (= lambda!220985 lambda!220979))))

(assert (=> bs!1138897 (= (= lt!1910831 lt!1910807) (= lambda!220985 lambda!220981))))

(assert (=> bs!1138898 (= (= lt!1910831 acc!1214) (= lambda!220985 lambda!220973))))

(assert (=> b!4748227 (= (= lt!1910831 lt!1910535) (= lambda!220985 lambda!220984))))

(assert (=> bs!1138898 (= (= lt!1910831 lt!1910778) (= lambda!220985 lambda!220974))))

(assert (=> bs!1138899 (= (= lt!1910831 lt!1910780) (= lambda!220985 lambda!220976))))

(assert (=> bs!1138900 (= (= lt!1910831 lt!1910809) (= lambda!220985 lambda!220982))))

(assert (=> bs!1138901 (= (= lt!1910831 (+!2338 lt!1910535 t!14174)) (= lambda!220985 lambda!220962))))

(assert (=> bs!1138902 (= (= lt!1910831 lt!1910535) (= lambda!220985 lambda!220983))))

(assert (=> bs!1138903 (= (= lt!1910831 acc!1214) (= lambda!220985 lambda!220972))))

(assert (=> bs!1138895 (= (= lt!1910831 (+!2338 lt!1910535 t!14174)) (= lambda!220985 lambda!220964))))

(assert (=> bs!1138897 (= (= lt!1910831 lt!1910535) (= lambda!220985 lambda!220980))))

(assert (=> b!4748227 true))

(declare-fun bs!1138904 () Bool)

(declare-fun d!1517501 () Bool)

(assert (= bs!1138904 (and d!1517501 d!1517449)))

(declare-fun lt!1910833 () ListMap!5453)

(declare-fun lambda!220986 () Int)

(assert (=> bs!1138904 (= (= lt!1910833 lt!1910701) (= lambda!220986 lambda!220966))))

(declare-fun bs!1138905 () Bool)

(assert (= bs!1138905 (and d!1517501 b!4748227)))

(assert (=> bs!1138905 (= (= lt!1910833 lt!1910831) (= lambda!220986 lambda!220985))))

(declare-fun bs!1138906 () Bool)

(assert (= bs!1138906 (and d!1517501 b!4748170)))

(assert (=> bs!1138906 (= (= lt!1910833 lt!1910699) (= lambda!220986 lambda!220965))))

(declare-fun bs!1138907 () Bool)

(assert (= bs!1138907 (and d!1517501 b!4748226)))

(assert (=> bs!1138907 (= (= lt!1910833 lt!1910535) (= lambda!220986 lambda!220979))))

(declare-fun bs!1138908 () Bool)

(assert (= bs!1138908 (and d!1517501 b!4748222)))

(assert (=> bs!1138908 (= (= lt!1910833 lt!1910807) (= lambda!220986 lambda!220981))))

(declare-fun bs!1138909 () Bool)

(assert (= bs!1138909 (and d!1517501 b!4748199)))

(assert (=> bs!1138909 (= (= lt!1910833 acc!1214) (= lambda!220986 lambda!220973))))

(assert (=> bs!1138905 (= (= lt!1910833 lt!1910535) (= lambda!220986 lambda!220984))))

(assert (=> bs!1138909 (= (= lt!1910833 lt!1910778) (= lambda!220986 lambda!220974))))

(declare-fun bs!1138910 () Bool)

(assert (= bs!1138910 (and d!1517501 d!1517483)))

(assert (=> bs!1138910 (= (= lt!1910833 lt!1910780) (= lambda!220986 lambda!220976))))

(declare-fun bs!1138911 () Bool)

(assert (= bs!1138911 (and d!1517501 d!1517495)))

(assert (=> bs!1138911 (= (= lt!1910833 lt!1910809) (= lambda!220986 lambda!220982))))

(declare-fun bs!1138912 () Bool)

(assert (= bs!1138912 (and d!1517501 b!4748174)))

(assert (=> bs!1138912 (= (= lt!1910833 (+!2338 lt!1910535 t!14174)) (= lambda!220986 lambda!220962))))

(declare-fun bs!1138913 () Bool)

(assert (= bs!1138913 (and d!1517501 b!4748231)))

(assert (=> bs!1138913 (= (= lt!1910833 lt!1910535) (= lambda!220986 lambda!220983))))

(declare-fun bs!1138914 () Bool)

(assert (= bs!1138914 (and d!1517501 b!4748203)))

(assert (=> bs!1138914 (= (= lt!1910833 acc!1214) (= lambda!220986 lambda!220972))))

(assert (=> bs!1138906 (= (= lt!1910833 (+!2338 lt!1910535 t!14174)) (= lambda!220986 lambda!220964))))

(assert (=> bs!1138908 (= (= lt!1910833 lt!1910535) (= lambda!220986 lambda!220980))))

(assert (=> d!1517501 true))

(declare-fun call!332353 () Bool)

(declare-fun bm!332346 () Bool)

(declare-fun c!810873 () Bool)

(assert (=> bm!332346 (= call!332353 (forall!11739 (toList!6072 lt!1910535) (ite c!810873 lambda!220983 lambda!220985)))))

(declare-fun e!2961744 () ListMap!5453)

(assert (=> b!4748227 (= e!2961744 lt!1910831)))

(declare-fun lt!1910834 () ListMap!5453)

(assert (=> b!4748227 (= lt!1910834 (+!2338 lt!1910535 (h!59433 (t!360476 l!14304))))))

(assert (=> b!4748227 (= lt!1910831 (addToMapMapFromBucket!1528 (t!360476 (t!360476 l!14304)) (+!2338 lt!1910535 (h!59433 (t!360476 l!14304)))))))

(declare-fun lt!1910823 () Unit!134701)

(declare-fun call!332351 () Unit!134701)

(assert (=> b!4748227 (= lt!1910823 call!332351)))

(assert (=> b!4748227 (forall!11739 (toList!6072 lt!1910535) lambda!220984)))

(declare-fun lt!1910820 () Unit!134701)

(assert (=> b!4748227 (= lt!1910820 lt!1910823)))

(assert (=> b!4748227 (forall!11739 (toList!6072 lt!1910834) lambda!220985)))

(declare-fun lt!1910829 () Unit!134701)

(declare-fun Unit!134780 () Unit!134701)

(assert (=> b!4748227 (= lt!1910829 Unit!134780)))

(assert (=> b!4748227 (forall!11739 (t!360476 (t!360476 l!14304)) lambda!220985)))

(declare-fun lt!1910817 () Unit!134701)

(declare-fun Unit!134781 () Unit!134701)

(assert (=> b!4748227 (= lt!1910817 Unit!134781)))

(declare-fun lt!1910816 () Unit!134701)

(declare-fun Unit!134782 () Unit!134701)

(assert (=> b!4748227 (= lt!1910816 Unit!134782)))

(declare-fun lt!1910819 () Unit!134701)

(assert (=> b!4748227 (= lt!1910819 (forallContained!3765 (toList!6072 lt!1910834) lambda!220985 (h!59433 (t!360476 l!14304))))))

(assert (=> b!4748227 (contains!16460 lt!1910834 (_1!30676 (h!59433 (t!360476 l!14304))))))

(declare-fun lt!1910827 () Unit!134701)

(declare-fun Unit!134783 () Unit!134701)

(assert (=> b!4748227 (= lt!1910827 Unit!134783)))

(assert (=> b!4748227 (contains!16460 lt!1910831 (_1!30676 (h!59433 (t!360476 l!14304))))))

(declare-fun lt!1910830 () Unit!134701)

(declare-fun Unit!134784 () Unit!134701)

(assert (=> b!4748227 (= lt!1910830 Unit!134784)))

(declare-fun call!332352 () Bool)

(assert (=> b!4748227 call!332352))

(declare-fun lt!1910826 () Unit!134701)

(declare-fun Unit!134785 () Unit!134701)

(assert (=> b!4748227 (= lt!1910826 Unit!134785)))

(assert (=> b!4748227 (forall!11739 (toList!6072 lt!1910834) lambda!220985)))

(declare-fun lt!1910815 () Unit!134701)

(declare-fun Unit!134786 () Unit!134701)

(assert (=> b!4748227 (= lt!1910815 Unit!134786)))

(declare-fun lt!1910835 () Unit!134701)

(declare-fun Unit!134787 () Unit!134701)

(assert (=> b!4748227 (= lt!1910835 Unit!134787)))

(declare-fun lt!1910818 () Unit!134701)

(assert (=> b!4748227 (= lt!1910818 (addForallContainsKeyThenBeforeAdding!853 lt!1910535 lt!1910831 (_1!30676 (h!59433 (t!360476 l!14304))) (_2!30676 (h!59433 (t!360476 l!14304)))))))

(assert (=> b!4748227 (forall!11739 (toList!6072 lt!1910535) lambda!220985)))

(declare-fun lt!1910832 () Unit!134701)

(assert (=> b!4748227 (= lt!1910832 lt!1910818)))

(assert (=> b!4748227 call!332353))

(declare-fun lt!1910821 () Unit!134701)

(declare-fun Unit!134788 () Unit!134701)

(assert (=> b!4748227 (= lt!1910821 Unit!134788)))

(declare-fun res!2012899 () Bool)

(assert (=> b!4748227 (= res!2012899 (forall!11739 (t!360476 l!14304) lambda!220985))))

(declare-fun e!2961742 () Bool)

(assert (=> b!4748227 (=> (not res!2012899) (not e!2961742))))

(assert (=> b!4748227 e!2961742))

(declare-fun lt!1910825 () Unit!134701)

(declare-fun Unit!134789 () Unit!134701)

(assert (=> b!4748227 (= lt!1910825 Unit!134789)))

(declare-fun b!4748228 () Bool)

(declare-fun e!2961743 () Bool)

(assert (=> b!4748228 (= e!2961743 (invariantList!1571 (toList!6072 lt!1910833)))))

(declare-fun b!4748229 () Bool)

(assert (=> b!4748229 (= e!2961742 (forall!11739 (toList!6072 lt!1910535) lambda!220985))))

(declare-fun bm!332347 () Bool)

(assert (=> bm!332347 (= call!332351 (lemmaContainsAllItsOwnKeys!854 lt!1910535))))

(declare-fun bm!332348 () Bool)

(assert (=> bm!332348 (= call!332352 (forall!11739 (ite c!810873 (toList!6072 lt!1910535) (t!360476 l!14304)) (ite c!810873 lambda!220983 lambda!220985)))))

(assert (=> d!1517501 e!2961743))

(declare-fun res!2012900 () Bool)

(assert (=> d!1517501 (=> (not res!2012900) (not e!2961743))))

(assert (=> d!1517501 (= res!2012900 (forall!11739 (t!360476 l!14304) lambda!220986))))

(assert (=> d!1517501 (= lt!1910833 e!2961744)))

(assert (=> d!1517501 (= c!810873 ((_ is Nil!53036) (t!360476 l!14304)))))

(assert (=> d!1517501 (noDuplicateKeys!2102 (t!360476 l!14304))))

(assert (=> d!1517501 (= (addToMapMapFromBucket!1528 (t!360476 l!14304) lt!1910535) lt!1910833)))

(declare-fun b!4748230 () Bool)

(declare-fun res!2012901 () Bool)

(assert (=> b!4748230 (=> (not res!2012901) (not e!2961743))))

(assert (=> b!4748230 (= res!2012901 (forall!11739 (toList!6072 lt!1910535) lambda!220986))))

(assert (=> b!4748231 (= e!2961744 lt!1910535)))

(declare-fun lt!1910822 () Unit!134701)

(assert (=> b!4748231 (= lt!1910822 call!332351)))

(assert (=> b!4748231 call!332352))

(declare-fun lt!1910828 () Unit!134701)

(assert (=> b!4748231 (= lt!1910828 lt!1910822)))

(assert (=> b!4748231 call!332353))

(declare-fun lt!1910824 () Unit!134701)

(declare-fun Unit!134790 () Unit!134701)

(assert (=> b!4748231 (= lt!1910824 Unit!134790)))

(assert (= (and d!1517501 c!810873) b!4748231))

(assert (= (and d!1517501 (not c!810873)) b!4748227))

(assert (= (and b!4748227 res!2012899) b!4748229))

(assert (= (or b!4748231 b!4748227) bm!332347))

(assert (= (or b!4748231 b!4748227) bm!332346))

(assert (= (or b!4748231 b!4748227) bm!332348))

(assert (= (and d!1517501 res!2012900) b!4748230))

(assert (= (and b!4748230 res!2012901) b!4748228))

(declare-fun m!5706513 () Bool)

(assert (=> bm!332348 m!5706513))

(declare-fun m!5706515 () Bool)

(assert (=> b!4748228 m!5706515))

(assert (=> bm!332347 m!5706473))

(declare-fun m!5706517 () Bool)

(assert (=> d!1517501 m!5706517))

(assert (=> d!1517501 m!5706279))

(declare-fun m!5706519 () Bool)

(assert (=> bm!332346 m!5706519))

(declare-fun m!5706521 () Bool)

(assert (=> b!4748230 m!5706521))

(declare-fun m!5706523 () Bool)

(assert (=> b!4748229 m!5706523))

(declare-fun m!5706525 () Bool)

(assert (=> b!4748227 m!5706525))

(declare-fun m!5706527 () Bool)

(assert (=> b!4748227 m!5706527))

(assert (=> b!4748227 m!5706525))

(declare-fun m!5706529 () Bool)

(assert (=> b!4748227 m!5706529))

(declare-fun m!5706531 () Bool)

(assert (=> b!4748227 m!5706531))

(declare-fun m!5706533 () Bool)

(assert (=> b!4748227 m!5706533))

(declare-fun m!5706535 () Bool)

(assert (=> b!4748227 m!5706535))

(declare-fun m!5706537 () Bool)

(assert (=> b!4748227 m!5706537))

(declare-fun m!5706539 () Bool)

(assert (=> b!4748227 m!5706539))

(declare-fun m!5706541 () Bool)

(assert (=> b!4748227 m!5706541))

(assert (=> b!4748227 m!5706523))

(assert (=> b!4748227 m!5706533))

(declare-fun m!5706543 () Bool)

(assert (=> b!4748227 m!5706543))

(assert (=> b!4748121 d!1517501))

(declare-fun d!1517503 () Bool)

(declare-fun res!2012902 () Bool)

(declare-fun e!2961745 () Bool)

(assert (=> d!1517503 (=> res!2012902 e!2961745)))

(assert (=> d!1517503 (= res!2012902 (not ((_ is Cons!53036) (Cons!53036 t!14174 l!14304))))))

(assert (=> d!1517503 (= (noDuplicateKeys!2102 (Cons!53036 t!14174 l!14304)) e!2961745)))

(declare-fun b!4748232 () Bool)

(declare-fun e!2961746 () Bool)

(assert (=> b!4748232 (= e!2961745 e!2961746)))

(declare-fun res!2012903 () Bool)

(assert (=> b!4748232 (=> (not res!2012903) (not e!2961746))))

(assert (=> b!4748232 (= res!2012903 (not (containsKey!3529 (t!360476 (Cons!53036 t!14174 l!14304)) (_1!30676 (h!59433 (Cons!53036 t!14174 l!14304))))))))

(declare-fun b!4748233 () Bool)

(assert (=> b!4748233 (= e!2961746 (noDuplicateKeys!2102 (t!360476 (Cons!53036 t!14174 l!14304))))))

(assert (= (and d!1517503 (not res!2012902)) b!4748232))

(assert (= (and b!4748232 res!2012903) b!4748233))

(declare-fun m!5706545 () Bool)

(assert (=> b!4748232 m!5706545))

(declare-fun m!5706547 () Bool)

(assert (=> b!4748233 m!5706547))

(assert (=> b!4748120 d!1517503))

(declare-fun tp!1349812 () Bool)

(declare-fun e!2961749 () Bool)

(declare-fun b!4748238 () Bool)

(assert (=> b!4748238 (= e!2961749 (and tp_is_empty!31701 tp_is_empty!31703 tp!1349812))))

(assert (=> b!4748117 (= tp!1349805 e!2961749)))

(assert (= (and b!4748117 ((_ is Cons!53036) (toList!6072 acc!1214))) b!4748238))

(declare-fun e!2961750 () Bool)

(declare-fun b!4748239 () Bool)

(declare-fun tp!1349813 () Bool)

(assert (=> b!4748239 (= e!2961750 (and tp_is_empty!31701 tp_is_empty!31703 tp!1349813))))

(assert (=> b!4748119 (= tp!1349804 e!2961750)))

(assert (= (and b!4748119 ((_ is Cons!53036) (t!360476 l!14304))) b!4748239))

(check-sat (not b!4748171) (not b!4748208) (not d!1517495) (not d!1517497) (not b!4748225) (not b!4748215) (not bm!332341) (not b!4748214) (not b!4748224) (not b!4748229) tp_is_empty!31703 (not b!4748202) (not b!4748220) (not bm!332340) (not b!4748233) (not b!4748200) (not b!4748223) (not d!1517481) (not b!4748228) (not b!4748239) (not d!1517499) (not bm!332348) (not bm!332345) (not bm!332347) (not b!4748201) (not bm!332344) (not d!1517471) (not d!1517491) (not b!4748232) (not d!1517447) (not bm!332343) (not d!1517501) (not bm!332332) (not b!4748238) (not b!4748209) (not d!1517483) (not bm!332346) (not d!1517487) (not d!1517449) (not b!4748227) (not b!4748230) (not b!4748219) (not b!4748172) (not bm!332333) (not bm!332331) (not b!4748222) (not b!4748170) (not bm!332342) (not b!4748173) tp_is_empty!31701 (not b!4748198) (not b!4748197) (not b!4748221) (not b!4748218) (not d!1517489) (not b!4748199))
(check-sat)
