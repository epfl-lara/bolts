; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!106594 () Bool)

(assert start!106594)

(declare-fun b!1266315 () Bool)

(declare-fun res!843157 () Bool)

(declare-fun e!721278 () Bool)

(assert (=> b!1266315 (=> (not res!843157) (not e!721278))))

(declare-datatypes ((B!2000 0))(
  ( (B!2001 (val!16335 Int)) )
))
(declare-datatypes ((tuple2!21338 0))(
  ( (tuple2!21339 (_1!10679 (_ BitVec 64)) (_2!10679 B!2000)) )
))
(declare-datatypes ((List!28502 0))(
  ( (Nil!28499) (Cons!28498 (h!29707 tuple2!21338) (t!42033 List!28502)) )
))
(declare-fun l!706 () List!28502)

(assert (=> b!1266315 (= res!843157 (not (is-Cons!28498 l!706)))))

(declare-fun b!1266314 () Bool)

(declare-fun res!843155 () Bool)

(assert (=> b!1266314 (=> (not res!843155) (not e!721278))))

(declare-fun key1!31 () (_ BitVec 64))

(declare-fun containsKey!659 (List!28502 (_ BitVec 64)) Bool)

(assert (=> b!1266314 (= res!843155 (not (containsKey!659 l!706 key1!31)))))

(declare-fun b!1266316 () Bool)

(declare-fun v1!26 () B!2000)

(declare-fun removeStrictlySorted!159 (List!28502 (_ BitVec 64)) List!28502)

(declare-fun insertStrictlySorted!468 (List!28502 (_ BitVec 64) B!2000) List!28502)

(assert (=> b!1266316 (= e!721278 (not (= (removeStrictlySorted!159 (insertStrictlySorted!468 l!706 key1!31 v1!26) key1!31) l!706)))))

(declare-fun res!843156 () Bool)

(assert (=> start!106594 (=> (not res!843156) (not e!721278))))

(declare-fun isStrictlySorted!798 (List!28502) Bool)

(assert (=> start!106594 (= res!843156 (isStrictlySorted!798 l!706))))

(assert (=> start!106594 e!721278))

(declare-fun e!721279 () Bool)

(assert (=> start!106594 e!721279))

(assert (=> start!106594 true))

(declare-fun tp_is_empty!32533 () Bool)

(assert (=> start!106594 tp_is_empty!32533))

(declare-fun b!1266317 () Bool)

(declare-fun tp!96432 () Bool)

(assert (=> b!1266317 (= e!721279 (and tp_is_empty!32533 tp!96432))))

(assert (= (and start!106594 res!843156) b!1266314))

(assert (= (and b!1266314 res!843155) b!1266315))

(assert (= (and b!1266315 res!843157) b!1266316))

(assert (= (and start!106594 (is-Cons!28498 l!706)) b!1266317))

(declare-fun m!1166121 () Bool)

(assert (=> b!1266314 m!1166121))

(declare-fun m!1166123 () Bool)

(assert (=> b!1266316 m!1166123))

(assert (=> b!1266316 m!1166123))

(declare-fun m!1166125 () Bool)

(assert (=> b!1266316 m!1166125))

(declare-fun m!1166127 () Bool)

(assert (=> start!106594 m!1166127))

(push 1)

(assert (not b!1266314))

(assert (not b!1266317))

(assert (not b!1266316))

(assert tp_is_empty!32533)

(assert (not start!106594))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1266372 () Bool)

(declare-fun e!721314 () List!28502)

(assert (=> b!1266372 (= e!721314 Nil!28499)))

(declare-fun b!1266373 () Bool)

(declare-fun e!721316 () List!28502)

(assert (=> b!1266373 (= e!721316 (t!42033 (insertStrictlySorted!468 l!706 key1!31 v1!26)))))

(declare-fun d!139141 () Bool)

(declare-fun e!721315 () Bool)

(assert (=> d!139141 e!721315))

(declare-fun res!843190 () Bool)

(assert (=> d!139141 (=> (not res!843190) (not e!721315))))

(declare-fun lt!574075 () List!28502)

(assert (=> d!139141 (= res!843190 (isStrictlySorted!798 lt!574075))))

(assert (=> d!139141 (= lt!574075 e!721316)))

(declare-fun c!123388 () Bool)

(assert (=> d!139141 (= c!123388 (and (is-Cons!28498 (insertStrictlySorted!468 l!706 key1!31 v1!26)) (= (_1!10679 (h!29707 (insertStrictlySorted!468 l!706 key1!31 v1!26))) key1!31)))))

