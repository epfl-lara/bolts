; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!486302 () Bool)

(assert start!486302)

(declare-fun res!2017790 () Bool)

(declare-fun e!2967133 () Bool)

(assert (=> start!486302 (=> (not res!2017790) (not e!2967133))))

(declare-datatypes ((K!14718 0))(
  ( (K!14719 (val!20045 Int)) )
))
(declare-datatypes ((V!14964 0))(
  ( (V!14965 (val!20046 Int)) )
))
(declare-datatypes ((tuple2!55026 0))(
  ( (tuple2!55027 (_1!30807 K!14718) (_2!30807 V!14964)) )
))
(declare-datatypes ((List!53297 0))(
  ( (Nil!53173) (Cons!53173 (h!59572 tuple2!55026) (t!360641 List!53297)) )
))
(declare-fun l!13802 () List!53297)

(declare-fun noDuplicateKeys!2221 (List!53297) Bool)

(assert (=> start!486302 (= res!2017790 (noDuplicateKeys!2221 l!13802))))

(assert (=> start!486302 e!2967133))

(declare-fun e!2967134 () Bool)

(assert (=> start!486302 e!2967134))

(assert (=> start!486302 true))

(declare-fun b!4756168 () Bool)

(assert (=> b!4756168 (= e!2967133 false)))

(declare-fun tp_is_empty!32201 () Bool)

(declare-fun tp_is_empty!32203 () Bool)

(declare-fun b!4756169 () Bool)

(declare-fun tp!1350968 () Bool)

(assert (=> b!4756169 (= e!2967134 (and tp_is_empty!32201 tp_is_empty!32203 tp!1350968))))

(assert (= (and start!486302 res!2017790) b!4756168))

(assert (= (and start!486302 (is-Cons!53173 l!13802)) b!4756169))

(declare-fun m!5726303 () Bool)

(assert (=> start!486302 m!5726303))

(push 1)

(assert (not start!486302))

(assert (not b!4756169))

(assert tp_is_empty!32203)

(assert tp_is_empty!32201)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

