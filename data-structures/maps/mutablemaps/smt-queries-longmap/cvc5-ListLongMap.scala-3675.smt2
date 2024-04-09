; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50684 () Bool)

(assert start!50684)

(declare-fun b!553718 () Bool)

(declare-fun res!346284 () Bool)

(declare-fun e!319350 () Bool)

(assert (=> b!553718 (=> (not res!346284) (not e!319350))))

(declare-datatypes ((array!34863 0))(
  ( (array!34864 (arr!16737 (Array (_ BitVec 32) (_ BitVec 64))) (size!17101 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34863)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!553718 (= res!346284 (validKeyInArray!0 (select (arr!16737 a!3118) j!142)))))

(declare-fun b!553719 () Bool)

(declare-fun e!319349 () Bool)

(declare-fun e!319347 () Bool)

(assert (=> b!553719 (= e!319349 e!319347)))

(declare-fun res!346287 () Bool)

(assert (=> b!553719 (=> (not res!346287) (not e!319347))))

(declare-datatypes ((SeekEntryResult!5193 0))(
  ( (MissingZero!5193 (index!22999 (_ BitVec 32))) (Found!5193 (index!23000 (_ BitVec 32))) (Intermediate!5193 (undefined!6005 Bool) (index!23001 (_ BitVec 32)) (x!51950 (_ BitVec 32))) (Undefined!5193) (MissingVacant!5193 (index!23002 (_ BitVec 32))) )
))
(declare-fun lt!251579 () SeekEntryResult!5193)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun lt!251576 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34863 (_ BitVec 32)) SeekEntryResult!5193)

(assert (=> b!553719 (= res!346287 (= lt!251579 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!251576 (select (store (arr!16737 a!3118) i!1132 k!1914) j!142) (array!34864 (store (arr!16737 a!3118) i!1132 k!1914) (size!17101 a!3118)) mask!3119)))))

(declare-fun lt!251577 () (_ BitVec 32))

