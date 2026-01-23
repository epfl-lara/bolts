; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!534248 () Bool)

(assert start!534248)

(declare-fun b!5050730 () Bool)

(declare-fun res!2150918 () Bool)

(declare-fun e!3153391 () Bool)

(assert (=> b!5050730 (=> (not res!2150918) (not e!3153391))))

(declare-datatypes ((T!104766 0))(
  ( (T!104767 (val!23597 Int)) )
))
(declare-datatypes ((List!58507 0))(
  ( (Nil!58383) (Cons!58383 (h!64831 T!104766) (t!371146 List!58507)) )
))
(declare-fun r!2041 () List!58507)

(declare-fun i!652 () Int)

(declare-fun l!2757 () List!58507)

(declare-fun size!39006 (List!58507) Int)

(assert (=> b!5050730 (= res!2150918 (<= i!652 (+ (size!39006 l!2757) (size!39006 r!2041))))))

(declare-fun b!5050732 () Bool)

(declare-fun e!3153392 () Bool)

(declare-fun tp_is_empty!36949 () Bool)

(declare-fun tp!1412207 () Bool)

(assert (=> b!5050732 (= e!3153392 (and tp_is_empty!36949 tp!1412207))))

(declare-fun b!5050733 () Bool)

(declare-fun e!3153393 () Bool)

(declare-fun tp!1412206 () Bool)

(assert (=> b!5050733 (= e!3153393 (and tp_is_empty!36949 tp!1412206))))

(declare-fun res!2150919 () Bool)

(assert (=> start!534248 (=> (not res!2150919) (not e!3153391))))

(assert (=> start!534248 (= res!2150919 (<= 0 i!652))))

(assert (=> start!534248 e!3153391))

(assert (=> start!534248 true))

(assert (=> start!534248 e!3153392))

(assert (=> start!534248 e!3153393))

(declare-fun b!5050731 () Bool)

(assert (=> b!5050731 (= e!3153391 false)))

(assert (= (and start!534248 res!2150919) b!5050730))

(assert (= (and b!5050730 res!2150918) b!5050731))

(assert (= (and start!534248 (is-Cons!58383 l!2757)) b!5050732))

(assert (= (and start!534248 (is-Cons!58383 r!2041)) b!5050733))

(declare-fun m!6084926 () Bool)

(assert (=> b!5050730 m!6084926))

(declare-fun m!6084928 () Bool)

(assert (=> b!5050730 m!6084928))

(push 1)

(assert (not b!5050730))

(assert (not b!5050732))

(assert (not b!5050733))

(assert tp_is_empty!36949)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

