; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50790 () Bool)

(assert start!50790)

(declare-fun res!347787 () Bool)

(declare-fun e!320018 () Bool)

(assert (=> start!50790 (=> (not res!347787) (not e!320018))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50790 (= res!347787 (validMask!0 mask!3119))))

(assert (=> start!50790 e!320018))

(assert (=> start!50790 true))

(declare-datatypes ((array!34969 0))(
  ( (array!34970 (arr!16790 (Array (_ BitVec 32) (_ BitVec 64))) (size!17154 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34969)

(declare-fun array_inv!12564 (array!34969) Bool)

(assert (=> start!50790 (array_inv!12564 a!3118)))

(declare-fun b!555219 () Bool)

(declare-fun res!347789 () Bool)

(declare-fun e!320020 () Bool)

(assert (=> b!555219 (=> (not res!347789) (not e!320020))))

(declare-datatypes ((List!10923 0))(
  ( (Nil!10920) (Cons!10919 (h!11904 (_ BitVec 64)) (t!17159 List!10923)) )
))
(declare-fun arrayNoDuplicates!0 (array!34969 (_ BitVec 32) List!10923) Bool)

(assert (=> b!555219 (= res!347789 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10920))))

(declare-fun b!555220 () Bool)

(declare-fun e!320017 () Bool)

(assert (=> b!555220 (= e!320020 e!320017)))

(declare-fun res!347783 () Bool)

(assert (=> b!555220 (=> (not res!347783) (not e!320017))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun k!1914 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!5246 0))(
  ( (MissingZero!5246 (index!23211 (_ BitVec 32))) (Found!5246 (index!23212 (_ BitVec 32))) (Intermediate!5246 (undefined!6058 Bool) (index!23213 (_ BitVec 32)) (x!52139 (_ BitVec 32))) (Undefined!5246) (MissingVacant!5246 (index!23214 (_ BitVec 32))) )
))
(declare-fun lt!252364 () SeekEntryResult!5246)

(declare-fun lt!252362 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34969 (_ BitVec 32)) SeekEntryResult!5246)

(assert (=> b!555220 (= res!347783 (= lt!252364 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!252362 (select (store (arr!16790 a!3118) i!1132 k!1914) j!142) (array!34970 (store (arr!16790 a!3118) i!1132 k!1914) (size!17154 a!3118)) mask!3119)))))

(declare-fun lt!252361 () (_ BitVec 32))

