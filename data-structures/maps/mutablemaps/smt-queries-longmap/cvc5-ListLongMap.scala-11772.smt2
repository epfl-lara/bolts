; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!138250 () Bool)

(assert start!138250)

(declare-fun res!1082753 () Bool)

(declare-fun e!885053 () Bool)

(assert (=> start!138250 (=> (not res!1082753) (not e!885053))))

(declare-datatypes ((B!2972 0))(
  ( (B!2973 (val!19848 Int)) )
))
(declare-datatypes ((tuple2!26028 0))(
  ( (tuple2!26029 (_1!13024 (_ BitVec 64)) (_2!13024 B!2972)) )
))
(declare-datatypes ((List!37129 0))(
  ( (Nil!37126) (Cons!37125 (h!38669 tuple2!26028) (t!52056 List!37129)) )
))
(declare-fun l!556 () List!37129)

(declare-fun isStrictlySorted!1188 (List!37129) Bool)

(assert (=> start!138250 (= res!1082753 (isStrictlySorted!1188 l!556))))

(assert (=> start!138250 e!885053))

(declare-fun e!885054 () Bool)

(assert (=> start!138250 e!885054))

(declare-fun b!1585195 () Bool)

(declare-fun ListPrimitiveSize!223 (List!37129) Int)

(assert (=> b!1585195 (= e!885053 (< (ListPrimitiveSize!223 l!556) 0))))

(declare-fun b!1585196 () Bool)

(declare-fun tp_is_empty!39505 () Bool)

(declare-fun tp!115228 () Bool)

(assert (=> b!1585196 (= e!885054 (and tp_is_empty!39505 tp!115228))))

(assert (= (and start!138250 res!1082753) b!1585195))

(assert (= (and start!138250 (is-Cons!37125 l!556)) b!1585196))

(declare-fun m!1454169 () Bool)

(assert (=> start!138250 m!1454169))

(declare-fun m!1454171 () Bool)

(assert (=> b!1585195 m!1454171))

(push 1)

(assert (not b!1585195))

(assert (not start!138250))

(assert (not b!1585196))

(assert tp_is_empty!39505)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!167629 () Bool)

(declare-fun lt!677286 () Int)

(assert (=> d!167629 (>= lt!677286 0)))

(declare-fun e!885075 () Int)

(assert (=> d!167629 (= lt!677286 e!885075)))

(declare-fun c!146909 () Bool)

(assert (=> d!167629 (= c!146909 (is-Nil!37126 l!556))))

(assert (=> d!167629 (= (ListPrimitiveSize!223 l!556) lt!677286)))

(declare-fun b!1585221 () Bool)

(assert (=> b!1585221 (= e!885075 0)))

(declare-fun b!1585222 () Bool)

(assert (=> b!1585222 (= e!885075 (+ 1 (ListPrimitiveSize!223 (t!52056 l!556))))))

(assert (= (and d!167629 c!146909) b!1585221))

(assert (= (and d!167629 (not c!146909)) b!1585222))

(declare-fun m!1454181 () Bool)

(assert (=> b!1585222 m!1454181))

(assert (=> b!1585195 d!167629))

(declare-fun d!167633 () Bool)

(declare-fun res!1082774 () Bool)

(declare-fun e!885090 () Bool)

(assert (=> d!167633 (=> res!1082774 e!885090)))

(assert (=> d!167633 (= res!1082774 (or (is-Nil!37126 l!556) (is-Nil!37126 (t!52056 l!556))))))

(assert (=> d!167633 (= (isStrictlySorted!1188 l!556) e!885090)))

(declare-fun b!1585241 () Bool)

(declare-fun e!885091 () Bool)

(assert (=> b!1585241 (= e!885090 e!885091)))

(declare-fun res!1082775 () Bool)

(assert (=> b!1585241 (=> (not res!1082775) (not e!885091))))

(assert (=> b!1585241 (= res!1082775 (bvslt (_1!13024 (h!38669 l!556)) (_1!13024 (h!38669 (t!52056 l!556)))))))

(declare-fun b!1585242 () Bool)

(assert (=> b!1585242 (= e!885091 (isStrictlySorted!1188 (t!52056 l!556)))))

(assert (= (and d!167633 (not res!1082774)) b!1585241))

(assert (= (and b!1585241 res!1082775) b!1585242))

(declare-fun m!1454189 () Bool)

(assert (=> b!1585242 m!1454189))

(assert (=> start!138250 d!167633))

(declare-fun b!1585256 () Bool)

(declare-fun e!885099 () Bool)

(declare-fun tp!115240 () Bool)

(assert (=> b!1585256 (= e!885099 (and tp_is_empty!39505 tp!115240))))

(assert (=> b!1585196 (= tp!115228 e!885099)))

(assert (= (and b!1585196 (is-Cons!37125 (t!52056 l!556))) b!1585256))

(push 1)

(assert (not b!1585242))

(assert (not b!1585222))

(assert (not b!1585256))

(assert tp_is_empty!39505)

(check-sat)

