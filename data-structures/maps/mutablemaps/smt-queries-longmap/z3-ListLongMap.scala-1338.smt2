; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26598 () Bool)

(assert start!26598)

(declare-fun b!275992 () Bool)

(declare-fun e!176402 () Bool)

(declare-fun e!176404 () Bool)

(assert (=> b!275992 (= e!176402 e!176404)))

(declare-fun res!140021 () Bool)

(assert (=> b!275992 (=> (not res!140021) (not e!176404))))

(declare-datatypes ((SeekEntryResult!1660 0))(
  ( (MissingZero!1660 (index!8810 (_ BitVec 32))) (Found!1660 (index!8811 (_ BitVec 32))) (Intermediate!1660 (undefined!2472 Bool) (index!8812 (_ BitVec 32)) (x!27049 (_ BitVec 32))) (Undefined!1660) (MissingVacant!1660 (index!8813 (_ BitVec 32))) )
))
(declare-fun lt!137560 () SeekEntryResult!1660)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!275992 (= res!140021 (or (= lt!137560 (MissingZero!1660 i!1267)) (= lt!137560 (MissingVacant!1660 i!1267))))))

(declare-datatypes ((array!13684 0))(
  ( (array!13685 (arr!6491 (Array (_ BitVec 32) (_ BitVec 64))) (size!6843 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13684)

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13684 (_ BitVec 32)) SeekEntryResult!1660)

(assert (=> b!275992 (= lt!137560 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!275993 () Bool)

(assert (=> b!275993 (= e!176404 false)))

(declare-fun lt!137561 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13684 (_ BitVec 32)) Bool)

(assert (=> b!275993 (= lt!137561 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!275994 () Bool)

(declare-fun res!140024 () Bool)

(assert (=> b!275994 (=> (not res!140024) (not e!176402))))

(declare-fun arrayContainsKey!0 (array!13684 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!275994 (= res!140024 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!275995 () Bool)

(declare-fun res!140022 () Bool)

(assert (=> b!275995 (=> (not res!140022) (not e!176402))))

(declare-datatypes ((List!4320 0))(
  ( (Nil!4317) (Cons!4316 (h!4983 (_ BitVec 64)) (t!9410 List!4320)) )
))
(declare-fun arrayNoDuplicates!0 (array!13684 (_ BitVec 32) List!4320) Bool)

(assert (=> b!275995 (= res!140022 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4317))))

(declare-fun b!275996 () Bool)

(declare-fun res!140025 () Bool)

(assert (=> b!275996 (=> (not res!140025) (not e!176402))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!275996 (= res!140025 (and (= (size!6843 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6843 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6843 a!3325))))))

(declare-fun b!275997 () Bool)

(declare-fun res!140023 () Bool)

(assert (=> b!275997 (=> (not res!140023) (not e!176402))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!275997 (= res!140023 (validKeyInArray!0 k0!2581))))

(declare-fun res!140020 () Bool)

(assert (=> start!26598 (=> (not res!140020) (not e!176402))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26598 (= res!140020 (validMask!0 mask!3868))))

(assert (=> start!26598 e!176402))

(declare-fun array_inv!4445 (array!13684) Bool)

(assert (=> start!26598 (array_inv!4445 a!3325)))

(assert (=> start!26598 true))

(assert (= (and start!26598 res!140020) b!275996))

(assert (= (and b!275996 res!140025) b!275997))

(assert (= (and b!275997 res!140023) b!275995))

(assert (= (and b!275995 res!140022) b!275994))

(assert (= (and b!275994 res!140024) b!275992))

(assert (= (and b!275992 res!140021) b!275993))

(declare-fun m!291477 () Bool)

(assert (=> b!275995 m!291477))

(declare-fun m!291479 () Bool)

(assert (=> start!26598 m!291479))

(declare-fun m!291481 () Bool)

(assert (=> start!26598 m!291481))

(declare-fun m!291483 () Bool)

(assert (=> b!275992 m!291483))

(declare-fun m!291485 () Bool)

(assert (=> b!275993 m!291485))

(declare-fun m!291487 () Bool)

(assert (=> b!275994 m!291487))

(declare-fun m!291489 () Bool)

(assert (=> b!275997 m!291489))

(check-sat (not b!275997) (not start!26598) (not b!275992) (not b!275995) (not b!275993) (not b!275994))
(check-sat)
