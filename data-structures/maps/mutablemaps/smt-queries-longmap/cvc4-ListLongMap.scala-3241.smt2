; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45266 () Bool)

(assert start!45266)

(declare-fun b!496852 () Bool)

(declare-fun res!299389 () Bool)

(declare-fun e!291292 () Bool)

(assert (=> b!496852 (=> res!299389 e!291292)))

(declare-datatypes ((SeekEntryResult!3911 0))(
  ( (MissingZero!3911 (index!17823 (_ BitVec 32))) (Found!3911 (index!17824 (_ BitVec 32))) (Intermediate!3911 (undefined!4723 Bool) (index!17825 (_ BitVec 32)) (x!46902 (_ BitVec 32))) (Undefined!3911) (MissingVacant!3911 (index!17826 (_ BitVec 32))) )
))
(declare-fun lt!224984 () SeekEntryResult!3911)

(assert (=> b!496852 (= res!299389 (or (undefined!4723 lt!224984) (not (is-Intermediate!3911 lt!224984))))))

(declare-fun b!496853 () Bool)

(declare-fun res!299396 () Bool)

(declare-fun e!291293 () Bool)

(assert (=> b!496853 (=> (not res!299396) (not e!291293))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!496853 (= res!299396 (validKeyInArray!0 k!2280))))

(declare-fun res!299391 () Bool)

(assert (=> start!45266 (=> (not res!299391) (not e!291293))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45266 (= res!299391 (validMask!0 mask!3524))))

(assert (=> start!45266 e!291293))

(assert (=> start!45266 true))

