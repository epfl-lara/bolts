; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45064 () Bool)

(assert start!45064)

(declare-fun b!494261 () Bool)

(declare-fun res!296981 () Bool)

(declare-fun e!290084 () Bool)

(assert (=> b!494261 (=> res!296981 e!290084)))

(declare-datatypes ((SeekEntryResult!3840 0))(
  ( (MissingZero!3840 (index!17539 (_ BitVec 32))) (Found!3840 (index!17540 (_ BitVec 32))) (Intermediate!3840 (undefined!4652 Bool) (index!17541 (_ BitVec 32)) (x!46641 (_ BitVec 32))) (Undefined!3840) (MissingVacant!3840 (index!17542 (_ BitVec 32))) )
))
(declare-fun lt!223744 () SeekEntryResult!3840)

(assert (=> b!494261 (= res!296981 (or (not (is-Intermediate!3840 lt!223744)) (not (undefined!4652 lt!223744))))))

(declare-fun res!296984 () Bool)

(declare-fun e!290083 () Bool)

(assert (=> start!45064 (=> (not res!296984) (not e!290083))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45064 (= res!296984 (validMask!0 mask!3524))))

(assert (=> start!45064 e!290083))

(assert (=> start!45064 true))

(declare-datatypes ((array!31969 0))(
  ( (array!31970 (arr!15366 (Array (_ BitVec 32) (_ BitVec 64))) (size!15730 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31969)

(declare-fun array_inv!11140 (array!31969) Bool)

(assert (=> start!45064 (array_inv!11140 a!3235)))

(declare-fun b!494262 () Bool)

(assert (=> b!494262 (= e!290084 true)))

(declare-fun lt!223743 () SeekEntryResult!3840)

(assert (=> b!494262 (= lt!223743 Undefined!3840)))

(declare-fun b!494263 () Bool)

(declare-fun res!296989 () Bool)

(assert (=> b!494263 (=> (not res!296989) (not e!290083))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!494263 (= res!296989 (validKeyInArray!0 k!2280))))

(declare-fun b!494264 () Bool)

(declare-fun e!290085 () Bool)

(assert (=> b!494264 (= e!290083 e!290085)))

(declare-fun res!296983 () Bool)

(assert (=> b!494264 (=> (not res!296983) (not e!290085))))

(declare-fun lt!223745 () SeekEntryResult!3840)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!494264 (= res!296983 (or (= lt!223745 (MissingZero!3840 i!1204)) (= lt!223745 (MissingVacant!3840 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31969 (_ BitVec 32)) SeekEntryResult!3840)

(assert (=> b!494264 (= lt!223745 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!494265 () Bool)

(declare-fun res!296990 () Bool)

(assert (=> b!494265 (=> (not res!296990) (not e!290085))))

(declare-datatypes ((List!9577 0))(
  ( (Nil!9574) (Cons!9573 (h!10441 (_ BitVec 64)) (t!15813 List!9577)) )
))
(declare-fun arrayNoDuplicates!0 (array!31969 (_ BitVec 32) List!9577) Bool)

(assert (=> b!494265 (= res!296990 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9574))))

(declare-fun b!494266 () Bool)

(declare-fun res!296985 () Bool)

(assert (=> b!494266 (=> (not res!296985) (not e!290085))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31969 (_ BitVec 32)) Bool)

(assert (=> b!494266 (= res!296985 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!494267 () Bool)

(declare-fun res!296982 () Bool)

(assert (=> b!494267 (=> (not res!296982) (not e!290083))))

(declare-fun arrayContainsKey!0 (array!31969 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!494267 (= res!296982 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!494268 () Bool)

(assert (=> b!494268 (= e!290085 (not e!290084))))

(declare-fun res!296988 () Bool)

(assert (=> b!494268 (=> res!296988 e!290084)))

(declare-fun lt!223748 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31969 (_ BitVec 32)) SeekEntryResult!3840)

(assert (=> b!494268 (= res!296988 (= lt!223744 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223748 (select (store (arr!15366 a!3235) i!1204 k!2280) j!176) (array!31970 (store (arr!15366 a!3235) i!1204 k!2280) (size!15730 a!3235)) mask!3524)))))

(declare-fun lt!223747 () (_ BitVec 32))

(assert (=> b!494268 (= lt!223744 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223747 (select (arr!15366 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!494268 (= lt!223748 (toIndex!0 (select (store (arr!15366 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!494268 (= lt!223747 (toIndex!0 (select (arr!15366 a!3235) j!176) mask!3524))))

(assert (=> b!494268 (= lt!223743 (Found!3840 j!176))))

(assert (=> b!494268 (= lt!223743 (seekEntryOrOpen!0 (select (arr!15366 a!3235) j!176) a!3235 mask!3524))))

(assert (=> b!494268 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!14618 0))(
  ( (Unit!14619) )
))
(declare-fun lt!223746 () Unit!14618)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31969 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14618)

(assert (=> b!494268 (= lt!223746 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!494269 () Bool)

(declare-fun res!296987 () Bool)

(assert (=> b!494269 (=> (not res!296987) (not e!290083))))

(assert (=> b!494269 (= res!296987 (validKeyInArray!0 (select (arr!15366 a!3235) j!176)))))

(declare-fun b!494270 () Bool)

(declare-fun res!296986 () Bool)

(assert (=> b!494270 (=> (not res!296986) (not e!290083))))

(assert (=> b!494270 (= res!296986 (and (= (size!15730 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15730 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15730 a!3235)) (not (= i!1204 j!176))))))

(assert (= (and start!45064 res!296984) b!494270))

(assert (= (and b!494270 res!296986) b!494269))

(assert (= (and b!494269 res!296987) b!494263))

(assert (= (and b!494263 res!296989) b!494267))

(assert (= (and b!494267 res!296982) b!494264))

(assert (= (and b!494264 res!296983) b!494266))

(assert (= (and b!494266 res!296985) b!494265))

(assert (= (and b!494265 res!296990) b!494268))

(assert (= (and b!494268 (not res!296988)) b!494261))

(assert (= (and b!494261 (not res!296981)) b!494262))

(declare-fun m!475345 () Bool)

(assert (=> b!494265 m!475345))

(declare-fun m!475347 () Bool)

(assert (=> b!494267 m!475347))

(declare-fun m!475349 () Bool)

(assert (=> b!494264 m!475349))

(declare-fun m!475351 () Bool)

(assert (=> b!494263 m!475351))

(declare-fun m!475353 () Bool)

(assert (=> b!494266 m!475353))

(declare-fun m!475355 () Bool)

(assert (=> b!494268 m!475355))

(declare-fun m!475357 () Bool)

(assert (=> b!494268 m!475357))

(declare-fun m!475359 () Bool)

(assert (=> b!494268 m!475359))

(assert (=> b!494268 m!475359))

(declare-fun m!475361 () Bool)

(assert (=> b!494268 m!475361))

(declare-fun m!475363 () Bool)

(assert (=> b!494268 m!475363))

(declare-fun m!475365 () Bool)

(assert (=> b!494268 m!475365))

(assert (=> b!494268 m!475363))

(declare-fun m!475367 () Bool)

(assert (=> b!494268 m!475367))

(assert (=> b!494268 m!475363))

(declare-fun m!475369 () Bool)

(assert (=> b!494268 m!475369))

(assert (=> b!494268 m!475363))

(declare-fun m!475371 () Bool)

(assert (=> b!494268 m!475371))

(assert (=> b!494268 m!475359))

(declare-fun m!475373 () Bool)

(assert (=> b!494268 m!475373))

(assert (=> b!494269 m!475363))

(assert (=> b!494269 m!475363))

(declare-fun m!475375 () Bool)

(assert (=> b!494269 m!475375))

(declare-fun m!475377 () Bool)

(assert (=> start!45064 m!475377))

(declare-fun m!475379 () Bool)

(assert (=> start!45064 m!475379))

(push 1)

