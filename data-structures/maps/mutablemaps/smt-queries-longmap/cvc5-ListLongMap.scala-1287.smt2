; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26290 () Bool)

(assert start!26290)

(declare-fun b!272155 () Bool)

(declare-fun res!136191 () Bool)

(declare-fun e!174755 () Bool)

(assert (=> b!272155 (=> (not res!136191) (not e!174755))))

(declare-datatypes ((array!13376 0))(
  ( (array!13377 (arr!6337 (Array (_ BitVec 32) (_ BitVec 64))) (size!6689 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13376)

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!272155 (= res!136191 (validKeyInArray!0 (select (arr!6337 a!3325) startIndex!26)))))

(declare-fun res!136190 () Bool)

(declare-fun e!174756 () Bool)

(assert (=> start!26290 (=> (not res!136190) (not e!174756))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26290 (= res!136190 (validMask!0 mask!3868))))

(assert (=> start!26290 e!174756))

(declare-fun array_inv!4291 (array!13376) Bool)

(assert (=> start!26290 (array_inv!4291 a!3325)))

(assert (=> start!26290 true))

(declare-fun b!272156 () Bool)

(declare-fun res!136183 () Bool)

(assert (=> b!272156 (=> (not res!136183) (not e!174756))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13376 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!272156 (= res!136183 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!272157 () Bool)

(declare-fun res!136184 () Bool)

(assert (=> b!272157 (=> (not res!136184) (not e!174756))))

(declare-datatypes ((List!4166 0))(
  ( (Nil!4163) (Cons!4162 (h!4829 (_ BitVec 64)) (t!9256 List!4166)) )
))
(declare-fun arrayNoDuplicates!0 (array!13376 (_ BitVec 32) List!4166) Bool)

(assert (=> b!272157 (= res!136184 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4163))))

(declare-fun b!272158 () Bool)

(declare-fun res!136185 () Bool)

(assert (=> b!272158 (=> (not res!136185) (not e!174755))))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!272158 (= res!136185 (not (= startIndex!26 i!1267)))))

(declare-fun b!272159 () Bool)

(declare-fun res!136188 () Bool)

(assert (=> b!272159 (=> (not res!136188) (not e!174755))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13376 (_ BitVec 32)) Bool)

(assert (=> b!272159 (= res!136188 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!272160 () Bool)

(assert (=> b!272160 (= e!174755 (not true))))

(assert (=> b!272160 (arrayNoDuplicates!0 (array!13377 (store (arr!6337 a!3325) i!1267 k!2581) (size!6689 a!3325)) #b00000000000000000000000000000000 Nil!4163)))

(declare-datatypes ((Unit!8478 0))(
  ( (Unit!8479) )
))
(declare-fun lt!135971 () Unit!8478)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13376 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4166) Unit!8478)

(assert (=> b!272160 (= lt!135971 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4163))))

(declare-fun b!272161 () Bool)

(declare-fun res!136187 () Bool)

(assert (=> b!272161 (=> (not res!136187) (not e!174756))))

(assert (=> b!272161 (= res!136187 (validKeyInArray!0 k!2581))))

(declare-fun b!272162 () Bool)

(assert (=> b!272162 (= e!174756 e!174755)))

(declare-fun res!136189 () Bool)

(assert (=> b!272162 (=> (not res!136189) (not e!174755))))

(declare-datatypes ((SeekEntryResult!1506 0))(
  ( (MissingZero!1506 (index!8194 (_ BitVec 32))) (Found!1506 (index!8195 (_ BitVec 32))) (Intermediate!1506 (undefined!2318 Bool) (index!8196 (_ BitVec 32)) (x!26487 (_ BitVec 32))) (Undefined!1506) (MissingVacant!1506 (index!8197 (_ BitVec 32))) )
))
(declare-fun lt!135970 () SeekEntryResult!1506)

(assert (=> b!272162 (= res!136189 (or (= lt!135970 (MissingZero!1506 i!1267)) (= lt!135970 (MissingVacant!1506 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13376 (_ BitVec 32)) SeekEntryResult!1506)

(assert (=> b!272162 (= lt!135970 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!272163 () Bool)

(declare-fun res!136186 () Bool)

(assert (=> b!272163 (=> (not res!136186) (not e!174756))))

(assert (=> b!272163 (= res!136186 (and (= (size!6689 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6689 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6689 a!3325))))))

(assert (= (and start!26290 res!136190) b!272163))

(assert (= (and b!272163 res!136186) b!272161))

(assert (= (and b!272161 res!136187) b!272157))

(assert (= (and b!272157 res!136184) b!272156))

(assert (= (and b!272156 res!136183) b!272162))

(assert (= (and b!272162 res!136189) b!272159))

(assert (= (and b!272159 res!136188) b!272158))

(assert (= (and b!272158 res!136185) b!272155))

(assert (= (and b!272155 res!136191) b!272160))

(declare-fun m!287323 () Bool)

(assert (=> b!272155 m!287323))

(assert (=> b!272155 m!287323))

(declare-fun m!287325 () Bool)

(assert (=> b!272155 m!287325))

(declare-fun m!287327 () Bool)

(assert (=> b!272156 m!287327))

(declare-fun m!287329 () Bool)

(assert (=> b!272159 m!287329))

(declare-fun m!287331 () Bool)

(assert (=> start!26290 m!287331))

(declare-fun m!287333 () Bool)

(assert (=> start!26290 m!287333))

(declare-fun m!287335 () Bool)

(assert (=> b!272160 m!287335))

(declare-fun m!287337 () Bool)

(assert (=> b!272160 m!287337))

(declare-fun m!287339 () Bool)

(assert (=> b!272160 m!287339))

(declare-fun m!287341 () Bool)

(assert (=> b!272161 m!287341))

(declare-fun m!287343 () Bool)

(assert (=> b!272162 m!287343))

(declare-fun m!287345 () Bool)

(assert (=> b!272157 m!287345))

(push 1)

