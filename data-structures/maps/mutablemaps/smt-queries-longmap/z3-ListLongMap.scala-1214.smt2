; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!25764 () Bool)

(assert start!25764)

(declare-fun b!266959 () Bool)

(declare-fun res!131294 () Bool)

(declare-fun e!172645 () Bool)

(assert (=> b!266959 (=> (not res!131294) (not e!172645))))

(declare-datatypes ((array!12930 0))(
  ( (array!12931 (arr!6119 (Array (_ BitVec 32) (_ BitVec 64))) (size!6471 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12930)

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!266959 (= res!131294 (and (= (size!6471 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6471 a!3436))))))

(declare-fun res!131298 () Bool)

(assert (=> start!25764 (=> (not res!131298) (not e!172645))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25764 (= res!131298 (validMask!0 mask!4002))))

(assert (=> start!25764 e!172645))

(assert (=> start!25764 true))

(declare-fun array_inv!4073 (array!12930) Bool)

(assert (=> start!25764 (array_inv!4073 a!3436)))

(declare-fun b!266960 () Bool)

(declare-fun res!131296 () Bool)

(assert (=> b!266960 (=> (not res!131296) (not e!172645))))

(declare-fun k0!2698 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!12930 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!266960 (= res!131296 (not (arrayContainsKey!0 a!3436 k0!2698 #b00000000000000000000000000000000)))))

(declare-fun b!266961 () Bool)

(declare-fun e!172644 () Bool)

(assert (=> b!266961 (= e!172645 e!172644)))

(declare-fun res!131297 () Bool)

(assert (=> b!266961 (=> (not res!131297) (not e!172644))))

(declare-datatypes ((SeekEntryResult!1321 0))(
  ( (MissingZero!1321 (index!7454 (_ BitVec 32))) (Found!1321 (index!7455 (_ BitVec 32))) (Intermediate!1321 (undefined!2133 Bool) (index!7456 (_ BitVec 32)) (x!25718 (_ BitVec 32))) (Undefined!1321) (MissingVacant!1321 (index!7457 (_ BitVec 32))) )
))
(declare-fun lt!134615 () SeekEntryResult!1321)

(assert (=> b!266961 (= res!131297 (or (= lt!134615 (MissingZero!1321 i!1355)) (= lt!134615 (MissingVacant!1321 i!1355))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12930 (_ BitVec 32)) SeekEntryResult!1321)

(assert (=> b!266961 (= lt!134615 (seekEntryOrOpen!0 k0!2698 a!3436 mask!4002))))

(declare-fun b!266962 () Bool)

(declare-fun res!131293 () Bool)

(assert (=> b!266962 (=> (not res!131293) (not e!172644))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12930 (_ BitVec 32)) Bool)

(assert (=> b!266962 (= res!131293 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002))))

(declare-fun b!266963 () Bool)

(declare-fun res!131295 () Bool)

(assert (=> b!266963 (=> (not res!131295) (not e!172645))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!266963 (= res!131295 (validKeyInArray!0 k0!2698))))

(declare-fun b!266964 () Bool)

(assert (=> b!266964 (= e!172644 false)))

(declare-fun lt!134614 () Bool)

(declare-datatypes ((List!3954 0))(
  ( (Nil!3951) (Cons!3950 (h!4617 (_ BitVec 64)) (t!9044 List!3954)) )
))
(declare-fun arrayNoDuplicates!0 (array!12930 (_ BitVec 32) List!3954) Bool)

(assert (=> b!266964 (= lt!134614 (arrayNoDuplicates!0 a!3436 #b00000000000000000000000000000000 Nil!3951))))

(assert (= (and start!25764 res!131298) b!266959))

(assert (= (and b!266959 res!131294) b!266963))

(assert (= (and b!266963 res!131295) b!266960))

(assert (= (and b!266960 res!131296) b!266961))

(assert (= (and b!266961 res!131297) b!266962))

(assert (= (and b!266962 res!131293) b!266964))

(declare-fun m!283471 () Bool)

(assert (=> b!266964 m!283471))

(declare-fun m!283473 () Bool)

(assert (=> b!266962 m!283473))

(declare-fun m!283475 () Bool)

(assert (=> start!25764 m!283475))

(declare-fun m!283477 () Bool)

(assert (=> start!25764 m!283477))

(declare-fun m!283479 () Bool)

(assert (=> b!266963 m!283479))

(declare-fun m!283481 () Bool)

(assert (=> b!266961 m!283481))

(declare-fun m!283483 () Bool)

(assert (=> b!266960 m!283483))

(check-sat (not start!25764) (not b!266963) (not b!266964) (not b!266962) (not b!266961) (not b!266960))
(check-sat)
