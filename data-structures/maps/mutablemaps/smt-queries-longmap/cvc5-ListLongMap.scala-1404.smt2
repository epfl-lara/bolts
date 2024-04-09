; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27286 () Bool)

(assert start!27286)

(declare-fun b!282508 () Bool)

(declare-fun res!145615 () Bool)

(declare-fun e!179344 () Bool)

(assert (=> b!282508 (=> (not res!145615) (not e!179344))))

(declare-datatypes ((array!14093 0))(
  ( (array!14094 (arr!6688 (Array (_ BitVec 32) (_ BitVec 64))) (size!7040 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14093)

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!282508 (= res!145615 (validKeyInArray!0 (select (arr!6688 a!3325) startIndex!26)))))

(declare-fun b!282509 () Bool)

(declare-fun res!145618 () Bool)

(declare-fun e!179346 () Bool)

(assert (=> b!282509 (=> (not res!145618) (not e!179346))))

(declare-datatypes ((List!4517 0))(
  ( (Nil!4514) (Cons!4513 (h!5183 (_ BitVec 64)) (t!9607 List!4517)) )
))
(declare-fun arrayNoDuplicates!0 (array!14093 (_ BitVec 32) List!4517) Bool)

(assert (=> b!282509 (= res!145618 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4514))))

(declare-fun b!282510 () Bool)

(declare-fun res!145622 () Bool)

(assert (=> b!282510 (=> (not res!145622) (not e!179346))))

(declare-fun k!2581 () (_ BitVec 64))

(assert (=> b!282510 (= res!145622 (validKeyInArray!0 k!2581))))

(declare-fun b!282511 () Bool)

(declare-fun e!179347 () Bool)

(assert (=> b!282511 (= e!179347 e!179344)))

(declare-fun res!145617 () Bool)

(assert (=> b!282511 (=> (not res!145617) (not e!179344))))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!282511 (= res!145617 (not (= startIndex!26 i!1267)))))

(declare-fun lt!139632 () array!14093)

(assert (=> b!282511 (= lt!139632 (array!14094 (store (arr!6688 a!3325) i!1267 k!2581) (size!7040 a!3325)))))

(declare-fun b!282513 () Bool)

(declare-fun res!145623 () Bool)

(assert (=> b!282513 (=> (not res!145623) (not e!179346))))

(declare-fun arrayContainsKey!0 (array!14093 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!282513 (= res!145623 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!282514 () Bool)

(declare-fun res!145621 () Bool)

(assert (=> b!282514 (=> (not res!145621) (not e!179346))))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!282514 (= res!145621 (and (= (size!7040 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7040 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7040 a!3325))))))

(declare-fun b!282515 () Bool)

(declare-fun res!145620 () Bool)

(assert (=> b!282515 (=> (not res!145620) (not e!179347))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14093 (_ BitVec 32)) Bool)

(assert (=> b!282515 (= res!145620 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!282516 () Bool)

(assert (=> b!282516 (= e!179346 e!179347)))

(declare-fun res!145619 () Bool)

(assert (=> b!282516 (=> (not res!145619) (not e!179347))))

(declare-datatypes ((SeekEntryResult!1857 0))(
  ( (MissingZero!1857 (index!9598 (_ BitVec 32))) (Found!1857 (index!9599 (_ BitVec 32))) (Intermediate!1857 (undefined!2669 Bool) (index!9600 (_ BitVec 32)) (x!27783 (_ BitVec 32))) (Undefined!1857) (MissingVacant!1857 (index!9601 (_ BitVec 32))) )
))
(declare-fun lt!139633 () SeekEntryResult!1857)

(assert (=> b!282516 (= res!145619 (or (= lt!139633 (MissingZero!1857 i!1267)) (= lt!139633 (MissingVacant!1857 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14093 (_ BitVec 32)) SeekEntryResult!1857)

(assert (=> b!282516 (= lt!139633 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!282512 () Bool)

(assert (=> b!282512 (= e!179344 (not true))))

(assert (=> b!282512 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-datatypes ((Unit!8977 0))(
  ( (Unit!8978) )
))
(declare-fun lt!139634 () Unit!8977)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!14093 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!8977)

(assert (=> b!282512 (= lt!139634 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(assert (=> b!282512 (= (seekEntryOrOpen!0 (select (arr!6688 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6688 a!3325) i!1267 k!2581) startIndex!26) lt!139632 mask!3868))))

(declare-fun lt!139631 () Unit!8977)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!14093 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8977)

(assert (=> b!282512 (= lt!139631 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k!2581 startIndex!26 mask!3868))))

(assert (=> b!282512 (arrayNoDuplicates!0 lt!139632 #b00000000000000000000000000000000 Nil!4514)))

(declare-fun lt!139630 () Unit!8977)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!14093 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4517) Unit!8977)

(assert (=> b!282512 (= lt!139630 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4514))))

(declare-fun res!145616 () Bool)

(assert (=> start!27286 (=> (not res!145616) (not e!179346))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27286 (= res!145616 (validMask!0 mask!3868))))

(assert (=> start!27286 e!179346))

(declare-fun array_inv!4642 (array!14093) Bool)

(assert (=> start!27286 (array_inv!4642 a!3325)))

(assert (=> start!27286 true))

(assert (= (and start!27286 res!145616) b!282514))

(assert (= (and b!282514 res!145621) b!282510))

(assert (= (and b!282510 res!145622) b!282509))

(assert (= (and b!282509 res!145618) b!282513))

(assert (= (and b!282513 res!145623) b!282516))

(assert (= (and b!282516 res!145619) b!282515))

(assert (= (and b!282515 res!145620) b!282511))

(assert (= (and b!282511 res!145617) b!282508))

(assert (= (and b!282508 res!145615) b!282512))

(declare-fun m!297157 () Bool)

(assert (=> b!282508 m!297157))

(assert (=> b!282508 m!297157))

(declare-fun m!297159 () Bool)

(assert (=> b!282508 m!297159))

(declare-fun m!297161 () Bool)

(assert (=> start!27286 m!297161))

(declare-fun m!297163 () Bool)

(assert (=> start!27286 m!297163))

(declare-fun m!297165 () Bool)

(assert (=> b!282513 m!297165))

(declare-fun m!297167 () Bool)

(assert (=> b!282510 m!297167))

(declare-fun m!297169 () Bool)

(assert (=> b!282511 m!297169))

(declare-fun m!297171 () Bool)

(assert (=> b!282515 m!297171))

(declare-fun m!297173 () Bool)

(assert (=> b!282512 m!297173))

(declare-fun m!297175 () Bool)

(assert (=> b!282512 m!297175))

(assert (=> b!282512 m!297169))

(declare-fun m!297177 () Bool)

(assert (=> b!282512 m!297177))

(declare-fun m!297179 () Bool)

(assert (=> b!282512 m!297179))

(assert (=> b!282512 m!297175))

(declare-fun m!297181 () Bool)

(assert (=> b!282512 m!297181))

(assert (=> b!282512 m!297157))

(declare-fun m!297183 () Bool)

(assert (=> b!282512 m!297183))

(declare-fun m!297185 () Bool)

(assert (=> b!282512 m!297185))

(assert (=> b!282512 m!297157))

(declare-fun m!297187 () Bool)

(assert (=> b!282512 m!297187))

(declare-fun m!297189 () Bool)

(assert (=> b!282509 m!297189))

(declare-fun m!297191 () Bool)

(assert (=> b!282516 m!297191))

(push 1)

