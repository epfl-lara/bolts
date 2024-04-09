; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!2054 () Bool)

(assert start!2054)

(declare-fun res!10906 () Bool)

(declare-fun e!8298 () Bool)

(assert (=> start!2054 (=> (not res!10906) (not e!8298))))

(declare-datatypes ((B!528 0))(
  ( (B!529 (val!362 Int)) )
))
(declare-datatypes ((tuple2!506 0))(
  ( (tuple2!507 (_1!253 (_ BitVec 64)) (_2!253 B!528)) )
))
(declare-datatypes ((List!412 0))(
  ( (Nil!409) (Cons!408 (h!974 tuple2!506) (t!2808 List!412)) )
))
(declare-fun l!522 () List!412)

(declare-fun isStrictlySorted!103 (List!412) Bool)

(assert (=> start!2054 (= res!10906 (isStrictlySorted!103 l!522))))

(assert (=> start!2054 e!8298))

(declare-fun e!8299 () Bool)

(assert (=> start!2054 e!8299))

(declare-fun b!13927 () Bool)

(declare-fun ListPrimitiveSize!21 (List!412) Int)

(assert (=> b!13927 (= e!8298 (< (ListPrimitiveSize!21 l!522) 0))))

(declare-fun b!13928 () Bool)

(declare-fun tp_is_empty!707 () Bool)

(declare-fun tp!2273 () Bool)

(assert (=> b!13928 (= e!8299 (and tp_is_empty!707 tp!2273))))

(assert (= (and start!2054 res!10906) b!13927))

(assert (= (and start!2054 (is-Cons!408 l!522)) b!13928))

(declare-fun m!9339 () Bool)

(assert (=> start!2054 m!9339))

(declare-fun m!9341 () Bool)

(assert (=> b!13927 m!9341))

(push 1)

(assert (not b!13927))

(assert (not start!2054))

(assert (not b!13928))

(assert tp_is_empty!707)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2067 () Bool)

(declare-fun lt!3558 () Int)

(assert (=> d!2067 (>= lt!3558 0)))

(declare-fun e!8311 () Int)

(assert (=> d!2067 (= lt!3558 e!8311)))

(declare-fun c!1274 () Bool)

(assert (=> d!2067 (= c!1274 (is-Nil!409 l!522))))

(assert (=> d!2067 (= (ListPrimitiveSize!21 l!522) lt!3558)))

(declare-fun b!13945 () Bool)

(assert (=> b!13945 (= e!8311 0)))

(declare-fun b!13946 () Bool)

(assert (=> b!13946 (= e!8311 (+ 1 (ListPrimitiveSize!21 (t!2808 l!522))))))

(assert (= (and d!2067 c!1274) b!13945))

(assert (= (and d!2067 (not c!1274)) b!13946))

(declare-fun m!9347 () Bool)

(assert (=> b!13946 m!9347))

(assert (=> b!13927 d!2067))

(declare-fun d!2073 () Bool)

(declare-fun res!10921 () Bool)

(declare-fun e!8323 () Bool)

(assert (=> d!2073 (=> res!10921 e!8323)))

(assert (=> d!2073 (= res!10921 (or (is-Nil!409 l!522) (is-Nil!409 (t!2808 l!522))))))

(assert (=> d!2073 (= (isStrictlySorted!103 l!522) e!8323)))

(declare-fun b!13961 () Bool)

(declare-fun e!8324 () Bool)

(assert (=> b!13961 (= e!8323 e!8324)))

(declare-fun res!10922 () Bool)

(assert (=> b!13961 (=> (not res!10922) (not e!8324))))

(assert (=> b!13961 (= res!10922 (bvslt (_1!253 (h!974 l!522)) (_1!253 (h!974 (t!2808 l!522)))))))

(declare-fun b!13962 () Bool)

(assert (=> b!13962 (= e!8324 (isStrictlySorted!103 (t!2808 l!522)))))

(assert (= (and d!2073 (not res!10921)) b!13961))

(assert (= (and b!13961 res!10922) b!13962))

(declare-fun m!9351 () Bool)

(assert (=> b!13962 m!9351))

(assert (=> start!2054 d!2073))

(declare-fun b!13977 () Bool)

(declare-fun e!8333 () Bool)

(declare-fun tp!2280 () Bool)

(assert (=> b!13977 (= e!8333 (and tp_is_empty!707 tp!2280))))

(assert (=> b!13928 (= tp!2273 e!8333)))

(assert (= (and b!13928 (is-Cons!408 (t!2808 l!522))) b!13977))

(push 1)

