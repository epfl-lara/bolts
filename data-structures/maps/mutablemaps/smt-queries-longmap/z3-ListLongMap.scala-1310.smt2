; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26430 () Bool)

(assert start!26430)

(declare-fun b!274045 () Bool)

(declare-fun res!138078 () Bool)

(declare-fun e!175526 () Bool)

(assert (=> b!274045 (=> (not res!138078) (not e!175526))))

(declare-datatypes ((array!13516 0))(
  ( (array!13517 (arr!6407 (Array (_ BitVec 32) (_ BitVec 64))) (size!6759 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13516)

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13516 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!274045 (= res!138078 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!274046 () Bool)

(declare-fun e!175527 () Bool)

(assert (=> b!274046 (= e!175526 e!175527)))

(declare-fun res!138079 () Bool)

(assert (=> b!274046 (=> (not res!138079) (not e!175527))))

(declare-datatypes ((SeekEntryResult!1576 0))(
  ( (MissingZero!1576 (index!8474 (_ BitVec 32))) (Found!1576 (index!8475 (_ BitVec 32))) (Intermediate!1576 (undefined!2388 Bool) (index!8476 (_ BitVec 32)) (x!26741 (_ BitVec 32))) (Undefined!1576) (MissingVacant!1576 (index!8477 (_ BitVec 32))) )
))
(declare-fun lt!136769 () SeekEntryResult!1576)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!274046 (= res!138079 (or (= lt!136769 (MissingZero!1576 i!1267)) (= lt!136769 (MissingVacant!1576 i!1267))))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13516 (_ BitVec 32)) SeekEntryResult!1576)

(assert (=> b!274046 (= lt!136769 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!274047 () Bool)

(declare-fun res!138081 () Bool)

(declare-fun e!175525 () Bool)

(assert (=> b!274047 (=> (not res!138081) (not e!175525))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!274047 (= res!138081 (validKeyInArray!0 (select (arr!6407 a!3325) startIndex!26)))))

(declare-fun b!274048 () Bool)

(declare-fun res!138077 () Bool)

(assert (=> b!274048 (=> (not res!138077) (not e!175526))))

(assert (=> b!274048 (= res!138077 (and (= (size!6759 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6759 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6759 a!3325))))))

(declare-fun res!138074 () Bool)

(assert (=> start!26430 (=> (not res!138074) (not e!175526))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26430 (= res!138074 (validMask!0 mask!3868))))

(assert (=> start!26430 e!175526))

(declare-fun array_inv!4361 (array!13516) Bool)

(assert (=> start!26430 (array_inv!4361 a!3325)))

(assert (=> start!26430 true))

(declare-fun b!274049 () Bool)

(declare-fun res!138076 () Bool)

(assert (=> b!274049 (=> (not res!138076) (not e!175526))))

(declare-datatypes ((List!4236 0))(
  ( (Nil!4233) (Cons!4232 (h!4899 (_ BitVec 64)) (t!9326 List!4236)) )
))
(declare-fun arrayNoDuplicates!0 (array!13516 (_ BitVec 32) List!4236) Bool)

(assert (=> b!274049 (= res!138076 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4233))))

(declare-fun b!274050 () Bool)

(declare-fun res!138080 () Bool)

(assert (=> b!274050 (=> (not res!138080) (not e!175527))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13516 (_ BitVec 32)) Bool)

(assert (=> b!274050 (= res!138080 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!274051 () Bool)

(assert (=> b!274051 (= e!175527 e!175525)))

(declare-fun res!138075 () Bool)

(assert (=> b!274051 (=> (not res!138075) (not e!175525))))

(assert (=> b!274051 (= res!138075 (not (= startIndex!26 i!1267)))))

(declare-fun lt!136768 () array!13516)

(assert (=> b!274051 (= lt!136768 (array!13517 (store (arr!6407 a!3325) i!1267 k0!2581) (size!6759 a!3325)))))

(declare-fun b!274052 () Bool)

(assert (=> b!274052 (= e!175525 (not true))))

(assert (=> b!274052 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-datatypes ((Unit!8618 0))(
  ( (Unit!8619) )
))
(declare-fun lt!136767 () Unit!8618)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!13516 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!8618)

(assert (=> b!274052 (= lt!136767 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(assert (=> b!274052 (= (seekEntryOrOpen!0 (select (arr!6407 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6407 a!3325) i!1267 k0!2581) startIndex!26) lt!136768 mask!3868))))

(declare-fun lt!136765 () Unit!8618)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!13516 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8618)

(assert (=> b!274052 (= lt!136765 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k0!2581 startIndex!26 mask!3868))))

(assert (=> b!274052 (arrayNoDuplicates!0 lt!136768 #b00000000000000000000000000000000 Nil!4233)))

(declare-fun lt!136766 () Unit!8618)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13516 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4236) Unit!8618)

(assert (=> b!274052 (= lt!136766 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k0!2581 i!1267 #b00000000000000000000000000000000 Nil!4233))))

(declare-fun b!274053 () Bool)

(declare-fun res!138073 () Bool)

(assert (=> b!274053 (=> (not res!138073) (not e!175526))))

(assert (=> b!274053 (= res!138073 (validKeyInArray!0 k0!2581))))

(assert (= (and start!26430 res!138074) b!274048))

(assert (= (and b!274048 res!138077) b!274053))

(assert (= (and b!274053 res!138073) b!274049))

(assert (= (and b!274049 res!138076) b!274045))

(assert (= (and b!274045 res!138078) b!274046))

(assert (= (and b!274046 res!138079) b!274050))

(assert (= (and b!274050 res!138080) b!274051))

(assert (= (and b!274051 res!138075) b!274047))

(assert (= (and b!274047 res!138081) b!274052))

(declare-fun m!289495 () Bool)

(assert (=> b!274046 m!289495))

(declare-fun m!289497 () Bool)

(assert (=> b!274052 m!289497))

(declare-fun m!289499 () Bool)

(assert (=> b!274052 m!289499))

(declare-fun m!289501 () Bool)

(assert (=> b!274052 m!289501))

(assert (=> b!274052 m!289499))

(declare-fun m!289503 () Bool)

(assert (=> b!274052 m!289503))

(declare-fun m!289505 () Bool)

(assert (=> b!274052 m!289505))

(declare-fun m!289507 () Bool)

(assert (=> b!274052 m!289507))

(declare-fun m!289509 () Bool)

(assert (=> b!274052 m!289509))

(declare-fun m!289511 () Bool)

(assert (=> b!274052 m!289511))

(declare-fun m!289513 () Bool)

(assert (=> b!274052 m!289513))

(assert (=> b!274052 m!289509))

(declare-fun m!289515 () Bool)

(assert (=> b!274052 m!289515))

(assert (=> b!274047 m!289509))

(assert (=> b!274047 m!289509))

(declare-fun m!289517 () Bool)

(assert (=> b!274047 m!289517))

(declare-fun m!289519 () Bool)

(assert (=> b!274049 m!289519))

(declare-fun m!289521 () Bool)

(assert (=> b!274045 m!289521))

(declare-fun m!289523 () Bool)

(assert (=> b!274050 m!289523))

(assert (=> b!274051 m!289505))

(declare-fun m!289525 () Bool)

(assert (=> start!26430 m!289525))

(declare-fun m!289527 () Bool)

(assert (=> start!26430 m!289527))

(declare-fun m!289529 () Bool)

(assert (=> b!274053 m!289529))

(check-sat (not b!274049) (not b!274052) (not b!274053) (not start!26430) (not b!274047) (not b!274046) (not b!274045) (not b!274050))
(check-sat)
