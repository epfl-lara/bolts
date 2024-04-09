; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!6996 () Bool)

(assert start!6996)

(declare-datatypes ((array!2997 0))(
  ( (array!2998 (arr!1442 (Array (_ BitVec 32) (_ BitVec 64))) (size!1660 (_ BitVec 32))) )
))
(declare-fun a!4412 () array!2997)

(declare-fun i!1489 () (_ BitVec 32))

(declare-fun size!30 () (_ BitVec 32))

(assert (=> start!6996 (and (bvslt (size!1660 a!4412) #b01111111111111111111111111111111) (bvsge i!1489 #b00000000000000000000000000000000) (bvsle i!1489 (size!1660 a!4412)) (= (size!1660 a!4412) size!30) (= a!4412 (array!2998 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) size!30)) (not (= i!1489 size!30)) (= (select (arr!1442 a!4412) i!1489) #b0000000000000000000000000000000000000000000000000000000000000000) (or (bvslt (bvadd #b00000000000000000000000000000001 i!1489) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 i!1489) (size!1660 a!4412))))))

(declare-fun array_inv!806 (array!2997) Bool)

(assert (=> start!6996 (array_inv!806 a!4412)))

(assert (=> start!6996 true))

(declare-fun bs!2102 () Bool)

(assert (= bs!2102 start!6996))

(declare-fun m!39831 () Bool)

(assert (=> bs!2102 m!39831))

(declare-fun m!39833 () Bool)

(assert (=> bs!2102 m!39833))

(check-sat (not start!6996))
(check-sat)
