; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27296 () Bool)

(assert start!27296)

(declare-fun b!282643 () Bool)

(declare-fun e!179404 () Bool)

(declare-fun e!179405 () Bool)

(assert (=> b!282643 (= e!179404 e!179405)))

(declare-fun res!145755 () Bool)

(assert (=> b!282643 (=> (not res!145755) (not e!179405))))

(declare-datatypes ((SeekEntryResult!1862 0))(
  ( (MissingZero!1862 (index!9618 (_ BitVec 32))) (Found!1862 (index!9619 (_ BitVec 32))) (Intermediate!1862 (undefined!2674 Bool) (index!9620 (_ BitVec 32)) (x!27796 (_ BitVec 32))) (Undefined!1862) (MissingVacant!1862 (index!9621 (_ BitVec 32))) )
))
(declare-fun lt!139706 () SeekEntryResult!1862)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!282643 (= res!145755 (or (= lt!139706 (MissingZero!1862 i!1267)) (= lt!139706 (MissingVacant!1862 i!1267))))))

(declare-datatypes ((array!14103 0))(
  ( (array!14104 (arr!6693 (Array (_ BitVec 32) (_ BitVec 64))) (size!7045 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14103)

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14103 (_ BitVec 32)) SeekEntryResult!1862)

(assert (=> b!282643 (= lt!139706 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!282644 () Bool)

(declare-fun e!179406 () Bool)

(assert (=> b!282644 (= e!179406 (not true))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14103 (_ BitVec 32)) Bool)

(assert (=> b!282644 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-datatypes ((Unit!8987 0))(
  ( (Unit!8988) )
))
(declare-fun lt!139708 () Unit!8987)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!14103 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!8987)

(assert (=> b!282644 (= lt!139708 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(declare-fun lt!139705 () array!14103)

(assert (=> b!282644 (= (seekEntryOrOpen!0 (select (arr!6693 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6693 a!3325) i!1267 k!2581) startIndex!26) lt!139705 mask!3868))))

(declare-fun lt!139709 () Unit!8987)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!14103 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8987)

(assert (=> b!282644 (= lt!139709 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k!2581 startIndex!26 mask!3868))))

(declare-datatypes ((List!4522 0))(
  ( (Nil!4519) (Cons!4518 (h!5188 (_ BitVec 64)) (t!9612 List!4522)) )
))
(declare-fun arrayNoDuplicates!0 (array!14103 (_ BitVec 32) List!4522) Bool)

(assert (=> b!282644 (arrayNoDuplicates!0 lt!139705 #b00000000000000000000000000000000 Nil!4519)))

(declare-fun lt!139707 () Unit!8987)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!14103 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4522) Unit!8987)

(assert (=> b!282644 (= lt!139707 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4519))))

(declare-fun b!282645 () Bool)

(declare-fun res!145758 () Bool)

(assert (=> b!282645 (=> (not res!145758) (not e!179404))))

(declare-fun arrayContainsKey!0 (array!14103 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!282645 (= res!145758 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!282646 () Bool)

(declare-fun res!145753 () Bool)

(assert (=> b!282646 (=> (not res!145753) (not e!179405))))

(assert (=> b!282646 (= res!145753 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun res!145754 () Bool)

(assert (=> start!27296 (=> (not res!145754) (not e!179404))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27296 (= res!145754 (validMask!0 mask!3868))))

(assert (=> start!27296 e!179404))

(declare-fun array_inv!4647 (array!14103) Bool)

(assert (=> start!27296 (array_inv!4647 a!3325)))

(assert (=> start!27296 true))

(declare-fun b!282647 () Bool)

(declare-fun res!145750 () Bool)

(assert (=> b!282647 (=> (not res!145750) (not e!179404))))

(assert (=> b!282647 (= res!145750 (and (= (size!7045 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7045 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7045 a!3325))))))

(declare-fun b!282648 () Bool)

(declare-fun res!145756 () Bool)

(assert (=> b!282648 (=> (not res!145756) (not e!179404))))

(assert (=> b!282648 (= res!145756 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4519))))

(declare-fun b!282649 () Bool)

(assert (=> b!282649 (= e!179405 e!179406)))

(declare-fun res!145757 () Bool)

(assert (=> b!282649 (=> (not res!145757) (not e!179406))))

(assert (=> b!282649 (= res!145757 (not (= startIndex!26 i!1267)))))

(assert (=> b!282649 (= lt!139705 (array!14104 (store (arr!6693 a!3325) i!1267 k!2581) (size!7045 a!3325)))))

(declare-fun b!282650 () Bool)

(declare-fun res!145751 () Bool)

(assert (=> b!282650 (=> (not res!145751) (not e!179404))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!282650 (= res!145751 (validKeyInArray!0 k!2581))))

(declare-fun b!282651 () Bool)

(declare-fun res!145752 () Bool)

(assert (=> b!282651 (=> (not res!145752) (not e!179406))))

(assert (=> b!282651 (= res!145752 (validKeyInArray!0 (select (arr!6693 a!3325) startIndex!26)))))

(assert (= (and start!27296 res!145754) b!282647))

(assert (= (and b!282647 res!145750) b!282650))

(assert (= (and b!282650 res!145751) b!282648))

(assert (= (and b!282648 res!145756) b!282645))

(assert (= (and b!282645 res!145758) b!282643))

(assert (= (and b!282643 res!145755) b!282646))

(assert (= (and b!282646 res!145753) b!282649))

(assert (= (and b!282649 res!145757) b!282651))

(assert (= (and b!282651 res!145752) b!282644))

(declare-fun m!297337 () Bool)

(assert (=> b!282649 m!297337))

(declare-fun m!297339 () Bool)

(assert (=> b!282650 m!297339))

(declare-fun m!297341 () Bool)

(assert (=> b!282644 m!297341))

(declare-fun m!297343 () Bool)

(assert (=> b!282644 m!297343))

(declare-fun m!297345 () Bool)

(assert (=> b!282644 m!297345))

(assert (=> b!282644 m!297343))

(declare-fun m!297347 () Bool)

(assert (=> b!282644 m!297347))

(assert (=> b!282644 m!297337))

(declare-fun m!297349 () Bool)

(assert (=> b!282644 m!297349))

(declare-fun m!297351 () Bool)

(assert (=> b!282644 m!297351))

(declare-fun m!297353 () Bool)

(assert (=> b!282644 m!297353))

(declare-fun m!297355 () Bool)

(assert (=> b!282644 m!297355))

(assert (=> b!282644 m!297351))

(declare-fun m!297357 () Bool)

(assert (=> b!282644 m!297357))

(declare-fun m!297359 () Bool)

(assert (=> b!282643 m!297359))

(assert (=> b!282651 m!297351))

(assert (=> b!282651 m!297351))

(declare-fun m!297361 () Bool)

(assert (=> b!282651 m!297361))

(declare-fun m!297363 () Bool)

(assert (=> b!282648 m!297363))

(declare-fun m!297365 () Bool)

(assert (=> start!27296 m!297365))

(declare-fun m!297367 () Bool)

(assert (=> start!27296 m!297367))

(declare-fun m!297369 () Bool)

(assert (=> b!282645 m!297369))

(declare-fun m!297371 () Bool)

(assert (=> b!282646 m!297371))

(push 1)

