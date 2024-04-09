; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26284 () Bool)

(assert start!26284)

(declare-fun b!272074 () Bool)

(declare-fun res!136106 () Bool)

(declare-fun e!174730 () Bool)

(assert (=> b!272074 (=> (not res!136106) (not e!174730))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!272074 (= res!136106 (validKeyInArray!0 k!2581))))

(declare-fun b!272075 () Bool)

(declare-fun res!136103 () Bool)

(declare-fun e!174728 () Bool)

(assert (=> b!272075 (=> (not res!136103) (not e!174728))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!272075 (= res!136103 (not (= startIndex!26 i!1267)))))

(declare-fun res!136104 () Bool)

(assert (=> start!26284 (=> (not res!136104) (not e!174730))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26284 (= res!136104 (validMask!0 mask!3868))))

(assert (=> start!26284 e!174730))

(declare-datatypes ((array!13370 0))(
  ( (array!13371 (arr!6334 (Array (_ BitVec 32) (_ BitVec 64))) (size!6686 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13370)

(declare-fun array_inv!4288 (array!13370) Bool)

(assert (=> start!26284 (array_inv!4288 a!3325)))

(assert (=> start!26284 true))

(declare-fun b!272076 () Bool)

(declare-fun res!136108 () Bool)

(assert (=> b!272076 (=> (not res!136108) (not e!174730))))

(declare-fun arrayContainsKey!0 (array!13370 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!272076 (= res!136108 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!272077 () Bool)

(declare-fun res!136102 () Bool)

(assert (=> b!272077 (=> (not res!136102) (not e!174730))))

(assert (=> b!272077 (= res!136102 (and (= (size!6686 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6686 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6686 a!3325))))))

(declare-fun b!272078 () Bool)

(declare-fun res!136110 () Bool)

(assert (=> b!272078 (=> (not res!136110) (not e!174730))))

(declare-datatypes ((List!4163 0))(
  ( (Nil!4160) (Cons!4159 (h!4826 (_ BitVec 64)) (t!9253 List!4163)) )
))
(declare-fun arrayNoDuplicates!0 (array!13370 (_ BitVec 32) List!4163) Bool)

(assert (=> b!272078 (= res!136110 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4160))))

(declare-fun b!272079 () Bool)

(declare-fun res!136107 () Bool)

(assert (=> b!272079 (=> (not res!136107) (not e!174728))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13370 (_ BitVec 32)) Bool)

(assert (=> b!272079 (= res!136107 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!272080 () Bool)

(assert (=> b!272080 (= e!174730 e!174728)))

(declare-fun res!136105 () Bool)

(assert (=> b!272080 (=> (not res!136105) (not e!174728))))

(declare-datatypes ((SeekEntryResult!1503 0))(
  ( (MissingZero!1503 (index!8182 (_ BitVec 32))) (Found!1503 (index!8183 (_ BitVec 32))) (Intermediate!1503 (undefined!2315 Bool) (index!8184 (_ BitVec 32)) (x!26476 (_ BitVec 32))) (Undefined!1503) (MissingVacant!1503 (index!8185 (_ BitVec 32))) )
))
(declare-fun lt!135952 () SeekEntryResult!1503)

(assert (=> b!272080 (= res!136105 (or (= lt!135952 (MissingZero!1503 i!1267)) (= lt!135952 (MissingVacant!1503 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13370 (_ BitVec 32)) SeekEntryResult!1503)

(assert (=> b!272080 (= lt!135952 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!272081 () Bool)

(assert (=> b!272081 (= e!174728 (not true))))

(assert (=> b!272081 (arrayNoDuplicates!0 (array!13371 (store (arr!6334 a!3325) i!1267 k!2581) (size!6686 a!3325)) #b00000000000000000000000000000000 Nil!4160)))

(declare-datatypes ((Unit!8472 0))(
  ( (Unit!8473) )
))
(declare-fun lt!135953 () Unit!8472)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13370 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4163) Unit!8472)

(assert (=> b!272081 (= lt!135953 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4160))))

(declare-fun b!272082 () Bool)

(declare-fun res!136109 () Bool)

(assert (=> b!272082 (=> (not res!136109) (not e!174728))))

(assert (=> b!272082 (= res!136109 (validKeyInArray!0 (select (arr!6334 a!3325) startIndex!26)))))

(assert (= (and start!26284 res!136104) b!272077))

(assert (= (and b!272077 res!136102) b!272074))

(assert (= (and b!272074 res!136106) b!272078))

(assert (= (and b!272078 res!136110) b!272076))

(assert (= (and b!272076 res!136108) b!272080))

(assert (= (and b!272080 res!136105) b!272079))

(assert (= (and b!272079 res!136107) b!272075))

(assert (= (and b!272075 res!136103) b!272082))

(assert (= (and b!272082 res!136109) b!272081))

(declare-fun m!287251 () Bool)

(assert (=> b!272076 m!287251))

(declare-fun m!287253 () Bool)

(assert (=> b!272081 m!287253))

(declare-fun m!287255 () Bool)

(assert (=> b!272081 m!287255))

(declare-fun m!287257 () Bool)

(assert (=> b!272081 m!287257))

(declare-fun m!287259 () Bool)

(assert (=> b!272080 m!287259))

(declare-fun m!287261 () Bool)

(assert (=> b!272074 m!287261))

(declare-fun m!287263 () Bool)

(assert (=> b!272079 m!287263))

(declare-fun m!287265 () Bool)

(assert (=> start!26284 m!287265))

(declare-fun m!287267 () Bool)

(assert (=> start!26284 m!287267))

(declare-fun m!287269 () Bool)

(assert (=> b!272082 m!287269))

(assert (=> b!272082 m!287269))

(declare-fun m!287271 () Bool)

(assert (=> b!272082 m!287271))

(declare-fun m!287273 () Bool)

(assert (=> b!272078 m!287273))

(push 1)

