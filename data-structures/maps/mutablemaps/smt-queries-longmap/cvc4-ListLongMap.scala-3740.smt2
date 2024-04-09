; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51456 () Bool)

(assert start!51456)

(declare-fun b!562037 () Bool)

(declare-fun e!323908 () Bool)

(declare-fun e!323901 () Bool)

(assert (=> b!562037 (= e!323908 e!323901)))

(declare-fun res!353346 () Bool)

(assert (=> b!562037 (=> (not res!353346) (not e!323901))))

(declare-fun j!142 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5390 0))(
  ( (MissingZero!5390 (index!23787 (_ BitVec 32))) (Found!5390 (index!23788 (_ BitVec 32))) (Intermediate!5390 (undefined!6202 Bool) (index!23789 (_ BitVec 32)) (x!52712 (_ BitVec 32))) (Undefined!5390) (MissingVacant!5390 (index!23790 (_ BitVec 32))) )
))
(declare-fun lt!256022 () SeekEntryResult!5390)

(declare-datatypes ((array!35275 0))(
  ( (array!35276 (arr!16934 (Array (_ BitVec 32) (_ BitVec 64))) (size!17298 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35275)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun lt!256024 () SeekEntryResult!5390)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35275 (_ BitVec 32)) SeekEntryResult!5390)

(assert (=> b!562037 (= res!353346 (= lt!256022 (seekKeyOrZeroReturnVacant!0 (x!52712 lt!256024) (index!23789 lt!256024) (index!23789 lt!256024) (select (arr!16934 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!562038 () Bool)

(declare-fun e!323905 () Bool)

(assert (=> b!562038 (= e!323905 (not true))))

(declare-fun e!323903 () Bool)

(assert (=> b!562038 e!323903))

(declare-fun res!353350 () Bool)

(assert (=> b!562038 (=> (not res!353350) (not e!323903))))

(assert (=> b!562038 (= res!353350 (= lt!256022 (Found!5390 j!142)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35275 (_ BitVec 32)) SeekEntryResult!5390)

(assert (=> b!562038 (= lt!256022 (seekEntryOrOpen!0 (select (arr!16934 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35275 (_ BitVec 32)) Bool)

(assert (=> b!562038 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17554 0))(
  ( (Unit!17555) )
))
(declare-fun lt!256025 () Unit!17554)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35275 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17554)

(assert (=> b!562038 (= lt!256025 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!562039 () Bool)

(declare-fun e!323902 () Bool)

(assert (=> b!562039 (= e!323903 e!323902)))

(declare-fun res!353345 () Bool)

(assert (=> b!562039 (=> res!353345 e!323902)))

(assert (=> b!562039 (= res!353345 (or (undefined!6202 lt!256024) (not (is-Intermediate!5390 lt!256024))))))

(declare-fun b!562040 () Bool)

(assert (=> b!562040 (= e!323902 e!323908)))

(declare-fun res!353348 () Bool)

(assert (=> b!562040 (=> res!353348 e!323908)))

(declare-fun lt!256026 () (_ BitVec 64))

(assert (=> b!562040 (= res!353348 (or (= lt!256026 (select (arr!16934 a!3118) j!142)) (= lt!256026 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!562040 (= lt!256026 (select (arr!16934 a!3118) (index!23789 lt!256024)))))

(declare-fun res!353347 () Bool)

(declare-fun e!323907 () Bool)

(assert (=> start!51456 (=> (not res!353347) (not e!323907))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51456 (= res!353347 (validMask!0 mask!3119))))

(assert (=> start!51456 e!323907))

(assert (=> start!51456 true))

(declare-fun array_inv!12708 (array!35275) Bool)

(assert (=> start!51456 (array_inv!12708 a!3118)))

(declare-fun b!562041 () Bool)

(declare-fun lt!256023 () array!35275)

(declare-fun lt!256020 () (_ BitVec 64))

(assert (=> b!562041 (= e!323901 (= (seekEntryOrOpen!0 lt!256020 lt!256023 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!52712 lt!256024) (index!23789 lt!256024) (index!23789 lt!256024) lt!256020 lt!256023 mask!3119)))))

(declare-fun b!562042 () Bool)

(declare-fun res!353344 () Bool)

(declare-fun e!323906 () Bool)

(assert (=> b!562042 (=> (not res!353344) (not e!323906))))

(assert (=> b!562042 (= res!353344 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!562043 () Bool)

(declare-fun res!353351 () Bool)

(assert (=> b!562043 (=> (not res!353351) (not e!323907))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!35275 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!562043 (= res!353351 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!562044 () Bool)

(declare-fun res!353349 () Bool)

(assert (=> b!562044 (=> (not res!353349) (not e!323906))))

(declare-datatypes ((List!11067 0))(
  ( (Nil!11064) (Cons!11063 (h!12066 (_ BitVec 64)) (t!17303 List!11067)) )
))
(declare-fun arrayNoDuplicates!0 (array!35275 (_ BitVec 32) List!11067) Bool)

(assert (=> b!562044 (= res!353349 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11064))))

(declare-fun b!562045 () Bool)

(declare-fun res!353340 () Bool)

(assert (=> b!562045 (=> (not res!353340) (not e!323907))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!562045 (= res!353340 (validKeyInArray!0 (select (arr!16934 a!3118) j!142)))))

(declare-fun b!562046 () Bool)

(declare-fun res!353341 () Bool)

(assert (=> b!562046 (=> (not res!353341) (not e!323907))))

(assert (=> b!562046 (= res!353341 (validKeyInArray!0 k!1914))))

(declare-fun b!562047 () Bool)

(declare-fun res!353342 () Bool)

(assert (=> b!562047 (=> (not res!353342) (not e!323907))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!562047 (= res!353342 (and (= (size!17298 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17298 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17298 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!562048 () Bool)

(assert (=> b!562048 (= e!323907 e!323906)))

(declare-fun res!353343 () Bool)

(assert (=> b!562048 (=> (not res!353343) (not e!323906))))

(declare-fun lt!256028 () SeekEntryResult!5390)

(assert (=> b!562048 (= res!353343 (or (= lt!256028 (MissingZero!5390 i!1132)) (= lt!256028 (MissingVacant!5390 i!1132))))))

(assert (=> b!562048 (= lt!256028 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!562049 () Bool)

(assert (=> b!562049 (= e!323906 e!323905)))

(declare-fun res!353339 () Bool)

(assert (=> b!562049 (=> (not res!353339) (not e!323905))))

(declare-fun lt!256027 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35275 (_ BitVec 32)) SeekEntryResult!5390)

(assert (=> b!562049 (= res!353339 (= lt!256024 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!256027 lt!256020 lt!256023 mask!3119)))))

(declare-fun lt!256021 () (_ BitVec 32))

(assert (=> b!562049 (= lt!256024 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!256021 (select (arr!16934 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!562049 (= lt!256027 (toIndex!0 lt!256020 mask!3119))))

(assert (=> b!562049 (= lt!256020 (select (store (arr!16934 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!562049 (= lt!256021 (toIndex!0 (select (arr!16934 a!3118) j!142) mask!3119))))

(assert (=> b!562049 (= lt!256023 (array!35276 (store (arr!16934 a!3118) i!1132 k!1914) (size!17298 a!3118)))))

(assert (= (and start!51456 res!353347) b!562047))

(assert (= (and b!562047 res!353342) b!562045))

(assert (= (and b!562045 res!353340) b!562046))

(assert (= (and b!562046 res!353341) b!562043))

(assert (= (and b!562043 res!353351) b!562048))

(assert (= (and b!562048 res!353343) b!562042))

(assert (= (and b!562042 res!353344) b!562044))

(assert (= (and b!562044 res!353349) b!562049))

(assert (= (and b!562049 res!353339) b!562038))

(assert (= (and b!562038 res!353350) b!562039))

(assert (= (and b!562039 (not res!353345)) b!562040))

(assert (= (and b!562040 (not res!353348)) b!562037))

(assert (= (and b!562037 res!353346) b!562041))

(declare-fun m!540071 () Bool)

(assert (=> b!562037 m!540071))

(assert (=> b!562037 m!540071))

(declare-fun m!540073 () Bool)

(assert (=> b!562037 m!540073))

(declare-fun m!540075 () Bool)

(assert (=> b!562048 m!540075))

(declare-fun m!540077 () Bool)

(assert (=> b!562044 m!540077))

(declare-fun m!540079 () Bool)

(assert (=> b!562042 m!540079))

(assert (=> b!562049 m!540071))

(declare-fun m!540081 () Bool)

(assert (=> b!562049 m!540081))

(declare-fun m!540083 () Bool)

(assert (=> b!562049 m!540083))

(assert (=> b!562049 m!540071))

(declare-fun m!540085 () Bool)

(assert (=> b!562049 m!540085))

(assert (=> b!562049 m!540071))

(declare-fun m!540087 () Bool)

(assert (=> b!562049 m!540087))

(declare-fun m!540089 () Bool)

(assert (=> b!562049 m!540089))

(declare-fun m!540091 () Bool)

(assert (=> b!562049 m!540091))

(declare-fun m!540093 () Bool)

(assert (=> start!51456 m!540093))

(declare-fun m!540095 () Bool)

(assert (=> start!51456 m!540095))

(assert (=> b!562045 m!540071))

(assert (=> b!562045 m!540071))

(declare-fun m!540097 () Bool)

(assert (=> b!562045 m!540097))

(declare-fun m!540099 () Bool)

(assert (=> b!562046 m!540099))

(declare-fun m!540101 () Bool)

(assert (=> b!562041 m!540101))

(declare-fun m!540103 () Bool)

(assert (=> b!562041 m!540103))

(assert (=> b!562040 m!540071))

(declare-fun m!540105 () Bool)

(assert (=> b!562040 m!540105))

(assert (=> b!562038 m!540071))

(assert (=> b!562038 m!540071))

(declare-fun m!540107 () Bool)

(assert (=> b!562038 m!540107))

(declare-fun m!540109 () Bool)

(assert (=> b!562038 m!540109))

(declare-fun m!540111 () Bool)

(assert (=> b!562038 m!540111))

(declare-fun m!540113 () Bool)

(assert (=> b!562043 m!540113))

(push 1)

(assert (not b!562041))

(assert (not b!562049))

(assert (not b!562042))

(assert (not b!562044))

(assert (not start!51456))

(assert (not b!562045))

