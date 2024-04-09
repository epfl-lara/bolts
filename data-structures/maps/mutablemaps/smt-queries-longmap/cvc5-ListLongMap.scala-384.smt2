; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7252 () Bool)

(assert start!7252)

(declare-fun b!46388 () Bool)

(declare-fun res!27094 () Bool)

(declare-fun e!29572 () Bool)

(assert (=> b!46388 (=> (not res!27094) (not e!29572))))

(declare-datatypes ((B!884 0))(
  ( (B!885 (val!1029 Int)) )
))
(declare-datatypes ((tuple2!1710 0))(
  ( (tuple2!1711 (_1!865 (_ BitVec 64)) (_2!865 B!884)) )
))
(declare-datatypes ((List!1263 0))(
  ( (Nil!1260) (Cons!1259 (h!1839 tuple2!1710) (t!4296 List!1263)) )
))
(declare-fun l!812 () List!1263)

(declare-fun isStrictlySorted!234 (List!1263) Bool)

(assert (=> b!46388 (= res!27094 (isStrictlySorted!234 (t!4296 l!812)))))

(declare-fun res!27093 () Bool)

(assert (=> start!7252 (=> (not res!27093) (not e!29572))))

(assert (=> start!7252 (= res!27093 (isStrictlySorted!234 l!812))))

(assert (=> start!7252 e!29572))

(declare-fun e!29573 () Bool)

(assert (=> start!7252 e!29573))

(declare-fun b!46389 () Bool)

(declare-fun ListPrimitiveSize!46 (List!1263) Int)

(assert (=> b!46389 (= e!29572 (>= (ListPrimitiveSize!46 (t!4296 l!812)) (ListPrimitiveSize!46 l!812)))))

(declare-fun b!46387 () Bool)

(declare-fun res!27092 () Bool)

(assert (=> b!46387 (=> (not res!27092) (not e!29572))))

(assert (=> b!46387 (= res!27092 (is-Cons!1259 l!812))))

(declare-fun b!46390 () Bool)

(declare-fun tp_is_empty!1981 () Bool)

(declare-fun tp!6119 () Bool)

(assert (=> b!46390 (= e!29573 (and tp_is_empty!1981 tp!6119))))

(assert (= (and start!7252 res!27093) b!46387))

(assert (= (and b!46387 res!27092) b!46388))

(assert (= (and b!46388 res!27094) b!46389))

(assert (= (and start!7252 (is-Cons!1259 l!812)) b!46390))

(declare-fun m!40743 () Bool)

(assert (=> b!46388 m!40743))

(declare-fun m!40745 () Bool)

(assert (=> start!7252 m!40745))

(declare-fun m!40747 () Bool)

(assert (=> b!46389 m!40747))

(declare-fun m!40749 () Bool)

(assert (=> b!46389 m!40749))

(push 1)

(assert (not b!46389))

(assert tp_is_empty!1981)

(assert (not b!46390))

(assert (not b!46388))

(assert (not start!7252))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!9103 () Bool)

(declare-fun lt!20304 () Int)

(assert (=> d!9103 (>= lt!20304 0)))

(declare-fun e!29592 () Int)

(assert (=> d!9103 (= lt!20304 e!29592)))

(declare-fun c!6277 () Bool)

(assert (=> d!9103 (= c!6277 (is-Nil!1260 (t!4296 l!812)))))

(assert (=> d!9103 (= (ListPrimitiveSize!46 (t!4296 l!812)) lt!20304)))

(declare-fun b!46431 () Bool)

(assert (=> b!46431 (= e!29592 0)))

(declare-fun b!46432 () Bool)

(assert (=> b!46432 (= e!29592 (+ 1 (ListPrimitiveSize!46 (t!4296 (t!4296 l!812)))))))

(assert (= (and d!9103 c!6277) b!46431))

(assert (= (and d!9103 (not c!6277)) b!46432))

(declare-fun m!40771 () Bool)

(assert (=> b!46432 m!40771))

