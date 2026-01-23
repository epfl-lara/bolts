; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!756298 () Bool)

(assert start!756298)

(declare-fun b!8029188 () Bool)

(declare-fun e!4730328 () Bool)

(declare-fun tp_is_empty!54367 () Bool)

(declare-fun tp!2402704 () Bool)

(assert (=> b!8029188 (= e!4730328 (and tp_is_empty!54367 tp!2402704))))

(declare-fun b!8029187 () Bool)

(declare-fun e!4730326 () Bool)

(declare-datatypes ((B!4463 0))(
  ( (B!4464 (val!32631 Int)) )
))
(declare-datatypes ((List!75147 0))(
  ( (Nil!75021) (Cons!75021 (h!81469 B!4463) (t!390903 List!75147)) )
))
(declare-fun prefix!66 () List!75147)

(declare-fun ListPrimitiveSize!522 (List!75147) Int)

(declare-fun tail!16043 (List!75147) List!75147)

(assert (=> b!8029187 (= e!4730326 (>= (ListPrimitiveSize!522 (tail!16043 prefix!66)) (ListPrimitiveSize!522 prefix!66)))))

(declare-fun b!8029186 () Bool)

(declare-fun res!3175492 () Bool)

(assert (=> b!8029186 (=> (not res!3175492) (not e!4730326))))

(declare-fun l!2919 () List!75147)

(declare-fun head!16502 (List!75147) B!4463)

(assert (=> b!8029186 (= res!3175492 (= (head!16502 prefix!66) (head!16502 l!2919)))))

(declare-fun b!8029189 () Bool)

(declare-fun e!4730327 () Bool)

(declare-fun tp!2402705 () Bool)

(assert (=> b!8029189 (= e!4730327 (and tp_is_empty!54367 tp!2402705))))

(declare-fun res!3175493 () Bool)

(assert (=> start!756298 (=> (not res!3175493) (not e!4730326))))

(assert (=> start!756298 (= res!3175493 (and (not (is-Nil!75021 prefix!66)) (not (is-Nil!75021 l!2919))))))

(assert (=> start!756298 e!4730326))

(assert (=> start!756298 e!4730328))

(assert (=> start!756298 e!4730327))

(assert (= (and start!756298 res!3175493) b!8029186))

(assert (= (and b!8029186 res!3175492) b!8029187))

(assert (= (and start!756298 (is-Cons!75021 prefix!66)) b!8029188))

(assert (= (and start!756298 (is-Cons!75021 l!2919)) b!8029189))

(declare-fun m!8391258 () Bool)

(assert (=> b!8029187 m!8391258))

(assert (=> b!8029187 m!8391258))

(declare-fun m!8391260 () Bool)

(assert (=> b!8029187 m!8391260))

(declare-fun m!8391262 () Bool)

(assert (=> b!8029187 m!8391262))

(declare-fun m!8391264 () Bool)

(assert (=> b!8029186 m!8391264))

(declare-fun m!8391266 () Bool)

(assert (=> b!8029186 m!8391266))

(push 1)

(assert tp_is_empty!54367)

(assert (not b!8029187))

(assert (not b!8029189))

(assert (not b!8029186))

(assert (not b!8029188))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2394308 () Bool)

(declare-fun lt!2721757 () Int)

(assert (=> d!2394308 (>= lt!2721757 0)))

(declare-fun e!4730340 () Int)

(assert (=> d!2394308 (= lt!2721757 e!4730340)))

(declare-fun c!1473045 () Bool)

(assert (=> d!2394308 (= c!1473045 (is-Nil!75021 (tail!16043 prefix!66)))))

(assert (=> d!2394308 (= (ListPrimitiveSize!522 (tail!16043 prefix!66)) lt!2721757)))

(declare-fun b!8029206 () Bool)

(assert (=> b!8029206 (= e!4730340 0)))

(declare-fun b!8029207 () Bool)

(assert (=> b!8029207 (= e!4730340 (+ 1 (ListPrimitiveSize!522 (t!390903 (tail!16043 prefix!66)))))))

(assert (= (and d!2394308 c!1473045) b!8029206))

(assert (= (and d!2394308 (not c!1473045)) b!8029207))

(declare-fun m!8391278 () Bool)

(assert (=> b!8029207 m!8391278))

(assert (=> b!8029187 d!2394308))

(declare-fun d!2394310 () Bool)

(assert (=> d!2394310 (= (tail!16043 prefix!66) (t!390903 prefix!66))))

(assert (=> b!8029187 d!2394310))

(declare-fun d!2394312 () Bool)

(declare-fun lt!2721758 () Int)

(assert (=> d!2394312 (>= lt!2721758 0)))

(declare-fun e!4730341 () Int)

(assert (=> d!2394312 (= lt!2721758 e!4730341)))

(declare-fun c!1473046 () Bool)

(assert (=> d!2394312 (= c!1473046 (is-Nil!75021 prefix!66))))

(assert (=> d!2394312 (= (ListPrimitiveSize!522 prefix!66) lt!2721758)))

(declare-fun b!8029208 () Bool)

(assert (=> b!8029208 (= e!4730341 0)))

(declare-fun b!8029209 () Bool)

(assert (=> b!8029209 (= e!4730341 (+ 1 (ListPrimitiveSize!522 (t!390903 prefix!66))))))

(assert (= (and d!2394312 c!1473046) b!8029208))

(assert (= (and d!2394312 (not c!1473046)) b!8029209))

(declare-fun m!8391280 () Bool)

(assert (=> b!8029209 m!8391280))

(assert (=> b!8029187 d!2394312))

(declare-fun d!2394314 () Bool)

(assert (=> d!2394314 (= (head!16502 prefix!66) (h!81469 prefix!66))))

(assert (=> b!8029186 d!2394314))

(declare-fun d!2394316 () Bool)

(assert (=> d!2394316 (= (head!16502 l!2919) (h!81469 l!2919))))

(assert (=> b!8029186 d!2394316))

(declare-fun b!8029214 () Bool)

(declare-fun e!4730344 () Bool)

(declare-fun tp!2402714 () Bool)

(assert (=> b!8029214 (= e!4730344 (and tp_is_empty!54367 tp!2402714))))

(assert (=> b!8029189 (= tp!2402705 e!4730344)))

(assert (= (and b!8029189 (is-Cons!75021 (t!390903 l!2919))) b!8029214))

(declare-fun b!8029215 () Bool)

(declare-fun e!4730345 () Bool)

(declare-fun tp!2402715 () Bool)

(assert (=> b!8029215 (= e!4730345 (and tp_is_empty!54367 tp!2402715))))

(assert (=> b!8029188 (= tp!2402704 e!4730345)))

(assert (= (and b!8029188 (is-Cons!75021 (t!390903 prefix!66))) b!8029215))

(push 1)

(assert tp_is_empty!54367)

(assert (not b!8029209))

(assert (not b!8029214))

(assert (not b!8029207))

(assert (not b!8029215))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

