; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!6972 () Bool)

(assert start!6972)

(declare-datatypes ((array!2973 0))(
  ( (array!2974 (arr!1430 (Array (_ BitVec 32) (_ BitVec 64))) (size!1648 (_ BitVec 32))) )
))
(declare-fun a!4412 () array!2973)

(declare-fun i!1489 () (_ BitVec 32))

(declare-fun size!30 () (_ BitVec 32))

(assert (=> start!6972 (and (bvslt (size!1648 a!4412) #b01111111111111111111111111111111) (bvsge i!1489 #b00000000000000000000000000000000) (bvsle i!1489 (size!1648 a!4412)) (= (size!1648 a!4412) size!30) (= a!4412 (array!2974 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) size!30)) (not (= i!1489 size!30)) (not (= (select (arr!1430 a!4412) i!1489) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun array_inv!794 (array!2973) Bool)

(assert (=> start!6972 (array_inv!794 a!4412)))

(assert (=> start!6972 true))

(declare-fun bs!2078 () Bool)

(assert (= bs!2078 start!6972))

(declare-fun m!39801 () Bool)

(assert (=> bs!2078 m!39801))

(declare-fun m!39803 () Bool)

(assert (=> bs!2078 m!39803))

(check-sat (not start!6972))
(check-sat)
