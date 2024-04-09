; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26172 () Bool)

(assert start!26172)

(declare-fun b!270135 () Bool)

(declare-fun res!134229 () Bool)

(declare-fun e!174163 () Bool)

(assert (=> b!270135 (=> (not res!134229) (not e!174163))))

(declare-datatypes ((array!13258 0))(
  ( (array!13259 (arr!6278 (Array (_ BitVec 32) (_ BitVec 64))) (size!6630 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13258)

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!270135 (= res!134229 (and (= (size!6630 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6630 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6630 a!3325))))))

(declare-fun b!270136 () Bool)

(declare-fun res!134225 () Bool)

(assert (=> b!270136 (=> (not res!134225) (not e!174163))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13258 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!270136 (= res!134225 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!270137 () Bool)

(declare-fun e!174166 () Bool)

(declare-fun e!174162 () Bool)

(assert (=> b!270137 (= e!174166 e!174162)))

(declare-fun res!134231 () Bool)

(assert (=> b!270137 (=> (not res!134231) (not e!174162))))

(assert (=> b!270137 (= res!134231 (= startIndex!26 i!1267))))

(declare-fun lt!135524 () array!13258)

(assert (=> b!270137 (= lt!135524 (array!13259 (store (arr!6278 a!3325) i!1267 k0!2581) (size!6630 a!3325)))))

(declare-fun b!270138 () Bool)

(declare-datatypes ((Unit!8415 0))(
  ( (Unit!8416) )
))
(declare-fun e!174164 () Unit!8415)

(declare-fun Unit!8417 () Unit!8415)

(assert (=> b!270138 (= e!174164 Unit!8417)))

(declare-fun res!134232 () Bool)

(assert (=> start!26172 (=> (not res!134232) (not e!174163))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26172 (= res!134232 (validMask!0 mask!3868))))

(assert (=> start!26172 e!174163))

(declare-fun array_inv!4232 (array!13258) Bool)

(assert (=> start!26172 (array_inv!4232 a!3325)))

(assert (=> start!26172 true))

(declare-fun b!270139 () Bool)

(declare-fun res!134228 () Bool)

(assert (=> b!270139 (=> (not res!134228) (not e!174163))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!270139 (= res!134228 (validKeyInArray!0 k0!2581))))

(declare-fun b!270140 () Bool)

(declare-fun lt!135525 () Unit!8415)

(assert (=> b!270140 (= e!174164 lt!135525)))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!13258 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8415)

(assert (=> b!270140 (= lt!135525 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k0!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13258 (_ BitVec 32)) Bool)

(assert (=> b!270140 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) lt!135524 mask!3868)))

(declare-fun b!270141 () Bool)

(assert (=> b!270141 (= e!174162 (not true))))

(declare-datatypes ((SeekEntryResult!1447 0))(
  ( (MissingZero!1447 (index!7958 (_ BitVec 32))) (Found!1447 (index!7959 (_ BitVec 32))) (Intermediate!1447 (undefined!2259 Bool) (index!7960 (_ BitVec 32)) (x!26268 (_ BitVec 32))) (Undefined!1447) (MissingVacant!1447 (index!7961 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13258 (_ BitVec 32)) SeekEntryResult!1447)

(assert (=> b!270141 (= (seekEntryOrOpen!0 k0!2581 lt!135524 mask!3868) (Found!1447 i!1267))))

(declare-fun lt!135527 () Unit!8415)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFinds!0 (array!13258 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!8415)

(assert (=> b!270141 (= lt!135527 (lemmaPutValidKeyAtRightPlaceThenFinds!0 a!3325 i!1267 k0!2581 mask!3868))))

(declare-fun lt!135523 () Unit!8415)

(assert (=> b!270141 (= lt!135523 e!174164)))

(declare-fun c!45506 () Bool)

(assert (=> b!270141 (= c!45506 (bvslt startIndex!26 (bvsub (size!6630 a!3325) #b00000000000000000000000000000001)))))

(declare-fun b!270142 () Bool)

(assert (=> b!270142 (= e!174163 e!174166)))

(declare-fun res!134226 () Bool)

(assert (=> b!270142 (=> (not res!134226) (not e!174166))))

(declare-fun lt!135526 () SeekEntryResult!1447)

(assert (=> b!270142 (= res!134226 (or (= lt!135526 (MissingZero!1447 i!1267)) (= lt!135526 (MissingVacant!1447 i!1267))))))

(assert (=> b!270142 (= lt!135526 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!270143 () Bool)

(declare-fun res!134227 () Bool)

(assert (=> b!270143 (=> (not res!134227) (not e!174166))))

(assert (=> b!270143 (= res!134227 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!270144 () Bool)

(declare-fun res!134230 () Bool)

(assert (=> b!270144 (=> (not res!134230) (not e!174163))))

(declare-datatypes ((List!4107 0))(
  ( (Nil!4104) (Cons!4103 (h!4770 (_ BitVec 64)) (t!9197 List!4107)) )
))
(declare-fun arrayNoDuplicates!0 (array!13258 (_ BitVec 32) List!4107) Bool)

(assert (=> b!270144 (= res!134230 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4104))))

(assert (= (and start!26172 res!134232) b!270135))

(assert (= (and b!270135 res!134229) b!270139))

(assert (= (and b!270139 res!134228) b!270144))

(assert (= (and b!270144 res!134230) b!270136))

(assert (= (and b!270136 res!134225) b!270142))

(assert (= (and b!270142 res!134226) b!270143))

(assert (= (and b!270143 res!134227) b!270137))

(assert (= (and b!270137 res!134231) b!270141))

(assert (= (and b!270141 c!45506) b!270140))

(assert (= (and b!270141 (not c!45506)) b!270138))

(declare-fun m!285841 () Bool)

(assert (=> b!270140 m!285841))

(declare-fun m!285843 () Bool)

(assert (=> b!270140 m!285843))

(declare-fun m!285845 () Bool)

(assert (=> b!270142 m!285845))

(declare-fun m!285847 () Bool)

(assert (=> b!270143 m!285847))

(declare-fun m!285849 () Bool)

(assert (=> b!270136 m!285849))

(declare-fun m!285851 () Bool)

(assert (=> b!270144 m!285851))

(declare-fun m!285853 () Bool)

(assert (=> b!270139 m!285853))

(declare-fun m!285855 () Bool)

(assert (=> b!270137 m!285855))

(declare-fun m!285857 () Bool)

(assert (=> b!270141 m!285857))

(declare-fun m!285859 () Bool)

(assert (=> b!270141 m!285859))

(declare-fun m!285861 () Bool)

(assert (=> start!26172 m!285861))

(declare-fun m!285863 () Bool)

(assert (=> start!26172 m!285863))

(check-sat (not b!270142) (not b!270144) (not b!270140) (not start!26172) (not b!270141) (not b!270139) (not b!270143) (not b!270136))
(check-sat)
