; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44464 () Bool)

(assert start!44464)

(declare-fun b!488028 () Bool)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!31579 0))(
  ( (array!31580 (arr!15177 (Array (_ BitVec 32) (_ BitVec 64))) (size!15541 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31579)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun e!287119 () Bool)

(declare-datatypes ((SeekEntryResult!3651 0))(
  ( (MissingZero!3651 (index!16783 (_ BitVec 32))) (Found!3651 (index!16784 (_ BitVec 32))) (Intermediate!3651 (undefined!4463 Bool) (index!16785 (_ BitVec 32)) (x!45933 (_ BitVec 32))) (Undefined!3651) (MissingVacant!3651 (index!16786 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31579 (_ BitVec 32)) SeekEntryResult!3651)

(assert (=> b!488028 (= e!287119 (= (seekEntryOrOpen!0 (select (arr!15177 a!3235) j!176) a!3235 mask!3524) (Found!3651 j!176)))))

(declare-fun b!488029 () Bool)

(declare-fun res!291346 () Bool)

(declare-fun e!287122 () Bool)

(assert (=> b!488029 (=> (not res!291346) (not e!287122))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31579 (_ BitVec 32)) Bool)

(assert (=> b!488029 (= res!291346 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!488030 () Bool)

(declare-fun res!291343 () Bool)

(declare-fun e!287121 () Bool)

(assert (=> b!488030 (=> (not res!291343) (not e!287121))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!488030 (= res!291343 (validKeyInArray!0 (select (arr!15177 a!3235) j!176)))))

(declare-fun res!291340 () Bool)

(assert (=> start!44464 (=> (not res!291340) (not e!287121))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44464 (= res!291340 (validMask!0 mask!3524))))

(assert (=> start!44464 e!287121))

(assert (=> start!44464 true))

(declare-fun array_inv!10951 (array!31579) Bool)

(assert (=> start!44464 (array_inv!10951 a!3235)))

(declare-fun b!488031 () Bool)

(assert (=> b!488031 (= e!287121 e!287122)))

(declare-fun res!291344 () Bool)

(assert (=> b!488031 (=> (not res!291344) (not e!287122))))

(declare-fun lt!220302 () SeekEntryResult!3651)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!488031 (= res!291344 (or (= lt!220302 (MissingZero!3651 i!1204)) (= lt!220302 (MissingVacant!3651 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(assert (=> b!488031 (= lt!220302 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!488032 () Bool)

(declare-fun res!291341 () Bool)

(assert (=> b!488032 (=> (not res!291341) (not e!287121))))

(assert (=> b!488032 (= res!291341 (and (= (size!15541 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15541 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15541 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!488033 () Bool)

(declare-fun res!291339 () Bool)

(assert (=> b!488033 (=> (not res!291339) (not e!287121))))

(assert (=> b!488033 (= res!291339 (validKeyInArray!0 k!2280))))

(declare-fun b!488034 () Bool)

(declare-fun res!291342 () Bool)

(assert (=> b!488034 (=> (not res!291342) (not e!287122))))

(declare-datatypes ((List!9388 0))(
  ( (Nil!9385) (Cons!9384 (h!10243 (_ BitVec 64)) (t!15624 List!9388)) )
))
(declare-fun arrayNoDuplicates!0 (array!31579 (_ BitVec 32) List!9388) Bool)

(assert (=> b!488034 (= res!291342 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9385))))

(declare-fun b!488035 () Bool)

(assert (=> b!488035 (= e!287122 (not true))))

(declare-fun lt!220303 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!488035 (= lt!220303 (toIndex!0 (select (arr!15177 a!3235) j!176) mask!3524))))

(assert (=> b!488035 e!287119))

(declare-fun res!291347 () Bool)

(assert (=> b!488035 (=> (not res!291347) (not e!287119))))

(assert (=> b!488035 (= res!291347 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14240 0))(
  ( (Unit!14241) )
))
(declare-fun lt!220304 () Unit!14240)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31579 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14240)

(assert (=> b!488035 (= lt!220304 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!488036 () Bool)

(declare-fun res!291345 () Bool)

(assert (=> b!488036 (=> (not res!291345) (not e!287121))))

(declare-fun arrayContainsKey!0 (array!31579 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!488036 (= res!291345 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(assert (= (and start!44464 res!291340) b!488032))

(assert (= (and b!488032 res!291341) b!488030))

(assert (= (and b!488030 res!291343) b!488033))

(assert (= (and b!488033 res!291339) b!488036))

(assert (= (and b!488036 res!291345) b!488031))

(assert (= (and b!488031 res!291344) b!488029))

(assert (= (and b!488029 res!291346) b!488034))

(assert (= (and b!488034 res!291342) b!488035))

(assert (= (and b!488035 res!291347) b!488028))

(declare-fun m!467815 () Bool)

(assert (=> b!488036 m!467815))

(declare-fun m!467817 () Bool)

(assert (=> b!488033 m!467817))

(declare-fun m!467819 () Bool)

(assert (=> b!488031 m!467819))

(declare-fun m!467821 () Bool)

(assert (=> start!44464 m!467821))

(declare-fun m!467823 () Bool)

(assert (=> start!44464 m!467823))

(declare-fun m!467825 () Bool)

(assert (=> b!488030 m!467825))

(assert (=> b!488030 m!467825))

(declare-fun m!467827 () Bool)

(assert (=> b!488030 m!467827))

(assert (=> b!488035 m!467825))

(assert (=> b!488035 m!467825))

(declare-fun m!467829 () Bool)

(assert (=> b!488035 m!467829))

(declare-fun m!467831 () Bool)

(assert (=> b!488035 m!467831))

(declare-fun m!467833 () Bool)

(assert (=> b!488035 m!467833))

(assert (=> b!488028 m!467825))

(assert (=> b!488028 m!467825))

(declare-fun m!467835 () Bool)

(assert (=> b!488028 m!467835))

(declare-fun m!467837 () Bool)

(assert (=> b!488034 m!467837))

(declare-fun m!467839 () Bool)

(assert (=> b!488029 m!467839))

(push 1)

