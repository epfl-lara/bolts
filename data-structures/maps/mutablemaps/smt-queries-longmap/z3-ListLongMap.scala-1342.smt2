; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26622 () Bool)

(assert start!26622)

(declare-fun b!276244 () Bool)

(declare-fun res!140277 () Bool)

(declare-fun e!176512 () Bool)

(assert (=> b!276244 (=> (not res!140277) (not e!176512))))

(declare-datatypes ((array!13708 0))(
  ( (array!13709 (arr!6503 (Array (_ BitVec 32) (_ BitVec 64))) (size!6855 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13708)

(declare-datatypes ((List!4332 0))(
  ( (Nil!4329) (Cons!4328 (h!4995 (_ BitVec 64)) (t!9422 List!4332)) )
))
(declare-fun arrayNoDuplicates!0 (array!13708 (_ BitVec 32) List!4332) Bool)

(assert (=> b!276244 (= res!140277 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4329))))

(declare-fun b!276245 () Bool)

(declare-fun res!140272 () Bool)

(assert (=> b!276245 (=> (not res!140272) (not e!176512))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13708 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!276245 (= res!140272 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!276246 () Bool)

(declare-fun e!176510 () Bool)

(assert (=> b!276246 (= e!176512 e!176510)))

(declare-fun res!140276 () Bool)

(assert (=> b!276246 (=> (not res!140276) (not e!176510))))

(declare-datatypes ((SeekEntryResult!1672 0))(
  ( (MissingZero!1672 (index!8858 (_ BitVec 32))) (Found!1672 (index!8859 (_ BitVec 32))) (Intermediate!1672 (undefined!2484 Bool) (index!8860 (_ BitVec 32)) (x!27093 (_ BitVec 32))) (Undefined!1672) (MissingVacant!1672 (index!8861 (_ BitVec 32))) )
))
(declare-fun lt!137615 () SeekEntryResult!1672)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!276246 (= res!140276 (or (= lt!137615 (MissingZero!1672 i!1267)) (= lt!137615 (MissingVacant!1672 i!1267))))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13708 (_ BitVec 32)) SeekEntryResult!1672)

(assert (=> b!276246 (= lt!137615 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!276247 () Bool)

(declare-fun res!140275 () Bool)

(assert (=> b!276247 (=> (not res!140275) (not e!176512))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!276247 (= res!140275 (validKeyInArray!0 k0!2581))))

(declare-fun b!276248 () Bool)

(declare-fun res!140273 () Bool)

(assert (=> b!276248 (=> (not res!140273) (not e!176512))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!276248 (= res!140273 (and (= (size!6855 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6855 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6855 a!3325))))))

(declare-fun res!140274 () Bool)

(assert (=> start!26622 (=> (not res!140274) (not e!176512))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26622 (= res!140274 (validMask!0 mask!3868))))

(assert (=> start!26622 e!176512))

(declare-fun array_inv!4457 (array!13708) Bool)

(assert (=> start!26622 (array_inv!4457 a!3325)))

(assert (=> start!26622 true))

(declare-fun b!276249 () Bool)

(assert (=> b!276249 (= e!176510 false)))

(declare-fun lt!137614 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13708 (_ BitVec 32)) Bool)

(assert (=> b!276249 (= lt!137614 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(assert (= (and start!26622 res!140274) b!276248))

(assert (= (and b!276248 res!140273) b!276247))

(assert (= (and b!276247 res!140275) b!276244))

(assert (= (and b!276244 res!140277) b!276245))

(assert (= (and b!276245 res!140272) b!276246))

(assert (= (and b!276246 res!140276) b!276249))

(declare-fun m!291657 () Bool)

(assert (=> start!26622 m!291657))

(declare-fun m!291659 () Bool)

(assert (=> start!26622 m!291659))

(declare-fun m!291661 () Bool)

(assert (=> b!276244 m!291661))

(declare-fun m!291663 () Bool)

(assert (=> b!276246 m!291663))

(declare-fun m!291665 () Bool)

(assert (=> b!276249 m!291665))

(declare-fun m!291667 () Bool)

(assert (=> b!276247 m!291667))

(declare-fun m!291669 () Bool)

(assert (=> b!276245 m!291669))

(check-sat (not b!276246) (not b!276245) (not start!26622) (not b!276247) (not b!276244) (not b!276249))
(check-sat)
