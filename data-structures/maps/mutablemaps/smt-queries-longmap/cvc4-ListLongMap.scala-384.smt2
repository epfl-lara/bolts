; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7256 () Bool)

(assert start!7256)

(declare-fun res!27111 () Bool)

(declare-fun e!29585 () Bool)

(assert (=> start!7256 (=> (not res!27111) (not e!29585))))

(declare-datatypes ((B!888 0))(
  ( (B!889 (val!1031 Int)) )
))
(declare-datatypes ((tuple2!1714 0))(
  ( (tuple2!1715 (_1!867 (_ BitVec 64)) (_2!867 B!888)) )
))
(declare-datatypes ((List!1265 0))(
  ( (Nil!1262) (Cons!1261 (h!1841 tuple2!1714) (t!4298 List!1265)) )
))
(declare-fun l!812 () List!1265)

(declare-fun isStrictlySorted!236 (List!1265) Bool)

(assert (=> start!7256 (= res!27111 (isStrictlySorted!236 l!812))))

(assert (=> start!7256 e!29585))

(declare-fun e!29584 () Bool)

(assert (=> start!7256 e!29584))

(declare-fun b!46413 () Bool)

(declare-fun ListPrimitiveSize!48 (List!1265) Int)

(assert (=> b!46413 (= e!29585 (>= (ListPrimitiveSize!48 (t!4298 l!812)) (ListPrimitiveSize!48 l!812)))))

(declare-fun b!46412 () Bool)

(declare-fun res!27112 () Bool)

(assert (=> b!46412 (=> (not res!27112) (not e!29585))))

(assert (=> b!46412 (= res!27112 (isStrictlySorted!236 (t!4298 l!812)))))

(declare-fun b!46411 () Bool)

(declare-fun res!27110 () Bool)

(assert (=> b!46411 (=> (not res!27110) (not e!29585))))

(assert (=> b!46411 (= res!27110 (is-Cons!1261 l!812))))

(declare-fun b!46414 () Bool)

(declare-fun tp_is_empty!1985 () Bool)

(declare-fun tp!6125 () Bool)

(assert (=> b!46414 (= e!29584 (and tp_is_empty!1985 tp!6125))))

(assert (= (and start!7256 res!27111) b!46411))

(assert (= (and b!46411 res!27110) b!46412))

(assert (= (and b!46412 res!27112) b!46413))

(assert (= (and start!7256 (is-Cons!1261 l!812)) b!46414))

(declare-fun m!40759 () Bool)

(assert (=> start!7256 m!40759))

(declare-fun m!40761 () Bool)

(assert (=> b!46413 m!40761))

(declare-fun m!40763 () Bool)

(assert (=> b!46413 m!40763))

(declare-fun m!40765 () Bool)

(assert (=> b!46412 m!40765))

(push 1)

(assert (not start!7256))

(assert (not b!46414))

(assert (not b!46412))

(assert tp_is_empty!1985)

(assert (not b!46413))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!9104 () Bool)

(declare-fun lt!20305 () Int)

(assert (=> d!9104 (>= lt!20305 0)))

(declare-fun e!29593 () Int)

(assert (=> d!9104 (= lt!20305 e!29593)))

(declare-fun c!6278 () Bool)

(assert (=> d!9104 (= c!6278 (is-Nil!1262 (t!4298 l!812)))))

(assert (=> d!9104 (= (ListPrimitiveSize!48 (t!4298 l!812)) lt!20305)))

(declare-fun b!46427 () Bool)

(assert (=> b!46427 (= e!29593 0)))

(declare-fun b!46428 () Bool)

(assert (=> b!46428 (= e!29593 (+ 1 (ListPrimitiveSize!48 (t!4298 (t!4298 l!812)))))))

(assert (= (and d!9104 c!6278) b!46427))

(assert (= (and d!9104 (not c!6278)) b!46428))

(declare-fun m!40767 () Bool)

(assert (=> b!46428 m!40767))

(assert (=> b!46413 d!9104))

