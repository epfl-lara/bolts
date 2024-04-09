; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26022 () Bool)

(assert start!26022)

(declare-fun res!132649 () Bool)

(declare-fun e!173335 () Bool)

(assert (=> start!26022 (=> (not res!132649) (not e!173335))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26022 (= res!132649 (validMask!0 mask!3868))))

(assert (=> start!26022 e!173335))

(declare-datatypes ((array!13108 0))(
  ( (array!13109 (arr!6203 (Array (_ BitVec 32) (_ BitVec 64))) (size!6555 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13108)

(declare-fun array_inv!4157 (array!13108) Bool)

(assert (=> start!26022 (array_inv!4157 a!3325)))

(assert (=> start!26022 true))

(declare-fun b!268329 () Bool)

(declare-fun res!132646 () Bool)

(assert (=> b!268329 (=> (not res!132646) (not e!173335))))

(declare-datatypes ((List!4032 0))(
  ( (Nil!4029) (Cons!4028 (h!4695 (_ BitVec 64)) (t!9122 List!4032)) )
))
(declare-fun arrayNoDuplicates!0 (array!13108 (_ BitVec 32) List!4032) Bool)

(assert (=> b!268329 (= res!132646 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4029))))

(declare-fun b!268330 () Bool)

(declare-fun e!173333 () Bool)

(assert (=> b!268330 (= e!173335 e!173333)))

(declare-fun res!132648 () Bool)

(assert (=> b!268330 (=> (not res!132648) (not e!173333))))

(declare-datatypes ((SeekEntryResult!1372 0))(
  ( (MissingZero!1372 (index!7658 (_ BitVec 32))) (Found!1372 (index!7659 (_ BitVec 32))) (Intermediate!1372 (undefined!2184 Bool) (index!7660 (_ BitVec 32)) (x!25993 (_ BitVec 32))) (Undefined!1372) (MissingVacant!1372 (index!7661 (_ BitVec 32))) )
))
(declare-fun lt!134882 () SeekEntryResult!1372)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!268330 (= res!132648 (or (= lt!134882 (MissingZero!1372 i!1267)) (= lt!134882 (MissingVacant!1372 i!1267))))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13108 (_ BitVec 32)) SeekEntryResult!1372)

(assert (=> b!268330 (= lt!134882 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!268331 () Bool)

(assert (=> b!268331 (= e!173333 (bvsgt #b00000000000000000000000000000000 (size!6555 a!3325)))))

(declare-fun b!268332 () Bool)

(declare-fun res!132645 () Bool)

(assert (=> b!268332 (=> (not res!132645) (not e!173335))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!268332 (= res!132645 (validKeyInArray!0 k0!2581))))

(declare-fun b!268333 () Bool)

(declare-fun res!132647 () Bool)

(assert (=> b!268333 (=> (not res!132647) (not e!173335))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!268333 (= res!132647 (and (= (size!6555 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6555 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6555 a!3325))))))

(declare-fun b!268334 () Bool)

(declare-fun res!132650 () Bool)

(assert (=> b!268334 (=> (not res!132650) (not e!173333))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13108 (_ BitVec 32)) Bool)

(assert (=> b!268334 (= res!132650 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!268335 () Bool)

(declare-fun res!132651 () Bool)

(assert (=> b!268335 (=> (not res!132651) (not e!173335))))

(declare-fun arrayContainsKey!0 (array!13108 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!268335 (= res!132651 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(assert (= (and start!26022 res!132649) b!268333))

(assert (= (and b!268333 res!132647) b!268332))

(assert (= (and b!268332 res!132645) b!268329))

(assert (= (and b!268329 res!132646) b!268335))

(assert (= (and b!268335 res!132651) b!268330))

(assert (= (and b!268330 res!132648) b!268334))

(assert (= (and b!268334 res!132650) b!268331))

(declare-fun m!284517 () Bool)

(assert (=> start!26022 m!284517))

(declare-fun m!284519 () Bool)

(assert (=> start!26022 m!284519))

(declare-fun m!284521 () Bool)

(assert (=> b!268334 m!284521))

(declare-fun m!284523 () Bool)

(assert (=> b!268335 m!284523))

(declare-fun m!284525 () Bool)

(assert (=> b!268329 m!284525))

(declare-fun m!284527 () Bool)

(assert (=> b!268332 m!284527))

(declare-fun m!284529 () Bool)

(assert (=> b!268330 m!284529))

(check-sat (not b!268330) (not b!268332) (not b!268335) (not b!268334) (not start!26022) (not b!268329))
(check-sat)
