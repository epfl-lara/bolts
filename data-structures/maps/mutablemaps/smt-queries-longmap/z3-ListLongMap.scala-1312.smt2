; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26442 () Bool)

(assert start!26442)

(declare-fun b!274212 () Bool)

(declare-fun res!138245 () Bool)

(declare-fun e!175602 () Bool)

(assert (=> b!274212 (=> (not res!138245) (not e!175602))))

(declare-datatypes ((array!13528 0))(
  ( (array!13529 (arr!6413 (Array (_ BitVec 32) (_ BitVec 64))) (size!6765 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13528)

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13528 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!274212 (= res!138245 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!274213 () Bool)

(declare-fun res!138246 () Bool)

(assert (=> b!274213 (=> (not res!138246) (not e!175602))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!274213 (= res!138246 (validKeyInArray!0 k0!2581))))

(declare-fun b!274214 () Bool)

(declare-fun res!138247 () Bool)

(assert (=> b!274214 (=> (not res!138247) (not e!175602))))

(declare-datatypes ((List!4242 0))(
  ( (Nil!4239) (Cons!4238 (h!4905 (_ BitVec 64)) (t!9332 List!4242)) )
))
(declare-fun arrayNoDuplicates!0 (array!13528 (_ BitVec 32) List!4242) Bool)

(assert (=> b!274214 (= res!138247 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4239))))

(declare-fun b!274215 () Bool)

(declare-fun e!175603 () Bool)

(declare-fun e!175606 () Bool)

(assert (=> b!274215 (= e!175603 e!175606)))

(declare-fun res!138249 () Bool)

(assert (=> b!274215 (=> (not res!138249) (not e!175606))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!274215 (= res!138249 (not (= startIndex!26 i!1267)))))

(declare-fun lt!136862 () array!13528)

(assert (=> b!274215 (= lt!136862 (array!13529 (store (arr!6413 a!3325) i!1267 k0!2581) (size!6765 a!3325)))))

(declare-fun b!274216 () Bool)

(declare-fun res!138243 () Bool)

(assert (=> b!274216 (=> (not res!138243) (not e!175606))))

(assert (=> b!274216 (= res!138243 (validKeyInArray!0 (select (arr!6413 a!3325) startIndex!26)))))

(declare-fun res!138241 () Bool)

(assert (=> start!26442 (=> (not res!138241) (not e!175602))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26442 (= res!138241 (validMask!0 mask!3868))))

(assert (=> start!26442 e!175602))

(declare-fun array_inv!4367 (array!13528) Bool)

(assert (=> start!26442 (array_inv!4367 a!3325)))

(assert (=> start!26442 true))

(declare-fun b!274217 () Bool)

(declare-fun res!138240 () Bool)

(assert (=> b!274217 (=> (not res!138240) (not e!175602))))

(assert (=> b!274217 (= res!138240 (and (= (size!6765 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6765 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6765 a!3325))))))

(declare-fun b!274218 () Bool)

(declare-fun e!175604 () Bool)

(assert (=> b!274218 (= e!175604 true)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13528 (_ BitVec 32)) Bool)

(assert (=> b!274218 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) lt!136862 mask!3868)))

(declare-datatypes ((Unit!8630 0))(
  ( (Unit!8631) )
))
(declare-fun lt!136863 () Unit!8630)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!13528 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8630)

