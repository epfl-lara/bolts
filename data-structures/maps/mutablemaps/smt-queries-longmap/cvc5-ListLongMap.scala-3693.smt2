; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50792 () Bool)

(assert start!50792)

(declare-fun b!555246 () Bool)

(declare-fun e!320031 () Bool)

(declare-fun e!320029 () Bool)

(assert (=> b!555246 (= e!320031 e!320029)))

(declare-fun res!347813 () Bool)

(assert (=> b!555246 (=> (not res!347813) (not e!320029))))

(declare-fun lt!252383 () (_ BitVec 32))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun k!1914 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!5247 0))(
  ( (MissingZero!5247 (index!23215 (_ BitVec 32))) (Found!5247 (index!23216 (_ BitVec 32))) (Intermediate!5247 (undefined!6059 Bool) (index!23217 (_ BitVec 32)) (x!52148 (_ BitVec 32))) (Undefined!5247) (MissingVacant!5247 (index!23218 (_ BitVec 32))) )
))
(declare-fun lt!252379 () SeekEntryResult!5247)

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!34971 0))(
  ( (array!34972 (arr!16791 (Array (_ BitVec 32) (_ BitVec 64))) (size!17155 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34971)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34971 (_ BitVec 32)) SeekEntryResult!5247)

(assert (=> b!555246 (= res!347813 (= lt!252379 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!252383 (select (store (arr!16791 a!3118) i!1132 k!1914) j!142) (array!34972 (store (arr!16791 a!3118) i!1132 k!1914) (size!17155 a!3118)) mask!3119)))))

(declare-fun lt!252382 () (_ BitVec 32))

