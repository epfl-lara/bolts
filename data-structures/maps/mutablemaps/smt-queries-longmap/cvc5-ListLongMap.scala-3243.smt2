; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45274 () Bool)

(assert start!45274)

(declare-fun b!496984 () Bool)

(declare-fun e!291353 () Bool)

(declare-fun e!291355 () Bool)

(assert (=> b!496984 (= e!291353 e!291355)))

(declare-fun res!299530 () Bool)

(assert (=> b!496984 (=> (not res!299530) (not e!291355))))

(declare-datatypes ((SeekEntryResult!3915 0))(
  ( (MissingZero!3915 (index!17839 (_ BitVec 32))) (Found!3915 (index!17840 (_ BitVec 32))) (Intermediate!3915 (undefined!4727 Bool) (index!17841 (_ BitVec 32)) (x!46922 (_ BitVec 32))) (Undefined!3915) (MissingVacant!3915 (index!17842 (_ BitVec 32))) )
))
(declare-fun lt!225043 () SeekEntryResult!3915)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!496984 (= res!299530 (or (= lt!225043 (MissingZero!3915 i!1204)) (= lt!225043 (MissingVacant!3915 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!32122 0))(
  ( (array!32123 (arr!15441 (Array (_ BitVec 32) (_ BitVec 64))) (size!15805 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32122)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32122 (_ BitVec 32)) SeekEntryResult!3915)

(assert (=> b!496984 (= lt!225043 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!496985 () Bool)

(declare-fun res!299524 () Bool)

(assert (=> b!496985 (=> (not res!299524) (not e!291353))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!496985 (= res!299524 (validKeyInArray!0 k!2280))))

(declare-fun b!496986 () Bool)

(declare-fun res!299521 () Bool)

(declare-fun e!291352 () Bool)

(assert (=> b!496986 (=> res!299521 e!291352)))

(declare-fun lt!225040 () SeekEntryResult!3915)

(assert (=> b!496986 (= res!299521 (or (undefined!4727 lt!225040) (not (is-Intermediate!3915 lt!225040))))))

(declare-fun b!496987 () Bool)

(declare-fun res!299529 () Bool)

(assert (=> b!496987 (=> (not res!299529) (not e!291353))))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!496987 (= res!299529 (validKeyInArray!0 (select (arr!15441 a!3235) j!176)))))

(declare-fun b!496988 () Bool)

(declare-fun res!299527 () Bool)

(assert (=> b!496988 (=> (not res!299527) (not e!291355))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32122 (_ BitVec 32)) Bool)

(assert (=> b!496988 (= res!299527 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!496989 () Bool)

(declare-fun res!299522 () Bool)

(assert (=> b!496989 (=> (not res!299522) (not e!291353))))

(declare-fun arrayContainsKey!0 (array!32122 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!496989 (= res!299522 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!496990 () Bool)

(assert (=> b!496990 (= e!291352 true)))

(assert (=> b!496990 (and (bvslt (x!46922 lt!225040) #b01111111111111111111111111111110) (or (= (select (arr!15441 a!3235) (index!17841 lt!225040)) (select (arr!15441 a!3235) j!176)) (= (select (arr!15441 a!3235) (index!17841 lt!225040)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15441 a!3235) (index!17841 lt!225040)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!496991 () Bool)

(declare-fun e!291351 () Bool)

(assert (=> b!496991 (= e!291351 (= (seekEntryOrOpen!0 (select (arr!15441 a!3235) j!176) a!3235 mask!3524) (Found!3915 j!176)))))

(declare-fun b!496992 () Bool)

(declare-fun res!299528 () Bool)

(assert (=> b!496992 (=> (not res!299528) (not e!291355))))

(declare-datatypes ((List!9652 0))(
  ( (Nil!9649) (Cons!9648 (h!10519 (_ BitVec 64)) (t!15888 List!9652)) )
))
(declare-fun arrayNoDuplicates!0 (array!32122 (_ BitVec 32) List!9652) Bool)

(assert (=> b!496992 (= res!299528 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9649))))

(declare-fun res!299526 () Bool)

(assert (=> start!45274 (=> (not res!299526) (not e!291353))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45274 (= res!299526 (validMask!0 mask!3524))))

(assert (=> start!45274 e!291353))

(assert (=> start!45274 true))

(declare-fun array_inv!11215 (array!32122) Bool)

(assert (=> start!45274 (array_inv!11215 a!3235)))

(declare-fun b!496993 () Bool)

(assert (=> b!496993 (= e!291355 (not e!291352))))

(declare-fun res!299523 () Bool)

(assert (=> b!496993 (=> res!299523 e!291352)))

(declare-fun lt!225041 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32122 (_ BitVec 32)) SeekEntryResult!3915)

(assert (=> b!496993 (= res!299523 (= lt!225040 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225041 (select (store (arr!15441 a!3235) i!1204 k!2280) j!176) (array!32123 (store (arr!15441 a!3235) i!1204 k!2280) (size!15805 a!3235)) mask!3524)))))

(declare-fun lt!225044 () (_ BitVec 32))

(assert (=> b!496993 (= lt!225040 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225044 (select (arr!15441 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!496993 (= lt!225041 (toIndex!0 (select (store (arr!15441 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!496993 (= lt!225044 (toIndex!0 (select (arr!15441 a!3235) j!176) mask!3524))))

(assert (=> b!496993 e!291351))

(declare-fun res!299531 () Bool)

(assert (=> b!496993 (=> (not res!299531) (not e!291351))))

(assert (=> b!496993 (= res!299531 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14768 0))(
  ( (Unit!14769) )
))
(declare-fun lt!225042 () Unit!14768)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32122 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14768)

(assert (=> b!496993 (= lt!225042 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!496994 () Bool)

(declare-fun res!299525 () Bool)

(assert (=> b!496994 (=> (not res!299525) (not e!291353))))

(assert (=> b!496994 (= res!299525 (and (= (size!15805 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15805 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15805 a!3235)) (not (= i!1204 j!176))))))

(assert (= (and start!45274 res!299526) b!496994))

(assert (= (and b!496994 res!299525) b!496987))

(assert (= (and b!496987 res!299529) b!496985))

(assert (= (and b!496985 res!299524) b!496989))

(assert (= (and b!496989 res!299522) b!496984))

(assert (= (and b!496984 res!299530) b!496988))

(assert (= (and b!496988 res!299527) b!496992))

(assert (= (and b!496992 res!299528) b!496993))

(assert (= (and b!496993 res!299531) b!496991))

(assert (= (and b!496993 (not res!299523)) b!496986))

(assert (= (and b!496986 (not res!299521)) b!496990))

(declare-fun m!478369 () Bool)

(assert (=> start!45274 m!478369))

(declare-fun m!478371 () Bool)

(assert (=> start!45274 m!478371))

(declare-fun m!478373 () Bool)

(assert (=> b!496988 m!478373))

(declare-fun m!478375 () Bool)

(assert (=> b!496993 m!478375))

(declare-fun m!478377 () Bool)

(assert (=> b!496993 m!478377))

(declare-fun m!478379 () Bool)

(assert (=> b!496993 m!478379))

(declare-fun m!478381 () Bool)

(assert (=> b!496993 m!478381))

(declare-fun m!478383 () Bool)

(assert (=> b!496993 m!478383))

(assert (=> b!496993 m!478381))

(declare-fun m!478385 () Bool)

(assert (=> b!496993 m!478385))

(assert (=> b!496993 m!478381))

(assert (=> b!496993 m!478379))

(declare-fun m!478387 () Bool)

(assert (=> b!496993 m!478387))

(declare-fun m!478389 () Bool)

(assert (=> b!496993 m!478389))

(assert (=> b!496993 m!478379))

(declare-fun m!478391 () Bool)

(assert (=> b!496993 m!478391))

(assert (=> b!496991 m!478381))

(assert (=> b!496991 m!478381))

(declare-fun m!478393 () Bool)

(assert (=> b!496991 m!478393))

(assert (=> b!496987 m!478381))

(assert (=> b!496987 m!478381))

(declare-fun m!478395 () Bool)

(assert (=> b!496987 m!478395))

(declare-fun m!478397 () Bool)

(assert (=> b!496990 m!478397))

(assert (=> b!496990 m!478381))

(declare-fun m!478399 () Bool)

(assert (=> b!496985 m!478399))

(declare-fun m!478401 () Bool)

(assert (=> b!496989 m!478401))

(declare-fun m!478403 () Bool)

(assert (=> b!496984 m!478403))

(declare-fun m!478405 () Bool)

(assert (=> b!496992 m!478405))

(push 1)

