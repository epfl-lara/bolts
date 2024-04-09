; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51926 () Bool)

(assert start!51926)

(declare-fun b!567218 () Bool)

(declare-fun res!357954 () Bool)

(declare-fun e!326403 () Bool)

(assert (=> b!567218 (=> (not res!357954) (not e!326403))))

(declare-datatypes ((array!35574 0))(
  ( (array!35575 (arr!17079 (Array (_ BitVec 32) (_ BitVec 64))) (size!17443 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35574)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!567218 (= res!357954 (validKeyInArray!0 (select (arr!17079 a!3118) j!142)))))

(declare-fun res!357957 () Bool)

(assert (=> start!51926 (=> (not res!357957) (not e!326403))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51926 (= res!357957 (validMask!0 mask!3119))))

(assert (=> start!51926 e!326403))

(assert (=> start!51926 true))

(declare-fun array_inv!12853 (array!35574) Bool)

(assert (=> start!51926 (array_inv!12853 a!3118)))

(declare-fun b!567219 () Bool)

(declare-fun res!357961 () Bool)

(declare-fun e!326401 () Bool)

(assert (=> b!567219 (=> (not res!357961) (not e!326401))))

(declare-datatypes ((List!11212 0))(
  ( (Nil!11209) (Cons!11208 (h!12220 (_ BitVec 64)) (t!17448 List!11212)) )
))
(declare-fun arrayNoDuplicates!0 (array!35574 (_ BitVec 32) List!11212) Bool)

(assert (=> b!567219 (= res!357961 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11209))))

(declare-fun b!567220 () Bool)

(declare-fun e!326404 () Bool)

(declare-datatypes ((SeekEntryResult!5535 0))(
  ( (MissingZero!5535 (index!24367 (_ BitVec 32))) (Found!5535 (index!24368 (_ BitVec 32))) (Intermediate!5535 (undefined!6347 Bool) (index!24369 (_ BitVec 32)) (x!53267 (_ BitVec 32))) (Undefined!5535) (MissingVacant!5535 (index!24370 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35574 (_ BitVec 32)) SeekEntryResult!5535)

(assert (=> b!567220 (= e!326404 (= (seekEntryOrOpen!0 (select (arr!17079 a!3118) j!142) a!3118 mask!3119) (Found!5535 j!142)))))

(declare-fun b!567221 () Bool)

(declare-fun res!357953 () Bool)

(assert (=> b!567221 (=> (not res!357953) (not e!326403))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!567221 (= res!357953 (and (= (size!17443 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17443 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17443 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!567222 () Bool)

(assert (=> b!567222 (= e!326401 (not true))))

(assert (=> b!567222 e!326404))

(declare-fun res!357959 () Bool)

(assert (=> b!567222 (=> (not res!357959) (not e!326404))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35574 (_ BitVec 32)) Bool)

(assert (=> b!567222 (= res!357959 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17772 0))(
  ( (Unit!17773) )
))
(declare-fun lt!258472 () Unit!17772)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35574 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17772)

(assert (=> b!567222 (= lt!258472 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!567223 () Bool)

(declare-fun res!357958 () Bool)

(assert (=> b!567223 (=> (not res!357958) (not e!326401))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35574 (_ BitVec 32)) SeekEntryResult!5535)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!567223 (= res!357958 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17079 a!3118) j!142) mask!3119) (select (arr!17079 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!17079 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!17079 a!3118) i!1132 k!1914) j!142) (array!35575 (store (arr!17079 a!3118) i!1132 k!1914) (size!17443 a!3118)) mask!3119)))))

(declare-fun b!567224 () Bool)

(declare-fun res!357960 () Bool)

(assert (=> b!567224 (=> (not res!357960) (not e!326401))))

(assert (=> b!567224 (= res!357960 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!567225 () Bool)

(declare-fun res!357955 () Bool)

(assert (=> b!567225 (=> (not res!357955) (not e!326403))))

(declare-fun arrayContainsKey!0 (array!35574 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!567225 (= res!357955 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!567226 () Bool)

(declare-fun res!357962 () Bool)

(assert (=> b!567226 (=> (not res!357962) (not e!326403))))

(assert (=> b!567226 (= res!357962 (validKeyInArray!0 k!1914))))

(declare-fun b!567227 () Bool)

(assert (=> b!567227 (= e!326403 e!326401)))

(declare-fun res!357956 () Bool)

(assert (=> b!567227 (=> (not res!357956) (not e!326401))))

(declare-fun lt!258473 () SeekEntryResult!5535)

(assert (=> b!567227 (= res!357956 (or (= lt!258473 (MissingZero!5535 i!1132)) (= lt!258473 (MissingVacant!5535 i!1132))))))

(assert (=> b!567227 (= lt!258473 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(assert (= (and start!51926 res!357957) b!567221))

(assert (= (and b!567221 res!357953) b!567218))

(assert (= (and b!567218 res!357954) b!567226))

(assert (= (and b!567226 res!357962) b!567225))

(assert (= (and b!567225 res!357955) b!567227))

(assert (= (and b!567227 res!357956) b!567224))

(assert (= (and b!567224 res!357960) b!567219))

(assert (= (and b!567219 res!357961) b!567223))

(assert (= (and b!567223 res!357958) b!567222))

(assert (= (and b!567222 res!357959) b!567220))

(declare-fun m!545839 () Bool)

(assert (=> b!567223 m!545839))

(declare-fun m!545841 () Bool)

(assert (=> b!567223 m!545841))

(assert (=> b!567223 m!545839))

(declare-fun m!545843 () Bool)

(assert (=> b!567223 m!545843))

(declare-fun m!545845 () Bool)

(assert (=> b!567223 m!545845))

(assert (=> b!567223 m!545843))

(declare-fun m!545847 () Bool)

(assert (=> b!567223 m!545847))

(assert (=> b!567223 m!545841))

(assert (=> b!567223 m!545839))

(declare-fun m!545849 () Bool)

(assert (=> b!567223 m!545849))

(declare-fun m!545851 () Bool)

(assert (=> b!567223 m!545851))

(assert (=> b!567223 m!545843))

(assert (=> b!567223 m!545845))

(declare-fun m!545853 () Bool)

(assert (=> b!567224 m!545853))

(declare-fun m!545855 () Bool)

(assert (=> b!567227 m!545855))

(declare-fun m!545857 () Bool)

(assert (=> b!567225 m!545857))

(declare-fun m!545859 () Bool)

(assert (=> b!567222 m!545859))

(declare-fun m!545861 () Bool)

(assert (=> b!567222 m!545861))

(declare-fun m!545863 () Bool)

(assert (=> b!567219 m!545863))

(assert (=> b!567220 m!545839))

(assert (=> b!567220 m!545839))

(declare-fun m!545865 () Bool)

(assert (=> b!567220 m!545865))

(declare-fun m!545867 () Bool)

(assert (=> b!567226 m!545867))

(declare-fun m!545869 () Bool)

(assert (=> start!51926 m!545869))

(declare-fun m!545871 () Bool)

(assert (=> start!51926 m!545871))

(assert (=> b!567218 m!545839))

(assert (=> b!567218 m!545839))

(declare-fun m!545873 () Bool)

(assert (=> b!567218 m!545873))

(push 1)