(assert (=> d!139141 (isStrictlySorted!798 (insertStrictlySorted!468 l!706 key1!31 v1!26))))

(assert (=> d!139141 (= (removeStrictlySorted!159 (insertStrictlySorted!468 l!706 key1!31 v1!26) key1!31) lt!574075)))

(declare-fun b!1266374 () Bool)

(assert (=> b!1266374 (= e!721316 e!721314)))

(declare-fun c!123389 () Bool)

(assert (=> b!1266374 (= c!123389 (and (is-Cons!28498 (insertStrictlySorted!468 l!706 key1!31 v1!26)) (not (= (_1!10679 (h!29707 (insertStrictlySorted!468 l!706 key1!31 v1!26))) key1!31))))))

(declare-fun b!1266375 () Bool)

(declare-fun $colon$colon!646 (List!28502 tuple2!21338) List!28502)

(assert (=> b!1266375 (= e!721314 ($colon$colon!646 (removeStrictlySorted!159 (t!42033 (insertStrictlySorted!468 l!706 key1!31 v1!26)) key1!31) (h!29707 (insertStrictlySorted!468 l!706 key1!31 v1!26))))))

(declare-fun b!1266376 () Bool)

(assert (=> b!1266376 (= e!721315 (not (containsKey!659 lt!574075 key1!31)))))

(assert (= (and d!139141 c!123388) b!1266373))

(assert (= (and d!139141 (not c!123388)) b!1266374))

(assert (= (and b!1266374 c!123389) b!1266375))

(assert (= (and b!1266374 (not c!123389)) b!1266372))

(assert (= (and d!139141 res!843190) b!1266376))

(declare-fun m!1166149 () Bool)

(assert (=> d!139141 m!1166149))

(assert (=> d!139141 m!1166123))

(declare-fun m!1166151 () Bool)

(assert (=> d!139141 m!1166151))

(declare-fun m!1166153 () Bool)

(assert (=> b!1266375 m!1166153))

(assert (=> b!1266375 m!1166153))

(declare-fun m!1166155 () Bool)

(assert (=> b!1266375 m!1166155))

(declare-fun m!1166157 () Bool)

(assert (=> b!1266376 m!1166157))

(assert (=> b!1266316 d!139141))

(declare-fun b!1266459 () Bool)

(declare-fun e!721364 () List!28502)

(declare-fun call!62484 () List!28502)

(assert (=> b!1266459 (= e!721364 call!62484)))

(declare-fun b!1266460 () Bool)

(declare-fun e!721363 () List!28502)

(declare-fun call!62482 () List!28502)

(assert (=> b!1266460 (= e!721363 call!62482)))

(declare-fun bm!62479 () Bool)

(assert (=> bm!62479 (= call!62484 call!62482)))

(declare-fun b!1266461 () Bool)

(declare-fun c!123423 () Bool)

(assert (=> b!1266461 (= c!123423 (and (is-Cons!28498 l!706) (bvsgt (_1!10679 (h!29707 l!706)) key1!31)))))

(assert (=> b!1266461 (= e!721363 e!721364)))

(declare-fun b!1266462 () Bool)

(declare-fun e!721365 () List!28502)

(declare-fun call!62483 () List!28502)

(assert (=> b!1266462 (= e!721365 call!62483)))

(declare-fun d!139147 () Bool)

(declare-fun e!721361 () Bool)

(assert (=> d!139147 e!721361))

(declare-fun res!843209 () Bool)

(assert (=> d!139147 (=> (not res!843209) (not e!721361))))

(declare-fun lt!574086 () List!28502)

(assert (=> d!139147 (= res!843209 (isStrictlySorted!798 lt!574086))))

(assert (=> d!139147 (= lt!574086 e!721365)))

(declare-fun c!123425 () Bool)

(assert (=> d!139147 (= c!123425 (and (is-Cons!28498 l!706) (bvslt (_1!10679 (h!29707 l!706)) key1!31)))))

(assert (=> d!139147 (isStrictlySorted!798 l!706)))

(assert (=> d!139147 (= (insertStrictlySorted!468 l!706 key1!31 v1!26) lt!574086)))

(declare-fun b!1266463 () Bool)

(declare-fun e!721362 () List!28502)

(assert (=> b!1266463 (= e!721362 (insertStrictlySorted!468 (t!42033 l!706) key1!31 v1!26))))

(declare-fun b!1266464 () Bool)

