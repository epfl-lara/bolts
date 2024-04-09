; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!6990 () Bool)

(assert start!6990)

(declare-datatypes ((array!2991 0))(
  ( (array!2992 (arr!1439 (Array (_ BitVec 32) (_ BitVec 64))) (size!1657 (_ BitVec 32))) )
))
(declare-fun a!4412 () array!2991)

(declare-fun i!1489 () (_ BitVec 32))

(declare-fun size!30 () (_ BitVec 32))

(assert (=> start!6990 (and (bvslt (size!1657 a!4412) #b01111111111111111111111111111111) (bvsge i!1489 #b00000000000000000000000000000000) (bvsle i!1489 (size!1657 a!4412)) (= (size!1657 a!4412) size!30) (= a!4412 (array!2992 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) size!30)) (not (= i!1489 size!30)) (bvsge i!1489 (size!1657 a!4412)))))

(declare-fun array_inv!803 (array!2991) Bool)

(assert (=> start!6990 (array_inv!803 a!4412)))

(assert (=> start!6990 true))

(declare-fun bs!2096 () Bool)

(assert (= bs!2096 start!6990))

(declare-fun m!39823 () Bool)

(assert (=> bs!2096 m!39823))

(check-sat (not start!6990))
(check-sat)
