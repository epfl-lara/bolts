; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26354 () Bool)

(assert start!26354)

(declare-fun res!137052 () Bool)

(declare-fun e!175069 () Bool)

(assert (=> start!26354 (=> (not res!137052) (not e!175069))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26354 (= res!137052 (validMask!0 mask!3868))))

(assert (=> start!26354 e!175069))

(declare-datatypes ((array!13440 0))(
  ( (array!13441 (arr!6369 (Array (_ BitVec 32) (_ BitVec 64))) (size!6721 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13440)

(declare-fun array_inv!4323 (array!13440) Bool)

(assert (=> start!26354 (array_inv!4323 a!3325)))

(assert (=> start!26354 true))

(declare-fun b!273019 () Bool)

(declare-fun e!175070 () Bool)

(assert (=> b!273019 (= e!175069 e!175070)))

(declare-fun res!137051 () Bool)

(assert (=> b!273019 (=> (not res!137051) (not e!175070))))

(declare-datatypes ((SeekEntryResult!1538 0))(
  ( (MissingZero!1538 (index!8322 (_ BitVec 32))) (Found!1538 (index!8323 (_ BitVec 32))) (Intermediate!1538 (undefined!2350 Bool) (index!8324 (_ BitVec 32)) (x!26599 (_ BitVec 32))) (Undefined!1538) (MissingVacant!1538 (index!8325 (_ BitVec 32))) )
))
(declare-fun lt!136215 () SeekEntryResult!1538)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!273019 (= res!137051 (or (= lt!136215 (MissingZero!1538 i!1267)) (= lt!136215 (MissingVacant!1538 i!1267))))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13440 (_ BitVec 32)) SeekEntryResult!1538)

(assert (=> b!273019 (= lt!136215 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!273020 () Bool)

(declare-fun res!137054 () Bool)

(assert (=> b!273020 (=> (not res!137054) (not e!175070))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13440 (_ BitVec 32)) Bool)

(assert (=> b!273020 (= res!137054 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!273021 () Bool)

(declare-fun res!137053 () Bool)

(assert (=> b!273021 (=> (not res!137053) (not e!175069))))

(declare-datatypes ((List!4198 0))(
  ( (Nil!4195) (Cons!4194 (h!4861 (_ BitVec 64)) (t!9288 List!4198)) )
))
(declare-fun arrayNoDuplicates!0 (array!13440 (_ BitVec 32) List!4198) Bool)

(assert (=> b!273021 (= res!137053 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4195))))

(declare-fun b!273022 () Bool)

(declare-fun e!175072 () Bool)

(assert (=> b!273022 (= e!175070 e!175072)))

(declare-fun res!137050 () Bool)

(assert (=> b!273022 (=> (not res!137050) (not e!175072))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!273022 (= res!137050 (not (= startIndex!26 i!1267)))))

(declare-fun lt!136217 () array!13440)

(assert (=> b!273022 (= lt!136217 (array!13441 (store (arr!6369 a!3325) i!1267 k!2581) (size!6721 a!3325)))))

(declare-fun b!273023 () Bool)

(declare-fun res!137047 () Bool)

(assert (=> b!273023 (=> (not res!137047) (not e!175069))))

(declare-fun arrayContainsKey!0 (array!13440 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!273023 (= res!137047 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!273024 () Bool)

(declare-fun res!137048 () Bool)

(assert (=> b!273024 (=> (not res!137048) (not e!175069))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!273024 (= res!137048 (validKeyInArray!0 k!2581))))

(declare-fun b!273025 () Bool)

(declare-fun res!137049 () Bool)

(assert (=> b!273025 (=> (not res!137049) (not e!175072))))

(assert (=> b!273025 (= res!137049 (validKeyInArray!0 (select (arr!6369 a!3325) startIndex!26)))))

(declare-fun b!273026 () Bool)

(assert (=> b!273026 (= e!175072 (not true))))

(assert (=> b!273026 (= (seekEntryOrOpen!0 (select (arr!6369 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6369 a!3325) i!1267 k!2581) startIndex!26) lt!136217 mask!3868))))

(declare-datatypes ((Unit!8542 0))(
  ( (Unit!8543) )
))
(declare-fun lt!136214 () Unit!8542)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!13440 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8542)

(assert (=> b!273026 (= lt!136214 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k!2581 startIndex!26 mask!3868))))

(assert (=> b!273026 (arrayNoDuplicates!0 lt!136217 #b00000000000000000000000000000000 Nil!4195)))

(declare-fun lt!136216 () Unit!8542)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13440 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4198) Unit!8542)

(assert (=> b!273026 (= lt!136216 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4195))))

(declare-fun b!273027 () Bool)

(declare-fun res!137055 () Bool)

(assert (=> b!273027 (=> (not res!137055) (not e!175069))))

(assert (=> b!273027 (= res!137055 (and (= (size!6721 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6721 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6721 a!3325))))))

(assert (= (and start!26354 res!137052) b!273027))

(assert (= (and b!273027 res!137055) b!273024))

(assert (= (and b!273024 res!137048) b!273021))

(assert (= (and b!273021 res!137053) b!273023))

(assert (= (and b!273023 res!137047) b!273019))

(assert (= (and b!273019 res!137051) b!273020))

(assert (= (and b!273020 res!137054) b!273022))

(assert (= (and b!273022 res!137050) b!273025))

(assert (= (and b!273025 res!137049) b!273026))

(declare-fun m!288155 () Bool)

(assert (=> b!273020 m!288155))

(declare-fun m!288157 () Bool)

(assert (=> b!273019 m!288157))

(declare-fun m!288159 () Bool)

(assert (=> b!273025 m!288159))

(assert (=> b!273025 m!288159))

(declare-fun m!288161 () Bool)

(assert (=> b!273025 m!288161))

(declare-fun m!288163 () Bool)

(assert (=> start!26354 m!288163))

(declare-fun m!288165 () Bool)

(assert (=> start!26354 m!288165))

(declare-fun m!288167 () Bool)

(assert (=> b!273021 m!288167))

(declare-fun m!288169 () Bool)

(assert (=> b!273023 m!288169))

(declare-fun m!288171 () Bool)

(assert (=> b!273022 m!288171))

(declare-fun m!288173 () Bool)

(assert (=> b!273024 m!288173))

(declare-fun m!288175 () Bool)

(assert (=> b!273026 m!288175))

(declare-fun m!288177 () Bool)

(assert (=> b!273026 m!288177))

(assert (=> b!273026 m!288175))

(declare-fun m!288179 () Bool)

(assert (=> b!273026 m!288179))

(assert (=> b!273026 m!288171))

(assert (=> b!273026 m!288159))

(declare-fun m!288181 () Bool)

(assert (=> b!273026 m!288181))

(declare-fun m!288183 () Bool)

(assert (=> b!273026 m!288183))

(assert (=> b!273026 m!288159))

(declare-fun m!288185 () Bool)

(assert (=> b!273026 m!288185))

(push 1)

