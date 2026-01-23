; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!417104 () Bool)

(assert start!417104)

(declare-fun b!4329409 () Bool)

(declare-fun e!2694025 () Bool)

(declare-datatypes ((K!9833 0))(
  ( (K!9834 (val!16137 Int)) )
))
(declare-datatypes ((V!10079 0))(
  ( (V!10080 (val!16138 Int)) )
))
(declare-datatypes ((tuple2!47602 0))(
  ( (tuple2!47603 (_1!27095 K!9833) (_2!27095 V!10079)) )
))
(declare-datatypes ((List!48629 0))(
  ( (Nil!48505) (Cons!48505 (h!53974 tuple2!47602) (t!355541 List!48629)) )
))
(declare-fun l!13918 () List!48629)

(declare-fun ListPrimitiveSize!328 (List!48629) Int)

(assert (=> b!4329409 (= e!2694025 (>= (ListPrimitiveSize!328 (t!355541 l!13918)) (ListPrimitiveSize!328 l!13918)))))

(declare-fun tp_is_empty!24463 () Bool)

(declare-fun tp_is_empty!24461 () Bool)

(declare-fun b!4329410 () Bool)

(declare-fun tp!1328175 () Bool)

(declare-fun e!2694024 () Bool)

(assert (=> b!4329410 (= e!2694024 (and tp_is_empty!24461 tp_is_empty!24463 tp!1328175))))

(declare-fun b!4329411 () Bool)

(declare-fun res!1774305 () Bool)

(assert (=> b!4329411 (=> (not res!1774305) (not e!2694025))))

(declare-fun otherK!9 () K!9833)

(declare-fun key!5304 () K!9833)

(assert (=> b!4329411 (= res!1774305 (not (= otherK!9 key!5304)))))

(declare-fun b!4329412 () Bool)

(declare-fun res!1774307 () Bool)

(assert (=> b!4329412 (=> (not res!1774307) (not e!2694025))))

(assert (=> b!4329412 (= res!1774307 (not (is-Nil!48505 l!13918)))))

(declare-fun res!1774304 () Bool)

(assert (=> start!417104 (=> (not res!1774304) (not e!2694025))))

(declare-fun noDuplicateKeys!318 (List!48629) Bool)

(assert (=> start!417104 (= res!1774304 (noDuplicateKeys!318 l!13918))))

(assert (=> start!417104 e!2694025))

(assert (=> start!417104 e!2694024))

(assert (=> start!417104 tp_is_empty!24461))

(declare-fun b!4329413 () Bool)

(declare-fun res!1774306 () Bool)

(assert (=> b!4329413 (=> (not res!1774306) (not e!2694025))))

(declare-fun containsKey!464 (List!48629 K!9833) Bool)

(assert (=> b!4329413 (= res!1774306 (not (containsKey!464 l!13918 otherK!9)))))

(assert (= (and start!417104 res!1774304) b!4329411))

(assert (= (and b!4329411 res!1774305) b!4329413))

(assert (= (and b!4329413 res!1774306) b!4329412))

(assert (= (and b!4329412 res!1774307) b!4329409))

(assert (= (and start!417104 (is-Cons!48505 l!13918)) b!4329410))

(declare-fun m!4923821 () Bool)

(assert (=> b!4329409 m!4923821))

(declare-fun m!4923823 () Bool)

(assert (=> b!4329409 m!4923823))

(declare-fun m!4923825 () Bool)

(assert (=> start!417104 m!4923825))

(declare-fun m!4923827 () Bool)

(assert (=> b!4329413 m!4923827))

(push 1)

(assert tp_is_empty!24463)

(assert (not start!417104))

(assert tp_is_empty!24461)

(assert (not b!4329413))

(assert (not b!4329409))

(assert (not b!4329410))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1272401 () Bool)

(declare-fun lt!1545392 () Int)

(assert (=> d!1272401 (>= lt!1545392 0)))

(declare-fun e!2694034 () Int)

(assert (=> d!1272401 (= lt!1545392 e!2694034)))

(declare-fun c!736632 () Bool)

(assert (=> d!1272401 (= c!736632 (is-Nil!48505 (t!355541 l!13918)))))

(assert (=> d!1272401 (= (ListPrimitiveSize!328 (t!355541 l!13918)) lt!1545392)))

(declare-fun b!4329433 () Bool)

(assert (=> b!4329433 (= e!2694034 0)))

(declare-fun b!4329434 () Bool)

(assert (=> b!4329434 (= e!2694034 (+ 1 (ListPrimitiveSize!328 (t!355541 (t!355541 l!13918)))))))

(assert (= (and d!1272401 c!736632) b!4329433))

