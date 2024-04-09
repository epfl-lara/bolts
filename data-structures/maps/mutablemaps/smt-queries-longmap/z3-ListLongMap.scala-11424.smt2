; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!133212 () Bool)

(assert start!133212)

(declare-fun b!1558029 () Bool)

(declare-fun e!867930 () Bool)

(declare-datatypes ((B!2422 0))(
  ( (B!2423 (val!19297 Int)) )
))
(declare-datatypes ((tuple2!25110 0))(
  ( (tuple2!25111 (_1!12565 (_ BitVec 64)) (_2!12565 B!2422)) )
))
(declare-datatypes ((List!36477 0))(
  ( (Nil!36474) (Cons!36473 (h!37920 tuple2!25110) (t!51211 List!36477)) )
))
(declare-fun l!1292 () List!36477)

(declare-fun ListPrimitiveSize!182 (List!36477) Int)

(assert (=> b!1558029 (= e!867930 (< (ListPrimitiveSize!182 l!1292) 0))))

(declare-fun b!1558028 () Bool)

(declare-fun res!1065677 () Bool)

(assert (=> b!1558028 (=> (not res!1065677) (not e!867930))))

(declare-fun otherKey!62 () (_ BitVec 64))

(declare-fun newKey!135 () (_ BitVec 64))

(assert (=> b!1558028 (= res!1065677 (not (= otherKey!62 newKey!135)))))

(declare-fun b!1558027 () Bool)

(declare-fun res!1065678 () Bool)

(assert (=> b!1558027 (=> (not res!1065678) (not e!867930))))

(declare-fun containsKey!832 (List!36477 (_ BitVec 64)) Bool)

(assert (=> b!1558027 (= res!1065678 (containsKey!832 l!1292 otherKey!62))))

(declare-fun b!1558030 () Bool)

(declare-fun e!867929 () Bool)

(declare-fun tp_is_empty!38427 () Bool)

(declare-fun tp!112606 () Bool)

(assert (=> b!1558030 (= e!867929 (and tp_is_empty!38427 tp!112606))))

(declare-fun res!1065676 () Bool)

(assert (=> start!133212 (=> (not res!1065676) (not e!867930))))

(declare-fun isStrictlySorted!968 (List!36477) Bool)

(assert (=> start!133212 (= res!1065676 (isStrictlySorted!968 l!1292))))

(assert (=> start!133212 e!867930))

(assert (=> start!133212 e!867929))

(assert (=> start!133212 true))

(assert (= (and start!133212 res!1065676) b!1558027))

(assert (= (and b!1558027 res!1065678) b!1558028))

(assert (= (and b!1558028 res!1065677) b!1558029))

(get-info :version)

(assert (= (and start!133212 ((_ is Cons!36473) l!1292)) b!1558030))

(declare-fun m!1434897 () Bool)

(assert (=> b!1558029 m!1434897))

(declare-fun m!1434899 () Bool)

(assert (=> b!1558027 m!1434899))

(declare-fun m!1434901 () Bool)

(assert (=> start!133212 m!1434901))

(check-sat tp_is_empty!38427 (not start!133212) (not b!1558029) (not b!1558027) (not b!1558030))
(check-sat)
(get-model)

(declare-fun d!162517 () Bool)

(declare-fun lt!670688 () Int)

(assert (=> d!162517 (>= lt!670688 0)))

(declare-fun e!867947 () Int)

(assert (=> d!162517 (= lt!670688 e!867947)))

(declare-fun c!144020 () Bool)

(assert (=> d!162517 (= c!144020 ((_ is Nil!36474) l!1292))))

(assert (=> d!162517 (= (ListPrimitiveSize!182 l!1292) lt!670688)))

(declare-fun b!1558055 () Bool)

(assert (=> b!1558055 (= e!867947 0)))

(declare-fun b!1558056 () Bool)

(assert (=> b!1558056 (= e!867947 (+ 1 (ListPrimitiveSize!182 (t!51211 l!1292))))))

(assert (= (and d!162517 c!144020) b!1558055))

(assert (= (and d!162517 (not c!144020)) b!1558056))

(declare-fun m!1434909 () Bool)

(assert (=> b!1558056 m!1434909))

(assert (=> b!1558029 d!162517))

(declare-fun d!162519 () Bool)

(declare-fun res!1065708 () Bool)

(declare-fun e!867962 () Bool)

(assert (=> d!162519 (=> res!1065708 e!867962)))

(assert (=> d!162519 (= res!1065708 (or ((_ is Nil!36474) l!1292) ((_ is Nil!36474) (t!51211 l!1292))))))

(assert (=> d!162519 (= (isStrictlySorted!968 l!1292) e!867962)))

(declare-fun b!1558073 () Bool)

(declare-fun e!867963 () Bool)

(assert (=> b!1558073 (= e!867962 e!867963)))

(declare-fun res!1065709 () Bool)

(assert (=> b!1558073 (=> (not res!1065709) (not e!867963))))

(assert (=> b!1558073 (= res!1065709 (bvslt (_1!12565 (h!37920 l!1292)) (_1!12565 (h!37920 (t!51211 l!1292)))))))

(declare-fun b!1558074 () Bool)

(assert (=> b!1558074 (= e!867963 (isStrictlySorted!968 (t!51211 l!1292)))))

(assert (= (and d!162519 (not res!1065708)) b!1558073))

(assert (= (and b!1558073 res!1065709) b!1558074))

(declare-fun m!1434915 () Bool)

(assert (=> b!1558074 m!1434915))

(assert (=> start!133212 d!162519))

(declare-fun d!162525 () Bool)

(declare-fun res!1065722 () Bool)

(declare-fun e!867980 () Bool)

(assert (=> d!162525 (=> res!1065722 e!867980)))

(assert (=> d!162525 (= res!1065722 (and ((_ is Cons!36473) l!1292) (= (_1!12565 (h!37920 l!1292)) otherKey!62)))))

(assert (=> d!162525 (= (containsKey!832 l!1292 otherKey!62) e!867980)))

(declare-fun b!1558095 () Bool)

(declare-fun e!867981 () Bool)

(assert (=> b!1558095 (= e!867980 e!867981)))

(declare-fun res!1065723 () Bool)

(assert (=> b!1558095 (=> (not res!1065723) (not e!867981))))

(assert (=> b!1558095 (= res!1065723 (and (or (not ((_ is Cons!36473) l!1292)) (bvsle (_1!12565 (h!37920 l!1292)) otherKey!62)) ((_ is Cons!36473) l!1292) (bvslt (_1!12565 (h!37920 l!1292)) otherKey!62)))))

(declare-fun b!1558096 () Bool)

(assert (=> b!1558096 (= e!867981 (containsKey!832 (t!51211 l!1292) otherKey!62))))

(assert (= (and d!162525 (not res!1065722)) b!1558095))

(assert (= (and b!1558095 res!1065723) b!1558096))

(declare-fun m!1434925 () Bool)

(assert (=> b!1558096 m!1434925))

(assert (=> b!1558027 d!162525))

(declare-fun b!1558111 () Bool)

(declare-fun e!867990 () Bool)

(declare-fun tp!112618 () Bool)

(assert (=> b!1558111 (= e!867990 (and tp_is_empty!38427 tp!112618))))

(assert (=> b!1558030 (= tp!112606 e!867990)))

(assert (= (and b!1558030 ((_ is Cons!36473) (t!51211 l!1292))) b!1558111))

(check-sat tp_is_empty!38427 (not b!1558111) (not b!1558056) (not b!1558096) (not b!1558074))
