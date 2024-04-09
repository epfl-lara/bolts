; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93548 () Bool)

(assert start!93548)

(declare-fun res!707430 () Bool)

(declare-fun e!602459 () Bool)

(assert (=> start!93548 (=> (not res!707430) (not e!602459))))

(declare-fun from!2850 () (_ BitVec 32))

(declare-datatypes ((array!66785 0))(
  ( (array!66786 (arr!32105 (Array (_ BitVec 32) (_ BitVec 64))) (size!32642 (_ BitVec 32))) )
))
(declare-fun a!3475 () array!66785)

(assert (=> start!93548 (= res!707430 (and (bvsge from!2850 #b00000000000000000000000000000000) (bvslt from!2850 (size!32642 a!3475)) (bvslt (size!32642 a!3475) #b01111111111111111111111111111111)))))

(assert (=> start!93548 e!602459))

(assert (=> start!93548 true))

(declare-fun array_inv!24727 (array!66785) Bool)

(assert (=> start!93548 (array_inv!24727 a!3475)))

(declare-fun b!1058747 () Bool)

(declare-fun res!707431 () Bool)

(assert (=> b!1058747 (=> (not res!707431) (not e!602459))))

(declare-fun k0!2741 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66785 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1058747 (= res!707431 (arrayContainsKey!0 a!3475 k0!2741 from!2850))))

(declare-fun b!1058748 () Bool)

(assert (=> b!1058748 (= e!602459 (bvslt (bvsub (size!32642 a!3475) from!2850) #b00000000000000000000000000000000))))

(assert (= (and start!93548 res!707430) b!1058747))

(assert (= (and b!1058747 res!707431) b!1058748))

(declare-fun m!978525 () Bool)

(assert (=> start!93548 m!978525))

(declare-fun m!978527 () Bool)

(assert (=> b!1058747 m!978527))

(check-sat (not b!1058747) (not start!93548))
(check-sat)
