; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45002 () Bool)

(assert start!45002)

(declare-fun b!493331 () Bool)

(declare-fun res!296053 () Bool)

(declare-fun e!289713 () Bool)

(assert (=> b!493331 (=> (not res!296053) (not e!289713))))

(declare-datatypes ((array!31907 0))(
  ( (array!31908 (arr!15335 (Array (_ BitVec 32) (_ BitVec 64))) (size!15699 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31907)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31907 (_ BitVec 32)) Bool)

(assert (=> b!493331 (= res!296053 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!493332 () Bool)

(declare-fun res!296059 () Bool)

(declare-fun e!289711 () Bool)

(assert (=> b!493332 (=> (not res!296059) (not e!289711))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!493332 (= res!296059 (validKeyInArray!0 k!2280))))

(declare-fun b!493333 () Bool)

(declare-fun e!289714 () Bool)

(assert (=> b!493333 (= e!289714 true)))

(declare-datatypes ((SeekEntryResult!3809 0))(
  ( (MissingZero!3809 (index!17415 (_ BitVec 32))) (Found!3809 (index!17416 (_ BitVec 32))) (Intermediate!3809 (undefined!4621 Bool) (index!17417 (_ BitVec 32)) (x!46522 (_ BitVec 32))) (Undefined!3809) (MissingVacant!3809 (index!17418 (_ BitVec 32))) )
))
(declare-fun lt!223188 () SeekEntryResult!3809)

(assert (=> b!493333 (= lt!223188 Undefined!3809)))

(declare-fun b!493334 () Bool)

(declare-fun res!296058 () Bool)

(assert (=> b!493334 (=> (not res!296058) (not e!289713))))

(declare-datatypes ((List!9546 0))(
  ( (Nil!9543) (Cons!9542 (h!10410 (_ BitVec 64)) (t!15782 List!9546)) )
))
(declare-fun arrayNoDuplicates!0 (array!31907 (_ BitVec 32) List!9546) Bool)

(assert (=> b!493334 (= res!296058 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9543))))

(declare-fun b!493335 () Bool)

(assert (=> b!493335 (= e!289711 e!289713)))

(declare-fun res!296052 () Bool)

(assert (=> b!493335 (=> (not res!296052) (not e!289713))))

(declare-fun lt!223190 () SeekEntryResult!3809)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!493335 (= res!296052 (or (= lt!223190 (MissingZero!3809 i!1204)) (= lt!223190 (MissingVacant!3809 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31907 (_ BitVec 32)) SeekEntryResult!3809)

(assert (=> b!493335 (= lt!223190 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!493336 () Bool)

(assert (=> b!493336 (= e!289713 (not e!289714))))

(declare-fun res!296057 () Bool)

(assert (=> b!493336 (=> res!296057 e!289714)))

(declare-fun lt!223187 () SeekEntryResult!3809)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!223189 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31907 (_ BitVec 32)) SeekEntryResult!3809)

(assert (=> b!493336 (= res!296057 (= lt!223187 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223189 (select (store (arr!15335 a!3235) i!1204 k!2280) j!176) (array!31908 (store (arr!15335 a!3235) i!1204 k!2280) (size!15699 a!3235)) mask!3524)))))

(declare-fun lt!223186 () (_ BitVec 32))

(assert (=> b!493336 (= lt!223187 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223186 (select (arr!15335 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!493336 (= lt!223189 (toIndex!0 (select (store (arr!15335 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!493336 (= lt!223186 (toIndex!0 (select (arr!15335 a!3235) j!176) mask!3524))))

(assert (=> b!493336 (= lt!223188 (Found!3809 j!176))))

(assert (=> b!493336 (= lt!223188 (seekEntryOrOpen!0 (select (arr!15335 a!3235) j!176) a!3235 mask!3524))))

(assert (=> b!493336 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!14556 0))(
  ( (Unit!14557) )
))
(declare-fun lt!223185 () Unit!14556)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31907 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14556)

(assert (=> b!493336 (= lt!223185 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!493337 () Bool)

(declare-fun res!296051 () Bool)

(assert (=> b!493337 (=> (not res!296051) (not e!289711))))

(declare-fun arrayContainsKey!0 (array!31907 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!493337 (= res!296051 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun res!296054 () Bool)

(assert (=> start!45002 (=> (not res!296054) (not e!289711))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45002 (= res!296054 (validMask!0 mask!3524))))

(assert (=> start!45002 e!289711))

(assert (=> start!45002 true))

(declare-fun array_inv!11109 (array!31907) Bool)

(assert (=> start!45002 (array_inv!11109 a!3235)))

(declare-fun b!493338 () Bool)

(declare-fun res!296060 () Bool)

(assert (=> b!493338 (=> (not res!296060) (not e!289711))))

(assert (=> b!493338 (= res!296060 (and (= (size!15699 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15699 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15699 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!493339 () Bool)

(declare-fun res!296055 () Bool)

(assert (=> b!493339 (=> res!296055 e!289714)))

(assert (=> b!493339 (= res!296055 (or (not (is-Intermediate!3809 lt!223187)) (not (undefined!4621 lt!223187))))))

(declare-fun b!493340 () Bool)

(declare-fun res!296056 () Bool)

(assert (=> b!493340 (=> (not res!296056) (not e!289711))))

(assert (=> b!493340 (= res!296056 (validKeyInArray!0 (select (arr!15335 a!3235) j!176)))))

(assert (= (and start!45002 res!296054) b!493338))

(assert (= (and b!493338 res!296060) b!493340))

(assert (= (and b!493340 res!296056) b!493332))

(assert (= (and b!493332 res!296059) b!493337))

(assert (= (and b!493337 res!296051) b!493335))

(assert (= (and b!493335 res!296052) b!493331))

(assert (= (and b!493331 res!296053) b!493334))

(assert (= (and b!493334 res!296058) b!493336))

(assert (= (and b!493336 (not res!296057)) b!493339))

(assert (= (and b!493339 (not res!296055)) b!493333))

(declare-fun m!474229 () Bool)

(assert (=> b!493332 m!474229))

(declare-fun m!474231 () Bool)

(assert (=> b!493334 m!474231))

(declare-fun m!474233 () Bool)

(assert (=> start!45002 m!474233))

(declare-fun m!474235 () Bool)

(assert (=> start!45002 m!474235))

(declare-fun m!474237 () Bool)

(assert (=> b!493337 m!474237))

(declare-fun m!474239 () Bool)

(assert (=> b!493331 m!474239))

(declare-fun m!474241 () Bool)

(assert (=> b!493340 m!474241))

(assert (=> b!493340 m!474241))

(declare-fun m!474243 () Bool)

(assert (=> b!493340 m!474243))

(declare-fun m!474245 () Bool)

(assert (=> b!493336 m!474245))

(declare-fun m!474247 () Bool)

(assert (=> b!493336 m!474247))

(declare-fun m!474249 () Bool)

(assert (=> b!493336 m!474249))

(declare-fun m!474251 () Bool)

(assert (=> b!493336 m!474251))

(assert (=> b!493336 m!474245))

(assert (=> b!493336 m!474241))

(declare-fun m!474253 () Bool)

(assert (=> b!493336 m!474253))

(assert (=> b!493336 m!474241))

(declare-fun m!474255 () Bool)

(assert (=> b!493336 m!474255))

(assert (=> b!493336 m!474241))

(declare-fun m!474257 () Bool)

(assert (=> b!493336 m!474257))

(assert (=> b!493336 m!474241))

(declare-fun m!474259 () Bool)

(assert (=> b!493336 m!474259))

(assert (=> b!493336 m!474245))

(declare-fun m!474261 () Bool)

(assert (=> b!493336 m!474261))

(declare-fun m!474263 () Bool)

(assert (=> b!493335 m!474263))

(push 1)

