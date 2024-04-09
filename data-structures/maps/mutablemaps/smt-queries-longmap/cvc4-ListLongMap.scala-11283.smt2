; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131576 () Bool)

(assert start!131576)

(declare-fun res!1057869 () Bool)

(declare-fun e!857204 () Bool)

(assert (=> start!131576 (=> (not res!1057869) (not e!857204))))

(declare-fun mask!4052 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131576 (= res!1057869 (validMask!0 mask!4052))))

(assert (=> start!131576 e!857204))

(assert (=> start!131576 true))

(declare-datatypes ((array!102406 0))(
  ( (array!102407 (arr!49407 (Array (_ BitVec 32) (_ BitVec 64))) (size!49958 (_ BitVec 32))) )
))
(declare-fun a!3920 () array!102406)

(declare-fun array_inv!38352 (array!102406) Bool)

(assert (=> start!131576 (array_inv!38352 a!3920)))

(declare-fun b!1541184 () Bool)

(declare-fun res!1057868 () Bool)

(assert (=> b!1541184 (=> (not res!1057868) (not e!857204))))

(declare-fun newFrom!293 () (_ BitVec 32))

(declare-fun from!3298 () (_ BitVec 32))

(assert (=> b!1541184 (= res!1057868 (and (= (size!49958 a!3920) (bvadd #b00000000000000000000000000000001 mask!4052)) (bvsge from!3298 #b00000000000000000000000000000000) (bvsle from!3298 (size!49958 a!3920)) (bvsge newFrom!293 from!3298) (bvsle newFrom!293 (size!49958 a!3920))))))

(declare-fun b!1541185 () Bool)

(assert (=> b!1541185 (= e!857204 false)))

(declare-fun lt!665572 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102406 (_ BitVec 32)) Bool)

(assert (=> b!1541185 (= lt!665572 (arrayForallSeekEntryOrOpenFound!0 from!3298 a!3920 mask!4052))))

(assert (= (and start!131576 res!1057869) b!1541184))

(assert (= (and b!1541184 res!1057868) b!1541185))

(declare-fun m!1423233 () Bool)

(assert (=> start!131576 m!1423233))

(declare-fun m!1423235 () Bool)

(assert (=> start!131576 m!1423235))

(declare-fun m!1423237 () Bool)

(assert (=> b!1541185 m!1423237))

(push 1)

(assert (not start!131576))

(assert (not b!1541185))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

