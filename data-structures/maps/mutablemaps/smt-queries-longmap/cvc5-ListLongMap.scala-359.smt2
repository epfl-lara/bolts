; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!6970 () Bool)

(assert start!6970)

(declare-datatypes ((array!2971 0))(
  ( (array!2972 (arr!1429 (Array (_ BitVec 32) (_ BitVec 64))) (size!1647 (_ BitVec 32))) )
))
(declare-fun a!4412 () array!2971)

(declare-fun i!1489 () (_ BitVec 32))

(declare-fun size!30 () (_ BitVec 32))

(assert (=> start!6970 (and (bvslt (size!1647 a!4412) #b01111111111111111111111111111111) (bvsge i!1489 #b00000000000000000000000000000000) (bvsle i!1489 (size!1647 a!4412)) (= (size!1647 a!4412) size!30) (= a!4412 (array!2972 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) size!30)) (not (= i!1489 size!30)) (not (= (select (arr!1429 a!4412) i!1489) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun array_inv!793 (array!2971) Bool)

(assert (=> start!6970 (array_inv!793 a!4412)))

(assert (=> start!6970 true))

(declare-fun bs!2077 () Bool)

(assert (= bs!2077 start!6970))

(declare-fun m!39797 () Bool)

(assert (=> bs!2077 m!39797))

(declare-fun m!39799 () Bool)

(assert (=> bs!2077 m!39799))

(push 1)

(assert (not start!6970))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

