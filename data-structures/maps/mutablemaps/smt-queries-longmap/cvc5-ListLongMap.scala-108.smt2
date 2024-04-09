; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!1764 () Bool)

(assert start!1764)

(declare-fun b!12402 () Bool)

(declare-fun e!7409 () Bool)

(declare-fun tp_is_empty!625 () Bool)

(declare-fun tp!2078 () Bool)

(assert (=> b!12402 (= e!7409 (and tp_is_empty!625 tp!2078))))

(declare-fun b!12403 () Bool)

(declare-fun e!7408 () Bool)

(declare-fun e!7407 () Bool)

(assert (=> b!12403 (= e!7408 e!7407)))

(declare-fun res!9995 () Bool)

(assert (=> b!12403 (=> (not res!9995) (not e!7407))))

(declare-datatypes ((B!452 0))(
  ( (B!453 (val!321 Int)) )
))
(declare-datatypes ((Option!53 0))(
  ( (Some!52 (v!1367 B!452)) (None!51) )
))
(declare-fun lt!3134 () Option!53)

(declare-fun key!303 () (_ BitVec 64))

(declare-datatypes ((tuple2!424 0))(
  ( (tuple2!425 (_1!212 (_ BitVec 64)) (_2!212 B!452)) )
))
(declare-datatypes ((List!368 0))(
  ( (Nil!365) (Cons!364 (h!930 tuple2!424) (t!2755 List!368)) )
))
(declare-fun l!1094 () List!368)

(declare-fun getValueByKey!47 (List!368 (_ BitVec 64)) Option!53)

(assert (=> b!12403 (= res!9995 (= (getValueByKey!47 l!1094 key!303) lt!3134))))

(declare-fun v!194 () B!452)

(assert (=> b!12403 (= lt!3134 (Some!52 v!194))))

(declare-fun b!12404 () Bool)

(declare-fun lt!3135 () tuple2!424)

(declare-fun contains!173 (List!368 tuple2!424) Bool)

(assert (=> b!12404 (= e!7407 (not (contains!173 l!1094 lt!3135)))))

(assert (=> b!12404 (contains!173 (t!2755 l!1094) lt!3135)))

(assert (=> b!12404 (= lt!3135 (tuple2!425 key!303 v!194))))

(declare-datatypes ((Unit!266 0))(
  ( (Unit!267) )
))
(declare-fun lt!3133 () Unit!266)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!4 (List!368 (_ BitVec 64) B!452) Unit!266)

(assert (=> b!12404 (= lt!3133 (lemmaGetValueByKeyImpliesContainsTuple!4 (t!2755 l!1094) key!303 v!194))))

(declare-fun res!9996 () Bool)

(assert (=> start!1764 (=> (not res!9996) (not e!7408))))

(declare-fun isStrictlySorted!65 (List!368) Bool)

(assert (=> start!1764 (= res!9996 (isStrictlySorted!65 l!1094))))

(assert (=> start!1764 e!7408))

(assert (=> start!1764 e!7409))

(assert (=> start!1764 tp_is_empty!625))

(assert (=> start!1764 true))

(declare-fun b!12405 () Bool)

(declare-fun res!9994 () Bool)

(assert (=> b!12405 (=> (not res!9994) (not e!7407))))

(assert (=> b!12405 (= res!9994 (and (is-Cons!364 l!1094) (not (= (_1!212 (h!930 l!1094)) key!303))))))

(declare-fun b!12406 () Bool)

(declare-fun res!9993 () Bool)

(assert (=> b!12406 (=> (not res!9993) (not e!7407))))

(assert (=> b!12406 (= res!9993 (= (getValueByKey!47 (t!2755 l!1094) key!303) lt!3134))))

(declare-fun b!12407 () Bool)

(declare-fun res!9997 () Bool)

(assert (=> b!12407 (=> (not res!9997) (not e!7407))))

(assert (=> b!12407 (= res!9997 (isStrictlySorted!65 (t!2755 l!1094)))))

(assert (= (and start!1764 res!9996) b!12403))