(assert (=> b!1266464 (= e!721365 e!721363)))

(declare-fun c!123424 () Bool)

(assert (=> b!1266464 (= c!123424 (and (is-Cons!28498 l!706) (= (_1!10679 (h!29707 l!706)) key1!31)))))

(declare-fun bm!62480 () Bool)

(assert (=> bm!62480 (= call!62483 ($colon$colon!646 e!721362 (ite c!123425 (h!29707 l!706) (tuple2!21339 key1!31 v1!26))))))

(declare-fun c!123422 () Bool)

(assert (=> bm!62480 (= c!123422 c!123425)))

(declare-fun b!1266465 () Bool)

(declare-fun contains!7661 (List!28502 tuple2!21338) Bool)

(assert (=> b!1266465 (= e!721361 (contains!7661 lt!574086 (tuple2!21339 key1!31 v1!26)))))

(declare-fun b!1266466 () Bool)

(assert (=> b!1266466 (= e!721364 call!62484)))

(declare-fun b!1266467 () Bool)

(assert (=> b!1266467 (= e!721362 (ite c!123424 (t!42033 l!706) (ite c!123423 (Cons!28498 (h!29707 l!706) (t!42033 l!706)) Nil!28499)))))

(declare-fun bm!62481 () Bool)

(assert (=> bm!62481 (= call!62482 call!62483)))

(declare-fun b!1266468 () Bool)

(declare-fun res!843210 () Bool)

(assert (=> b!1266468 (=> (not res!843210) (not e!721361))))

(assert (=> b!1266468 (= res!843210 (containsKey!659 lt!574086 key1!31))))

(assert (= (and d!139147 c!123425) b!1266462))

(assert (= (and d!139147 (not c!123425)) b!1266464))

(assert (= (and b!1266464 c!123424) b!1266460))

(assert (= (and b!1266464 (not c!123424)) b!1266461))

(assert (= (and b!1266461 c!123423) b!1266459))

(assert (= (and b!1266461 (not c!123423)) b!1266466))

(assert (= (or b!1266459 b!1266466) bm!62479))

(assert (= (or b!1266460 bm!62479) bm!62481))

(assert (= (or b!1266462 bm!62481) bm!62480))

(assert (= (and bm!62480 c!123422) b!1266463))

(assert (= (and bm!62480 (not c!123422)) b!1266467))

(assert (= (and d!139147 res!843209) b!1266468))

(assert (= (and b!1266468 res!843210) b!1266465))

(declare-fun m!1166179 () Bool)

(assert (=> bm!62480 m!1166179))

(declare-fun m!1166181 () Bool)

(assert (=> b!1266468 m!1166181))

(declare-fun m!1166183 () Bool)

(assert (=> b!1266463 m!1166183))

(declare-fun m!1166185 () Bool)

(assert (=> b!1266465 m!1166185))

(declare-fun m!1166187 () Bool)

(assert (=> d!139147 m!1166187))

(assert (=> d!139147 m!1166127))

(assert (=> b!1266316 d!139147))

(declare-fun d!139153 () Bool)

(declare-fun res!843219 () Bool)

(declare-fun e!721380 () Bool)

(assert (=> d!139153 (=> res!843219 e!721380)))

(assert (=> d!139153 (= res!843219 (or (is-Nil!28499 l!706) (is-Nil!28499 (t!42033 l!706))))))

(assert (=> d!139153 (= (isStrictlySorted!798 l!706) e!721380)))

(declare-fun b!1266493 () Bool)

(declare-fun e!721381 () Bool)

(assert (=> b!1266493 (= e!721380 e!721381)))

(declare-fun res!843220 () Bool)

(assert (=> b!1266493 (=> (not res!843220) (not e!721381))))

(assert (=> b!1266493 (= res!843220 (bvslt (_1!10679 (h!29707 l!706)) (_1!10679 (h!29707 (t!42033 l!706)))))))

(declare-fun b!1266494 () Bool)

(assert (=> b!1266494 (= e!721381 (isStrictlySorted!798 (t!42033 l!706)))))

(assert (= (and d!139153 (not res!843219)) b!1266493))

(assert (= (and b!1266493 res!843220) b!1266494))

(declare-fun m!1166209 () Bool)

(assert (=> b!1266494 m!1166209))

(assert (=> start!106594 d!139153))

(declare-fun d!139159 () Bool)

(declare-fun res!843237 () Bool)

(declare-fun e!721403 () Bool)

(assert (=> d!139159 (=> res!843237 e!721403)))

