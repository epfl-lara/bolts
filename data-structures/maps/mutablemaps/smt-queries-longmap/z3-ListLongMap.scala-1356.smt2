; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26706 () Bool)

(assert start!26706)

(declare-fun b!277074 () Bool)

(declare-fun res!141077 () Bool)

(declare-fun e!176903 () Bool)

(assert (=> b!277074 (=> (not res!141077) (not e!176903))))

(declare-datatypes ((array!13792 0))(
  ( (array!13793 (arr!6545 (Array (_ BitVec 32) (_ BitVec 64))) (size!6897 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13792)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13792 (_ BitVec 32)) Bool)

(assert (=> b!277074 (= res!141077 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!277075 () Bool)

(declare-fun res!141079 () Bool)

(assert (=> b!277075 (=> (not res!141079) (not e!176903))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!277075 (= res!141079 (= startIndex!26 i!1267))))

(declare-fun b!277076 () Bool)

(declare-datatypes ((Unit!8712 0))(
  ( (Unit!8713) )
))
(declare-fun e!176902 () Unit!8712)

(declare-fun lt!137863 () Unit!8712)

(assert (=> b!277076 (= e!176902 lt!137863)))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!13792 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8712)

(assert (=> b!277076 (= lt!137863 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k0!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(assert (=> b!277076 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) (array!13793 (store (arr!6545 a!3325) i!1267 k0!2581) (size!6897 a!3325)) mask!3868)))

(declare-fun b!277077 () Bool)

(declare-fun res!141075 () Bool)

(declare-fun e!176905 () Bool)

(assert (=> b!277077 (=> (not res!141075) (not e!176905))))

(assert (=> b!277077 (= res!141075 (and (= (size!6897 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6897 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6897 a!3325))))))

(declare-fun b!277078 () Bool)

(declare-fun res!141080 () Bool)

(assert (=> b!277078 (=> (not res!141080) (not e!176905))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!277078 (= res!141080 (validKeyInArray!0 k0!2581))))

(declare-fun b!277079 () Bool)

(declare-fun Unit!8714 () Unit!8712)

(assert (=> b!277079 (= e!176902 Unit!8714)))

(declare-fun b!277080 () Bool)

(declare-fun res!141078 () Bool)

(assert (=> b!277080 (=> (not res!141078) (not e!176905))))

(declare-datatypes ((List!4374 0))(
  ( (Nil!4371) (Cons!4370 (h!5037 (_ BitVec 64)) (t!9464 List!4374)) )
))
(declare-fun arrayNoDuplicates!0 (array!13792 (_ BitVec 32) List!4374) Bool)

(assert (=> b!277080 (= res!141078 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4371))))

(declare-fun b!277081 () Bool)

(assert (=> b!277081 (= e!176905 e!176903)))

(declare-fun res!141081 () Bool)

(assert (=> b!277081 (=> (not res!141081) (not e!176903))))

(declare-datatypes ((SeekEntryResult!1714 0))(
  ( (MissingZero!1714 (index!9026 (_ BitVec 32))) (Found!1714 (index!9027 (_ BitVec 32))) (Intermediate!1714 (undefined!2526 Bool) (index!9028 (_ BitVec 32)) (x!27247 (_ BitVec 32))) (Undefined!1714) (MissingVacant!1714 (index!9029 (_ BitVec 32))) )
))
(declare-fun lt!137864 () SeekEntryResult!1714)

(assert (=> b!277081 (= res!141081 (or (= lt!137864 (MissingZero!1714 i!1267)) (= lt!137864 (MissingVacant!1714 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13792 (_ BitVec 32)) SeekEntryResult!1714)

(assert (=> b!277081 (= lt!137864 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!277082 () Bool)

(declare-fun res!141074 () Bool)

(assert (=> b!277082 (=> (not res!141074) (not e!176905))))

(declare-fun arrayContainsKey!0 (array!13792 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!277082 (= res!141074 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun res!141076 () Bool)

(assert (=> start!26706 (=> (not res!141076) (not e!176905))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26706 (= res!141076 (validMask!0 mask!3868))))

(assert (=> start!26706 e!176905))

(declare-fun array_inv!4499 (array!13792) Bool)

(assert (=> start!26706 (array_inv!4499 a!3325)))

(assert (=> start!26706 true))

(declare-fun b!277083 () Bool)

(assert (=> b!277083 (= e!176903 false)))

(declare-fun lt!137862 () Unit!8712)

(assert (=> b!277083 (= lt!137862 e!176902)))

(declare-fun c!45551 () Bool)

(assert (=> b!277083 (= c!45551 (bvslt startIndex!26 (bvsub (size!6897 a!3325) #b00000000000000000000000000000001)))))

(assert (= (and start!26706 res!141076) b!277077))

(assert (= (and b!277077 res!141075) b!277078))

(assert (= (and b!277078 res!141080) b!277080))

(assert (= (and b!277080 res!141078) b!277082))

(assert (= (and b!277082 res!141074) b!277081))

(assert (= (and b!277081 res!141081) b!277074))

(assert (= (and b!277074 res!141077) b!277075))

(assert (= (and b!277075 res!141079) b!277083))

(assert (= (and b!277083 c!45551) b!277076))

(assert (= (and b!277083 (not c!45551)) b!277079))

(declare-fun m!292269 () Bool)

(assert (=> b!277076 m!292269))

(declare-fun m!292271 () Bool)

(assert (=> b!277076 m!292271))

(declare-fun m!292273 () Bool)

(assert (=> b!277076 m!292273))

(declare-fun m!292275 () Bool)

(assert (=> b!277074 m!292275))

(declare-fun m!292277 () Bool)

(assert (=> b!277078 m!292277))

(declare-fun m!292279 () Bool)

(assert (=> b!277080 m!292279))

(declare-fun m!292281 () Bool)

(assert (=> b!277081 m!292281))

(declare-fun m!292283 () Bool)

(assert (=> b!277082 m!292283))

(declare-fun m!292285 () Bool)

(assert (=> start!26706 m!292285))

(declare-fun m!292287 () Bool)

(assert (=> start!26706 m!292287))

(check-sat (not b!277074) (not b!277078) (not b!277081) (not start!26706) (not b!277082) (not b!277076) (not b!277080))
(check-sat)
