; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!471202 () Bool)

(assert start!471202)

(declare-fun b!4671150 () Bool)

(declare-fun res!1966478 () Bool)

(declare-fun e!2915015 () Bool)

(assert (=> b!4671150 (=> (not res!1966478) (not e!2915015))))

(declare-datatypes ((K!13423 0))(
  ( (K!13424 (val!19009 Int)) )
))
(declare-datatypes ((V!13669 0))(
  ( (V!13670 (val!19010 Int)) )
))
(declare-datatypes ((tuple2!53242 0))(
  ( (tuple2!53243 (_1!29915 K!13423) (_2!29915 V!13669)) )
))
(declare-datatypes ((List!52178 0))(
  ( (Nil!52054) (Cons!52054 (h!58234 tuple2!53242) (t!359316 List!52178)) )
))
(declare-fun l!12991 () List!52178)

(assert (=> b!4671150 (= res!1966478 (is-Cons!52054 l!12991))))

(declare-fun b!4671151 () Bool)

(declare-fun e!2915014 () Bool)

(declare-fun ListPrimitiveSize!332 (List!52178) Int)

(assert (=> b!4671151 (= e!2915014 (< (ListPrimitiveSize!332 (t!359316 l!12991)) (ListPrimitiveSize!332 l!12991)))))

(declare-fun b!4671152 () Bool)

(assert (=> b!4671152 (= e!2915015 (not e!2915014))))

(declare-fun res!1966476 () Bool)

(assert (=> b!4671152 (=> res!1966476 e!2915014)))

(declare-fun key!4532 () K!13423)

(declare-fun containsKey!2853 (List!52178 K!13423) Bool)

(assert (=> b!4671152 (= res!1966476 (containsKey!2853 (t!359316 l!12991) key!4532))))

(declare-datatypes ((ListMap!4679 0))(
  ( (ListMap!4680 (toList!5317 List!52178)) )
))
(declare-fun lt!1833017 () ListMap!4679)

(declare-fun lhm!57 () ListMap!4679)

(declare-fun -!637 (ListMap!4679 K!13423) ListMap!4679)

(declare-fun +!2037 (ListMap!4679 tuple2!53242) ListMap!4679)

(assert (=> b!4671152 (= (-!637 lt!1833017 key!4532) (+!2037 (-!637 lhm!57 key!4532) (h!58234 l!12991)))))

(declare-datatypes ((Unit!121144 0))(
  ( (Unit!121145) )
))
(declare-fun lt!1833016 () Unit!121144)

(declare-fun addRemoveCommutativeForDiffKeys!74 (ListMap!4679 K!13423 V!13669 K!13423) Unit!121144)

(assert (=> b!4671152 (= lt!1833016 (addRemoveCommutativeForDiffKeys!74 lhm!57 (_1!29915 (h!58234 l!12991)) (_2!29915 (h!58234 l!12991)) key!4532))))

(assert (=> b!4671152 (= lt!1833017 (+!2037 lhm!57 (h!58234 l!12991)))))

(declare-fun b!4671153 () Bool)

(declare-fun res!1966479 () Bool)

(assert (=> b!4671153 (=> (not res!1966479) (not e!2915015))))

(declare-fun noDuplicateKeys!1709 (List!52178) Bool)

(assert (=> b!4671153 (= res!1966479 (noDuplicateKeys!1709 l!12991))))

(declare-fun b!4671154 () Bool)

(declare-fun e!2915016 () Bool)

(declare-fun tp!1343923 () Bool)

(assert (=> b!4671154 (= e!2915016 tp!1343923)))

(declare-fun b!4671155 () Bool)

(declare-fun tp_is_empty!30129 () Bool)

(declare-fun e!2915013 () Bool)

(declare-fun tp_is_empty!30131 () Bool)

(declare-fun tp!1343922 () Bool)

(assert (=> b!4671155 (= e!2915013 (and tp_is_empty!30129 tp_is_empty!30131 tp!1343922))))

(declare-fun res!1966477 () Bool)

(assert (=> start!471202 (=> (not res!1966477) (not e!2915015))))

