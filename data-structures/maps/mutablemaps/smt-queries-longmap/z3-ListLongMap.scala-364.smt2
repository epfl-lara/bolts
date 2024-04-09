; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!7002 () Bool)

(assert start!7002)

(declare-datatypes ((array!3003 0))(
  ( (array!3004 (arr!1445 (Array (_ BitVec 32) (_ BitVec 64))) (size!1663 (_ BitVec 32))) )
))
(declare-fun a!4412 () array!3003)

(declare-fun i!1489 () (_ BitVec 32))

(declare-fun size!30 () (_ BitVec 32))

(assert (=> start!7002 (and (bvslt (size!1663 a!4412) #b01111111111111111111111111111111) (bvsge i!1489 #b00000000000000000000000000000000) (bvsle i!1489 (size!1663 a!4412)) (= (size!1663 a!4412) size!30) (= a!4412 (array!3004 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) size!30)) (not (= i!1489 size!30)) (= (select (arr!1445 a!4412) i!1489) #b0000000000000000000000000000000000000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 i!1489) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1489) (size!1663 a!4412)) (bvsge (bvsub size!30 (bvadd #b00000000000000000000000000000001 i!1489)) (bvsub size!30 i!1489)))))

(declare-fun array_inv!809 (array!3003) Bool)

(assert (=> start!7002 (array_inv!809 a!4412)))

(assert (=> start!7002 true))

(declare-fun bs!2108 () Bool)

(assert (= bs!2108 start!7002))

(declare-fun m!39843 () Bool)

(assert (=> bs!2108 m!39843))

(declare-fun m!39845 () Bool)

(assert (=> bs!2108 m!39845))

(check-sat (not start!7002))
(check-sat)
