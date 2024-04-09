; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!1972 () Bool)

(assert start!1972)

(declare-fun b!13257 () Bool)

(assert (=> b!13257 true))

(declare-fun b!13256 () Bool)

(declare-fun e!7954 () Bool)

(declare-datatypes ((B!476 0))(
  ( (B!477 (val!336 Int)) )
))
(declare-datatypes ((tuple2!454 0))(
  ( (tuple2!455 (_1!227 (_ BitVec 64)) (_2!227 B!476)) )
))
(declare-datatypes ((List!386 0))(
  ( (Nil!383) (Cons!382 (h!948 tuple2!454) (t!2782 List!386)) )
))
(declare-fun l!522 () List!386)

(assert (=> b!13256 (= e!7954 (= l!522 Nil!383))))

(declare-fun res!10462 () Bool)

(declare-fun e!7952 () Bool)

(assert (=> start!1972 (=> (not res!10462) (not e!7952))))

(declare-fun isStrictlySorted!77 (List!386) Bool)

(assert (=> start!1972 (= res!10462 (isStrictlySorted!77 l!522))))

(assert (=> start!1972 e!7952))

(declare-fun e!7953 () Bool)

(assert (=> start!1972 e!7953))

(declare-fun tp_is_empty!655 () Bool)

(assert (=> start!1972 tp_is_empty!655))

(declare-fun res!10460 () Bool)

(assert (=> b!13257 (=> (not res!10460) (not e!7954))))

(declare-fun lt!3501 () List!386)

(declare-fun lambda!62 () Int)

(declare-fun forall!71 (List!386 Int) Bool)

(assert (=> b!13257 (= res!10460 (forall!71 lt!3501 lambda!62))))

(declare-fun b!13258 () Bool)

(declare-fun res!10458 () Bool)

(assert (=> b!13258 (=> (not res!10458) (not e!7954))))

(declare-fun isEmpty!78 (List!386) Bool)

(assert (=> b!13258 (= res!10458 (not (isEmpty!78 lt!3501)))))

(declare-fun b!13259 () Bool)

(declare-fun res!10457 () Bool)

(assert (=> b!13259 (=> (not res!10457) (not e!7954))))

(assert (=> b!13259 (= res!10457 (not (isEmpty!78 l!522)))))

(declare-fun b!13260 () Bool)

(declare-fun res!10461 () Bool)

(assert (=> b!13260 (=> (not res!10461) (not e!7952))))

(declare-fun value!159 () B!476)

(assert (=> b!13260 (= res!10461 (and (is-Cons!382 l!522) (= (_2!227 (h!948 l!522)) value!159)))))

(declare-fun b!13261 () Bool)

(assert (=> b!13261 (= e!7952 e!7954)))

(declare-fun res!10459 () Bool)

(assert (=> b!13261 (=> (not res!10459) (not e!7954))))

(assert (=> b!13261 (= res!10459 (isStrictlySorted!77 lt!3501))))

(declare-fun $colon$colon!12 (List!386 tuple2!454) List!386)

(declare-fun filterByValue!4 (List!386 B!476) List!386)

(assert (=> b!13261 (= lt!3501 ($colon$colon!12 (filterByValue!4 (t!2782 l!522) value!159) (h!948 l!522)))))

(declare-fun b!13262 () Bool)

(declare-fun tp!2159 () Bool)

(assert (=> b!13262 (= e!7953 (and tp_is_empty!655 tp!2159))))

(assert (= (and start!1972 res!10462) b!13260))

(assert (= (and b!13260 res!10461) b!13261))

(assert (= (and b!13261 res!10459) b!13257))

(assert (= (and b!13257 res!10460) b!13259))

(assert (= (and b!13259 res!10457) b!13258))

(assert (= (and b!13258 res!10458) b!13256))

(assert (= (and start!1972 (is-Cons!382 l!522)) b!13262))

(declare-fun m!9031 () Bool)

(assert (=> b!13257 m!9031))

(declare-fun m!9033 () Bool)

(assert (=> b!13261 m!9033))

(declare-fun m!9035 () Bool)

(assert (=> b!13261 m!9035))

(assert (=> b!13261 m!9035))

(declare-fun m!9037 () Bool)

(assert (=> b!13261 m!9037))

(declare-fun m!9039 () Bool)

(assert (=> start!1972 m!9039))

(declare-fun m!9041 () Bool)

(assert (=> b!13258 m!9041))

(declare-fun m!9043 () Bool)

(assert (=> b!13259 m!9043))

(push 1)

(assert (not b!13257))

(assert (not b!13262))

(assert (not b!13258))

