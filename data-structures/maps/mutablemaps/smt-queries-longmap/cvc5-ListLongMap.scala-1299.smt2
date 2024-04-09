; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26362 () Bool)

(assert start!26362)

(declare-fun b!273127 () Bool)

(declare-fun e!175119 () Bool)

(declare-fun e!175120 () Bool)

(assert (=> b!273127 (= e!175119 e!175120)))

(declare-fun res!137155 () Bool)

(assert (=> b!273127 (=> (not res!137155) (not e!175120))))

(declare-datatypes ((SeekEntryResult!1542 0))(
  ( (MissingZero!1542 (index!8338 (_ BitVec 32))) (Found!1542 (index!8339 (_ BitVec 32))) (Intermediate!1542 (undefined!2354 Bool) (index!8340 (_ BitVec 32)) (x!26619 (_ BitVec 32))) (Undefined!1542) (MissingVacant!1542 (index!8341 (_ BitVec 32))) )
))
(declare-fun lt!136265 () SeekEntryResult!1542)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!273127 (= res!137155 (or (= lt!136265 (MissingZero!1542 i!1267)) (= lt!136265 (MissingVacant!1542 i!1267))))))

(declare-datatypes ((array!13448 0))(
  ( (array!13449 (arr!6373 (Array (_ BitVec 32) (_ BitVec 64))) (size!6725 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13448)

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13448 (_ BitVec 32)) SeekEntryResult!1542)

(assert (=> b!273127 (= lt!136265 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!273128 () Bool)

(declare-fun res!137157 () Bool)

(assert (=> b!273128 (=> (not res!137157) (not e!175119))))

(declare-fun arrayContainsKey!0 (array!13448 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!273128 (= res!137157 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun res!137161 () Bool)

(assert (=> start!26362 (=> (not res!137161) (not e!175119))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26362 (= res!137161 (validMask!0 mask!3868))))

(assert (=> start!26362 e!175119))

(declare-fun array_inv!4327 (array!13448) Bool)

(assert (=> start!26362 (array_inv!4327 a!3325)))

(assert (=> start!26362 true))

(declare-fun b!273129 () Bool)

(declare-fun res!137158 () Bool)

(assert (=> b!273129 (=> (not res!137158) (not e!175119))))

(declare-datatypes ((List!4202 0))(
  ( (Nil!4199) (Cons!4198 (h!4865 (_ BitVec 64)) (t!9292 List!4202)) )
))
(declare-fun arrayNoDuplicates!0 (array!13448 (_ BitVec 32) List!4202) Bool)

(assert (=> b!273129 (= res!137158 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4199))))

(declare-fun b!273130 () Bool)

(declare-fun res!137159 () Bool)

(declare-fun e!175118 () Bool)

(assert (=> b!273130 (=> (not res!137159) (not e!175118))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!273130 (= res!137159 (validKeyInArray!0 (select (arr!6373 a!3325) startIndex!26)))))

(declare-fun b!273131 () Bool)

(declare-fun res!137160 () Bool)

(assert (=> b!273131 (=> (not res!137160) (not e!175119))))

(assert (=> b!273131 (= res!137160 (validKeyInArray!0 k!2581))))

(declare-fun b!273132 () Bool)

(assert (=> b!273132 (= e!175120 e!175118)))

(declare-fun res!137163 () Bool)

(assert (=> b!273132 (=> (not res!137163) (not e!175118))))

(assert (=> b!273132 (= res!137163 (not (= startIndex!26 i!1267)))))

(declare-fun lt!136263 () array!13448)

(assert (=> b!273132 (= lt!136263 (array!13449 (store (arr!6373 a!3325) i!1267 k!2581) (size!6725 a!3325)))))

(declare-fun b!273133 () Bool)

(declare-fun res!137162 () Bool)

(assert (=> b!273133 (=> (not res!137162) (not e!175119))))

(assert (=> b!273133 (= res!137162 (and (= (size!6725 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6725 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6725 a!3325))))))

(declare-fun b!273134 () Bool)

(declare-fun res!137156 () Bool)

(assert (=> b!273134 (=> (not res!137156) (not e!175120))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13448 (_ BitVec 32)) Bool)

(assert (=> b!273134 (= res!137156 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!273135 () Bool)

(assert (=> b!273135 (= e!175118 (not true))))

(assert (=> b!273135 (= (seekEntryOrOpen!0 (select (arr!6373 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6373 a!3325) i!1267 k!2581) startIndex!26) lt!136263 mask!3868))))

(declare-datatypes ((Unit!8550 0))(
  ( (Unit!8551) )
))
(declare-fun lt!136262 () Unit!8550)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!13448 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8550)

(assert (=> b!273135 (= lt!136262 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k!2581 startIndex!26 mask!3868))))

(assert (=> b!273135 (arrayNoDuplicates!0 lt!136263 #b00000000000000000000000000000000 Nil!4199)))

(declare-fun lt!136264 () Unit!8550)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13448 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4202) Unit!8550)

(assert (=> b!273135 (= lt!136264 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4199))))

(assert (= (and start!26362 res!137161) b!273133))

(assert (= (and b!273133 res!137162) b!273131))

(assert (= (and b!273131 res!137160) b!273129))

(assert (= (and b!273129 res!137158) b!273128))

(assert (= (and b!273128 res!137157) b!273127))

(assert (= (and b!273127 res!137155) b!273134))

(assert (= (and b!273134 res!137156) b!273132))

(assert (= (and b!273132 res!137163) b!273130))

(assert (= (and b!273130 res!137159) b!273135))

(declare-fun m!288283 () Bool)

(assert (=> b!273128 m!288283))

(declare-fun m!288285 () Bool)

(assert (=> b!273135 m!288285))

(declare-fun m!288287 () Bool)

(assert (=> b!273135 m!288287))

(declare-fun m!288289 () Bool)

(assert (=> b!273135 m!288289))

(declare-fun m!288291 () Bool)

(assert (=> b!273135 m!288291))

(declare-fun m!288293 () Bool)

(assert (=> b!273135 m!288293))

(declare-fun m!288295 () Bool)

(assert (=> b!273135 m!288295))

(assert (=> b!273135 m!288285))

(declare-fun m!288297 () Bool)

(assert (=> b!273135 m!288297))

(assert (=> b!273135 m!288291))

(declare-fun m!288299 () Bool)

(assert (=> b!273135 m!288299))

(declare-fun m!288301 () Bool)

(assert (=> b!273131 m!288301))

(assert (=> b!273132 m!288287))

(assert (=> b!273130 m!288291))

(assert (=> b!273130 m!288291))

(declare-fun m!288303 () Bool)

(assert (=> b!273130 m!288303))

(declare-fun m!288305 () Bool)

(assert (=> start!26362 m!288305))

(declare-fun m!288307 () Bool)

(assert (=> start!26362 m!288307))

(declare-fun m!288309 () Bool)

(assert (=> b!273129 m!288309))

(declare-fun m!288311 () Bool)

(assert (=> b!273127 m!288311))

(declare-fun m!288313 () Bool)

(assert (=> b!273134 m!288313))

(push 1)

