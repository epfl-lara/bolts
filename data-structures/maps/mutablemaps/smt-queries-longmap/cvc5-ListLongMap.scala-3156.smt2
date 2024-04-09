; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44470 () Bool)

(assert start!44470)

(declare-fun b!488109 () Bool)

(declare-fun res!291425 () Bool)

(declare-fun e!287157 () Bool)

(assert (=> b!488109 (=> (not res!291425) (not e!287157))))

(declare-datatypes ((array!31585 0))(
  ( (array!31586 (arr!15180 (Array (_ BitVec 32) (_ BitVec 64))) (size!15544 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31585)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!488109 (= res!291425 (validKeyInArray!0 (select (arr!15180 a!3235) j!176)))))

(declare-fun b!488110 () Bool)

(declare-fun res!291427 () Bool)

(assert (=> b!488110 (=> (not res!291427) (not e!287157))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!31585 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!488110 (= res!291427 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun res!291423 () Bool)

(assert (=> start!44470 (=> (not res!291423) (not e!287157))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44470 (= res!291423 (validMask!0 mask!3524))))

(assert (=> start!44470 e!287157))

(assert (=> start!44470 true))

(declare-fun array_inv!10954 (array!31585) Bool)

(assert (=> start!44470 (array_inv!10954 a!3235)))

(declare-fun b!488111 () Bool)

(declare-fun res!291426 () Bool)

(assert (=> b!488111 (=> (not res!291426) (not e!287157))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!488111 (= res!291426 (and (= (size!15544 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15544 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15544 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!488112 () Bool)

(declare-fun res!291422 () Bool)

(assert (=> b!488112 (=> (not res!291422) (not e!287157))))

(assert (=> b!488112 (= res!291422 (validKeyInArray!0 k!2280))))

(declare-fun b!488113 () Bool)

(declare-fun res!291424 () Bool)

(declare-fun e!287158 () Bool)

(assert (=> b!488113 (=> (not res!291424) (not e!287158))))

(declare-datatypes ((List!9391 0))(
  ( (Nil!9388) (Cons!9387 (h!10246 (_ BitVec 64)) (t!15627 List!9391)) )
))
(declare-fun arrayNoDuplicates!0 (array!31585 (_ BitVec 32) List!9391) Bool)

(assert (=> b!488113 (= res!291424 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9388))))

(declare-fun e!287155 () Bool)

(declare-fun b!488114 () Bool)

(declare-datatypes ((SeekEntryResult!3654 0))(
  ( (MissingZero!3654 (index!16795 (_ BitVec 32))) (Found!3654 (index!16796 (_ BitVec 32))) (Intermediate!3654 (undefined!4466 Bool) (index!16797 (_ BitVec 32)) (x!45944 (_ BitVec 32))) (Undefined!3654) (MissingVacant!3654 (index!16798 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31585 (_ BitVec 32)) SeekEntryResult!3654)

(assert (=> b!488114 (= e!287155 (= (seekEntryOrOpen!0 (select (arr!15180 a!3235) j!176) a!3235 mask!3524) (Found!3654 j!176)))))

(declare-fun b!488115 () Bool)

(assert (=> b!488115 (= e!287157 e!287158)))

(declare-fun res!291428 () Bool)

(assert (=> b!488115 (=> (not res!291428) (not e!287158))))

(declare-fun lt!220327 () SeekEntryResult!3654)

(assert (=> b!488115 (= res!291428 (or (= lt!220327 (MissingZero!3654 i!1204)) (= lt!220327 (MissingVacant!3654 i!1204))))))

(assert (=> b!488115 (= lt!220327 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!488116 () Bool)

(assert (=> b!488116 (= e!287158 (not (bvsge mask!3524 #b00000000000000000000000000000000)))))

(assert (=> b!488116 e!287155))

(declare-fun res!291420 () Bool)

(assert (=> b!488116 (=> (not res!291420) (not e!287155))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31585 (_ BitVec 32)) Bool)

(assert (=> b!488116 (= res!291420 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14246 0))(
  ( (Unit!14247) )
))
(declare-fun lt!220328 () Unit!14246)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31585 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14246)

(assert (=> b!488116 (= lt!220328 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!488117 () Bool)

(declare-fun res!291421 () Bool)

(assert (=> b!488117 (=> (not res!291421) (not e!287158))))

(assert (=> b!488117 (= res!291421 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(assert (= (and start!44470 res!291423) b!488111))

(assert (= (and b!488111 res!291426) b!488109))

(assert (= (and b!488109 res!291425) b!488112))

(assert (= (and b!488112 res!291422) b!488110))

(assert (= (and b!488110 res!291427) b!488115))

(assert (= (and b!488115 res!291428) b!488117))

(assert (= (and b!488117 res!291421) b!488113))

(assert (= (and b!488113 res!291424) b!488116))

(assert (= (and b!488116 res!291420) b!488114))

(declare-fun m!467893 () Bool)

(assert (=> b!488113 m!467893))

(declare-fun m!467895 () Bool)

(assert (=> b!488117 m!467895))

(declare-fun m!467897 () Bool)

(assert (=> start!44470 m!467897))

(declare-fun m!467899 () Bool)

(assert (=> start!44470 m!467899))

(declare-fun m!467901 () Bool)

(assert (=> b!488116 m!467901))

(declare-fun m!467903 () Bool)

(assert (=> b!488116 m!467903))

(declare-fun m!467905 () Bool)

(assert (=> b!488114 m!467905))

(assert (=> b!488114 m!467905))

(declare-fun m!467907 () Bool)

(assert (=> b!488114 m!467907))

(declare-fun m!467909 () Bool)

(assert (=> b!488110 m!467909))

(declare-fun m!467911 () Bool)

(assert (=> b!488112 m!467911))

(declare-fun m!467913 () Bool)

(assert (=> b!488115 m!467913))

(assert (=> b!488109 m!467905))

(assert (=> b!488109 m!467905))

(declare-fun m!467915 () Bool)

(assert (=> b!488109 m!467915))

(push 1)

