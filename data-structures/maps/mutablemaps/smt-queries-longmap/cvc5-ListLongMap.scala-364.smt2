; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7000 () Bool)

(assert start!7000)

(declare-datatypes ((array!3001 0))(
  ( (array!3002 (arr!1444 (Array (_ BitVec 32) (_ BitVec 64))) (size!1662 (_ BitVec 32))) )
))
(declare-fun a!4412 () array!3001)

(declare-fun i!1489 () (_ BitVec 32))

(declare-fun size!30 () (_ BitVec 32))

(assert (=> start!7000 (and (bvslt (size!1662 a!4412) #b01111111111111111111111111111111) (bvsge i!1489 #b00000000000000000000000000000000) (bvsle i!1489 (size!1662 a!4412)) (= (size!1662 a!4412) size!30) (= a!4412 (array!3002 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) size!30)) (not (= i!1489 size!30)) (= (select (arr!1444 a!4412) i!1489) #b0000000000000000000000000000000000000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 i!1489) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1489) (size!1662 a!4412)) (bvsge (bvsub size!30 (bvadd #b00000000000000000000000000000001 i!1489)) (bvsub size!30 i!1489)))))

(declare-fun array_inv!808 (array!3001) Bool)

(assert (=> start!7000 (array_inv!808 a!4412)))

(assert (=> start!7000 true))

(declare-fun bs!2107 () Bool)

(assert (= bs!2107 start!7000))

(declare-fun m!39839 () Bool)

(assert (=> bs!2107 m!39839))

(declare-fun m!39841 () Bool)

(assert (=> bs!2107 m!39841))

(push 1)

(assert (not start!7000))

(check-sat)

(pop 1)

(push 1)

(check-sat)

