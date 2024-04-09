; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26178 () Bool)

(assert start!26178)

(declare-fun b!270225 () Bool)

(declare-fun res!134302 () Bool)

(declare-fun e!174208 () Bool)

(assert (=> b!270225 (=> (not res!134302) (not e!174208))))

(declare-datatypes ((array!13264 0))(
  ( (array!13265 (arr!6281 (Array (_ BitVec 32) (_ BitVec 64))) (size!6633 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13264)

(declare-datatypes ((List!4110 0))(
  ( (Nil!4107) (Cons!4106 (h!4773 (_ BitVec 64)) (t!9200 List!4110)) )
))
(declare-fun arrayNoDuplicates!0 (array!13264 (_ BitVec 32) List!4110) Bool)

(assert (=> b!270225 (= res!134302 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4107))))

(declare-fun b!270226 () Bool)

(declare-fun e!174210 () Bool)

(assert (=> b!270226 (= e!174210 (not true))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun lt!135572 () array!13264)

(declare-datatypes ((SeekEntryResult!1450 0))(
  ( (MissingZero!1450 (index!7970 (_ BitVec 32))) (Found!1450 (index!7971 (_ BitVec 32))) (Intermediate!1450 (undefined!2262 Bool) (index!7972 (_ BitVec 32)) (x!26279 (_ BitVec 32))) (Undefined!1450) (MissingVacant!1450 (index!7973 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13264 (_ BitVec 32)) SeekEntryResult!1450)

(assert (=> b!270226 (= (seekEntryOrOpen!0 k0!2581 lt!135572 mask!3868) (Found!1450 i!1267))))

(declare-datatypes ((Unit!8424 0))(
  ( (Unit!8425) )
))
(declare-fun lt!135568 () Unit!8424)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFinds!0 (array!13264 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!8424)

(assert (=> b!270226 (= lt!135568 (lemmaPutValidKeyAtRightPlaceThenFinds!0 a!3325 i!1267 k0!2581 mask!3868))))

(declare-fun lt!135569 () Unit!8424)

(declare-fun e!174207 () Unit!8424)

(assert (=> b!270226 (= lt!135569 e!174207)))

(declare-fun c!45515 () Bool)

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!270226 (= c!45515 (bvslt startIndex!26 (bvsub (size!6633 a!3325) #b00000000000000000000000000000001)))))

(declare-fun b!270227 () Bool)

(declare-fun lt!135571 () Unit!8424)

(assert (=> b!270227 (= e!174207 lt!135571)))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!13264 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8424)

(assert (=> b!270227 (= lt!135571 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k0!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13264 (_ BitVec 32)) Bool)

(assert (=> b!270227 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) lt!135572 mask!3868)))

(declare-fun res!134303 () Bool)

(assert (=> start!26178 (=> (not res!134303) (not e!174208))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26178 (= res!134303 (validMask!0 mask!3868))))

(assert (=> start!26178 e!174208))

(declare-fun array_inv!4235 (array!13264) Bool)

(assert (=> start!26178 (array_inv!4235 a!3325)))

(assert (=> start!26178 true))

(declare-fun b!270228 () Bool)

(declare-fun res!134297 () Bool)

(assert (=> b!270228 (=> (not res!134297) (not e!174208))))

(assert (=> b!270228 (= res!134297 (and (= (size!6633 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6633 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6633 a!3325))))))

(declare-fun b!270229 () Bool)

(declare-fun res!134299 () Bool)

(declare-fun e!174211 () Bool)

(assert (=> b!270229 (=> (not res!134299) (not e!174211))))

(assert (=> b!270229 (= res!134299 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!270230 () Bool)

(assert (=> b!270230 (= e!174208 e!174211)))

(declare-fun res!134300 () Bool)

(assert (=> b!270230 (=> (not res!134300) (not e!174211))))

(declare-fun lt!135570 () SeekEntryResult!1450)

(assert (=> b!270230 (= res!134300 (or (= lt!135570 (MissingZero!1450 i!1267)) (= lt!135570 (MissingVacant!1450 i!1267))))))

(assert (=> b!270230 (= lt!135570 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!270231 () Bool)

(declare-fun res!134301 () Bool)

(assert (=> b!270231 (=> (not res!134301) (not e!174208))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!270231 (= res!134301 (validKeyInArray!0 k0!2581))))

(declare-fun b!270232 () Bool)

(declare-fun Unit!8426 () Unit!8424)

(assert (=> b!270232 (= e!174207 Unit!8426)))

(declare-fun b!270233 () Bool)

(declare-fun res!134304 () Bool)

(assert (=> b!270233 (=> (not res!134304) (not e!174208))))

(declare-fun arrayContainsKey!0 (array!13264 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!270233 (= res!134304 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!270234 () Bool)

(assert (=> b!270234 (= e!174211 e!174210)))

(declare-fun res!134298 () Bool)

(assert (=> b!270234 (=> (not res!134298) (not e!174210))))

(assert (=> b!270234 (= res!134298 (= startIndex!26 i!1267))))

(assert (=> b!270234 (= lt!135572 (array!13265 (store (arr!6281 a!3325) i!1267 k0!2581) (size!6633 a!3325)))))

(assert (= (and start!26178 res!134303) b!270228))

(assert (= (and b!270228 res!134297) b!270231))

(assert (= (and b!270231 res!134301) b!270225))

(assert (= (and b!270225 res!134302) b!270233))

(assert (= (and b!270233 res!134304) b!270230))

(assert (= (and b!270230 res!134300) b!270229))

(assert (= (and b!270229 res!134299) b!270234))

(assert (= (and b!270234 res!134298) b!270226))

(assert (= (and b!270226 c!45515) b!270227))

(assert (= (and b!270226 (not c!45515)) b!270232))

(declare-fun m!285913 () Bool)

(assert (=> b!270234 m!285913))

(declare-fun m!285915 () Bool)

(assert (=> b!270233 m!285915))

(declare-fun m!285917 () Bool)

(assert (=> b!270231 m!285917))

(declare-fun m!285919 () Bool)

(assert (=> b!270227 m!285919))

(declare-fun m!285921 () Bool)

(assert (=> b!270227 m!285921))

(declare-fun m!285923 () Bool)

(assert (=> b!270229 m!285923))

(declare-fun m!285925 () Bool)

(assert (=> b!270225 m!285925))

(declare-fun m!285927 () Bool)

(assert (=> b!270230 m!285927))

(declare-fun m!285929 () Bool)

(assert (=> start!26178 m!285929))

(declare-fun m!285931 () Bool)

(assert (=> start!26178 m!285931))

(declare-fun m!285933 () Bool)

(assert (=> b!270226 m!285933))

(declare-fun m!285935 () Bool)

(assert (=> b!270226 m!285935))

(check-sat (not b!270227) (not b!270229) (not b!270230) (not b!270231) (not b!270233) (not b!270225) (not start!26178) (not b!270226))
(check-sat)
