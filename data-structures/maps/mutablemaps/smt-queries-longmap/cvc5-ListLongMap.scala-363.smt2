; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!6994 () Bool)

(assert start!6994)

(declare-datatypes ((array!2995 0))(
  ( (array!2996 (arr!1441 (Array (_ BitVec 32) (_ BitVec 64))) (size!1659 (_ BitVec 32))) )
))
(declare-fun a!4412 () array!2995)

(declare-fun i!1489 () (_ BitVec 32))

(declare-fun size!30 () (_ BitVec 32))

(assert (=> start!6994 (and (bvslt (size!1659 a!4412) #b01111111111111111111111111111111) (bvsge i!1489 #b00000000000000000000000000000000) (bvsle i!1489 (size!1659 a!4412)) (= (size!1659 a!4412) size!30) (= a!4412 (array!2996 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) size!30)) (not (= i!1489 size!30)) (= (select (arr!1441 a!4412) i!1489) #b0000000000000000000000000000000000000000000000000000000000000000) (or (bvslt (bvadd #b00000000000000000000000000000001 i!1489) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 i!1489) (size!1659 a!4412))))))

(declare-fun array_inv!805 (array!2995) Bool)

(assert (=> start!6994 (array_inv!805 a!4412)))

(assert (=> start!6994 true))

(declare-fun bs!2101 () Bool)

(assert (= bs!2101 start!6994))

(declare-fun m!39827 () Bool)

(assert (=> bs!2101 m!39827))

(declare-fun m!39829 () Bool)

(assert (=> bs!2101 m!39829))

(push 1)

(assert (not start!6994))

(check-sat)

(pop 1)

(push 1)

(check-sat)