(assert (=> start!471202 (= res!1966477 (not (containsKey!2853 l!12991 key!4532)))))

(assert (=> start!471202 e!2915015))

(assert (=> start!471202 e!2915013))

(assert (=> start!471202 tp_is_empty!30129))

(declare-fun inv!67298 (ListMap!4679) Bool)

(assert (=> start!471202 (and (inv!67298 lhm!57) e!2915016)))

(declare-fun b!4671149 () Bool)

(declare-fun res!1966475 () Bool)

(assert (=> b!4671149 (=> res!1966475 e!2915014)))

(assert (=> b!4671149 (= res!1966475 (not (noDuplicateKeys!1709 (t!359316 l!12991))))))

(assert (= (and start!471202 res!1966477) b!4671153))

(assert (= (and b!4671153 res!1966479) b!4671150))

(assert (= (and b!4671150 res!1966478) b!4671152))

(assert (= (and b!4671152 (not res!1966476)) b!4671149))

(assert (= (and b!4671149 (not res!1966475)) b!4671151))

(assert (= (and start!471202 (is-Cons!52054 l!12991)) b!4671155))

(assert (= start!471202 b!4671154))

(declare-fun m!5564543 () Bool)

(assert (=> b!4671152 m!5564543))

(declare-fun m!5564545 () Bool)

(assert (=> b!4671152 m!5564545))

(declare-fun m!5564547 () Bool)

(assert (=> b!4671152 m!5564547))

(declare-fun m!5564549 () Bool)

(assert (=> b!4671152 m!5564549))

(declare-fun m!5564551 () Bool)

(assert (=> b!4671152 m!5564551))

(assert (=> b!4671152 m!5564547))

(declare-fun m!5564553 () Bool)

(assert (=> b!4671152 m!5564553))

(declare-fun m!5564555 () Bool)

(assert (=> b!4671149 m!5564555))

(declare-fun m!5564557 () Bool)

(assert (=> start!471202 m!5564557))

(declare-fun m!5564559 () Bool)

(assert (=> start!471202 m!5564559))

(declare-fun m!5564561 () Bool)

(assert (=> b!4671151 m!5564561))

(declare-fun m!5564563 () Bool)

(assert (=> b!4671151 m!5564563))

(declare-fun m!5564565 () Bool)

(assert (=> b!4671153 m!5564565))

(push 1)

(assert (not b!4671154))

(assert (not b!4671149))

(assert (not start!471202))

(assert (not b!4671152))

(assert (not b!4671153))

(assert tp_is_empty!30131)

(assert (not b!4671151))

(assert (not b!4671155))

(assert tp_is_empty!30129)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1485395 () Bool)

(declare-fun res!1966503 () Bool)

(declare-fun e!2915037 () Bool)

(assert (=> d!1485395 (=> res!1966503 e!2915037)))

(assert (=> d!1485395 (= res!1966503 (not (is-Cons!52054 l!12991)))))

(assert (=> d!1485395 (= (noDuplicateKeys!1709 l!12991) e!2915037)))

(declare-fun b!4671185 () Bool)

(declare-fun e!2915038 () Bool)

(assert (=> b!4671185 (= e!2915037 e!2915038)))

(declare-fun res!1966504 () Bool)

(assert (=> b!4671185 (=> (not res!1966504) (not e!2915038))))

(assert (=> b!4671185 (= res!1966504 (not (containsKey!2853 (t!359316 l!12991) (_1!29915 (h!58234 l!12991)))))))

(declare-fun b!4671186 () Bool)

(assert (=> b!4671186 (= e!2915038 (noDuplicateKeys!1709 (t!359316 l!12991)))))

(assert (= (and d!1485395 (not res!1966503)) b!4671185))

(assert (= (and b!4671185 res!1966504) b!4671186))

(declare-fun m!5564591 () Bool)

(assert (=> b!4671185 m!5564591))

(assert (=> b!4671186 m!5564555))

(assert (=> b!4671153 d!1485395))

(declare-fun d!1485399 () Bool)

(declare-fun e!2915049 () Bool)

(assert (=> d!1485399 e!2915049))

(declare-fun res!1966515 () Bool)