(assert (=> b!46389 d!9103))

(declare-fun d!9111 () Bool)

(declare-fun lt!20309 () Int)

(assert (=> d!9111 (>= lt!20309 0)))

(declare-fun e!29597 () Int)

(assert (=> d!9111 (= lt!20309 e!29597)))

(declare-fun c!6282 () Bool)

(assert (=> d!9111 (= c!6282 (is-Nil!1260 l!812))))

(assert (=> d!9111 (= (ListPrimitiveSize!46 l!812) lt!20309)))

(declare-fun b!46437 () Bool)

(assert (=> b!46437 (= e!29597 0)))

(declare-fun b!46438 () Bool)

(assert (=> b!46438 (= e!29597 (+ 1 (ListPrimitiveSize!46 (t!4296 l!812))))))

(assert (= (and d!9111 c!6282) b!46437))

(assert (= (and d!9111 (not c!6282)) b!46438))

(assert (=> b!46438 m!40747))

(assert (=> b!46389 d!9111))

(declare-fun d!9115 () Bool)

(declare-fun res!27125 () Bool)

(declare-fun e!29610 () Bool)

(assert (=> d!9115 (=> res!27125 e!29610)))

(assert (=> d!9115 (= res!27125 (or (is-Nil!1260 (t!4296 l!812)) (is-Nil!1260 (t!4296 (t!4296 l!812)))))))

(assert (=> d!9115 (= (isStrictlySorted!234 (t!4296 l!812)) e!29610)))

(declare-fun b!46451 () Bool)

(declare-fun e!29611 () Bool)

(assert (=> b!46451 (= e!29610 e!29611)))

(declare-fun res!27126 () Bool)

(assert (=> b!46451 (=> (not res!27126) (not e!29611))))

(assert (=> b!46451 (= res!27126 (bvslt (_1!865 (h!1839 (t!4296 l!812))) (_1!865 (h!1839 (t!4296 (t!4296 l!812))))))))

(declare-fun b!46452 () Bool)

(assert (=> b!46452 (= e!29611 (isStrictlySorted!234 (t!4296 (t!4296 l!812))))))

(assert (= (and d!9115 (not res!27125)) b!46451))

(assert (= (and b!46451 res!27126) b!46452))

(declare-fun m!40773 () Bool)

(assert (=> b!46452 m!40773))

(assert (=> b!46388 d!9115))

(declare-fun d!9119 () Bool)

(declare-fun res!27131 () Bool)

(declare-fun e!29616 () Bool)

(assert (=> d!9119 (=> res!27131 e!29616)))

(assert (=> d!9119 (= res!27131 (or (is-Nil!1260 l!812) (is-Nil!1260 (t!4296 l!812))))))

(assert (=> d!9119 (= (isStrictlySorted!234 l!812) e!29616)))

(declare-fun b!46457 () Bool)

(declare-fun e!29617 () Bool)

(assert (=> b!46457 (= e!29616 e!29617)))

(declare-fun res!27132 () Bool)

(assert (=> b!46457 (=> (not res!27132) (not e!29617))))

(assert (=> b!46457 (= res!27132 (bvslt (_1!865 (h!1839 l!812)) (_1!865 (h!1839 (t!4296 l!812)))))))

(declare-fun b!46458 () Bool)

(assert (=> b!46458 (= e!29617 (isStrictlySorted!234 (t!4296 l!812)))))

(assert (= (and d!9119 (not res!27131)) b!46457))

(assert (= (and b!46457 res!27132) b!46458))

(assert (=> b!46458 m!40743))

(assert (=> start!7252 d!9119))

(declare-fun b!46475 () Bool)

(declare-fun e!29628 () Bool)

(declare-fun tp!6132 () Bool)

(assert (=> b!46475 (= e!29628 (and tp_is_empty!1981 tp!6132))))

(assert (=> b!46390 (= tp!6119 e!29628)))

(assert (= (and b!46390 (is-Cons!1259 (t!4296 l!812))) b!46475))

(push 1)