(assert (=> d!139159 (= res!843237 (and (is-Cons!28498 l!706) (= (_1!10679 (h!29707 l!706)) key1!31)))))

(assert (=> d!139159 (= (containsKey!659 l!706 key1!31) e!721403)))

(declare-fun b!1266520 () Bool)

(declare-fun e!721404 () Bool)

(assert (=> b!1266520 (= e!721403 e!721404)))

(declare-fun res!843238 () Bool)

(assert (=> b!1266520 (=> (not res!843238) (not e!721404))))

(assert (=> b!1266520 (= res!843238 (and (or (not (is-Cons!28498 l!706)) (bvsle (_1!10679 (h!29707 l!706)) key1!31)) (is-Cons!28498 l!706) (bvslt (_1!10679 (h!29707 l!706)) key1!31)))))

(declare-fun b!1266521 () Bool)

(assert (=> b!1266521 (= e!721404 (containsKey!659 (t!42033 l!706) key1!31))))

(assert (= (and d!139159 (not res!843237)) b!1266520))

(assert (= (and b!1266520 res!843238) b!1266521))

(declare-fun m!1166215 () Bool)

(assert (=> b!1266521 m!1166215))

(assert (=> b!1266314 d!139159))

(declare-fun b!1266527 () Bool)

(declare-fun e!721408 () Bool)

(declare-fun tp!96447 () Bool)

(assert (=> b!1266527 (= e!721408 (and tp_is_empty!32533 tp!96447))))

(assert (=> b!1266317 (= tp!96432 e!721408)))

(assert (= (and b!1266317 (is-Cons!28498 (t!42033 l!706))) b!1266527))

(push 1)

(assert (not b!1266465))

(assert tp_is_empty!32533)

(assert (not b!1266527))

(assert (not b!1266521))

(assert (not b!1266494))

(assert (not d!139141))

(assert (not d!139147))

(assert (not b!1266463))

(assert (not b!1266376))

(assert (not bm!62480))

(assert (not b!1266468))

(assert (not b!1266375))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!139185 () Bool)

(declare-fun res!843262 () Bool)

(declare-fun e!721438 () Bool)

(assert (=> d!139185 (=> res!843262 e!721438)))

(assert (=> d!139185 (= res!843262 (or (is-Nil!28499 lt!574086) (is-Nil!28499 (t!42033 lt!574086))))))

(assert (=> d!139185 (= (isStrictlySorted!798 lt!574086) e!721438)))

(declare-fun b!1266564 () Bool)

(declare-fun e!721439 () Bool)

(assert (=> b!1266564 (= e!721438 e!721439)))

(declare-fun res!843263 () Bool)

(assert (=> b!1266564 (=> (not res!843263) (not e!721439))))

(assert (=> b!1266564 (= res!843263 (bvslt (_1!10679 (h!29707 lt!574086)) (_1!10679 (h!29707 (t!42033 lt!574086)))))))

(declare-fun b!1266565 () Bool)

(assert (=> b!1266565 (= e!721439 (isStrictlySorted!798 (t!42033 lt!574086)))))

(assert (= (and d!139185 (not res!843262)) b!1266564))

(assert (= (and b!1266564 res!843263) b!1266565))

(declare-fun m!1166255 () Bool)

(assert (=> b!1266565 m!1166255))

(assert (=> d!139147 d!139185))

(assert (=> d!139147 d!139153))

(declare-fun d!139187 () Bool)

(assert (=> d!139187 (= ($colon$colon!646 e!721362 (ite c!123425 (h!29707 l!706) (tuple2!21339 key1!31 v1!26))) (Cons!28498 (ite c!123425 (h!29707 l!706) (tuple2!21339 key1!31 v1!26)) e!721362))))

(assert (=> bm!62480 d!139187))

(declare-fun lt!574096 () Bool)

(declare-fun d!139189 () Bool)

(declare-fun content!643 (List!28502) (Set tuple2!21338))

(assert (=> d!139189 (= lt!574096 (set.member (tuple2!21339 key1!31 v1!26) (content!643 lt!574086)))))

(declare-fun e!721444 () Bool)

(assert (=> d!139189 (= lt!574096 e!721444)))

(declare-fun res!843269 () Bool)

(assert (=> d!139189 (=> (not res!843269) (not e!721444))))

(assert (=> d!139189 (= res!843269 (is-Cons!28498 lt!574086))))

(assert (=> d!139189 (= (contains!7661 lt!574086 (tuple2!21339 key1!31 v1!26)) lt!574096)))

