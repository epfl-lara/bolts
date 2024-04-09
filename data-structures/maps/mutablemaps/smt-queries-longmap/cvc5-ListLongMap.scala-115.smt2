; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!1990 () Bool)

(assert start!1990)

(declare-fun b!13392 () Bool)

(assert (=> b!13392 true))

(declare-fun b!13391 () Bool)

(declare-fun e!8031 () Bool)

(declare-fun tp_is_empty!667 () Bool)

(declare-fun tp!2186 () Bool)

(assert (=> b!13391 (= e!8031 (and tp_is_empty!667 tp!2186))))

(declare-fun res!10558 () Bool)

(declare-fun e!8030 () Bool)

(assert (=> b!13392 (=> (not res!10558) (not e!8030))))

(declare-datatypes ((B!488 0))(
  ( (B!489 (val!342 Int)) )
))
(declare-datatypes ((tuple2!466 0))(
  ( (tuple2!467 (_1!233 (_ BitVec 64)) (_2!233 B!488)) )
))
(declare-datatypes ((List!392 0))(
  ( (Nil!389) (Cons!388 (h!954 tuple2!466) (t!2788 List!392)) )
))
(declare-fun lt!3510 () List!392)

(declare-fun lambda!71 () Int)

(declare-fun forall!74 (List!392 Int) Bool)

(assert (=> b!13392 (= res!10558 (forall!74 lt!3510 lambda!71))))

(declare-fun b!13393 () Bool)

(declare-fun e!8032 () Bool)

(assert (=> b!13393 (= e!8032 e!8030)))

(declare-fun res!10557 () Bool)

(assert (=> b!13393 (=> (not res!10557) (not e!8030))))

(declare-fun isStrictlySorted!83 (List!392) Bool)

(assert (=> b!13393 (= res!10557 (isStrictlySorted!83 lt!3510))))

(declare-fun l!522 () List!392)

(declare-fun value!159 () B!488)

(declare-fun filterByValue!7 (List!392 B!488) List!392)

(assert (=> b!13393 (= lt!3510 (filterByValue!7 (t!2788 l!522) value!159))))

(declare-fun res!10553 () Bool)

(assert (=> start!1990 (=> (not res!10553) (not e!8032))))

(assert (=> start!1990 (= res!10553 (isStrictlySorted!83 l!522))))

(assert (=> start!1990 e!8032))

(assert (=> start!1990 e!8031))

(assert (=> start!1990 tp_is_empty!667))

(declare-fun b!13394 () Bool)

(declare-fun res!10556 () Bool)

(assert (=> b!13394 (=> (not res!10556) (not e!8032))))

(assert (=> b!13394 (= res!10556 (and (not (= (_2!233 (h!954 l!522)) value!159)) (is-Cons!388 l!522)))))

(declare-fun b!13395 () Bool)

(assert (=> b!13395 (= e!8030 (= lt!3510 Nil!389))))

(declare-fun b!13396 () Bool)

(declare-fun res!10554 () Bool)

(assert (=> b!13396 (=> (not res!10554) (not e!8030))))

(declare-fun isEmpty!81 (List!392) Bool)

(assert (=> b!13396 (= res!10554 (not (isEmpty!81 l!522)))))

(declare-fun b!13397 () Bool)

(declare-fun res!10555 () Bool)

(assert (=> b!13397 (=> (not res!10555) (not e!8030))))

(assert (=> b!13397 (= res!10555 (not (isEmpty!81 lt!3510)))))

(assert (= (and start!1990 res!10553) b!13394))

(assert (= (and b!13394 res!10556) b!13393))

(assert (= (and b!13393 res!10557) b!13392))

(assert (= (and b!13392 res!10558) b!13396))

(assert (= (and b!13396 res!10554) b!13397))

(assert (= (and b!13397 res!10555) b!13395))

(assert (= (and start!1990 (is-Cons!388 l!522)) b!13391))

(declare-fun m!9091 () Bool)

(assert (=> b!13396 m!9091))

(declare-fun m!9093 () Bool)

(assert (=> b!13392 m!9093))

(declare-fun m!9095 () Bool)

(assert (=> b!13393 m!9095))

(declare-fun m!9097 () Bool)

(assert (=> b!13393 m!9097))

(declare-fun m!9099 () Bool)

(assert (=> b!13397 m!9099))

(declare-fun m!9101 () Bool)

(assert (=> start!1990 m!9101))

(push 1)

(assert (not b!13392))

(assert (not start!1990))

(assert (not b!13393))

(assert (not b!13391))

(assert (not b!13397))

(assert (not b!13396))

(assert tp_is_empty!667)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2009 () Bool)

(assert (=> d!2009 (= (isEmpty!81 l!522) (is-Nil!389 l!522))))

(assert (=> b!13396 d!2009))

(declare-fun d!2013 () Bool)

