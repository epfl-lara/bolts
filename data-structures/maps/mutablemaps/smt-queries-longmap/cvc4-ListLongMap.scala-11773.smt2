; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!138272 () Bool)

(assert start!138272)

(declare-fun res!1082795 () Bool)

(declare-fun e!885120 () Bool)

(assert (=> start!138272 (=> (not res!1082795) (not e!885120))))

(declare-datatypes ((B!2982 0))(
  ( (B!2983 (val!19853 Int)) )
))
(declare-datatypes ((tuple2!26038 0))(
  ( (tuple2!26039 (_1!13029 (_ BitVec 64)) (_2!13029 B!2982)) )
))
(declare-datatypes ((List!37134 0))(
  ( (Nil!37131) (Cons!37130 (h!38674 tuple2!26038) (t!52061 List!37134)) )
))
(declare-fun l!556 () List!37134)

(declare-fun isStrictlySorted!1193 (List!37134) Bool)

(assert (=> start!138272 (= res!1082795 (isStrictlySorted!1193 l!556))))

(assert (=> start!138272 e!885120))

(declare-fun e!885119 () Bool)

(assert (=> start!138272 e!885119))

(assert (=> start!138272 true))

(declare-fun b!1585284 () Bool)

(declare-fun res!1082794 () Bool)

(assert (=> b!1585284 (=> (not res!1082794) (not e!885120))))

(declare-fun newKey!21 () (_ BitVec 64))

(assert (=> b!1585284 (= res!1082794 (and (is-Cons!37130 l!556) (bvslt (_1!13029 (h!38674 l!556)) newKey!21)))))

(declare-fun b!1585285 () Bool)

(declare-fun ListPrimitiveSize!228 (List!37134) Int)

(assert (=> b!1585285 (= e!885120 (>= (ListPrimitiveSize!228 (t!52061 l!556)) (ListPrimitiveSize!228 l!556)))))

(declare-fun b!1585286 () Bool)

(declare-fun tp_is_empty!39515 () Bool)

(declare-fun tp!115252 () Bool)

(assert (=> b!1585286 (= e!885119 (and tp_is_empty!39515 tp!115252))))

(assert (= (and start!138272 res!1082795) b!1585284))

(assert (= (and b!1585284 res!1082794) b!1585285))

(assert (= (and start!138272 (is-Cons!37130 l!556)) b!1585286))

(declare-fun m!1454205 () Bool)

(assert (=> start!138272 m!1454205))

(declare-fun m!1454207 () Bool)

(assert (=> b!1585285 m!1454207))

(declare-fun m!1454209 () Bool)

(assert (=> b!1585285 m!1454209))

(push 1)

(assert (not b!1585285))

(assert (not start!138272))

(assert (not b!1585286))

(assert tp_is_empty!39515)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!167653 () Bool)

(declare-fun lt!677301 () Int)

(assert (=> d!167653 (>= lt!677301 0)))

(declare-fun e!885144 () Int)

(assert (=> d!167653 (= lt!677301 e!885144)))

(declare-fun c!146924 () Bool)

(assert (=> d!167653 (= c!146924 (is-Nil!37131 (t!52061 l!556)))))

(assert (=> d!167653 (= (ListPrimitiveSize!228 (t!52061 l!556)) lt!677301)))

(declare-fun b!1585322 () Bool)

(assert (=> b!1585322 (= e!885144 0)))

(declare-fun b!1585323 () Bool)

(assert (=> b!1585323 (= e!885144 (+ 1 (ListPrimitiveSize!228 (t!52061 (t!52061 l!556)))))))

(assert (= (and d!167653 c!146924) b!1585322))

(assert (= (and d!167653 (not c!146924)) b!1585323))

(declare-fun m!1454217 () Bool)

(assert (=> b!1585323 m!1454217))

(assert (=> b!1585285 d!167653))

(declare-fun d!167655 () Bool)

(declare-fun lt!677302 () Int)

(assert (=> d!167655 (>= lt!677302 0)))

(declare-fun e!885145 () Int)

(assert (=> d!167655 (= lt!677302 e!885145)))

(declare-fun c!146925 () Bool)

