; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!1744 () Bool)

(assert start!1744)

(declare-fun res!9958 () Bool)

(declare-fun e!7331 () Bool)

(assert (=> start!1744 (=> (not res!9958) (not e!7331))))

(declare-datatypes ((B!450 0))(
  ( (B!451 (val!320 Int)) )
))
(declare-datatypes ((tuple2!422 0))(
  ( (tuple2!423 (_1!211 (_ BitVec 64)) (_2!211 B!450)) )
))
(declare-datatypes ((List!367 0))(
  ( (Nil!364) (Cons!363 (h!929 tuple2!422) (t!2754 List!367)) )
))
(declare-fun l!1094 () List!367)

(declare-fun isStrictlySorted!64 (List!367) Bool)

(assert (=> start!1744 (= res!9958 (isStrictlySorted!64 l!1094))))

(assert (=> start!1744 e!7331))

(declare-fun e!7329 () Bool)

(assert (=> start!1744 e!7329))

(declare-fun tp_is_empty!623 () Bool)

(assert (=> start!1744 tp_is_empty!623))

(assert (=> start!1744 true))

(declare-fun b!12273 () Bool)

(declare-fun res!9957 () Bool)

(declare-fun e!7330 () Bool)

(assert (=> b!12273 (=> (not res!9957) (not e!7330))))

(declare-fun key!303 () (_ BitVec 64))

(assert (=> b!12273 (= res!9957 (and (is-Cons!363 l!1094) (not (= (_1!211 (h!929 l!1094)) key!303))))))

(declare-fun b!12274 () Bool)

(declare-fun res!9956 () Bool)

(assert (=> b!12274 (=> (not res!9956) (not e!7330))))

(assert (=> b!12274 (= res!9956 (isStrictlySorted!64 (t!2754 l!1094)))))

(declare-fun b!12275 () Bool)

(assert (=> b!12275 (= e!7331 e!7330)))

(declare-fun res!9954 () Bool)

(assert (=> b!12275 (=> (not res!9954) (not e!7330))))

(declare-datatypes ((Option!52 0))(
  ( (Some!51 (v!1366 B!450)) (None!50) )
))
(declare-fun lt!3114 () Option!52)

(declare-fun getValueByKey!46 (List!367 (_ BitVec 64)) Option!52)

(assert (=> b!12275 (= res!9954 (= (getValueByKey!46 l!1094 key!303) lt!3114))))

(declare-fun v!194 () B!450)

(assert (=> b!12275 (= lt!3114 (Some!51 v!194))))

(declare-fun b!12276 () Bool)

(declare-fun res!9955 () Bool)

(assert (=> b!12276 (=> (not res!9955) (not e!7330))))

(assert (=> b!12276 (= res!9955 (= (getValueByKey!46 (t!2754 l!1094) key!303) lt!3114))))

(declare-fun b!12277 () Bool)

(declare-fun tp!2066 () Bool)

(assert (=> b!12277 (= e!7329 (and tp_is_empty!623 tp!2066))))

(declare-fun b!12278 () Bool)

(declare-fun ListPrimitiveSize!18 (List!367) Int)

(assert (=> b!12278 (= e!7330 (>= (ListPrimitiveSize!18 (t!2754 l!1094)) (ListPrimitiveSize!18 l!1094)))))

(assert (= (and start!1744 res!9958) b!12275))

(assert (= (and b!12275 res!9954) b!12273))

(assert (= (and b!12273 res!9957) b!12274))

(assert (= (and b!12274 res!9956) b!12276))

(assert (= (and b!12276 res!9955) b!12278))

(assert (= (and start!1744 (is-Cons!363 l!1094)) b!12277))

(declare-fun m!8423 () Bool)

(assert (=> b!12275 m!8423))

(declare-fun m!8425 () Bool)

(assert (=> b!12278 m!8425))

(declare-fun m!8427 () Bool)

(assert (=> b!12278 m!8427))

(declare-fun m!8429 () Bool)

(assert (=> b!12276 m!8429))

(declare-fun m!8431 () Bool)

(assert (=> b!12274 m!8431))

(declare-fun m!8433 () Bool)

(assert (=> start!1744 m!8433))

(push 1)

(assert (not b!12274))

(assert (not start!1744))

(assert (not b!12276))

(assert tp_is_empty!623)

(assert (not b!12278))

(assert (not b!12275))

(assert (not b!12277))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1719 () Bool)

(declare-fun res!9969 () Bool)

(declare-fun e!7356 () Bool)

(assert (=> d!1719 (=> res!9969 e!7356)))

(assert (=> d!1719 (= res!9969 (or (is-Nil!364 (t!2754 l!1094)) (is-Nil!364 (t!2754 (t!2754 l!1094)))))))

(assert (=> d!1719 (= (isStrictlySorted!64 (t!2754 l!1094)) e!7356)))

(declare-fun b!12317 () Bool)

(declare-fun e!7357 () Bool)

(assert (=> b!12317 (= e!7356 e!7357)))

(declare-fun res!9970 () Bool)

(assert (=> b!12317 (=> (not res!9970) (not e!7357))))

(assert (=> b!12317 (= res!9970 (bvslt (_1!211 (h!929 (t!2754 l!1094))) (_1!211 (h!929 (t!2754 (t!2754 l!1094))))))))

(declare-fun b!12318 () Bool)

(assert (=> b!12318 (= e!7357 (isStrictlySorted!64 (t!2754 (t!2754 l!1094))))))

(assert (= (and d!1719 (not res!9969)) b!12317))

(assert (= (and b!12317 res!9970) b!12318))

(declare-fun m!8443 () Bool)

(assert (=> b!12318 m!8443))

(assert (=> b!12274 d!1719))

(declare-fun b!12370 () Bool)

(declare-fun e!7389 () Option!52)

(assert (=> b!12370 (= e!7389 None!50)))

(declare-fun d!1735 () Bool)

(declare-fun c!1093 () Bool)

(assert (=> d!1735 (= c!1093 (and (is-Cons!363 l!1094) (= (_1!211 (h!929 l!1094)) key!303)))))

(declare-fun e!7388 () Option!52)

(assert (=> d!1735 (= (getValueByKey!46 l!1094 key!303) e!7388)))

(declare-fun b!12368 () Bool)

(assert (=> b!12368 (= e!7388 e!7389)))

(declare-fun c!1094 () Bool)

(assert (=> b!12368 (= c!1094 (and (is-Cons!363 l!1094) (not (= (_1!211 (h!929 l!1094)) key!303))))))

(declare-fun b!12369 () Bool)

(assert (=> b!12369 (= e!7389 (getValueByKey!46 (t!2754 l!1094) key!303))))

(declare-fun b!12367 () Bool)

(assert (=> b!12367 (= e!7388 (Some!51 (_2!211 (h!929 l!1094))))))

