; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26114 () Bool)

(assert start!26114)

(declare-fun b!269265 () Bool)

(declare-datatypes ((Unit!8328 0))(
  ( (Unit!8329) )
))
(declare-fun e!173776 () Unit!8328)

(declare-fun lt!135180 () Unit!8328)

(assert (=> b!269265 (= e!173776 lt!135180)))

(declare-datatypes ((array!13200 0))(
  ( (array!13201 (arr!6249 (Array (_ BitVec 32) (_ BitVec 64))) (size!6601 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13200)

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!13200 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8328)

(assert (=> b!269265 (= lt!135180 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13200 (_ BitVec 32)) Bool)

(assert (=> b!269265 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) (array!13201 (store (arr!6249 a!3325) i!1267 k!2581) (size!6601 a!3325)) mask!3868)))

(declare-fun res!133536 () Bool)

(declare-fun e!173774 () Bool)

(assert (=> start!26114 (=> (not res!133536) (not e!173774))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26114 (= res!133536 (validMask!0 mask!3868))))

(assert (=> start!26114 e!173774))

(declare-fun array_inv!4203 (array!13200) Bool)

(assert (=> start!26114 (array_inv!4203 a!3325)))

(assert (=> start!26114 true))

(declare-fun b!269266 () Bool)

(declare-fun e!173775 () Bool)

(assert (=> b!269266 (= e!173774 e!173775)))

(declare-fun res!133530 () Bool)

(assert (=> b!269266 (=> (not res!133530) (not e!173775))))

(declare-datatypes ((SeekEntryResult!1418 0))(
  ( (MissingZero!1418 (index!7842 (_ BitVec 32))) (Found!1418 (index!7843 (_ BitVec 32))) (Intermediate!1418 (undefined!2230 Bool) (index!7844 (_ BitVec 32)) (x!26159 (_ BitVec 32))) (Undefined!1418) (MissingVacant!1418 (index!7845 (_ BitVec 32))) )
))
(declare-fun lt!135181 () SeekEntryResult!1418)

(assert (=> b!269266 (= res!133530 (or (= lt!135181 (MissingZero!1418 i!1267)) (= lt!135181 (MissingVacant!1418 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13200 (_ BitVec 32)) SeekEntryResult!1418)

(assert (=> b!269266 (= lt!135181 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!269267 () Bool)

(assert (=> b!269267 (= e!173775 false)))

(declare-fun lt!135182 () Unit!8328)

(assert (=> b!269267 (= lt!135182 e!173776)))

(declare-fun c!45419 () Bool)

(assert (=> b!269267 (= c!45419 (bvslt startIndex!26 (bvsub (size!6601 a!3325) #b00000000000000000000000000000001)))))

(declare-fun b!269268 () Bool)

(declare-fun res!133532 () Bool)

(assert (=> b!269268 (=> (not res!133532) (not e!173775))))

(assert (=> b!269268 (= res!133532 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!269269 () Bool)

(declare-fun res!133534 () Bool)

(assert (=> b!269269 (=> (not res!133534) (not e!173774))))

(declare-datatypes ((List!4078 0))(
  ( (Nil!4075) (Cons!4074 (h!4741 (_ BitVec 64)) (t!9168 List!4078)) )
))
(declare-fun arrayNoDuplicates!0 (array!13200 (_ BitVec 32) List!4078) Bool)

(assert (=> b!269269 (= res!133534 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4075))))

(declare-fun b!269270 () Bool)

(declare-fun res!133533 () Bool)

(assert (=> b!269270 (=> (not res!133533) (not e!173774))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!269270 (= res!133533 (validKeyInArray!0 k!2581))))

(declare-fun b!269271 () Bool)

(declare-fun res!133531 () Bool)

(assert (=> b!269271 (=> (not res!133531) (not e!173774))))

(declare-fun arrayContainsKey!0 (array!13200 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!269271 (= res!133531 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!269272 () Bool)

(declare-fun res!133535 () Bool)

(assert (=> b!269272 (=> (not res!133535) (not e!173774))))

(assert (=> b!269272 (= res!133535 (and (= (size!6601 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6601 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6601 a!3325))))))

(declare-fun b!269273 () Bool)

(declare-fun res!133529 () Bool)

(assert (=> b!269273 (=> (not res!133529) (not e!173775))))

(assert (=> b!269273 (= res!133529 (= startIndex!26 i!1267))))

(declare-fun b!269274 () Bool)

(declare-fun Unit!8330 () Unit!8328)

(assert (=> b!269274 (= e!173776 Unit!8330)))

(assert (= (and start!26114 res!133536) b!269272))

(assert (= (and b!269272 res!133535) b!269270))

(assert (= (and b!269270 res!133533) b!269269))

(assert (= (and b!269269 res!133534) b!269271))

(assert (= (and b!269271 res!133531) b!269266))

(assert (= (and b!269266 res!133530) b!269268))

(assert (= (and b!269268 res!133532) b!269273))

(assert (= (and b!269273 res!133529) b!269267))

(assert (= (and b!269267 c!45419) b!269265))

(assert (= (and b!269267 (not c!45419)) b!269274))

(declare-fun m!285209 () Bool)

(assert (=> b!269265 m!285209))

(declare-fun m!285211 () Bool)

(assert (=> b!269265 m!285211))

(declare-fun m!285213 () Bool)

(assert (=> b!269265 m!285213))

(declare-fun m!285215 () Bool)

(assert (=> b!269269 m!285215))

(declare-fun m!285217 () Bool)

(assert (=> b!269270 m!285217))

(declare-fun m!285219 () Bool)

(assert (=> b!269268 m!285219))

(declare-fun m!285221 () Bool)

(assert (=> start!26114 m!285221))

(declare-fun m!285223 () Bool)

(assert (=> start!26114 m!285223))

(declare-fun m!285225 () Bool)

(assert (=> b!269266 m!285225))

(declare-fun m!285227 () Bool)

(assert (=> b!269271 m!285227))

(push 1)

(assert (not b!269271))

(assert (not b!269270))

(assert (not b!269265))

(assert (not start!26114))

(assert (not b!269269))

(assert (not b!269266))

(assert (not b!269268))

(check-sat)

(pop 1)

