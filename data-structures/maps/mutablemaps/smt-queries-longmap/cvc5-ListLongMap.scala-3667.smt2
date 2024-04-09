; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50636 () Bool)

(assert start!50636)

(declare-fun b!552989 () Bool)

(declare-fun res!345555 () Bool)

(declare-fun e!319024 () Bool)

(assert (=> b!552989 (=> (not res!345555) (not e!319024))))

(declare-datatypes ((array!34815 0))(
  ( (array!34816 (arr!16713 (Array (_ BitVec 32) (_ BitVec 64))) (size!17077 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34815)

(declare-datatypes ((List!10846 0))(
  ( (Nil!10843) (Cons!10842 (h!11827 (_ BitVec 64)) (t!17082 List!10846)) )
))
(declare-fun arrayNoDuplicates!0 (array!34815 (_ BitVec 32) List!10846) Bool)

(assert (=> b!552989 (= res!345555 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10843))))

(declare-fun b!552990 () Bool)

(declare-fun res!345556 () Bool)

(assert (=> b!552990 (=> (not res!345556) (not e!319024))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34815 (_ BitVec 32)) Bool)

(assert (=> b!552990 (= res!345556 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun res!345559 () Bool)

(declare-fun e!319026 () Bool)

(assert (=> start!50636 (=> (not res!345559) (not e!319026))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50636 (= res!345559 (validMask!0 mask!3119))))

(assert (=> start!50636 e!319026))

(assert (=> start!50636 true))

(declare-fun array_inv!12487 (array!34815) Bool)

(assert (=> start!50636 (array_inv!12487 a!3118)))

(declare-fun b!552991 () Bool)

(declare-fun res!345557 () Bool)

(assert (=> b!552991 (=> (not res!345557) (not e!319026))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!552991 (= res!345557 (and (= (size!17077 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17077 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17077 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!552992 () Bool)

(declare-fun res!345553 () Bool)

(assert (=> b!552992 (=> (not res!345553) (not e!319026))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!552992 (= res!345553 (validKeyInArray!0 (select (arr!16713 a!3118) j!142)))))

(declare-fun e!319027 () Bool)

(declare-fun b!552993 () Bool)

(declare-datatypes ((SeekEntryResult!5169 0))(
  ( (MissingZero!5169 (index!22903 (_ BitVec 32))) (Found!5169 (index!22904 (_ BitVec 32))) (Intermediate!5169 (undefined!5981 Bool) (index!22905 (_ BitVec 32)) (x!51862 (_ BitVec 32))) (Undefined!5169) (MissingVacant!5169 (index!22906 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34815 (_ BitVec 32)) SeekEntryResult!5169)

(assert (=> b!552993 (= e!319027 (= (seekEntryOrOpen!0 (select (arr!16713 a!3118) j!142) a!3118 mask!3119) (Found!5169 j!142)))))

(declare-fun b!552994 () Bool)

(declare-fun res!345554 () Bool)

(assert (=> b!552994 (=> (not res!345554) (not e!319026))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34815 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!552994 (= res!345554 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!552995 () Bool)

(assert (=> b!552995 (= e!319026 e!319024)))

(declare-fun res!345558 () Bool)

(assert (=> b!552995 (=> (not res!345558) (not e!319024))))

(declare-fun lt!251351 () SeekEntryResult!5169)

(assert (=> b!552995 (= res!345558 (or (= lt!251351 (MissingZero!5169 i!1132)) (= lt!251351 (MissingVacant!5169 i!1132))))))

(assert (=> b!552995 (= lt!251351 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!552996 () Bool)

(declare-fun e!319023 () Bool)

(assert (=> b!552996 (= e!319024 e!319023)))

(declare-fun res!345552 () Bool)

(assert (=> b!552996 (=> (not res!345552) (not e!319023))))

(declare-fun lt!251352 () (_ BitVec 32))

(declare-fun lt!251354 () SeekEntryResult!5169)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34815 (_ BitVec 32)) SeekEntryResult!5169)

(assert (=> b!552996 (= res!345552 (= lt!251354 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!251352 (select (store (arr!16713 a!3118) i!1132 k!1914) j!142) (array!34816 (store (arr!16713 a!3118) i!1132 k!1914) (size!17077 a!3118)) mask!3119)))))

(declare-fun lt!251353 () (_ BitVec 32))

(assert (=> b!552996 (= lt!251354 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!251353 (select (arr!16713 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!552996 (= lt!251352 (toIndex!0 (select (store (arr!16713 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!552996 (= lt!251353 (toIndex!0 (select (arr!16713 a!3118) j!142) mask!3119))))

(declare-fun b!552997 () Bool)

(assert (=> b!552997 (= e!319023 (not (or (not (is-Intermediate!5169 lt!251354)) (not (undefined!5981 lt!251354)) (bvsge mask!3119 #b00000000000000000000000000000000))))))

(assert (=> b!552997 e!319027))

(declare-fun res!345551 () Bool)

(assert (=> b!552997 (=> (not res!345551) (not e!319027))))

(assert (=> b!552997 (= res!345551 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17112 0))(
  ( (Unit!17113) )
))
(declare-fun lt!251350 () Unit!17112)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34815 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17112)

(assert (=> b!552997 (= lt!251350 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!552998 () Bool)

(declare-fun res!345560 () Bool)

(assert (=> b!552998 (=> (not res!345560) (not e!319026))))

(assert (=> b!552998 (= res!345560 (validKeyInArray!0 k!1914))))

(assert (= (and start!50636 res!345559) b!552991))

(assert (= (and b!552991 res!345557) b!552992))

(assert (= (and b!552992 res!345553) b!552998))

(assert (= (and b!552998 res!345560) b!552994))

(assert (= (and b!552994 res!345554) b!552995))

(assert (= (and b!552995 res!345558) b!552990))

(assert (= (and b!552990 res!345556) b!552989))

(assert (= (and b!552989 res!345555) b!552996))

(assert (= (and b!552996 res!345552) b!552997))

(assert (= (and b!552997 res!345551) b!552993))

(declare-fun m!530059 () Bool)

(assert (=> b!552998 m!530059))

(declare-fun m!530061 () Bool)

(assert (=> b!552993 m!530061))

(assert (=> b!552993 m!530061))

(declare-fun m!530063 () Bool)

(assert (=> b!552993 m!530063))

(assert (=> b!552992 m!530061))

(assert (=> b!552992 m!530061))

(declare-fun m!530065 () Bool)

(assert (=> b!552992 m!530065))

(declare-fun m!530067 () Bool)

(assert (=> b!552995 m!530067))

(declare-fun m!530069 () Bool)

(assert (=> b!552990 m!530069))

(assert (=> b!552996 m!530061))

(declare-fun m!530071 () Bool)

(assert (=> b!552996 m!530071))

(declare-fun m!530073 () Bool)

(assert (=> b!552996 m!530073))

(declare-fun m!530075 () Bool)

(assert (=> b!552996 m!530075))

(assert (=> b!552996 m!530061))

(assert (=> b!552996 m!530073))

(assert (=> b!552996 m!530061))

(declare-fun m!530077 () Bool)

(assert (=> b!552996 m!530077))

(declare-fun m!530079 () Bool)

(assert (=> b!552996 m!530079))

(assert (=> b!552996 m!530073))

(declare-fun m!530081 () Bool)

(assert (=> b!552996 m!530081))

(declare-fun m!530083 () Bool)

(assert (=> start!50636 m!530083))

(declare-fun m!530085 () Bool)

(assert (=> start!50636 m!530085))

(declare-fun m!530087 () Bool)

(assert (=> b!552994 m!530087))

(declare-fun m!530089 () Bool)

(assert (=> b!552989 m!530089))

(declare-fun m!530091 () Bool)

(assert (=> b!552997 m!530091))

(declare-fun m!530093 () Bool)

(assert (=> b!552997 m!530093))

(push 1)

