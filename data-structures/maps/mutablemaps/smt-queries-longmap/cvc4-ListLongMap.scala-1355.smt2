; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26702 () Bool)

(assert start!26702)

(declare-fun b!277014 () Bool)

(declare-fun res!141032 () Bool)

(declare-fun e!176878 () Bool)

(assert (=> b!277014 (=> (not res!141032) (not e!176878))))

(declare-datatypes ((array!13788 0))(
  ( (array!13789 (arr!6543 (Array (_ BitVec 32) (_ BitVec 64))) (size!6895 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13788)

(declare-datatypes ((List!4372 0))(
  ( (Nil!4369) (Cons!4368 (h!5035 (_ BitVec 64)) (t!9462 List!4372)) )
))
(declare-fun arrayNoDuplicates!0 (array!13788 (_ BitVec 32) List!4372) Bool)

(assert (=> b!277014 (= res!141032 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4369))))

(declare-fun b!277015 () Bool)

(declare-fun res!141026 () Bool)

(declare-fun e!176880 () Bool)

(assert (=> b!277015 (=> (not res!141026) (not e!176880))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13788 (_ BitVec 32)) Bool)

(assert (=> b!277015 (= res!141026 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!277016 () Bool)

(assert (=> b!277016 (= e!176878 e!176880)))

(declare-fun res!141028 () Bool)

(assert (=> b!277016 (=> (not res!141028) (not e!176880))))

(declare-datatypes ((SeekEntryResult!1712 0))(
  ( (MissingZero!1712 (index!9018 (_ BitVec 32))) (Found!1712 (index!9019 (_ BitVec 32))) (Intermediate!1712 (undefined!2524 Bool) (index!9020 (_ BitVec 32)) (x!27237 (_ BitVec 32))) (Undefined!1712) (MissingVacant!1712 (index!9021 (_ BitVec 32))) )
))
(declare-fun lt!137845 () SeekEntryResult!1712)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!277016 (= res!141028 (or (= lt!137845 (MissingZero!1712 i!1267)) (= lt!137845 (MissingVacant!1712 i!1267))))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13788 (_ BitVec 32)) SeekEntryResult!1712)

(assert (=> b!277016 (= lt!137845 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!277017 () Bool)

(declare-fun res!141031 () Bool)

(assert (=> b!277017 (=> (not res!141031) (not e!176880))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!277017 (= res!141031 (= startIndex!26 i!1267))))

(declare-fun b!277018 () Bool)

(assert (=> b!277018 (= e!176880 false)))

(declare-datatypes ((Unit!8706 0))(
  ( (Unit!8707) )
))
(declare-fun lt!137846 () Unit!8706)

(declare-fun e!176879 () Unit!8706)

(assert (=> b!277018 (= lt!137846 e!176879)))

(declare-fun c!45545 () Bool)

(assert (=> b!277018 (= c!45545 (bvslt startIndex!26 (bvsub (size!6895 a!3325) #b00000000000000000000000000000001)))))

(declare-fun b!277019 () Bool)

(declare-fun res!141033 () Bool)

(assert (=> b!277019 (=> (not res!141033) (not e!176878))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!277019 (= res!141033 (validKeyInArray!0 k!2581))))

(declare-fun b!277020 () Bool)

(declare-fun lt!137844 () Unit!8706)

(assert (=> b!277020 (= e!176879 lt!137844)))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!13788 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8706)

(assert (=> b!277020 (= lt!137844 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(assert (=> b!277020 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) (array!13789 (store (arr!6543 a!3325) i!1267 k!2581) (size!6895 a!3325)) mask!3868)))

(declare-fun b!277021 () Bool)

(declare-fun res!141030 () Bool)

(assert (=> b!277021 (=> (not res!141030) (not e!176878))))

(declare-fun arrayContainsKey!0 (array!13788 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!277021 (= res!141030 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun res!141029 () Bool)

(assert (=> start!26702 (=> (not res!141029) (not e!176878))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26702 (= res!141029 (validMask!0 mask!3868))))

(assert (=> start!26702 e!176878))

(declare-fun array_inv!4497 (array!13788) Bool)

(assert (=> start!26702 (array_inv!4497 a!3325)))

(assert (=> start!26702 true))

(declare-fun b!277022 () Bool)

(declare-fun Unit!8708 () Unit!8706)

(assert (=> b!277022 (= e!176879 Unit!8708)))

(declare-fun b!277023 () Bool)

(declare-fun res!141027 () Bool)

(assert (=> b!277023 (=> (not res!141027) (not e!176878))))

(assert (=> b!277023 (= res!141027 (and (= (size!6895 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6895 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6895 a!3325))))))

(assert (= (and start!26702 res!141029) b!277023))

(assert (= (and b!277023 res!141027) b!277019))

(assert (= (and b!277019 res!141033) b!277014))

(assert (= (and b!277014 res!141032) b!277021))

(assert (= (and b!277021 res!141030) b!277016))

(assert (= (and b!277016 res!141028) b!277015))

(assert (= (and b!277015 res!141026) b!277017))

(assert (= (and b!277017 res!141031) b!277018))

(assert (= (and b!277018 c!45545) b!277020))

(assert (= (and b!277018 (not c!45545)) b!277022))

(declare-fun m!292229 () Bool)

(assert (=> start!26702 m!292229))

(declare-fun m!292231 () Bool)

(assert (=> start!26702 m!292231))

(declare-fun m!292233 () Bool)

(assert (=> b!277020 m!292233))

(declare-fun m!292235 () Bool)

(assert (=> b!277020 m!292235))

(declare-fun m!292237 () Bool)

(assert (=> b!277020 m!292237))

(declare-fun m!292239 () Bool)

(assert (=> b!277019 m!292239))

(declare-fun m!292241 () Bool)

(assert (=> b!277016 m!292241))

(declare-fun m!292243 () Bool)

(assert (=> b!277021 m!292243))

(declare-fun m!292245 () Bool)

(assert (=> b!277015 m!292245))

(declare-fun m!292247 () Bool)

(assert (=> b!277014 m!292247))

(push 1)

(assert (not b!277016))

(assert (not start!26702))

