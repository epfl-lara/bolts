; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26276 () Bool)

(assert start!26276)

(declare-fun b!271966 () Bool)

(declare-fun res!135996 () Bool)

(declare-fun e!174692 () Bool)

(assert (=> b!271966 (=> (not res!135996) (not e!174692))))

(declare-datatypes ((array!13362 0))(
  ( (array!13363 (arr!6330 (Array (_ BitVec 32) (_ BitVec 64))) (size!6682 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13362)

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!271966 (= res!135996 (and (= (size!6682 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6682 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6682 a!3325))))))

(declare-fun b!271967 () Bool)

(declare-fun res!136001 () Bool)

(assert (=> b!271967 (=> (not res!136001) (not e!174692))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13362 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!271967 (= res!136001 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!271968 () Bool)

(declare-fun e!174693 () Bool)

(assert (=> b!271968 (= e!174692 e!174693)))

(declare-fun res!135998 () Bool)

(assert (=> b!271968 (=> (not res!135998) (not e!174693))))

(declare-datatypes ((SeekEntryResult!1499 0))(
  ( (MissingZero!1499 (index!8166 (_ BitVec 32))) (Found!1499 (index!8167 (_ BitVec 32))) (Intermediate!1499 (undefined!2311 Bool) (index!8168 (_ BitVec 32)) (x!26456 (_ BitVec 32))) (Undefined!1499) (MissingVacant!1499 (index!8169 (_ BitVec 32))) )
))
(declare-fun lt!135929 () SeekEntryResult!1499)

(assert (=> b!271968 (= res!135998 (or (= lt!135929 (MissingZero!1499 i!1267)) (= lt!135929 (MissingVacant!1499 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13362 (_ BitVec 32)) SeekEntryResult!1499)

(assert (=> b!271968 (= lt!135929 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!271969 () Bool)

(declare-fun res!135997 () Bool)

(assert (=> b!271969 (=> (not res!135997) (not e!174692))))

(declare-datatypes ((List!4159 0))(
  ( (Nil!4156) (Cons!4155 (h!4822 (_ BitVec 64)) (t!9249 List!4159)) )
))
(declare-fun arrayNoDuplicates!0 (array!13362 (_ BitVec 32) List!4159) Bool)

(assert (=> b!271969 (= res!135997 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4156))))

(declare-fun res!135995 () Bool)

(assert (=> start!26276 (=> (not res!135995) (not e!174692))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26276 (= res!135995 (validMask!0 mask!3868))))

(assert (=> start!26276 e!174692))

(declare-fun array_inv!4284 (array!13362) Bool)

(assert (=> start!26276 (array_inv!4284 a!3325)))

(assert (=> start!26276 true))

(declare-fun b!271970 () Bool)

(declare-fun res!136002 () Bool)

(assert (=> b!271970 (=> (not res!136002) (not e!174693))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!271970 (= res!136002 (validKeyInArray!0 (select (arr!6330 a!3325) startIndex!26)))))

(declare-fun b!271971 () Bool)

(declare-fun res!136000 () Bool)

(assert (=> b!271971 (=> (not res!136000) (not e!174693))))

(assert (=> b!271971 (= res!136000 (not (= startIndex!26 i!1267)))))

(declare-fun b!271972 () Bool)

(declare-fun res!135994 () Bool)

(assert (=> b!271972 (=> (not res!135994) (not e!174692))))

(assert (=> b!271972 (= res!135994 (validKeyInArray!0 k!2581))))

(declare-fun b!271973 () Bool)

(declare-fun res!135999 () Bool)

(assert (=> b!271973 (=> (not res!135999) (not e!174693))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13362 (_ BitVec 32)) Bool)

(assert (=> b!271973 (= res!135999 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!271974 () Bool)

(assert (=> b!271974 (= e!174693 (not true))))

(assert (=> b!271974 (arrayNoDuplicates!0 (array!13363 (store (arr!6330 a!3325) i!1267 k!2581) (size!6682 a!3325)) #b00000000000000000000000000000000 Nil!4156)))

(declare-datatypes ((Unit!8464 0))(
  ( (Unit!8465) )
))
(declare-fun lt!135928 () Unit!8464)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13362 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4159) Unit!8464)

(assert (=> b!271974 (= lt!135928 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4156))))

(assert (= (and start!26276 res!135995) b!271966))

(assert (= (and b!271966 res!135996) b!271972))

(assert (= (and b!271972 res!135994) b!271969))

(assert (= (and b!271969 res!135997) b!271967))

(assert (= (and b!271967 res!136001) b!271968))

(assert (= (and b!271968 res!135998) b!271973))

(assert (= (and b!271973 res!135999) b!271971))

(assert (= (and b!271971 res!136000) b!271970))

(assert (= (and b!271970 res!136002) b!271974))

(declare-fun m!287155 () Bool)

(assert (=> b!271969 m!287155))

(declare-fun m!287157 () Bool)

(assert (=> b!271973 m!287157))

(declare-fun m!287159 () Bool)

(assert (=> start!26276 m!287159))

(declare-fun m!287161 () Bool)

(assert (=> start!26276 m!287161))

(declare-fun m!287163 () Bool)

(assert (=> b!271970 m!287163))

(assert (=> b!271970 m!287163))

(declare-fun m!287165 () Bool)

(assert (=> b!271970 m!287165))

(declare-fun m!287167 () Bool)

(assert (=> b!271967 m!287167))

(declare-fun m!287169 () Bool)

(assert (=> b!271972 m!287169))

(declare-fun m!287171 () Bool)

(assert (=> b!271974 m!287171))

(declare-fun m!287173 () Bool)

(assert (=> b!271974 m!287173))

(declare-fun m!287175 () Bool)

(assert (=> b!271974 m!287175))

(declare-fun m!287177 () Bool)

(assert (=> b!271968 m!287177))

(push 1)

(assert (not b!271967))

(assert (not b!271968))

(assert (not b!271973))

