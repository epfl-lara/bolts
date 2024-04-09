; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26222 () Bool)

(assert start!26222)

(declare-fun b!271017 () Bool)

(declare-fun res!135047 () Bool)

(declare-fun e!174449 () Bool)

(assert (=> b!271017 (=> (not res!135047) (not e!174449))))

(declare-datatypes ((List!4132 0))(
  ( (Nil!4129) (Cons!4128 (h!4795 (_ BitVec 64)) (t!9222 List!4132)) )
))
(declare-fun contains!1941 (List!4132 (_ BitVec 64)) Bool)

(assert (=> b!271017 (= res!135047 (not (contains!1941 Nil!4129 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!271018 () Bool)

(declare-fun res!135046 () Bool)

(assert (=> b!271018 (=> (not res!135046) (not e!174449))))

(declare-datatypes ((array!13308 0))(
  ( (array!13309 (arr!6303 (Array (_ BitVec 32) (_ BitVec 64))) (size!6655 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13308)

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!271018 (= res!135046 (validKeyInArray!0 (select (arr!6303 a!3325) startIndex!26)))))

(declare-fun b!271019 () Bool)

(declare-fun res!135050 () Bool)

(assert (=> b!271019 (=> (not res!135050) (not e!174449))))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!271019 (= res!135050 (not (= startIndex!26 i!1267)))))

(declare-fun b!271020 () Bool)

(declare-fun res!135053 () Bool)

(assert (=> b!271020 (=> (not res!135053) (not e!174449))))

(declare-fun noDuplicate!130 (List!4132) Bool)

(assert (=> b!271020 (= res!135053 (noDuplicate!130 Nil!4129))))

(declare-fun b!271022 () Bool)

(declare-fun res!135048 () Bool)

(declare-fun e!174450 () Bool)

(assert (=> b!271022 (=> (not res!135048) (not e!174450))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13308 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!271022 (= res!135048 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!271023 () Bool)

(assert (=> b!271023 (= e!174450 e!174449)))

(declare-fun res!135052 () Bool)

(assert (=> b!271023 (=> (not res!135052) (not e!174449))))

(declare-datatypes ((SeekEntryResult!1472 0))(
  ( (MissingZero!1472 (index!8058 (_ BitVec 32))) (Found!1472 (index!8059 (_ BitVec 32))) (Intermediate!1472 (undefined!2284 Bool) (index!8060 (_ BitVec 32)) (x!26357 (_ BitVec 32))) (Undefined!1472) (MissingVacant!1472 (index!8061 (_ BitVec 32))) )
))
(declare-fun lt!135766 () SeekEntryResult!1472)

(assert (=> b!271023 (= res!135052 (or (= lt!135766 (MissingZero!1472 i!1267)) (= lt!135766 (MissingVacant!1472 i!1267))))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13308 (_ BitVec 32)) SeekEntryResult!1472)

(assert (=> b!271023 (= lt!135766 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!271024 () Bool)

(declare-fun res!135045 () Bool)

(assert (=> b!271024 (=> (not res!135045) (not e!174449))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13308 (_ BitVec 32)) Bool)

(assert (=> b!271024 (= res!135045 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!271025 () Bool)

(declare-fun res!135049 () Bool)

(assert (=> b!271025 (=> (not res!135049) (not e!174450))))

(assert (=> b!271025 (= res!135049 (validKeyInArray!0 k!2581))))

(declare-fun b!271026 () Bool)

(declare-fun res!135051 () Bool)

(assert (=> b!271026 (=> (not res!135051) (not e!174449))))

(assert (=> b!271026 (= res!135051 (not (contains!1941 Nil!4129 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!271027 () Bool)

(declare-fun res!135055 () Bool)

(assert (=> b!271027 (=> (not res!135055) (not e!174450))))

(assert (=> b!271027 (= res!135055 (and (= (size!6655 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6655 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6655 a!3325))))))

(declare-fun b!271021 () Bool)

(assert (=> b!271021 (= e!174449 false)))

(declare-fun lt!135767 () Bool)

(assert (=> b!271021 (= lt!135767 (contains!1941 Nil!4129 k!2581))))

(declare-fun res!135057 () Bool)

(assert (=> start!26222 (=> (not res!135057) (not e!174450))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26222 (= res!135057 (validMask!0 mask!3868))))

(assert (=> start!26222 e!174450))

(declare-fun array_inv!4257 (array!13308) Bool)

(assert (=> start!26222 (array_inv!4257 a!3325)))

(assert (=> start!26222 true))

(declare-fun b!271028 () Bool)

(declare-fun res!135056 () Bool)

(assert (=> b!271028 (=> (not res!135056) (not e!174449))))

(assert (=> b!271028 (= res!135056 (and (bvslt (size!6655 a!3325) #b01111111111111111111111111111111) (bvslt #b00000000000000000000000000000000 (size!6655 a!3325))))))

(declare-fun b!271029 () Bool)

(declare-fun res!135054 () Bool)

(assert (=> b!271029 (=> (not res!135054) (not e!174450))))

(declare-fun arrayNoDuplicates!0 (array!13308 (_ BitVec 32) List!4132) Bool)

(assert (=> b!271029 (= res!135054 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4129))))

(assert (= (and start!26222 res!135057) b!271027))

(assert (= (and b!271027 res!135055) b!271025))

(assert (= (and b!271025 res!135049) b!271029))

(assert (= (and b!271029 res!135054) b!271022))

(assert (= (and b!271022 res!135048) b!271023))

(assert (= (and b!271023 res!135052) b!271024))

(assert (= (and b!271024 res!135045) b!271019))

(assert (= (and b!271019 res!135050) b!271018))

(assert (= (and b!271018 res!135046) b!271028))

(assert (= (and b!271028 res!135056) b!271020))

(assert (= (and b!271020 res!135053) b!271026))

(assert (= (and b!271026 res!135051) b!271017))

(assert (= (and b!271017 res!135047) b!271021))

(declare-fun m!286469 () Bool)

(assert (=> b!271021 m!286469))

(declare-fun m!286471 () Bool)

(assert (=> b!271018 m!286471))

(assert (=> b!271018 m!286471))

(declare-fun m!286473 () Bool)

(assert (=> b!271018 m!286473))

(declare-fun m!286475 () Bool)

(assert (=> b!271022 m!286475))

(declare-fun m!286477 () Bool)

(assert (=> b!271026 m!286477))

(declare-fun m!286479 () Bool)

(assert (=> start!26222 m!286479))

(declare-fun m!286481 () Bool)

(assert (=> start!26222 m!286481))

(declare-fun m!286483 () Bool)

(assert (=> b!271020 m!286483))

(declare-fun m!286485 () Bool)

(assert (=> b!271017 m!286485))

(declare-fun m!286487 () Bool)

(assert (=> b!271029 m!286487))

(declare-fun m!286489 () Bool)

(assert (=> b!271025 m!286489))

(declare-fun m!286491 () Bool)

(assert (=> b!271023 m!286491))

(declare-fun m!286493 () Bool)

(assert (=> b!271024 m!286493))

(push 1)

