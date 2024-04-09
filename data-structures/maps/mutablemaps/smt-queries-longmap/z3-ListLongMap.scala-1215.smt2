; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!25770 () Bool)

(assert start!25770)

(declare-fun b!267013 () Bool)

(declare-fun res!131351 () Bool)

(declare-fun e!172670 () Bool)

(assert (=> b!267013 (=> (not res!131351) (not e!172670))))

(declare-datatypes ((array!12936 0))(
  ( (array!12937 (arr!6122 (Array (_ BitVec 32) (_ BitVec 64))) (size!6474 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12936)

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12936 (_ BitVec 32)) Bool)

(assert (=> b!267013 (= res!131351 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002))))

(declare-fun b!267014 () Bool)

(declare-fun res!131348 () Bool)

(declare-fun e!172671 () Bool)

(assert (=> b!267014 (=> (not res!131348) (not e!172671))))

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!267014 (= res!131348 (and (= (size!6474 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6474 a!3436))))))

(declare-fun b!267015 () Bool)

(declare-fun res!131352 () Bool)

(assert (=> b!267015 (=> (not res!131352) (not e!172671))))

(declare-fun k0!2698 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!267015 (= res!131352 (validKeyInArray!0 k0!2698))))

(declare-fun res!131349 () Bool)

(assert (=> start!25770 (=> (not res!131349) (not e!172671))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25770 (= res!131349 (validMask!0 mask!4002))))

(assert (=> start!25770 e!172671))

(assert (=> start!25770 true))

(declare-fun array_inv!4076 (array!12936) Bool)

(assert (=> start!25770 (array_inv!4076 a!3436)))

(declare-fun b!267016 () Bool)

(assert (=> b!267016 (= e!172670 false)))

(declare-fun lt!134633 () Bool)

(declare-datatypes ((List!3957 0))(
  ( (Nil!3954) (Cons!3953 (h!4620 (_ BitVec 64)) (t!9047 List!3957)) )
))
(declare-fun arrayNoDuplicates!0 (array!12936 (_ BitVec 32) List!3957) Bool)

(assert (=> b!267016 (= lt!134633 (arrayNoDuplicates!0 a!3436 #b00000000000000000000000000000000 Nil!3954))))

(declare-fun b!267017 () Bool)

(declare-fun res!131347 () Bool)

(assert (=> b!267017 (=> (not res!131347) (not e!172671))))

(declare-fun arrayContainsKey!0 (array!12936 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!267017 (= res!131347 (not (arrayContainsKey!0 a!3436 k0!2698 #b00000000000000000000000000000000)))))

(declare-fun b!267018 () Bool)

(assert (=> b!267018 (= e!172671 e!172670)))

(declare-fun res!131350 () Bool)

(assert (=> b!267018 (=> (not res!131350) (not e!172670))))

(declare-datatypes ((SeekEntryResult!1324 0))(
  ( (MissingZero!1324 (index!7466 (_ BitVec 32))) (Found!1324 (index!7467 (_ BitVec 32))) (Intermediate!1324 (undefined!2136 Bool) (index!7468 (_ BitVec 32)) (x!25729 (_ BitVec 32))) (Undefined!1324) (MissingVacant!1324 (index!7469 (_ BitVec 32))) )
))
(declare-fun lt!134632 () SeekEntryResult!1324)

(assert (=> b!267018 (= res!131350 (or (= lt!134632 (MissingZero!1324 i!1355)) (= lt!134632 (MissingVacant!1324 i!1355))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12936 (_ BitVec 32)) SeekEntryResult!1324)

(assert (=> b!267018 (= lt!134632 (seekEntryOrOpen!0 k0!2698 a!3436 mask!4002))))

(assert (= (and start!25770 res!131349) b!267014))

(assert (= (and b!267014 res!131348) b!267015))

(assert (= (and b!267015 res!131352) b!267017))

(assert (= (and b!267017 res!131347) b!267018))

(assert (= (and b!267018 res!131350) b!267013))

(assert (= (and b!267013 res!131351) b!267016))

(declare-fun m!283513 () Bool)

(assert (=> b!267017 m!283513))

(declare-fun m!283515 () Bool)

(assert (=> start!25770 m!283515))

(declare-fun m!283517 () Bool)

(assert (=> start!25770 m!283517))

(declare-fun m!283519 () Bool)

(assert (=> b!267013 m!283519))

(declare-fun m!283521 () Bool)

(assert (=> b!267015 m!283521))

(declare-fun m!283523 () Bool)

(assert (=> b!267016 m!283523))

(declare-fun m!283525 () Bool)

(assert (=> b!267018 m!283525))

(check-sat (not b!267015) (not start!25770) (not b!267018) (not b!267016) (not b!267017) (not b!267013))
(check-sat)
