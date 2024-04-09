; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50700 () Bool)

(assert start!50700)

(declare-fun b!553966 () Bool)

(declare-fun res!346530 () Bool)

(declare-fun e!319470 () Bool)

(assert (=> b!553966 (=> (not res!346530) (not e!319470))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!553966 (= res!346530 (validKeyInArray!0 k!1914))))

(declare-fun b!553968 () Bool)

(declare-fun e!319471 () Bool)

(assert (=> b!553968 (= e!319470 e!319471)))

(declare-fun res!346536 () Bool)

(assert (=> b!553968 (=> (not res!346536) (not e!319471))))

(declare-datatypes ((SeekEntryResult!5201 0))(
  ( (MissingZero!5201 (index!23031 (_ BitVec 32))) (Found!5201 (index!23032 (_ BitVec 32))) (Intermediate!5201 (undefined!6013 Bool) (index!23033 (_ BitVec 32)) (x!51974 (_ BitVec 32))) (Undefined!5201) (MissingVacant!5201 (index!23034 (_ BitVec 32))) )
))
(declare-fun lt!251668 () SeekEntryResult!5201)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!553968 (= res!346536 (or (= lt!251668 (MissingZero!5201 i!1132)) (= lt!251668 (MissingVacant!5201 i!1132))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-datatypes ((array!34879 0))(
  ( (array!34880 (arr!16745 (Array (_ BitVec 32) (_ BitVec 64))) (size!17109 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34879)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34879 (_ BitVec 32)) SeekEntryResult!5201)

(assert (=> b!553968 (= lt!251668 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!553969 () Bool)

(declare-fun res!346534 () Bool)

(assert (=> b!553969 (=> (not res!346534) (not e!319470))))

(declare-fun arrayContainsKey!0 (array!34879 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!553969 (= res!346534 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!553970 () Bool)

(declare-fun e!319468 () Bool)

(assert (=> b!553970 (= e!319471 e!319468)))

(declare-fun res!346538 () Bool)

(assert (=> b!553970 (=> (not res!346538) (not e!319468))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun lt!251671 () SeekEntryResult!5201)

(declare-fun lt!251672 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34879 (_ BitVec 32)) SeekEntryResult!5201)

(assert (=> b!553970 (= res!346538 (= lt!251671 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!251672 (select (store (arr!16745 a!3118) i!1132 k!1914) j!142) (array!34880 (store (arr!16745 a!3118) i!1132 k!1914) (size!17109 a!3118)) mask!3119)))))

(declare-fun lt!251670 () (_ BitVec 32))

(assert (=> b!553970 (= lt!251671 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!251670 (select (arr!16745 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!553970 (= lt!251672 (toIndex!0 (select (store (arr!16745 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!553970 (= lt!251670 (toIndex!0 (select (arr!16745 a!3118) j!142) mask!3119))))

(declare-fun b!553971 () Bool)

(declare-fun res!346528 () Bool)

(assert (=> b!553971 (=> (not res!346528) (not e!319471))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34879 (_ BitVec 32)) Bool)

(assert (=> b!553971 (= res!346528 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!553972 () Bool)

(declare-fun e!319466 () Bool)

(assert (=> b!553972 (= e!319466 (validKeyInArray!0 (select (store (arr!16745 a!3118) i!1132 k!1914) j!142)))))

(declare-fun res!346535 () Bool)

(assert (=> start!50700 (=> (not res!346535) (not e!319470))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50700 (= res!346535 (validMask!0 mask!3119))))

(assert (=> start!50700 e!319470))

(assert (=> start!50700 true))

(declare-fun array_inv!12519 (array!34879) Bool)

(assert (=> start!50700 (array_inv!12519 a!3118)))

(declare-fun b!553967 () Bool)

(assert (=> b!553967 (= e!319468 (not e!319466))))

(declare-fun res!346532 () Bool)

(assert (=> b!553967 (=> res!346532 e!319466)))

(assert (=> b!553967 (= res!346532 (or (not (is-Intermediate!5201 lt!251671)) (undefined!6013 lt!251671) (not (= (select (arr!16745 a!3118) (index!23033 lt!251671)) (select (arr!16745 a!3118) j!142))) (bvslt mask!3119 #b00000000000000000000000000000000)))))

(declare-fun e!319469 () Bool)

(assert (=> b!553967 e!319469))

(declare-fun res!346531 () Bool)

(assert (=> b!553967 (=> (not res!346531) (not e!319469))))

(assert (=> b!553967 (= res!346531 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17176 0))(
  ( (Unit!17177) )
))
(declare-fun lt!251669 () Unit!17176)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34879 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17176)

(assert (=> b!553967 (= lt!251669 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!553973 () Bool)

(declare-fun res!346537 () Bool)

(assert (=> b!553973 (=> (not res!346537) (not e!319471))))

(declare-datatypes ((List!10878 0))(
  ( (Nil!10875) (Cons!10874 (h!11859 (_ BitVec 64)) (t!17114 List!10878)) )
))
(declare-fun arrayNoDuplicates!0 (array!34879 (_ BitVec 32) List!10878) Bool)

(assert (=> b!553973 (= res!346537 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10875))))

(declare-fun b!553974 () Bool)

(declare-fun res!346533 () Bool)

(assert (=> b!553974 (=> (not res!346533) (not e!319470))))

(assert (=> b!553974 (= res!346533 (and (= (size!17109 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17109 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17109 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!553975 () Bool)

(declare-fun res!346529 () Bool)

(assert (=> b!553975 (=> (not res!346529) (not e!319470))))

(assert (=> b!553975 (= res!346529 (validKeyInArray!0 (select (arr!16745 a!3118) j!142)))))

(declare-fun b!553976 () Bool)

(assert (=> b!553976 (= e!319469 (= (seekEntryOrOpen!0 (select (arr!16745 a!3118) j!142) a!3118 mask!3119) (Found!5201 j!142)))))

(assert (= (and start!50700 res!346535) b!553974))

(assert (= (and b!553974 res!346533) b!553975))

(assert (= (and b!553975 res!346529) b!553966))

(assert (= (and b!553966 res!346530) b!553969))

(assert (= (and b!553969 res!346534) b!553968))

(assert (= (and b!553968 res!346536) b!553971))

(assert (= (and b!553971 res!346528) b!553973))

(assert (= (and b!553973 res!346537) b!553970))

(assert (= (and b!553970 res!346538) b!553967))

(assert (= (and b!553967 res!346531) b!553976))

(assert (= (and b!553967 (not res!346532)) b!553972))

(declare-fun m!531237 () Bool)

(assert (=> b!553972 m!531237))

(declare-fun m!531239 () Bool)

(assert (=> b!553972 m!531239))

(assert (=> b!553972 m!531239))

(declare-fun m!531241 () Bool)

(assert (=> b!553972 m!531241))

(declare-fun m!531243 () Bool)

(assert (=> b!553968 m!531243))

(declare-fun m!531245 () Bool)

(assert (=> b!553975 m!531245))

(assert (=> b!553975 m!531245))

(declare-fun m!531247 () Bool)

(assert (=> b!553975 m!531247))

(declare-fun m!531249 () Bool)

(assert (=> b!553973 m!531249))

(declare-fun m!531251 () Bool)

(assert (=> b!553971 m!531251))

(declare-fun m!531253 () Bool)

(assert (=> b!553967 m!531253))

(assert (=> b!553967 m!531245))

(declare-fun m!531255 () Bool)

(assert (=> b!553967 m!531255))

(declare-fun m!531257 () Bool)

(assert (=> b!553967 m!531257))

(declare-fun m!531259 () Bool)

(assert (=> b!553966 m!531259))

(assert (=> b!553970 m!531245))

(declare-fun m!531261 () Bool)

(assert (=> b!553970 m!531261))

(assert (=> b!553970 m!531239))

(declare-fun m!531263 () Bool)

(assert (=> b!553970 m!531263))

(assert (=> b!553970 m!531245))

(declare-fun m!531265 () Bool)

(assert (=> b!553970 m!531265))

(assert (=> b!553970 m!531245))

(assert (=> b!553970 m!531239))

(assert (=> b!553970 m!531237))

(assert (=> b!553970 m!531239))

(declare-fun m!531267 () Bool)

(assert (=> b!553970 m!531267))

(declare-fun m!531269 () Bool)

(assert (=> start!50700 m!531269))

(declare-fun m!531271 () Bool)

(assert (=> start!50700 m!531271))

(assert (=> b!553976 m!531245))

(assert (=> b!553976 m!531245))

(declare-fun m!531273 () Bool)

(assert (=> b!553976 m!531273))

(declare-fun m!531275 () Bool)

(assert (=> b!553969 m!531275))

(push 1)

