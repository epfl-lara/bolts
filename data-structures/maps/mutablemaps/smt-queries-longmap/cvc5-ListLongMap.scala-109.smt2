; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!1794 () Bool)

(assert start!1794)

(declare-fun key!303 () (_ BitVec 64))

(declare-fun e!7523 () Bool)

(declare-datatypes ((B!458 0))(
  ( (B!459 (val!324 Int)) )
))
(declare-fun v!194 () B!458)

(declare-datatypes ((tuple2!430 0))(
  ( (tuple2!431 (_1!215 (_ BitVec 64)) (_2!215 B!458)) )
))
(declare-datatypes ((List!371 0))(
  ( (Nil!368) (Cons!367 (h!933 tuple2!430) (t!2758 List!371)) )
))
(declare-fun l!1094 () List!371)

(declare-fun b!12574 () Bool)

(declare-fun contains!176 (List!371 tuple2!430) Bool)

(assert (=> b!12574 (= e!7523 (not (contains!176 l!1094 (tuple2!431 key!303 v!194))))))

(declare-fun b!12572 () Bool)

(declare-fun res!10093 () Bool)

(assert (=> b!12572 (=> (not res!10093) (not e!7523))))

(declare-datatypes ((Option!56 0))(
  ( (Some!55 (v!1376 B!458)) (None!54) )
))
(declare-fun getValueByKey!50 (List!371 (_ BitVec 64)) Option!56)

(assert (=> b!12572 (= res!10093 (= (getValueByKey!50 l!1094 key!303) (Some!55 v!194)))))

(declare-fun b!12573 () Bool)

(declare-fun res!10091 () Bool)

(assert (=> b!12573 (=> (not res!10091) (not e!7523))))

(assert (=> b!12573 (= res!10091 (or (not (is-Cons!367 l!1094)) (= (_1!215 (h!933 l!1094)) key!303)))))

(declare-fun res!10092 () Bool)

(assert (=> start!1794 (=> (not res!10092) (not e!7523))))

(declare-fun isStrictlySorted!68 (List!371) Bool)

(assert (=> start!1794 (= res!10092 (isStrictlySorted!68 l!1094))))

(assert (=> start!1794 e!7523))

(declare-fun e!7522 () Bool)

(assert (=> start!1794 e!7522))

(assert (=> start!1794 true))

(declare-fun tp_is_empty!631 () Bool)

(assert (=> start!1794 tp_is_empty!631))

(declare-fun b!12575 () Bool)

(declare-fun tp!2096 () Bool)

(assert (=> b!12575 (= e!7522 (and tp_is_empty!631 tp!2096))))

(assert (= (and start!1794 res!10092) b!12572))

(assert (= (and b!12572 res!10093) b!12573))

(assert (= (and b!12573 res!10091) b!12574))

(assert (= (and start!1794 (is-Cons!367 l!1094)) b!12575))

(declare-fun m!8549 () Bool)

(assert (=> b!12574 m!8549))

(declare-fun m!8551 () Bool)

(assert (=> b!12572 m!8551))

(declare-fun m!8553 () Bool)

(assert (=> start!1794 m!8553))

(push 1)

(assert (not b!12572))

(assert tp_is_empty!631)

(assert (not b!12574))

(assert (not start!1794))

(assert (not b!12575))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1799 () Bool)

(declare-fun res!10122 () Bool)

(declare-fun e!7546 () Bool)

(assert (=> d!1799 (=> res!10122 e!7546)))

(assert (=> d!1799 (= res!10122 (or (is-Nil!368 l!1094) (is-Nil!368 (t!2758 l!1094))))))

(assert (=> d!1799 (= (isStrictlySorted!68 l!1094) e!7546)))

(declare-fun b!12610 () Bool)

(declare-fun e!7547 () Bool)

(assert (=> b!12610 (= e!7546 e!7547)))

(declare-fun res!10123 () Bool)

(assert (=> b!12610 (=> (not res!10123) (not e!7547))))

(assert (=> b!12610 (= res!10123 (bvslt (_1!215 (h!933 l!1094)) (_1!215 (h!933 (t!2758 l!1094)))))))

(declare-fun b!12611 () Bool)

