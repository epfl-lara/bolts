; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!2128 () Bool)

(assert start!2128)

(declare-fun res!11119 () Bool)

(declare-fun e!8586 () Bool)

(assert (=> start!2128 (=> (not res!11119) (not e!8586))))

(declare-datatypes ((B!542 0))(
  ( (B!543 (val!369 Int)) )
))
(declare-datatypes ((tuple2!520 0))(
  ( (tuple2!521 (_1!260 (_ BitVec 64)) (_2!260 B!542)) )
))
(declare-datatypes ((List!419 0))(
  ( (Nil!416) (Cons!415 (h!981 tuple2!520) (t!2818 List!419)) )
))
(declare-fun l!522 () List!419)

(declare-fun isStrictlySorted!110 (List!419) Bool)

(assert (=> start!2128 (= res!11119 (isStrictlySorted!110 l!522))))

(assert (=> start!2128 e!8586))

(declare-fun e!8587 () Bool)

(assert (=> start!2128 e!8587))

(declare-fun tp_is_empty!721 () Bool)

(assert (=> start!2128 tp_is_empty!721))

(declare-fun b!14346 () Bool)

(declare-fun res!11118 () Bool)

(assert (=> b!14346 (=> (not res!11118) (not e!8586))))

(declare-fun value!159 () B!542)

(assert (=> b!14346 (= res!11118 (and (not (= (_2!260 (h!981 l!522)) value!159)) (is-Cons!415 l!522)))))

(declare-fun b!14347 () Bool)

(declare-fun ListPrimitiveSize!25 (List!419) Int)

(assert (=> b!14347 (= e!8586 (>= (ListPrimitiveSize!25 (t!2818 l!522)) (ListPrimitiveSize!25 l!522)))))

(declare-fun b!14348 () Bool)

(declare-fun tp!2324 () Bool)

(assert (=> b!14348 (= e!8587 (and tp_is_empty!721 tp!2324))))

(assert (= (and start!2128 res!11119) b!14346))

(assert (= (and b!14346 res!11118) b!14347))

(assert (= (and start!2128 (is-Cons!415 l!522)) b!14348))

(declare-fun m!9601 () Bool)

(assert (=> start!2128 m!9601))

(declare-fun m!9603 () Bool)

(assert (=> b!14347 m!9603))

(declare-fun m!9605 () Bool)

(assert (=> b!14347 m!9605))

(push 1)

(assert (not start!2128))

(assert (not b!14347))

(assert (not b!14348))

(assert tp_is_empty!721)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2237 () Bool)

(declare-fun res!11140 () Bool)

(declare-fun e!8608 () Bool)

(assert (=> d!2237 (=> res!11140 e!8608)))

(assert (=> d!2237 (= res!11140 (or (is-Nil!416 l!522) (is-Nil!416 (t!2818 l!522))))))

(assert (=> d!2237 (= (isStrictlySorted!110 l!522) e!8608)))

(declare-fun b!14375 () Bool)

(declare-fun e!8609 () Bool)

(assert (=> b!14375 (= e!8608 e!8609)))

(declare-fun res!11141 () Bool)

(assert (=> b!14375 (=> (not res!11141) (not e!8609))))

(assert (=> b!14375 (= res!11141 (bvslt (_1!260 (h!981 l!522)) (_1!260 (h!981 (t!2818 l!522)))))))

(declare-fun b!14376 () Bool)

(assert (=> b!14376 (= e!8609 (isStrictlySorted!110 (t!2818 l!522)))))

(assert (= (and d!2237 (not res!11140)) b!14375))

(assert (= (and b!14375 res!11141) b!14376))

(declare-fun m!9619 () Bool)

(assert (=> b!14376 m!9619))

(assert (=> start!2128 d!2237))

(declare-fun d!2243 () Bool)

(declare-fun lt!3599 () Int)

(assert (=> d!2243 (>= lt!3599 0)))

(declare-fun e!8622 () Int)

(assert (=> d!2243 (= lt!3599 e!8622)))

(declare-fun c!1339 () Bool)

(assert (=> d!2243 (= c!1339 (is-Nil!416 (t!2818 l!522)))))

(assert (=> d!2243 (= (ListPrimitiveSize!25 (t!2818 l!522)) lt!3599)))

(declare-fun b!14393 () Bool)

(assert (=> b!14393 (= e!8622 0)))

(declare-fun b!14395 () Bool)

(assert (=> b!14395 (= e!8622 (+ 1 (ListPrimitiveSize!25 (t!2818 (t!2818 l!522)))))))

(assert (= (and d!2243 c!1339) b!14393))

(assert (= (and d!2243 (not c!1339)) b!14395))

(declare-fun m!9626 () Bool)

(assert (=> b!14395 m!9626))

(assert (=> b!14347 d!2243))

(declare-fun d!2251 () Bool)

(declare-fun lt!3601 () Int)

(assert (=> d!2251 (>= lt!3601 0)))

(declare-fun e!8624 () Int)

(assert (=> d!2251 (= lt!3601 e!8624)))

(declare-fun c!1341 () Bool)

(assert (=> d!2251 (= c!1341 (is-Nil!416 l!522))))

(assert (=> d!2251 (= (ListPrimitiveSize!25 l!522) lt!3601)))

(declare-fun b!14397 () Bool)

(assert (=> b!14397 (= e!8624 0)))

(declare-fun b!14399 () Bool)

(assert (=> b!14399 (= e!8624 (+ 1 (ListPrimitiveSize!25 (t!2818 l!522))))))

(assert (= (and d!2251 c!1341) b!14397))

(assert (= (and d!2251 (not c!1341)) b!14399))

(assert (=> b!14399 m!9603))

(assert (=> b!14347 d!2251))

(declare-fun b!14410 () Bool)

(declare-fun e!8631 () Bool)

(declare-fun tp!2336 () Bool)

(assert (=> b!14410 (= e!8631 (and tp_is_empty!721 tp!2336))))

(assert (=> b!14348 (= tp!2324 e!8631)))

(assert (= (and b!14348 (is-Cons!415 (t!2818 l!522))) b!14410))

(push 1)

(assert (not b!14395))

(assert (not b!14399))

(assert (not b!14410))

(assert tp_is_empty!721)

(assert (not b!14376))

(check-sat)

(pop 1)

