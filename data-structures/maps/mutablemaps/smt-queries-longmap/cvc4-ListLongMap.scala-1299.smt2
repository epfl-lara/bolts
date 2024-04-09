; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26366 () Bool)

(assert start!26366)

(declare-fun b!273181 () Bool)

(declare-fun e!175142 () Bool)

(assert (=> b!273181 (= e!175142 (not true))))

(declare-datatypes ((array!13452 0))(
  ( (array!13453 (arr!6375 (Array (_ BitVec 32) (_ BitVec 64))) (size!6727 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13452)

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun lt!136287 () array!13452)

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!1544 0))(
  ( (MissingZero!1544 (index!8346 (_ BitVec 32))) (Found!1544 (index!8347 (_ BitVec 32))) (Intermediate!1544 (undefined!2356 Bool) (index!8348 (_ BitVec 32)) (x!26621 (_ BitVec 32))) (Undefined!1544) (MissingVacant!1544 (index!8349 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13452 (_ BitVec 32)) SeekEntryResult!1544)

(assert (=> b!273181 (= (seekEntryOrOpen!0 (select (arr!6375 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6375 a!3325) i!1267 k!2581) startIndex!26) lt!136287 mask!3868))))

(declare-datatypes ((Unit!8554 0))(
  ( (Unit!8555) )
))
(declare-fun lt!136289 () Unit!8554)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!13452 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8554)

(assert (=> b!273181 (= lt!136289 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k!2581 startIndex!26 mask!3868))))

(declare-datatypes ((List!4204 0))(
  ( (Nil!4201) (Cons!4200 (h!4867 (_ BitVec 64)) (t!9294 List!4204)) )
))
(declare-fun arrayNoDuplicates!0 (array!13452 (_ BitVec 32) List!4204) Bool)

(assert (=> b!273181 (arrayNoDuplicates!0 lt!136287 #b00000000000000000000000000000000 Nil!4201)))

(declare-fun lt!136288 () Unit!8554)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13452 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4204) Unit!8554)

(assert (=> b!273181 (= lt!136288 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4201))))

(declare-fun b!273182 () Bool)

(declare-fun e!175141 () Bool)

(declare-fun e!175144 () Bool)

(assert (=> b!273182 (= e!175141 e!175144)))

(declare-fun res!137211 () Bool)

(assert (=> b!273182 (=> (not res!137211) (not e!175144))))

(declare-fun lt!136286 () SeekEntryResult!1544)

(assert (=> b!273182 (= res!137211 (or (= lt!136286 (MissingZero!1544 i!1267)) (= lt!136286 (MissingVacant!1544 i!1267))))))

(assert (=> b!273182 (= lt!136286 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun res!137215 () Bool)

(assert (=> start!26366 (=> (not res!137215) (not e!175141))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26366 (= res!137215 (validMask!0 mask!3868))))

(assert (=> start!26366 e!175141))

(declare-fun array_inv!4329 (array!13452) Bool)

(assert (=> start!26366 (array_inv!4329 a!3325)))

(assert (=> start!26366 true))

(declare-fun b!273183 () Bool)

(declare-fun res!137217 () Bool)

(assert (=> b!273183 (=> (not res!137217) (not e!175141))))

(assert (=> b!273183 (= res!137217 (and (= (size!6727 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6727 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6727 a!3325))))))

(declare-fun b!273184 () Bool)

(declare-fun res!137212 () Bool)

(assert (=> b!273184 (=> (not res!137212) (not e!175142))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!273184 (= res!137212 (validKeyInArray!0 (select (arr!6375 a!3325) startIndex!26)))))

(declare-fun b!273185 () Bool)

(declare-fun res!137210 () Bool)

(assert (=> b!273185 (=> (not res!137210) (not e!175141))))

(assert (=> b!273185 (= res!137210 (validKeyInArray!0 k!2581))))

(declare-fun b!273186 () Bool)

(declare-fun res!137209 () Bool)

(assert (=> b!273186 (=> (not res!137209) (not e!175141))))

(assert (=> b!273186 (= res!137209 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4201))))

(declare-fun b!273187 () Bool)

(assert (=> b!273187 (= e!175144 e!175142)))

(declare-fun res!137213 () Bool)

(assert (=> b!273187 (=> (not res!137213) (not e!175142))))

(assert (=> b!273187 (= res!137213 (not (= startIndex!26 i!1267)))))

(assert (=> b!273187 (= lt!136287 (array!13453 (store (arr!6375 a!3325) i!1267 k!2581) (size!6727 a!3325)))))

(declare-fun b!273188 () Bool)

(declare-fun res!137216 () Bool)

(assert (=> b!273188 (=> (not res!137216) (not e!175144))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13452 (_ BitVec 32)) Bool)

(assert (=> b!273188 (= res!137216 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!273189 () Bool)

(declare-fun res!137214 () Bool)

(assert (=> b!273189 (=> (not res!137214) (not e!175141))))

(declare-fun arrayContainsKey!0 (array!13452 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!273189 (= res!137214 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(assert (= (and start!26366 res!137215) b!273183))

(assert (= (and b!273183 res!137217) b!273185))

(assert (= (and b!273185 res!137210) b!273186))

(assert (= (and b!273186 res!137209) b!273189))

(assert (= (and b!273189 res!137214) b!273182))

(assert (= (and b!273182 res!137211) b!273188))

(assert (= (and b!273188 res!137216) b!273187))

(assert (= (and b!273187 res!137213) b!273184))

(assert (= (and b!273184 res!137212) b!273181))

(declare-fun m!288347 () Bool)

(assert (=> b!273185 m!288347))

(declare-fun m!288349 () Bool)

(assert (=> b!273182 m!288349))

(declare-fun m!288351 () Bool)

(assert (=> b!273188 m!288351))

(declare-fun m!288353 () Bool)

(assert (=> b!273184 m!288353))

(assert (=> b!273184 m!288353))

(declare-fun m!288355 () Bool)

(assert (=> b!273184 m!288355))

(declare-fun m!288357 () Bool)

(assert (=> b!273187 m!288357))

(declare-fun m!288359 () Bool)

(assert (=> start!26366 m!288359))

(declare-fun m!288361 () Bool)

(assert (=> start!26366 m!288361))

(declare-fun m!288363 () Bool)

(assert (=> b!273186 m!288363))

(declare-fun m!288365 () Bool)

(assert (=> b!273189 m!288365))

(declare-fun m!288367 () Bool)

(assert (=> b!273181 m!288367))

(declare-fun m!288369 () Bool)

(assert (=> b!273181 m!288369))

(assert (=> b!273181 m!288357))

(assert (=> b!273181 m!288353))

(declare-fun m!288371 () Bool)

(assert (=> b!273181 m!288371))

(declare-fun m!288373 () Bool)

(assert (=> b!273181 m!288373))

(assert (=> b!273181 m!288353))

(declare-fun m!288375 () Bool)

(assert (=> b!273181 m!288375))

(assert (=> b!273181 m!288369))

(declare-fun m!288377 () Bool)

(assert (=> b!273181 m!288377))

(push 1)

