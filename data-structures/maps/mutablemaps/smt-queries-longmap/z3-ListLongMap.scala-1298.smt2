; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26358 () Bool)

(assert start!26358)

(declare-fun b!273073 () Bool)

(declare-fun e!175095 () Bool)

(assert (=> b!273073 (= e!175095 (not true))))

(declare-datatypes ((array!13444 0))(
  ( (array!13445 (arr!6371 (Array (_ BitVec 32) (_ BitVec 64))) (size!6723 (_ BitVec 32))) )
))
(declare-fun lt!136239 () array!13444)

(declare-fun a!3325 () array!13444)

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!1540 0))(
  ( (MissingZero!1540 (index!8330 (_ BitVec 32))) (Found!1540 (index!8331 (_ BitVec 32))) (Intermediate!1540 (undefined!2352 Bool) (index!8332 (_ BitVec 32)) (x!26609 (_ BitVec 32))) (Undefined!1540) (MissingVacant!1540 (index!8333 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13444 (_ BitVec 32)) SeekEntryResult!1540)

(assert (=> b!273073 (= (seekEntryOrOpen!0 (select (arr!6371 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6371 a!3325) i!1267 k0!2581) startIndex!26) lt!136239 mask!3868))))

(declare-datatypes ((Unit!8546 0))(
  ( (Unit!8547) )
))
(declare-fun lt!136240 () Unit!8546)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!13444 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8546)

(assert (=> b!273073 (= lt!136240 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k0!2581 startIndex!26 mask!3868))))

(declare-datatypes ((List!4200 0))(
  ( (Nil!4197) (Cons!4196 (h!4863 (_ BitVec 64)) (t!9290 List!4200)) )
))
(declare-fun arrayNoDuplicates!0 (array!13444 (_ BitVec 32) List!4200) Bool)

(assert (=> b!273073 (arrayNoDuplicates!0 lt!136239 #b00000000000000000000000000000000 Nil!4197)))

(declare-fun lt!136241 () Unit!8546)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13444 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4200) Unit!8546)

(assert (=> b!273073 (= lt!136241 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k0!2581 i!1267 #b00000000000000000000000000000000 Nil!4197))))

(declare-fun b!273074 () Bool)

(declare-fun e!175096 () Bool)

(declare-fun e!175093 () Bool)

(assert (=> b!273074 (= e!175096 e!175093)))

(declare-fun res!137101 () Bool)

(assert (=> b!273074 (=> (not res!137101) (not e!175093))))

(declare-fun lt!136238 () SeekEntryResult!1540)

(assert (=> b!273074 (= res!137101 (or (= lt!136238 (MissingZero!1540 i!1267)) (= lt!136238 (MissingVacant!1540 i!1267))))))

(assert (=> b!273074 (= lt!136238 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!273075 () Bool)

(declare-fun res!137104 () Bool)

(assert (=> b!273075 (=> (not res!137104) (not e!175093))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13444 (_ BitVec 32)) Bool)

(assert (=> b!273075 (= res!137104 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!273076 () Bool)

(declare-fun res!137108 () Bool)

(assert (=> b!273076 (=> (not res!137108) (not e!175096))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!273076 (= res!137108 (validKeyInArray!0 k0!2581))))

(declare-fun b!273077 () Bool)

(declare-fun res!137106 () Bool)

(assert (=> b!273077 (=> (not res!137106) (not e!175095))))

(assert (=> b!273077 (= res!137106 (validKeyInArray!0 (select (arr!6371 a!3325) startIndex!26)))))

(declare-fun b!273078 () Bool)

(declare-fun res!137105 () Bool)

(assert (=> b!273078 (=> (not res!137105) (not e!175096))))

(assert (=> b!273078 (= res!137105 (and (= (size!6723 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6723 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6723 a!3325))))))

(declare-fun b!273079 () Bool)

(declare-fun res!137109 () Bool)

(assert (=> b!273079 (=> (not res!137109) (not e!175096))))

(declare-fun arrayContainsKey!0 (array!13444 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!273079 (= res!137109 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun res!137103 () Bool)

(assert (=> start!26358 (=> (not res!137103) (not e!175096))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26358 (= res!137103 (validMask!0 mask!3868))))

(assert (=> start!26358 e!175096))

(declare-fun array_inv!4325 (array!13444) Bool)

(assert (=> start!26358 (array_inv!4325 a!3325)))

(assert (=> start!26358 true))

(declare-fun b!273080 () Bool)

(declare-fun res!137102 () Bool)

(assert (=> b!273080 (=> (not res!137102) (not e!175096))))

(assert (=> b!273080 (= res!137102 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4197))))

(declare-fun b!273081 () Bool)

(assert (=> b!273081 (= e!175093 e!175095)))

(declare-fun res!137107 () Bool)

(assert (=> b!273081 (=> (not res!137107) (not e!175095))))

(assert (=> b!273081 (= res!137107 (not (= startIndex!26 i!1267)))))

(assert (=> b!273081 (= lt!136239 (array!13445 (store (arr!6371 a!3325) i!1267 k0!2581) (size!6723 a!3325)))))

(assert (= (and start!26358 res!137103) b!273078))

(assert (= (and b!273078 res!137105) b!273076))

(assert (= (and b!273076 res!137108) b!273080))

(assert (= (and b!273080 res!137102) b!273079))

(assert (= (and b!273079 res!137109) b!273074))

(assert (= (and b!273074 res!137101) b!273075))

(assert (= (and b!273075 res!137104) b!273081))

(assert (= (and b!273081 res!137107) b!273077))

(assert (= (and b!273077 res!137106) b!273073))

(declare-fun m!288219 () Bool)

(assert (=> b!273080 m!288219))

(declare-fun m!288221 () Bool)

(assert (=> b!273076 m!288221))

(declare-fun m!288223 () Bool)

(assert (=> b!273075 m!288223))

(declare-fun m!288225 () Bool)

(assert (=> b!273079 m!288225))

(declare-fun m!288227 () Bool)

(assert (=> b!273081 m!288227))

(declare-fun m!288229 () Bool)

(assert (=> b!273074 m!288229))

(declare-fun m!288231 () Bool)

(assert (=> b!273073 m!288231))

(assert (=> b!273073 m!288227))

(declare-fun m!288233 () Bool)

(assert (=> b!273073 m!288233))

(declare-fun m!288235 () Bool)

(assert (=> b!273073 m!288235))

(declare-fun m!288237 () Bool)

(assert (=> b!273073 m!288237))

(assert (=> b!273073 m!288231))

(declare-fun m!288239 () Bool)

(assert (=> b!273073 m!288239))

(declare-fun m!288241 () Bool)

(assert (=> b!273073 m!288241))

(assert (=> b!273073 m!288235))

(declare-fun m!288243 () Bool)

(assert (=> b!273073 m!288243))

(assert (=> b!273077 m!288235))

(assert (=> b!273077 m!288235))

(declare-fun m!288245 () Bool)

(assert (=> b!273077 m!288245))

(declare-fun m!288247 () Bool)

(assert (=> start!26358 m!288247))

(declare-fun m!288249 () Bool)

(assert (=> start!26358 m!288249))

(check-sat (not b!273075) (not start!26358) (not b!273077) (not b!273074) (not b!273079) (not b!273076) (not b!273073) (not b!273080))
(check-sat)