(assert (=> d!1485399 (=> (not res!1966515) (not e!2915049))))

(declare-fun lt!1833026 () ListMap!4679)

(declare-fun contains!15250 (ListMap!4679 K!13423) Bool)

(assert (=> d!1485399 (= res!1966515 (not (contains!15250 lt!1833026 key!4532)))))

(declare-fun removePresrvNoDuplicatedKeys!314 (List!52178 K!13423) List!52178)

(assert (=> d!1485399 (= lt!1833026 (ListMap!4680 (removePresrvNoDuplicatedKeys!314 (toList!5317 lhm!57) key!4532)))))

(assert (=> d!1485399 (= (-!637 lhm!57 key!4532) lt!1833026)))

(declare-fun b!4671197 () Bool)

(declare-datatypes ((List!52180 0))(
  ( (Nil!52056) (Cons!52056 (h!58236 K!13423) (t!359318 List!52180)) )
))
(declare-fun content!9074 (List!52180) (Set K!13423))

(declare-fun keys!18497 (ListMap!4679) List!52180)

(assert (=> b!4671197 (= e!2915049 (= (set.minus (content!9074 (keys!18497 lhm!57)) (set.insert key!4532 (as set.empty (Set K!13423)))) (content!9074 (keys!18497 lt!1833026))))))

(assert (= (and d!1485399 res!1966515) b!4671197))

(declare-fun m!5564599 () Bool)

(assert (=> d!1485399 m!5564599))

(declare-fun m!5564601 () Bool)

(assert (=> d!1485399 m!5564601))

(declare-fun m!5564603 () Bool)

(assert (=> b!4671197 m!5564603))

(declare-fun m!5564605 () Bool)

(assert (=> b!4671197 m!5564605))

(assert (=> b!4671197 m!5564603))

(declare-fun m!5564607 () Bool)

(assert (=> b!4671197 m!5564607))

(assert (=> b!4671197 m!5564605))

(declare-fun m!5564609 () Bool)

(assert (=> b!4671197 m!5564609))

(declare-fun m!5564611 () Bool)

(assert (=> b!4671197 m!5564611))

(assert (=> b!4671152 d!1485399))

(declare-fun d!1485407 () Bool)

(declare-fun res!1966520 () Bool)

(declare-fun e!2915054 () Bool)

(assert (=> d!1485407 (=> res!1966520 e!2915054)))

(assert (=> d!1485407 (= res!1966520 (and (is-Cons!52054 (t!359316 l!12991)) (= (_1!29915 (h!58234 (t!359316 l!12991))) key!4532)))))

(assert (=> d!1485407 (= (containsKey!2853 (t!359316 l!12991) key!4532) e!2915054)))

(declare-fun b!4671202 () Bool)

(declare-fun e!2915055 () Bool)

(assert (=> b!4671202 (= e!2915054 e!2915055)))

(declare-fun res!1966521 () Bool)

(assert (=> b!4671202 (=> (not res!1966521) (not e!2915055))))

(assert (=> b!4671202 (= res!1966521 (is-Cons!52054 (t!359316 l!12991)))))

(declare-fun b!4671203 () Bool)

(assert (=> b!4671203 (= e!2915055 (containsKey!2853 (t!359316 (t!359316 l!12991)) key!4532))))

(assert (= (and d!1485407 (not res!1966520)) b!4671202))

(assert (= (and b!4671202 res!1966521) b!4671203))

(declare-fun m!5564613 () Bool)

(assert (=> b!4671203 m!5564613))

(assert (=> b!4671152 d!1485407))

(declare-fun d!1485409 () Bool)

(assert (=> d!1485409 (= (-!637 (+!2037 lhm!57 (tuple2!53243 (_1!29915 (h!58234 l!12991)) (_2!29915 (h!58234 l!12991)))) key!4532) (+!2037 (-!637 lhm!57 key!4532) (tuple2!53243 (_1!29915 (h!58234 l!12991)) (_2!29915 (h!58234 l!12991)))))))

(declare-fun lt!1833032 () Unit!121144)

(declare-fun choose!32331 (ListMap!4679 K!13423 V!13669 K!13423) Unit!121144)

