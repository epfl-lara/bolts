; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26282 () Bool)

(assert start!26282)

(declare-fun b!272047 () Bool)

(declare-fun res!136078 () Bool)

(declare-fun e!174720 () Bool)

(assert (=> b!272047 (=> (not res!136078) (not e!174720))))

(declare-datatypes ((array!13368 0))(
  ( (array!13369 (arr!6333 (Array (_ BitVec 32) (_ BitVec 64))) (size!6685 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13368)

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!272047 (= res!136078 (validKeyInArray!0 (select (arr!6333 a!3325) startIndex!26)))))

(declare-fun b!272048 () Bool)

(declare-fun res!136083 () Bool)

(declare-fun e!174719 () Bool)

(assert (=> b!272048 (=> (not res!136083) (not e!174719))))

(declare-datatypes ((List!4162 0))(
  ( (Nil!4159) (Cons!4158 (h!4825 (_ BitVec 64)) (t!9252 List!4162)) )
))
(declare-fun arrayNoDuplicates!0 (array!13368 (_ BitVec 32) List!4162) Bool)

(assert (=> b!272048 (= res!136083 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4159))))

(declare-fun b!272049 () Bool)

(declare-fun res!136079 () Bool)

(assert (=> b!272049 (=> (not res!136079) (not e!174719))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13368 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!272049 (= res!136079 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!272050 () Bool)

(declare-fun res!136082 () Bool)

(assert (=> b!272050 (=> (not res!136082) (not e!174720))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13368 (_ BitVec 32)) Bool)

(assert (=> b!272050 (= res!136082 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!272051 () Bool)

(declare-fun res!136076 () Bool)

(assert (=> b!272051 (=> (not res!136076) (not e!174719))))

(assert (=> b!272051 (= res!136076 (validKeyInArray!0 k!2581))))

(declare-fun b!272052 () Bool)

(assert (=> b!272052 (= e!174720 (not true))))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!272052 (arrayNoDuplicates!0 (array!13369 (store (arr!6333 a!3325) i!1267 k!2581) (size!6685 a!3325)) #b00000000000000000000000000000000 Nil!4159)))

(declare-datatypes ((Unit!8470 0))(
  ( (Unit!8471) )
))
(declare-fun lt!135947 () Unit!8470)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13368 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4162) Unit!8470)

(assert (=> b!272052 (= lt!135947 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4159))))

(declare-fun b!272053 () Bool)

(assert (=> b!272053 (= e!174719 e!174720)))

(declare-fun res!136081 () Bool)

(assert (=> b!272053 (=> (not res!136081) (not e!174720))))

(declare-datatypes ((SeekEntryResult!1502 0))(
  ( (MissingZero!1502 (index!8178 (_ BitVec 32))) (Found!1502 (index!8179 (_ BitVec 32))) (Intermediate!1502 (undefined!2314 Bool) (index!8180 (_ BitVec 32)) (x!26467 (_ BitVec 32))) (Undefined!1502) (MissingVacant!1502 (index!8181 (_ BitVec 32))) )
))
(declare-fun lt!135946 () SeekEntryResult!1502)

(assert (=> b!272053 (= res!136081 (or (= lt!135946 (MissingZero!1502 i!1267)) (= lt!135946 (MissingVacant!1502 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13368 (_ BitVec 32)) SeekEntryResult!1502)

(assert (=> b!272053 (= lt!135946 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun res!136077 () Bool)

(assert (=> start!26282 (=> (not res!136077) (not e!174719))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26282 (= res!136077 (validMask!0 mask!3868))))

(assert (=> start!26282 e!174719))

(declare-fun array_inv!4287 (array!13368) Bool)

(assert (=> start!26282 (array_inv!4287 a!3325)))

(assert (=> start!26282 true))

(declare-fun b!272054 () Bool)

(declare-fun res!136075 () Bool)

(assert (=> b!272054 (=> (not res!136075) (not e!174720))))

(assert (=> b!272054 (= res!136075 (not (= startIndex!26 i!1267)))))

(declare-fun b!272055 () Bool)

(declare-fun res!136080 () Bool)

(assert (=> b!272055 (=> (not res!136080) (not e!174719))))

(assert (=> b!272055 (= res!136080 (and (= (size!6685 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6685 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6685 a!3325))))))

(assert (= (and start!26282 res!136077) b!272055))

(assert (= (and b!272055 res!136080) b!272051))

(assert (= (and b!272051 res!136076) b!272048))

(assert (= (and b!272048 res!136083) b!272049))

(assert (= (and b!272049 res!136079) b!272053))

(assert (= (and b!272053 res!136081) b!272050))

(assert (= (and b!272050 res!136082) b!272054))

(assert (= (and b!272054 res!136075) b!272047))

(assert (= (and b!272047 res!136078) b!272052))

(declare-fun m!287227 () Bool)

(assert (=> b!272051 m!287227))

(declare-fun m!287229 () Bool)

(assert (=> b!272049 m!287229))

(declare-fun m!287231 () Bool)

(assert (=> b!272048 m!287231))

(declare-fun m!287233 () Bool)

(assert (=> b!272053 m!287233))

(declare-fun m!287235 () Bool)

(assert (=> b!272047 m!287235))

(assert (=> b!272047 m!287235))

(declare-fun m!287237 () Bool)

(assert (=> b!272047 m!287237))

(declare-fun m!287239 () Bool)

(assert (=> b!272050 m!287239))

(declare-fun m!287241 () Bool)

(assert (=> start!26282 m!287241))

(declare-fun m!287243 () Bool)

(assert (=> start!26282 m!287243))

(declare-fun m!287245 () Bool)

(assert (=> b!272052 m!287245))

(declare-fun m!287247 () Bool)

(assert (=> b!272052 m!287247))

(declare-fun m!287249 () Bool)

(assert (=> b!272052 m!287249))

(push 1)

