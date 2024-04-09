; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45168 () Bool)

(assert start!45168)

(declare-fun b!495235 () Bool)

(declare-fun res!297775 () Bool)

(declare-fun e!290556 () Bool)

(assert (=> b!495235 (=> (not res!297775) (not e!290556))))

(declare-datatypes ((array!32016 0))(
  ( (array!32017 (arr!15388 (Array (_ BitVec 32) (_ BitVec 64))) (size!15752 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32016)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32016 (_ BitVec 32)) Bool)

(assert (=> b!495235 (= res!297775 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!495236 () Bool)

(declare-fun res!297780 () Bool)

(assert (=> b!495236 (=> (not res!297780) (not e!290556))))

(declare-datatypes ((List!9599 0))(
  ( (Nil!9596) (Cons!9595 (h!10466 (_ BitVec 64)) (t!15835 List!9599)) )
))
(declare-fun arrayNoDuplicates!0 (array!32016 (_ BitVec 32) List!9599) Bool)

(assert (=> b!495236 (= res!297780 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9596))))

(declare-fun res!297776 () Bool)

(declare-fun e!290557 () Bool)

(assert (=> start!45168 (=> (not res!297776) (not e!290557))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45168 (= res!297776 (validMask!0 mask!3524))))

(assert (=> start!45168 e!290557))

(assert (=> start!45168 true))

(declare-fun array_inv!11162 (array!32016) Bool)

(assert (=> start!45168 (array_inv!11162 a!3235)))

(declare-fun b!495237 () Bool)

(declare-fun res!297774 () Bool)

(assert (=> b!495237 (=> (not res!297774) (not e!290557))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32016 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!495237 (= res!297774 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!495238 () Bool)

(declare-fun res!297773 () Bool)

(assert (=> b!495238 (=> (not res!297773) (not e!290557))))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!495238 (= res!297773 (and (= (size!15752 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15752 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15752 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!495239 () Bool)

(declare-fun res!297778 () Bool)

(assert (=> b!495239 (=> (not res!297778) (not e!290557))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!495239 (= res!297778 (validKeyInArray!0 (select (arr!15388 a!3235) j!176)))))

(declare-fun b!495240 () Bool)

(assert (=> b!495240 (= e!290557 e!290556)))

(declare-fun res!297772 () Bool)

(assert (=> b!495240 (=> (not res!297772) (not e!290556))))

(declare-datatypes ((SeekEntryResult!3862 0))(
  ( (MissingZero!3862 (index!17627 (_ BitVec 32))) (Found!3862 (index!17628 (_ BitVec 32))) (Intermediate!3862 (undefined!4674 Bool) (index!17629 (_ BitVec 32)) (x!46725 (_ BitVec 32))) (Undefined!3862) (MissingVacant!3862 (index!17630 (_ BitVec 32))) )
))
(declare-fun lt!224249 () SeekEntryResult!3862)

(assert (=> b!495240 (= res!297772 (or (= lt!224249 (MissingZero!3862 i!1204)) (= lt!224249 (MissingVacant!3862 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32016 (_ BitVec 32)) SeekEntryResult!3862)

(assert (=> b!495240 (= lt!224249 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!495241 () Bool)

(declare-fun e!290560 () Bool)

(assert (=> b!495241 (= e!290560 (= (seekEntryOrOpen!0 (select (arr!15388 a!3235) j!176) a!3235 mask!3524) (Found!3862 j!176)))))

(declare-fun b!495242 () Bool)

(declare-fun e!290558 () Bool)

(assert (=> b!495242 (= e!290556 (not e!290558))))

(declare-fun res!297779 () Bool)

(assert (=> b!495242 (=> res!297779 e!290558)))

(declare-fun lt!224247 () (_ BitVec 32))

(declare-fun lt!224248 () SeekEntryResult!3862)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32016 (_ BitVec 32)) SeekEntryResult!3862)

(assert (=> b!495242 (= res!297779 (= lt!224248 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224247 (select (store (arr!15388 a!3235) i!1204 k0!2280) j!176) (array!32017 (store (arr!15388 a!3235) i!1204 k0!2280) (size!15752 a!3235)) mask!3524)))))

(declare-fun lt!224245 () (_ BitVec 32))

(assert (=> b!495242 (= lt!224248 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224245 (select (arr!15388 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!495242 (= lt!224247 (toIndex!0 (select (store (arr!15388 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!495242 (= lt!224245 (toIndex!0 (select (arr!15388 a!3235) j!176) mask!3524))))

(assert (=> b!495242 e!290560))

(declare-fun res!297777 () Bool)

(assert (=> b!495242 (=> (not res!297777) (not e!290560))))

(assert (=> b!495242 (= res!297777 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14662 0))(
  ( (Unit!14663) )
))
(declare-fun lt!224246 () Unit!14662)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32016 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14662)

(assert (=> b!495242 (= lt!224246 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!495243 () Bool)

(assert (=> b!495243 (= e!290558 true)))

(assert (=> b!495243 (and (bvslt (x!46725 lt!224248) #b01111111111111111111111111111110) (or (= (select (arr!15388 a!3235) (index!17629 lt!224248)) (select (arr!15388 a!3235) j!176)) (= (select (arr!15388 a!3235) (index!17629 lt!224248)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15388 a!3235) (index!17629 lt!224248)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!495244 () Bool)

(declare-fun res!297782 () Bool)

(assert (=> b!495244 (=> res!297782 e!290558)))

(get-info :version)

(assert (=> b!495244 (= res!297782 (or (undefined!4674 lt!224248) (not ((_ is Intermediate!3862) lt!224248))))))

(declare-fun b!495245 () Bool)

(declare-fun res!297781 () Bool)

(assert (=> b!495245 (=> (not res!297781) (not e!290557))))

(assert (=> b!495245 (= res!297781 (validKeyInArray!0 k0!2280))))

(assert (= (and start!45168 res!297776) b!495238))

(assert (= (and b!495238 res!297773) b!495239))

(assert (= (and b!495239 res!297778) b!495245))

(assert (= (and b!495245 res!297781) b!495237))

(assert (= (and b!495237 res!297774) b!495240))

(assert (= (and b!495240 res!297772) b!495235))

(assert (= (and b!495235 res!297775) b!495236))

(assert (= (and b!495236 res!297780) b!495242))

(assert (= (and b!495242 res!297777) b!495241))

(assert (= (and b!495242 (not res!297779)) b!495244))

(assert (= (and b!495244 (not res!297782)) b!495243))

(declare-fun m!476355 () Bool)

(assert (=> b!495235 m!476355))

(declare-fun m!476357 () Bool)

(assert (=> b!495241 m!476357))

(assert (=> b!495241 m!476357))

(declare-fun m!476359 () Bool)

(assert (=> b!495241 m!476359))

(declare-fun m!476361 () Bool)

(assert (=> start!45168 m!476361))

(declare-fun m!476363 () Bool)

(assert (=> start!45168 m!476363))

(declare-fun m!476365 () Bool)

(assert (=> b!495237 m!476365))

(declare-fun m!476367 () Bool)

(assert (=> b!495245 m!476367))

(declare-fun m!476369 () Bool)

(assert (=> b!495236 m!476369))

(assert (=> b!495239 m!476357))

(assert (=> b!495239 m!476357))

(declare-fun m!476371 () Bool)

(assert (=> b!495239 m!476371))

(declare-fun m!476373 () Bool)

(assert (=> b!495243 m!476373))

(assert (=> b!495243 m!476357))

(declare-fun m!476375 () Bool)

(assert (=> b!495240 m!476375))

(declare-fun m!476377 () Bool)

(assert (=> b!495242 m!476377))

(declare-fun m!476379 () Bool)

(assert (=> b!495242 m!476379))

(declare-fun m!476381 () Bool)

(assert (=> b!495242 m!476381))

(declare-fun m!476383 () Bool)

(assert (=> b!495242 m!476383))

(assert (=> b!495242 m!476377))

(assert (=> b!495242 m!476357))

(declare-fun m!476385 () Bool)

(assert (=> b!495242 m!476385))

(assert (=> b!495242 m!476357))

(declare-fun m!476387 () Bool)

(assert (=> b!495242 m!476387))

(assert (=> b!495242 m!476377))

(declare-fun m!476389 () Bool)

(assert (=> b!495242 m!476389))

(assert (=> b!495242 m!476357))

(declare-fun m!476391 () Bool)

(assert (=> b!495242 m!476391))

(check-sat (not b!495235) (not b!495242) (not start!45168) (not b!495245) (not b!495237) (not b!495241) (not b!495236) (not b!495240) (not b!495239))
(check-sat)
