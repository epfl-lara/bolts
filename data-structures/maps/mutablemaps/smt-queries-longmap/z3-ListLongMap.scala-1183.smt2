; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!25452 () Bool)

(assert start!25452)

(declare-fun b!264829 () Bool)

(declare-fun res!129380 () Bool)

(declare-fun e!171543 () Bool)

(assert (=> b!264829 (=> (not res!129380) (not e!171543))))

(declare-fun k0!2698 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!264829 (= res!129380 (validKeyInArray!0 k0!2698))))

(declare-fun b!264828 () Bool)

(declare-fun res!129381 () Bool)

(assert (=> b!264828 (=> (not res!129381) (not e!171543))))

(declare-datatypes ((array!12735 0))(
  ( (array!12736 (arr!6026 (Array (_ BitVec 32) (_ BitVec 64))) (size!6378 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12735)

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!264828 (= res!129381 (and (= (size!6378 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6378 a!3436))))))

(declare-fun b!264831 () Bool)

(assert (=> b!264831 (= e!171543 false)))

(declare-datatypes ((SeekEntryResult!1228 0))(
  ( (MissingZero!1228 (index!7082 (_ BitVec 32))) (Found!1228 (index!7083 (_ BitVec 32))) (Intermediate!1228 (undefined!2040 Bool) (index!7084 (_ BitVec 32)) (x!25377 (_ BitVec 32))) (Undefined!1228) (MissingVacant!1228 (index!7085 (_ BitVec 32))) )
))
(declare-fun lt!133949 () SeekEntryResult!1228)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12735 (_ BitVec 32)) SeekEntryResult!1228)

(assert (=> b!264831 (= lt!133949 (seekEntryOrOpen!0 k0!2698 a!3436 mask!4002))))

(declare-fun res!129378 () Bool)

(assert (=> start!25452 (=> (not res!129378) (not e!171543))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25452 (= res!129378 (validMask!0 mask!4002))))

(assert (=> start!25452 e!171543))

(assert (=> start!25452 true))

(declare-fun array_inv!3980 (array!12735) Bool)

(assert (=> start!25452 (array_inv!3980 a!3436)))

(declare-fun b!264830 () Bool)

(declare-fun res!129379 () Bool)

(assert (=> b!264830 (=> (not res!129379) (not e!171543))))

(declare-fun arrayContainsKey!0 (array!12735 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!264830 (= res!129379 (not (arrayContainsKey!0 a!3436 k0!2698 #b00000000000000000000000000000000)))))

(assert (= (and start!25452 res!129378) b!264828))

(assert (= (and b!264828 res!129381) b!264829))

(assert (= (and b!264829 res!129380) b!264830))

(assert (= (and b!264830 res!129379) b!264831))

(declare-fun m!281823 () Bool)

(assert (=> b!264829 m!281823))

(declare-fun m!281825 () Bool)

(assert (=> b!264831 m!281825))

(declare-fun m!281827 () Bool)

(assert (=> start!25452 m!281827))

(declare-fun m!281829 () Bool)

(assert (=> start!25452 m!281829))

(declare-fun m!281831 () Bool)

(assert (=> b!264830 m!281831))

(check-sat (not b!264831) (not b!264830) (not start!25452) (not b!264829))
(check-sat)
