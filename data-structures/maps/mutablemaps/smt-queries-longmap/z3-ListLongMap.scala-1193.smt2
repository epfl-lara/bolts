; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!25638 () Bool)

(assert start!25638)

(declare-fun b!265744 () Bool)

(declare-fun res!130082 () Bool)

(declare-fun e!172078 () Bool)

(assert (=> b!265744 (=> (not res!130082) (not e!172078))))

(declare-datatypes ((array!12804 0))(
  ( (array!12805 (arr!6056 (Array (_ BitVec 32) (_ BitVec 64))) (size!6408 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12804)

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!265744 (= res!130082 (and (= (size!6408 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6408 a!3436))))))

(declare-fun res!130078 () Bool)

(assert (=> start!25638 (=> (not res!130078) (not e!172078))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25638 (= res!130078 (validMask!0 mask!4002))))

(assert (=> start!25638 e!172078))

(assert (=> start!25638 true))

(declare-fun array_inv!4010 (array!12804) Bool)

(assert (=> start!25638 (array_inv!4010 a!3436)))

(declare-fun b!265745 () Bool)

(declare-fun e!172077 () Bool)

(assert (=> b!265745 (= e!172078 e!172077)))

(declare-fun res!130081 () Bool)

(assert (=> b!265745 (=> (not res!130081) (not e!172077))))

(declare-datatypes ((SeekEntryResult!1258 0))(
  ( (MissingZero!1258 (index!7202 (_ BitVec 32))) (Found!1258 (index!7203 (_ BitVec 32))) (Intermediate!1258 (undefined!2070 Bool) (index!7204 (_ BitVec 32)) (x!25487 (_ BitVec 32))) (Undefined!1258) (MissingVacant!1258 (index!7205 (_ BitVec 32))) )
))
(declare-fun lt!134245 () SeekEntryResult!1258)

(assert (=> b!265745 (= res!130081 (or (= lt!134245 (MissingZero!1258 i!1355)) (= lt!134245 (MissingVacant!1258 i!1355))))))

(declare-fun k0!2698 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12804 (_ BitVec 32)) SeekEntryResult!1258)

(assert (=> b!265745 (= lt!134245 (seekEntryOrOpen!0 k0!2698 a!3436 mask!4002))))

(declare-fun b!265746 () Bool)

(declare-fun res!130083 () Bool)

(assert (=> b!265746 (=> (not res!130083) (not e!172077))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12804 (_ BitVec 32)) Bool)

(assert (=> b!265746 (= res!130083 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002))))

(declare-fun b!265747 () Bool)

(assert (=> b!265747 (= e!172077 false)))

(declare-fun lt!134246 () Bool)

(declare-datatypes ((List!3891 0))(
  ( (Nil!3888) (Cons!3887 (h!4554 (_ BitVec 64)) (t!8981 List!3891)) )
))
(declare-fun arrayNoDuplicates!0 (array!12804 (_ BitVec 32) List!3891) Bool)

(assert (=> b!265747 (= lt!134246 (arrayNoDuplicates!0 a!3436 #b00000000000000000000000000000000 Nil!3888))))

(declare-fun b!265748 () Bool)

(declare-fun res!130080 () Bool)

(assert (=> b!265748 (=> (not res!130080) (not e!172078))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!265748 (= res!130080 (validKeyInArray!0 k0!2698))))

(declare-fun b!265749 () Bool)

(declare-fun res!130079 () Bool)

(assert (=> b!265749 (=> (not res!130079) (not e!172078))))

(declare-fun arrayContainsKey!0 (array!12804 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!265749 (= res!130079 (not (arrayContainsKey!0 a!3436 k0!2698 #b00000000000000000000000000000000)))))

(assert (= (and start!25638 res!130078) b!265744))

(assert (= (and b!265744 res!130082) b!265748))

(assert (= (and b!265748 res!130080) b!265749))

(assert (= (and b!265749 res!130079) b!265745))

(assert (= (and b!265745 res!130081) b!265746))

(assert (= (and b!265746 res!130083) b!265747))

(declare-fun m!282517 () Bool)

(assert (=> b!265745 m!282517))

(declare-fun m!282519 () Bool)

(assert (=> start!25638 m!282519))

(declare-fun m!282521 () Bool)

(assert (=> start!25638 m!282521))

(declare-fun m!282523 () Bool)

(assert (=> b!265748 m!282523))

(declare-fun m!282525 () Bool)

(assert (=> b!265749 m!282525))

(declare-fun m!282527 () Bool)

(assert (=> b!265747 m!282527))

(declare-fun m!282529 () Bool)

(assert (=> b!265746 m!282529))

(check-sat (not b!265747) (not b!265745) (not b!265748) (not start!25638) (not b!265746) (not b!265749))
(check-sat)