(assert (=> b!555220 (= lt!252364 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!252361 (select (arr!16790 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!555220 (= lt!252362 (toIndex!0 (select (store (arr!16790 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!555220 (= lt!252361 (toIndex!0 (select (arr!16790 a!3118) j!142) mask!3119))))

(declare-fun b!555221 () Bool)

(declare-fun res!347784 () Bool)

(assert (=> b!555221 (=> (not res!347784) (not e!320018))))

(declare-fun arrayContainsKey!0 (array!34969 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!555221 (= res!347784 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!555222 () Bool)

(declare-fun res!347782 () Bool)

(assert (=> b!555222 (=> (not res!347782) (not e!320018))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!555222 (= res!347782 (validKeyInArray!0 (select (arr!16790 a!3118) j!142)))))

(declare-fun b!555223 () Bool)

(assert (=> b!555223 (= e!320018 e!320020)))

(declare-fun res!347785 () Bool)

(assert (=> b!555223 (=> (not res!347785) (not e!320020))))

(declare-fun lt!252360 () SeekEntryResult!5246)

(assert (=> b!555223 (= res!347785 (or (= lt!252360 (MissingZero!5246 i!1132)) (= lt!252360 (MissingVacant!5246 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34969 (_ BitVec 32)) SeekEntryResult!5246)

(assert (=> b!555223 (= lt!252360 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!555224 () Bool)

(declare-fun res!347788 () Bool)

(assert (=> b!555224 (=> (not res!347788) (not e!320018))))

(assert (=> b!555224 (= res!347788 (and (= (size!17154 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17154 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17154 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!555225 () Bool)

(assert (=> b!555225 (= e!320017 (not true))))

(declare-fun lt!252363 () SeekEntryResult!5246)

(assert (=> b!555225 (and (= lt!252363 (Found!5246 j!142)) (or (undefined!6058 lt!252364) (not (is-Intermediate!5246 lt!252364)) (= (select (arr!16790 a!3118) (index!23213 lt!252364)) (select (arr!16790 a!3118) j!142)) (not (= (select (arr!16790 a!3118) (index!23213 lt!252364)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= lt!252363 (MissingZero!5246 (index!23213 lt!252364)))))))

(assert (=> b!555225 (= lt!252363 (seekEntryOrOpen!0 (select (arr!16790 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34969 (_ BitVec 32)) Bool)

(assert (=> b!555225 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17266 0))(
  ( (Unit!17267) )
))
(declare-fun lt!252365 () Unit!17266)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34969 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17266)

(assert (=> b!555225 (= lt!252365 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!555226 () Bool)

(declare-fun res!347786 () Bool)

(assert (=> b!555226 (=> (not res!347786) (not e!320020))))

(assert (=> b!555226 (= res!347786 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!555227 () Bool)

(declare-fun res!347781 () Bool)

(assert (=> b!555227 (=> (not res!347781) (not e!320018))))

(assert (=> b!555227 (= res!347781 (validKeyInArray!0 k!1914))))

(assert (= (and start!50790 res!347787) b!555224))

(assert (= (and b!555224 res!347788) b!555222))

(assert (= (and b!555222 res!347782) b!555227))

(assert (= (and b!555227 res!347781) b!555221))

(assert (= (and b!555221 res!347784) b!555223))

(assert (= (and b!555223 res!347785) b!555226))

(assert (= (and b!555226 res!347786) b!555219))

(assert (= (and b!555219 res!347789) b!555220))

(assert (= (and b!555220 res!347783) b!555225))

(declare-fun m!532931 () Bool)

(assert (=> b!555225 m!532931))

(declare-fun m!532933 () Bool)

(assert (=> b!555225 m!532933))

(declare-fun m!532935 () Bool)

(assert (=> b!555225 m!532935))

(declare-fun m!532937 () Bool)

(assert (=> b!555225 m!532937))

(assert (=> b!555225 m!532933))

(declare-fun m!532939 () Bool)

(assert (=> b!555225 m!532939))

(assert (=> b!555220 m!532933))

(declare-fun m!532941 () Bool)

(assert (=> b!555220 m!532941))

(assert (=> b!555220 m!532933))

(declare-fun m!532943 () Bool)

(assert (=> b!555220 m!532943))

(assert (=> b!555220 m!532933))

(declare-fun m!532945 () Bool)

(assert (=> b!555220 m!532945))

(declare-fun m!532947 () Bool)

(assert (=> b!555220 m!532947))

(assert (=> b!555220 m!532943))

(declare-fun m!532949 () Bool)

(assert (=> b!555220 m!532949))

(assert (=> b!555220 m!532943))

(declare-fun m!532951 () Bool)

(assert (=> b!555220 m!532951))

(declare-fun m!532953 () Bool)

(assert (=> start!50790 m!532953))

(declare-fun m!532955 () Bool)

(assert (=> start!50790 m!532955))

(declare-fun m!532957 () Bool)

(assert (=> b!555223 m!532957))

(assert (=> b!555222 m!532933))

(assert (=> b!555222 m!532933))

(declare-fun m!532959 () Bool)

(assert (=> b!555222 m!532959))

(declare-fun m!532961 () Bool)

(assert (=> b!555227 m!532961))

(declare-fun m!532963 () Bool)

(assert (=> b!555226 m!532963))

(declare-fun m!532965 () Bool)

(assert (=> b!555221 m!532965))

(declare-fun m!532967 () Bool)

(assert (=> b!555219 m!532967))

(push 1)

