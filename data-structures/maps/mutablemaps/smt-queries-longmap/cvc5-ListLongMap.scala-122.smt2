; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!2068 () Bool)

(assert start!2068)

(declare-fun res!10930 () Bool)

(declare-fun e!8340 () Bool)

(assert (=> start!2068 (=> (not res!10930) (not e!8340))))

(declare-datatypes ((B!530 0))(
  ( (B!531 (val!363 Int)) )
))
(declare-datatypes ((tuple2!508 0))(
  ( (tuple2!509 (_1!254 (_ BitVec 64)) (_2!254 B!530)) )
))
(declare-datatypes ((List!413 0))(
  ( (Nil!410) (Cons!409 (h!975 tuple2!508) (t!2809 List!413)) )
))
(declare-fun l!522 () List!413)

(declare-fun isStrictlySorted!104 (List!413) Bool)

(assert (=> start!2068 (= res!10930 (isStrictlySorted!104 l!522))))

(assert (=> start!2068 e!8340))

(declare-fun e!8341 () Bool)

(assert (=> start!2068 e!8341))

(declare-fun tp_is_empty!709 () Bool)

(assert (=> start!2068 tp_is_empty!709))

(declare-fun b!13986 () Bool)

(declare-fun res!10929 () Bool)

(assert (=> b!13986 (=> (not res!10929) (not e!8340))))

(declare-fun value!159 () B!530)

(assert (=> b!13986 (= res!10929 (and (is-Cons!409 l!522) (= (_2!254 (h!975 l!522)) value!159)))))

(declare-fun b!13987 () Bool)

(declare-fun ListPrimitiveSize!22 (List!413) Int)

(assert (=> b!13987 (= e!8340 (>= (ListPrimitiveSize!22 (t!2809 l!522)) (ListPrimitiveSize!22 l!522)))))

(declare-fun b!13988 () Bool)

(declare-fun tp!2285 () Bool)

(assert (=> b!13988 (= e!8341 (and tp_is_empty!709 tp!2285))))

(assert (= (and start!2068 res!10930) b!13986))

(assert (= (and b!13986 res!10929) b!13987))

(assert (= (and start!2068 (is-Cons!409 l!522)) b!13988))

(declare-fun m!9355 () Bool)

(assert (=> start!2068 m!9355))

(declare-fun m!9357 () Bool)

(assert (=> b!13987 m!9357))

(declare-fun m!9359 () Bool)

(assert (=> b!13987 m!9359))

(push 1)

(assert (not start!2068))

(assert (not b!13987))

(assert (not b!13988))

(assert tp_is_empty!709)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2079 () Bool)

(declare-fun res!10951 () Bool)

(declare-fun e!8362 () Bool)

(assert (=> d!2079 (=> res!10951 e!8362)))

(assert (=> d!2079 (= res!10951 (or (is-Nil!410 l!522) (is-Nil!410 (t!2809 l!522))))))

(assert (=> d!2079 (= (isStrictlySorted!104 l!522) e!8362)))

(declare-fun b!14015 () Bool)

(declare-fun e!8363 () Bool)

(assert (=> b!14015 (= e!8362 e!8363)))

(declare-fun res!10952 () Bool)

(assert (=> b!14015 (=> (not res!10952) (not e!8363))))

(assert (=> b!14015 (= res!10952 (bvslt (_1!254 (h!975 l!522)) (_1!254 (h!975 (t!2809 l!522)))))))

(declare-fun b!14016 () Bool)

(assert (=> b!14016 (= e!8363 (isStrictlySorted!104 (t!2809 l!522)))))

(assert (= (and d!2079 (not res!10951)) b!14015))

(assert (= (and b!14015 res!10952) b!14016))

(declare-fun m!9373 () Bool)

(assert (=> b!14016 m!9373))

(assert (=> start!2068 d!2079))

(declare-fun d!2083 () Bool)

(declare-fun lt!3566 () Int)

(assert (=> d!2083 (>= lt!3566 0)))

(declare-fun e!8374 () Int)

(assert (=> d!2083 (= lt!3566 e!8374)))

(declare-fun c!1282 () Bool)

(assert (=> d!2083 (= c!1282 (is-Nil!410 (t!2809 l!522)))))

(assert (=> d!2083 (= (ListPrimitiveSize!22 (t!2809 l!522)) lt!3566)))

(declare-fun b!14031 () Bool)

(assert (=> b!14031 (= e!8374 0)))

(declare-fun b!14033 () Bool)

(assert (=> b!14033 (= e!8374 (+ 1 (ListPrimitiveSize!22 (t!2809 (t!2809 l!522)))))))

(assert (= (and d!2083 c!1282) b!14031))

(assert (= (and d!2083 (not c!1282)) b!14033))

(declare-fun m!9379 () Bool)

(assert (=> b!14033 m!9379))

(assert (=> b!13987 d!2083))

(declare-fun d!2089 () Bool)

(declare-fun lt!3569 () Int)

(assert (=> d!2089 (>= lt!3569 0)))

(declare-fun e!8377 () Int)

(assert (=> d!2089 (= lt!3569 e!8377)))

(declare-fun c!1285 () Bool)

(assert (=> d!2089 (= c!1285 (is-Nil!410 l!522))))

(assert (=> d!2089 (= (ListPrimitiveSize!22 l!522) lt!3569)))

(declare-fun b!14037 () Bool)

(assert (=> b!14037 (= e!8377 0)))

(declare-fun b!14038 () Bool)

(assert (=> b!14038 (= e!8377 (+ 1 (ListPrimitiveSize!22 (t!2809 l!522))))))

(assert (= (and d!2089 c!1285) b!14037))

(assert (= (and d!2089 (not c!1285)) b!14038))

(assert (=> b!14038 m!9357))

(assert (=> b!13987 d!2089))

(declare-fun b!14050 () Bool)

(declare-fun e!8385 () Bool)

(declare-fun tp!2297 () Bool)

(assert (=> b!14050 (= e!8385 (and tp_is_empty!709 tp!2297))))

(assert (=> b!13988 (= tp!2285 e!8385)))

(assert (= (and b!13988 (is-Cons!409 (t!2809 l!522))) b!14050))

(push 1)

(assert (not b!14050))

(assert (not b!14033))

(assert (not b!14038))

(assert (not b!14016))

(assert tp_is_empty!709)

(check-sat)

