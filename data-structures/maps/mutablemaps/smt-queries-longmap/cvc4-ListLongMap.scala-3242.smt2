; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45272 () Bool)

(assert start!45272)

(declare-fun b!496951 () Bool)

(declare-fun res!299490 () Bool)

(declare-fun e!291338 () Bool)

(assert (=> b!496951 (=> (not res!299490) (not e!291338))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!32120 0))(
  ( (array!32121 (arr!15440 (Array (_ BitVec 32) (_ BitVec 64))) (size!15804 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32120)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!496951 (= res!299490 (and (= (size!15804 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15804 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15804 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!496952 () Bool)

(declare-fun res!299493 () Bool)

(declare-fun e!291336 () Bool)

(assert (=> b!496952 (=> (not res!299493) (not e!291336))))

(declare-datatypes ((List!9651 0))(
  ( (Nil!9648) (Cons!9647 (h!10518 (_ BitVec 64)) (t!15887 List!9651)) )
))
(declare-fun arrayNoDuplicates!0 (array!32120 (_ BitVec 32) List!9651) Bool)

(assert (=> b!496952 (= res!299493 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9648))))

(declare-fun b!496953 () Bool)

(declare-fun res!299488 () Bool)

(assert (=> b!496953 (=> (not res!299488) (not e!291338))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32120 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!496953 (= res!299488 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!496954 () Bool)

(declare-fun e!291339 () Bool)

(assert (=> b!496954 (= e!291339 true)))

(declare-datatypes ((SeekEntryResult!3914 0))(
  ( (MissingZero!3914 (index!17835 (_ BitVec 32))) (Found!3914 (index!17836 (_ BitVec 32))) (Intermediate!3914 (undefined!4726 Bool) (index!17837 (_ BitVec 32)) (x!46913 (_ BitVec 32))) (Undefined!3914) (MissingVacant!3914 (index!17838 (_ BitVec 32))) )
))
(declare-fun lt!225027 () SeekEntryResult!3914)

(assert (=> b!496954 (and (bvslt (x!46913 lt!225027) #b01111111111111111111111111111110) (or (= (select (arr!15440 a!3235) (index!17837 lt!225027)) (select (arr!15440 a!3235) j!176)) (= (select (arr!15440 a!3235) (index!17837 lt!225027)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15440 a!3235) (index!17837 lt!225027)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!496955 () Bool)

(assert (=> b!496955 (= e!291338 e!291336)))

(declare-fun res!299489 () Bool)

(assert (=> b!496955 (=> (not res!299489) (not e!291336))))

(declare-fun lt!225026 () SeekEntryResult!3914)

(assert (=> b!496955 (= res!299489 (or (= lt!225026 (MissingZero!3914 i!1204)) (= lt!225026 (MissingVacant!3914 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32120 (_ BitVec 32)) SeekEntryResult!3914)

(assert (=> b!496955 (= lt!225026 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!496956 () Bool)

(declare-fun res!299495 () Bool)

(assert (=> b!496956 (=> res!299495 e!291339)))

(assert (=> b!496956 (= res!299495 (or (undefined!4726 lt!225027) (not (is-Intermediate!3914 lt!225027))))))

(declare-fun e!291340 () Bool)

(declare-fun b!496958 () Bool)

(assert (=> b!496958 (= e!291340 (= (seekEntryOrOpen!0 (select (arr!15440 a!3235) j!176) a!3235 mask!3524) (Found!3914 j!176)))))

(declare-fun b!496959 () Bool)

(declare-fun res!299491 () Bool)

(assert (=> b!496959 (=> (not res!299491) (not e!291338))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!496959 (= res!299491 (validKeyInArray!0 (select (arr!15440 a!3235) j!176)))))

(declare-fun b!496960 () Bool)

(declare-fun res!299494 () Bool)

(assert (=> b!496960 (=> (not res!299494) (not e!291336))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32120 (_ BitVec 32)) Bool)

(assert (=> b!496960 (= res!299494 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!496961 () Bool)

(assert (=> b!496961 (= e!291336 (not e!291339))))

(declare-fun res!299496 () Bool)

(assert (=> b!496961 (=> res!299496 e!291339)))

(declare-fun lt!225028 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32120 (_ BitVec 32)) SeekEntryResult!3914)

(assert (=> b!496961 (= res!299496 (= lt!225027 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225028 (select (store (arr!15440 a!3235) i!1204 k!2280) j!176) (array!32121 (store (arr!15440 a!3235) i!1204 k!2280) (size!15804 a!3235)) mask!3524)))))

(declare-fun lt!225029 () (_ BitVec 32))

(assert (=> b!496961 (= lt!225027 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225029 (select (arr!15440 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!496961 (= lt!225028 (toIndex!0 (select (store (arr!15440 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!496961 (= lt!225029 (toIndex!0 (select (arr!15440 a!3235) j!176) mask!3524))))

(assert (=> b!496961 e!291340))

(declare-fun res!299492 () Bool)

(assert (=> b!496961 (=> (not res!299492) (not e!291340))))

(assert (=> b!496961 (= res!299492 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14766 0))(
  ( (Unit!14767) )
))
(declare-fun lt!225025 () Unit!14766)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32120 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14766)

(assert (=> b!496961 (= lt!225025 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun res!299497 () Bool)

(assert (=> start!45272 (=> (not res!299497) (not e!291338))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45272 (= res!299497 (validMask!0 mask!3524))))

(assert (=> start!45272 e!291338))

(assert (=> start!45272 true))

(declare-fun array_inv!11214 (array!32120) Bool)

(assert (=> start!45272 (array_inv!11214 a!3235)))

(declare-fun b!496957 () Bool)

(declare-fun res!299498 () Bool)

(assert (=> b!496957 (=> (not res!299498) (not e!291338))))

(assert (=> b!496957 (= res!299498 (validKeyInArray!0 k!2280))))

(assert (= (and start!45272 res!299497) b!496951))

(assert (= (and b!496951 res!299490) b!496959))

(assert (= (and b!496959 res!299491) b!496957))

(assert (= (and b!496957 res!299498) b!496953))

(assert (= (and b!496953 res!299488) b!496955))

(assert (= (and b!496955 res!299489) b!496960))

(assert (= (and b!496960 res!299494) b!496952))

(assert (= (and b!496952 res!299493) b!496961))

(assert (= (and b!496961 res!299492) b!496958))

(assert (= (and b!496961 (not res!299496)) b!496956))

(assert (= (and b!496956 (not res!299495)) b!496954))

(declare-fun m!478331 () Bool)

(assert (=> b!496958 m!478331))

(assert (=> b!496958 m!478331))

(declare-fun m!478333 () Bool)

(assert (=> b!496958 m!478333))

(declare-fun m!478335 () Bool)

(assert (=> b!496955 m!478335))

(declare-fun m!478337 () Bool)

(assert (=> start!45272 m!478337))

(declare-fun m!478339 () Bool)

(assert (=> start!45272 m!478339))

(declare-fun m!478341 () Bool)

(assert (=> b!496952 m!478341))

(declare-fun m!478343 () Bool)

(assert (=> b!496961 m!478343))

(declare-fun m!478345 () Bool)

(assert (=> b!496961 m!478345))

(declare-fun m!478347 () Bool)

(assert (=> b!496961 m!478347))

(assert (=> b!496961 m!478331))

(declare-fun m!478349 () Bool)

(assert (=> b!496961 m!478349))

(assert (=> b!496961 m!478331))

(assert (=> b!496961 m!478347))

(declare-fun m!478351 () Bool)

(assert (=> b!496961 m!478351))

(assert (=> b!496961 m!478347))

(declare-fun m!478353 () Bool)

(assert (=> b!496961 m!478353))

(declare-fun m!478355 () Bool)

(assert (=> b!496961 m!478355))

(assert (=> b!496961 m!478331))

(declare-fun m!478357 () Bool)

(assert (=> b!496961 m!478357))

(assert (=> b!496959 m!478331))

(assert (=> b!496959 m!478331))

(declare-fun m!478359 () Bool)

(assert (=> b!496959 m!478359))

(declare-fun m!478361 () Bool)

(assert (=> b!496954 m!478361))

(assert (=> b!496954 m!478331))

(declare-fun m!478363 () Bool)

(assert (=> b!496953 m!478363))

(declare-fun m!478365 () Bool)

(assert (=> b!496957 m!478365))

(declare-fun m!478367 () Bool)

(assert (=> b!496960 m!478367))

(push 1)

