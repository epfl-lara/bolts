; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131544 () Bool)

(assert start!131544)

(declare-fun res!1057763 () Bool)

(declare-fun e!857108 () Bool)

(assert (=> start!131544 (=> (not res!1057763) (not e!857108))))

(declare-fun mask!4052 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131544 (= res!1057763 (validMask!0 mask!4052))))

(assert (=> start!131544 e!857108))

(assert (=> start!131544 true))

(declare-datatypes ((array!102374 0))(
  ( (array!102375 (arr!49391 (Array (_ BitVec 32) (_ BitVec 64))) (size!49942 (_ BitVec 32))) )
))
(declare-fun a!3920 () array!102374)

(declare-fun array_inv!38336 (array!102374) Bool)

(assert (=> start!131544 (array_inv!38336 a!3920)))

(declare-fun b!1541079 () Bool)

(declare-fun res!1057764 () Bool)

(assert (=> b!1541079 (=> (not res!1057764) (not e!857108))))

(declare-fun newFrom!293 () (_ BitVec 32))

(declare-fun from!3298 () (_ BitVec 32))

(assert (=> b!1541079 (= res!1057764 (and (= (size!49942 a!3920) (bvadd #b00000000000000000000000000000001 mask!4052)) (bvsge from!3298 #b00000000000000000000000000000000) (bvsle from!3298 (size!49942 a!3920)) (bvsge newFrom!293 from!3298) (bvsle newFrom!293 (size!49942 a!3920))))))

(declare-fun b!1541080 () Bool)

(assert (=> b!1541080 (= e!857108 false)))

(declare-fun lt!665533 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102374 (_ BitVec 32)) Bool)

(assert (=> b!1541080 (= lt!665533 (arrayForallSeekEntryOrOpenFound!0 from!3298 a!3920 mask!4052))))

(assert (= (and start!131544 res!1057763) b!1541079))

(assert (= (and b!1541079 res!1057764) b!1541080))

(declare-fun m!1423137 () Bool)

(assert (=> start!131544 m!1423137))

(declare-fun m!1423139 () Bool)

(assert (=> start!131544 m!1423139))

(declare-fun m!1423141 () Bool)

(assert (=> b!1541080 m!1423141))

(check-sat (not start!131544) (not b!1541080))
