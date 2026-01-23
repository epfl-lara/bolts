; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!521878 () Bool)

(assert start!521878)

(declare-fun res!2112817 () Bool)

(declare-fun e!3094203 () Bool)

(assert (=> start!521878 (=> (not res!2112817) (not e!3094203))))

(declare-fun i!792 () Int)

(assert (=> start!521878 (= res!2112817 (>= i!792 0))))

(assert (=> start!521878 e!3094203))

(assert (=> start!521878 true))

(declare-fun e!3094204 () Bool)

(assert (=> start!521878 e!3094204))

(declare-fun b!4952380 () Bool)

(declare-fun res!2112818 () Bool)

(assert (=> b!4952380 (=> (not res!2112818) (not e!3094203))))

(declare-datatypes ((B!3011 0))(
  ( (B!3012 (val!22975 Int)) )
))
(declare-datatypes ((List!57163 0))(
  ( (Nil!57039) (Cons!57039 (h!63487 B!3011) (t!367729 List!57163)) )
))
(declare-fun l!2976 () List!57163)

(declare-fun size!37867 (List!57163) Int)

(assert (=> b!4952380 (= res!2112818 (< i!792 (size!37867 l!2976)))))

(declare-fun b!4952381 () Bool)

(assert (=> b!4952381 (= e!3094203 (and (not (is-Nil!57039 l!2976)) (= i!792 0) (> 0 i!792)))))

(declare-fun b!4952382 () Bool)

(declare-fun tp_is_empty!36229 () Bool)

(declare-fun tp!1388412 () Bool)

(assert (=> b!4952382 (= e!3094204 (and tp_is_empty!36229 tp!1388412))))

(assert (= (and start!521878 res!2112817) b!4952380))

(assert (= (and b!4952380 res!2112818) b!4952381))

(assert (= (and start!521878 (is-Cons!57039 l!2976)) b!4952382))

(declare-fun m!5977412 () Bool)

(assert (=> b!4952380 m!5977412))

(push 1)

(assert (not b!4952380))

(assert (not b!4952382))

(assert tp_is_empty!36229)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