(assert (= (and b!12403 res!9995) b!12405))

(assert (= (and b!12405 res!9994) b!12407))

(assert (= (and b!12407 res!9997) b!12406))

(assert (= (and b!12406 res!9993) b!12404))

(assert (= (and start!1764 (is-Cons!364 l!1094)) b!12402))

(declare-fun m!8453 () Bool)

(assert (=> b!12404 m!8453))

(declare-fun m!8455 () Bool)

(assert (=> b!12404 m!8455))

(declare-fun m!8457 () Bool)

(assert (=> b!12404 m!8457))

(declare-fun m!8459 () Bool)

(assert (=> start!1764 m!8459))

(declare-fun m!8461 () Bool)

(assert (=> b!12403 m!8461))

(declare-fun m!8463 () Bool)

(assert (=> b!12406 m!8463))

(declare-fun m!8465 () Bool)

(assert (=> b!12407 m!8465))

(push 1)

(assert (not b!12402))

(assert (not b!12407))

(assert (not start!1764))

(assert (not b!12406))

(assert (not b!12403))

(assert (not b!12404))

(assert tp_is_empty!625)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1757 () Bool)

(declare-fun res!10032 () Bool)

(declare-fun e!7436 () Bool)

(assert (=> d!1757 (=> res!10032 e!7436)))

(assert (=> d!1757 (= res!10032 (or (is-Nil!365 (t!2755 l!1094)) (is-Nil!365 (t!2755 (t!2755 l!1094)))))))

(assert (=> d!1757 (= (isStrictlySorted!65 (t!2755 l!1094)) e!7436)))

(declare-fun b!12456 () Bool)

(declare-fun e!7437 () Bool)

(assert (=> b!12456 (= e!7436 e!7437)))

(declare-fun res!10033 () Bool)

(assert (=> b!12456 (=> (not res!10033) (not e!7437))))

(assert (=> b!12456 (= res!10033 (bvslt (_1!212 (h!930 (t!2755 l!1094))) (_1!212 (h!930 (t!2755 (t!2755 l!1094))))))))

(declare-fun b!12457 () Bool)

(assert (=> b!12457 (= e!7437 (isStrictlySorted!65 (t!2755 (t!2755 l!1094))))))

(assert (= (and d!1757 (not res!10032)) b!12456))

(assert (= (and b!12456 res!10033) b!12457))

(declare-fun m!8495 () Bool)

(assert (=> b!12457 m!8495))

(assert (=> b!12407 d!1757))

(declare-fun b!12482 () Bool)

(declare-fun e!7455 () Option!53)

(assert (=> b!12482 (= e!7455 (getValueByKey!47 (t!2755 (t!2755 l!1094)) key!303))))

(declare-fun b!12481 () Bool)

(declare-fun e!7454 () Option!53)

(assert (=> b!12481 (= e!7454 e!7455)))

(declare-fun c!1112 () Bool)

(assert (=> b!12481 (= c!1112 (and (is-Cons!364 (t!2755 l!1094)) (not (= (_1!212 (h!930 (t!2755 l!1094))) key!303))))))

(declare-fun d!1759 () Bool)

(declare-fun c!1111 () Bool)

(assert (=> d!1759 (= c!1111 (and (is-Cons!364 (t!2755 l!1094)) (= (_1!212 (h!930 (t!2755 l!1094))) key!303)))))

(assert (=> d!1759 (= (getValueByKey!47 (t!2755 l!1094) key!303) e!7454)))

(declare-fun b!12480 () Bool)

(assert (=> b!12480 (= e!7454 (Some!52 (_2!212 (h!930 (t!2755 l!1094)))))))

(declare-fun b!12483 () Bool)

(assert (=> b!12483 (= e!7455 None!51)))

(assert (= (and d!1759 c!1111) b!12480))

(assert (= (and d!1759 (not c!1111)) b!12481))

(assert (= (and b!12481 c!1112) b!12482))

(assert (= (and b!12481 (not c!1112)) b!12483))

(declare-fun m!8497 () Bool)

(assert (=> b!12482 m!8497))

