; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!521874 () Bool)

(assert start!521874)

(declare-fun res!2112806 () Bool)

(declare-fun e!3094192 () Bool)

(assert (=> start!521874 (=> (not res!2112806) (not e!3094192))))

(declare-fun i!792 () Int)

(assert (=> start!521874 (= res!2112806 (>= i!792 0))))

(assert (=> start!521874 e!3094192))

(assert (=> start!521874 true))

(declare-fun e!3094191 () Bool)

(assert (=> start!521874 e!3094191))

(declare-fun b!4952362 () Bool)

(declare-fun res!2112805 () Bool)

(assert (=> b!4952362 (=> (not res!2112805) (not e!3094192))))

(declare-datatypes ((B!3007 0))(
  ( (B!3008 (val!22973 Int)) )
))
(declare-datatypes ((List!57161 0))(
  ( (Nil!57037) (Cons!57037 (h!63485 B!3007) (t!367727 List!57161)) )
))
(declare-fun l!2976 () List!57161)

(declare-fun size!37865 (List!57161) Int)

(assert (=> b!4952362 (= res!2112805 (< i!792 (size!37865 l!2976)))))

(declare-fun b!4952363 () Bool)

(assert (=> b!4952363 (= e!3094192 (and (is-Nil!57037 l!2976) (> 0 i!792)))))

(declare-fun b!4952364 () Bool)

(declare-fun tp_is_empty!36225 () Bool)

(declare-fun tp!1388406 () Bool)

(assert (=> b!4952364 (= e!3094191 (and tp_is_empty!36225 tp!1388406))))

(assert (= (and start!521874 res!2112806) b!4952362))

(assert (= (and b!4952362 res!2112805) b!4952363))

(assert (= (and start!521874 (is-Cons!57037 l!2976)) b!4952364))

(declare-fun m!5977408 () Bool)

(assert (=> b!4952362 m!5977408))

(push 1)

(assert (not b!4952362))

(assert (not b!4952364))

(assert tp_is_empty!36225)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

