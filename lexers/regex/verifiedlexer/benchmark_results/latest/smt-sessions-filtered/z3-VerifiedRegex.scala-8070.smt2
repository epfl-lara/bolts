; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!416910 () Bool)

(assert start!416910)

(declare-fun res!1773735 () Bool)

(declare-fun e!2693374 () Bool)

(assert (=> start!416910 (=> (not res!1773735) (not e!2693374))))

(declare-datatypes ((K!9755 0))(
  ( (K!9756 (val!16075 Int)) )
))
(declare-datatypes ((V!10001 0))(
  ( (V!10002 (val!16076 Int)) )
))
(declare-datatypes ((tuple2!47540 0))(
  ( (tuple2!47541 (_1!27064 K!9755) (_2!27064 V!10001)) )
))
(declare-datatypes ((List!48598 0))(
  ( (Nil!48474) (Cons!48474 (h!53943 tuple2!47540) (t!355510 List!48598)) )
))
(declare-fun l!13867 () List!48598)

(declare-fun noDuplicateKeys!287 (List!48598) Bool)

(assert (=> start!416910 (= res!1773735 (noDuplicateKeys!287 l!13867))))

(assert (=> start!416910 e!2693374))

(declare-fun e!2693375 () Bool)

(assert (=> start!416910 e!2693375))

(declare-fun b!4328435 () Bool)

(declare-fun ListPrimitiveSize!323 (List!48598) Int)

(assert (=> b!4328435 (= e!2693374 (< (ListPrimitiveSize!323 l!13867) 0))))

(declare-fun tp!1328010 () Bool)

(declare-fun tp_is_empty!24339 () Bool)

(declare-fun b!4328436 () Bool)

(declare-fun tp_is_empty!24337 () Bool)

(assert (=> b!4328436 (= e!2693375 (and tp_is_empty!24337 tp_is_empty!24339 tp!1328010))))

(assert (= (and start!416910 res!1773735) b!4328435))

(get-info :version)

(assert (= (and start!416910 ((_ is Cons!48474) l!13867)) b!4328436))

(declare-fun m!4923277 () Bool)

(assert (=> start!416910 m!4923277))

(declare-fun m!4923279 () Bool)

(assert (=> b!4328435 m!4923279))

(check-sat tp_is_empty!24339 (not start!416910) (not b!4328435) (not b!4328436) tp_is_empty!24337)
(check-sat)
(get-model)

(declare-fun d!1272191 () Bool)

(declare-fun lt!1545241 () Int)

(assert (=> d!1272191 (>= lt!1545241 0)))

(declare-fun e!2693381 () Int)

(assert (=> d!1272191 (= lt!1545241 e!2693381)))

(declare-fun c!736539 () Bool)

(assert (=> d!1272191 (= c!736539 ((_ is Nil!48474) l!13867))))

(assert (=> d!1272191 (= (ListPrimitiveSize!323 l!13867) lt!1545241)))

(declare-fun b!4328447 () Bool)

(assert (=> b!4328447 (= e!2693381 0)))

(declare-fun b!4328448 () Bool)

(assert (=> b!4328448 (= e!2693381 (+ 1 (ListPrimitiveSize!323 (t!355510 l!13867))))))

(assert (= (and d!1272191 c!736539) b!4328447))

(assert (= (and d!1272191 (not c!736539)) b!4328448))

(declare-fun m!4923283 () Bool)

(assert (=> b!4328448 m!4923283))

(assert (=> b!4328435 d!1272191))

(declare-fun d!1272195 () Bool)

(declare-fun res!1773746 () Bool)

(declare-fun e!2693395 () Bool)

(assert (=> d!1272195 (=> res!1773746 e!2693395)))

(assert (=> d!1272195 (= res!1773746 (not ((_ is Cons!48474) l!13867)))))

(assert (=> d!1272195 (= (noDuplicateKeys!287 l!13867) e!2693395)))

(declare-fun b!4328464 () Bool)

(declare-fun e!2693396 () Bool)

(assert (=> b!4328464 (= e!2693395 e!2693396)))

(declare-fun res!1773747 () Bool)

(assert (=> b!4328464 (=> (not res!1773747) (not e!2693396))))

(declare-fun containsKey!437 (List!48598 K!9755) Bool)

(assert (=> b!4328464 (= res!1773747 (not (containsKey!437 (t!355510 l!13867) (_1!27064 (h!53943 l!13867)))))))

(declare-fun b!4328465 () Bool)

(assert (=> b!4328465 (= e!2693396 (noDuplicateKeys!287 (t!355510 l!13867)))))

(assert (= (and d!1272195 (not res!1773746)) b!4328464))

(assert (= (and b!4328464 res!1773747) b!4328465))

(declare-fun m!4923289 () Bool)

(assert (=> b!4328464 m!4923289))

(declare-fun m!4923291 () Bool)

(assert (=> b!4328465 m!4923291))

(assert (=> start!416910 d!1272195))

(declare-fun e!2693399 () Bool)

(declare-fun tp!1328016 () Bool)

(declare-fun b!4328470 () Bool)

(assert (=> b!4328470 (= e!2693399 (and tp_is_empty!24337 tp_is_empty!24339 tp!1328016))))

(assert (=> b!4328436 (= tp!1328010 e!2693399)))

(assert (= (and b!4328436 ((_ is Cons!48474) (t!355510 l!13867))) b!4328470))

(check-sat tp_is_empty!24339 (not b!4328465) (not b!4328470) (not b!4328464) tp_is_empty!24337 (not b!4328448))
(check-sat)