(assert (= (and d!1272401 (not c!736632)) b!4329434))

(declare-fun m!4923837 () Bool)

(assert (=> b!4329434 m!4923837))

(assert (=> b!4329409 d!1272401))

(declare-fun d!1272403 () Bool)

(declare-fun lt!1545393 () Int)

(assert (=> d!1272403 (>= lt!1545393 0)))

(declare-fun e!2694035 () Int)

(assert (=> d!1272403 (= lt!1545393 e!2694035)))

(declare-fun c!736633 () Bool)

(assert (=> d!1272403 (= c!736633 (is-Nil!48505 l!13918))))

(assert (=> d!1272403 (= (ListPrimitiveSize!328 l!13918) lt!1545393)))

(declare-fun b!4329435 () Bool)

(assert (=> b!4329435 (= e!2694035 0)))

(declare-fun b!4329436 () Bool)

(assert (=> b!4329436 (= e!2694035 (+ 1 (ListPrimitiveSize!328 (t!355541 l!13918))))))

(assert (= (and d!1272403 c!736633) b!4329435))

(assert (= (and d!1272403 (not c!736633)) b!4329436))

(assert (=> b!4329436 m!4923821))

(assert (=> b!4329409 d!1272403))

(declare-fun d!1272407 () Bool)

(declare-fun res!1774324 () Bool)

(declare-fun e!2694040 () Bool)

(assert (=> d!1272407 (=> res!1774324 e!2694040)))

(assert (=> d!1272407 (= res!1774324 (and (is-Cons!48505 l!13918) (= (_1!27095 (h!53974 l!13918)) otherK!9)))))

(assert (=> d!1272407 (= (containsKey!464 l!13918 otherK!9) e!2694040)))

(declare-fun b!4329441 () Bool)

(declare-fun e!2694041 () Bool)

(assert (=> b!4329441 (= e!2694040 e!2694041)))

(declare-fun res!1774325 () Bool)

(assert (=> b!4329441 (=> (not res!1774325) (not e!2694041))))

(assert (=> b!4329441 (= res!1774325 (is-Cons!48505 l!13918))))

(declare-fun b!4329442 () Bool)

(assert (=> b!4329442 (= e!2694041 (containsKey!464 (t!355541 l!13918) otherK!9))))

(assert (= (and d!1272407 (not res!1774324)) b!4329441))

(assert (= (and b!4329441 res!1774325) b!4329442))

(declare-fun m!4923839 () Bool)

(assert (=> b!4329442 m!4923839))

(assert (=> b!4329413 d!1272407))

(declare-fun d!1272409 () Bool)

(declare-fun res!1774334 () Bool)

(declare-fun e!2694050 () Bool)

(assert (=> d!1272409 (=> res!1774334 e!2694050)))

(assert (=> d!1272409 (= res!1774334 (not (is-Cons!48505 l!13918)))))

(assert (=> d!1272409 (= (noDuplicateKeys!318 l!13918) e!2694050)))

(declare-fun b!4329451 () Bool)

(declare-fun e!2694051 () Bool)

(assert (=> b!4329451 (= e!2694050 e!2694051)))

(declare-fun res!1774335 () Bool)

(assert (=> b!4329451 (=> (not res!1774335) (not e!2694051))))

(assert (=> b!4329451 (= res!1774335 (not (containsKey!464 (t!355541 l!13918) (_1!27095 (h!53974 l!13918)))))))

(declare-fun b!4329452 () Bool)

(assert (=> b!4329452 (= e!2694051 (noDuplicateKeys!318 (t!355541 l!13918)))))

(assert (= (and d!1272409 (not res!1774334)) b!4329451))

(assert (= (and b!4329451 res!1774335) b!4329452))

(declare-fun m!4923841 () Bool)

(assert (=> b!4329451 m!4923841))

(declare-fun m!4923843 () Bool)

(assert (=> b!4329452 m!4923843))

(assert (=> start!417104 d!1272409))

(declare-fun tp!1328181 () Bool)

(declare-fun b!4329457 () Bool)

(declare-fun e!2694054 () Bool)

(assert (=> b!4329457 (= e!2694054 (and tp_is_empty!24461 tp_is_empty!24463 tp!1328181))))

(assert (=> b!4329410 (= tp!1328175 e!2694054)))

(assert (= (and b!4329410 (is-Cons!48505 (t!355541 l!13918))) b!4329457))

(push 1)

(assert tp_is_empty!24463)

(assert (not b!4329457))

(assert (not b!4329436))

(assert (not b!4329451))

(assert (not b!4329434))

(assert (not b!4329442))

(assert tp_is_empty!24461)

(assert (not b!4329452))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

