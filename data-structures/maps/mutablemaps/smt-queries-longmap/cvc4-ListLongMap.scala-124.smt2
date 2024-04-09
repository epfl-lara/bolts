; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!2132 () Bool)

(assert start!2132)

(declare-fun res!11130 () Bool)

(declare-fun e!8599 () Bool)

(assert (=> start!2132 (=> (not res!11130) (not e!8599))))

(declare-datatypes ((B!546 0))(
  ( (B!547 (val!371 Int)) )
))
(declare-datatypes ((tuple2!524 0))(
  ( (tuple2!525 (_1!262 (_ BitVec 64)) (_2!262 B!546)) )
))
(declare-datatypes ((List!421 0))(
  ( (Nil!418) (Cons!417 (h!983 tuple2!524) (t!2820 List!421)) )
))
(declare-fun l!522 () List!421)

(declare-fun isStrictlySorted!112 (List!421) Bool)

(assert (=> start!2132 (= res!11130 (isStrictlySorted!112 l!522))))

(assert (=> start!2132 e!8599))

(declare-fun e!8598 () Bool)

(assert (=> start!2132 e!8598))

(declare-fun tp_is_empty!725 () Bool)

(assert (=> start!2132 tp_is_empty!725))

(declare-fun b!14364 () Bool)

(declare-fun res!11131 () Bool)

(assert (=> b!14364 (=> (not res!11131) (not e!8599))))

(declare-fun value!159 () B!546)

(assert (=> b!14364 (= res!11131 (and (not (= (_2!262 (h!983 l!522)) value!159)) (is-Cons!417 l!522)))))

(declare-fun b!14365 () Bool)

(declare-fun ListPrimitiveSize!27 (List!421) Int)

(assert (=> b!14365 (= e!8599 (>= (ListPrimitiveSize!27 (t!2820 l!522)) (ListPrimitiveSize!27 l!522)))))

(declare-fun b!14366 () Bool)

(declare-fun tp!2330 () Bool)

(assert (=> b!14366 (= e!8598 (and tp_is_empty!725 tp!2330))))

(assert (= (and start!2132 res!11130) b!14364))

(assert (= (and b!14364 res!11131) b!14365))

(assert (= (and start!2132 (is-Cons!417 l!522)) b!14366))

(declare-fun m!9613 () Bool)

(assert (=> start!2132 m!9613))

(declare-fun m!9615 () Bool)

(assert (=> b!14365 m!9615))

(declare-fun m!9617 () Bool)

(assert (=> b!14365 m!9617))

(push 1)

(assert (not start!2132))

(assert (not b!14365))

(assert (not b!14366))

(assert tp_is_empty!725)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2239 () Bool)

(declare-fun res!11142 () Bool)

(declare-fun e!8610 () Bool)

(assert (=> d!2239 (=> res!11142 e!8610)))

(assert (=> d!2239 (= res!11142 (or (is-Nil!418 l!522) (is-Nil!418 (t!2820 l!522))))))

(assert (=> d!2239 (= (isStrictlySorted!112 l!522) e!8610)))

(declare-fun b!14377 () Bool)

(declare-fun e!8611 () Bool)

(assert (=> b!14377 (= e!8610 e!8611)))

(declare-fun res!11143 () Bool)

(assert (=> b!14377 (=> (not res!11143) (not e!8611))))

(assert (=> b!14377 (= res!11143 (bvslt (_1!262 (h!983 l!522)) (_1!262 (h!983 (t!2820 l!522)))))))

(declare-fun b!14378 () Bool)

(assert (=> b!14378 (= e!8611 (isStrictlySorted!112 (t!2820 l!522)))))

(assert (= (and d!2239 (not res!11142)) b!14377))

(assert (= (and b!14377 res!11143) b!14378))

(declare-fun m!9621 () Bool)

(assert (=> b!14378 m!9621))

(assert (=> start!2132 d!2239))

(declare-fun d!2245 () Bool)

(declare-fun lt!3600 () Int)

(assert (=> d!2245 (>= lt!3600 0)))

(declare-fun e!8623 () Int)

(assert (=> d!2245 (= lt!3600 e!8623)))

(declare-fun c!1340 () Bool)

(assert (=> d!2245 (= c!1340 (is-Nil!418 (t!2820 l!522)))))

(assert (=> d!2245 (= (ListPrimitiveSize!27 (t!2820 l!522)) lt!3600)))

(declare-fun b!14394 () Bool)

(assert (=> b!14394 (= e!8623 0)))

(declare-fun b!14396 () Bool)

(assert (=> b!14396 (= e!8623 (+ 1 (ListPrimitiveSize!27 (t!2820 (t!2820 l!522)))))))

(assert (= (and d!2245 c!1340) b!14394))

(assert (= (and d!2245 (not c!1340)) b!14396))

(declare-fun m!9627 () Bool)

(assert (=> b!14396 m!9627))

(assert (=> b!14365 d!2245))

(declare-fun d!2250 () Bool)

(declare-fun lt!3602 () Int)

(assert (=> d!2250 (>= lt!3602 0)))

(declare-fun e!8625 () Int)

(assert (=> d!2250 (= lt!3602 e!8625)))

(declare-fun c!1342 () Bool)

(assert (=> d!2250 (= c!1342 (is-Nil!418 l!522))))

(assert (=> d!2250 (= (ListPrimitiveSize!27 l!522) lt!3602)))

(declare-fun b!14398 () Bool)

(assert (=> b!14398 (= e!8625 0)))

(declare-fun b!14400 () Bool)

(assert (=> b!14400 (= e!8625 (+ 1 (ListPrimitiveSize!27 (t!2820 l!522))))))

(assert (= (and d!2250 c!1342) b!14398))

(assert (= (and d!2250 (not c!1342)) b!14400))

(assert (=> b!14400 m!9615))

(assert (=> b!14365 d!2250))

(declare-fun b!14409 () Bool)

(declare-fun e!8630 () Bool)

(declare-fun tp!2335 () Bool)

(assert (=> b!14409 (= e!8630 (and tp_is_empty!725 tp!2335))))

(assert (=> b!14366 (= tp!2330 e!8630)))

(assert (= (and b!14366 (is-Cons!417 (t!2820 l!522))) b!14409))

(push 1)

(assert tp_is_empty!725)

(assert (not b!14409))

(assert (not b!14400))

(assert (not b!14396))

(assert (not b!14378))

(check-sat)

