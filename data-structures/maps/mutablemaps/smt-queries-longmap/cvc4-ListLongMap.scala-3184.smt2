; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44744 () Bool)

(assert start!44744)

(declare-fun b!490806 () Bool)

(declare-fun res!293899 () Bool)

(declare-fun e!288449 () Bool)

(assert (=> b!490806 (=> (not res!293899) (not e!288449))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!490806 (= res!293899 (validKeyInArray!0 k!2280))))

(declare-fun b!490807 () Bool)

(declare-fun res!293895 () Bool)

(assert (=> b!490807 (=> (not res!293895) (not e!288449))))

(declare-datatypes ((array!31763 0))(
  ( (array!31764 (arr!15266 (Array (_ BitVec 32) (_ BitVec 64))) (size!15630 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31763)

(declare-fun arrayContainsKey!0 (array!31763 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!490807 (= res!293895 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun res!293897 () Bool)

(assert (=> start!44744 (=> (not res!293897) (not e!288449))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44744 (= res!293897 (validMask!0 mask!3524))))

(assert (=> start!44744 e!288449))

(assert (=> start!44744 true))

(declare-fun array_inv!11040 (array!31763) Bool)

(assert (=> start!44744 (array_inv!11040 a!3235)))

(declare-fun b!490808 () Bool)

(declare-fun res!293898 () Bool)

(declare-fun e!288450 () Bool)

(assert (=> b!490808 (=> (not res!293898) (not e!288450))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31763 (_ BitVec 32)) Bool)

(assert (=> b!490808 (= res!293898 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!490809 () Bool)

(assert (=> b!490809 (= e!288449 e!288450)))

(declare-fun res!293892 () Bool)

(assert (=> b!490809 (=> (not res!293892) (not e!288450))))

(declare-datatypes ((SeekEntryResult!3740 0))(
  ( (MissingZero!3740 (index!17139 (_ BitVec 32))) (Found!3740 (index!17140 (_ BitVec 32))) (Intermediate!3740 (undefined!4552 Bool) (index!17141 (_ BitVec 32)) (x!46257 (_ BitVec 32))) (Undefined!3740) (MissingVacant!3740 (index!17142 (_ BitVec 32))) )
))
(declare-fun lt!221833 () SeekEntryResult!3740)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!490809 (= res!293892 (or (= lt!221833 (MissingZero!3740 i!1204)) (= lt!221833 (MissingVacant!3740 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31763 (_ BitVec 32)) SeekEntryResult!3740)

(assert (=> b!490809 (= lt!221833 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!490810 () Bool)

(declare-fun res!293900 () Bool)

(assert (=> b!490810 (=> (not res!293900) (not e!288450))))

(declare-datatypes ((List!9477 0))(
  ( (Nil!9474) (Cons!9473 (h!10335 (_ BitVec 64)) (t!15713 List!9477)) )
))
(declare-fun arrayNoDuplicates!0 (array!31763 (_ BitVec 32) List!9477) Bool)

(assert (=> b!490810 (= res!293900 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9474))))

(declare-fun b!490811 () Bool)

(declare-fun res!293893 () Bool)

(assert (=> b!490811 (=> (not res!293893) (not e!288449))))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!490811 (= res!293893 (and (= (size!15630 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15630 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15630 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!490812 () Bool)

(declare-fun res!293894 () Bool)

(assert (=> b!490812 (=> (not res!293894) (not e!288449))))

(assert (=> b!490812 (= res!293894 (validKeyInArray!0 (select (arr!15266 a!3235) j!176)))))

(declare-fun b!490813 () Bool)

(declare-fun e!288448 () Bool)

(assert (=> b!490813 (= e!288450 (not e!288448))))

(declare-fun res!293896 () Bool)

(assert (=> b!490813 (=> res!293896 e!288448)))

(declare-fun lt!221830 () array!31763)

(declare-fun lt!221834 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31763 (_ BitVec 32)) SeekEntryResult!3740)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!490813 (= res!293896 (not (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15266 a!3235) j!176) mask!3524) (select (arr!15266 a!3235) j!176) a!3235 mask!3524) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!221834 mask!3524) lt!221834 lt!221830 mask!3524))))))

(assert (=> b!490813 (= lt!221834 (select (store (arr!15266 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!490813 (= lt!221830 (array!31764 (store (arr!15266 a!3235) i!1204 k!2280) (size!15630 a!3235)))))

(declare-fun lt!221832 () SeekEntryResult!3740)

(assert (=> b!490813 (= lt!221832 (Found!3740 j!176))))

(assert (=> b!490813 (= lt!221832 (seekEntryOrOpen!0 (select (arr!15266 a!3235) j!176) a!3235 mask!3524))))

(assert (=> b!490813 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!14418 0))(
  ( (Unit!14419) )
))
(declare-fun lt!221829 () Unit!14418)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31763 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14418)

(assert (=> b!490813 (= lt!221829 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!490814 () Bool)

(assert (=> b!490814 (= e!288448 true)))

(assert (=> b!490814 (= lt!221832 (seekEntryOrOpen!0 lt!221834 lt!221830 mask!3524))))

(declare-fun lt!221831 () Unit!14418)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 (array!31763 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!14418)

(assert (=> b!490814 (= lt!221831 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 a!3235 i!1204 k!2280 j!176 mask!3524))))

(assert (= (and start!44744 res!293897) b!490811))

(assert (= (and b!490811 res!293893) b!490812))

(assert (= (and b!490812 res!293894) b!490806))

(assert (= (and b!490806 res!293899) b!490807))

(assert (= (and b!490807 res!293895) b!490809))

(assert (= (and b!490809 res!293892) b!490808))

(assert (= (and b!490808 res!293898) b!490810))

(assert (= (and b!490810 res!293900) b!490813))

(assert (= (and b!490813 (not res!293896)) b!490814))

(declare-fun m!471219 () Bool)

(assert (=> b!490808 m!471219))

(declare-fun m!471221 () Bool)

(assert (=> b!490812 m!471221))

(assert (=> b!490812 m!471221))

(declare-fun m!471223 () Bool)

(assert (=> b!490812 m!471223))

(declare-fun m!471225 () Bool)

(assert (=> b!490814 m!471225))

(declare-fun m!471227 () Bool)

(assert (=> b!490814 m!471227))

(declare-fun m!471229 () Bool)

(assert (=> start!44744 m!471229))

(declare-fun m!471231 () Bool)

(assert (=> start!44744 m!471231))

(declare-fun m!471233 () Bool)

(assert (=> b!490807 m!471233))

(declare-fun m!471235 () Bool)

(assert (=> b!490810 m!471235))

(declare-fun m!471237 () Bool)

(assert (=> b!490806 m!471237))

(declare-fun m!471239 () Bool)

(assert (=> b!490809 m!471239))

(declare-fun m!471241 () Bool)

(assert (=> b!490813 m!471241))

(declare-fun m!471243 () Bool)

(assert (=> b!490813 m!471243))

(declare-fun m!471245 () Bool)

(assert (=> b!490813 m!471245))

(assert (=> b!490813 m!471241))

(declare-fun m!471247 () Bool)

(assert (=> b!490813 m!471247))

(declare-fun m!471249 () Bool)

(assert (=> b!490813 m!471249))

(declare-fun m!471251 () Bool)

(assert (=> b!490813 m!471251))

(assert (=> b!490813 m!471221))

(declare-fun m!471253 () Bool)

(assert (=> b!490813 m!471253))

(assert (=> b!490813 m!471221))

(assert (=> b!490813 m!471251))

(assert (=> b!490813 m!471221))

(declare-fun m!471255 () Bool)

(assert (=> b!490813 m!471255))

(assert (=> b!490813 m!471221))

(declare-fun m!471257 () Bool)

(assert (=> b!490813 m!471257))

(push 1)

