; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131536 () Bool)

(assert start!131536)

(declare-fun res!1057734 () Bool)

(declare-fun e!857084 () Bool)

(assert (=> start!131536 (=> (not res!1057734) (not e!857084))))

(declare-fun mask!4052 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131536 (= res!1057734 (validMask!0 mask!4052))))

(assert (=> start!131536 e!857084))

(assert (=> start!131536 true))

(declare-datatypes ((array!102366 0))(
  ( (array!102367 (arr!49387 (Array (_ BitVec 32) (_ BitVec 64))) (size!49938 (_ BitVec 32))) )
))
(declare-fun a!3920 () array!102366)

(declare-fun array_inv!38332 (array!102366) Bool)

(assert (=> start!131536 (array_inv!38332 a!3920)))

(declare-fun b!1541048 () Bool)

(declare-fun res!1057732 () Bool)

(assert (=> b!1541048 (=> (not res!1057732) (not e!857084))))

(declare-fun newFrom!293 () (_ BitVec 32))

(declare-fun from!3298 () (_ BitVec 32))

(assert (=> b!1541048 (= res!1057732 (and (= (size!49938 a!3920) (bvadd #b00000000000000000000000000000001 mask!4052)) (bvsge from!3298 #b00000000000000000000000000000000) (bvsle from!3298 (size!49938 a!3920)) (bvsge newFrom!293 from!3298) (bvsle newFrom!293 (size!49938 a!3920))))))

(declare-fun b!1541049 () Bool)

(declare-fun res!1057733 () Bool)

(assert (=> b!1541049 (=> (not res!1057733) (not e!857084))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102366 (_ BitVec 32)) Bool)

(assert (=> b!1541049 (= res!1057733 (arrayForallSeekEntryOrOpenFound!0 from!3298 a!3920 mask!4052))))

(declare-fun b!1541050 () Bool)

(assert (=> b!1541050 (= e!857084 (and (bvsge from!3298 newFrom!293) (bvslt newFrom!293 #b00000000000000000000000000000000)))))

(assert (= (and start!131536 res!1057734) b!1541048))

(assert (= (and b!1541048 res!1057732) b!1541049))

(assert (= (and b!1541049 res!1057733) b!1541050))

(declare-fun m!1423113 () Bool)

(assert (=> start!131536 m!1423113))

(declare-fun m!1423115 () Bool)

(assert (=> start!131536 m!1423115))

(declare-fun m!1423117 () Bool)

(assert (=> b!1541049 m!1423117))

(push 1)

(assert (not b!1541049))

(assert (not start!131536))

(check-sat)

(pop 1)

(push 1)

(check-sat)

