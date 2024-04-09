; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!138254 () Bool)

(assert start!138254)

(declare-fun res!1082759 () Bool)

(declare-fun e!885065 () Bool)

(assert (=> start!138254 (=> (not res!1082759) (not e!885065))))

(declare-datatypes ((B!2976 0))(
  ( (B!2977 (val!19850 Int)) )
))
(declare-datatypes ((tuple2!26032 0))(
  ( (tuple2!26033 (_1!13026 (_ BitVec 64)) (_2!13026 B!2976)) )
))
(declare-datatypes ((List!37131 0))(
  ( (Nil!37128) (Cons!37127 (h!38671 tuple2!26032) (t!52058 List!37131)) )
))
(declare-fun l!556 () List!37131)

(declare-fun isStrictlySorted!1190 (List!37131) Bool)

(assert (=> start!138254 (= res!1082759 (isStrictlySorted!1190 l!556))))

(assert (=> start!138254 e!885065))

(declare-fun e!885066 () Bool)

(assert (=> start!138254 e!885066))

(declare-fun b!1585207 () Bool)

(declare-fun ListPrimitiveSize!225 (List!37131) Int)

(assert (=> b!1585207 (= e!885065 (< (ListPrimitiveSize!225 l!556) 0))))

(declare-fun b!1585208 () Bool)

(declare-fun tp_is_empty!39509 () Bool)

(declare-fun tp!115234 () Bool)

(assert (=> b!1585208 (= e!885066 (and tp_is_empty!39509 tp!115234))))

(assert (= (and start!138254 res!1082759) b!1585207))

(assert (= (and start!138254 (is-Cons!37127 l!556)) b!1585208))

(declare-fun m!1454177 () Bool)

(assert (=> start!138254 m!1454177))

(declare-fun m!1454179 () Bool)

(assert (=> b!1585207 m!1454179))

(push 1)

(assert (not b!1585207))

(assert (not start!138254))

(assert (not b!1585208))

(assert tp_is_empty!39509)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!167631 () Bool)

(declare-fun lt!677287 () Int)

(assert (=> d!167631 (>= lt!677287 0)))

(declare-fun e!885078 () Int)

(assert (=> d!167631 (= lt!677287 e!885078)))

(declare-fun c!146910 () Bool)

(assert (=> d!167631 (= c!146910 (is-Nil!37128 l!556))))

(assert (=> d!167631 (= (ListPrimitiveSize!225 l!556) lt!677287)))

(declare-fun b!1585225 () Bool)

(assert (=> b!1585225 (= e!885078 0)))

(declare-fun b!1585226 () Bool)

(assert (=> b!1585226 (= e!885078 (+ 1 (ListPrimitiveSize!225 (t!52058 l!556))))))

(assert (= (and d!167631 c!146910) b!1585225))

(assert (= (and d!167631 (not c!146910)) b!1585226))

(declare-fun m!1454185 () Bool)

(assert (=> b!1585226 m!1454185))

(assert (=> b!1585207 d!167631))

(declare-fun d!167637 () Bool)

(declare-fun res!1082776 () Bool)

(declare-fun e!885096 () Bool)

(assert (=> d!167637 (=> res!1082776 e!885096)))

(assert (=> d!167637 (= res!1082776 (or (is-Nil!37128 l!556) (is-Nil!37128 (t!52058 l!556))))))

(assert (=> d!167637 (= (isStrictlySorted!1190 l!556) e!885096)))

(declare-fun b!1585251 () Bool)

(declare-fun e!885097 () Bool)

(assert (=> b!1585251 (= e!885096 e!885097)))

(declare-fun res!1082777 () Bool)

(assert (=> b!1585251 (=> (not res!1082777) (not e!885097))))

(assert (=> b!1585251 (= res!1082777 (bvslt (_1!13026 (h!38671 l!556)) (_1!13026 (h!38671 (t!52058 l!556)))))))

(declare-fun b!1585252 () Bool)

(assert (=> b!1585252 (= e!885097 (isStrictlySorted!1190 (t!52058 l!556)))))

(assert (= (and d!167637 (not res!1082776)) b!1585251))

(assert (= (and b!1585251 res!1082777) b!1585252))

(declare-fun m!1454191 () Bool)

(assert (=> b!1585252 m!1454191))

(assert (=> start!138254 d!167637))

(declare-fun b!1585259 () Bool)

(declare-fun e!885102 () Bool)

(declare-fun tp!115243 () Bool)

(assert (=> b!1585259 (= e!885102 (and tp_is_empty!39509 tp!115243))))

(assert (=> b!1585208 (= tp!115234 e!885102)))

(assert (= (and b!1585208 (is-Cons!37127 (t!52058 l!556))) b!1585259))

(push 1)

