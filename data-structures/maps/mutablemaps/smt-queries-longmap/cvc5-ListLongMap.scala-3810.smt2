; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52298 () Bool)

(assert start!52298)

(declare-fun b!570229 () Bool)

(declare-fun e!327971 () Bool)

(assert (=> b!570229 (= e!327971 (not true))))

(declare-fun e!327969 () Bool)

(assert (=> b!570229 e!327969))

(declare-fun res!360162 () Bool)

(assert (=> b!570229 (=> (not res!360162) (not e!327969))))

(declare-datatypes ((SeekEntryResult!5598 0))(
  ( (MissingZero!5598 (index!24619 (_ BitVec 32))) (Found!5598 (index!24620 (_ BitVec 32))) (Intermediate!5598 (undefined!6410 Bool) (index!24621 (_ BitVec 32)) (x!53525 (_ BitVec 32))) (Undefined!5598) (MissingVacant!5598 (index!24622 (_ BitVec 32))) )
))
(declare-fun lt!259988 () SeekEntryResult!5598)

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!570229 (= res!360162 (= lt!259988 (Found!5598 j!142)))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-datatypes ((array!35712 0))(
  ( (array!35713 (arr!17142 (Array (_ BitVec 32) (_ BitVec 64))) (size!17506 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35712)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35712 (_ BitVec 32)) SeekEntryResult!5598)

(assert (=> b!570229 (= lt!259988 (seekEntryOrOpen!0 (select (arr!17142 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35712 (_ BitVec 32)) Bool)

(assert (=> b!570229 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17898 0))(
  ( (Unit!17899) )
))
(declare-fun lt!259987 () Unit!17898)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35712 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17898)

(assert (=> b!570229 (= lt!259987 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!570230 () Bool)

(declare-fun e!327972 () Bool)

(assert (=> b!570230 (= e!327969 e!327972)))

(declare-fun res!360170 () Bool)

(assert (=> b!570230 (=> res!360170 e!327972)))

(declare-fun lt!259990 () SeekEntryResult!5598)

(assert (=> b!570230 (= res!360170 (or (undefined!6410 lt!259990) (not (is-Intermediate!5598 lt!259990)) (= (select (arr!17142 a!3118) (index!24621 lt!259990)) (select (arr!17142 a!3118) j!142)) (= (select (arr!17142 a!3118) (index!24621 lt!259990)) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!570231 () Bool)

(declare-fun e!327968 () Bool)

(declare-fun e!327973 () Bool)

(assert (=> b!570231 (= e!327968 e!327973)))

(declare-fun res!360166 () Bool)

(assert (=> b!570231 (=> (not res!360166) (not e!327973))))

(declare-fun lt!259989 () SeekEntryResult!5598)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!570231 (= res!360166 (or (= lt!259989 (MissingZero!5598 i!1132)) (= lt!259989 (MissingVacant!5598 i!1132))))))

(declare-fun k!1914 () (_ BitVec 64))

(assert (=> b!570231 (= lt!259989 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!570232 () Bool)

(declare-fun res!360165 () Bool)

(assert (=> b!570232 (=> (not res!360165) (not e!327973))))

(declare-datatypes ((List!11275 0))(
  ( (Nil!11272) (Cons!11271 (h!12295 (_ BitVec 64)) (t!17511 List!11275)) )
))
(declare-fun arrayNoDuplicates!0 (array!35712 (_ BitVec 32) List!11275) Bool)

(assert (=> b!570232 (= res!360165 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11272))))

(declare-fun b!570233 () Bool)

(declare-fun res!360168 () Bool)

(assert (=> b!570233 (=> (not res!360168) (not e!327968))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!570233 (= res!360168 (validKeyInArray!0 (select (arr!17142 a!3118) j!142)))))

(declare-fun b!570234 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35712 (_ BitVec 32)) SeekEntryResult!5598)

(assert (=> b!570234 (= e!327972 (= lt!259988 (seekKeyOrZeroReturnVacant!0 (x!53525 lt!259990) (index!24621 lt!259990) (index!24621 lt!259990) (select (arr!17142 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!570235 () Bool)

(declare-fun res!360161 () Bool)

(assert (=> b!570235 (=> (not res!360161) (not e!327973))))

(assert (=> b!570235 (= res!360161 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!570236 () Bool)

(declare-fun res!360163 () Bool)

(assert (=> b!570236 (=> (not res!360163) (not e!327968))))

(declare-fun arrayContainsKey!0 (array!35712 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!570236 (= res!360163 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!570237 () Bool)

(declare-fun res!360160 () Bool)

(assert (=> b!570237 (=> (not res!360160) (not e!327968))))

(assert (=> b!570237 (= res!360160 (validKeyInArray!0 k!1914))))

(declare-fun res!360167 () Bool)

(assert (=> start!52298 (=> (not res!360167) (not e!327968))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52298 (= res!360167 (validMask!0 mask!3119))))

(assert (=> start!52298 e!327968))

(assert (=> start!52298 true))

(declare-fun array_inv!12916 (array!35712) Bool)

(assert (=> start!52298 (array_inv!12916 a!3118)))

(declare-fun b!570238 () Bool)

(declare-fun res!360164 () Bool)

(assert (=> b!570238 (=> (not res!360164) (not e!327968))))

(assert (=> b!570238 (= res!360164 (and (= (size!17506 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17506 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17506 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!570239 () Bool)

(assert (=> b!570239 (= e!327973 e!327971)))

(declare-fun res!360169 () Bool)

(assert (=> b!570239 (=> (not res!360169) (not e!327971))))

(declare-fun lt!259991 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35712 (_ BitVec 32)) SeekEntryResult!5598)

(assert (=> b!570239 (= res!360169 (= lt!259990 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!259991 (select (store (arr!17142 a!3118) i!1132 k!1914) j!142) (array!35713 (store (arr!17142 a!3118) i!1132 k!1914) (size!17506 a!3118)) mask!3119)))))

(declare-fun lt!259986 () (_ BitVec 32))

(assert (=> b!570239 (= lt!259990 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!259986 (select (arr!17142 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!570239 (= lt!259991 (toIndex!0 (select (store (arr!17142 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!570239 (= lt!259986 (toIndex!0 (select (arr!17142 a!3118) j!142) mask!3119))))

(assert (= (and start!52298 res!360167) b!570238))

(assert (= (and b!570238 res!360164) b!570233))

(assert (= (and b!570233 res!360168) b!570237))

(assert (= (and b!570237 res!360160) b!570236))

(assert (= (and b!570236 res!360163) b!570231))

(assert (= (and b!570231 res!360166) b!570235))

(assert (= (and b!570235 res!360161) b!570232))

(assert (= (and b!570232 res!360165) b!570239))

(assert (= (and b!570239 res!360169) b!570229))

(assert (= (and b!570229 res!360162) b!570230))

(assert (= (and b!570230 (not res!360170)) b!570234))

(declare-fun m!549091 () Bool)

(assert (=> b!570231 m!549091))

(declare-fun m!549093 () Bool)

(assert (=> b!570236 m!549093))

(declare-fun m!549095 () Bool)

(assert (=> b!570232 m!549095))

(declare-fun m!549097 () Bool)

(assert (=> b!570233 m!549097))

(assert (=> b!570233 m!549097))

(declare-fun m!549099 () Bool)

(assert (=> b!570233 m!549099))

(declare-fun m!549101 () Bool)

(assert (=> start!52298 m!549101))

(declare-fun m!549103 () Bool)

(assert (=> start!52298 m!549103))

(declare-fun m!549105 () Bool)

(assert (=> b!570237 m!549105))

(declare-fun m!549107 () Bool)

(assert (=> b!570235 m!549107))

(assert (=> b!570234 m!549097))

(assert (=> b!570234 m!549097))

(declare-fun m!549109 () Bool)

(assert (=> b!570234 m!549109))

(assert (=> b!570239 m!549097))

(declare-fun m!549111 () Bool)

(assert (=> b!570239 m!549111))

(assert (=> b!570239 m!549097))

(declare-fun m!549113 () Bool)

(assert (=> b!570239 m!549113))

(assert (=> b!570239 m!549097))

(declare-fun m!549115 () Bool)

(assert (=> b!570239 m!549115))

(declare-fun m!549117 () Bool)

(assert (=> b!570239 m!549117))

(assert (=> b!570239 m!549113))

(declare-fun m!549119 () Bool)

(assert (=> b!570239 m!549119))

(assert (=> b!570239 m!549113))

(declare-fun m!549121 () Bool)

(assert (=> b!570239 m!549121))

(declare-fun m!549123 () Bool)

(assert (=> b!570230 m!549123))

(assert (=> b!570230 m!549097))

(assert (=> b!570229 m!549097))

(assert (=> b!570229 m!549097))

(declare-fun m!549125 () Bool)

(assert (=> b!570229 m!549125))

(declare-fun m!549127 () Bool)

(assert (=> b!570229 m!549127))

(declare-fun m!549129 () Bool)

(assert (=> b!570229 m!549129))

(push 1)

