; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44468 () Bool)

(assert start!44468)

(declare-fun b!488082 () Bool)

(declare-fun res!291399 () Bool)

(declare-fun e!287146 () Bool)

(assert (=> b!488082 (=> (not res!291399) (not e!287146))))

(declare-datatypes ((array!31583 0))(
  ( (array!31584 (arr!15179 (Array (_ BitVec 32) (_ BitVec 64))) (size!15543 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31583)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31583 (_ BitVec 32)) Bool)

(assert (=> b!488082 (= res!291399 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!488083 () Bool)

(declare-fun res!291394 () Bool)

(assert (=> b!488083 (=> (not res!291394) (not e!287146))))

(declare-datatypes ((List!9390 0))(
  ( (Nil!9387) (Cons!9386 (h!10245 (_ BitVec 64)) (t!15626 List!9390)) )
))
(declare-fun arrayNoDuplicates!0 (array!31583 (_ BitVec 32) List!9390) Bool)

(assert (=> b!488083 (= res!291394 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9387))))

(declare-fun b!488084 () Bool)

(declare-fun e!287143 () Bool)

(assert (=> b!488084 (= e!287143 e!287146)))

(declare-fun res!291397 () Bool)

(assert (=> b!488084 (=> (not res!291397) (not e!287146))))

(declare-datatypes ((SeekEntryResult!3653 0))(
  ( (MissingZero!3653 (index!16791 (_ BitVec 32))) (Found!3653 (index!16792 (_ BitVec 32))) (Intermediate!3653 (undefined!4465 Bool) (index!16793 (_ BitVec 32)) (x!45935 (_ BitVec 32))) (Undefined!3653) (MissingVacant!3653 (index!16794 (_ BitVec 32))) )
))
(declare-fun lt!220320 () SeekEntryResult!3653)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!488084 (= res!291397 (or (= lt!220320 (MissingZero!3653 i!1204)) (= lt!220320 (MissingVacant!3653 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31583 (_ BitVec 32)) SeekEntryResult!3653)

(assert (=> b!488084 (= lt!220320 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!488085 () Bool)

(declare-fun res!291395 () Bool)

(assert (=> b!488085 (=> (not res!291395) (not e!287143))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!488085 (= res!291395 (validKeyInArray!0 (select (arr!15179 a!3235) j!176)))))

(declare-fun b!488086 () Bool)

(declare-fun res!291400 () Bool)

(assert (=> b!488086 (=> (not res!291400) (not e!287143))))

(assert (=> b!488086 (= res!291400 (validKeyInArray!0 k!2280))))

(declare-fun b!488088 () Bool)

(declare-fun res!291398 () Bool)

(assert (=> b!488088 (=> (not res!291398) (not e!287143))))

(assert (=> b!488088 (= res!291398 (and (= (size!15543 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15543 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15543 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!488089 () Bool)

(assert (=> b!488089 (= e!287146 (not true))))

(declare-fun lt!220321 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!488089 (= lt!220321 (toIndex!0 (select (arr!15179 a!3235) j!176) mask!3524))))

(declare-fun e!287144 () Bool)

(assert (=> b!488089 e!287144))

(declare-fun res!291401 () Bool)

(assert (=> b!488089 (=> (not res!291401) (not e!287144))))

(assert (=> b!488089 (= res!291401 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14244 0))(
  ( (Unit!14245) )
))
(declare-fun lt!220322 () Unit!14244)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31583 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14244)

(assert (=> b!488089 (= lt!220322 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!488090 () Bool)

(declare-fun res!291393 () Bool)

(assert (=> b!488090 (=> (not res!291393) (not e!287143))))

(declare-fun arrayContainsKey!0 (array!31583 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!488090 (= res!291393 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun res!291396 () Bool)

(assert (=> start!44468 (=> (not res!291396) (not e!287143))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44468 (= res!291396 (validMask!0 mask!3524))))

(assert (=> start!44468 e!287143))

(assert (=> start!44468 true))

(declare-fun array_inv!10953 (array!31583) Bool)

(assert (=> start!44468 (array_inv!10953 a!3235)))

(declare-fun b!488087 () Bool)

(assert (=> b!488087 (= e!287144 (= (seekEntryOrOpen!0 (select (arr!15179 a!3235) j!176) a!3235 mask!3524) (Found!3653 j!176)))))

(assert (= (and start!44468 res!291396) b!488088))

(assert (= (and b!488088 res!291398) b!488085))

(assert (= (and b!488085 res!291395) b!488086))

(assert (= (and b!488086 res!291400) b!488090))

(assert (= (and b!488090 res!291393) b!488084))

(assert (= (and b!488084 res!291397) b!488082))

(assert (= (and b!488082 res!291399) b!488083))

(assert (= (and b!488083 res!291394) b!488089))

(assert (= (and b!488089 res!291401) b!488087))

(declare-fun m!467867 () Bool)

(assert (=> b!488089 m!467867))

(assert (=> b!488089 m!467867))

(declare-fun m!467869 () Bool)

(assert (=> b!488089 m!467869))

(declare-fun m!467871 () Bool)

(assert (=> b!488089 m!467871))

(declare-fun m!467873 () Bool)

(assert (=> b!488089 m!467873))

(declare-fun m!467875 () Bool)

(assert (=> b!488082 m!467875))

(declare-fun m!467877 () Bool)

(assert (=> b!488084 m!467877))

(assert (=> b!488085 m!467867))

(assert (=> b!488085 m!467867))

(declare-fun m!467879 () Bool)

(assert (=> b!488085 m!467879))

(declare-fun m!467881 () Bool)

(assert (=> start!44468 m!467881))

(declare-fun m!467883 () Bool)

(assert (=> start!44468 m!467883))

(declare-fun m!467885 () Bool)

(assert (=> b!488083 m!467885))

(assert (=> b!488087 m!467867))

(assert (=> b!488087 m!467867))

(declare-fun m!467887 () Bool)

(assert (=> b!488087 m!467887))

(declare-fun m!467889 () Bool)

(assert (=> b!488086 m!467889))

(declare-fun m!467891 () Bool)

(assert (=> b!488090 m!467891))

(push 1)

