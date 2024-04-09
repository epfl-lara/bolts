; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!88990 () Bool)

(assert start!88990)

(declare-fun b!1020444 () Bool)

(declare-fun res!684062 () Bool)

(declare-fun e!574445 () Bool)

(assert (=> b!1020444 (=> (not res!684062) (not e!574445))))

(declare-datatypes ((B!1736 0))(
  ( (B!1737 (val!11952 Int)) )
))
(declare-datatypes ((tuple2!15540 0))(
  ( (tuple2!15541 (_1!7780 (_ BitVec 64)) (_2!7780 B!1736)) )
))
(declare-datatypes ((List!21754 0))(
  ( (Nil!21751) (Cons!21750 (h!22948 tuple2!15540) (t!30771 List!21754)) )
))
(declare-fun l!1367 () List!21754)

(declare-fun lt!449851 () tuple2!15540)

(assert (=> b!1020444 (= res!684062 (and (is-Cons!21750 l!1367) (not (= (h!22948 l!1367) lt!449851))))))

(declare-fun b!1020445 () Bool)

(declare-fun res!684061 () Bool)

(assert (=> b!1020445 (=> (not res!684061) (not e!574445))))

(declare-fun isStrictlySorted!701 (List!21754) Bool)

(assert (=> b!1020445 (= res!684061 (isStrictlySorted!701 (t!30771 l!1367)))))

(declare-fun b!1020446 () Bool)

(declare-fun ListPrimitiveSize!142 (List!21754) Int)

(assert (=> b!1020446 (= e!574445 (>= (ListPrimitiveSize!142 (t!30771 l!1367)) (ListPrimitiveSize!142 l!1367)))))

(declare-fun b!1020447 () Bool)

(declare-fun res!684059 () Bool)

(assert (=> b!1020447 (=> (not res!684059) (not e!574445))))

(declare-fun contains!5945 (List!21754 tuple2!15540) Bool)

(assert (=> b!1020447 (= res!684059 (contains!5945 (t!30771 l!1367) lt!449851))))

(declare-fun b!1020448 () Bool)

(declare-fun e!574447 () Bool)

(assert (=> b!1020448 (= e!574447 e!574445)))

(declare-fun res!684063 () Bool)

(assert (=> b!1020448 (=> (not res!684063) (not e!574445))))

(assert (=> b!1020448 (= res!684063 (contains!5945 l!1367 lt!449851))))

(declare-fun key!393 () (_ BitVec 64))

(declare-fun value!188 () B!1736)

(assert (=> b!1020448 (= lt!449851 (tuple2!15541 key!393 value!188))))

(declare-fun res!684060 () Bool)

(assert (=> start!88990 (=> (not res!684060) (not e!574447))))

(assert (=> start!88990 (= res!684060 (isStrictlySorted!701 l!1367))))

(assert (=> start!88990 e!574447))

(declare-fun e!574446 () Bool)

(assert (=> start!88990 e!574446))

(assert (=> start!88990 true))

(declare-fun tp_is_empty!23803 () Bool)

(assert (=> start!88990 tp_is_empty!23803))

(declare-fun b!1020449 () Bool)

(declare-fun tp!71273 () Bool)

(assert (=> b!1020449 (= e!574446 (and tp_is_empty!23803 tp!71273))))

(assert (= (and start!88990 res!684060) b!1020448))

(assert (= (and b!1020448 res!684063) b!1020444))

(assert (= (and b!1020444 res!684062) b!1020445))

(assert (= (and b!1020445 res!684061) b!1020447))

(assert (= (and b!1020447 res!684059) b!1020446))

(assert (= (and start!88990 (is-Cons!21750 l!1367)) b!1020449))

(declare-fun m!940495 () Bool)

(assert (=> b!1020446 m!940495))

(declare-fun m!940497 () Bool)

(assert (=> b!1020446 m!940497))

(declare-fun m!940499 () Bool)

(assert (=> b!1020447 m!940499))

(declare-fun m!940501 () Bool)

(assert (=> b!1020445 m!940501))

(declare-fun m!940503 () Bool)

(assert (=> b!1020448 m!940503))

(declare-fun m!940505 () Bool)

(assert (=> start!88990 m!940505))

(push 1)

(assert (not b!1020449))

(assert tp_is_empty!23803)

(assert (not b!1020445))

(assert (not b!1020448))

(assert (not start!88990))

