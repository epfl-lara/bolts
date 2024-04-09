; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!88948 () Bool)

(assert start!88948)

(declare-fun res!683916 () Bool)

(declare-fun e!574279 () Bool)

(assert (=> start!88948 (=> (not res!683916) (not e!574279))))

(declare-datatypes ((B!1724 0))(
  ( (B!1725 (val!11946 Int)) )
))
(declare-datatypes ((tuple2!15528 0))(
  ( (tuple2!15529 (_1!7774 (_ BitVec 64)) (_2!7774 B!1724)) )
))
(declare-datatypes ((List!21748 0))(
  ( (Nil!21745) (Cons!21744 (h!22942 tuple2!15528) (t!30765 List!21748)) )
))
(declare-fun l!1367 () List!21748)

(declare-fun isStrictlySorted!695 (List!21748) Bool)

(assert (=> start!88948 (= res!683916 (isStrictlySorted!695 l!1367))))

(assert (=> start!88948 e!574279))

(declare-fun e!574278 () Bool)

(assert (=> start!88948 e!574278))

(assert (=> start!88948 true))

(declare-fun tp_is_empty!23791 () Bool)

(assert (=> start!88948 tp_is_empty!23791))

(declare-fun b!1020234 () Bool)

(declare-fun res!683915 () Bool)

(assert (=> b!1020234 (=> (not res!683915) (not e!574279))))

(declare-fun value!188 () B!1724)

(declare-fun key!393 () (_ BitVec 64))

(declare-fun contains!5939 (List!21748 tuple2!15528) Bool)

(assert (=> b!1020234 (= res!683915 (contains!5939 l!1367 (tuple2!15529 key!393 value!188)))))

(declare-fun b!1020235 () Bool)

(declare-fun ListPrimitiveSize!139 (List!21748) Int)

(assert (=> b!1020235 (= e!574279 (< (ListPrimitiveSize!139 l!1367) 0))))

(declare-fun b!1020236 () Bool)

(declare-fun tp!71237 () Bool)

(assert (=> b!1020236 (= e!574278 (and tp_is_empty!23791 tp!71237))))

(assert (= (and start!88948 res!683916) b!1020234))

(assert (= (and b!1020234 res!683915) b!1020235))

(assert (= (and start!88948 (is-Cons!21744 l!1367)) b!1020236))

(declare-fun m!940387 () Bool)

(assert (=> start!88948 m!940387))

(declare-fun m!940389 () Bool)

(assert (=> b!1020234 m!940389))

(declare-fun m!940391 () Bool)

(assert (=> b!1020235 m!940391))

(push 1)

(assert (not b!1020236))

(assert (not b!1020234))

(assert (not b!1020235))

(assert tp_is_empty!23791)

(assert (not start!88948))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun lt!449815 () Bool)

(declare-fun d!122287 () Bool)

(declare-fun content!498 (List!21748) (Set tuple2!15528))

(assert (=> d!122287 (= lt!449815 (set.member (tuple2!15529 key!393 value!188) (content!498 l!1367)))))

(declare-fun e!574309 () Bool)

(assert (=> d!122287 (= lt!449815 e!574309)))

(declare-fun res!683946 () Bool)

(assert (=> d!122287 (=> (not res!683946) (not e!574309))))

(assert (=> d!122287 (= res!683946 (is-Cons!21744 l!1367))))

(assert (=> d!122287 (= (contains!5939 l!1367 (tuple2!15529 key!393 value!188)) lt!449815)))

(declare-fun b!1020271 () Bool)

(declare-fun e!574308 () Bool)

(assert (=> b!1020271 (= e!574309 e!574308)))

(declare-fun res!683945 () Bool)

(assert (=> b!1020271 (=> res!683945 e!574308)))

(assert (=> b!1020271 (= res!683945 (= (h!22942 l!1367) (tuple2!15529 key!393 value!188)))))

(declare-fun b!1020272 () Bool)

(assert (=> b!1020272 (= e!574308 (contains!5939 (t!30765 l!1367) (tuple2!15529 key!393 value!188)))))

(assert (= (and d!122287 res!683946) b!1020271))

(assert (= (and b!1020271 (not res!683945)) b!1020272))

(declare-fun m!940409 () Bool)

(assert (=> d!122287 m!940409))

(declare-fun m!940413 () Bool)

(assert (=> d!122287 m!940413))

(declare-fun m!940417 () Bool)

(assert (=> b!1020272 m!940417))

(assert (=> b!1020234 d!122287))

(declare-fun d!122293 () Bool)

(declare-fun lt!449821 () Int)

(assert (=> d!122293 (>= lt!449821 0)))

(declare-fun e!574319 () Int)

(assert (=> d!122293 (= lt!449821 e!574319)))

(declare-fun c!103443 () Bool)

(assert (=> d!122293 (= c!103443 (is-Nil!21745 l!1367))))

(assert (=> d!122293 (= (ListPrimitiveSize!139 l!1367) lt!449821)))

(declare-fun b!1020287 () Bool)

(assert (=> b!1020287 (= e!574319 0)))

(declare-fun b!1020288 () Bool)

(assert (=> b!1020288 (= e!574319 (+ 1 (ListPrimitiveSize!139 (t!30765 l!1367))))))

(assert (= (and d!122293 c!103443) b!1020287))

(assert (= (and d!122293 (not c!103443)) b!1020288))

(declare-fun m!940421 () Bool)

(assert (=> b!1020288 m!940421))

(assert (=> b!1020235 d!122293))

(declare-fun d!122297 () Bool)

(declare-fun res!683963 () Bool)

(declare-fun e!574334 () Bool)

(assert (=> d!122297 (=> res!683963 e!574334)))

(assert (=> d!122297 (= res!683963 (or (is-Nil!21745 l!1367) (is-Nil!21745 (t!30765 l!1367))))))

(assert (=> d!122297 (= (isStrictlySorted!695 l!1367) e!574334)))

(declare-fun b!1020306 () Bool)

(declare-fun e!574336 () Bool)

(assert (=> b!1020306 (= e!574334 e!574336)))

(declare-fun res!683964 () Bool)

(assert (=> b!1020306 (=> (not res!683964) (not e!574336))))

(assert (=> b!1020306 (= res!683964 (bvslt (_1!7774 (h!22942 l!1367)) (_1!7774 (h!22942 (t!30765 l!1367)))))))

(declare-fun b!1020308 () Bool)

(assert (=> b!1020308 (= e!574336 (isStrictlySorted!695 (t!30765 l!1367)))))

(assert (= (and d!122297 (not res!683963)) b!1020306))

(assert (= (and b!1020306 res!683964) b!1020308))

(declare-fun m!940433 () Bool)

(assert (=> b!1020308 m!940433))

(assert (=> start!88948 d!122297))

(declare-fun b!1020323 () Bool)

(declare-fun e!574345 () Bool)

(declare-fun tp!71252 () Bool)

(assert (=> b!1020323 (= e!574345 (and tp_is_empty!23791 tp!71252))))

(assert (=> b!1020236 (= tp!71237 e!574345)))

(assert (= (and b!1020236 (is-Cons!21744 (t!30765 l!1367))) b!1020323))

(push 1)

(assert (not b!1020272))

(assert (not b!1020308))

(assert tp_is_empty!23791)

(assert (not b!1020323))

(assert (not d!122287))

(assert (not b!1020288))

(check-sat)