(declare-fun b!1266570 () Bool)

(declare-fun e!721445 () Bool)

(assert (=> b!1266570 (= e!721444 e!721445)))

(declare-fun res!843268 () Bool)

(assert (=> b!1266570 (=> res!843268 e!721445)))

(assert (=> b!1266570 (= res!843268 (= (h!29707 lt!574086) (tuple2!21339 key1!31 v1!26)))))

(declare-fun b!1266571 () Bool)

(assert (=> b!1266571 (= e!721445 (contains!7661 (t!42033 lt!574086) (tuple2!21339 key1!31 v1!26)))))

(assert (= (and d!139189 res!843269) b!1266570))

(assert (= (and b!1266570 (not res!843268)) b!1266571))

(declare-fun m!1166257 () Bool)

(assert (=> d!139189 m!1166257))

(declare-fun m!1166259 () Bool)

(assert (=> d!139189 m!1166259))

(declare-fun m!1166261 () Bool)

(assert (=> b!1266571 m!1166261))

(assert (=> b!1266465 d!139189))

(declare-fun d!139191 () Bool)

(declare-fun res!843270 () Bool)

(declare-fun e!721446 () Bool)

(assert (=> d!139191 (=> res!843270 e!721446)))

(assert (=> d!139191 (= res!843270 (and (is-Cons!28498 lt!574075) (= (_1!10679 (h!29707 lt!574075)) key1!31)))))

(assert (=> d!139191 (= (containsKey!659 lt!574075 key1!31) e!721446)))

(declare-fun b!1266572 () Bool)

(declare-fun e!721447 () Bool)

(assert (=> b!1266572 (= e!721446 e!721447)))

(declare-fun res!843271 () Bool)

(assert (=> b!1266572 (=> (not res!843271) (not e!721447))))

(assert (=> b!1266572 (= res!843271 (and (or (not (is-Cons!28498 lt!574075)) (bvsle (_1!10679 (h!29707 lt!574075)) key1!31)) (is-Cons!28498 lt!574075) (bvslt (_1!10679 (h!29707 lt!574075)) key1!31)))))

(declare-fun b!1266573 () Bool)

(assert (=> b!1266573 (= e!721447 (containsKey!659 (t!42033 lt!574075) key1!31))))

(assert (= (and d!139191 (not res!843270)) b!1266572))

(assert (= (and b!1266572 res!843271) b!1266573))

(declare-fun m!1166263 () Bool)

(assert (=> b!1266573 m!1166263))

(assert (=> b!1266376 d!139191))

(declare-fun d!139193 () Bool)

(declare-fun res!843272 () Bool)

(declare-fun e!721448 () Bool)

(assert (=> d!139193 (=> res!843272 e!721448)))

(assert (=> d!139193 (= res!843272 (and (is-Cons!28498 lt!574086) (= (_1!10679 (h!29707 lt!574086)) key1!31)))))

(assert (=> d!139193 (= (containsKey!659 lt!574086 key1!31) e!721448)))

(declare-fun b!1266574 () Bool)

(declare-fun e!721449 () Bool)

(assert (=> b!1266574 (= e!721448 e!721449)))

(declare-fun res!843273 () Bool)

(assert (=> b!1266574 (=> (not res!843273) (not e!721449))))

(assert (=> b!1266574 (= res!843273 (and (or (not (is-Cons!28498 lt!574086)) (bvsle (_1!10679 (h!29707 lt!574086)) key1!31)) (is-Cons!28498 lt!574086) (bvslt (_1!10679 (h!29707 lt!574086)) key1!31)))))

(declare-fun b!1266575 () Bool)

(assert (=> b!1266575 (= e!721449 (containsKey!659 (t!42033 lt!574086) key1!31))))

(assert (= (and d!139193 (not res!843272)) b!1266574))

(assert (= (and b!1266574 res!843273) b!1266575))

(declare-fun m!1166265 () Bool)

(assert (=> b!1266575 m!1166265))

(assert (=> b!1266468 d!139193))

(declare-fun d!139195 () Bool)

(declare-fun res!843274 () Bool)

(declare-fun e!721450 () Bool)

(assert (=> d!139195 (=> res!843274 e!721450)))

(assert (=> d!139195 (= res!843274 (and (is-Cons!28498 (t!42033 l!706)) (= (_1!10679 (h!29707 (t!42033 l!706))) key1!31)))))

(assert (=> d!139195 (= (containsKey!659 (t!42033 l!706) key1!31) e!721450)))

