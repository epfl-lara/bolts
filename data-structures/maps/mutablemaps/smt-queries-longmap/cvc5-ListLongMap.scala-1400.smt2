; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27262 () Bool)

(assert start!27262)

(declare-fun b!282184 () Bool)

(declare-fun e!179202 () Bool)

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-datatypes ((array!14069 0))(
  ( (array!14070 (arr!6676 (Array (_ BitVec 32) (_ BitVec 64))) (size!7028 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14069)

(assert (=> b!282184 (= e!179202 (not (or (bvsge startIndex!26 (bvsub (size!7028 a!3325) #b00000000000000000000000000000001)) (bvsge (bvadd #b00000000000000000000000000000001 startIndex!26) #b00000000000000000000000000000000))))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14069 (_ BitVec 32)) Bool)

(assert (=> b!282184 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-datatypes ((Unit!8953 0))(
  ( (Unit!8954) )
))
(declare-fun lt!139452 () Unit!8953)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!14069 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!8953)

(assert (=> b!282184 (= lt!139452 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(declare-fun lt!139451 () array!14069)

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun i!1267 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!1845 0))(
  ( (MissingZero!1845 (index!9550 (_ BitVec 32))) (Found!1845 (index!9551 (_ BitVec 32))) (Intermediate!1845 (undefined!2657 Bool) (index!9552 (_ BitVec 32)) (x!27739 (_ BitVec 32))) (Undefined!1845) (MissingVacant!1845 (index!9553 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14069 (_ BitVec 32)) SeekEntryResult!1845)

(assert (=> b!282184 (= (seekEntryOrOpen!0 (select (arr!6676 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6676 a!3325) i!1267 k!2581) startIndex!26) lt!139451 mask!3868))))

(declare-fun lt!139450 () Unit!8953)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!14069 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8953)

(assert (=> b!282184 (= lt!139450 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k!2581 startIndex!26 mask!3868))))

(declare-datatypes ((List!4505 0))(
  ( (Nil!4502) (Cons!4501 (h!5171 (_ BitVec 64)) (t!9595 List!4505)) )
))
(declare-fun arrayNoDuplicates!0 (array!14069 (_ BitVec 32) List!4505) Bool)

(assert (=> b!282184 (arrayNoDuplicates!0 lt!139451 #b00000000000000000000000000000000 Nil!4502)))

(declare-fun lt!139453 () Unit!8953)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!14069 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4505) Unit!8953)

(assert (=> b!282184 (= lt!139453 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4502))))

(declare-fun b!282185 () Bool)

(declare-fun res!145296 () Bool)

(declare-fun e!179201 () Bool)

(assert (=> b!282185 (=> (not res!145296) (not e!179201))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!282185 (= res!145296 (validKeyInArray!0 k!2581))))

(declare-fun b!282186 () Bool)

(declare-fun e!179203 () Bool)

(assert (=> b!282186 (= e!179201 e!179203)))

(declare-fun res!145297 () Bool)

(assert (=> b!282186 (=> (not res!145297) (not e!179203))))

(declare-fun lt!139454 () SeekEntryResult!1845)

(assert (=> b!282186 (= res!145297 (or (= lt!139454 (MissingZero!1845 i!1267)) (= lt!139454 (MissingVacant!1845 i!1267))))))

(assert (=> b!282186 (= lt!139454 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!282187 () Bool)

(declare-fun res!145292 () Bool)

(assert (=> b!282187 (=> (not res!145292) (not e!179202))))

(assert (=> b!282187 (= res!145292 (validKeyInArray!0 (select (arr!6676 a!3325) startIndex!26)))))

(declare-fun b!282188 () Bool)

(declare-fun res!145291 () Bool)

(assert (=> b!282188 (=> (not res!145291) (not e!179201))))

(assert (=> b!282188 (= res!145291 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4502))))

(declare-fun b!282189 () Bool)

(declare-fun res!145298 () Bool)

(assert (=> b!282189 (=> (not res!145298) (not e!179201))))

(assert (=> b!282189 (= res!145298 (and (= (size!7028 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7028 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7028 a!3325))))))

(declare-fun b!282191 () Bool)

(assert (=> b!282191 (= e!179203 e!179202)))

(declare-fun res!145293 () Bool)

(assert (=> b!282191 (=> (not res!145293) (not e!179202))))

(assert (=> b!282191 (= res!145293 (not (= startIndex!26 i!1267)))))

(assert (=> b!282191 (= lt!139451 (array!14070 (store (arr!6676 a!3325) i!1267 k!2581) (size!7028 a!3325)))))

(declare-fun b!282192 () Bool)

(declare-fun res!145294 () Bool)

(assert (=> b!282192 (=> (not res!145294) (not e!179203))))

(assert (=> b!282192 (= res!145294 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun res!145299 () Bool)

(assert (=> start!27262 (=> (not res!145299) (not e!179201))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27262 (= res!145299 (validMask!0 mask!3868))))

(assert (=> start!27262 e!179201))

(declare-fun array_inv!4630 (array!14069) Bool)

(assert (=> start!27262 (array_inv!4630 a!3325)))

(assert (=> start!27262 true))

(declare-fun b!282190 () Bool)

(declare-fun res!145295 () Bool)

(assert (=> b!282190 (=> (not res!145295) (not e!179201))))

(declare-fun arrayContainsKey!0 (array!14069 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!282190 (= res!145295 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(assert (= (and start!27262 res!145299) b!282189))

(assert (= (and b!282189 res!145298) b!282185))

(assert (= (and b!282185 res!145296) b!282188))

(assert (= (and b!282188 res!145291) b!282190))

(assert (= (and b!282190 res!145295) b!282186))

(assert (= (and b!282186 res!145297) b!282192))

(assert (= (and b!282192 res!145294) b!282191))

(assert (= (and b!282191 res!145293) b!282187))

(assert (= (and b!282187 res!145292) b!282184))

(declare-fun m!296725 () Bool)

(assert (=> b!282187 m!296725))

(assert (=> b!282187 m!296725))

(declare-fun m!296727 () Bool)

(assert (=> b!282187 m!296727))

(declare-fun m!296729 () Bool)

(assert (=> b!282190 m!296729))

(declare-fun m!296731 () Bool)

(assert (=> b!282185 m!296731))

(declare-fun m!296733 () Bool)

(assert (=> b!282188 m!296733))

(declare-fun m!296735 () Bool)

(assert (=> b!282192 m!296735))

(declare-fun m!296737 () Bool)

(assert (=> b!282191 m!296737))

(declare-fun m!296739 () Bool)

(assert (=> b!282186 m!296739))

(declare-fun m!296741 () Bool)

(assert (=> start!27262 m!296741))

(declare-fun m!296743 () Bool)

(assert (=> start!27262 m!296743))

(declare-fun m!296745 () Bool)

(assert (=> b!282184 m!296745))

(declare-fun m!296747 () Bool)

(assert (=> b!282184 m!296747))

(declare-fun m!296749 () Bool)

(assert (=> b!282184 m!296749))

(assert (=> b!282184 m!296747))

(declare-fun m!296751 () Bool)

(assert (=> b!282184 m!296751))

(assert (=> b!282184 m!296737))

(declare-fun m!296753 () Bool)

(assert (=> b!282184 m!296753))

(assert (=> b!282184 m!296725))

(declare-fun m!296755 () Bool)

(assert (=> b!282184 m!296755))

(declare-fun m!296757 () Bool)

(assert (=> b!282184 m!296757))

(assert (=> b!282184 m!296725))

(declare-fun m!296759 () Bool)

(assert (=> b!282184 m!296759))

(push 1)

