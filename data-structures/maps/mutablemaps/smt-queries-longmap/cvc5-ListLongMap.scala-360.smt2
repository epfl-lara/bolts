; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!6976 () Bool)

(assert start!6976)

(declare-datatypes ((array!2977 0))(
  ( (array!2978 (arr!1432 (Array (_ BitVec 32) (_ BitVec 64))) (size!1650 (_ BitVec 32))) )
))
(declare-fun a!4412 () array!2977)

(declare-fun i!1489 () (_ BitVec 32))

(declare-fun size!30 () (_ BitVec 32))

(assert (=> start!6976 (and (bvslt (size!1650 a!4412) #b01111111111111111111111111111111) (bvsge i!1489 #b00000000000000000000000000000000) (bvsle i!1489 (size!1650 a!4412)) (= (size!1650 a!4412) size!30) (bvslt size!30 #b00000000000000000000000000000000))))

(declare-fun array_inv!796 (array!2977) Bool)

(assert (=> start!6976 (array_inv!796 a!4412)))

(assert (=> start!6976 true))

(declare-fun bs!2083 () Bool)

(assert (= bs!2083 start!6976))

(declare-fun m!39809 () Bool)

(assert (=> bs!2083 m!39809))

(push 1)

(assert (not start!6976))

(check-sat)

(pop 1)

(push 1)

(check-sat)

