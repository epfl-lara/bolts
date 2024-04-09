; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131574 () Bool)

(assert start!131574)

(declare-fun res!1057862 () Bool)

(declare-fun e!857198 () Bool)

(assert (=> start!131574 (=> (not res!1057862) (not e!857198))))

(declare-fun mask!4052 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131574 (= res!1057862 (validMask!0 mask!4052))))

(assert (=> start!131574 e!857198))

(assert (=> start!131574 true))

(declare-datatypes ((array!102404 0))(
  ( (array!102405 (arr!49406 (Array (_ BitVec 32) (_ BitVec 64))) (size!49957 (_ BitVec 32))) )
))
(declare-fun a!3920 () array!102404)

(declare-fun array_inv!38351 (array!102404) Bool)

(assert (=> start!131574 (array_inv!38351 a!3920)))

(declare-fun b!1541178 () Bool)

(declare-fun res!1057863 () Bool)

(assert (=> b!1541178 (=> (not res!1057863) (not e!857198))))

(declare-fun newFrom!293 () (_ BitVec 32))

(declare-fun from!3298 () (_ BitVec 32))

(assert (=> b!1541178 (= res!1057863 (and (= (size!49957 a!3920) (bvadd #b00000000000000000000000000000001 mask!4052)) (bvsge from!3298 #b00000000000000000000000000000000) (bvsle from!3298 (size!49957 a!3920)) (bvsge newFrom!293 from!3298) (bvsle newFrom!293 (size!49957 a!3920))))))

(declare-fun b!1541179 () Bool)

(assert (=> b!1541179 (= e!857198 false)))

(declare-fun lt!665569 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102404 (_ BitVec 32)) Bool)

(assert (=> b!1541179 (= lt!665569 (arrayForallSeekEntryOrOpenFound!0 from!3298 a!3920 mask!4052))))

(assert (= (and start!131574 res!1057862) b!1541178))

(assert (= (and b!1541178 res!1057863) b!1541179))

(declare-fun m!1423227 () Bool)

(assert (=> start!131574 m!1423227))

(declare-fun m!1423229 () Bool)

(assert (=> start!131574 m!1423229))

(declare-fun m!1423231 () Bool)

(assert (=> b!1541179 m!1423231))

(check-sat (not start!131574) (not b!1541179))
