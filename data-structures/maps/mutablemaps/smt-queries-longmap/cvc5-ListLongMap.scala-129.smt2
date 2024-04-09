; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!2230 () Bool)

(assert start!2230)

(declare-fun res!11440 () Bool)

(declare-fun e!8994 () Bool)

(assert (=> start!2230 (=> (not res!11440) (not e!8994))))

(declare-datatypes ((B!572 0))(
  ( (B!573 (val!384 Int)) )
))
(declare-datatypes ((tuple2!550 0))(
  ( (tuple2!551 (_1!275 (_ BitVec 64)) (_2!275 B!572)) )
))
(declare-datatypes ((List!434 0))(
  ( (Nil!431) (Cons!430 (h!996 tuple2!550) (t!2836 List!434)) )
))
(declare-datatypes ((ListLongMap!381 0))(
  ( (ListLongMap!382 (toList!206 List!434)) )
))
(declare-fun thiss!177 () ListLongMap!381)

(declare-fun size!495 (List!434) Int)

(assert (=> start!2230 (= res!11440 (< (size!495 (toList!206 thiss!177)) 2147483647))))

(assert (=> start!2230 e!8994))

(declare-fun e!8995 () Bool)

(declare-fun inv!736 (ListLongMap!381) Bool)

(assert (=> start!2230 (and (inv!736 thiss!177) e!8995)))

(declare-fun b!14938 () Bool)

(declare-fun isStrictlySorted!125 (List!434) Bool)

(assert (=> b!14938 (= e!8994 (not (isStrictlySorted!125 (toList!206 thiss!177))))))

(declare-fun b!14939 () Bool)

(declare-fun tp!2408 () Bool)

(assert (=> b!14939 (= e!8995 tp!2408)))

(assert (= (and start!2230 res!11440) b!14938))

(assert (= start!2230 b!14939))

(declare-fun m!9937 () Bool)

(assert (=> start!2230 m!9937))

(declare-fun m!9939 () Bool)

(assert (=> start!2230 m!9939))

(declare-fun m!9941 () Bool)

(assert (=> b!14938 m!9941))

(push 1)

(assert (not start!2230))

(assert (not b!14938))

(assert (not b!14939))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2435 () Bool)

(declare-fun lt!3641 () Int)

(assert (=> d!2435 (>= lt!3641 0)))

(declare-fun e!9016 () Int)

(assert (=> d!2435 (= lt!3641 e!9016)))

(declare-fun c!1414 () Bool)

(assert (=> d!2435 (= c!1414 (is-Nil!431 (toList!206 thiss!177)))))

(assert (=> d!2435 (= (size!495 (toList!206 thiss!177)) lt!3641)))

(declare-fun b!14964 () Bool)

(assert (=> b!14964 (= e!9016 0)))

(declare-fun b!14965 () Bool)

(assert (=> b!14965 (= e!9016 (+ 1 (size!495 (t!2836 (toList!206 thiss!177)))))))

(assert (= (and d!2435 c!1414) b!14964))

(assert (= (and d!2435 (not c!1414)) b!14965))

(declare-fun m!9955 () Bool)

(assert (=> b!14965 m!9955))

(assert (=> start!2230 d!2435))

(declare-fun d!2439 () Bool)

(assert (=> d!2439 (= (inv!736 thiss!177) (isStrictlySorted!125 (toList!206 thiss!177)))))

(declare-fun bs!611 () Bool)

(assert (= bs!611 d!2439))

(assert (=> bs!611 m!9941))

(assert (=> start!2230 d!2439))

(declare-fun d!2445 () Bool)

(declare-fun res!11457 () Bool)

(declare-fun e!9027 () Bool)

(assert (=> d!2445 (=> res!11457 e!9027)))

(assert (=> d!2445 (= res!11457 (or (is-Nil!431 (toList!206 thiss!177)) (is-Nil!431 (t!2836 (toList!206 thiss!177)))))))

(assert (=> d!2445 (= (isStrictlySorted!125 (toList!206 thiss!177)) e!9027)))

(declare-fun b!14980 () Bool)

(declare-fun e!9028 () Bool)

(assert (=> b!14980 (= e!9027 e!9028)))

(declare-fun res!11458 () Bool)

(assert (=> b!14980 (=> (not res!11458) (not e!9028))))

(assert (=> b!14980 (= res!11458 (bvslt (_1!275 (h!996 (toList!206 thiss!177))) (_1!275 (h!996 (t!2836 (toList!206 thiss!177))))))))

(declare-fun b!14981 () Bool)

(assert (=> b!14981 (= e!9028 (isStrictlySorted!125 (t!2836 (toList!206 thiss!177))))))

(assert (= (and d!2445 (not res!11457)) b!14980))

(assert (= (and b!14980 res!11458) b!14981))

(declare-fun m!9963 () Bool)

(assert (=> b!14981 m!9963))

(assert (=> b!14938 d!2445))

(declare-fun b!14994 () Bool)

(declare-fun e!9037 () Bool)

(declare-fun tp_is_empty!751 () Bool)

(declare-fun tp!2419 () Bool)

(assert (=> b!14994 (= e!9037 (and tp_is_empty!751 tp!2419))))

(assert (=> b!14939 (= tp!2408 e!9037)))

(assert (= (and b!14939 (is-Cons!430 (toList!206 thiss!177))) b!14994))

(push 1)

(assert (not b!14981))

(assert (not d!2439))

(assert tp_is_empty!751)

(assert (not b!14965))

(assert (not b!14994))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

