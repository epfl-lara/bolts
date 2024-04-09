; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!1994 () Bool)

(assert start!1994)

(declare-fun b!13441 () Bool)

(assert (=> b!13441 true))

(declare-fun b!13437 () Bool)

(declare-fun e!8049 () Bool)

(declare-fun e!8050 () Bool)

(assert (=> b!13437 (= e!8049 e!8050)))

(declare-fun res!10590 () Bool)

(assert (=> b!13437 (=> (not res!10590) (not e!8050))))

(declare-datatypes ((B!492 0))(
  ( (B!493 (val!344 Int)) )
))
(declare-datatypes ((tuple2!470 0))(
  ( (tuple2!471 (_1!235 (_ BitVec 64)) (_2!235 B!492)) )
))
(declare-datatypes ((List!394 0))(
  ( (Nil!391) (Cons!390 (h!956 tuple2!470) (t!2790 List!394)) )
))
(declare-fun lt!3516 () List!394)

(declare-fun isStrictlySorted!85 (List!394) Bool)

(assert (=> b!13437 (= res!10590 (isStrictlySorted!85 lt!3516))))

(declare-fun l!522 () List!394)

(declare-fun value!159 () B!492)

(declare-fun filterByValue!9 (List!394 B!492) List!394)

(assert (=> b!13437 (= lt!3516 (filterByValue!9 (t!2790 l!522) value!159))))

(declare-fun b!13438 () Bool)

(declare-fun res!10593 () Bool)

(assert (=> b!13438 (=> (not res!10593) (not e!8049))))

(assert (=> b!13438 (= res!10593 (and (not (= (_2!235 (h!956 l!522)) value!159)) (is-Cons!390 l!522)))))

(declare-fun b!13439 () Bool)

(assert (=> b!13439 (= e!8050 (= lt!3516 Nil!391))))

(declare-fun b!13440 () Bool)

(declare-fun res!10592 () Bool)

(assert (=> b!13440 (=> (not res!10592) (not e!8050))))

(declare-fun isEmpty!83 (List!394) Bool)

(assert (=> b!13440 (= res!10592 (not (isEmpty!83 l!522)))))

(declare-fun res!10591 () Bool)

(assert (=> b!13441 (=> (not res!10591) (not e!8050))))

(declare-fun lambda!77 () Int)

(declare-fun forall!76 (List!394 Int) Bool)

(assert (=> b!13441 (= res!10591 (forall!76 lt!3516 lambda!77))))

(declare-fun b!13442 () Bool)

(declare-fun e!8048 () Bool)

(declare-fun tp_is_empty!671 () Bool)

(declare-fun tp!2192 () Bool)

(assert (=> b!13442 (= e!8048 (and tp_is_empty!671 tp!2192))))

(declare-fun res!10589 () Bool)

(assert (=> start!1994 (=> (not res!10589) (not e!8049))))

(assert (=> start!1994 (= res!10589 (isStrictlySorted!85 l!522))))

(assert (=> start!1994 e!8049))

(assert (=> start!1994 e!8048))

(assert (=> start!1994 tp_is_empty!671))

(declare-fun b!13443 () Bool)

(declare-fun res!10594 () Bool)

(assert (=> b!13443 (=> (not res!10594) (not e!8050))))

(assert (=> b!13443 (= res!10594 (not (isEmpty!83 lt!3516)))))

(assert (= (and start!1994 res!10589) b!13438))

(assert (= (and b!13438 res!10593) b!13437))

(assert (= (and b!13437 res!10590) b!13441))

(assert (= (and b!13441 res!10591) b!13440))

(assert (= (and b!13440 res!10592) b!13443))

(assert (= (and b!13443 res!10594) b!13439))

(assert (= (and start!1994 (is-Cons!390 l!522)) b!13442))

(declare-fun m!9115 () Bool)

(assert (=> b!13441 m!9115))

(declare-fun m!9117 () Bool)

(assert (=> start!1994 m!9117))