(declare-fun res!10605 () Bool)

(declare-fun e!8061 () Bool)

(assert (=> d!2013 (=> res!10605 e!8061)))

(assert (=> d!2013 (= res!10605 (or (is-Nil!389 l!522) (is-Nil!389 (t!2788 l!522))))))

(assert (=> d!2013 (= (isStrictlySorted!83 l!522) e!8061)))

(declare-fun b!13456 () Bool)

(declare-fun e!8062 () Bool)

(assert (=> b!13456 (= e!8061 e!8062)))

(declare-fun res!10606 () Bool)

(assert (=> b!13456 (=> (not res!10606) (not e!8062))))

(assert (=> b!13456 (= res!10606 (bvslt (_1!233 (h!954 l!522)) (_1!233 (h!954 (t!2788 l!522)))))))

(declare-fun b!13457 () Bool)

(assert (=> b!13457 (= e!8062 (isStrictlySorted!83 (t!2788 l!522)))))

(assert (= (and d!2013 (not res!10605)) b!13456))

(assert (= (and b!13456 res!10606) b!13457))

(declare-fun m!9129 () Bool)

(assert (=> b!13457 m!9129))

(assert (=> start!1990 d!2013))

(declare-fun d!2019 () Bool)

(assert (=> d!2019 (= (isEmpty!81 lt!3510) (is-Nil!389 lt!3510))))

(assert (=> b!13397 d!2019))

(declare-fun d!2021 () Bool)

(declare-fun res!10617 () Bool)

(declare-fun e!8073 () Bool)

(assert (=> d!2021 (=> res!10617 e!8073)))

(assert (=> d!2021 (= res!10617 (is-Nil!389 lt!3510))))

(assert (=> d!2021 (= (forall!74 lt!3510 lambda!71) e!8073)))

(declare-fun b!13468 () Bool)

(declare-fun e!8074 () Bool)

(assert (=> b!13468 (= e!8073 e!8074)))

(declare-fun res!10618 () Bool)

(assert (=> b!13468 (=> (not res!10618) (not e!8074))))

(declare-fun dynLambda!85 (Int tuple2!466) Bool)

(assert (=> b!13468 (= res!10618 (dynLambda!85 lambda!71 (h!954 lt!3510)))))

(declare-fun b!13469 () Bool)

(assert (=> b!13469 (= e!8074 (forall!74 (t!2788 lt!3510) lambda!71))))

(assert (= (and d!2021 (not res!10617)) b!13468))

(assert (= (and b!13468 res!10618) b!13469))

(declare-fun b_lambda!875 () Bool)

(assert (=> (not b_lambda!875) (not b!13468)))

(declare-fun m!9133 () Bool)

(assert (=> b!13468 m!9133))

(declare-fun m!9135 () Bool)

(assert (=> b!13469 m!9135))

(assert (=> b!13392 d!2021))

(declare-fun d!2025 () Bool)

(declare-fun res!10623 () Bool)

(declare-fun e!8079 () Bool)

(assert (=> d!2025 (=> res!10623 e!8079)))

(assert (=> d!2025 (= res!10623 (or (is-Nil!389 lt!3510) (is-Nil!389 (t!2788 lt!3510))))))

(assert (=> d!2025 (= (isStrictlySorted!83 lt!3510) e!8079)))

(declare-fun b!13474 () Bool)

(declare-fun e!8080 () Bool)

(assert (=> b!13474 (= e!8079 e!8080)))

(declare-fun res!10624 () Bool)

(assert (=> b!13474 (=> (not res!10624) (not e!8080))))

(assert (=> b!13474 (= res!10624 (bvslt (_1!233 (h!954 lt!3510)) (_1!233 (h!954 (t!2788 lt!3510)))))))

(declare-fun b!13475 () Bool)

(assert (=> b!13475 (= e!8080 (isStrictlySorted!83 (t!2788 lt!3510)))))

(assert (= (and d!2025 (not res!10623)) b!13474))

(assert (= (and b!13474 res!10624) b!13475))

(declare-fun m!9137 () Bool)

(assert (=> b!13475 m!9137))

(assert (=> b!13393 d!2025))

(declare-fun bs!525 () Bool)

(declare-fun b!13550 () Bool)

(assert (= bs!525 (and b!13550 b!13392)))

(declare-fun lambda!85 () Int)

(assert (=> bs!525 (= lambda!85 lambda!71)))

(assert (=> b!13550 true))

(declare-fun b!13545 () Bool)

(declare-fun e!8126 () Bool)

(declare-fun e!8123 () Bool)

(assert (=> b!13545 (= e!8126 e!8123)))

(declare-fun res!10652 () Bool)

(declare-fun call!378 () Bool)

(assert (=> b!13545 (= res!10652 call!378)))

(assert (=> b!13545 (=> res!10652 e!8123)))

(declare-fun d!2027 () Bool)

