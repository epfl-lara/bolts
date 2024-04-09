; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!25440 () Bool)

(assert start!25440)

(declare-fun b!264756 () Bool)

(declare-fun res!129306 () Bool)

(declare-fun e!171508 () Bool)

(assert (=> b!264756 (=> (not res!129306) (not e!171508))))

(declare-datatypes ((array!12723 0))(
  ( (array!12724 (arr!6020 (Array (_ BitVec 32) (_ BitVec 64))) (size!6372 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12723)

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!264756 (= res!129306 (and (= (size!6372 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6372 a!3436))))))

(declare-fun res!129307 () Bool)

(assert (=> start!25440 (=> (not res!129307) (not e!171508))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25440 (= res!129307 (validMask!0 mask!4002))))

(assert (=> start!25440 e!171508))

(assert (=> start!25440 true))

(declare-fun array_inv!3974 (array!12723) Bool)

(assert (=> start!25440 (array_inv!3974 a!3436)))

(declare-fun b!264759 () Bool)

(assert (=> b!264759 (= e!171508 false)))

(declare-fun k0!2698 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!1222 0))(
  ( (MissingZero!1222 (index!7058 (_ BitVec 32))) (Found!1222 (index!7059 (_ BitVec 32))) (Intermediate!1222 (undefined!2034 Bool) (index!7060 (_ BitVec 32)) (x!25355 (_ BitVec 32))) (Undefined!1222) (MissingVacant!1222 (index!7061 (_ BitVec 32))) )
))
(declare-fun lt!133931 () SeekEntryResult!1222)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12723 (_ BitVec 32)) SeekEntryResult!1222)

(assert (=> b!264759 (= lt!133931 (seekEntryOrOpen!0 k0!2698 a!3436 mask!4002))))

(declare-fun b!264758 () Bool)

(declare-fun res!129309 () Bool)

(assert (=> b!264758 (=> (not res!129309) (not e!171508))))

(declare-fun arrayContainsKey!0 (array!12723 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!264758 (= res!129309 (not (arrayContainsKey!0 a!3436 k0!2698 #b00000000000000000000000000000000)))))

(declare-fun b!264757 () Bool)

(declare-fun res!129308 () Bool)

(assert (=> b!264757 (=> (not res!129308) (not e!171508))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!264757 (= res!129308 (validKeyInArray!0 k0!2698))))

(assert (= (and start!25440 res!129307) b!264756))

(assert (= (and b!264756 res!129306) b!264757))

(assert (= (and b!264757 res!129308) b!264758))

(assert (= (and b!264758 res!129309) b!264759))

(declare-fun m!281763 () Bool)

(assert (=> start!25440 m!281763))

(declare-fun m!281765 () Bool)

(assert (=> start!25440 m!281765))

(declare-fun m!281767 () Bool)

(assert (=> b!264759 m!281767))

(declare-fun m!281769 () Bool)

(assert (=> b!264758 m!281769))

(declare-fun m!281771 () Bool)

(assert (=> b!264757 m!281771))

(check-sat (not b!264759) (not b!264758) (not start!25440) (not b!264757))
