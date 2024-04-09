; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47000 () Bool)

(assert start!47000)

(declare-fun b!517906 () Bool)

(declare-fun res!317073 () Bool)

(declare-fun e!302211 () Bool)

(assert (=> b!517906 (=> (not res!317073) (not e!302211))))

(declare-datatypes ((array!33101 0))(
  ( (array!33102 (arr!15911 (Array (_ BitVec 32) (_ BitVec 64))) (size!16275 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33101)

(declare-datatypes ((List!10122 0))(
  ( (Nil!10119) (Cons!10118 (h!11025 (_ BitVec 64)) (t!16358 List!10122)) )
))
(declare-fun arrayNoDuplicates!0 (array!33101 (_ BitVec 32) List!10122) Bool)

(assert (=> b!517906 (= res!317073 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10119))))

(declare-fun b!517907 () Bool)

(declare-fun res!317076 () Bool)

(declare-fun e!302214 () Bool)

(assert (=> b!517907 (=> res!317076 e!302214)))

(declare-datatypes ((SeekEntryResult!4385 0))(
  ( (MissingZero!4385 (index!19728 (_ BitVec 32))) (Found!4385 (index!19729 (_ BitVec 32))) (Intermediate!4385 (undefined!5197 Bool) (index!19730 (_ BitVec 32)) (x!48721 (_ BitVec 32))) (Undefined!4385) (MissingVacant!4385 (index!19731 (_ BitVec 32))) )
))
(declare-fun lt!237124 () SeekEntryResult!4385)

(assert (=> b!517907 (= res!317076 (or (undefined!5197 lt!237124) (not (is-Intermediate!4385 lt!237124))))))

(declare-fun b!517908 () Bool)

(declare-fun res!317079 () Bool)

(declare-fun e!302213 () Bool)

(assert (=> b!517908 (=> (not res!317079) (not e!302213))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!517908 (= res!317079 (validKeyInArray!0 k!2280))))

(declare-fun b!517909 () Bool)

(declare-fun lt!237126 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!517909 (= e!302214 (or (not (= (select (arr!15911 a!3235) (index!19730 lt!237124)) (select (arr!15911 a!3235) j!176))) (bvsgt (x!48721 lt!237124) #b01111111111111111111111111111110) (bvsgt #b00000000000000000000000000000000 (x!48721 lt!237124)) (bvslt lt!237126 #b00000000000000000000000000000000) (bvsge lt!237126 (size!16275 a!3235)) (bvslt (index!19730 lt!237124) #b00000000000000000000000000000000) (bvsge (index!19730 lt!237124) (size!16275 a!3235)) (= lt!237124 (Intermediate!4385 false (index!19730 lt!237124) (x!48721 lt!237124)))))))

(assert (=> b!517909 (and (bvslt (x!48721 lt!237124) #b01111111111111111111111111111110) (or (= (select (arr!15911 a!3235) (index!19730 lt!237124)) (select (arr!15911 a!3235) j!176)) (= (select (arr!15911 a!3235) (index!19730 lt!237124)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15911 a!3235) (index!19730 lt!237124)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!517910 () Bool)

(declare-fun res!317078 () Bool)

(assert (=> b!517910 (=> (not res!317078) (not e!302213))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!517910 (= res!317078 (and (= (size!16275 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16275 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16275 a!3235)) (not (= i!1204 j!176))))))

(declare-fun res!317080 () Bool)

(assert (=> start!47000 (=> (not res!317080) (not e!302213))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47000 (= res!317080 (validMask!0 mask!3524))))

(assert (=> start!47000 e!302213))

(assert (=> start!47000 true))

(declare-fun array_inv!11685 (array!33101) Bool)

(assert (=> start!47000 (array_inv!11685 a!3235)))

(declare-fun b!517911 () Bool)

(assert (=> b!517911 (= e!302211 (not e!302214))))

(declare-fun res!317077 () Bool)

(assert (=> b!517911 (=> res!317077 e!302214)))

(declare-fun lt!237127 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33101 (_ BitVec 32)) SeekEntryResult!4385)

(assert (=> b!517911 (= res!317077 (= lt!237124 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!237127 (select (store (arr!15911 a!3235) i!1204 k!2280) j!176) (array!33102 (store (arr!15911 a!3235) i!1204 k!2280) (size!16275 a!3235)) mask!3524)))))

(assert (=> b!517911 (= lt!237124 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!237126 (select (arr!15911 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!517911 (= lt!237127 (toIndex!0 (select (store (arr!15911 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!517911 (= lt!237126 (toIndex!0 (select (arr!15911 a!3235) j!176) mask!3524))))

(declare-fun e!302212 () Bool)

(assert (=> b!517911 e!302212))

(declare-fun res!317071 () Bool)

(assert (=> b!517911 (=> (not res!317071) (not e!302212))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33101 (_ BitVec 32)) Bool)

(assert (=> b!517911 (= res!317071 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!16020 0))(
  ( (Unit!16021) )
))
(declare-fun lt!237125 () Unit!16020)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33101 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16020)

(assert (=> b!517911 (= lt!237125 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!517912 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33101 (_ BitVec 32)) SeekEntryResult!4385)

(assert (=> b!517912 (= e!302212 (= (seekEntryOrOpen!0 (select (arr!15911 a!3235) j!176) a!3235 mask!3524) (Found!4385 j!176)))))

(declare-fun b!517913 () Bool)

(assert (=> b!517913 (= e!302213 e!302211)))

(declare-fun res!317081 () Bool)

(assert (=> b!517913 (=> (not res!317081) (not e!302211))))

(declare-fun lt!237128 () SeekEntryResult!4385)

(assert (=> b!517913 (= res!317081 (or (= lt!237128 (MissingZero!4385 i!1204)) (= lt!237128 (MissingVacant!4385 i!1204))))))

(assert (=> b!517913 (= lt!237128 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!517914 () Bool)

(declare-fun res!317072 () Bool)

(assert (=> b!517914 (=> (not res!317072) (not e!302211))))

(assert (=> b!517914 (= res!317072 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!517915 () Bool)

(declare-fun res!317074 () Bool)

(assert (=> b!517915 (=> (not res!317074) (not e!302213))))

(declare-fun arrayContainsKey!0 (array!33101 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!517915 (= res!317074 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!517916 () Bool)

(declare-fun res!317075 () Bool)

(assert (=> b!517916 (=> (not res!317075) (not e!302213))))

(assert (=> b!517916 (= res!317075 (validKeyInArray!0 (select (arr!15911 a!3235) j!176)))))

(assert (= (and start!47000 res!317080) b!517910))

(assert (= (and b!517910 res!317078) b!517916))

(assert (= (and b!517916 res!317075) b!517908))

(assert (= (and b!517908 res!317079) b!517915))

(assert (= (and b!517915 res!317074) b!517913))

(assert (= (and b!517913 res!317081) b!517914))

(assert (= (and b!517914 res!317072) b!517906))

(assert (= (and b!517906 res!317073) b!517911))

(assert (= (and b!517911 res!317071) b!517912))

(assert (= (and b!517911 (not res!317077)) b!517907))

(assert (= (and b!517907 (not res!317076)) b!517909))

(declare-fun m!499289 () Bool)

(assert (=> b!517906 m!499289))

(declare-fun m!499291 () Bool)

(assert (=> b!517916 m!499291))

(assert (=> b!517916 m!499291))

(declare-fun m!499293 () Bool)

(assert (=> b!517916 m!499293))

(declare-fun m!499295 () Bool)

(assert (=> b!517911 m!499295))

(declare-fun m!499297 () Bool)

(assert (=> b!517911 m!499297))

(declare-fun m!499299 () Bool)

(assert (=> b!517911 m!499299))

(assert (=> b!517911 m!499291))

(declare-fun m!499301 () Bool)

(assert (=> b!517911 m!499301))

(assert (=> b!517911 m!499291))

(declare-fun m!499303 () Bool)

(assert (=> b!517911 m!499303))

(assert (=> b!517911 m!499291))

(declare-fun m!499305 () Bool)

(assert (=> b!517911 m!499305))

(assert (=> b!517911 m!499299))

(declare-fun m!499307 () Bool)

(assert (=> b!517911 m!499307))

(assert (=> b!517911 m!499299))

(declare-fun m!499309 () Bool)

(assert (=> b!517911 m!499309))

(declare-fun m!499311 () Bool)

(assert (=> b!517915 m!499311))

(declare-fun m!499313 () Bool)

(assert (=> b!517914 m!499313))

(declare-fun m!499315 () Bool)

(assert (=> b!517913 m!499315))

(declare-fun m!499317 () Bool)

(assert (=> b!517909 m!499317))

(assert (=> b!517909 m!499291))

(declare-fun m!499319 () Bool)

(assert (=> start!47000 m!499319))

(declare-fun m!499321 () Bool)

(assert (=> start!47000 m!499321))

(declare-fun m!499323 () Bool)

(assert (=> b!517908 m!499323))

(assert (=> b!517912 m!499291))

(assert (=> b!517912 m!499291))

(declare-fun m!499325 () Bool)

(assert (=> b!517912 m!499325))

(push 1)

