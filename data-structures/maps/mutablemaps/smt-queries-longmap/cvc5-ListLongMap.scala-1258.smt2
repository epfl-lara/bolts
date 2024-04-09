; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26116 () Bool)

(assert start!26116)

(declare-fun b!269295 () Bool)

(declare-fun res!133555 () Bool)

(declare-fun e!173785 () Bool)

(assert (=> b!269295 (=> (not res!133555) (not e!173785))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!269295 (= res!133555 (validKeyInArray!0 k!2581))))

(declare-fun res!133560 () Bool)

(assert (=> start!26116 (=> (not res!133560) (not e!173785))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26116 (= res!133560 (validMask!0 mask!3868))))

(assert (=> start!26116 e!173785))

(declare-datatypes ((array!13202 0))(
  ( (array!13203 (arr!6250 (Array (_ BitVec 32) (_ BitVec 64))) (size!6602 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13202)

(declare-fun array_inv!4204 (array!13202) Bool)

(assert (=> start!26116 (array_inv!4204 a!3325)))

(assert (=> start!26116 true))

(declare-fun b!269296 () Bool)

(declare-fun res!133553 () Bool)

(declare-fun e!173788 () Bool)

(assert (=> b!269296 (=> (not res!133553) (not e!173788))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!269296 (= res!133553 (= startIndex!26 i!1267))))

(declare-fun b!269297 () Bool)

(assert (=> b!269297 (= e!173788 false)))

(declare-datatypes ((Unit!8331 0))(
  ( (Unit!8332) )
))
(declare-fun lt!135191 () Unit!8331)

(declare-fun e!173786 () Unit!8331)

(assert (=> b!269297 (= lt!135191 e!173786)))

(declare-fun c!45422 () Bool)

(assert (=> b!269297 (= c!45422 (bvslt startIndex!26 (bvsub (size!6602 a!3325) #b00000000000000000000000000000001)))))

(declare-fun b!269298 () Bool)

(declare-fun Unit!8333 () Unit!8331)

(assert (=> b!269298 (= e!173786 Unit!8333)))

(declare-fun b!269299 () Bool)

(declare-fun res!133558 () Bool)

(assert (=> b!269299 (=> (not res!133558) (not e!173785))))

(declare-fun arrayContainsKey!0 (array!13202 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!269299 (= res!133558 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!269300 () Bool)

(assert (=> b!269300 (= e!173785 e!173788)))

(declare-fun res!133557 () Bool)

(assert (=> b!269300 (=> (not res!133557) (not e!173788))))

(declare-datatypes ((SeekEntryResult!1419 0))(
  ( (MissingZero!1419 (index!7846 (_ BitVec 32))) (Found!1419 (index!7847 (_ BitVec 32))) (Intermediate!1419 (undefined!2231 Bool) (index!7848 (_ BitVec 32)) (x!26168 (_ BitVec 32))) (Undefined!1419) (MissingVacant!1419 (index!7849 (_ BitVec 32))) )
))
(declare-fun lt!135190 () SeekEntryResult!1419)

(assert (=> b!269300 (= res!133557 (or (= lt!135190 (MissingZero!1419 i!1267)) (= lt!135190 (MissingVacant!1419 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13202 (_ BitVec 32)) SeekEntryResult!1419)

(assert (=> b!269300 (= lt!135190 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!269301 () Bool)

(declare-fun res!133554 () Bool)

(assert (=> b!269301 (=> (not res!133554) (not e!173785))))

(assert (=> b!269301 (= res!133554 (and (= (size!6602 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6602 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6602 a!3325))))))

(declare-fun b!269302 () Bool)

(declare-fun res!133559 () Bool)

(assert (=> b!269302 (=> (not res!133559) (not e!173785))))

(declare-datatypes ((List!4079 0))(
  ( (Nil!4076) (Cons!4075 (h!4742 (_ BitVec 64)) (t!9169 List!4079)) )
))
(declare-fun arrayNoDuplicates!0 (array!13202 (_ BitVec 32) List!4079) Bool)

(assert (=> b!269302 (= res!133559 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4076))))

(declare-fun b!269303 () Bool)

(declare-fun res!133556 () Bool)

(assert (=> b!269303 (=> (not res!133556) (not e!173788))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13202 (_ BitVec 32)) Bool)

(assert (=> b!269303 (= res!133556 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!269304 () Bool)

(declare-fun lt!135189 () Unit!8331)

(assert (=> b!269304 (= e!173786 lt!135189)))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!13202 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8331)

(assert (=> b!269304 (= lt!135189 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(assert (=> b!269304 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) (array!13203 (store (arr!6250 a!3325) i!1267 k!2581) (size!6602 a!3325)) mask!3868)))

(assert (= (and start!26116 res!133560) b!269301))

(assert (= (and b!269301 res!133554) b!269295))

(assert (= (and b!269295 res!133555) b!269302))

(assert (= (and b!269302 res!133559) b!269299))

(assert (= (and b!269299 res!133558) b!269300))

(assert (= (and b!269300 res!133557) b!269303))

(assert (= (and b!269303 res!133556) b!269296))

(assert (= (and b!269296 res!133553) b!269297))

(assert (= (and b!269297 c!45422) b!269304))

(assert (= (and b!269297 (not c!45422)) b!269298))

(declare-fun m!285229 () Bool)

(assert (=> b!269302 m!285229))

(declare-fun m!285231 () Bool)

(assert (=> start!26116 m!285231))

(declare-fun m!285233 () Bool)

(assert (=> start!26116 m!285233))

(declare-fun m!285235 () Bool)

(assert (=> b!269299 m!285235))

(declare-fun m!285237 () Bool)

(assert (=> b!269303 m!285237))

(declare-fun m!285239 () Bool)

(assert (=> b!269300 m!285239))

(declare-fun m!285241 () Bool)

(assert (=> b!269304 m!285241))

(declare-fun m!285243 () Bool)

(assert (=> b!269304 m!285243))

(declare-fun m!285245 () Bool)

(assert (=> b!269304 m!285245))

(declare-fun m!285247 () Bool)

(assert (=> b!269295 m!285247))

(push 1)

