; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131550 () Bool)

(assert start!131550)

(declare-fun res!1057782 () Bool)

(declare-fun e!857125 () Bool)

(assert (=> start!131550 (=> (not res!1057782) (not e!857125))))

(declare-fun mask!4052 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131550 (= res!1057782 (validMask!0 mask!4052))))

(assert (=> start!131550 e!857125))

(assert (=> start!131550 true))

(declare-datatypes ((array!102380 0))(
  ( (array!102381 (arr!49394 (Array (_ BitVec 32) (_ BitVec 64))) (size!49945 (_ BitVec 32))) )
))
(declare-fun a!3920 () array!102380)

(declare-fun array_inv!38339 (array!102380) Bool)

(assert (=> start!131550 (array_inv!38339 a!3920)))

(declare-fun b!1541097 () Bool)

(declare-fun res!1057781 () Bool)

(assert (=> b!1541097 (=> (not res!1057781) (not e!857125))))

(declare-fun newFrom!293 () (_ BitVec 32))

(declare-fun from!3298 () (_ BitVec 32))

(assert (=> b!1541097 (= res!1057781 (and (= (size!49945 a!3920) (bvadd #b00000000000000000000000000000001 mask!4052)) (bvsge from!3298 #b00000000000000000000000000000000) (bvsle from!3298 (size!49945 a!3920)) (bvsge newFrom!293 from!3298) (bvsle newFrom!293 (size!49945 a!3920))))))

(declare-fun b!1541098 () Bool)

(assert (=> b!1541098 (= e!857125 false)))

(declare-fun lt!665542 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102380 (_ BitVec 32)) Bool)

(assert (=> b!1541098 (= lt!665542 (arrayForallSeekEntryOrOpenFound!0 from!3298 a!3920 mask!4052))))

(assert (= (and start!131550 res!1057782) b!1541097))

(assert (= (and b!1541097 res!1057781) b!1541098))

(declare-fun m!1423155 () Bool)

(assert (=> start!131550 m!1423155))

(declare-fun m!1423157 () Bool)

(assert (=> start!131550 m!1423157))

(declare-fun m!1423159 () Bool)

(assert (=> b!1541098 m!1423159))

(check-sat (not b!1541098) (not start!131550))
