; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!6978 () Bool)

(assert start!6978)

(declare-datatypes ((array!2979 0))(
  ( (array!2980 (arr!1433 (Array (_ BitVec 32) (_ BitVec 64))) (size!1651 (_ BitVec 32))) )
))
(declare-fun a!4412 () array!2979)

(declare-fun i!1489 () (_ BitVec 32))

(declare-fun size!30 () (_ BitVec 32))

(assert (=> start!6978 (and (bvslt (size!1651 a!4412) #b01111111111111111111111111111111) (bvsge i!1489 #b00000000000000000000000000000000) (bvsle i!1489 (size!1651 a!4412)) (= (size!1651 a!4412) size!30) (bvslt size!30 #b00000000000000000000000000000000))))

(declare-fun array_inv!797 (array!2979) Bool)

(assert (=> start!6978 (array_inv!797 a!4412)))

(assert (=> start!6978 true))

(declare-fun bs!2084 () Bool)

(assert (= bs!2084 start!6978))

(declare-fun m!39811 () Bool)

(assert (=> bs!2084 m!39811))

(check-sat (not start!6978))
(check-sat)