(assert (=> b!553719 (= lt!251579 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!251577 (select (arr!16737 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!553719 (= lt!251576 (toIndex!0 (select (store (arr!16737 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!553719 (= lt!251577 (toIndex!0 (select (arr!16737 a!3118) j!142) mask!3119))))

(declare-fun b!553720 () Bool)

(assert (=> b!553720 (= e!319347 (not (or (not (is-Intermediate!5193 lt!251579)) (undefined!6005 lt!251579) (not (= (select (arr!16737 a!3118) (index!23001 lt!251579)) (select (arr!16737 a!3118) j!142))) (bvsge mask!3119 #b00000000000000000000000000000000))))))

(declare-fun e!319351 () Bool)

(assert (=> b!553720 e!319351))

(declare-fun res!346282 () Bool)

(assert (=> b!553720 (=> (not res!346282) (not e!319351))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34863 (_ BitVec 32)) Bool)

(assert (=> b!553720 (= res!346282 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17160 0))(
  ( (Unit!17161) )
))
(declare-fun lt!251575 () Unit!17160)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34863 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17160)

(assert (=> b!553720 (= lt!251575 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!553721 () Bool)

(declare-fun res!346285 () Bool)

(assert (=> b!553721 (=> (not res!346285) (not e!319350))))

(declare-fun arrayContainsKey!0 (array!34863 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!553721 (= res!346285 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun res!346286 () Bool)

(assert (=> start!50684 (=> (not res!346286) (not e!319350))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50684 (= res!346286 (validMask!0 mask!3119))))

(assert (=> start!50684 e!319350))

(assert (=> start!50684 true))

(declare-fun array_inv!12511 (array!34863) Bool)

(assert (=> start!50684 (array_inv!12511 a!3118)))

(declare-fun b!553722 () Bool)

(declare-fun res!346288 () Bool)

(assert (=> b!553722 (=> (not res!346288) (not e!319350))))

(assert (=> b!553722 (= res!346288 (validKeyInArray!0 k!1914))))

(declare-fun b!553723 () Bool)

(declare-fun res!346281 () Bool)

(assert (=> b!553723 (=> (not res!346281) (not e!319350))))

(assert (=> b!553723 (= res!346281 (and (= (size!17101 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17101 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17101 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!553724 () Bool)

(declare-fun res!346280 () Bool)

(assert (=> b!553724 (=> (not res!346280) (not e!319349))))

(declare-datatypes ((List!10870 0))(
  ( (Nil!10867) (Cons!10866 (h!11851 (_ BitVec 64)) (t!17106 List!10870)) )
))
(declare-fun arrayNoDuplicates!0 (array!34863 (_ BitVec 32) List!10870) Bool)

(assert (=> b!553724 (= res!346280 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10867))))

(declare-fun b!553725 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34863 (_ BitVec 32)) SeekEntryResult!5193)

(assert (=> b!553725 (= e!319351 (= (seekEntryOrOpen!0 (select (arr!16737 a!3118) j!142) a!3118 mask!3119) (Found!5193 j!142)))))

(declare-fun b!553726 () Bool)

(declare-fun res!346283 () Bool)

(assert (=> b!553726 (=> (not res!346283) (not e!319349))))

(assert (=> b!553726 (= res!346283 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!553727 () Bool)

(assert (=> b!553727 (= e!319350 e!319349)))

(declare-fun res!346289 () Bool)

(assert (=> b!553727 (=> (not res!346289) (not e!319349))))

(declare-fun lt!251578 () SeekEntryResult!5193)

(assert (=> b!553727 (= res!346289 (or (= lt!251578 (MissingZero!5193 i!1132)) (= lt!251578 (MissingVacant!5193 i!1132))))))

(assert (=> b!553727 (= lt!251578 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(assert (= (and start!50684 res!346286) b!553723))

(assert (= (and b!553723 res!346281) b!553718))

(assert (= (and b!553718 res!346284) b!553722))

(assert (= (and b!553722 res!346288) b!553721))

(assert (= (and b!553721 res!346285) b!553727))

(assert (= (and b!553727 res!346289) b!553726))

(assert (= (and b!553726 res!346283) b!553724))

(assert (= (and b!553724 res!346280) b!553719))

(assert (= (and b!553719 res!346287) b!553720))

(assert (= (and b!553720 res!346282) b!553725))

(declare-fun m!530935 () Bool)

(assert (=> b!553725 m!530935))

(assert (=> b!553725 m!530935))

(declare-fun m!530937 () Bool)

(assert (=> b!553725 m!530937))

(assert (=> b!553719 m!530935))

(declare-fun m!530939 () Bool)

(assert (=> b!553719 m!530939))

(assert (=> b!553719 m!530935))

(declare-fun m!530941 () Bool)

(assert (=> b!553719 m!530941))

(assert (=> b!553719 m!530935))

(declare-fun m!530943 () Bool)

(assert (=> b!553719 m!530943))

(declare-fun m!530945 () Bool)

(assert (=> b!553719 m!530945))

(assert (=> b!553719 m!530941))

(declare-fun m!530947 () Bool)

(assert (=> b!553719 m!530947))

(assert (=> b!553719 m!530941))

(declare-fun m!530949 () Bool)

(assert (=> b!553719 m!530949))

(declare-fun m!530951 () Bool)

(assert (=> b!553727 m!530951))

(declare-fun m!530953 () Bool)

(assert (=> b!553720 m!530953))

(assert (=> b!553720 m!530935))

(declare-fun m!530955 () Bool)

(assert (=> b!553720 m!530955))

(declare-fun m!530957 () Bool)

(assert (=> b!553720 m!530957))

(declare-fun m!530959 () Bool)

(assert (=> b!553726 m!530959))

(declare-fun m!530961 () Bool)

(assert (=> start!50684 m!530961))

(declare-fun m!530963 () Bool)

(assert (=> start!50684 m!530963))

(declare-fun m!530965 () Bool)

(assert (=> b!553721 m!530965))

(declare-fun m!530967 () Bool)

(assert (=> b!553724 m!530967))

(declare-fun m!530969 () Bool)

(assert (=> b!553722 m!530969))

(assert (=> b!553718 m!530935))

(assert (=> b!553718 m!530935))

(declare-fun m!530971 () Bool)

(assert (=> b!553718 m!530971))

(push 1)

