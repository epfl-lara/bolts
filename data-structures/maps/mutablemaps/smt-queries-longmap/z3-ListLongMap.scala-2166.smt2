; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36340 () Bool)

(assert start!36340)

(declare-fun res!202683 () Bool)

(declare-fun e!222503 () Bool)

(assert (=> start!36340 (=> (not res!202683) (not e!222503))))

(declare-fun i!1472 () (_ BitVec 32))

(declare-datatypes ((array!20582 0))(
  ( (array!20583 (arr!9767 (Array (_ BitVec 32) (_ BitVec 64))) (size!10119 (_ BitVec 32))) )
))
(declare-fun a!4289 () array!20582)

(assert (=> start!36340 (= res!202683 (and (bvsge i!1472 #b00000000000000000000000000000000) (bvslt i!1472 (size!10119 a!4289))))))

(assert (=> start!36340 e!222503))

(assert (=> start!36340 true))

(declare-fun array_inv!7205 (array!20582) Bool)

(assert (=> start!36340 (array_inv!7205 a!4289)))

(declare-fun b!363371 () Bool)

(declare-fun res!202682 () Bool)

(assert (=> b!363371 (=> (not res!202682) (not e!222503))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!363371 (= res!202682 (not (validKeyInArray!0 (select (arr!9767 a!4289) i!1472))))))

(declare-fun b!363372 () Bool)

(declare-fun res!202684 () Bool)

(assert (=> b!363372 (=> (not res!202684) (not e!222503))))

(declare-fun k0!2974 () (_ BitVec 64))

(assert (=> b!363372 (= res!202684 (validKeyInArray!0 k0!2974))))

(declare-fun from!3650 () (_ BitVec 32))

(declare-fun b!363373 () Bool)

(assert (=> b!363373 (= e!222503 (and (bvslt (size!10119 a!4289) #b01111111111111111111111111111111) (bvsge from!3650 #b00000000000000000000000000000000) (bvsle from!3650 (size!10119 a!4289)) (bvsge i!1472 from!3650) (bvsgt from!3650 (bvadd #b00000000000000000000000000000001 i!1472))))))

(assert (= (and start!36340 res!202683) b!363371))

(assert (= (and b!363371 res!202682) b!363372))

(assert (= (and b!363372 res!202684) b!363373))

(declare-fun m!360537 () Bool)

(assert (=> start!36340 m!360537))

(declare-fun m!360539 () Bool)

(assert (=> b!363371 m!360539))

(assert (=> b!363371 m!360539))

(declare-fun m!360541 () Bool)

(assert (=> b!363371 m!360541))

(declare-fun m!360543 () Bool)

(assert (=> b!363372 m!360543))

(check-sat (not start!36340) (not b!363371) (not b!363372))
(check-sat)
