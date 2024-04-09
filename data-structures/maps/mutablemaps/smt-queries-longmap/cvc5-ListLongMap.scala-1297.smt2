; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26350 () Bool)

(assert start!26350)

(declare-fun b!272965 () Bool)

(declare-fun res!136995 () Bool)

(declare-fun e!175045 () Bool)

(assert (=> b!272965 (=> (not res!136995) (not e!175045))))

(declare-datatypes ((array!13436 0))(
  ( (array!13437 (arr!6367 (Array (_ BitVec 32) (_ BitVec 64))) (size!6719 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13436)

(declare-datatypes ((List!4196 0))(
  ( (Nil!4193) (Cons!4192 (h!4859 (_ BitVec 64)) (t!9286 List!4196)) )
))
(declare-fun arrayNoDuplicates!0 (array!13436 (_ BitVec 32) List!4196) Bool)

(assert (=> b!272965 (= res!136995 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4193))))

(declare-fun b!272966 () Bool)

(declare-fun res!136994 () Bool)

(declare-fun e!175046 () Bool)

(assert (=> b!272966 (=> (not res!136994) (not e!175046))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13436 (_ BitVec 32)) Bool)

(assert (=> b!272966 (= res!136994 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!272967 () Bool)

(declare-fun res!136999 () Bool)

(assert (=> b!272967 (=> (not res!136999) (not e!175045))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13436 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!272967 (= res!136999 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!272968 () Bool)

(declare-fun res!137000 () Bool)

(declare-fun e!175047 () Bool)

(assert (=> b!272968 (=> (not res!137000) (not e!175047))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!272968 (= res!137000 (validKeyInArray!0 (select (arr!6367 a!3325) startIndex!26)))))

(declare-fun b!272969 () Bool)

(declare-fun res!136998 () Bool)

(assert (=> b!272969 (=> (not res!136998) (not e!175045))))

(assert (=> b!272969 (= res!136998 (validKeyInArray!0 k!2581))))

(declare-fun b!272970 () Bool)

(assert (=> b!272970 (= e!175047 (not true))))

(declare-fun lt!136191 () array!13436)

(declare-fun i!1267 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!1536 0))(
  ( (MissingZero!1536 (index!8314 (_ BitVec 32))) (Found!1536 (index!8315 (_ BitVec 32))) (Intermediate!1536 (undefined!2348 Bool) (index!8316 (_ BitVec 32)) (x!26597 (_ BitVec 32))) (Undefined!1536) (MissingVacant!1536 (index!8317 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13436 (_ BitVec 32)) SeekEntryResult!1536)

(assert (=> b!272970 (= (seekEntryOrOpen!0 (select (arr!6367 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6367 a!3325) i!1267 k!2581) startIndex!26) lt!136191 mask!3868))))

(declare-datatypes ((Unit!8538 0))(
  ( (Unit!8539) )
))
(declare-fun lt!136192 () Unit!8538)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!13436 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8538)

(assert (=> b!272970 (= lt!136192 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k!2581 startIndex!26 mask!3868))))

(assert (=> b!272970 (arrayNoDuplicates!0 lt!136191 #b00000000000000000000000000000000 Nil!4193)))

(declare-fun lt!136193 () Unit!8538)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13436 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4196) Unit!8538)

(assert (=> b!272970 (= lt!136193 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4193))))

(declare-fun b!272971 () Bool)

(declare-fun res!137001 () Bool)

(assert (=> b!272971 (=> (not res!137001) (not e!175045))))

(assert (=> b!272971 (= res!137001 (and (= (size!6719 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6719 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6719 a!3325))))))

(declare-fun b!272972 () Bool)

(assert (=> b!272972 (= e!175046 e!175047)))

(declare-fun res!136993 () Bool)

(assert (=> b!272972 (=> (not res!136993) (not e!175047))))

(assert (=> b!272972 (= res!136993 (not (= startIndex!26 i!1267)))))

(assert (=> b!272972 (= lt!136191 (array!13437 (store (arr!6367 a!3325) i!1267 k!2581) (size!6719 a!3325)))))

(declare-fun b!272973 () Bool)

(assert (=> b!272973 (= e!175045 e!175046)))

(declare-fun res!136997 () Bool)

(assert (=> b!272973 (=> (not res!136997) (not e!175046))))

(declare-fun lt!136190 () SeekEntryResult!1536)

(assert (=> b!272973 (= res!136997 (or (= lt!136190 (MissingZero!1536 i!1267)) (= lt!136190 (MissingVacant!1536 i!1267))))))

(assert (=> b!272973 (= lt!136190 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun res!136996 () Bool)

(assert (=> start!26350 (=> (not res!136996) (not e!175045))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26350 (= res!136996 (validMask!0 mask!3868))))

(assert (=> start!26350 e!175045))

(declare-fun array_inv!4321 (array!13436) Bool)

(assert (=> start!26350 (array_inv!4321 a!3325)))

(assert (=> start!26350 true))

(assert (= (and start!26350 res!136996) b!272971))

(assert (= (and b!272971 res!137001) b!272969))

(assert (= (and b!272969 res!136998) b!272965))

(assert (= (and b!272965 res!136995) b!272967))

(assert (= (and b!272967 res!136999) b!272973))

(assert (= (and b!272973 res!136997) b!272966))

(assert (= (and b!272966 res!136994) b!272972))

(assert (= (and b!272972 res!136993) b!272968))

(assert (= (and b!272968 res!137000) b!272970))

(declare-fun m!288091 () Bool)

(assert (=> b!272972 m!288091))

(declare-fun m!288093 () Bool)

(assert (=> b!272965 m!288093))

(declare-fun m!288095 () Bool)

(assert (=> b!272970 m!288095))

(declare-fun m!288097 () Bool)

(assert (=> b!272970 m!288097))

(assert (=> b!272970 m!288091))

(declare-fun m!288099 () Bool)

(assert (=> b!272970 m!288099))

(declare-fun m!288101 () Bool)

(assert (=> b!272970 m!288101))

(declare-fun m!288103 () Bool)

(assert (=> b!272970 m!288103))

(declare-fun m!288105 () Bool)

(assert (=> b!272970 m!288105))

(assert (=> b!272970 m!288103))

(assert (=> b!272970 m!288097))

(declare-fun m!288107 () Bool)

(assert (=> b!272970 m!288107))

(assert (=> b!272968 m!288103))

(assert (=> b!272968 m!288103))

(declare-fun m!288109 () Bool)

(assert (=> b!272968 m!288109))

(declare-fun m!288111 () Bool)

(assert (=> b!272966 m!288111))

(declare-fun m!288113 () Bool)

(assert (=> b!272973 m!288113))

(declare-fun m!288115 () Bool)

(assert (=> b!272967 m!288115))

(declare-fun m!288117 () Bool)

(assert (=> b!272969 m!288117))

(declare-fun m!288119 () Bool)

(assert (=> start!26350 m!288119))

(declare-fun m!288121 () Bool)

(assert (=> start!26350 m!288121))

(push 1)

