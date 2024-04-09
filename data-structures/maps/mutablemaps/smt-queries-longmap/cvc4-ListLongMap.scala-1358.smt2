; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26720 () Bool)

(assert start!26720)

(declare-fun b!277284 () Bool)

(declare-fun res!141248 () Bool)

(declare-fun e!176986 () Bool)

(assert (=> b!277284 (=> (not res!141248) (not e!176986))))

(declare-datatypes ((array!13806 0))(
  ( (array!13807 (arr!6552 (Array (_ BitVec 32) (_ BitVec 64))) (size!6904 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13806)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13806 (_ BitVec 32)) Bool)

(assert (=> b!277284 (= res!141248 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!277285 () Bool)

(declare-datatypes ((Unit!8733 0))(
  ( (Unit!8734) )
))
(declare-fun e!176987 () Unit!8733)

(declare-fun lt!137927 () Unit!8733)

(assert (=> b!277285 (= e!176987 lt!137927)))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!13806 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8733)

(assert (=> b!277285 (= lt!137927 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(assert (=> b!277285 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) (array!13807 (store (arr!6552 a!3325) i!1267 k!2581) (size!6904 a!3325)) mask!3868)))

(declare-fun b!277286 () Bool)

(declare-fun res!141246 () Bool)

(declare-fun e!176989 () Bool)

(assert (=> b!277286 (=> (not res!141246) (not e!176989))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!277286 (= res!141246 (validKeyInArray!0 k!2581))))

(declare-fun b!277287 () Bool)

(assert (=> b!277287 (= e!176986 false)))

(declare-fun lt!137925 () Unit!8733)

(assert (=> b!277287 (= lt!137925 e!176987)))

(declare-fun c!45572 () Bool)

(assert (=> b!277287 (= c!45572 (bvslt startIndex!26 (bvsub (size!6904 a!3325) #b00000000000000000000000000000001)))))

(declare-fun b!277288 () Bool)

(declare-fun res!141247 () Bool)

(assert (=> b!277288 (=> (not res!141247) (not e!176989))))

(assert (=> b!277288 (= res!141247 (and (= (size!6904 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6904 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6904 a!3325))))))

(declare-fun res!141243 () Bool)

(assert (=> start!26720 (=> (not res!141243) (not e!176989))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26720 (= res!141243 (validMask!0 mask!3868))))

(assert (=> start!26720 e!176989))

(declare-fun array_inv!4506 (array!13806) Bool)

(assert (=> start!26720 (array_inv!4506 a!3325)))

(assert (=> start!26720 true))

(declare-fun b!277289 () Bool)

(declare-fun res!141242 () Bool)

(assert (=> b!277289 (=> (not res!141242) (not e!176989))))

(declare-fun arrayContainsKey!0 (array!13806 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!277289 (= res!141242 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!277290 () Bool)

(assert (=> b!277290 (= e!176989 e!176986)))

(declare-fun res!141244 () Bool)

(assert (=> b!277290 (=> (not res!141244) (not e!176986))))

(declare-datatypes ((SeekEntryResult!1721 0))(
  ( (MissingZero!1721 (index!9054 (_ BitVec 32))) (Found!1721 (index!9055 (_ BitVec 32))) (Intermediate!1721 (undefined!2533 Bool) (index!9056 (_ BitVec 32)) (x!27270 (_ BitVec 32))) (Undefined!1721) (MissingVacant!1721 (index!9057 (_ BitVec 32))) )
))
(declare-fun lt!137926 () SeekEntryResult!1721)

(assert (=> b!277290 (= res!141244 (or (= lt!137926 (MissingZero!1721 i!1267)) (= lt!137926 (MissingVacant!1721 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13806 (_ BitVec 32)) SeekEntryResult!1721)

(assert (=> b!277290 (= lt!137926 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!277291 () Bool)

(declare-fun res!141245 () Bool)

(assert (=> b!277291 (=> (not res!141245) (not e!176989))))

(declare-datatypes ((List!4381 0))(
  ( (Nil!4378) (Cons!4377 (h!5044 (_ BitVec 64)) (t!9471 List!4381)) )
))
(declare-fun arrayNoDuplicates!0 (array!13806 (_ BitVec 32) List!4381) Bool)

(assert (=> b!277291 (= res!141245 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4378))))

(declare-fun b!277292 () Bool)

(declare-fun res!141249 () Bool)

(assert (=> b!277292 (=> (not res!141249) (not e!176986))))

(assert (=> b!277292 (= res!141249 (= startIndex!26 i!1267))))

(declare-fun b!277293 () Bool)

(declare-fun Unit!8735 () Unit!8733)

(assert (=> b!277293 (= e!176987 Unit!8735)))

(assert (= (and start!26720 res!141243) b!277288))

(assert (= (and b!277288 res!141247) b!277286))

(assert (= (and b!277286 res!141246) b!277291))

(assert (= (and b!277291 res!141245) b!277289))

(assert (= (and b!277289 res!141242) b!277290))

(assert (= (and b!277290 res!141244) b!277284))

(assert (= (and b!277284 res!141248) b!277292))

(assert (= (and b!277292 res!141249) b!277287))

(assert (= (and b!277287 c!45572) b!277285))

(assert (= (and b!277287 (not c!45572)) b!277293))

(declare-fun m!292409 () Bool)

(assert (=> b!277289 m!292409))

(declare-fun m!292411 () Bool)

(assert (=> b!277291 m!292411))

(declare-fun m!292413 () Bool)

(assert (=> b!277285 m!292413))

(declare-fun m!292415 () Bool)

(assert (=> b!277285 m!292415))

(declare-fun m!292417 () Bool)

(assert (=> b!277285 m!292417))

(declare-fun m!292419 () Bool)

(assert (=> start!26720 m!292419))

(declare-fun m!292421 () Bool)

(assert (=> start!26720 m!292421))

(declare-fun m!292423 () Bool)

(assert (=> b!277286 m!292423))

(declare-fun m!292425 () Bool)

(assert (=> b!277290 m!292425))

(declare-fun m!292427 () Bool)

(assert (=> b!277284 m!292427))

(push 1)

(assert (not b!277286))

(assert (not b!277284))

(assert (not start!26720))

(assert (not b!277289))

(assert (not b!277290))

(assert (not b!277285))

(assert (not b!277291))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