(assert (=> b!274218 (= lt!136863 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k0!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(declare-fun b!274219 () Bool)

(assert (=> b!274219 (= e!175606 (not e!175604))))

(declare-fun res!138248 () Bool)

(assert (=> b!274219 (=> res!138248 e!175604)))

(assert (=> b!274219 (= res!138248 (or (bvsge startIndex!26 (bvsub (size!6765 a!3325) #b00000000000000000000000000000001)) (bvslt (bvadd #b00000000000000000000000000000001 startIndex!26) #b00000000000000000000000000000000)))))

(assert (=> b!274219 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-fun lt!136865 () Unit!8630)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!13528 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!8630)

(assert (=> b!274219 (= lt!136865 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(declare-datatypes ((SeekEntryResult!1582 0))(
  ( (MissingZero!1582 (index!8498 (_ BitVec 32))) (Found!1582 (index!8499 (_ BitVec 32))) (Intermediate!1582 (undefined!2394 Bool) (index!8500 (_ BitVec 32)) (x!26763 (_ BitVec 32))) (Undefined!1582) (MissingVacant!1582 (index!8501 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13528 (_ BitVec 32)) SeekEntryResult!1582)

(assert (=> b!274219 (= (seekEntryOrOpen!0 (select (arr!6413 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6413 a!3325) i!1267 k0!2581) startIndex!26) lt!136862 mask!3868))))

(declare-fun lt!136864 () Unit!8630)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!13528 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8630)

(assert (=> b!274219 (= lt!136864 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k0!2581 startIndex!26 mask!3868))))

(assert (=> b!274219 (arrayNoDuplicates!0 lt!136862 #b00000000000000000000000000000000 Nil!4239)))

(declare-fun lt!136860 () Unit!8630)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13528 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4242) Unit!8630)

(assert (=> b!274219 (= lt!136860 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k0!2581 i!1267 #b00000000000000000000000000000000 Nil!4239))))

(declare-fun b!274220 () Bool)

(assert (=> b!274220 (= e!175602 e!175603)))

(declare-fun res!138244 () Bool)

(assert (=> b!274220 (=> (not res!138244) (not e!175603))))

(declare-fun lt!136861 () SeekEntryResult!1582)

(assert (=> b!274220 (= res!138244 (or (= lt!136861 (MissingZero!1582 i!1267)) (= lt!136861 (MissingVacant!1582 i!1267))))))

(assert (=> b!274220 (= lt!136861 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!274221 () Bool)

(declare-fun res!138242 () Bool)

(assert (=> b!274221 (=> (not res!138242) (not e!175603))))

(assert (=> b!274221 (= res!138242 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(assert (= (and start!26442 res!138241) b!274217))

(assert (= (and b!274217 res!138240) b!274213))

(assert (= (and b!274213 res!138246) b!274214))

(assert (= (and b!274214 res!138247) b!274212))

(assert (= (and b!274212 res!138245) b!274220))

(assert (= (and b!274220 res!138244) b!274221))

(assert (= (and b!274221 res!138242) b!274215))

(assert (= (and b!274215 res!138249) b!274216))

(assert (= (and b!274216 res!138243) b!274219))

(assert (= (and b!274219 (not res!138248)) b!274218))

(declare-fun m!289715 () Bool)

(assert (=> b!274221 m!289715))

(declare-fun m!289717 () Bool)

(assert (=> b!274220 m!289717))

(declare-fun m!289719 () Bool)

(assert (=> b!274215 m!289719))

(declare-fun m!289721 () Bool)

(assert (=> b!274216 m!289721))

(assert (=> b!274216 m!289721))

(declare-fun m!289723 () Bool)

(assert (=> b!274216 m!289723))

(declare-fun m!289725 () Bool)

(assert (=> b!274219 m!289725))

(declare-fun m!289727 () Bool)

(assert (=> b!274219 m!289727))

(declare-fun m!289729 () Bool)

(assert (=> b!274219 m!289729))

(declare-fun m!289731 () Bool)

(assert (=> b!274219 m!289731))

(assert (=> b!274219 m!289727))

(assert (=> b!274219 m!289719))

(declare-fun m!289733 () Bool)

(assert (=> b!274219 m!289733))

(assert (=> b!274219 m!289721))

(declare-fun m!289735 () Bool)

(assert (=> b!274219 m!289735))

(declare-fun m!289737 () Bool)

(assert (=> b!274219 m!289737))

(assert (=> b!274219 m!289721))

(declare-fun m!289739 () Bool)

(assert (=> b!274219 m!289739))

(declare-fun m!289741 () Bool)

(assert (=> b!274213 m!289741))

(declare-fun m!289743 () Bool)

(assert (=> b!274218 m!289743))

(declare-fun m!289745 () Bool)

(assert (=> b!274218 m!289745))

(declare-fun m!289747 () Bool)

(assert (=> start!26442 m!289747))

(declare-fun m!289749 () Bool)

(assert (=> start!26442 m!289749))

(declare-fun m!289751 () Bool)

(assert (=> b!274212 m!289751))

(declare-fun m!289753 () Bool)

(assert (=> b!274214 m!289753))

(check-sat (not b!274214) (not b!274221) (not b!274218) (not b!274220) (not start!26442) (not b!274212) (not b!274219) (not b!274216) (not b!274213))
(check-sat)