(declare-fun m!9119 () Bool)

(assert (=> b!13440 m!9119))

(declare-fun m!9121 () Bool)

(assert (=> b!13437 m!9121))

(declare-fun m!9123 () Bool)

(assert (=> b!13437 m!9123))

(declare-fun m!9125 () Bool)

(assert (=> b!13443 m!9125))

(push 1)

(assert (not b!13437))

(assert (not b!13441))

(assert (not b!13440))

(assert (not b!13442))

(assert tp_is_empty!671)

(assert (not b!13443))

(assert (not start!1994))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2015 () Bool)

(declare-fun res!10615 () Bool)

(declare-fun e!8071 () Bool)

(assert (=> d!2015 (=> res!10615 e!8071)))

(assert (=> d!2015 (= res!10615 (or (is-Nil!391 l!522) (is-Nil!391 (t!2790 l!522))))))

(assert (=> d!2015 (= (isStrictlySorted!85 l!522) e!8071)))

(declare-fun b!13466 () Bool)

(declare-fun e!8072 () Bool)

(assert (=> b!13466 (= e!8071 e!8072)))

(declare-fun res!10616 () Bool)

(assert (=> b!13466 (=> (not res!10616) (not e!8072))))

(assert (=> b!13466 (= res!10616 (bvslt (_1!235 (h!956 l!522)) (_1!235 (h!956 (t!2790 l!522)))))))

(declare-fun b!13467 () Bool)

(assert (=> b!13467 (= e!8072 (isStrictlySorted!85 (t!2790 l!522)))))

(assert (= (and d!2015 (not res!10615)) b!13466))

(assert (= (and b!13466 res!10616) b!13467))

(declare-fun m!9131 () Bool)

(assert (=> b!13467 m!9131))

(assert (=> start!1994 d!2015))

(declare-fun d!2023 () Bool)

(declare-fun res!10625 () Bool)

(declare-fun e!8081 () Bool)

(assert (=> d!2023 (=> res!10625 e!8081)))

(assert (=> d!2023 (= res!10625 (is-Nil!391 lt!3516))))

(assert (=> d!2023 (= (forall!76 lt!3516 lambda!77) e!8081)))

(declare-fun b!13476 () Bool)

(declare-fun e!8082 () Bool)

(assert (=> b!13476 (= e!8081 e!8082)))

(declare-fun res!10626 () Bool)

(assert (=> b!13476 (=> (not res!10626) (not e!8082))))

(declare-fun dynLambda!86 (Int tuple2!470) Bool)

(assert (=> b!13476 (= res!10626 (dynLambda!86 lambda!77 (h!956 lt!3516)))))

(declare-fun b!13477 () Bool)

(assert (=> b!13477 (= e!8082 (forall!76 (t!2790 lt!3516) lambda!77))))

(assert (= (and d!2023 (not res!10625)) b!13476))

(assert (= (and b!13476 res!10626) b!13477))

(declare-fun b_lambda!877 () Bool)

(assert (=> (not b_lambda!877) (not b!13476)))

(declare-fun m!9139 () Bool)

(assert (=> b!13476 m!9139))

(declare-fun m!9141 () Bool)

(assert (=> b!13477 m!9141))

(assert (=> b!13441 d!2023))

(declare-fun d!2029 () Bool)

(assert (=> d!2029 (= (isEmpty!83 lt!3516) (is-Nil!391 lt!3516))))

(assert (=> b!13443 d!2029))

(declare-fun d!2031 () Bool)

(declare-fun res!10627 () Bool)

(declare-fun e!8083 () Bool)

(assert (=> d!2031 (=> res!10627 e!8083)))

(assert (=> d!2031 (= res!10627 (or (is-Nil!391 lt!3516) (is-Nil!391 (t!2790 lt!3516))))))

(assert (=> d!2031 (= (isStrictlySorted!85 lt!3516) e!8083)))

(declare-fun b!13478 () Bool)