(assert (=> d!1485409 (= lt!1833032 (choose!32331 lhm!57 (_1!29915 (h!58234 l!12991)) (_2!29915 (h!58234 l!12991)) key!4532))))

(assert (=> d!1485409 (not (= (_1!29915 (h!58234 l!12991)) key!4532))))

(assert (=> d!1485409 (= (addRemoveCommutativeForDiffKeys!74 lhm!57 (_1!29915 (h!58234 l!12991)) (_2!29915 (h!58234 l!12991)) key!4532) lt!1833032)))

(declare-fun bs!1078848 () Bool)

(assert (= bs!1078848 d!1485409))

(assert (=> bs!1078848 m!5564547))

(declare-fun m!5564629 () Bool)

(assert (=> bs!1078848 m!5564629))

(declare-fun m!5564631 () Bool)

(assert (=> bs!1078848 m!5564631))

(assert (=> bs!1078848 m!5564547))

(declare-fun m!5564633 () Bool)

(assert (=> bs!1078848 m!5564633))

(assert (=> bs!1078848 m!5564629))

(declare-fun m!5564635 () Bool)

(assert (=> bs!1078848 m!5564635))

(assert (=> b!4671152 d!1485409))

(declare-fun d!1485413 () Bool)

(declare-fun e!2915067 () Bool)

(assert (=> d!1485413 e!2915067))

(declare-fun res!1966539 () Bool)

(assert (=> d!1485413 (=> (not res!1966539) (not e!2915067))))

(declare-fun lt!1833057 () ListMap!4679)

(assert (=> d!1485413 (= res!1966539 (contains!15250 lt!1833057 (_1!29915 (h!58234 l!12991))))))

(declare-fun lt!1833055 () List!52178)

(assert (=> d!1485413 (= lt!1833057 (ListMap!4680 lt!1833055))))

(declare-fun lt!1833054 () Unit!121144)

(declare-fun lt!1833056 () Unit!121144)

(assert (=> d!1485413 (= lt!1833054 lt!1833056)))

(declare-datatypes ((Option!11935 0))(
  ( (None!11934) (Some!11934 (v!46294 V!13669)) )
))
(declare-fun getValueByKey!1683 (List!52178 K!13423) Option!11935)

(assert (=> d!1485413 (= (getValueByKey!1683 lt!1833055 (_1!29915 (h!58234 l!12991))) (Some!11934 (_2!29915 (h!58234 l!12991))))))

(declare-fun lemmaContainsTupThenGetReturnValue!957 (List!52178 K!13423 V!13669) Unit!121144)

(assert (=> d!1485413 (= lt!1833056 (lemmaContainsTupThenGetReturnValue!957 lt!1833055 (_1!29915 (h!58234 l!12991)) (_2!29915 (h!58234 l!12991))))))

(declare-fun insertNoDuplicatedKeys!465 (List!52178 K!13423 V!13669) List!52178)

(assert (=> d!1485413 (= lt!1833055 (insertNoDuplicatedKeys!465 (toList!5317 (-!637 lhm!57 key!4532)) (_1!29915 (h!58234 l!12991)) (_2!29915 (h!58234 l!12991))))))

(assert (=> d!1485413 (= (+!2037 (-!637 lhm!57 key!4532) (h!58234 l!12991)) lt!1833057)))

(declare-fun b!4671220 () Bool)

(declare-fun res!1966538 () Bool)

(assert (=> b!4671220 (=> (not res!1966538) (not e!2915067))))

(assert (=> b!4671220 (= res!1966538 (= (getValueByKey!1683 (toList!5317 lt!1833057) (_1!29915 (h!58234 l!12991))) (Some!11934 (_2!29915 (h!58234 l!12991)))))))

(declare-fun b!4671221 () Bool)

(declare-fun contains!15252 (List!52178 tuple2!53242) Bool)

(assert (=> b!4671221 (= e!2915067 (contains!15252 (toList!5317 lt!1833057) (h!58234 l!12991)))))

(assert (= (and d!1485413 res!1966539) b!4671220))

(assert (= (and b!4671220 res!1966538) b!4671221))

