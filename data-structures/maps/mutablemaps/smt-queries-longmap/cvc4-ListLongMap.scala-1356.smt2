; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26708 () Bool)

(assert start!26708)

(declare-fun b!277104 () Bool)

(declare-fun res!141098 () Bool)

(declare-fun e!176915 () Bool)

(assert (=> b!277104 (=> (not res!141098) (not e!176915))))

(declare-datatypes ((array!13794 0))(
  ( (array!13795 (arr!6546 (Array (_ BitVec 32) (_ BitVec 64))) (size!6898 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13794)

(declare-datatypes ((List!4375 0))(
  ( (Nil!4372) (Cons!4371 (h!5038 (_ BitVec 64)) (t!9465 List!4375)) )
))
(declare-fun arrayNoDuplicates!0 (array!13794 (_ BitVec 32) List!4375) Bool)

(assert (=> b!277104 (= res!141098 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4372))))

(declare-fun b!277105 () Bool)

(declare-datatypes ((Unit!8715 0))(
  ( (Unit!8716) )
))
(declare-fun e!176914 () Unit!8715)

(declare-fun lt!137871 () Unit!8715)

(assert (=> b!277105 (= e!176914 lt!137871)))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!13794 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8715)

(assert (=> b!277105 (= lt!137871 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13794 (_ BitVec 32)) Bool)

(assert (=> b!277105 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) (array!13795 (store (arr!6546 a!3325) i!1267 k!2581) (size!6898 a!3325)) mask!3868)))

(declare-fun b!277106 () Bool)

(declare-fun res!141099 () Bool)

(declare-fun e!176917 () Bool)

(assert (=> b!277106 (=> (not res!141099) (not e!176917))))

(assert (=> b!277106 (= res!141099 (= startIndex!26 i!1267))))

(declare-fun b!277107 () Bool)

(declare-fun res!141102 () Bool)

(assert (=> b!277107 (=> (not res!141102) (not e!176915))))

(assert (=> b!277107 (= res!141102 (and (= (size!6898 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6898 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6898 a!3325))))))

(declare-fun b!277108 () Bool)

(declare-fun res!141105 () Bool)

(assert (=> b!277108 (=> (not res!141105) (not e!176915))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!277108 (= res!141105 (validKeyInArray!0 k!2581))))

(declare-fun b!277109 () Bool)

(declare-fun res!141101 () Bool)

(assert (=> b!277109 (=> (not res!141101) (not e!176915))))

(declare-fun arrayContainsKey!0 (array!13794 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!277109 (= res!141101 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!277110 () Bool)

(assert (=> b!277110 (= e!176915 e!176917)))

(declare-fun res!141100 () Bool)

(assert (=> b!277110 (=> (not res!141100) (not e!176917))))

(declare-datatypes ((SeekEntryResult!1715 0))(
  ( (MissingZero!1715 (index!9030 (_ BitVec 32))) (Found!1715 (index!9031 (_ BitVec 32))) (Intermediate!1715 (undefined!2527 Bool) (index!9032 (_ BitVec 32)) (x!27248 (_ BitVec 32))) (Undefined!1715) (MissingVacant!1715 (index!9033 (_ BitVec 32))) )
))
(declare-fun lt!137872 () SeekEntryResult!1715)

(assert (=> b!277110 (= res!141100 (or (= lt!137872 (MissingZero!1715 i!1267)) (= lt!137872 (MissingVacant!1715 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13794 (_ BitVec 32)) SeekEntryResult!1715)

(assert (=> b!277110 (= lt!137872 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun res!141104 () Bool)

(assert (=> start!26708 (=> (not res!141104) (not e!176915))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26708 (= res!141104 (validMask!0 mask!3868))))

(assert (=> start!26708 e!176915))

(declare-fun array_inv!4500 (array!13794) Bool)

(assert (=> start!26708 (array_inv!4500 a!3325)))

(assert (=> start!26708 true))

(declare-fun b!277111 () Bool)

(declare-fun Unit!8717 () Unit!8715)

(assert (=> b!277111 (= e!176914 Unit!8717)))

(declare-fun b!277112 () Bool)

(assert (=> b!277112 (= e!176917 false)))

(declare-fun lt!137873 () Unit!8715)

(assert (=> b!277112 (= lt!137873 e!176914)))

(declare-fun c!45554 () Bool)

(assert (=> b!277112 (= c!45554 (bvslt startIndex!26 (bvsub (size!6898 a!3325) #b00000000000000000000000000000001)))))

(declare-fun b!277113 () Bool)

(declare-fun res!141103 () Bool)

(assert (=> b!277113 (=> (not res!141103) (not e!176917))))

(assert (=> b!277113 (= res!141103 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(assert (= (and start!26708 res!141104) b!277107))

(assert (= (and b!277107 res!141102) b!277108))

(assert (= (and b!277108 res!141105) b!277104))

(assert (= (and b!277104 res!141098) b!277109))

(assert (= (and b!277109 res!141101) b!277110))

(assert (= (and b!277110 res!141100) b!277113))

(assert (= (and b!277113 res!141103) b!277106))

(assert (= (and b!277106 res!141099) b!277112))

(assert (= (and b!277112 c!45554) b!277105))

(assert (= (and b!277112 (not c!45554)) b!277111))

(declare-fun m!292289 () Bool)

(assert (=> b!277109 m!292289))

(declare-fun m!292291 () Bool)

(assert (=> start!26708 m!292291))

(declare-fun m!292293 () Bool)

(assert (=> start!26708 m!292293))

(declare-fun m!292295 () Bool)

(assert (=> b!277110 m!292295))

(declare-fun m!292297 () Bool)

(assert (=> b!277105 m!292297))

(declare-fun m!292299 () Bool)

(assert (=> b!277105 m!292299))

(declare-fun m!292301 () Bool)

(assert (=> b!277105 m!292301))

(declare-fun m!292303 () Bool)

(assert (=> b!277108 m!292303))

(declare-fun m!292305 () Bool)

(assert (=> b!277104 m!292305))

(declare-fun m!292307 () Bool)

(assert (=> b!277113 m!292307))

(push 1)

(assert (not b!277105))

(assert (not b!277109))

(assert (not b!277108))

(assert (not b!277104))

(assert (not b!277113))

