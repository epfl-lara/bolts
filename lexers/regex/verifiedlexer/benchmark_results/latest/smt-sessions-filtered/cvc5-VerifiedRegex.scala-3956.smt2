; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!216204 () Bool)

(assert start!216204)

(declare-fun res!952785 () Bool)

(declare-fun e!1416764 () Bool)

(assert (=> start!216204 (=> (not res!952785) (not e!1416764))))

(declare-datatypes ((B!1823 0))(
  ( (B!1824 (val!7437 Int)) )
))
(declare-datatypes ((List!26065 0))(
  ( (Nil!25981) (Cons!25981 (h!31382 B!1823) (t!199381 List!26065)) )
))
(declare-fun l!2924 () List!26065)

(declare-fun isEmpty!14859 (List!26065) Bool)

(assert (=> start!216204 (= res!952785 (not (isEmpty!14859 l!2924)))))

(assert (=> start!216204 e!1416764))

(declare-fun e!1416763 () Bool)

(assert (=> start!216204 e!1416763))

(declare-fun b!2218525 () Bool)

(declare-fun res!952786 () Bool)

(assert (=> b!2218525 (=> (not res!952786) (not e!1416764))))

(assert (=> b!2218525 (= res!952786 (and (or (not (is-Cons!25981 l!2924)) (not (is-Nil!25981 (t!199381 l!2924)))) (is-Cons!25981 l!2924)))))

(declare-fun b!2218526 () Bool)

(declare-fun ListPrimitiveSize!150 (List!26065) Int)

(assert (=> b!2218526 (= e!1416764 (>= (ListPrimitiveSize!150 (t!199381 l!2924)) (ListPrimitiveSize!150 l!2924)))))

(declare-fun b!2218527 () Bool)

(declare-fun tp_is_empty!9871 () Bool)

(declare-fun tp!691137 () Bool)

(assert (=> b!2218527 (= e!1416763 (and tp_is_empty!9871 tp!691137))))

(assert (= (and start!216204 res!952785) b!2218525))

(assert (= (and b!2218525 res!952786) b!2218526))

(assert (= (and start!216204 (is-Cons!25981 l!2924)) b!2218527))

(declare-fun m!2659335 () Bool)

(assert (=> start!216204 m!2659335))

(declare-fun m!2659337 () Bool)

(assert (=> b!2218526 m!2659337))

(declare-fun m!2659339 () Bool)

(assert (=> b!2218526 m!2659339))

(push 1)

(assert (not b!2218526))

(assert (not start!216204))

(assert (not b!2218527))

(assert tp_is_empty!9871)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!663155 () Bool)

(declare-fun lt!827047 () Int)

(assert (=> d!663155 (>= lt!827047 0)))

(declare-fun e!1416773 () Int)

(assert (=> d!663155 (= lt!827047 e!1416773)))

(declare-fun c!354204 () Bool)

(assert (=> d!663155 (= c!354204 (is-Nil!25981 (t!199381 l!2924)))))

(assert (=> d!663155 (= (ListPrimitiveSize!150 (t!199381 l!2924)) lt!827047)))

(declare-fun b!2218541 () Bool)

(assert (=> b!2218541 (= e!1416773 0)))

(declare-fun b!2218542 () Bool)

(assert (=> b!2218542 (= e!1416773 (+ 1 (ListPrimitiveSize!150 (t!199381 (t!199381 l!2924)))))))

(assert (= (and d!663155 c!354204) b!2218541))

(assert (= (and d!663155 (not c!354204)) b!2218542))

(declare-fun m!2659347 () Bool)

(assert (=> b!2218542 m!2659347))

(assert (=> b!2218526 d!663155))

(declare-fun d!663157 () Bool)

(declare-fun lt!827048 () Int)

(assert (=> d!663157 (>= lt!827048 0)))

(declare-fun e!1416774 () Int)

(assert (=> d!663157 (= lt!827048 e!1416774)))

(declare-fun c!354205 () Bool)

(assert (=> d!663157 (= c!354205 (is-Nil!25981 l!2924))))

(assert (=> d!663157 (= (ListPrimitiveSize!150 l!2924) lt!827048)))

(declare-fun b!2218543 () Bool)

(assert (=> b!2218543 (= e!1416774 0)))

(declare-fun b!2218544 () Bool)

(assert (=> b!2218544 (= e!1416774 (+ 1 (ListPrimitiveSize!150 (t!199381 l!2924))))))

(assert (= (and d!663157 c!354205) b!2218543))

(assert (= (and d!663157 (not c!354205)) b!2218544))

(assert (=> b!2218544 m!2659337))

(assert (=> b!2218526 d!663157))

(declare-fun d!663159 () Bool)

(assert (=> d!663159 (= (isEmpty!14859 l!2924) (is-Nil!25981 l!2924))))

(assert (=> start!216204 d!663159))

(declare-fun b!2218549 () Bool)

(declare-fun e!1416777 () Bool)

(declare-fun tp!691143 () Bool)

(assert (=> b!2218549 (= e!1416777 (and tp_is_empty!9871 tp!691143))))

(assert (=> b!2218527 (= tp!691137 e!1416777)))

(assert (= (and b!2218527 (is-Cons!25981 (t!199381 l!2924))) b!2218549))

(push 1)

(assert (not b!2218544))

(assert (not b!2218542))

(assert (not b!2218549))

(assert tp_is_empty!9871)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