(declare-fun m!5564663 () Bool)

(assert (=> d!1485413 m!5564663))

(declare-fun m!5564665 () Bool)

(assert (=> d!1485413 m!5564665))

(declare-fun m!5564667 () Bool)

(assert (=> d!1485413 m!5564667))

(declare-fun m!5564669 () Bool)

(assert (=> d!1485413 m!5564669))

(declare-fun m!5564671 () Bool)

(assert (=> b!4671220 m!5564671))

(declare-fun m!5564673 () Bool)

(assert (=> b!4671221 m!5564673))

(assert (=> b!4671152 d!1485413))

(declare-fun d!1485421 () Bool)

(declare-fun e!2915068 () Bool)

(assert (=> d!1485421 e!2915068))

(declare-fun res!1966541 () Bool)

(assert (=> d!1485421 (=> (not res!1966541) (not e!2915068))))

(declare-fun lt!1833061 () ListMap!4679)

(assert (=> d!1485421 (= res!1966541 (contains!15250 lt!1833061 (_1!29915 (h!58234 l!12991))))))

(declare-fun lt!1833059 () List!52178)

(assert (=> d!1485421 (= lt!1833061 (ListMap!4680 lt!1833059))))

(declare-fun lt!1833058 () Unit!121144)

(declare-fun lt!1833060 () Unit!121144)

(assert (=> d!1485421 (= lt!1833058 lt!1833060)))

(assert (=> d!1485421 (= (getValueByKey!1683 lt!1833059 (_1!29915 (h!58234 l!12991))) (Some!11934 (_2!29915 (h!58234 l!12991))))))

(assert (=> d!1485421 (= lt!1833060 (lemmaContainsTupThenGetReturnValue!957 lt!1833059 (_1!29915 (h!58234 l!12991)) (_2!29915 (h!58234 l!12991))))))

(assert (=> d!1485421 (= lt!1833059 (insertNoDuplicatedKeys!465 (toList!5317 lhm!57) (_1!29915 (h!58234 l!12991)) (_2!29915 (h!58234 l!12991))))))

(assert (=> d!1485421 (= (+!2037 lhm!57 (h!58234 l!12991)) lt!1833061)))

(declare-fun b!4671222 () Bool)

(declare-fun res!1966540 () Bool)

(assert (=> b!4671222 (=> (not res!1966540) (not e!2915068))))

(assert (=> b!4671222 (= res!1966540 (= (getValueByKey!1683 (toList!5317 lt!1833061) (_1!29915 (h!58234 l!12991))) (Some!11934 (_2!29915 (h!58234 l!12991)))))))

(declare-fun b!4671223 () Bool)

(assert (=> b!4671223 (= e!2915068 (contains!15252 (toList!5317 lt!1833061) (h!58234 l!12991)))))

(assert (= (and d!1485421 res!1966541) b!4671222))

(assert (= (and b!4671222 res!1966540) b!4671223))

(declare-fun m!5564675 () Bool)

(assert (=> d!1485421 m!5564675))

(declare-fun m!5564677 () Bool)

(assert (=> d!1485421 m!5564677))

(declare-fun m!5564679 () Bool)

(assert (=> d!1485421 m!5564679))

(declare-fun m!5564681 () Bool)

(assert (=> d!1485421 m!5564681))

(declare-fun m!5564683 () Bool)

(assert (=> b!4671222 m!5564683))

(declare-fun m!5564685 () Bool)

(assert (=> b!4671223 m!5564685))

(assert (=> b!4671152 d!1485421))

(declare-fun d!1485423 () Bool)

(declare-fun e!2915069 () Bool)

(assert (=> d!1485423 e!2915069))

(declare-fun res!1966542 () Bool)

(assert (=> d!1485423 (=> (not res!1966542) (not e!2915069))))

(declare-fun lt!1833062 () ListMap!4679)

(assert (=> d!1485423 (= res!1966542 (not (contains!15250 lt!1833062 key!4532)))))

(assert (=> d!1485423 (= lt!1833062 (ListMap!4680 (removePresrvNoDuplicatedKeys!314 (toList!5317 lt!1833017) key!4532)))))