(assert (=> b!12611 (= e!7547 (isStrictlySorted!68 (t!2758 l!1094)))))

(assert (= (and d!1799 (not res!10122)) b!12610))

(assert (= (and b!12610 res!10123) b!12611))

(declare-fun m!8569 () Bool)

(assert (=> b!12611 m!8569))

(assert (=> start!1794 d!1799))

(declare-fun d!1803 () Bool)

(declare-fun lt!3179 () Bool)

(declare-fun content!12 (List!371) (Set tuple2!430))

(assert (=> d!1803 (= lt!3179 (set.member (tuple2!431 key!303 v!194) (content!12 l!1094)))))

(declare-fun e!7559 () Bool)

(assert (=> d!1803 (= lt!3179 e!7559)))

(declare-fun res!10134 () Bool)

(assert (=> d!1803 (=> (not res!10134) (not e!7559))))

(assert (=> d!1803 (= res!10134 (is-Cons!367 l!1094))))

(assert (=> d!1803 (= (contains!176 l!1094 (tuple2!431 key!303 v!194)) lt!3179)))

(declare-fun b!12622 () Bool)

(declare-fun e!7558 () Bool)

(assert (=> b!12622 (= e!7559 e!7558)))

(declare-fun res!10135 () Bool)

(assert (=> b!12622 (=> res!10135 e!7558)))

(assert (=> b!12622 (= res!10135 (= (h!933 l!1094) (tuple2!431 key!303 v!194)))))

(declare-fun b!12623 () Bool)

(assert (=> b!12623 (= e!7558 (contains!176 (t!2758 l!1094) (tuple2!431 key!303 v!194)))))

(assert (= (and d!1803 res!10134) b!12622))

(assert (= (and b!12622 (not res!10135)) b!12623))

(declare-fun m!8571 () Bool)

(assert (=> d!1803 m!8571))

(declare-fun m!8573 () Bool)

(assert (=> d!1803 m!8573))

(declare-fun m!8575 () Bool)

(assert (=> b!12623 m!8575))

(assert (=> b!12574 d!1803))

(declare-fun b!12642 () Bool)

(declare-fun e!7571 () Option!56)

(assert (=> b!12642 (= e!7571 (getValueByKey!50 (t!2758 l!1094) key!303))))

(declare-fun b!12643 () Bool)

(assert (=> b!12643 (= e!7571 None!54)))

(declare-fun b!12640 () Bool)

(declare-fun e!7570 () Option!56)

(assert (=> b!12640 (= e!7570 (Some!55 (_2!215 (h!933 l!1094))))))

(declare-fun b!12641 () Bool)

(assert (=> b!12641 (= e!7570 e!7571)))

(declare-fun c!1130 () Bool)

(assert (=> b!12641 (= c!1130 (and (is-Cons!367 l!1094) (not (= (_1!215 (h!933 l!1094)) key!303))))))

(declare-fun d!1807 () Bool)

(declare-fun c!1129 () Bool)

(assert (=> d!1807 (= c!1129 (and (is-Cons!367 l!1094) (= (_1!215 (h!933 l!1094)) key!303)))))

(assert (=> d!1807 (= (getValueByKey!50 l!1094 key!303) e!7570)))

(assert (= (and d!1807 c!1129) b!12640))

(assert (= (and d!1807 (not c!1129)) b!12641))

(assert (= (and b!12641 c!1130) b!12642))

(assert (= (and b!12641 (not c!1130)) b!12643))

(declare-fun m!8585 () Bool)

(assert (=> b!12642 m!8585))

(assert (=> b!12572 d!1807))

(declare-fun b!12656 () Bool)

(declare-fun e!7580 () Bool)

(declare-fun tp!2105 () Bool)

(assert (=> b!12656 (= e!7580 (and tp_is_empty!631 tp!2105))))

(assert (=> b!12575 (= tp!2096 e!7580)))

(assert (= (and b!12575 (is-Cons!367 (t!2758 l!1094))) b!12656))

(push 1)

(assert (not b!12656))

(assert tp_is_empty!631)

(assert (not b!12642))

(assert (not d!1803))

(assert (not b!12623))