(declare-fun e!8122 () Bool)

(assert (=> d!2027 e!8122))

(declare-fun res!10654 () Bool)

(assert (=> d!2027 (=> (not res!10654) (not e!8122))))

(declare-fun lt!3524 () List!392)

(assert (=> d!2027 (= res!10654 (isStrictlySorted!83 lt!3524))))

(declare-fun e!8124 () List!392)

(assert (=> d!2027 (= lt!3524 e!8124)))

(declare-fun c!1264 () Bool)

(assert (=> d!2027 (= c!1264 (and (is-Cons!388 (t!2788 l!522)) (= (_2!233 (h!954 (t!2788 l!522))) value!159)))))

(assert (=> d!2027 (isStrictlySorted!83 (t!2788 l!522))))

(assert (=> d!2027 (= (filterByValue!7 (t!2788 l!522) value!159) lt!3524)))

(declare-fun b!13546 () Bool)

(assert (=> b!13546 (= e!8122 e!8126)))

(declare-fun c!1263 () Bool)

(assert (=> b!13546 (= c!1263 (isEmpty!81 (t!2788 l!522)))))

(declare-fun b!13547 () Bool)

(declare-fun e!8125 () List!392)

(assert (=> b!13547 (= e!8124 e!8125)))

(declare-fun c!1265 () Bool)

(assert (=> b!13547 (= c!1265 (and (is-Cons!388 (t!2788 l!522)) (not (= (_2!233 (h!954 (t!2788 l!522))) value!159))))))

(declare-fun bm!375 () Bool)

(declare-fun call!379 () List!392)

(assert (=> bm!375 (= call!379 (filterByValue!7 (t!2788 (t!2788 l!522)) value!159))))

(declare-fun b!13548 () Bool)

(declare-fun head!786 (List!392) tuple2!466)

(assert (=> b!13548 (= e!8123 (bvsge (_1!233 (head!786 lt!3524)) (_1!233 (head!786 (t!2788 l!522)))))))

(declare-fun b!13549 () Bool)

(declare-fun $colon$colon!16 (List!392 tuple2!466) List!392)

(assert (=> b!13549 (= e!8124 ($colon$colon!16 call!379 (h!954 (t!2788 l!522))))))

(declare-fun res!10653 () Bool)

(assert (=> b!13550 (=> (not res!10653) (not e!8122))))

(assert (=> b!13550 (= res!10653 (forall!74 lt!3524 lambda!85))))

(declare-fun b!13551 () Bool)

(assert (=> b!13551 (= e!8125 call!379)))

(declare-fun b!13552 () Bool)

(assert (=> b!13552 (= e!8126 call!378)))

(declare-fun bm!376 () Bool)

(assert (=> bm!376 (= call!378 (isEmpty!81 lt!3524))))

(declare-fun b!13553 () Bool)

(assert (=> b!13553 (= e!8125 Nil!389)))

(assert (= (and d!2027 c!1264) b!13549))

(assert (= (and d!2027 (not c!1264)) b!13547))

(assert (= (and b!13547 c!1265) b!13551))

(assert (= (and b!13547 (not c!1265)) b!13553))

(assert (= (or b!13549 b!13551) bm!375))

(assert (= (and d!2027 res!10654) b!13550))

(assert (= (and b!13550 res!10653) b!13546))

(assert (= (and b!13546 c!1263) b!13552))

(assert (= (and b!13546 (not c!1263)) b!13545))

(assert (= (and b!13545 (not res!10652)) b!13548))

(assert (= (or b!13552 b!13545) bm!376))

(declare-fun m!9163 () Bool)

(assert (=> b!13549 m!9163))

(declare-fun m!9165 () Bool)

(assert (=> b!13550 m!9165))

(declare-fun m!9167 () Bool)

(assert (=> bm!375 m!9167))

(declare-fun m!9169 () Bool)

(assert (=> b!13546 m!9169))

(declare-fun m!9171 () Bool)

(assert (=> d!2027 m!9171))

(assert (=> d!2027 m!9129))

(declare-fun m!9173 () Bool)

(assert (=> bm!376 m!9173))

(declare-fun m!9175 () Bool)

(assert (=> b!13548 m!9175))

(declare-fun m!9177 () Bool)

(assert (=> b!13548 m!9177))

(assert (=> b!13393 d!2027))

(declare-fun b!13566 () Bool)

(declare-fun e!8135 () Bool)

(declare-fun tp!2195 () Bool)

(assert (=> b!13566 (= e!8135 (and tp_is_empty!667 tp!2195))))

(assert (=> b!13391 (= tp!2186 e!8135)))

(assert (= (and b!13391 (is-Cons!388 (t!2788 l!522))) b!13566))

(declare-fun b_lambda!881 () Bool)

(assert (= b_lambda!875 (or b!13392 b_lambda!881)))

