; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26184 () Bool)

(assert start!26184)

(declare-fun b!270315 () Bool)

(declare-fun res!134375 () Bool)

(declare-fun e!174253 () Bool)

(assert (=> b!270315 (=> (not res!134375) (not e!174253))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!270315 (= res!134375 (validKeyInArray!0 k0!2581))))

(declare-fun b!270316 () Bool)

(declare-fun e!174254 () Bool)

(assert (=> b!270316 (= e!174253 e!174254)))

(declare-fun res!134371 () Bool)

(assert (=> b!270316 (=> (not res!134371) (not e!174254))))

(declare-datatypes ((SeekEntryResult!1453 0))(
  ( (MissingZero!1453 (index!7982 (_ BitVec 32))) (Found!1453 (index!7983 (_ BitVec 32))) (Intermediate!1453 (undefined!2265 Bool) (index!7984 (_ BitVec 32)) (x!26290 (_ BitVec 32))) (Undefined!1453) (MissingVacant!1453 (index!7985 (_ BitVec 32))) )
))
(declare-fun lt!135616 () SeekEntryResult!1453)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!270316 (= res!134371 (or (= lt!135616 (MissingZero!1453 i!1267)) (= lt!135616 (MissingVacant!1453 i!1267))))))

(declare-datatypes ((array!13270 0))(
  ( (array!13271 (arr!6284 (Array (_ BitVec 32) (_ BitVec 64))) (size!6636 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13270)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13270 (_ BitVec 32)) SeekEntryResult!1453)

(assert (=> b!270316 (= lt!135616 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!270317 () Bool)

(declare-datatypes ((Unit!8433 0))(
  ( (Unit!8434) )
))
(declare-fun e!174255 () Unit!8433)

(declare-fun Unit!8435 () Unit!8433)

(assert (=> b!270317 (= e!174255 Unit!8435)))

(declare-fun b!270318 () Bool)

(declare-fun e!174252 () Bool)

(assert (=> b!270318 (= e!174252 (not true))))

(declare-fun lt!135617 () array!13270)

(assert (=> b!270318 (= (seekEntryOrOpen!0 k0!2581 lt!135617 mask!3868) (Found!1453 i!1267))))

(declare-fun lt!135613 () Unit!8433)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFinds!0 (array!13270 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!8433)

(assert (=> b!270318 (= lt!135613 (lemmaPutValidKeyAtRightPlaceThenFinds!0 a!3325 i!1267 k0!2581 mask!3868))))

(declare-fun lt!135614 () Unit!8433)

(assert (=> b!270318 (= lt!135614 e!174255)))

(declare-fun c!45524 () Bool)

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!270318 (= c!45524 (bvslt startIndex!26 (bvsub (size!6636 a!3325) #b00000000000000000000000000000001)))))

(declare-fun b!270319 () Bool)

(declare-fun res!134372 () Bool)

(assert (=> b!270319 (=> (not res!134372) (not e!174253))))

(declare-datatypes ((List!4113 0))(
  ( (Nil!4110) (Cons!4109 (h!4776 (_ BitVec 64)) (t!9203 List!4113)) )
))
(declare-fun arrayNoDuplicates!0 (array!13270 (_ BitVec 32) List!4113) Bool)

(assert (=> b!270319 (= res!134372 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4110))))

(declare-fun b!270320 () Bool)

(assert (=> b!270320 (= e!174254 e!174252)))

(declare-fun res!134376 () Bool)

(assert (=> b!270320 (=> (not res!134376) (not e!174252))))

(assert (=> b!270320 (= res!134376 (= startIndex!26 i!1267))))

(assert (=> b!270320 (= lt!135617 (array!13271 (store (arr!6284 a!3325) i!1267 k0!2581) (size!6636 a!3325)))))

(declare-fun b!270322 () Bool)

(declare-fun res!134374 () Bool)

(assert (=> b!270322 (=> (not res!134374) (not e!174253))))

(assert (=> b!270322 (= res!134374 (and (= (size!6636 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6636 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6636 a!3325))))))

(declare-fun b!270323 () Bool)

(declare-fun res!134369 () Bool)

(assert (=> b!270323 (=> (not res!134369) (not e!174253))))

(declare-fun arrayContainsKey!0 (array!13270 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!270323 (= res!134369 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!270324 () Bool)

(declare-fun lt!135615 () Unit!8433)

(assert (=> b!270324 (= e!174255 lt!135615)))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!13270 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8433)

(assert (=> b!270324 (= lt!135615 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k0!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13270 (_ BitVec 32)) Bool)

(assert (=> b!270324 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) lt!135617 mask!3868)))

(declare-fun res!134373 () Bool)

(assert (=> start!26184 (=> (not res!134373) (not e!174253))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26184 (= res!134373 (validMask!0 mask!3868))))

(assert (=> start!26184 e!174253))

(declare-fun array_inv!4238 (array!13270) Bool)

(assert (=> start!26184 (array_inv!4238 a!3325)))

(assert (=> start!26184 true))

(declare-fun b!270321 () Bool)

(declare-fun res!134370 () Bool)

(assert (=> b!270321 (=> (not res!134370) (not e!174254))))

(assert (=> b!270321 (= res!134370 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(assert (= (and start!26184 res!134373) b!270322))

(assert (= (and b!270322 res!134374) b!270315))

(assert (= (and b!270315 res!134375) b!270319))

(assert (= (and b!270319 res!134372) b!270323))

(assert (= (and b!270323 res!134369) b!270316))

(assert (= (and b!270316 res!134371) b!270321))

(assert (= (and b!270321 res!134370) b!270320))

(assert (= (and b!270320 res!134376) b!270318))

(assert (= (and b!270318 c!45524) b!270324))

(assert (= (and b!270318 (not c!45524)) b!270317))

(declare-fun m!285985 () Bool)

(assert (=> start!26184 m!285985))

(declare-fun m!285987 () Bool)

(assert (=> start!26184 m!285987))

(declare-fun m!285989 () Bool)

(assert (=> b!270319 m!285989))

(declare-fun m!285991 () Bool)

(assert (=> b!270316 m!285991))

(declare-fun m!285993 () Bool)

(assert (=> b!270323 m!285993))

(declare-fun m!285995 () Bool)

(assert (=> b!270324 m!285995))

(declare-fun m!285997 () Bool)

(assert (=> b!270324 m!285997))

(declare-fun m!285999 () Bool)

(assert (=> b!270320 m!285999))

(declare-fun m!286001 () Bool)

(assert (=> b!270318 m!286001))

(declare-fun m!286003 () Bool)

(assert (=> b!270318 m!286003))

(declare-fun m!286005 () Bool)

(assert (=> b!270321 m!286005))

(declare-fun m!286007 () Bool)

(assert (=> b!270315 m!286007))

(check-sat (not b!270315) (not b!270316) (not b!270321) (not start!26184) (not b!270323) (not b!270324) (not b!270319) (not b!270318))
(check-sat)
