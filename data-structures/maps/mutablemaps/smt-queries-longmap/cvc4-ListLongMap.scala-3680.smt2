; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50718 () Bool)

(assert start!50718)

(declare-fun b!554237 () Bool)

(declare-fun e!319585 () Bool)

(declare-fun e!319586 () Bool)

(assert (=> b!554237 (= e!319585 e!319586)))

(declare-fun res!346799 () Bool)

(assert (=> b!554237 (=> (not res!346799) (not e!319586))))

(declare-datatypes ((SeekEntryResult!5210 0))(
  ( (MissingZero!5210 (index!23067 (_ BitVec 32))) (Found!5210 (index!23068 (_ BitVec 32))) (Intermediate!5210 (undefined!6022 Bool) (index!23069 (_ BitVec 32)) (x!52007 (_ BitVec 32))) (Undefined!5210) (MissingVacant!5210 (index!23070 (_ BitVec 32))) )
))
(declare-fun lt!251752 () SeekEntryResult!5210)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!554237 (= res!346799 (or (= lt!251752 (MissingZero!5210 i!1132)) (= lt!251752 (MissingVacant!5210 i!1132))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun k!1914 () (_ BitVec 64))

(declare-datatypes ((array!34897 0))(
  ( (array!34898 (arr!16754 (Array (_ BitVec 32) (_ BitVec 64))) (size!17118 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34897)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34897 (_ BitVec 32)) SeekEntryResult!5210)

(assert (=> b!554237 (= lt!251752 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!554238 () Bool)

(declare-fun res!346808 () Bool)

(assert (=> b!554238 (=> (not res!346808) (not e!319586))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34897 (_ BitVec 32)) Bool)

(assert (=> b!554238 (= res!346808 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun res!346804 () Bool)

(assert (=> start!50718 (=> (not res!346804) (not e!319585))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50718 (= res!346804 (validMask!0 mask!3119))))

(assert (=> start!50718 e!319585))

(assert (=> start!50718 true))

(declare-fun array_inv!12528 (array!34897) Bool)

(assert (=> start!50718 (array_inv!12528 a!3118)))

(declare-fun b!554239 () Bool)

(declare-fun res!346805 () Bool)

(assert (=> b!554239 (=> (not res!346805) (not e!319585))))

(declare-fun arrayContainsKey!0 (array!34897 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!554239 (= res!346805 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!554240 () Bool)

(assert (=> b!554240 (= e!319586 (not true))))

(declare-fun e!319588 () Bool)

(assert (=> b!554240 e!319588))

(declare-fun res!346807 () Bool)

(assert (=> b!554240 (=> (not res!346807) (not e!319588))))

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!554240 (= res!346807 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17194 0))(
  ( (Unit!17195) )
))
(declare-fun lt!251753 () Unit!17194)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34897 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17194)

(assert (=> b!554240 (= lt!251753 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!554241 () Bool)

(declare-fun res!346803 () Bool)

(assert (=> b!554241 (=> (not res!346803) (not e!319585))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!554241 (= res!346803 (validKeyInArray!0 (select (arr!16754 a!3118) j!142)))))

(declare-fun b!554242 () Bool)

(declare-fun res!346806 () Bool)

(assert (=> b!554242 (=> (not res!346806) (not e!319585))))

(assert (=> b!554242 (= res!346806 (validKeyInArray!0 k!1914))))

(declare-fun b!554243 () Bool)

(assert (=> b!554243 (= e!319588 (= (seekEntryOrOpen!0 (select (arr!16754 a!3118) j!142) a!3118 mask!3119) (Found!5210 j!142)))))

(declare-fun b!554244 () Bool)

(declare-fun res!346800 () Bool)

(assert (=> b!554244 (=> (not res!346800) (not e!319586))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34897 (_ BitVec 32)) SeekEntryResult!5210)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!554244 (= res!346800 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16754 a!3118) j!142) mask!3119) (select (arr!16754 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16754 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!16754 a!3118) i!1132 k!1914) j!142) (array!34898 (store (arr!16754 a!3118) i!1132 k!1914) (size!17118 a!3118)) mask!3119)))))

(declare-fun b!554245 () Bool)

(declare-fun res!346802 () Bool)

(assert (=> b!554245 (=> (not res!346802) (not e!319585))))

(assert (=> b!554245 (= res!346802 (and (= (size!17118 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17118 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17118 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!554246 () Bool)

(declare-fun res!346801 () Bool)

(assert (=> b!554246 (=> (not res!346801) (not e!319586))))

(declare-datatypes ((List!10887 0))(
  ( (Nil!10884) (Cons!10883 (h!11868 (_ BitVec 64)) (t!17123 List!10887)) )
))
(declare-fun arrayNoDuplicates!0 (array!34897 (_ BitVec 32) List!10887) Bool)

(assert (=> b!554246 (= res!346801 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10884))))

(assert (= (and start!50718 res!346804) b!554245))

(assert (= (and b!554245 res!346802) b!554241))

(assert (= (and b!554241 res!346803) b!554242))

(assert (= (and b!554242 res!346806) b!554239))

(assert (= (and b!554239 res!346805) b!554237))

(assert (= (and b!554237 res!346799) b!554238))

(assert (= (and b!554238 res!346808) b!554246))

(assert (= (and b!554246 res!346801) b!554244))

(assert (= (and b!554244 res!346800) b!554240))

(assert (= (and b!554240 res!346807) b!554243))

(declare-fun m!531571 () Bool)

(assert (=> b!554240 m!531571))

(declare-fun m!531573 () Bool)

(assert (=> b!554240 m!531573))

(declare-fun m!531575 () Bool)

(assert (=> b!554243 m!531575))

(assert (=> b!554243 m!531575))

(declare-fun m!531577 () Bool)

(assert (=> b!554243 m!531577))

(declare-fun m!531579 () Bool)

(assert (=> b!554239 m!531579))

(declare-fun m!531581 () Bool)

(assert (=> b!554246 m!531581))

(declare-fun m!531583 () Bool)

(assert (=> start!50718 m!531583))

(declare-fun m!531585 () Bool)

(assert (=> start!50718 m!531585))

(declare-fun m!531587 () Bool)

(assert (=> b!554238 m!531587))

(assert (=> b!554244 m!531575))

(declare-fun m!531589 () Bool)

(assert (=> b!554244 m!531589))

(assert (=> b!554244 m!531575))

(declare-fun m!531591 () Bool)

(assert (=> b!554244 m!531591))

(declare-fun m!531593 () Bool)

(assert (=> b!554244 m!531593))

(assert (=> b!554244 m!531591))

(declare-fun m!531595 () Bool)

(assert (=> b!554244 m!531595))

(assert (=> b!554244 m!531589))

(assert (=> b!554244 m!531575))

(declare-fun m!531597 () Bool)

(assert (=> b!554244 m!531597))

(declare-fun m!531599 () Bool)

(assert (=> b!554244 m!531599))

(assert (=> b!554244 m!531591))

(assert (=> b!554244 m!531593))

(declare-fun m!531601 () Bool)

(assert (=> b!554242 m!531601))

(declare-fun m!531603 () Bool)

(assert (=> b!554237 m!531603))

(assert (=> b!554241 m!531575))

(assert (=> b!554241 m!531575))

(declare-fun m!531605 () Bool)

(assert (=> b!554241 m!531605))

(push 1)