(assert (=> d!1485423 (= (-!637 lt!1833017 key!4532) lt!1833062)))

(declare-fun b!4671224 () Bool)

(assert (=> b!4671224 (= e!2915069 (= (set.minus (content!9074 (keys!18497 lt!1833017)) (set.insert key!4532 (as set.empty (Set K!13423)))) (content!9074 (keys!18497 lt!1833062))))))

(assert (= (and d!1485423 res!1966542) b!4671224))

(declare-fun m!5564687 () Bool)

(assert (=> d!1485423 m!5564687))

(declare-fun m!5564689 () Bool)

(assert (=> d!1485423 m!5564689))

(declare-fun m!5564691 () Bool)

(assert (=> b!4671224 m!5564691))

(declare-fun m!5564693 () Bool)

(assert (=> b!4671224 m!5564693))

(assert (=> b!4671224 m!5564691))

(declare-fun m!5564695 () Bool)

(assert (=> b!4671224 m!5564695))

(assert (=> b!4671224 m!5564693))

(declare-fun m!5564697 () Bool)

(assert (=> b!4671224 m!5564697))

(assert (=> b!4671224 m!5564611))

(assert (=> b!4671152 d!1485423))

(declare-fun d!1485425 () Bool)

(declare-fun lt!1833065 () Int)

(assert (=> d!1485425 (>= lt!1833065 0)))

(declare-fun e!2915072 () Int)

(assert (=> d!1485425 (= lt!1833065 e!2915072)))

(declare-fun c!799635 () Bool)

(assert (=> d!1485425 (= c!799635 (is-Nil!52054 (t!359316 l!12991)))))

(assert (=> d!1485425 (= (ListPrimitiveSize!332 (t!359316 l!12991)) lt!1833065)))

(declare-fun b!4671229 () Bool)

(assert (=> b!4671229 (= e!2915072 0)))

(declare-fun b!4671230 () Bool)

(assert (=> b!4671230 (= e!2915072 (+ 1 (ListPrimitiveSize!332 (t!359316 (t!359316 l!12991)))))))

(assert (= (and d!1485425 c!799635) b!4671229))

(assert (= (and d!1485425 (not c!799635)) b!4671230))

(declare-fun m!5564699 () Bool)

(assert (=> b!4671230 m!5564699))

(assert (=> b!4671151 d!1485425))

(declare-fun d!1485427 () Bool)

(declare-fun lt!1833066 () Int)

(assert (=> d!1485427 (>= lt!1833066 0)))

(declare-fun e!2915073 () Int)

(assert (=> d!1485427 (= lt!1833066 e!2915073)))

(declare-fun c!799636 () Bool)

(assert (=> d!1485427 (= c!799636 (is-Nil!52054 l!12991))))

(assert (=> d!1485427 (= (ListPrimitiveSize!332 l!12991) lt!1833066)))

(declare-fun b!4671231 () Bool)

(assert (=> b!4671231 (= e!2915073 0)))

(declare-fun b!4671232 () Bool)

(assert (=> b!4671232 (= e!2915073 (+ 1 (ListPrimitiveSize!332 (t!359316 l!12991))))))

(assert (= (and d!1485427 c!799636) b!4671231))

(assert (= (and d!1485427 (not c!799636)) b!4671232))

(assert (=> b!4671232 m!5564561))

(assert (=> b!4671151 d!1485427))

(declare-fun d!1485429 () Bool)

(declare-fun res!1966543 () Bool)

(declare-fun e!2915074 () Bool)

(assert (=> d!1485429 (=> res!1966543 e!2915074)))

(assert (=> d!1485429 (= res!1966543 (and (is-Cons!52054 l!12991) (= (_1!29915 (h!58234 l!12991)) key!4532)))))

(assert (=> d!1485429 (= (containsKey!2853 l!12991 key!4532) e!2915074)))

(declare-fun b!4671233 () Bool)

(declare-fun e!2915075 () Bool)

(assert (=> b!4671233 (= e!2915074 e!2915075)))

(declare-fun res!1966544 () Bool)

(assert (=> b!4671233 (=> (not res!1966544) (not e!2915075))))

