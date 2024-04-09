; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46240 () Bool)

(assert start!46240)

(declare-fun b!511745 () Bool)

(declare-fun res!312560 () Bool)

(declare-fun e!298960 () Bool)

(assert (=> b!511745 (=> (not res!312560) (not e!298960))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!511745 (= res!312560 (validKeyInArray!0 k!2280))))

(declare-fun b!511746 () Bool)

(declare-fun res!312565 () Bool)

(declare-fun e!298958 () Bool)

(assert (=> b!511746 (=> (not res!312565) (not e!298958))))

(declare-datatypes ((array!32854 0))(
  ( (array!32855 (arr!15801 (Array (_ BitVec 32) (_ BitVec 64))) (size!16165 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32854)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32854 (_ BitVec 32)) Bool)

(assert (=> b!511746 (= res!312565 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!511747 () Bool)

(declare-fun res!312564 () Bool)

(assert (=> b!511747 (=> (not res!312564) (not e!298958))))

(declare-datatypes ((List!10012 0))(
  ( (Nil!10009) (Cons!10008 (h!10888 (_ BitVec 64)) (t!16248 List!10012)) )
))
(declare-fun arrayNoDuplicates!0 (array!32854 (_ BitVec 32) List!10012) Bool)

(assert (=> b!511747 (= res!312564 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10009))))

(declare-fun b!511748 () Bool)

(declare-fun res!312562 () Bool)

(assert (=> b!511748 (=> (not res!312562) (not e!298960))))

(declare-fun arrayContainsKey!0 (array!32854 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!511748 (= res!312562 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!511749 () Bool)

(declare-fun e!298957 () Bool)

(assert (=> b!511749 (= e!298958 (not e!298957))))

(declare-fun res!312558 () Bool)

(assert (=> b!511749 (=> res!312558 e!298957)))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4275 0))(
  ( (MissingZero!4275 (index!19288 (_ BitVec 32))) (Found!4275 (index!19289 (_ BitVec 32))) (Intermediate!4275 (undefined!5087 Bool) (index!19290 (_ BitVec 32)) (x!48269 (_ BitVec 32))) (Undefined!4275) (MissingVacant!4275 (index!19291 (_ BitVec 32))) )
))
(declare-fun lt!234245 () SeekEntryResult!4275)

(declare-fun lt!234246 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32854 (_ BitVec 32)) SeekEntryResult!4275)

(assert (=> b!511749 (= res!312558 (= lt!234245 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!234246 (select (store (arr!15801 a!3235) i!1204 k!2280) j!176) (array!32855 (store (arr!15801 a!3235) i!1204 k!2280) (size!16165 a!3235)) mask!3524)))))

(declare-fun lt!234248 () (_ BitVec 32))

