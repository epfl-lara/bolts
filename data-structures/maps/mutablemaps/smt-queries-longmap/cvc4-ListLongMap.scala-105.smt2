; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!1702 () Bool)

(assert start!1702)

(declare-fun res!9834 () Bool)

(declare-fun e!7156 () Bool)

(assert (=> start!1702 (=> (not res!9834) (not e!7156))))

(declare-datatypes ((B!438 0))(
  ( (B!439 (val!314 Int)) )
))
(declare-datatypes ((tuple2!410 0))(
  ( (tuple2!411 (_1!205 (_ BitVec 64)) (_2!205 B!438)) )
))
(declare-datatypes ((List!361 0))(
  ( (Nil!358) (Cons!357 (h!923 tuple2!410) (t!2748 List!361)) )
))
(declare-fun l!1094 () List!361)

(declare-fun isStrictlySorted!58 (List!361) Bool)

(assert (=> start!1702 (= res!9834 (isStrictlySorted!58 l!1094))))

(assert (=> start!1702 e!7156))

(declare-fun e!7157 () Bool)

(assert (=> start!1702 e!7157))

(assert (=> start!1702 true))

(declare-fun tp_is_empty!611 () Bool)

(assert (=> start!1702 tp_is_empty!611))

(declare-fun b!12003 () Bool)

(declare-fun res!9835 () Bool)

(assert (=> b!12003 (=> (not res!9835) (not e!7156))))

(declare-fun key!303 () (_ BitVec 64))

(declare-fun v!194 () B!438)

(declare-datatypes ((Option!46 0))(
  ( (Some!45 (v!1360 B!438)) (None!44) )
))
(declare-fun getValueByKey!40 (List!361 (_ BitVec 64)) Option!46)

(assert (=> b!12003 (= res!9835 (= (getValueByKey!40 l!1094 key!303) (Some!45 v!194)))))

(declare-fun b!12004 () Bool)

(declare-fun ListPrimitiveSize!15 (List!361) Int)

(assert (=> b!12004 (= e!7156 (< (ListPrimitiveSize!15 l!1094) 0))))

(declare-fun b!12005 () Bool)

(declare-fun tp!2030 () Bool)

(assert (=> b!12005 (= e!7157 (and tp_is_empty!611 tp!2030))))

(assert (= (and start!1702 res!9834) b!12003))

(assert (= (and b!12003 res!9835) b!12004))

(assert (= (and start!1702 (is-Cons!357 l!1094)) b!12005))

(declare-fun m!8339 () Bool)

(assert (=> start!1702 m!8339))

(declare-fun m!8341 () Bool)

(assert (=> b!12003 m!8341))

(declare-fun m!8343 () Bool)

(assert (=> b!12004 m!8343))

(push 1)

(assert (not b!12004))

(assert (not b!12005))

(assert tp_is_empty!611)

(assert (not b!12003))

(assert (not start!1702))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!12042 () Bool)

(declare-fun e!7175 () Option!46)

(declare-fun e!7177 () Option!46)

(assert (=> b!12042 (= e!7175 e!7177)))

(declare-fun c!1033 () Bool)

(assert (=> b!12042 (= c!1033 (and (is-Cons!357 l!1094) (not (= (_1!205 (h!923 l!1094)) key!303))))))

(declare-fun b!12046 () Bool)

(assert (=> b!12046 (= e!7177 None!44)))

(declare-fun b!12040 () Bool)

(assert (=> b!12040 (= e!7175 (Some!45 (_2!205 (h!923 l!1094))))))

(declare-fun d!1673 () Bool)

(declare-fun c!1031 () Bool)

(assert (=> d!1673 (= c!1031 (and (is-Cons!357 l!1094) (= (_1!205 (h!923 l!1094)) key!303)))))

(assert (=> d!1673 (= (getValueByKey!40 l!1094 key!303) e!7175)))

(declare-fun b!12044 () Bool)

(assert (=> b!12044 (= e!7177 (getValueByKey!40 (t!2748 l!1094) key!303))))

(assert (= (and d!1673 c!1031) b!12040))

(assert (= (and d!1673 (not c!1031)) b!12042))

(assert (= (and b!12042 c!1033) b!12044))

(assert (= (and b!12042 (not c!1033)) b!12046))

(declare-fun m!8350 () Bool)

(assert (=> b!12044 m!8350))

(assert (=> b!12003 d!1673))

(declare-fun d!1680 () Bool)

(declare-fun lt!3096 () Int)

(assert (=> d!1680 (>= lt!3096 0)))

(declare-fun e!7188 () Int)

(assert (=> d!1680 (= lt!3096 e!7188)))

(declare-fun c!1040 () Bool)

(assert (=> d!1680 (= c!1040 (is-Nil!358 l!1094))))

(assert (=> d!1680 (= (ListPrimitiveSize!15 l!1094) lt!3096)))

(declare-fun b!12062 () Bool)

(assert (=> b!12062 (= e!7188 0)))

(declare-fun b!12063 () Bool)

(assert (=> b!12063 (= e!7188 (+ 1 (ListPrimitiveSize!15 (t!2748 l!1094))))))

(assert (= (and d!1680 c!1040) b!12062))

(assert (= (and d!1680 (not c!1040)) b!12063))

(declare-fun m!8355 () Bool)

(assert (=> b!12063 m!8355))

(assert (=> b!12004 d!1680))

(declare-fun d!1685 () Bool)

(declare-fun res!9850 () Bool)

(declare-fun e!7202 () Bool)

(assert (=> d!1685 (=> res!9850 e!7202)))

(assert (=> d!1685 (= res!9850 (or (is-Nil!358 l!1094) (is-Nil!358 (t!2748 l!1094))))))

(assert (=> d!1685 (= (isStrictlySorted!58 l!1094) e!7202)))

(declare-fun b!12079 () Bool)

(declare-fun e!7203 () Bool)

(assert (=> b!12079 (= e!7202 e!7203)))

(declare-fun res!9851 () Bool)

(assert (=> b!12079 (=> (not res!9851) (not e!7203))))

(assert (=> b!12079 (= res!9851 (bvslt (_1!205 (h!923 l!1094)) (_1!205 (h!923 (t!2748 l!1094)))))))

(declare-fun b!12080 () Bool)

