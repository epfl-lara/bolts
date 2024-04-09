; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!2072 () Bool)

(assert start!2072)

(declare-fun res!10942 () Bool)

(declare-fun e!8353 () Bool)

(assert (=> start!2072 (=> (not res!10942) (not e!8353))))

(declare-datatypes ((B!534 0))(
  ( (B!535 (val!365 Int)) )
))
(declare-datatypes ((tuple2!512 0))(
  ( (tuple2!513 (_1!256 (_ BitVec 64)) (_2!256 B!534)) )
))
(declare-datatypes ((List!415 0))(
  ( (Nil!412) (Cons!411 (h!977 tuple2!512) (t!2811 List!415)) )
))
(declare-fun l!522 () List!415)

(declare-fun isStrictlySorted!106 (List!415) Bool)

(assert (=> start!2072 (= res!10942 (isStrictlySorted!106 l!522))))

(assert (=> start!2072 e!8353))

(declare-fun e!8352 () Bool)

(assert (=> start!2072 e!8352))

(declare-fun tp_is_empty!713 () Bool)

(assert (=> start!2072 tp_is_empty!713))

(declare-fun b!14004 () Bool)

(declare-fun res!10941 () Bool)

(assert (=> b!14004 (=> (not res!10941) (not e!8353))))

(declare-fun value!159 () B!534)

(assert (=> b!14004 (= res!10941 (and (is-Cons!411 l!522) (= (_2!256 (h!977 l!522)) value!159)))))

(declare-fun b!14005 () Bool)

(declare-fun ListPrimitiveSize!24 (List!415) Int)

(assert (=> b!14005 (= e!8353 (>= (ListPrimitiveSize!24 (t!2811 l!522)) (ListPrimitiveSize!24 l!522)))))

(declare-fun b!14006 () Bool)

(declare-fun tp!2291 () Bool)

(assert (=> b!14006 (= e!8352 (and tp_is_empty!713 tp!2291))))

(assert (= (and start!2072 res!10942) b!14004))

(assert (= (and b!14004 res!10941) b!14005))

(assert (= (and start!2072 (is-Cons!411 l!522)) b!14006))

(declare-fun m!9367 () Bool)

(assert (=> start!2072 m!9367))

(declare-fun m!9369 () Bool)

(assert (=> b!14005 m!9369))

(declare-fun m!9371 () Bool)

(assert (=> b!14005 m!9371))

(push 1)

(assert (not start!2072))

(assert (not b!14005))

(assert (not b!14006))

(assert tp_is_empty!713)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2081 () Bool)

(declare-fun res!10959 () Bool)

(declare-fun e!8382 () Bool)

(assert (=> d!2081 (=> res!10959 e!8382)))

(assert (=> d!2081 (= res!10959 (or (is-Nil!412 l!522) (is-Nil!412 (t!2811 l!522))))))

(assert (=> d!2081 (= (isStrictlySorted!106 l!522) e!8382)))

(declare-fun b!14047 () Bool)

(declare-fun e!8383 () Bool)

(assert (=> b!14047 (= e!8382 e!8383)))

(declare-fun res!10960 () Bool)

(assert (=> b!14047 (=> (not res!10960) (not e!8383))))

(assert (=> b!14047 (= res!10960 (bvslt (_1!256 (h!977 l!522)) (_1!256 (h!977 (t!2811 l!522)))))))

(declare-fun b!14048 () Bool)

(assert (=> b!14048 (= e!8383 (isStrictlySorted!106 (t!2811 l!522)))))

(assert (= (and d!2081 (not res!10959)) b!14047))

(assert (= (and b!14047 res!10960) b!14048))

(declare-fun m!9381 () Bool)

(assert (=> b!14048 m!9381))

(assert (=> start!2072 d!2081))

(declare-fun d!2091 () Bool)

(declare-fun lt!3572 () Int)

(assert (=> d!2091 (>= lt!3572 0)))

(declare-fun e!8388 () Int)

(assert (=> d!2091 (= lt!3572 e!8388)))

(declare-fun c!1288 () Bool)

(assert (=> d!2091 (= c!1288 (is-Nil!412 (t!2811 l!522)))))

(assert (=> d!2091 (= (ListPrimitiveSize!24 (t!2811 l!522)) lt!3572)))

(declare-fun b!14055 () Bool)

(assert (=> b!14055 (= e!8388 0)))

(declare-fun b!14056 () Bool)

(assert (=> b!14056 (= e!8388 (+ 1 (ListPrimitiveSize!24 (t!2811 (t!2811 l!522)))))))

(assert (= (and d!2091 c!1288) b!14055))

(assert (= (and d!2091 (not c!1288)) b!14056))

(declare-fun m!9383 () Bool)

(assert (=> b!14056 m!9383))

(assert (=> b!14005 d!2091))

(declare-fun d!2093 () Bool)

(declare-fun lt!3573 () Int)

(assert (=> d!2093 (>= lt!3573 0)))

