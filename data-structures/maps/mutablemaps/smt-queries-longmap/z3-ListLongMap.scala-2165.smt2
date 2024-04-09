; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36334 () Bool)

(assert start!36334)

(declare-fun res!202656 () Bool)

(declare-fun e!222485 () Bool)

(assert (=> start!36334 (=> (not res!202656) (not e!222485))))

(declare-fun i!1472 () (_ BitVec 32))

(declare-datatypes ((array!20576 0))(
  ( (array!20577 (arr!9764 (Array (_ BitVec 32) (_ BitVec 64))) (size!10116 (_ BitVec 32))) )
))
(declare-fun a!4289 () array!20576)

(assert (=> start!36334 (= res!202656 (and (bvsge i!1472 #b00000000000000000000000000000000) (bvslt i!1472 (size!10116 a!4289))))))

(assert (=> start!36334 e!222485))

(assert (=> start!36334 true))

(declare-fun array_inv!7202 (array!20576) Bool)

(assert (=> start!36334 (array_inv!7202 a!4289)))

(declare-fun b!363344 () Bool)

(declare-fun res!202655 () Bool)

(assert (=> b!363344 (=> (not res!202655) (not e!222485))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!363344 (= res!202655 (not (validKeyInArray!0 (select (arr!9764 a!4289) i!1472))))))

(declare-fun b!363345 () Bool)

(declare-fun res!202657 () Bool)

(assert (=> b!363345 (=> (not res!202657) (not e!222485))))

(declare-fun k0!2974 () (_ BitVec 64))

(assert (=> b!363345 (= res!202657 (validKeyInArray!0 k0!2974))))

(declare-fun from!3650 () (_ BitVec 32))

(declare-fun b!363346 () Bool)

(assert (=> b!363346 (= e!222485 (and (bvslt (size!10116 a!4289) #b01111111111111111111111111111111) (bvsge from!3650 #b00000000000000000000000000000000) (bvsle from!3650 (size!10116 a!4289)) (bvsge i!1472 from!3650) (bvsgt from!3650 (bvadd #b00000000000000000000000000000001 i!1472))))))

(assert (= (and start!36334 res!202656) b!363344))

(assert (= (and b!363344 res!202655) b!363345))

(assert (= (and b!363345 res!202657) b!363346))

(declare-fun m!360513 () Bool)

(assert (=> start!36334 m!360513))

(declare-fun m!360515 () Bool)

(assert (=> b!363344 m!360515))

(assert (=> b!363344 m!360515))

(declare-fun m!360517 () Bool)

(assert (=> b!363344 m!360517))

(declare-fun m!360519 () Bool)

(assert (=> b!363345 m!360519))

(check-sat (not start!36334) (not b!363345) (not b!363344))
(check-sat)