(declare-fun b!1266576 () Bool)

(declare-fun e!721451 () Bool)

(assert (=> b!1266576 (= e!721450 e!721451)))

(declare-fun res!843275 () Bool)

(assert (=> b!1266576 (=> (not res!843275) (not e!721451))))

(assert (=> b!1266576 (= res!843275 (and (or (not (is-Cons!28498 (t!42033 l!706))) (bvsle (_1!10679 (h!29707 (t!42033 l!706))) key1!31)) (is-Cons!28498 (t!42033 l!706)) (bvslt (_1!10679 (h!29707 (t!42033 l!706))) key1!31)))))

(declare-fun b!1266577 () Bool)

(assert (=> b!1266577 (= e!721451 (containsKey!659 (t!42033 (t!42033 l!706)) key1!31))))

(assert (= (and d!139195 (not res!843274)) b!1266576))

(assert (= (and b!1266576 res!843275) b!1266577))

(declare-fun m!1166267 () Bool)

(assert (=> b!1266577 m!1166267))

(assert (=> b!1266521 d!139195))

(declare-fun d!139197 () Bool)

(declare-fun res!843276 () Bool)

(declare-fun e!721452 () Bool)

(assert (=> d!139197 (=> res!843276 e!721452)))

(assert (=> d!139197 (= res!843276 (or (is-Nil!28499 (t!42033 l!706)) (is-Nil!28499 (t!42033 (t!42033 l!706)))))))

(assert (=> d!139197 (= (isStrictlySorted!798 (t!42033 l!706)) e!721452)))

(declare-fun b!1266578 () Bool)

(declare-fun e!721453 () Bool)

(assert (=> b!1266578 (= e!721452 e!721453)))

(declare-fun res!843277 () Bool)

(assert (=> b!1266578 (=> (not res!843277) (not e!721453))))

(assert (=> b!1266578 (= res!843277 (bvslt (_1!10679 (h!29707 (t!42033 l!706))) (_1!10679 (h!29707 (t!42033 (t!42033 l!706))))))))

(declare-fun b!1266579 () Bool)

(assert (=> b!1266579 (= e!721453 (isStrictlySorted!798 (t!42033 (t!42033 l!706))))))

(assert (= (and d!139197 (not res!843276)) b!1266578))

(assert (= (and b!1266578 res!843277) b!1266579))

(declare-fun m!1166269 () Bool)

(assert (=> b!1266579 m!1166269))

(assert (=> b!1266494 d!139197))

(declare-fun d!139199 () Bool)

(declare-fun res!843278 () Bool)

(declare-fun e!721454 () Bool)

(assert (=> d!139199 (=> res!843278 e!721454)))

(assert (=> d!139199 (= res!843278 (or (is-Nil!28499 lt!574075) (is-Nil!28499 (t!42033 lt!574075))))))

(assert (=> d!139199 (= (isStrictlySorted!798 lt!574075) e!721454)))

(declare-fun b!1266580 () Bool)

(declare-fun e!721455 () Bool)

(assert (=> b!1266580 (= e!721454 e!721455)))

(declare-fun res!843279 () Bool)

(assert (=> b!1266580 (=> (not res!843279) (not e!721455))))

(assert (=> b!1266580 (= res!843279 (bvslt (_1!10679 (h!29707 lt!574075)) (_1!10679 (h!29707 (t!42033 lt!574075)))))))

(declare-fun b!1266581 () Bool)

(assert (=> b!1266581 (= e!721455 (isStrictlySorted!798 (t!42033 lt!574075)))))

(assert (= (and d!139199 (not res!843278)) b!1266580))

(assert (= (and b!1266580 res!843279) b!1266581))

(declare-fun m!1166271 () Bool)

(assert (=> b!1266581 m!1166271))

(assert (=> d!139141 d!139199))

(declare-fun d!139201 () Bool)

(declare-fun res!843280 () Bool)

(declare-fun e!721456 () Bool)

(assert (=> d!139201 (=> res!843280 e!721456)))

(assert (=> d!139201 (= res!843280 (or (is-Nil!28499 (insertStrictlySorted!468 l!706 key1!31 v1!26)) (is-Nil!28499 (t!42033 (insertStrictlySorted!468 l!706 key1!31 v1!26)))))))

(assert (=> d!139201 (= (isStrictlySorted!798 (insertStrictlySorted!468 l!706 key1!31 v1!26)) e!721456)))

(declare-fun b!1266582 () Bool)

