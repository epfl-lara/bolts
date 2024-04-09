; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!27258 () Bool)

(assert start!27258)

(declare-fun b!282130 () Bool)

(declare-fun res!145245 () Bool)

(declare-fun e!179177 () Bool)

(assert (=> b!282130 (=> (not res!145245) (not e!179177))))

(declare-datatypes ((array!14065 0))(
  ( (array!14066 (arr!6674 (Array (_ BitVec 32) (_ BitVec 64))) (size!7026 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14065)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14065 (_ BitVec 32)) Bool)

(assert (=> b!282130 (= res!145245 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!282131 () Bool)

(declare-fun e!179179 () Bool)

(assert (=> b!282131 (= e!179177 e!179179)))

(declare-fun res!145241 () Bool)

(assert (=> b!282131 (=> (not res!145241) (not e!179179))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!282131 (= res!145241 (not (= startIndex!26 i!1267)))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun lt!139423 () array!14065)

(assert (=> b!282131 (= lt!139423 (array!14066 (store (arr!6674 a!3325) i!1267 k0!2581) (size!7026 a!3325)))))

(declare-fun b!282132 () Bool)

(assert (=> b!282132 (= e!179179 (not true))))

(assert (=> b!282132 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-datatypes ((Unit!8949 0))(
  ( (Unit!8950) )
))
(declare-fun lt!139420 () Unit!8949)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!14065 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!8949)

(assert (=> b!282132 (= lt!139420 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(declare-datatypes ((SeekEntryResult!1843 0))(
  ( (MissingZero!1843 (index!9542 (_ BitVec 32))) (Found!1843 (index!9543 (_ BitVec 32))) (Intermediate!1843 (undefined!2655 Bool) (index!9544 (_ BitVec 32)) (x!27729 (_ BitVec 32))) (Undefined!1843) (MissingVacant!1843 (index!9545 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14065 (_ BitVec 32)) SeekEntryResult!1843)

(assert (=> b!282132 (= (seekEntryOrOpen!0 (select (arr!6674 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6674 a!3325) i!1267 k0!2581) startIndex!26) lt!139423 mask!3868))))

(declare-fun lt!139424 () Unit!8949)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!14065 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8949)

(assert (=> b!282132 (= lt!139424 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k0!2581 startIndex!26 mask!3868))))

(declare-datatypes ((List!4503 0))(
  ( (Nil!4500) (Cons!4499 (h!5169 (_ BitVec 64)) (t!9593 List!4503)) )
))
(declare-fun arrayNoDuplicates!0 (array!14065 (_ BitVec 32) List!4503) Bool)

(assert (=> b!282132 (arrayNoDuplicates!0 lt!139423 #b00000000000000000000000000000000 Nil!4500)))

(declare-fun lt!139421 () Unit!8949)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!14065 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4503) Unit!8949)

(assert (=> b!282132 (= lt!139421 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k0!2581 i!1267 #b00000000000000000000000000000000 Nil!4500))))

(declare-fun b!282133 () Bool)

(declare-fun e!179176 () Bool)

(assert (=> b!282133 (= e!179176 e!179177)))

(declare-fun res!145240 () Bool)

(assert (=> b!282133 (=> (not res!145240) (not e!179177))))

(declare-fun lt!139422 () SeekEntryResult!1843)

(assert (=> b!282133 (= res!145240 (or (= lt!139422 (MissingZero!1843 i!1267)) (= lt!139422 (MissingVacant!1843 i!1267))))))

(assert (=> b!282133 (= lt!139422 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!282134 () Bool)

(declare-fun res!145238 () Bool)

(assert (=> b!282134 (=> (not res!145238) (not e!179176))))

(declare-fun arrayContainsKey!0 (array!14065 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!282134 (= res!145238 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun res!145244 () Bool)

(assert (=> start!27258 (=> (not res!145244) (not e!179176))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27258 (= res!145244 (validMask!0 mask!3868))))

(assert (=> start!27258 e!179176))

(declare-fun array_inv!4628 (array!14065) Bool)

(assert (=> start!27258 (array_inv!4628 a!3325)))

(assert (=> start!27258 true))

(declare-fun b!282135 () Bool)

(declare-fun res!145242 () Bool)

(assert (=> b!282135 (=> (not res!145242) (not e!179176))))

(assert (=> b!282135 (= res!145242 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4500))))

(declare-fun b!282136 () Bool)

(declare-fun res!145243 () Bool)

(assert (=> b!282136 (=> (not res!145243) (not e!179176))))

(assert (=> b!282136 (= res!145243 (and (= (size!7026 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7026 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7026 a!3325))))))

(declare-fun b!282137 () Bool)

(declare-fun res!145239 () Bool)

(assert (=> b!282137 (=> (not res!145239) (not e!179179))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!282137 (= res!145239 (validKeyInArray!0 (select (arr!6674 a!3325) startIndex!26)))))

(declare-fun b!282138 () Bool)

(declare-fun res!145237 () Bool)

(assert (=> b!282138 (=> (not res!145237) (not e!179176))))

(assert (=> b!282138 (= res!145237 (validKeyInArray!0 k0!2581))))

(assert (= (and start!27258 res!145244) b!282136))

(assert (= (and b!282136 res!145243) b!282138))

(assert (= (and b!282138 res!145237) b!282135))

(assert (= (and b!282135 res!145242) b!282134))

(assert (= (and b!282134 res!145238) b!282133))

(assert (= (and b!282133 res!145240) b!282130))

(assert (= (and b!282130 res!145245) b!282131))

(assert (= (and b!282131 res!145241) b!282137))

(assert (= (and b!282137 res!145239) b!282132))

(declare-fun m!296653 () Bool)

(assert (=> b!282135 m!296653))

(declare-fun m!296655 () Bool)

(assert (=> b!282134 m!296655))

(declare-fun m!296657 () Bool)

(assert (=> b!282132 m!296657))

(declare-fun m!296659 () Bool)

(assert (=> b!282132 m!296659))

(declare-fun m!296661 () Bool)

(assert (=> b!282132 m!296661))

(declare-fun m!296663 () Bool)

(assert (=> b!282132 m!296663))

(declare-fun m!296665 () Bool)

(assert (=> b!282132 m!296665))

(assert (=> b!282132 m!296665))

(declare-fun m!296667 () Bool)

(assert (=> b!282132 m!296667))

(assert (=> b!282132 m!296659))

(declare-fun m!296669 () Bool)

(assert (=> b!282132 m!296669))

(declare-fun m!296671 () Bool)

(assert (=> b!282132 m!296671))

(declare-fun m!296673 () Bool)

(assert (=> b!282132 m!296673))

(declare-fun m!296675 () Bool)

(assert (=> b!282132 m!296675))

(declare-fun m!296677 () Bool)

(assert (=> b!282138 m!296677))

(declare-fun m!296679 () Bool)

(assert (=> start!27258 m!296679))

(declare-fun m!296681 () Bool)

(assert (=> start!27258 m!296681))

(declare-fun m!296683 () Bool)

(assert (=> b!282130 m!296683))

(assert (=> b!282131 m!296661))

(declare-fun m!296685 () Bool)

(assert (=> b!282133 m!296685))

(assert (=> b!282137 m!296665))

(assert (=> b!282137 m!296665))

(declare-fun m!296687 () Bool)

(assert (=> b!282137 m!296687))

(check-sat (not b!282134) (not b!282130) (not b!282132) (not b!282138) (not b!282135) (not start!27258) (not b!282137) (not b!282133))
(check-sat)
