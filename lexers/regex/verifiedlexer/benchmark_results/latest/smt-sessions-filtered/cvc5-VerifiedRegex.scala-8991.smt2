; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!484886 () Bool)

(assert start!484886)

(declare-fun res!2012332 () Bool)

(declare-fun e!2961178 () Bool)

(assert (=> start!484886 (=> (not res!2012332) (not e!2961178))))

(declare-datatypes ((K!14358 0))(
  ( (K!14359 (val!19757 Int)) )
))
(declare-datatypes ((V!14604 0))(
  ( (V!14605 (val!19758 Int)) )
))
(declare-datatypes ((tuple2!54726 0))(
  ( (tuple2!54727 (_1!30657 K!14358) (_2!30657 V!14604)) )
))
(declare-datatypes ((List!53141 0))(
  ( (Nil!53017) (Cons!53017 (h!59414 tuple2!54726) (t!360449 List!53141)) )
))
(declare-fun l!14304 () List!53141)

(declare-fun noDuplicateKeys!2083 (List!53141) Bool)

(assert (=> start!484886 (= res!2012332 (noDuplicateKeys!2083 l!14304))))

(assert (=> start!484886 e!2961178))

(declare-fun e!2961177 () Bool)

(assert (=> start!484886 e!2961177))

(declare-fun tp_is_empty!31625 () Bool)

(declare-fun tp_is_empty!31627 () Bool)

(assert (=> start!484886 (and tp_is_empty!31625 tp_is_empty!31627)))

(declare-fun b!4747364 () Bool)

(assert (=> b!4747364 (= e!2961178 false)))

(declare-fun lt!1909390 () Bool)

(declare-fun t!14174 () tuple2!54726)

(assert (=> b!4747364 (= lt!1909390 (noDuplicateKeys!2083 (Cons!53017 t!14174 l!14304)))))

(declare-fun tp!1349654 () Bool)

(declare-fun b!4747365 () Bool)

(assert (=> b!4747365 (= e!2961177 (and tp_is_empty!31625 tp_is_empty!31627 tp!1349654))))

(assert (= (and start!484886 res!2012332) b!4747364))

(assert (= (and start!484886 (is-Cons!53017 l!14304)) b!4747365))

(declare-fun m!5704635 () Bool)

(assert (=> start!484886 m!5704635))

(declare-fun m!5704637 () Bool)

(assert (=> b!4747364 m!5704637))

(push 1)

(assert (not start!484886))

(assert (not b!4747365))

(assert tp_is_empty!31625)

(assert (not b!4747364))

(assert tp_is_empty!31627)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

