; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!25788 () Bool)

(assert start!25788)

(declare-fun b!267185 () Bool)

(declare-fun res!131526 () Bool)

(declare-fun e!172751 () Bool)

(assert (=> b!267185 (=> (not res!131526) (not e!172751))))

(declare-fun k0!2698 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!267185 (= res!131526 (validKeyInArray!0 k0!2698))))

(declare-fun b!267186 () Bool)

(declare-fun res!131520 () Bool)

(declare-fun e!172752 () Bool)

(assert (=> b!267186 (=> (not res!131520) (not e!172752))))

(declare-datatypes ((array!12954 0))(
  ( (array!12955 (arr!6131 (Array (_ BitVec 32) (_ BitVec 64))) (size!6483 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12954)

(assert (=> b!267186 (= res!131520 (bvslt #b00000000000000000000000000000000 (size!6483 a!3436)))))

(declare-fun b!267187 () Bool)

(declare-fun res!131519 () Bool)

(assert (=> b!267187 (=> (not res!131519) (not e!172752))))

(declare-datatypes ((List!3966 0))(
  ( (Nil!3963) (Cons!3962 (h!4629 (_ BitVec 64)) (t!9056 List!3966)) )
))
(declare-fun arrayNoDuplicates!0 (array!12954 (_ BitVec 32) List!3966) Bool)

(assert (=> b!267187 (= res!131519 (arrayNoDuplicates!0 a!3436 #b00000000000000000000000000000000 Nil!3963))))

(declare-fun b!267188 () Bool)

(declare-fun res!131524 () Bool)

(assert (=> b!267188 (=> (not res!131524) (not e!172751))))

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!267188 (= res!131524 (and (= (size!6483 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6483 a!3436))))))

(declare-fun b!267189 () Bool)

(assert (=> b!267189 (= e!172752 (not true))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12954 (_ BitVec 32)) Bool)

(assert (=> b!267189 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!12955 (store (arr!6131 a!3436) i!1355 k0!2698) (size!6483 a!3436)) mask!4002)))

(declare-datatypes ((Unit!8294 0))(
  ( (Unit!8295) )
))
(declare-fun lt!134686 () Unit!8294)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!12954 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8294)

(assert (=> b!267189 (= lt!134686 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3436 i!1355 k0!2698 #b00000000000000000000000000000000 mask!4002))))

(declare-fun b!267190 () Bool)

(declare-fun res!131523 () Bool)

(assert (=> b!267190 (=> (not res!131523) (not e!172751))))

(declare-fun arrayContainsKey!0 (array!12954 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!267190 (= res!131523 (not (arrayContainsKey!0 a!3436 k0!2698 #b00000000000000000000000000000000)))))

(declare-fun res!131522 () Bool)

(assert (=> start!25788 (=> (not res!131522) (not e!172751))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25788 (= res!131522 (validMask!0 mask!4002))))

(assert (=> start!25788 e!172751))

(assert (=> start!25788 true))

(declare-fun array_inv!4085 (array!12954) Bool)

(assert (=> start!25788 (array_inv!4085 a!3436)))

(declare-fun b!267191 () Bool)

(assert (=> b!267191 (= e!172751 e!172752)))

(declare-fun res!131525 () Bool)

(assert (=> b!267191 (=> (not res!131525) (not e!172752))))

(declare-datatypes ((SeekEntryResult!1333 0))(
  ( (MissingZero!1333 (index!7502 (_ BitVec 32))) (Found!1333 (index!7503 (_ BitVec 32))) (Intermediate!1333 (undefined!2145 Bool) (index!7504 (_ BitVec 32)) (x!25762 (_ BitVec 32))) (Undefined!1333) (MissingVacant!1333 (index!7505 (_ BitVec 32))) )
))
(declare-fun lt!134687 () SeekEntryResult!1333)

(assert (=> b!267191 (= res!131525 (or (= lt!134687 (MissingZero!1333 i!1355)) (= lt!134687 (MissingVacant!1333 i!1355))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12954 (_ BitVec 32)) SeekEntryResult!1333)

(assert (=> b!267191 (= lt!134687 (seekEntryOrOpen!0 k0!2698 a!3436 mask!4002))))

(declare-fun b!267192 () Bool)

(declare-fun res!131521 () Bool)

(assert (=> b!267192 (=> (not res!131521) (not e!172752))))

(assert (=> b!267192 (= res!131521 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002))))

(assert (= (and start!25788 res!131522) b!267188))

(assert (= (and b!267188 res!131524) b!267185))

(assert (= (and b!267185 res!131526) b!267190))

(assert (= (and b!267190 res!131523) b!267191))

(assert (= (and b!267191 res!131525) b!267192))

(assert (= (and b!267192 res!131521) b!267187))

(assert (= (and b!267187 res!131519) b!267186))

(assert (= (and b!267186 res!131520) b!267189))

(declare-fun m!283645 () Bool)

(assert (=> b!267189 m!283645))

(declare-fun m!283647 () Bool)

(assert (=> b!267189 m!283647))

(declare-fun m!283649 () Bool)

(assert (=> b!267189 m!283649))

(declare-fun m!283651 () Bool)

(assert (=> start!25788 m!283651))

(declare-fun m!283653 () Bool)

(assert (=> start!25788 m!283653))

(declare-fun m!283655 () Bool)

(assert (=> b!267192 m!283655))

(declare-fun m!283657 () Bool)

(assert (=> b!267187 m!283657))

(declare-fun m!283659 () Bool)

(assert (=> b!267185 m!283659))

(declare-fun m!283661 () Bool)

(assert (=> b!267190 m!283661))

(declare-fun m!283663 () Bool)

(assert (=> b!267191 m!283663))

(check-sat (not start!25788) (not b!267192) (not b!267190) (not b!267191) (not b!267187) (not b!267189) (not b!267185))
(check-sat)
