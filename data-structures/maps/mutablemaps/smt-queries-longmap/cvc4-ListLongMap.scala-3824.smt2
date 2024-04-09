; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52452 () Bool)

(assert start!52452)

(declare-fun b!572231 () Bool)

(declare-fun res!361900 () Bool)

(declare-fun e!329165 () Bool)

(assert (=> b!572231 (=> (not res!361900) (not e!329165))))

(declare-datatypes ((array!35803 0))(
  ( (array!35804 (arr!17186 (Array (_ BitVec 32) (_ BitVec 64))) (size!17550 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35803)

(declare-datatypes ((List!11319 0))(
  ( (Nil!11316) (Cons!11315 (h!12342 (_ BitVec 64)) (t!17555 List!11319)) )
))
(declare-fun arrayNoDuplicates!0 (array!35803 (_ BitVec 32) List!11319) Bool)

(assert (=> b!572231 (= res!361900 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11316))))

(declare-fun b!572232 () Bool)

(declare-fun e!329161 () Bool)

(assert (=> b!572232 (= e!329165 e!329161)))

(declare-fun res!361890 () Bool)

(assert (=> b!572232 (=> (not res!361890) (not e!329161))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun lt!261197 () array!35803)

(declare-fun lt!261192 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5642 0))(
  ( (MissingZero!5642 (index!24795 (_ BitVec 32))) (Found!5642 (index!24796 (_ BitVec 32))) (Intermediate!5642 (undefined!6454 Bool) (index!24797 (_ BitVec 32)) (x!53690 (_ BitVec 32))) (Undefined!5642) (MissingVacant!5642 (index!24798 (_ BitVec 32))) )
))
(declare-fun lt!261190 () SeekEntryResult!5642)

(declare-fun lt!261191 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35803 (_ BitVec 32)) SeekEntryResult!5642)

(assert (=> b!572232 (= res!361890 (= lt!261190 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!261192 lt!261191 lt!261197 mask!3119)))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun lt!261196 () (_ BitVec 32))

(assert (=> b!572232 (= lt!261190 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!261196 (select (arr!17186 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!572232 (= lt!261192 (toIndex!0 lt!261191 mask!3119))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!572232 (= lt!261191 (select (store (arr!17186 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!572232 (= lt!261196 (toIndex!0 (select (arr!17186 a!3118) j!142) mask!3119))))

(assert (=> b!572232 (= lt!261197 (array!35804 (store (arr!17186 a!3118) i!1132 k!1914) (size!17550 a!3118)))))

(declare-fun b!572233 () Bool)

(declare-fun res!361892 () Bool)

(assert (=> b!572233 (=> (not res!361892) (not e!329165))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35803 (_ BitVec 32)) Bool)

(assert (=> b!572233 (= res!361892 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!572234 () Bool)

(assert (=> b!572234 (= e!329161 (not true))))

(declare-fun e!329162 () Bool)

(assert (=> b!572234 e!329162))

(declare-fun res!361893 () Bool)

(assert (=> b!572234 (=> (not res!361893) (not e!329162))))

(declare-fun lt!261194 () SeekEntryResult!5642)

(assert (=> b!572234 (= res!361893 (= lt!261194 (Found!5642 j!142)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35803 (_ BitVec 32)) SeekEntryResult!5642)

(assert (=> b!572234 (= lt!261194 (seekEntryOrOpen!0 (select (arr!17186 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!572234 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17986 0))(
  ( (Unit!17987) )
))
(declare-fun lt!261189 () Unit!17986)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35803 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17986)

(assert (=> b!572234 (= lt!261189 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!572235 () Bool)

(declare-fun res!361901 () Bool)

(declare-fun e!329164 () Bool)

(assert (=> b!572235 (=> (not res!361901) (not e!329164))))

(assert (=> b!572235 (= res!361901 (and (= (size!17550 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17550 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17550 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!572236 () Bool)

(declare-fun res!361896 () Bool)

(assert (=> b!572236 (=> (not res!361896) (not e!329164))))

(declare-fun arrayContainsKey!0 (array!35803 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!572236 (= res!361896 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!572237 () Bool)

(declare-fun res!361889 () Bool)

(assert (=> b!572237 (=> (not res!361889) (not e!329164))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!572237 (= res!361889 (validKeyInArray!0 k!1914))))

(declare-fun b!572238 () Bool)

(declare-fun e!329163 () Bool)

(declare-fun e!329160 () Bool)

(assert (=> b!572238 (= e!329163 e!329160)))

(declare-fun res!361897 () Bool)

(assert (=> b!572238 (=> res!361897 e!329160)))

(declare-fun lt!261193 () (_ BitVec 64))

(assert (=> b!572238 (= res!361897 (or (= lt!261193 (select (arr!17186 a!3118) j!142)) (= lt!261193 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!572238 (= lt!261193 (select (arr!17186 a!3118) (index!24797 lt!261190)))))

(declare-fun b!572239 () Bool)

(declare-fun e!329167 () Bool)

(assert (=> b!572239 (= e!329160 e!329167)))

(declare-fun res!361898 () Bool)

(assert (=> b!572239 (=> (not res!361898) (not e!329167))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35803 (_ BitVec 32)) SeekEntryResult!5642)

(assert (=> b!572239 (= res!361898 (= lt!261194 (seekKeyOrZeroReturnVacant!0 (x!53690 lt!261190) (index!24797 lt!261190) (index!24797 lt!261190) (select (arr!17186 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!572240 () Bool)

(declare-fun res!361894 () Bool)

(assert (=> b!572240 (=> (not res!361894) (not e!329164))))

(assert (=> b!572240 (= res!361894 (validKeyInArray!0 (select (arr!17186 a!3118) j!142)))))

(declare-fun b!572241 () Bool)

(assert (=> b!572241 (= e!329167 (= (seekEntryOrOpen!0 lt!261191 lt!261197 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!53690 lt!261190) (index!24797 lt!261190) (index!24797 lt!261190) lt!261191 lt!261197 mask!3119)))))

(declare-fun b!572242 () Bool)

(assert (=> b!572242 (= e!329162 e!329163)))

(declare-fun res!361891 () Bool)

(assert (=> b!572242 (=> res!361891 e!329163)))

(assert (=> b!572242 (= res!361891 (or (undefined!6454 lt!261190) (not (is-Intermediate!5642 lt!261190))))))

(declare-fun b!572243 () Bool)

(assert (=> b!572243 (= e!329164 e!329165)))

(declare-fun res!361895 () Bool)

(assert (=> b!572243 (=> (not res!361895) (not e!329165))))

(declare-fun lt!261195 () SeekEntryResult!5642)

(assert (=> b!572243 (= res!361895 (or (= lt!261195 (MissingZero!5642 i!1132)) (= lt!261195 (MissingVacant!5642 i!1132))))))

(assert (=> b!572243 (= lt!261195 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun res!361899 () Bool)

(assert (=> start!52452 (=> (not res!361899) (not e!329164))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52452 (= res!361899 (validMask!0 mask!3119))))

(assert (=> start!52452 e!329164))

(assert (=> start!52452 true))

(declare-fun array_inv!12960 (array!35803) Bool)

(assert (=> start!52452 (array_inv!12960 a!3118)))

(assert (= (and start!52452 res!361899) b!572235))

(assert (= (and b!572235 res!361901) b!572240))

(assert (= (and b!572240 res!361894) b!572237))

(assert (= (and b!572237 res!361889) b!572236))

(assert (= (and b!572236 res!361896) b!572243))

(assert (= (and b!572243 res!361895) b!572233))

(assert (= (and b!572233 res!361892) b!572231))

(assert (= (and b!572231 res!361900) b!572232))

(assert (= (and b!572232 res!361890) b!572234))

(assert (= (and b!572234 res!361893) b!572242))

(assert (= (and b!572242 (not res!361891)) b!572238))

(assert (= (and b!572238 (not res!361897)) b!572239))

(assert (= (and b!572239 res!361898) b!572241))

(declare-fun m!551243 () Bool)

(assert (=> b!572243 m!551243))

(declare-fun m!551245 () Bool)

(assert (=> b!572240 m!551245))

(assert (=> b!572240 m!551245))

(declare-fun m!551247 () Bool)

(assert (=> b!572240 m!551247))

(declare-fun m!551249 () Bool)

(assert (=> b!572233 m!551249))

(declare-fun m!551251 () Bool)

(assert (=> b!572237 m!551251))

(declare-fun m!551253 () Bool)

(assert (=> start!52452 m!551253))

(declare-fun m!551255 () Bool)

(assert (=> start!52452 m!551255))

(declare-fun m!551257 () Bool)

(assert (=> b!572231 m!551257))

(assert (=> b!572234 m!551245))

(assert (=> b!572234 m!551245))

(declare-fun m!551259 () Bool)

(assert (=> b!572234 m!551259))

(declare-fun m!551261 () Bool)

(assert (=> b!572234 m!551261))

(declare-fun m!551263 () Bool)

(assert (=> b!572234 m!551263))

(declare-fun m!551265 () Bool)

(assert (=> b!572236 m!551265))

(assert (=> b!572232 m!551245))

(declare-fun m!551267 () Bool)

(assert (=> b!572232 m!551267))

(assert (=> b!572232 m!551245))

(declare-fun m!551269 () Bool)

(assert (=> b!572232 m!551269))

(assert (=> b!572232 m!551245))

(declare-fun m!551271 () Bool)

(assert (=> b!572232 m!551271))

(declare-fun m!551273 () Bool)

(assert (=> b!572232 m!551273))

(declare-fun m!551275 () Bool)

(assert (=> b!572232 m!551275))

(declare-fun m!551277 () Bool)

(assert (=> b!572232 m!551277))

(declare-fun m!551279 () Bool)

(assert (=> b!572241 m!551279))

(declare-fun m!551281 () Bool)

(assert (=> b!572241 m!551281))

(assert (=> b!572238 m!551245))

(declare-fun m!551283 () Bool)

(assert (=> b!572238 m!551283))

(assert (=> b!572239 m!551245))

(assert (=> b!572239 m!551245))

(declare-fun m!551285 () Bool)

(assert (=> b!572239 m!551285))

(push 1)