(assert (=> b!12406 d!1759))

(declare-fun d!1765 () Bool)

(declare-fun res!10046 () Bool)

(declare-fun e!7458 () Bool)

(assert (=> d!1765 (=> res!10046 e!7458)))

(assert (=> d!1765 (= res!10046 (or (is-Nil!365 l!1094) (is-Nil!365 (t!2755 l!1094))))))

(assert (=> d!1765 (= (isStrictlySorted!65 l!1094) e!7458)))

(declare-fun b!12486 () Bool)

(declare-fun e!7459 () Bool)

(assert (=> b!12486 (= e!7458 e!7459)))

(declare-fun res!10047 () Bool)

(assert (=> b!12486 (=> (not res!10047) (not e!7459))))

(assert (=> b!12486 (= res!10047 (bvslt (_1!212 (h!930 l!1094)) (_1!212 (h!930 (t!2755 l!1094)))))))

(declare-fun b!12487 () Bool)

(assert (=> b!12487 (= e!7459 (isStrictlySorted!65 (t!2755 l!1094)))))

(assert (= (and d!1765 (not res!10046)) b!12486))

(assert (= (and b!12486 res!10047) b!12487))

(assert (=> b!12487 m!8465))

(assert (=> start!1764 d!1765))

(declare-fun d!1767 () Bool)

(declare-fun lt!3162 () Bool)

(declare-fun content!10 (List!368) (Set tuple2!424))

(assert (=> d!1767 (= lt!3162 (set.member lt!3135 (content!10 l!1094)))))

(declare-fun e!7472 () Bool)

(assert (=> d!1767 (= lt!3162 e!7472)))

(declare-fun res!10060 () Bool)

(assert (=> d!1767 (=> (not res!10060) (not e!7472))))

(assert (=> d!1767 (= res!10060 (is-Cons!364 l!1094))))

(assert (=> d!1767 (= (contains!173 l!1094 lt!3135) lt!3162)))

(declare-fun b!12500 () Bool)

(declare-fun e!7473 () Bool)

(assert (=> b!12500 (= e!7472 e!7473)))

(declare-fun res!10061 () Bool)

(assert (=> b!12500 (=> res!10061 e!7473)))

(assert (=> b!12500 (= res!10061 (= (h!930 l!1094) lt!3135))))

(declare-fun b!12501 () Bool)

(assert (=> b!12501 (= e!7473 (contains!173 (t!2755 l!1094) lt!3135))))

(assert (= (and d!1767 res!10060) b!12500))

(assert (= (and b!12500 (not res!10061)) b!12501))

(declare-fun m!8512 () Bool)

(assert (=> d!1767 m!8512))

(declare-fun m!8516 () Bool)

(assert (=> d!1767 m!8516))

(assert (=> b!12501 m!8455))

(assert (=> b!12404 d!1767))

(declare-fun d!1776 () Bool)

(declare-fun lt!3165 () Bool)

(assert (=> d!1776 (= lt!3165 (set.member lt!3135 (content!10 (t!2755 l!1094))))))

(declare-fun e!7477 () Bool)

(assert (=> d!1776 (= lt!3165 e!7477)))

(declare-fun res!10064 () Bool)

(assert (=> d!1776 (=> (not res!10064) (not e!7477))))

(assert (=> d!1776 (= res!10064 (is-Cons!364 (t!2755 l!1094)))))

(assert (=> d!1776 (= (contains!173 (t!2755 l!1094) lt!3135) lt!3165)))

(declare-fun b!12504 () Bool)

(declare-fun e!7479 () Bool)

(assert (=> b!12504 (= e!7477 e!7479)))

(declare-fun res!10067 () Bool)

(assert (=> b!12504 (=> res!10067 e!7479)))

(assert (=> b!12504 (= res!10067 (= (h!930 (t!2755 l!1094)) lt!3135))))

(declare-fun b!12506 () Bool)

(assert (=> b!12506 (= e!7479 (contains!173 (t!2755 (t!2755 l!1094)) lt!3135))))

(assert (= (and d!1776 res!10064) b!12504))