(assert (not b!1020447))

(assert (not b!1020446))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!122329 () Bool)

(declare-fun lt!449863 () Bool)

(declare-fun content!503 (List!21754) (Set tuple2!15540))

(assert (=> d!122329 (= lt!449863 (set.member lt!449851 (content!503 l!1367)))))

(declare-fun e!574473 () Bool)

(assert (=> d!122329 (= lt!449863 e!574473)))

(declare-fun res!684099 () Bool)

(assert (=> d!122329 (=> (not res!684099) (not e!574473))))

(assert (=> d!122329 (= res!684099 (is-Cons!21750 l!1367))))

(assert (=> d!122329 (= (contains!5945 l!1367 lt!449851) lt!449863)))

(declare-fun b!1020496 () Bool)

(declare-fun e!574474 () Bool)

(assert (=> b!1020496 (= e!574473 e!574474)))

(declare-fun res!684098 () Bool)

(assert (=> b!1020496 (=> res!684098 e!574474)))

(assert (=> b!1020496 (= res!684098 (= (h!22948 l!1367) lt!449851))))

(declare-fun b!1020497 () Bool)

(assert (=> b!1020497 (= e!574474 (contains!5945 (t!30771 l!1367) lt!449851))))

(assert (= (and d!122329 res!684099) b!1020496))

(assert (= (and b!1020496 (not res!684098)) b!1020497))

(declare-fun m!940533 () Bool)

(assert (=> d!122329 m!940533))

(declare-fun m!940535 () Bool)

(assert (=> d!122329 m!940535))

(assert (=> b!1020497 m!940499))

(assert (=> b!1020448 d!122329))

(declare-fun d!122339 () Bool)

(declare-fun res!684108 () Bool)

(declare-fun e!574488 () Bool)

(assert (=> d!122339 (=> res!684108 e!574488)))

(assert (=> d!122339 (= res!684108 (or (is-Nil!21751 (t!30771 l!1367)) (is-Nil!21751 (t!30771 (t!30771 l!1367)))))))

(assert (=> d!122339 (= (isStrictlySorted!701 (t!30771 l!1367)) e!574488)))

(declare-fun b!1020516 () Bool)

(declare-fun e!574489 () Bool)

(assert (=> b!1020516 (= e!574488 e!574489)))

(declare-fun res!684109 () Bool)

(assert (=> b!1020516 (=> (not res!684109) (not e!574489))))

(assert (=> b!1020516 (= res!684109 (bvslt (_1!7780 (h!22948 (t!30771 l!1367))) (_1!7780 (h!22948 (t!30771 (t!30771 l!1367))))))))

(declare-fun b!1020517 () Bool)

(assert (=> b!1020517 (= e!574489 (isStrictlySorted!701 (t!30771 (t!30771 l!1367))))))

(assert (= (and d!122339 (not res!684108)) b!1020516))

(assert (= (and b!1020516 res!684109) b!1020517))

(declare-fun m!940539 () Bool)

(assert (=> b!1020517 m!940539))

(assert (=> b!1020445 d!122339))

(declare-fun d!122345 () Bool)

(declare-fun lt!449874 () Int)

(assert (=> d!122345 (>= lt!449874 0)))

(declare-fun e!574500 () Int)

(assert (=> d!122345 (= lt!449874 e!574500)))

(declare-fun c!103457 () Bool)

(assert (=> d!122345 (= c!103457 (is-Nil!21751 (t!30771 l!1367)))))

(assert (=> d!122345 (= (ListPrimitiveSize!142 (t!30771 l!1367)) lt!449874)))

(declare-fun b!1020530 () Bool)

(assert (=> b!1020530 (= e!574500 0)))

(declare-fun b!1020531 () Bool)

(assert (=> b!1020531 (= e!574500 (+ 1 (ListPrimitiveSize!142 (t!30771 (t!30771 l!1367)))))))

(assert (= (and d!122345 c!103457) b!1020530))

(assert (= (and d!122345 (not c!103457)) b!1020531))

(declare-fun m!940547 () Bool)

(assert (=> b!1020531 m!940547))

(assert (=> b!1020446 d!122345))

(declare-fun d!122351 () Bool)

(declare-fun lt!449875 () Int)

(assert (=> d!122351 (>= lt!449875 0)))

(declare-fun e!574505 () Int)

(assert (=> d!122351 (= lt!449875 e!574505)))

