; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!27246 () Bool)

(assert start!27246)

(declare-fun b!281968 () Bool)

(declare-fun res!145081 () Bool)

(declare-fun e!179106 () Bool)

(assert (=> b!281968 (=> (not res!145081) (not e!179106))))

(declare-datatypes ((array!14053 0))(
  ( (array!14054 (arr!6668 (Array (_ BitVec 32) (_ BitVec 64))) (size!7020 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14053)

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!281968 (= res!145081 (validKeyInArray!0 (select (arr!6668 a!3325) startIndex!26)))))

(declare-fun b!281969 () Bool)

(assert (=> b!281969 (= e!179106 (not true))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14053 (_ BitVec 32)) Bool)

(assert (=> b!281969 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-datatypes ((Unit!8937 0))(
  ( (Unit!8938) )
))
(declare-fun lt!139333 () Unit!8937)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!14053 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!8937)

(assert (=> b!281969 (= lt!139333 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun lt!139332 () array!14053)

(declare-fun i!1267 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!1837 0))(
  ( (MissingZero!1837 (index!9518 (_ BitVec 32))) (Found!1837 (index!9519 (_ BitVec 32))) (Intermediate!1837 (undefined!2649 Bool) (index!9520 (_ BitVec 32)) (x!27707 (_ BitVec 32))) (Undefined!1837) (MissingVacant!1837 (index!9521 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14053 (_ BitVec 32)) SeekEntryResult!1837)

(assert (=> b!281969 (= (seekEntryOrOpen!0 (select (arr!6668 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6668 a!3325) i!1267 k0!2581) startIndex!26) lt!139332 mask!3868))))

(declare-fun lt!139330 () Unit!8937)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!14053 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8937)

(assert (=> b!281969 (= lt!139330 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k0!2581 startIndex!26 mask!3868))))

(declare-datatypes ((List!4497 0))(
  ( (Nil!4494) (Cons!4493 (h!5163 (_ BitVec 64)) (t!9587 List!4497)) )
))
(declare-fun arrayNoDuplicates!0 (array!14053 (_ BitVec 32) List!4497) Bool)

(assert (=> b!281969 (arrayNoDuplicates!0 lt!139332 #b00000000000000000000000000000000 Nil!4494)))

(declare-fun lt!139331 () Unit!8937)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!14053 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4497) Unit!8937)

(assert (=> b!281969 (= lt!139331 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k0!2581 i!1267 #b00000000000000000000000000000000 Nil!4494))))

(declare-fun res!145082 () Bool)

(declare-fun e!179105 () Bool)

(assert (=> start!27246 (=> (not res!145082) (not e!179105))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27246 (= res!145082 (validMask!0 mask!3868))))

(assert (=> start!27246 e!179105))

(declare-fun array_inv!4622 (array!14053) Bool)

(assert (=> start!27246 (array_inv!4622 a!3325)))

(assert (=> start!27246 true))

(declare-fun b!281970 () Bool)

(declare-fun res!145078 () Bool)

(declare-fun e!179107 () Bool)

(assert (=> b!281970 (=> (not res!145078) (not e!179107))))

(assert (=> b!281970 (= res!145078 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!281971 () Bool)

(assert (=> b!281971 (= e!179105 e!179107)))

(declare-fun res!145080 () Bool)

(assert (=> b!281971 (=> (not res!145080) (not e!179107))))

(declare-fun lt!139334 () SeekEntryResult!1837)

(assert (=> b!281971 (= res!145080 (or (= lt!139334 (MissingZero!1837 i!1267)) (= lt!139334 (MissingVacant!1837 i!1267))))))

(assert (=> b!281971 (= lt!139334 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!281972 () Bool)

(declare-fun res!145075 () Bool)

(assert (=> b!281972 (=> (not res!145075) (not e!179105))))

(assert (=> b!281972 (= res!145075 (and (= (size!7020 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7020 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7020 a!3325))))))

(declare-fun b!281973 () Bool)

(declare-fun res!145083 () Bool)

(assert (=> b!281973 (=> (not res!145083) (not e!179105))))

(assert (=> b!281973 (= res!145083 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4494))))

(declare-fun b!281974 () Bool)

(declare-fun res!145076 () Bool)

(assert (=> b!281974 (=> (not res!145076) (not e!179105))))

(declare-fun arrayContainsKey!0 (array!14053 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!281974 (= res!145076 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!281975 () Bool)

(assert (=> b!281975 (= e!179107 e!179106)))

(declare-fun res!145077 () Bool)

(assert (=> b!281975 (=> (not res!145077) (not e!179106))))

(assert (=> b!281975 (= res!145077 (not (= startIndex!26 i!1267)))))

(assert (=> b!281975 (= lt!139332 (array!14054 (store (arr!6668 a!3325) i!1267 k0!2581) (size!7020 a!3325)))))

(declare-fun b!281976 () Bool)

(declare-fun res!145079 () Bool)

(assert (=> b!281976 (=> (not res!145079) (not e!179105))))

(assert (=> b!281976 (= res!145079 (validKeyInArray!0 k0!2581))))

(assert (= (and start!27246 res!145082) b!281972))

(assert (= (and b!281972 res!145075) b!281976))

(assert (= (and b!281976 res!145079) b!281973))

(assert (= (and b!281973 res!145083) b!281974))

(assert (= (and b!281974 res!145076) b!281971))

(assert (= (and b!281971 res!145080) b!281970))

(assert (= (and b!281970 res!145078) b!281975))

(assert (= (and b!281975 res!145077) b!281968))

(assert (= (and b!281968 res!145081) b!281969))

(declare-fun m!296437 () Bool)

(assert (=> b!281974 m!296437))

(declare-fun m!296439 () Bool)

(assert (=> b!281970 m!296439))

(declare-fun m!296441 () Bool)

(assert (=> b!281976 m!296441))

(declare-fun m!296443 () Bool)

(assert (=> b!281971 m!296443))

(declare-fun m!296445 () Bool)

(assert (=> start!27246 m!296445))

(declare-fun m!296447 () Bool)

(assert (=> start!27246 m!296447))

(declare-fun m!296449 () Bool)

(assert (=> b!281975 m!296449))

(declare-fun m!296451 () Bool)

(assert (=> b!281969 m!296451))

(declare-fun m!296453 () Bool)

(assert (=> b!281969 m!296453))

(declare-fun m!296455 () Bool)

(assert (=> b!281969 m!296455))

(declare-fun m!296457 () Bool)

(assert (=> b!281969 m!296457))

(assert (=> b!281969 m!296453))

(assert (=> b!281969 m!296449))

(declare-fun m!296459 () Bool)

(assert (=> b!281969 m!296459))

(declare-fun m!296461 () Bool)

(assert (=> b!281969 m!296461))

(declare-fun m!296463 () Bool)

(assert (=> b!281969 m!296463))

(declare-fun m!296465 () Bool)

(assert (=> b!281969 m!296465))

(assert (=> b!281969 m!296461))

(declare-fun m!296467 () Bool)

(assert (=> b!281969 m!296467))

(declare-fun m!296469 () Bool)

(assert (=> b!281973 m!296469))

(assert (=> b!281968 m!296461))

(assert (=> b!281968 m!296461))

(declare-fun m!296471 () Bool)

(assert (=> b!281968 m!296471))

(check-sat (not b!281976) (not b!281974) (not b!281973) (not start!27246) (not b!281969) (not b!281970) (not b!281971) (not b!281968))
(check-sat)
