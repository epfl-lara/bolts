; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26180 () Bool)

(assert start!26180)

(declare-fun b!270255 () Bool)

(declare-fun res!134327 () Bool)

(declare-fun e!174223 () Bool)

(assert (=> b!270255 (=> (not res!134327) (not e!174223))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!270255 (= res!134327 (validKeyInArray!0 k!2581))))

(declare-fun b!270256 () Bool)

(declare-fun res!134323 () Bool)

(declare-fun e!174222 () Bool)

(assert (=> b!270256 (=> (not res!134323) (not e!174222))))

(declare-datatypes ((array!13266 0))(
  ( (array!13267 (arr!6282 (Array (_ BitVec 32) (_ BitVec 64))) (size!6634 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13266)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13266 (_ BitVec 32)) Bool)

(assert (=> b!270256 (= res!134323 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!270257 () Bool)

(declare-fun e!174224 () Bool)

(assert (=> b!270257 (= e!174224 (not true))))

(declare-fun lt!135587 () array!13266)

(declare-fun i!1267 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!1451 0))(
  ( (MissingZero!1451 (index!7974 (_ BitVec 32))) (Found!1451 (index!7975 (_ BitVec 32))) (Intermediate!1451 (undefined!2263 Bool) (index!7976 (_ BitVec 32)) (x!26280 (_ BitVec 32))) (Undefined!1451) (MissingVacant!1451 (index!7977 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13266 (_ BitVec 32)) SeekEntryResult!1451)

(assert (=> b!270257 (= (seekEntryOrOpen!0 k!2581 lt!135587 mask!3868) (Found!1451 i!1267))))

(declare-datatypes ((Unit!8427 0))(
  ( (Unit!8428) )
))
(declare-fun lt!135586 () Unit!8427)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFinds!0 (array!13266 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!8427)

(assert (=> b!270257 (= lt!135586 (lemmaPutValidKeyAtRightPlaceThenFinds!0 a!3325 i!1267 k!2581 mask!3868))))

(declare-fun lt!135585 () Unit!8427)

(declare-fun e!174226 () Unit!8427)

(assert (=> b!270257 (= lt!135585 e!174226)))

(declare-fun c!45518 () Bool)

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!270257 (= c!45518 (bvslt startIndex!26 (bvsub (size!6634 a!3325) #b00000000000000000000000000000001)))))

(declare-fun b!270258 () Bool)

(declare-fun Unit!8429 () Unit!8427)

(assert (=> b!270258 (= e!174226 Unit!8429)))

(declare-fun b!270259 () Bool)

(assert (=> b!270259 (= e!174222 e!174224)))

(declare-fun res!134322 () Bool)

(assert (=> b!270259 (=> (not res!134322) (not e!174224))))

(assert (=> b!270259 (= res!134322 (= startIndex!26 i!1267))))

(assert (=> b!270259 (= lt!135587 (array!13267 (store (arr!6282 a!3325) i!1267 k!2581) (size!6634 a!3325)))))

(declare-fun b!270260 () Bool)

(assert (=> b!270260 (= e!174223 e!174222)))

(declare-fun res!134326 () Bool)

(assert (=> b!270260 (=> (not res!134326) (not e!174222))))

(declare-fun lt!135584 () SeekEntryResult!1451)

(assert (=> b!270260 (= res!134326 (or (= lt!135584 (MissingZero!1451 i!1267)) (= lt!135584 (MissingVacant!1451 i!1267))))))

(assert (=> b!270260 (= lt!135584 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!270261 () Bool)

(declare-fun res!134321 () Bool)

(assert (=> b!270261 (=> (not res!134321) (not e!174223))))

(assert (=> b!270261 (= res!134321 (and (= (size!6634 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6634 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6634 a!3325))))))

(declare-fun res!134324 () Bool)

(assert (=> start!26180 (=> (not res!134324) (not e!174223))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26180 (= res!134324 (validMask!0 mask!3868))))

(assert (=> start!26180 e!174223))

(declare-fun array_inv!4236 (array!13266) Bool)

(assert (=> start!26180 (array_inv!4236 a!3325)))

(assert (=> start!26180 true))

(declare-fun b!270262 () Bool)

(declare-fun res!134325 () Bool)

(assert (=> b!270262 (=> (not res!134325) (not e!174223))))

(declare-datatypes ((List!4111 0))(
  ( (Nil!4108) (Cons!4107 (h!4774 (_ BitVec 64)) (t!9201 List!4111)) )
))
(declare-fun arrayNoDuplicates!0 (array!13266 (_ BitVec 32) List!4111) Bool)

(assert (=> b!270262 (= res!134325 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4108))))

(declare-fun b!270263 () Bool)

(declare-fun lt!135583 () Unit!8427)

(assert (=> b!270263 (= e!174226 lt!135583)))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!13266 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8427)

(assert (=> b!270263 (= lt!135583 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(assert (=> b!270263 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) lt!135587 mask!3868)))

(declare-fun b!270264 () Bool)

(declare-fun res!134328 () Bool)

(assert (=> b!270264 (=> (not res!134328) (not e!174223))))

(declare-fun arrayContainsKey!0 (array!13266 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!270264 (= res!134328 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(assert (= (and start!26180 res!134324) b!270261))

(assert (= (and b!270261 res!134321) b!270255))

(assert (= (and b!270255 res!134327) b!270262))

(assert (= (and b!270262 res!134325) b!270264))

(assert (= (and b!270264 res!134328) b!270260))

(assert (= (and b!270260 res!134326) b!270256))

(assert (= (and b!270256 res!134323) b!270259))

(assert (= (and b!270259 res!134322) b!270257))

(assert (= (and b!270257 c!45518) b!270263))

(assert (= (and b!270257 (not c!45518)) b!270258))

(declare-fun m!285937 () Bool)

(assert (=> b!270257 m!285937))

(declare-fun m!285939 () Bool)

(assert (=> b!270257 m!285939))

(declare-fun m!285941 () Bool)

(assert (=> start!26180 m!285941))

(declare-fun m!285943 () Bool)

(assert (=> start!26180 m!285943))

(declare-fun m!285945 () Bool)

(assert (=> b!270262 m!285945))

(declare-fun m!285947 () Bool)

(assert (=> b!270255 m!285947))

(declare-fun m!285949 () Bool)

(assert (=> b!270260 m!285949))

(declare-fun m!285951 () Bool)

(assert (=> b!270256 m!285951))

(declare-fun m!285953 () Bool)

(assert (=> b!270264 m!285953))

(declare-fun m!285955 () Bool)

(assert (=> b!270259 m!285955))

(declare-fun m!285957 () Bool)

(assert (=> b!270263 m!285957))

(declare-fun m!285959 () Bool)

(assert (=> b!270263 m!285959))

(push 1)

(assert (not b!270264))