(assert (= (and b!12504 (not res!10067)) b!12506))

(declare-fun m!8519 () Bool)

(assert (=> d!1776 m!8519))

(declare-fun m!8522 () Bool)

(assert (=> d!1776 m!8522))

(declare-fun m!8525 () Bool)

(assert (=> b!12506 m!8525))

(assert (=> b!12404 d!1776))

(declare-fun d!1779 () Bool)

(assert (=> d!1779 (contains!173 (t!2755 l!1094) (tuple2!425 key!303 v!194))))

(declare-fun lt!3173 () Unit!266)

(declare-fun choose!165 (List!368 (_ BitVec 64) B!452) Unit!266)

(assert (=> d!1779 (= lt!3173 (choose!165 (t!2755 l!1094) key!303 v!194))))

(declare-fun e!7487 () Bool)

(assert (=> d!1779 e!7487))

(declare-fun res!10075 () Bool)

(assert (=> d!1779 (=> (not res!10075) (not e!7487))))

(assert (=> d!1779 (= res!10075 (isStrictlySorted!65 (t!2755 l!1094)))))

(assert (=> d!1779 (= (lemmaGetValueByKeyImpliesContainsTuple!4 (t!2755 l!1094) key!303 v!194) lt!3173)))

(declare-fun b!12515 () Bool)

(assert (=> b!12515 (= e!7487 (= (getValueByKey!47 (t!2755 l!1094) key!303) (Some!52 v!194)))))

(assert (= (and d!1779 res!10075) b!12515))

(declare-fun m!8536 () Bool)

(assert (=> d!1779 m!8536))

(declare-fun m!8541 () Bool)

(assert (=> d!1779 m!8541))

(assert (=> d!1779 m!8465))

(assert (=> b!12515 m!8463))

(assert (=> b!12404 d!1779))

(declare-fun b!12521 () Bool)

(declare-fun e!7494 () Option!53)

(assert (=> b!12521 (= e!7494 (getValueByKey!47 (t!2755 l!1094) key!303))))

(declare-fun b!12520 () Bool)

(declare-fun e!7493 () Option!53)

(assert (=> b!12520 (= e!7493 e!7494)))

(declare-fun c!1114 () Bool)

(assert (=> b!12520 (= c!1114 (and (is-Cons!364 l!1094) (not (= (_1!212 (h!930 l!1094)) key!303))))))

(declare-fun d!1787 () Bool)

(declare-fun c!1113 () Bool)

(assert (=> d!1787 (= c!1113 (and (is-Cons!364 l!1094) (= (_1!212 (h!930 l!1094)) key!303)))))

(assert (=> d!1787 (= (getValueByKey!47 l!1094 key!303) e!7493)))

(declare-fun b!12519 () Bool)

(assert (=> b!12519 (= e!7493 (Some!52 (_2!212 (h!930 l!1094))))))

(declare-fun b!12522 () Bool)

(assert (=> b!12522 (= e!7494 None!51)))

(assert (= (and d!1787 c!1113) b!12519))

(assert (= (and d!1787 (not c!1113)) b!12520))

(assert (= (and b!12520 c!1114) b!12521))

(assert (= (and b!12520 (not c!1114)) b!12522))

(assert (=> b!12521 m!8463))

(assert (=> b!12403 d!1787))

(declare-fun b!12539 () Bool)

(declare-fun e!7503 () Bool)

(declare-fun tp!2089 () Bool)

(assert (=> b!12539 (= e!7503 (and tp_is_empty!625 tp!2089))))

(assert (=> b!12402 (= tp!2078 e!7503)))

(assert (= (and b!12402 (is-Cons!364 (t!2755 l!1094))) b!12539))

(push 1)

(assert (not b!12506))

(assert (not b!12521))

(assert (not b!12482))

(assert (not d!1779))

(assert (not d!1776))

(assert (not b!12501))

(assert (not b!12539))

(assert (not b!12457))

(assert (not b!12487))

(assert (not d!1767))

(assert (not b!12515))

(assert tp_is_empty!625)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

