; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!6984 () Bool)

(assert start!6984)

(declare-datatypes ((array!2985 0))(
  ( (array!2986 (arr!1436 (Array (_ BitVec 32) (_ BitVec 64))) (size!1654 (_ BitVec 32))) )
))
(declare-fun a!4412 () array!2985)

(declare-fun i!1489 () (_ BitVec 32))

(declare-fun size!30 () (_ BitVec 32))

(assert (=> start!6984 (and (bvslt (size!1654 a!4412) #b01111111111111111111111111111111) (bvsge i!1489 #b00000000000000000000000000000000) (bvsle i!1489 (size!1654 a!4412)) (= (size!1654 a!4412) size!30) (= a!4412 (array!2986 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) size!30)) (bvslt (bvsub size!30 i!1489) #b00000000000000000000000000000000))))

(declare-fun array_inv!800 (array!2985) Bool)

(assert (=> start!6984 (array_inv!800 a!4412)))

(assert (=> start!6984 true))

(declare-fun bs!2090 () Bool)

(assert (= bs!2090 start!6984))

(declare-fun m!39817 () Bool)

(assert (=> bs!2090 m!39817))

(check-sat (not start!6984))
(check-sat)