(declare-fun e!8084 () Bool)

(assert (=> b!13478 (= e!8083 e!8084)))

(declare-fun res!10628 () Bool)

(assert (=> b!13478 (=> (not res!10628) (not e!8084))))

(assert (=> b!13478 (= res!10628 (bvslt (_1!235 (h!956 lt!3516)) (_1!235 (h!956 (t!2790 lt!3516)))))))

(declare-fun b!13480 () Bool)

(assert (=> b!13480 (= e!8084 (isStrictlySorted!85 (t!2790 lt!3516)))))

(assert (= (and d!2031 (not res!10627)) b!13478))

(assert (= (and b!13478 res!10628) b!13480))

(declare-fun m!9143 () Bool)

(assert (=> b!13480 m!9143))

(assert (=> b!13437 d!2031))

(declare-fun bs!528 () Bool)

(declare-fun b!13572 () Bool)

(assert (= bs!528 (and b!13572 b!13441)))

(declare-fun lambda!86 () Int)

(assert (=> bs!528 (= lambda!86 lambda!77)))

(assert (=> b!13572 true))

(declare-fun b!13570 () Bool)

(declare-fun e!8139 () Bool)

(declare-fun e!8143 () Bool)

(assert (=> b!13570 (= e!8139 e!8143)))

(declare-fun c!1266 () Bool)

(assert (=> b!13570 (= c!1266 (isEmpty!83 (t!2790 l!522)))))

(declare-fun b!13571 () Bool)

(declare-fun e!8140 () List!394)

(declare-fun call!382 () List!394)

(assert (=> b!13571 (= e!8140 call!382)))

(declare-fun res!10662 () Bool)

(assert (=> b!13572 (=> (not res!10662) (not e!8139))))

(declare-fun lt!3525 () List!394)

(assert (=> b!13572 (= res!10662 (forall!76 lt!3525 lambda!86))))

(declare-fun bm!379 () Bool)

(declare-fun call!383 () Bool)

(assert (=> bm!379 (= call!383 (isEmpty!83 lt!3525))))

(declare-fun b!13573 () Bool)

(assert (=> b!13573 (= e!8140 Nil!391)))

(declare-fun b!13574 () Bool)

(assert (=> b!13574 (= e!8143 call!383)))

(declare-fun b!13575 () Bool)

(declare-fun e!8142 () List!394)

(declare-fun $colon$colon!17 (List!394 tuple2!470) List!394)

(assert (=> b!13575 (= e!8142 ($colon$colon!17 call!382 (h!956 (t!2790 l!522))))))

(declare-fun b!13576 () Bool)

(declare-fun e!8141 () Bool)

(declare-fun head!787 (List!394) tuple2!470)

(assert (=> b!13576 (= e!8141 (bvsge (_1!235 (head!787 lt!3525)) (_1!235 (head!787 (t!2790 l!522)))))))

(declare-fun b!13577 () Bool)

(assert (=> b!13577 (= e!8143 e!8141)))

(declare-fun res!10663 () Bool)

(assert (=> b!13577 (= res!10663 call!383)))

(assert (=> b!13577 (=> res!10663 e!8141)))

(declare-fun d!2033 () Bool)

(assert (=> d!2033 e!8139))

(declare-fun res!10661 () Bool)

(assert (=> d!2033 (=> (not res!10661) (not e!8139))))

(assert (=> d!2033 (= res!10661 (isStrictlySorted!85 lt!3525))))

(assert (=> d!2033 (= lt!3525 e!8142)))

(declare-fun c!1267 () Bool)

(assert (=> d!2033 (= c!1267 (and (is-Cons!390 (t!2790 l!522)) (= (_2!235 (h!956 (t!2790 l!522))) value!159)))))

(assert (=> d!2033 (isStrictlySorted!85 (t!2790 l!522))))

(assert (=> d!2033 (= (filterByValue!9 (t!2790 l!522) value!159) lt!3525)))

(declare-fun b!13578 () Bool)