(declare-datatypes ((array!32114 0))(
  ( (array!32115 (arr!15437 (Array (_ BitVec 32) (_ BitVec 64))) (size!15801 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32114)

(declare-fun array_inv!11211 (array!32114) Bool)

(assert (=> start!45266 (array_inv!11211 a!3235)))

(declare-fun b!496854 () Bool)

(declare-fun res!299390 () Bool)

(declare-fun e!291291 () Bool)

(assert (=> b!496854 (=> (not res!299390) (not e!291291))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32114 (_ BitVec 32)) Bool)

(assert (=> b!496854 (= res!299390 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!496855 () Bool)

(declare-fun res!299394 () Bool)

(assert (=> b!496855 (=> (not res!299394) (not e!291293))))

(declare-fun arrayContainsKey!0 (array!32114 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!496855 (= res!299394 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!496856 () Bool)

(declare-fun res!299395 () Bool)

(assert (=> b!496856 (=> (not res!299395) (not e!291291))))

(declare-datatypes ((List!9648 0))(
  ( (Nil!9645) (Cons!9644 (h!10515 (_ BitVec 64)) (t!15884 List!9648)) )
))
(declare-fun arrayNoDuplicates!0 (array!32114 (_ BitVec 32) List!9648) Bool)

(assert (=> b!496856 (= res!299395 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9645))))

(declare-fun b!496857 () Bool)

(assert (=> b!496857 (= e!291292 true)))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!496857 (and (bvslt (x!46902 lt!224984) #b01111111111111111111111111111110) (or (= (select (arr!15437 a!3235) (index!17825 lt!224984)) (select (arr!15437 a!3235) j!176)) (= (select (arr!15437 a!3235) (index!17825 lt!224984)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15437 a!3235) (index!17825 lt!224984)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!496858 () Bool)

(declare-fun e!291294 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32114 (_ BitVec 32)) SeekEntryResult!3911)

(assert (=> b!496858 (= e!291294 (= (seekEntryOrOpen!0 (select (arr!15437 a!3235) j!176) a!3235 mask!3524) (Found!3911 j!176)))))

(declare-fun b!496859 () Bool)

(declare-fun res!299399 () Bool)

(assert (=> b!496859 (=> (not res!299399) (not e!291293))))

(assert (=> b!496859 (= res!299399 (validKeyInArray!0 (select (arr!15437 a!3235) j!176)))))

(declare-fun b!496860 () Bool)

(assert (=> b!496860 (= e!291293 e!291291)))

(declare-fun res!299393 () Bool)

(assert (=> b!496860 (=> (not res!299393) (not e!291291))))

(declare-fun lt!224980 () SeekEntryResult!3911)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!496860 (= res!299393 (or (= lt!224980 (MissingZero!3911 i!1204)) (= lt!224980 (MissingVacant!3911 i!1204))))))

(assert (=> b!496860 (= lt!224980 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!496861 () Bool)

(declare-fun res!299392 () Bool)

(assert (=> b!496861 (=> (not res!299392) (not e!291293))))

(assert (=> b!496861 (= res!299392 (and (= (size!15801 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15801 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15801 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!496862 () Bool)

(assert (=> b!496862 (= e!291291 (not e!291292))))

(declare-fun res!299397 () Bool)

(assert (=> b!496862 (=> res!299397 e!291292)))

(declare-fun lt!224981 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32114 (_ BitVec 32)) SeekEntryResult!3911)

(assert (=> b!496862 (= res!299397 (= lt!224984 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224981 (select (store (arr!15437 a!3235) i!1204 k!2280) j!176) (array!32115 (store (arr!15437 a!3235) i!1204 k!2280) (size!15801 a!3235)) mask!3524)))))

(declare-fun lt!224982 () (_ BitVec 32))

(assert (=> b!496862 (= lt!224984 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224982 (select (arr!15437 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!496862 (= lt!224981 (toIndex!0 (select (store (arr!15437 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!496862 (= lt!224982 (toIndex!0 (select (arr!15437 a!3235) j!176) mask!3524))))

(assert (=> b!496862 e!291294))

(declare-fun res!299398 () Bool)

(assert (=> b!496862 (=> (not res!299398) (not e!291294))))

(assert (=> b!496862 (= res!299398 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14760 0))(
  ( (Unit!14761) )
))
(declare-fun lt!224983 () Unit!14760)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32114 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14760)

(assert (=> b!496862 (= lt!224983 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (= (and start!45266 res!299391) b!496861))

(assert (= (and b!496861 res!299392) b!496859))

(assert (= (and b!496859 res!299399) b!496853))

(assert (= (and b!496853 res!299396) b!496855))

(assert (= (and b!496855 res!299394) b!496860))

(assert (= (and b!496860 res!299393) b!496854))

(assert (= (and b!496854 res!299390) b!496856))

(assert (= (and b!496856 res!299395) b!496862))

(assert (= (and b!496862 res!299398) b!496858))

(assert (= (and b!496862 (not res!299397)) b!496852))

(assert (= (and b!496852 (not res!299389)) b!496857))

(declare-fun m!478217 () Bool)

(assert (=> b!496856 m!478217))

(declare-fun m!478219 () Bool)

(assert (=> b!496860 m!478219))

(declare-fun m!478221 () Bool)

(assert (=> start!45266 m!478221))

(declare-fun m!478223 () Bool)

(assert (=> start!45266 m!478223))

(declare-fun m!478225 () Bool)

(assert (=> b!496853 m!478225))

(declare-fun m!478227 () Bool)

(assert (=> b!496857 m!478227))

(declare-fun m!478229 () Bool)

(assert (=> b!496857 m!478229))

(declare-fun m!478231 () Bool)

(assert (=> b!496854 m!478231))

(assert (=> b!496858 m!478229))

(assert (=> b!496858 m!478229))

(declare-fun m!478233 () Bool)

(assert (=> b!496858 m!478233))

(assert (=> b!496859 m!478229))

(assert (=> b!496859 m!478229))

(declare-fun m!478235 () Bool)

(assert (=> b!496859 m!478235))

(declare-fun m!478237 () Bool)

(assert (=> b!496862 m!478237))

(declare-fun m!478239 () Bool)

(assert (=> b!496862 m!478239))

(declare-fun m!478241 () Bool)

(assert (=> b!496862 m!478241))

(declare-fun m!478243 () Bool)

(assert (=> b!496862 m!478243))

(assert (=> b!496862 m!478237))

(assert (=> b!496862 m!478229))

(declare-fun m!478245 () Bool)

(assert (=> b!496862 m!478245))

(assert (=> b!496862 m!478229))

(declare-fun m!478247 () Bool)

(assert (=> b!496862 m!478247))

(assert (=> b!496862 m!478229))

(declare-fun m!478249 () Bool)

(assert (=> b!496862 m!478249))

(assert (=> b!496862 m!478237))

(declare-fun m!478251 () Bool)

(assert (=> b!496862 m!478251))

(declare-fun m!478253 () Bool)

(assert (=> b!496855 m!478253))

(push 1)

