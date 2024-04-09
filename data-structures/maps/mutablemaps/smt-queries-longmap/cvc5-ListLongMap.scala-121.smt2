; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!2050 () Bool)

(assert start!2050)

(declare-fun res!10900 () Bool)

(declare-fun e!8286 () Bool)

(assert (=> start!2050 (=> (not res!10900) (not e!8286))))

(declare-datatypes ((B!524 0))(
  ( (B!525 (val!360 Int)) )
))
(declare-datatypes ((tuple2!502 0))(
  ( (tuple2!503 (_1!251 (_ BitVec 64)) (_2!251 B!524)) )
))
(declare-datatypes ((List!410 0))(
  ( (Nil!407) (Cons!406 (h!972 tuple2!502) (t!2806 List!410)) )
))
(declare-fun l!522 () List!410)

(declare-fun isStrictlySorted!101 (List!410) Bool)

(assert (=> start!2050 (= res!10900 (isStrictlySorted!101 l!522))))

(assert (=> start!2050 e!8286))

(declare-fun e!8287 () Bool)

(assert (=> start!2050 e!8287))

(declare-fun b!13915 () Bool)

(declare-fun ListPrimitiveSize!19 (List!410) Int)

(assert (=> b!13915 (= e!8286 (< (ListPrimitiveSize!19 l!522) 0))))

(declare-fun b!13916 () Bool)

(declare-fun tp_is_empty!703 () Bool)

(declare-fun tp!2267 () Bool)

(assert (=> b!13916 (= e!8287 (and tp_is_empty!703 tp!2267))))

(assert (= (and start!2050 res!10900) b!13915))

(assert (= (and start!2050 (is-Cons!406 l!522)) b!13916))

(declare-fun m!9331 () Bool)

(assert (=> start!2050 m!9331))

(declare-fun m!9333 () Bool)

(assert (=> b!13915 m!9333))

(push 1)

(assert (not b!13915))

(assert (not start!2050))

(assert (not b!13916))

(assert tp_is_empty!703)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2065 () Bool)

(declare-fun lt!3557 () Int)

(assert (=> d!2065 (>= lt!3557 0)))

(declare-fun e!8308 () Int)

(assert (=> d!2065 (= lt!3557 e!8308)))

(declare-fun c!1273 () Bool)

(assert (=> d!2065 (= c!1273 (is-Nil!407 l!522))))

(assert (=> d!2065 (= (ListPrimitiveSize!19 l!522) lt!3557)))

(declare-fun b!13941 () Bool)

(assert (=> b!13941 (= e!8308 0)))

(declare-fun b!13942 () Bool)

(assert (=> b!13942 (= e!8308 (+ 1 (ListPrimitiveSize!19 (t!2806 l!522))))))

(assert (= (and d!2065 c!1273) b!13941))

(assert (= (and d!2065 (not c!1273)) b!13942))

(declare-fun m!9343 () Bool)

(assert (=> b!13942 m!9343))

(assert (=> b!13915 d!2065))

(declare-fun d!2069 () Bool)

(declare-fun res!10923 () Bool)

(declare-fun e!8325 () Bool)

(assert (=> d!2069 (=> res!10923 e!8325)))

(assert (=> d!2069 (= res!10923 (or (is-Nil!407 l!522) (is-Nil!407 (t!2806 l!522))))))

(assert (=> d!2069 (= (isStrictlySorted!101 l!522) e!8325)))

(declare-fun b!13963 () Bool)

(declare-fun e!8326 () Bool)

(assert (=> b!13963 (= e!8325 e!8326)))

(declare-fun res!10924 () Bool)

(assert (=> b!13963 (=> (not res!10924) (not e!8326))))

(assert (=> b!13963 (= res!10924 (bvslt (_1!251 (h!972 l!522)) (_1!251 (h!972 (t!2806 l!522)))))))

(declare-fun b!13964 () Bool)

(assert (=> b!13964 (= e!8326 (isStrictlySorted!101 (t!2806 l!522)))))

(assert (= (and d!2069 (not res!10923)) b!13963))

(assert (= (and b!13963 res!10924) b!13964))

(declare-fun m!9353 () Bool)

(assert (=> b!13964 m!9353))

(assert (=> start!2050 d!2069))

(declare-fun b!13979 () Bool)

(declare-fun e!8335 () Bool)

(declare-fun tp!2282 () Bool)

(assert (=> b!13979 (= e!8335 (and tp_is_empty!703 tp!2282))))

(assert (=> b!13916 (= tp!2267 e!8335)))

(assert (= (and b!13916 (is-Cons!406 (t!2806 l!522))) b!13979))

(push 1)

