; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26356 () Bool)

(assert start!26356)

(declare-fun res!137076 () Bool)

(declare-fun e!175084 () Bool)

(assert (=> start!26356 (=> (not res!137076) (not e!175084))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26356 (= res!137076 (validMask!0 mask!3868))))

(assert (=> start!26356 e!175084))

(declare-datatypes ((array!13442 0))(
  ( (array!13443 (arr!6370 (Array (_ BitVec 32) (_ BitVec 64))) (size!6722 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13442)

(declare-fun array_inv!4324 (array!13442) Bool)

(assert (=> start!26356 (array_inv!4324 a!3325)))

(assert (=> start!26356 true))

(declare-fun b!273046 () Bool)

(declare-fun e!175081 () Bool)

(assert (=> b!273046 (= e!175084 e!175081)))

(declare-fun res!137074 () Bool)

(assert (=> b!273046 (=> (not res!137074) (not e!175081))))

(declare-datatypes ((SeekEntryResult!1539 0))(
  ( (MissingZero!1539 (index!8326 (_ BitVec 32))) (Found!1539 (index!8327 (_ BitVec 32))) (Intermediate!1539 (undefined!2351 Bool) (index!8328 (_ BitVec 32)) (x!26608 (_ BitVec 32))) (Undefined!1539) (MissingVacant!1539 (index!8329 (_ BitVec 32))) )
))
(declare-fun lt!136227 () SeekEntryResult!1539)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!273046 (= res!137074 (or (= lt!136227 (MissingZero!1539 i!1267)) (= lt!136227 (MissingVacant!1539 i!1267))))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13442 (_ BitVec 32)) SeekEntryResult!1539)

(assert (=> b!273046 (= lt!136227 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!273047 () Bool)

(declare-fun res!137077 () Bool)

(assert (=> b!273047 (=> (not res!137077) (not e!175084))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!273047 (= res!137077 (and (= (size!6722 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6722 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6722 a!3325))))))

(declare-fun b!273048 () Bool)

(declare-fun res!137082 () Bool)

(assert (=> b!273048 (=> (not res!137082) (not e!175084))))

(declare-fun arrayContainsKey!0 (array!13442 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!273048 (= res!137082 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!273049 () Bool)

(declare-fun res!137078 () Bool)

(assert (=> b!273049 (=> (not res!137078) (not e!175081))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13442 (_ BitVec 32)) Bool)

(assert (=> b!273049 (= res!137078 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!273050 () Bool)

(declare-fun res!137079 () Bool)

(declare-fun e!175082 () Bool)

(assert (=> b!273050 (=> (not res!137079) (not e!175082))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!273050 (= res!137079 (validKeyInArray!0 (select (arr!6370 a!3325) startIndex!26)))))

(declare-fun b!273051 () Bool)

(declare-fun res!137080 () Bool)

(assert (=> b!273051 (=> (not res!137080) (not e!175084))))

(declare-datatypes ((List!4199 0))(
  ( (Nil!4196) (Cons!4195 (h!4862 (_ BitVec 64)) (t!9289 List!4199)) )
))
(declare-fun arrayNoDuplicates!0 (array!13442 (_ BitVec 32) List!4199) Bool)

(assert (=> b!273051 (= res!137080 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4196))))

(declare-fun b!273052 () Bool)

(assert (=> b!273052 (= e!175082 (not true))))

(declare-fun lt!136228 () array!13442)

(assert (=> b!273052 (= (seekEntryOrOpen!0 (select (arr!6370 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6370 a!3325) i!1267 k!2581) startIndex!26) lt!136228 mask!3868))))

(declare-datatypes ((Unit!8544 0))(
  ( (Unit!8545) )
))
(declare-fun lt!136226 () Unit!8544)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!13442 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8544)

(assert (=> b!273052 (= lt!136226 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k!2581 startIndex!26 mask!3868))))

(assert (=> b!273052 (arrayNoDuplicates!0 lt!136228 #b00000000000000000000000000000000 Nil!4196)))

(declare-fun lt!136229 () Unit!8544)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13442 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4199) Unit!8544)

(assert (=> b!273052 (= lt!136229 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4196))))

(declare-fun b!273053 () Bool)

(assert (=> b!273053 (= e!175081 e!175082)))

(declare-fun res!137081 () Bool)

(assert (=> b!273053 (=> (not res!137081) (not e!175082))))

(assert (=> b!273053 (= res!137081 (not (= startIndex!26 i!1267)))))

(assert (=> b!273053 (= lt!136228 (array!13443 (store (arr!6370 a!3325) i!1267 k!2581) (size!6722 a!3325)))))

(declare-fun b!273054 () Bool)

(declare-fun res!137075 () Bool)

(assert (=> b!273054 (=> (not res!137075) (not e!175084))))

(assert (=> b!273054 (= res!137075 (validKeyInArray!0 k!2581))))

(assert (= (and start!26356 res!137076) b!273047))

(assert (= (and b!273047 res!137077) b!273054))

(assert (= (and b!273054 res!137075) b!273051))

(assert (= (and b!273051 res!137080) b!273048))

(assert (= (and b!273048 res!137082) b!273046))

(assert (= (and b!273046 res!137074) b!273049))

(assert (= (and b!273049 res!137078) b!273053))

(assert (= (and b!273053 res!137081) b!273050))

(assert (= (and b!273050 res!137079) b!273052))

(declare-fun m!288187 () Bool)

(assert (=> b!273052 m!288187))

(declare-fun m!288189 () Bool)

(assert (=> b!273052 m!288189))

(assert (=> b!273052 m!288187))

(declare-fun m!288191 () Bool)

(assert (=> b!273052 m!288191))

(declare-fun m!288193 () Bool)

(assert (=> b!273052 m!288193))

(declare-fun m!288195 () Bool)

(assert (=> b!273052 m!288195))

(declare-fun m!288197 () Bool)

(assert (=> b!273052 m!288197))

(declare-fun m!288199 () Bool)

(assert (=> b!273052 m!288199))

(assert (=> b!273052 m!288195))

(declare-fun m!288201 () Bool)

(assert (=> b!273052 m!288201))

(assert (=> b!273050 m!288195))

(assert (=> b!273050 m!288195))

(declare-fun m!288203 () Bool)

(assert (=> b!273050 m!288203))

(assert (=> b!273053 m!288193))

(declare-fun m!288205 () Bool)

(assert (=> b!273046 m!288205))

(declare-fun m!288207 () Bool)

(assert (=> b!273054 m!288207))

(declare-fun m!288209 () Bool)

(assert (=> b!273051 m!288209))

(declare-fun m!288211 () Bool)

(assert (=> start!26356 m!288211))

(declare-fun m!288213 () Bool)

(assert (=> start!26356 m!288213))

(declare-fun m!288215 () Bool)

(assert (=> b!273049 m!288215))

(declare-fun m!288217 () Bool)

(assert (=> b!273048 m!288217))

(push 1)