(assert (=> b!511749 (= lt!234245 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!234248 (select (arr!15801 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!511749 (= lt!234246 (toIndex!0 (select (store (arr!15801 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!511749 (= lt!234248 (toIndex!0 (select (arr!15801 a!3235) j!176) mask!3524))))

(declare-fun lt!234243 () SeekEntryResult!4275)

(assert (=> b!511749 (= lt!234243 (Found!4275 j!176))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32854 (_ BitVec 32)) SeekEntryResult!4275)

(assert (=> b!511749 (= lt!234243 (seekEntryOrOpen!0 (select (arr!15801 a!3235) j!176) a!3235 mask!3524))))

(assert (=> b!511749 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!15800 0))(
  ( (Unit!15801) )
))
(declare-fun lt!234244 () Unit!15800)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32854 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15800)

(assert (=> b!511749 (= lt!234244 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!511750 () Bool)

(assert (=> b!511750 (= e!298960 e!298958)))

(declare-fun res!312561 () Bool)

(assert (=> b!511750 (=> (not res!312561) (not e!298958))))

(declare-fun lt!234247 () SeekEntryResult!4275)

(assert (=> b!511750 (= res!312561 (or (= lt!234247 (MissingZero!4275 i!1204)) (= lt!234247 (MissingVacant!4275 i!1204))))))

(assert (=> b!511750 (= lt!234247 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun res!312563 () Bool)

(assert (=> start!46240 (=> (not res!312563) (not e!298960))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46240 (= res!312563 (validMask!0 mask!3524))))

(assert (=> start!46240 e!298960))

(assert (=> start!46240 true))

(declare-fun array_inv!11575 (array!32854) Bool)

(assert (=> start!46240 (array_inv!11575 a!3235)))

(declare-fun b!511751 () Bool)

(assert (=> b!511751 (= e!298957 true)))

(assert (=> b!511751 (= lt!234243 Undefined!4275)))

(declare-fun b!511752 () Bool)

(declare-fun res!312557 () Bool)

(assert (=> b!511752 (=> (not res!312557) (not e!298960))))

(assert (=> b!511752 (= res!312557 (validKeyInArray!0 (select (arr!15801 a!3235) j!176)))))

(declare-fun b!511753 () Bool)

(declare-fun res!312566 () Bool)

(assert (=> b!511753 (=> res!312566 e!298957)))

(assert (=> b!511753 (= res!312566 (or (not (is-Intermediate!4275 lt!234245)) (not (undefined!5087 lt!234245))))))

(declare-fun b!511754 () Bool)

(declare-fun res!312559 () Bool)

(assert (=> b!511754 (=> (not res!312559) (not e!298960))))

(assert (=> b!511754 (= res!312559 (and (= (size!16165 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16165 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16165 a!3235)) (not (= i!1204 j!176))))))

(assert (= (and start!46240 res!312563) b!511754))

(assert (= (and b!511754 res!312559) b!511752))

(assert (= (and b!511752 res!312557) b!511745))

(assert (= (and b!511745 res!312560) b!511748))

(assert (= (and b!511748 res!312562) b!511750))

(assert (= (and b!511750 res!312561) b!511746))

(assert (= (and b!511746 res!312565) b!511747))

(assert (= (and b!511747 res!312564) b!511749))

(assert (= (and b!511749 (not res!312558)) b!511753))

(assert (= (and b!511753 (not res!312566)) b!511751))

(declare-fun m!493339 () Bool)

(assert (=> b!511746 m!493339))

(declare-fun m!493341 () Bool)

(assert (=> b!511748 m!493341))

(declare-fun m!493343 () Bool)

(assert (=> b!511745 m!493343))

(declare-fun m!493345 () Bool)

(assert (=> start!46240 m!493345))

(declare-fun m!493347 () Bool)

(assert (=> start!46240 m!493347))

(declare-fun m!493349 () Bool)

(assert (=> b!511750 m!493349))

(declare-fun m!493351 () Bool)

(assert (=> b!511752 m!493351))

(assert (=> b!511752 m!493351))

(declare-fun m!493353 () Bool)

(assert (=> b!511752 m!493353))

(declare-fun m!493355 () Bool)

(assert (=> b!511749 m!493355))

(declare-fun m!493357 () Bool)

(assert (=> b!511749 m!493357))

(assert (=> b!511749 m!493351))

(declare-fun m!493359 () Bool)

(assert (=> b!511749 m!493359))

(assert (=> b!511749 m!493351))

(declare-fun m!493361 () Bool)

(assert (=> b!511749 m!493361))

(assert (=> b!511749 m!493351))

(declare-fun m!493363 () Bool)

(assert (=> b!511749 m!493363))

(assert (=> b!511749 m!493351))

(declare-fun m!493365 () Bool)

(assert (=> b!511749 m!493365))

(assert (=> b!511749 m!493357))

(declare-fun m!493367 () Bool)

(assert (=> b!511749 m!493367))

(assert (=> b!511749 m!493357))

(declare-fun m!493369 () Bool)

(assert (=> b!511749 m!493369))

(declare-fun m!493371 () Bool)

(assert (=> b!511749 m!493371))

(declare-fun m!493373 () Bool)

(assert (=> b!511747 m!493373))

(push 1)

