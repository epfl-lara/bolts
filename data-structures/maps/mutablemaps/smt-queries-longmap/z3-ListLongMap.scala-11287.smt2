; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131616 () Bool)

(assert start!131616)

(declare-fun b!1541382 () Bool)

(declare-fun res!1058042 () Bool)

(declare-fun e!857306 () Bool)

(assert (=> b!1541382 (=> (not res!1058042) (not e!857306))))

(declare-fun from!3298 () (_ BitVec 32))

(declare-fun newFrom!293 () (_ BitVec 32))

(assert (=> b!1541382 (= res!1058042 (bvsge from!3298 newFrom!293))))

(declare-fun b!1541381 () Bool)

(declare-fun res!1058041 () Bool)

(assert (=> b!1541381 (=> (not res!1058041) (not e!857306))))

(declare-datatypes ((array!102431 0))(
  ( (array!102432 (arr!49418 (Array (_ BitVec 32) (_ BitVec 64))) (size!49969 (_ BitVec 32))) )
))
(declare-fun a!3920 () array!102431)

(declare-fun mask!4052 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102431 (_ BitVec 32)) Bool)

(assert (=> b!1541381 (= res!1058041 (arrayForallSeekEntryOrOpenFound!0 from!3298 a!3920 mask!4052))))

(declare-fun b!1541380 () Bool)

(declare-fun res!1058040 () Bool)

(assert (=> b!1541380 (=> (not res!1058040) (not e!857306))))

(assert (=> b!1541380 (= res!1058040 (and (= (size!49969 a!3920) (bvadd #b00000000000000000000000000000001 mask!4052)) (bvsge from!3298 #b00000000000000000000000000000000) (bvsle from!3298 (size!49969 a!3920)) (bvsge newFrom!293 from!3298) (bvsle newFrom!293 (size!49969 a!3920))))))

(declare-fun res!1058043 () Bool)

(assert (=> start!131616 (=> (not res!1058043) (not e!857306))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131616 (= res!1058043 (validMask!0 mask!4052))))

(assert (=> start!131616 e!857306))

(assert (=> start!131616 true))

(declare-fun array_inv!38363 (array!102431) Bool)

(assert (=> start!131616 (array_inv!38363 a!3920)))

(declare-fun b!1541383 () Bool)

(assert (=> b!1541383 (= e!857306 (not (arrayForallSeekEntryOrOpenFound!0 newFrom!293 a!3920 mask!4052)))))

(assert (= (and start!131616 res!1058043) b!1541380))

(assert (= (and b!1541380 res!1058040) b!1541381))

(assert (= (and b!1541381 res!1058041) b!1541382))

(assert (= (and b!1541382 res!1058042) b!1541383))

(declare-fun m!1423403 () Bool)

(assert (=> b!1541381 m!1423403))

(declare-fun m!1423405 () Bool)

(assert (=> start!131616 m!1423405))

(declare-fun m!1423407 () Bool)

(assert (=> start!131616 m!1423407))

(declare-fun m!1423409 () Bool)

(assert (=> b!1541383 m!1423409))

(check-sat (not b!1541383) (not b!1541381) (not start!131616))
(check-sat)
