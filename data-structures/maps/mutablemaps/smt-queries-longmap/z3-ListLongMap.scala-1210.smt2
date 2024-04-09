; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!25740 () Bool)

(assert start!25740)

(declare-fun b!266734 () Bool)

(declare-fun e!172535 () Bool)

(declare-fun e!172536 () Bool)

(assert (=> b!266734 (= e!172535 e!172536)))

(declare-fun res!131072 () Bool)

(assert (=> b!266734 (=> (not res!131072) (not e!172536))))

(declare-datatypes ((SeekEntryResult!1309 0))(
  ( (MissingZero!1309 (index!7406 (_ BitVec 32))) (Found!1309 (index!7407 (_ BitVec 32))) (Intermediate!1309 (undefined!2121 Bool) (index!7408 (_ BitVec 32)) (x!25674 (_ BitVec 32))) (Undefined!1309) (MissingVacant!1309 (index!7409 (_ BitVec 32))) )
))
(declare-fun lt!134552 () SeekEntryResult!1309)

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!266734 (= res!131072 (or (= lt!134552 (MissingZero!1309 i!1355)) (= lt!134552 (MissingVacant!1309 i!1355))))))

(declare-fun k0!2698 () (_ BitVec 64))

(declare-datatypes ((array!12906 0))(
  ( (array!12907 (arr!6107 (Array (_ BitVec 32) (_ BitVec 64))) (size!6459 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12906)

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12906 (_ BitVec 32)) SeekEntryResult!1309)

(assert (=> b!266734 (= lt!134552 (seekEntryOrOpen!0 k0!2698 a!3436 mask!4002))))

(declare-fun b!266735 () Bool)

(assert (=> b!266735 (= e!172536 false)))

(declare-fun lt!134551 () Bool)

(declare-datatypes ((List!3942 0))(
  ( (Nil!3939) (Cons!3938 (h!4605 (_ BitVec 64)) (t!9032 List!3942)) )
))
(declare-fun arrayNoDuplicates!0 (array!12906 (_ BitVec 32) List!3942) Bool)

(assert (=> b!266735 (= lt!134551 (arrayNoDuplicates!0 a!3436 #b00000000000000000000000000000000 Nil!3939))))

(declare-fun b!266736 () Bool)

(declare-fun res!131071 () Bool)

(assert (=> b!266736 (=> (not res!131071) (not e!172535))))

(declare-fun arrayContainsKey!0 (array!12906 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!266736 (= res!131071 (not (arrayContainsKey!0 a!3436 k0!2698 #b00000000000000000000000000000000)))))

(declare-fun b!266737 () Bool)

(declare-fun res!131073 () Bool)

(assert (=> b!266737 (=> (not res!131073) (not e!172535))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!266737 (= res!131073 (validKeyInArray!0 k0!2698))))

(declare-fun b!266738 () Bool)

(declare-fun res!131070 () Bool)

(assert (=> b!266738 (=> (not res!131070) (not e!172535))))

(assert (=> b!266738 (= res!131070 (and (= (size!6459 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6459 a!3436))))))

(declare-fun b!266739 () Bool)

(declare-fun res!131069 () Bool)

(assert (=> b!266739 (=> (not res!131069) (not e!172536))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12906 (_ BitVec 32)) Bool)

(assert (=> b!266739 (= res!131069 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002))))

(declare-fun res!131068 () Bool)

(assert (=> start!25740 (=> (not res!131068) (not e!172535))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25740 (= res!131068 (validMask!0 mask!4002))))

(assert (=> start!25740 e!172535))

(assert (=> start!25740 true))

(declare-fun array_inv!4061 (array!12906) Bool)

(assert (=> start!25740 (array_inv!4061 a!3436)))

(assert (= (and start!25740 res!131068) b!266738))

(assert (= (and b!266738 res!131070) b!266737))

(assert (= (and b!266737 res!131073) b!266736))

(assert (= (and b!266736 res!131071) b!266734))

(assert (= (and b!266734 res!131072) b!266739))

(assert (= (and b!266739 res!131069) b!266735))

(declare-fun m!283303 () Bool)

(assert (=> b!266739 m!283303))

(declare-fun m!283305 () Bool)

(assert (=> b!266736 m!283305))

(declare-fun m!283307 () Bool)

(assert (=> b!266735 m!283307))

(declare-fun m!283309 () Bool)

(assert (=> b!266737 m!283309))

(declare-fun m!283311 () Bool)

(assert (=> start!25740 m!283311))

(declare-fun m!283313 () Bool)

(assert (=> start!25740 m!283313))

(declare-fun m!283315 () Bool)

(assert (=> b!266734 m!283315))

(check-sat (not b!266737) (not b!266735) (not start!25740) (not b!266736) (not b!266734) (not b!266739))
(check-sat)
