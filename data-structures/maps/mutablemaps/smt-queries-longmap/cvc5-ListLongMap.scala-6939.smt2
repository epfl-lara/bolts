; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!87400 () Bool)

(assert start!87400)

(declare-fun res!680056 () Bool)

(declare-fun e!569515 () Bool)

(assert (=> start!87400 (=> (not res!680056) (not e!569515))))

(declare-datatypes ((B!1340 0))(
  ( (B!1341 (val!11754 Int)) )
))
(declare-datatypes ((tuple2!15144 0))(
  ( (tuple2!15145 (_1!7582 (_ BitVec 64)) (_2!7582 B!1340)) )
))
(declare-datatypes ((List!21472 0))(
  ( (Nil!21469) (Cons!21468 (h!22666 tuple2!15144) (t!30481 List!21472)) )
))
(declare-fun l!412 () List!21472)

(declare-fun isStrictlySorted!530 (List!21472) Bool)

(assert (=> start!87400 (= res!680056 (isStrictlySorted!530 l!412))))

(assert (=> start!87400 e!569515))

(declare-fun e!569516 () Bool)

(assert (=> start!87400 e!569516))

(declare-fun tp_is_empty!23407 () Bool)

(assert (=> start!87400 tp_is_empty!23407))

(declare-fun b!1012337 () Bool)

(declare-fun res!680055 () Bool)

(assert (=> b!1012337 (=> (not res!680055) (not e!569515))))

(declare-fun value!115 () B!1340)

(assert (=> b!1012337 (= res!680055 (and (not (= (_2!7582 (h!22666 l!412)) value!115)) (is-Cons!21468 l!412)))))

(declare-fun b!1012338 () Bool)

(assert (=> b!1012338 (= e!569515 (not (isStrictlySorted!530 (t!30481 l!412))))))

(declare-fun b!1012339 () Bool)

(declare-fun tp!70284 () Bool)

(assert (=> b!1012339 (= e!569516 (and tp_is_empty!23407 tp!70284))))

(assert (= (and start!87400 res!680056) b!1012337))

(assert (= (and b!1012337 res!680055) b!1012338))

(assert (= (and start!87400 (is-Cons!21468 l!412)) b!1012339))

(declare-fun m!936093 () Bool)

(assert (=> start!87400 m!936093))

(declare-fun m!936095 () Bool)

(assert (=> b!1012338 m!936095))

(push 1)

(assert (not start!87400))

(assert (not b!1012338))

(assert (not b!1012339))

(assert tp_is_empty!23407)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!120259 () Bool)

(declare-fun res!680079 () Bool)

(declare-fun e!569539 () Bool)

(assert (=> d!120259 (=> res!680079 e!569539)))

(assert (=> d!120259 (= res!680079 (or (is-Nil!21469 l!412) (is-Nil!21469 (t!30481 l!412))))))

(assert (=> d!120259 (= (isStrictlySorted!530 l!412) e!569539)))

(declare-fun b!1012368 () Bool)

(declare-fun e!569540 () Bool)

(assert (=> b!1012368 (= e!569539 e!569540)))

(declare-fun res!680080 () Bool)

(assert (=> b!1012368 (=> (not res!680080) (not e!569540))))

(assert (=> b!1012368 (= res!680080 (bvslt (_1!7582 (h!22666 l!412)) (_1!7582 (h!22666 (t!30481 l!412)))))))

(declare-fun b!1012369 () Bool)

(assert (=> b!1012369 (= e!569540 (isStrictlySorted!530 (t!30481 l!412)))))

(assert (= (and d!120259 (not res!680079)) b!1012368))

(assert (= (and b!1012368 res!680080) b!1012369))

(assert (=> b!1012369 m!936095))

(assert (=> start!87400 d!120259))

(declare-fun d!120265 () Bool)

(declare-fun res!680087 () Bool)

(declare-fun e!569547 () Bool)

(assert (=> d!120265 (=> res!680087 e!569547)))

(assert (=> d!120265 (= res!680087 (or (is-Nil!21469 (t!30481 l!412)) (is-Nil!21469 (t!30481 (t!30481 l!412)))))))

(assert (=> d!120265 (= (isStrictlySorted!530 (t!30481 l!412)) e!569547)))

(declare-fun b!1012376 () Bool)

(declare-fun e!569548 () Bool)

(assert (=> b!1012376 (= e!569547 e!569548)))

(declare-fun res!680088 () Bool)

(assert (=> b!1012376 (=> (not res!680088) (not e!569548))))

(assert (=> b!1012376 (= res!680088 (bvslt (_1!7582 (h!22666 (t!30481 l!412))) (_1!7582 (h!22666 (t!30481 (t!30481 l!412))))))))

(declare-fun b!1012377 () Bool)

(assert (=> b!1012377 (= e!569548 (isStrictlySorted!530 (t!30481 (t!30481 l!412))))))

(assert (= (and d!120265 (not res!680087)) b!1012376))

(assert (= (and b!1012376 res!680088) b!1012377))

(declare-fun m!936107 () Bool)

(assert (=> b!1012377 m!936107))

(assert (=> b!1012338 d!120265))

(declare-fun b!1012387 () Bool)

(declare-fun e!569554 () Bool)

(declare-fun tp!70296 () Bool)

(assert (=> b!1012387 (= e!569554 (and tp_is_empty!23407 tp!70296))))

(assert (=> b!1012339 (= tp!70284 e!569554)))

(assert (= (and b!1012339 (is-Cons!21468 (t!30481 l!412))) b!1012387))

(push 1)

(assert (not b!1012377))

(assert (not b!1012369))

(assert (not b!1012387))

(assert tp_is_empty!23407)

(check-sat)

(pop 1)