(assert (=> b!555246 (= lt!252379 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!252382 (select (arr!16791 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!555246 (= lt!252383 (toIndex!0 (select (store (arr!16791 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!555246 (= lt!252382 (toIndex!0 (select (arr!16791 a!3118) j!142) mask!3119))))

(declare-fun b!555247 () Bool)

(declare-fun res!347816 () Bool)

(declare-fun e!320032 () Bool)

(assert (=> b!555247 (=> (not res!347816) (not e!320032))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!555247 (= res!347816 (validKeyInArray!0 (select (arr!16791 a!3118) j!142)))))

(declare-fun res!347812 () Bool)

(assert (=> start!50792 (=> (not res!347812) (not e!320032))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50792 (= res!347812 (validMask!0 mask!3119))))

(assert (=> start!50792 e!320032))

(assert (=> start!50792 true))

(declare-fun array_inv!12565 (array!34971) Bool)

(assert (=> start!50792 (array_inv!12565 a!3118)))

(declare-fun b!555248 () Bool)

(declare-fun res!347810 () Bool)

(assert (=> b!555248 (=> (not res!347810) (not e!320031))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34971 (_ BitVec 32)) Bool)

(assert (=> b!555248 (= res!347810 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!555249 () Bool)

(assert (=> b!555249 (= e!320032 e!320031)))

(declare-fun res!347809 () Bool)

(assert (=> b!555249 (=> (not res!347809) (not e!320031))))

(declare-fun lt!252378 () SeekEntryResult!5247)

(assert (=> b!555249 (= res!347809 (or (= lt!252378 (MissingZero!5247 i!1132)) (= lt!252378 (MissingVacant!5247 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34971 (_ BitVec 32)) SeekEntryResult!5247)

(assert (=> b!555249 (= lt!252378 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!555250 () Bool)

(assert (=> b!555250 (= e!320029 (not true))))

(declare-fun lt!252381 () SeekEntryResult!5247)

(assert (=> b!555250 (and (= lt!252381 (Found!5247 j!142)) (or (undefined!6059 lt!252379) (not (is-Intermediate!5247 lt!252379)) (= (select (arr!16791 a!3118) (index!23217 lt!252379)) (select (arr!16791 a!3118) j!142)) (not (= (select (arr!16791 a!3118) (index!23217 lt!252379)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= lt!252381 (MissingZero!5247 (index!23217 lt!252379)))))))

(assert (=> b!555250 (= lt!252381 (seekEntryOrOpen!0 (select (arr!16791 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!555250 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17268 0))(
  ( (Unit!17269) )
))
(declare-fun lt!252380 () Unit!17268)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34971 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17268)

(assert (=> b!555250 (= lt!252380 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!555251 () Bool)

(declare-fun res!347808 () Bool)

(assert (=> b!555251 (=> (not res!347808) (not e!320032))))

(declare-fun arrayContainsKey!0 (array!34971 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!555251 (= res!347808 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!555252 () Bool)

(declare-fun res!347814 () Bool)

(assert (=> b!555252 (=> (not res!347814) (not e!320031))))

(declare-datatypes ((List!10924 0))(
  ( (Nil!10921) (Cons!10920 (h!11905 (_ BitVec 64)) (t!17160 List!10924)) )
))
(declare-fun arrayNoDuplicates!0 (array!34971 (_ BitVec 32) List!10924) Bool)

(assert (=> b!555252 (= res!347814 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10921))))

(declare-fun b!555253 () Bool)

(declare-fun res!347815 () Bool)

(assert (=> b!555253 (=> (not res!347815) (not e!320032))))

(assert (=> b!555253 (= res!347815 (validKeyInArray!0 k!1914))))

(declare-fun b!555254 () Bool)

(declare-fun res!347811 () Bool)

(assert (=> b!555254 (=> (not res!347811) (not e!320032))))

(assert (=> b!555254 (= res!347811 (and (= (size!17155 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17155 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17155 a!3118)) (not (= i!1132 j!142))))))

(assert (= (and start!50792 res!347812) b!555254))

(assert (= (and b!555254 res!347811) b!555247))

(assert (= (and b!555247 res!347816) b!555253))

(assert (= (and b!555253 res!347815) b!555251))

(assert (= (and b!555251 res!347808) b!555249))

(assert (= (and b!555249 res!347809) b!555248))

(assert (= (and b!555248 res!347810) b!555252))

(assert (= (and b!555252 res!347814) b!555246))

(assert (= (and b!555246 res!347813) b!555250))

(declare-fun m!532969 () Bool)

(assert (=> b!555253 m!532969))

(declare-fun m!532971 () Bool)

(assert (=> b!555247 m!532971))

(assert (=> b!555247 m!532971))

(declare-fun m!532973 () Bool)

(assert (=> b!555247 m!532973))

(declare-fun m!532975 () Bool)

(assert (=> b!555250 m!532975))

(assert (=> b!555250 m!532971))

(declare-fun m!532977 () Bool)

(assert (=> b!555250 m!532977))

(declare-fun m!532979 () Bool)

(assert (=> b!555250 m!532979))

(assert (=> b!555250 m!532971))

(declare-fun m!532981 () Bool)

(assert (=> b!555250 m!532981))

(declare-fun m!532983 () Bool)

(assert (=> b!555248 m!532983))

(declare-fun m!532985 () Bool)

(assert (=> b!555251 m!532985))

(declare-fun m!532987 () Bool)

(assert (=> start!50792 m!532987))

(declare-fun m!532989 () Bool)

(assert (=> start!50792 m!532989))

(declare-fun m!532991 () Bool)

(assert (=> b!555249 m!532991))

(assert (=> b!555246 m!532971))

(declare-fun m!532993 () Bool)

(assert (=> b!555246 m!532993))

(assert (=> b!555246 m!532971))

(declare-fun m!532995 () Bool)

(assert (=> b!555246 m!532995))

(assert (=> b!555246 m!532971))

(declare-fun m!532997 () Bool)

(assert (=> b!555246 m!532997))

(declare-fun m!532999 () Bool)

(assert (=> b!555246 m!532999))

(assert (=> b!555246 m!532997))

(declare-fun m!533001 () Bool)

(assert (=> b!555246 m!533001))

(assert (=> b!555246 m!532997))

(declare-fun m!533003 () Bool)

(assert (=> b!555246 m!533003))

(declare-fun m!533005 () Bool)

(assert (=> b!555252 m!533005))

(push 1)