(declare-fun d!9107 () Bool)

(declare-fun lt!20307 () Int)

(assert (=> d!9107 (>= lt!20307 0)))

(declare-fun e!29595 () Int)

(assert (=> d!9107 (= lt!20307 e!29595)))

(declare-fun c!6280 () Bool)

(assert (=> d!9107 (= c!6280 (is-Nil!1262 l!812))))

(assert (=> d!9107 (= (ListPrimitiveSize!48 l!812) lt!20307)))

(declare-fun b!46433 () Bool)

(assert (=> b!46433 (= e!29595 0)))

(declare-fun b!46434 () Bool)

(assert (=> b!46434 (= e!29595 (+ 1 (ListPrimitiveSize!48 (t!4298 l!812))))))

(assert (= (and d!9107 c!6280) b!46433))

(assert (= (and d!9107 (not c!6280)) b!46434))

(assert (=> b!46434 m!40761))

(assert (=> b!46413 d!9107))

(declare-fun d!9113 () Bool)

(declare-fun res!27128 () Bool)

(declare-fun e!29613 () Bool)

(assert (=> d!9113 (=> res!27128 e!29613)))

(assert (=> d!9113 (= res!27128 (or (is-Nil!1262 (t!4298 l!812)) (is-Nil!1262 (t!4298 (t!4298 l!812)))))))

(assert (=> d!9113 (= (isStrictlySorted!236 (t!4298 l!812)) e!29613)))

(declare-fun b!46455 () Bool)

(declare-fun e!29615 () Bool)

(assert (=> b!46455 (= e!29613 e!29615)))

(declare-fun res!27130 () Bool)

(assert (=> b!46455 (=> (not res!27130) (not e!29615))))

(assert (=> b!46455 (= res!27130 (bvslt (_1!867 (h!1841 (t!4298 l!812))) (_1!867 (h!1841 (t!4298 (t!4298 l!812))))))))

(declare-fun b!46456 () Bool)

(assert (=> b!46456 (= e!29615 (isStrictlySorted!236 (t!4298 (t!4298 l!812))))))

(assert (= (and d!9113 (not res!27128)) b!46455))

(assert (= (and b!46455 res!27130) b!46456))

(declare-fun m!40777 () Bool)

(assert (=> b!46456 m!40777))

(assert (=> b!46412 d!9113))

(declare-fun d!9123 () Bool)

(declare-fun res!27133 () Bool)

(declare-fun e!29618 () Bool)

(assert (=> d!9123 (=> res!27133 e!29618)))

(assert (=> d!9123 (= res!27133 (or (is-Nil!1262 l!812) (is-Nil!1262 (t!4298 l!812))))))

(assert (=> d!9123 (= (isStrictlySorted!236 l!812) e!29618)))

(declare-fun b!46459 () Bool)

(declare-fun e!29619 () Bool)

(assert (=> b!46459 (= e!29618 e!29619)))

(declare-fun res!27134 () Bool)

(assert (=> b!46459 (=> (not res!27134) (not e!29619))))

(assert (=> b!46459 (= res!27134 (bvslt (_1!867 (h!1841 l!812)) (_1!867 (h!1841 (t!4298 l!812)))))))

(declare-fun b!46460 () Bool)

(assert (=> b!46460 (= e!29619 (isStrictlySorted!236 (t!4298 l!812)))))

(assert (= (and d!9123 (not res!27133)) b!46459))

(assert (= (and b!46459 res!27134) b!46460))

(assert (=> b!46460 m!40765))

(assert (=> start!7256 d!9123))

(declare-fun b!46476 () Bool)

(declare-fun e!29629 () Bool)

(declare-fun tp!6133 () Bool)

(assert (=> b!46476 (= e!29629 (and tp_is_empty!1985 tp!6133))))

(assert (=> b!46414 (= tp!6125 e!29629)))

(assert (= (and b!46414 (is-Cons!1261 (t!4298 l!812))) b!46476))

(push 1)

