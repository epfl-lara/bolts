; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!87404 () Bool)

(assert start!87404)

(declare-fun res!680068 () Bool)

(declare-fun e!569527 () Bool)

(assert (=> start!87404 (=> (not res!680068) (not e!569527))))

(declare-datatypes ((B!1344 0))(
  ( (B!1345 (val!11756 Int)) )
))
(declare-datatypes ((tuple2!15148 0))(
  ( (tuple2!15149 (_1!7584 (_ BitVec 64)) (_2!7584 B!1344)) )
))
(declare-datatypes ((List!21474 0))(
  ( (Nil!21471) (Cons!21470 (h!22668 tuple2!15148) (t!30483 List!21474)) )
))
(declare-fun l!412 () List!21474)

(declare-fun isStrictlySorted!532 (List!21474) Bool)

(assert (=> start!87404 (= res!680068 (isStrictlySorted!532 l!412))))

(assert (=> start!87404 e!569527))

(declare-fun e!569528 () Bool)

(assert (=> start!87404 e!569528))

(declare-fun tp_is_empty!23411 () Bool)

(assert (=> start!87404 tp_is_empty!23411))

(declare-fun b!1012355 () Bool)

(declare-fun res!680067 () Bool)

(assert (=> b!1012355 (=> (not res!680067) (not e!569527))))

(declare-fun value!115 () B!1344)

(assert (=> b!1012355 (= res!680067 (and (not (= (_2!7584 (h!22668 l!412)) value!115)) (is-Cons!21470 l!412)))))

(declare-fun b!1012356 () Bool)

(assert (=> b!1012356 (= e!569527 (not (isStrictlySorted!532 (t!30483 l!412))))))

(declare-fun b!1012357 () Bool)

(declare-fun tp!70290 () Bool)

(assert (=> b!1012357 (= e!569528 (and tp_is_empty!23411 tp!70290))))

(assert (= (and start!87404 res!680068) b!1012355))

(assert (= (and b!1012355 res!680067) b!1012356))

(assert (= (and start!87404 (is-Cons!21470 l!412)) b!1012357))

(declare-fun m!936101 () Bool)

(assert (=> start!87404 m!936101))

(declare-fun m!936103 () Bool)

(assert (=> b!1012356 m!936103))

(push 1)

(assert (not b!1012356))

(assert (not start!87404))

(assert (not b!1012357))

(assert tp_is_empty!23411)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!120261 () Bool)

(declare-fun res!680089 () Bool)

(declare-fun e!569555 () Bool)

(assert (=> d!120261 (=> res!680089 e!569555)))

(assert (=> d!120261 (= res!680089 (or (is-Nil!21471 (t!30483 l!412)) (is-Nil!21471 (t!30483 (t!30483 l!412)))))))

(assert (=> d!120261 (= (isStrictlySorted!532 (t!30483 l!412)) e!569555)))

(declare-fun b!1012388 () Bool)

(declare-fun e!569556 () Bool)

(assert (=> b!1012388 (= e!569555 e!569556)))

(declare-fun res!680090 () Bool)

(assert (=> b!1012388 (=> (not res!680090) (not e!569556))))

(assert (=> b!1012388 (= res!680090 (bvslt (_1!7584 (h!22668 (t!30483 l!412))) (_1!7584 (h!22668 (t!30483 (t!30483 l!412))))))))

(declare-fun b!1012389 () Bool)

(assert (=> b!1012389 (= e!569556 (isStrictlySorted!532 (t!30483 (t!30483 l!412))))))

(assert (= (and d!120261 (not res!680089)) b!1012388))

(assert (= (and b!1012388 res!680090) b!1012389))

(declare-fun m!936109 () Bool)

(assert (=> b!1012389 m!936109))

(assert (=> b!1012356 d!120261))

(declare-fun d!120267 () Bool)

(declare-fun res!680091 () Bool)

(declare-fun e!569557 () Bool)

(assert (=> d!120267 (=> res!680091 e!569557)))

(assert (=> d!120267 (= res!680091 (or (is-Nil!21471 l!412) (is-Nil!21471 (t!30483 l!412))))))

(assert (=> d!120267 (= (isStrictlySorted!532 l!412) e!569557)))

(declare-fun b!1012390 () Bool)

(declare-fun e!569558 () Bool)

(assert (=> b!1012390 (= e!569557 e!569558)))

(declare-fun res!680092 () Bool)

(assert (=> b!1012390 (=> (not res!680092) (not e!569558))))

(assert (=> b!1012390 (= res!680092 (bvslt (_1!7584 (h!22668 l!412)) (_1!7584 (h!22668 (t!30483 l!412)))))))

(declare-fun b!1012391 () Bool)

(assert (=> b!1012391 (= e!569558 (isStrictlySorted!532 (t!30483 l!412)))))

(assert (= (and d!120267 (not res!680091)) b!1012390))

(assert (= (and b!1012390 res!680092) b!1012391))

(assert (=> b!1012391 m!936103))

(assert (=> start!87404 d!120267))

