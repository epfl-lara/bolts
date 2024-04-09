; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!52798 () Bool)

(assert start!52798)

(declare-fun b!575322 () Bool)

(declare-fun e!331039 () Bool)

(declare-fun e!331042 () Bool)

(assert (=> b!575322 (= e!331039 (not e!331042))))

(declare-fun res!363899 () Bool)

(assert (=> b!575322 (=> res!363899 e!331042)))

(declare-datatypes ((SeekEntryResult!5683 0))(
  ( (MissingZero!5683 (index!24959 (_ BitVec 32))) (Found!5683 (index!24960 (_ BitVec 32))) (Intermediate!5683 (undefined!6495 Bool) (index!24961 (_ BitVec 32)) (x!53879 (_ BitVec 32))) (Undefined!5683) (MissingVacant!5683 (index!24962 (_ BitVec 32))) )
))
(declare-fun lt!263077 () SeekEntryResult!5683)

(get-info :version)

(assert (=> b!575322 (= res!363899 (or (undefined!6495 lt!263077) (not ((_ is Intermediate!5683) lt!263077))))))

(declare-fun lt!263079 () SeekEntryResult!5683)

(declare-fun lt!263080 () SeekEntryResult!5683)

(assert (=> b!575322 (= lt!263079 lt!263080)))

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!575322 (= lt!263080 (Found!5683 j!142))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-datatypes ((array!35897 0))(
  ( (array!35898 (arr!17227 (Array (_ BitVec 32) (_ BitVec 64))) (size!17591 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35897)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35897 (_ BitVec 32)) SeekEntryResult!5683)

(assert (=> b!575322 (= lt!263079 (seekEntryOrOpen!0 (select (arr!17227 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35897 (_ BitVec 32)) Bool)

(assert (=> b!575322 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!18068 0))(
  ( (Unit!18069) )
))
(declare-fun lt!263088 () Unit!18068)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35897 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18068)

(assert (=> b!575322 (= lt!263088 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!575323 () Bool)

(declare-fun e!331036 () Bool)

(declare-fun e!331038 () Bool)

(assert (=> b!575323 (= e!331036 e!331038)))

(declare-fun res!363894 () Bool)

(assert (=> b!575323 (=> res!363894 e!331038)))

(declare-fun lt!263089 () SeekEntryResult!5683)

(declare-fun lt!263090 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(declare-fun k0!1914 () (_ BitVec 64))

(assert (=> b!575323 (= res!363894 (or (bvslt (index!24961 lt!263077) #b00000000000000000000000000000000) (bvsge (index!24961 lt!263077) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsgt (x!53879 lt!263077) #b01111111111111111111111111111110) (bvslt (x!53879 lt!263077) #b00000000000000000000000000000000) (not (= lt!263090 #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (store (arr!17227 a!3118) i!1132 k0!1914) (index!24961 lt!263077)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= lt!263089 lt!263080))))))

(declare-fun lt!263086 () SeekEntryResult!5683)

(declare-fun lt!263083 () SeekEntryResult!5683)

(assert (=> b!575323 (= lt!263086 lt!263083)))

(declare-fun lt!263085 () (_ BitVec 64))

(declare-fun lt!263078 () array!35897)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35897 (_ BitVec 32)) SeekEntryResult!5683)

(assert (=> b!575323 (= lt!263083 (seekKeyOrZeroReturnVacant!0 (x!53879 lt!263077) (index!24961 lt!263077) (index!24961 lt!263077) lt!263085 lt!263078 mask!3119))))

(assert (=> b!575323 (= lt!263086 (seekEntryOrOpen!0 lt!263085 lt!263078 mask!3119))))

(assert (=> b!575323 (= lt!263079 lt!263089)))

(assert (=> b!575323 (= lt!263089 (seekKeyOrZeroReturnVacant!0 (x!53879 lt!263077) (index!24961 lt!263077) (index!24961 lt!263077) (select (arr!17227 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!575324 () Bool)

(assert (=> b!575324 (= e!331038 true)))

(assert (=> b!575324 (= lt!263089 lt!263083)))

(declare-fun lt!263081 () Unit!18068)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!35897 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18068)

(assert (=> b!575324 (= lt!263081 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!3118 i!1132 k0!1914 j!142 (x!53879 lt!263077) (index!24961 lt!263077) (index!24961 lt!263077) mask!3119))))

(declare-fun b!575325 () Bool)

(declare-fun res!363895 () Bool)

(declare-fun e!331041 () Bool)

(assert (=> b!575325 (=> (not res!363895) (not e!331041))))

(assert (=> b!575325 (= res!363895 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun res!363898 () Bool)

(declare-fun e!331037 () Bool)

(assert (=> start!52798 (=> (not res!363898) (not e!331037))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52798 (= res!363898 (validMask!0 mask!3119))))

(assert (=> start!52798 e!331037))

(assert (=> start!52798 true))

(declare-fun array_inv!13001 (array!35897) Bool)

(assert (=> start!52798 (array_inv!13001 a!3118)))

(declare-fun b!575326 () Bool)

(declare-fun res!363892 () Bool)

(assert (=> b!575326 (=> (not res!363892) (not e!331037))))

(assert (=> b!575326 (= res!363892 (and (= (size!17591 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17591 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17591 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!575327 () Bool)

(assert (=> b!575327 (= e!331037 e!331041)))

(declare-fun res!363897 () Bool)

(assert (=> b!575327 (=> (not res!363897) (not e!331041))))

(declare-fun lt!263082 () SeekEntryResult!5683)

(assert (=> b!575327 (= res!363897 (or (= lt!263082 (MissingZero!5683 i!1132)) (= lt!263082 (MissingVacant!5683 i!1132))))))

(assert (=> b!575327 (= lt!263082 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!575328 () Bool)

(assert (=> b!575328 (= e!331041 e!331039)))

(declare-fun res!363888 () Bool)

(assert (=> b!575328 (=> (not res!363888) (not e!331039))))

(declare-fun lt!263084 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35897 (_ BitVec 32)) SeekEntryResult!5683)

(assert (=> b!575328 (= res!363888 (= lt!263077 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!263084 lt!263085 lt!263078 mask!3119)))))

(declare-fun lt!263087 () (_ BitVec 32))

(assert (=> b!575328 (= lt!263077 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!263087 (select (arr!17227 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!575328 (= lt!263084 (toIndex!0 lt!263085 mask!3119))))

(assert (=> b!575328 (= lt!263085 (select (store (arr!17227 a!3118) i!1132 k0!1914) j!142))))

(assert (=> b!575328 (= lt!263087 (toIndex!0 (select (arr!17227 a!3118) j!142) mask!3119))))

(assert (=> b!575328 (= lt!263078 (array!35898 (store (arr!17227 a!3118) i!1132 k0!1914) (size!17591 a!3118)))))

(declare-fun b!575329 () Bool)

(declare-fun res!363890 () Bool)

(assert (=> b!575329 (=> (not res!363890) (not e!331037))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!575329 (= res!363890 (validKeyInArray!0 (select (arr!17227 a!3118) j!142)))))

(declare-fun b!575330 () Bool)

(declare-fun res!363893 () Bool)

(assert (=> b!575330 (=> (not res!363893) (not e!331037))))

(assert (=> b!575330 (= res!363893 (validKeyInArray!0 k0!1914))))

(declare-fun b!575331 () Bool)

(declare-fun res!363891 () Bool)

(assert (=> b!575331 (=> (not res!363891) (not e!331041))))

(declare-datatypes ((List!11360 0))(
  ( (Nil!11357) (Cons!11356 (h!12395 (_ BitVec 64)) (t!17596 List!11360)) )
))
(declare-fun arrayNoDuplicates!0 (array!35897 (_ BitVec 32) List!11360) Bool)

(assert (=> b!575331 (= res!363891 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11357))))

(declare-fun b!575332 () Bool)

(assert (=> b!575332 (= e!331042 e!331036)))

(declare-fun res!363889 () Bool)

(assert (=> b!575332 (=> res!363889 e!331036)))

(assert (=> b!575332 (= res!363889 (or (= lt!263090 (select (arr!17227 a!3118) j!142)) (= lt!263090 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!575332 (= lt!263090 (select (arr!17227 a!3118) (index!24961 lt!263077)))))

(declare-fun b!575333 () Bool)

(declare-fun res!363896 () Bool)

(assert (=> b!575333 (=> (not res!363896) (not e!331037))))

(declare-fun arrayContainsKey!0 (array!35897 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!575333 (= res!363896 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(assert (= (and start!52798 res!363898) b!575326))

(assert (= (and b!575326 res!363892) b!575329))

(assert (= (and b!575329 res!363890) b!575330))

(assert (= (and b!575330 res!363893) b!575333))

(assert (= (and b!575333 res!363896) b!575327))

(assert (= (and b!575327 res!363897) b!575325))

(assert (= (and b!575325 res!363895) b!575331))

(assert (= (and b!575331 res!363891) b!575328))

(assert (= (and b!575328 res!363888) b!575322))

(assert (= (and b!575322 (not res!363899)) b!575332))

(assert (= (and b!575332 (not res!363889)) b!575323))

(assert (= (and b!575323 (not res!363894)) b!575324))

(declare-fun m!554239 () Bool)

(assert (=> start!52798 m!554239))

(declare-fun m!554241 () Bool)

(assert (=> start!52798 m!554241))

(declare-fun m!554243 () Bool)

(assert (=> b!575324 m!554243))

(declare-fun m!554245 () Bool)

(assert (=> b!575323 m!554245))

(declare-fun m!554247 () Bool)

(assert (=> b!575323 m!554247))

(assert (=> b!575323 m!554245))

(declare-fun m!554249 () Bool)

(assert (=> b!575323 m!554249))

(declare-fun m!554251 () Bool)

(assert (=> b!575323 m!554251))

(declare-fun m!554253 () Bool)

(assert (=> b!575323 m!554253))

(declare-fun m!554255 () Bool)

(assert (=> b!575323 m!554255))

(declare-fun m!554257 () Bool)

(assert (=> b!575330 m!554257))

(declare-fun m!554259 () Bool)

(assert (=> b!575325 m!554259))

(assert (=> b!575322 m!554245))

(assert (=> b!575322 m!554245))

(declare-fun m!554261 () Bool)

(assert (=> b!575322 m!554261))

(declare-fun m!554263 () Bool)

(assert (=> b!575322 m!554263))

(declare-fun m!554265 () Bool)

(assert (=> b!575322 m!554265))

(assert (=> b!575328 m!554245))

(declare-fun m!554267 () Bool)

(assert (=> b!575328 m!554267))

(assert (=> b!575328 m!554245))

(declare-fun m!554269 () Bool)

(assert (=> b!575328 m!554269))

(assert (=> b!575328 m!554245))

(declare-fun m!554271 () Bool)

(assert (=> b!575328 m!554271))

(declare-fun m!554273 () Bool)

(assert (=> b!575328 m!554273))

(assert (=> b!575328 m!554251))

(declare-fun m!554275 () Bool)

(assert (=> b!575328 m!554275))

(assert (=> b!575332 m!554245))

(declare-fun m!554277 () Bool)

(assert (=> b!575332 m!554277))

(declare-fun m!554279 () Bool)

(assert (=> b!575331 m!554279))

(assert (=> b!575329 m!554245))

(assert (=> b!575329 m!554245))

(declare-fun m!554281 () Bool)

(assert (=> b!575329 m!554281))

(declare-fun m!554283 () Bool)

(assert (=> b!575333 m!554283))

(declare-fun m!554285 () Bool)

(assert (=> b!575327 m!554285))

(check-sat (not b!575330) (not start!52798) (not b!575331) (not b!575323) (not b!575328) (not b!575333) (not b!575327) (not b!575322) (not b!575325) (not b!575329) (not b!575324))
(check-sat)