(declare-fun c!103458 () Bool)

(assert (=> d!122351 (= c!103458 (is-Nil!21751 l!1367))))

(assert (=> d!122351 (= (ListPrimitiveSize!142 l!1367) lt!449875)))

(declare-fun b!1020536 () Bool)

(assert (=> b!1020536 (= e!574505 0)))

(declare-fun b!1020537 () Bool)

(assert (=> b!1020537 (= e!574505 (+ 1 (ListPrimitiveSize!142 (t!30771 l!1367))))))

(assert (= (and d!122351 c!103458) b!1020536))

(assert (= (and d!122351 (not c!103458)) b!1020537))

(assert (=> b!1020537 m!940495))

(assert (=> b!1020446 d!122351))

(declare-fun d!122353 () Bool)

(declare-fun lt!449876 () Bool)

(assert (=> d!122353 (= lt!449876 (set.member lt!449851 (content!503 (t!30771 l!1367))))))

(declare-fun e!574506 () Bool)

(assert (=> d!122353 (= lt!449876 e!574506)))

(declare-fun res!684123 () Bool)

(assert (=> d!122353 (=> (not res!684123) (not e!574506))))

(assert (=> d!122353 (= res!684123 (is-Cons!21750 (t!30771 l!1367)))))

(assert (=> d!122353 (= (contains!5945 (t!30771 l!1367) lt!449851) lt!449876)))

(declare-fun b!1020538 () Bool)

(declare-fun e!574507 () Bool)

(assert (=> b!1020538 (= e!574506 e!574507)))

(declare-fun res!684122 () Bool)

(assert (=> b!1020538 (=> res!684122 e!574507)))

(assert (=> b!1020538 (= res!684122 (= (h!22948 (t!30771 l!1367)) lt!449851))))

(declare-fun b!1020539 () Bool)

(assert (=> b!1020539 (= e!574507 (contains!5945 (t!30771 (t!30771 l!1367)) lt!449851))))

(assert (= (and d!122353 res!684123) b!1020538))

(assert (= (and b!1020538 (not res!684122)) b!1020539))

(declare-fun m!940549 () Bool)

(assert (=> d!122353 m!940549))

(declare-fun m!940551 () Bool)

(assert (=> d!122353 m!940551))

(declare-fun m!940553 () Bool)

(assert (=> b!1020539 m!940553))

(assert (=> b!1020447 d!122353))

(declare-fun d!122355 () Bool)

(declare-fun res!684124 () Bool)

(declare-fun e!574508 () Bool)

(assert (=> d!122355 (=> res!684124 e!574508)))

(assert (=> d!122355 (= res!684124 (or (is-Nil!21751 l!1367) (is-Nil!21751 (t!30771 l!1367))))))

(assert (=> d!122355 (= (isStrictlySorted!701 l!1367) e!574508)))

(declare-fun b!1020540 () Bool)

(declare-fun e!574509 () Bool)

(assert (=> b!1020540 (= e!574508 e!574509)))

(declare-fun res!684125 () Bool)

(assert (=> b!1020540 (=> (not res!684125) (not e!574509))))

(assert (=> b!1020540 (= res!684125 (bvslt (_1!7780 (h!22948 l!1367)) (_1!7780 (h!22948 (t!30771 l!1367)))))))

(declare-fun b!1020541 () Bool)

(assert (=> b!1020541 (= e!574509 (isStrictlySorted!701 (t!30771 l!1367)))))

(assert (= (and d!122355 (not res!684124)) b!1020540))

(assert (= (and b!1020540 res!684125) b!1020541))

(assert (=> b!1020541 m!940501))

(assert (=> start!88990 d!122355))

(declare-fun b!1020556 () Bool)

(declare-fun e!574522 () Bool)

(declare-fun tp!71282 () Bool)

(assert (=> b!1020556 (= e!574522 (and tp_is_empty!23803 tp!71282))))

(assert (=> b!1020449 (= tp!71273 e!574522)))

(assert (= (and b!1020449 (is-Cons!21750 (t!30771 l!1367))) b!1020556))

(push 1)

(assert tp_is_empty!23803)

(assert (not b!1020539))

(assert (not b!1020531))

(assert (not b!1020537))

(assert (not d!122353))

(assert (not b!1020497))

(assert (not b!1020541))

(assert (not b!1020517))

(assert (not b!1020556))

(assert (not d!122329))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