(assert (=> b!4671233 (= res!1966544 (is-Cons!52054 l!12991))))

(declare-fun b!4671234 () Bool)

(assert (=> b!4671234 (= e!2915075 (containsKey!2853 (t!359316 l!12991) key!4532))))

(assert (= (and d!1485429 (not res!1966543)) b!4671233))

(assert (= (and b!4671233 res!1966544) b!4671234))

(assert (=> b!4671234 m!5564551))

(assert (=> start!471202 d!1485429))

(declare-fun d!1485431 () Bool)

(declare-fun invariantList!1340 (List!52178) Bool)

(assert (=> d!1485431 (= (inv!67298 lhm!57) (invariantList!1340 (toList!5317 lhm!57)))))

(declare-fun bs!1078850 () Bool)

(assert (= bs!1078850 d!1485431))

(declare-fun m!5564703 () Bool)

(assert (=> bs!1078850 m!5564703))

(assert (=> start!471202 d!1485431))

(declare-fun d!1485433 () Bool)

(declare-fun res!1966545 () Bool)

(declare-fun e!2915076 () Bool)

(assert (=> d!1485433 (=> res!1966545 e!2915076)))

(assert (=> d!1485433 (= res!1966545 (not (is-Cons!52054 (t!359316 l!12991))))))

(assert (=> d!1485433 (= (noDuplicateKeys!1709 (t!359316 l!12991)) e!2915076)))

(declare-fun b!4671235 () Bool)

(declare-fun e!2915077 () Bool)

(assert (=> b!4671235 (= e!2915076 e!2915077)))

(declare-fun res!1966546 () Bool)

(assert (=> b!4671235 (=> (not res!1966546) (not e!2915077))))

(assert (=> b!4671235 (= res!1966546 (not (containsKey!2853 (t!359316 (t!359316 l!12991)) (_1!29915 (h!58234 (t!359316 l!12991))))))))

(declare-fun b!4671236 () Bool)

(assert (=> b!4671236 (= e!2915077 (noDuplicateKeys!1709 (t!359316 (t!359316 l!12991))))))

(assert (= (and d!1485433 (not res!1966545)) b!4671235))

(assert (= (and b!4671235 res!1966546) b!4671236))

(declare-fun m!5564711 () Bool)

(assert (=> b!4671235 m!5564711))

(declare-fun m!5564713 () Bool)

(assert (=> b!4671236 m!5564713))

(assert (=> b!4671149 d!1485433))

(declare-fun tp!1343932 () Bool)

(declare-fun b!4671243 () Bool)

(declare-fun e!2915081 () Bool)

(assert (=> b!4671243 (= e!2915081 (and tp_is_empty!30129 tp_is_empty!30131 tp!1343932))))

(assert (=> b!4671155 (= tp!1343922 e!2915081)))

(assert (= (and b!4671155 (is-Cons!52054 (t!359316 l!12991))) b!4671243))

(declare-fun tp!1343933 () Bool)

(declare-fun e!2915082 () Bool)

(declare-fun b!4671244 () Bool)

(assert (=> b!4671244 (= e!2915082 (and tp_is_empty!30129 tp_is_empty!30131 tp!1343933))))

(assert (=> b!4671154 (= tp!1343923 e!2915082)))

(assert (= (and b!4671154 (is-Cons!52054 (toList!5317 lhm!57))) b!4671244))

(push 1)

(assert (not d!1485421))

(assert (not b!4671224))

(assert (not d!1485409))

(assert (not d!1485431))

(assert (not d!1485399))

(assert (not b!4671203))

(assert tp_is_empty!30131)

(assert (not b!4671186))

(assert (not b!4671220))

(assert (not b!4671223))

(assert (not b!4671243))

(assert (not d!1485423))

(assert (not b!4671232))

(assert (not b!4671222))

(assert tp_is_empty!30129)

(assert (not b!4671234))

(assert (not b!4671235))

(assert (not b!4671221))

(assert (not b!4671236))

(assert (not b!4671230))

(assert (not d!1485413))

(assert (not b!4671244))

(assert (not b!4671185))

(assert (not b!4671197))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

