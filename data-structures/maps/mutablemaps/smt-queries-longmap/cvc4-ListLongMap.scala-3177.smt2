; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44702 () Bool)

(assert start!44702)

(declare-fun b!490239 () Bool)

(declare-fun res!293329 () Bool)

(declare-fun e!288198 () Bool)

(assert (=> b!490239 (=> (not res!293329) (not e!288198))))

(declare-datatypes ((array!31721 0))(
  ( (array!31722 (arr!15245 (Array (_ BitVec 32) (_ BitVec 64))) (size!15609 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31721)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!490239 (= res!293329 (validKeyInArray!0 (select (arr!15245 a!3235) j!176)))))

(declare-fun b!490240 () Bool)

(declare-fun res!293328 () Bool)

(declare-fun e!288199 () Bool)

(assert (=> b!490240 (=> (not res!293328) (not e!288199))))

(declare-datatypes ((List!9456 0))(
  ( (Nil!9453) (Cons!9452 (h!10314 (_ BitVec 64)) (t!15692 List!9456)) )
))
(declare-fun arrayNoDuplicates!0 (array!31721 (_ BitVec 32) List!9456) Bool)

(assert (=> b!490240 (= res!293328 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9453))))

(declare-fun b!490241 () Bool)

(declare-fun res!293326 () Bool)

(assert (=> b!490241 (=> (not res!293326) (not e!288198))))

(declare-fun k!2280 () (_ BitVec 64))

(assert (=> b!490241 (= res!293326 (validKeyInArray!0 k!2280))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun b!490242 () Bool)

(declare-fun e!288196 () Bool)

(declare-datatypes ((SeekEntryResult!3719 0))(
  ( (MissingZero!3719 (index!17055 (_ BitVec 32))) (Found!3719 (index!17056 (_ BitVec 32))) (Intermediate!3719 (undefined!4531 Bool) (index!17057 (_ BitVec 32)) (x!46180 (_ BitVec 32))) (Undefined!3719) (MissingVacant!3719 (index!17058 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31721 (_ BitVec 32)) SeekEntryResult!3719)

(assert (=> b!490242 (= e!288196 (= (seekEntryOrOpen!0 (select (arr!15245 a!3235) j!176) a!3235 mask!3524) (Found!3719 j!176)))))

(declare-fun b!490243 () Bool)

(assert (=> b!490243 (= e!288199 (not true))))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun lt!221451 () (_ BitVec 32))

(declare-fun lt!221454 () SeekEntryResult!3719)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31721 (_ BitVec 32)) SeekEntryResult!3719)

(assert (=> b!490243 (= lt!221454 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!221451 (select (store (arr!15245 a!3235) i!1204 k!2280) j!176) (array!31722 (store (arr!15245 a!3235) i!1204 k!2280) (size!15609 a!3235)) mask!3524))))

(declare-fun lt!221455 () SeekEntryResult!3719)

(declare-fun lt!221456 () (_ BitVec 32))

(assert (=> b!490243 (= lt!221455 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!221456 (select (arr!15245 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!490243 (= lt!221451 (toIndex!0 (select (store (arr!15245 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!490243 (= lt!221456 (toIndex!0 (select (arr!15245 a!3235) j!176) mask!3524))))

(assert (=> b!490243 e!288196))

(declare-fun res!293331 () Bool)

(assert (=> b!490243 (=> (not res!293331) (not e!288196))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31721 (_ BitVec 32)) Bool)

(assert (=> b!490243 (= res!293331 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14376 0))(
  ( (Unit!14377) )
))
(declare-fun lt!221453 () Unit!14376)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31721 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14376)

(assert (=> b!490243 (= lt!221453 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!490245 () Bool)

(declare-fun res!293333 () Bool)

(assert (=> b!490245 (=> (not res!293333) (not e!288198))))

(declare-fun arrayContainsKey!0 (array!31721 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!490245 (= res!293333 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun res!293325 () Bool)

(assert (=> start!44702 (=> (not res!293325) (not e!288198))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44702 (= res!293325 (validMask!0 mask!3524))))

(assert (=> start!44702 e!288198))

(assert (=> start!44702 true))

(declare-fun array_inv!11019 (array!31721) Bool)

(assert (=> start!44702 (array_inv!11019 a!3235)))

(declare-fun b!490244 () Bool)

(declare-fun res!293332 () Bool)

(assert (=> b!490244 (=> (not res!293332) (not e!288199))))

(assert (=> b!490244 (= res!293332 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!490246 () Bool)

(assert (=> b!490246 (= e!288198 e!288199)))

(declare-fun res!293327 () Bool)

(assert (=> b!490246 (=> (not res!293327) (not e!288199))))

(declare-fun lt!221452 () SeekEntryResult!3719)

(assert (=> b!490246 (= res!293327 (or (= lt!221452 (MissingZero!3719 i!1204)) (= lt!221452 (MissingVacant!3719 i!1204))))))

(assert (=> b!490246 (= lt!221452 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!490247 () Bool)

(declare-fun res!293330 () Bool)

(assert (=> b!490247 (=> (not res!293330) (not e!288198))))

(assert (=> b!490247 (= res!293330 (and (= (size!15609 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15609 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15609 a!3235)) (not (= i!1204 j!176))))))

(assert (= (and start!44702 res!293325) b!490247))

(assert (= (and b!490247 res!293330) b!490239))

(assert (= (and b!490239 res!293329) b!490241))

(assert (= (and b!490241 res!293326) b!490245))

(assert (= (and b!490245 res!293333) b!490246))

(assert (= (and b!490246 res!293327) b!490244))

(assert (= (and b!490244 res!293332) b!490240))

(assert (= (and b!490240 res!293328) b!490243))

(assert (= (and b!490243 res!293331) b!490242))

(declare-fun m!470383 () Bool)

(assert (=> start!44702 m!470383))

(declare-fun m!470385 () Bool)

(assert (=> start!44702 m!470385))

(declare-fun m!470387 () Bool)

(assert (=> b!490241 m!470387))

(declare-fun m!470389 () Bool)

(assert (=> b!490240 m!470389))

(declare-fun m!470391 () Bool)

(assert (=> b!490246 m!470391))

(declare-fun m!470393 () Bool)

(assert (=> b!490239 m!470393))

(assert (=> b!490239 m!470393))

(declare-fun m!470395 () Bool)

(assert (=> b!490239 m!470395))

(assert (=> b!490242 m!470393))

(assert (=> b!490242 m!470393))

(declare-fun m!470397 () Bool)

(assert (=> b!490242 m!470397))

(assert (=> b!490243 m!470393))

(declare-fun m!470399 () Bool)

(assert (=> b!490243 m!470399))

(declare-fun m!470401 () Bool)

(assert (=> b!490243 m!470401))

(declare-fun m!470403 () Bool)

(assert (=> b!490243 m!470403))

(declare-fun m!470405 () Bool)

(assert (=> b!490243 m!470405))

(declare-fun m!470407 () Bool)

(assert (=> b!490243 m!470407))

(assert (=> b!490243 m!470401))

(assert (=> b!490243 m!470393))

(declare-fun m!470409 () Bool)

(assert (=> b!490243 m!470409))

(assert (=> b!490243 m!470393))

(declare-fun m!470411 () Bool)

(assert (=> b!490243 m!470411))

(assert (=> b!490243 m!470401))

(declare-fun m!470413 () Bool)

(assert (=> b!490243 m!470413))

(declare-fun m!470415 () Bool)

(assert (=> b!490245 m!470415))

(declare-fun m!470417 () Bool)

(assert (=> b!490244 m!470417))

(push 1)

