; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!50842 () Bool)

(assert start!50842)

(declare-fun b!555944 () Bool)

(declare-fun e!320338 () Bool)

(assert (=> b!555944 (= e!320338 (not true))))

(declare-fun e!320341 () Bool)

(assert (=> b!555944 e!320341))

(declare-fun res!348507 () Bool)

(assert (=> b!555944 (=> (not res!348507) (not e!320341))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-datatypes ((array!35021 0))(
  ( (array!35022 (arr!16816 (Array (_ BitVec 32) (_ BitVec 64))) (size!17180 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35021)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35021 (_ BitVec 32)) Bool)

(assert (=> b!555944 (= res!348507 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17318 0))(
  ( (Unit!17319) )
))
(declare-fun lt!252764 () Unit!17318)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35021 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17318)

(assert (=> b!555944 (= lt!252764 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!555945 () Bool)

(declare-fun res!348510 () Bool)

(assert (=> b!555945 (=> (not res!348510) (not e!320338))))

(assert (=> b!555945 (= res!348510 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!555946 () Bool)

(declare-fun res!348511 () Bool)

(declare-fun e!320340 () Bool)

(assert (=> b!555946 (=> (not res!348511) (not e!320340))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!35021 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!555946 (= res!348511 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!555947 () Bool)

(assert (=> b!555947 (= e!320340 e!320338)))

(declare-fun res!348514 () Bool)

(assert (=> b!555947 (=> (not res!348514) (not e!320338))))

(declare-datatypes ((SeekEntryResult!5272 0))(
  ( (MissingZero!5272 (index!23315 (_ BitVec 32))) (Found!5272 (index!23316 (_ BitVec 32))) (Intermediate!5272 (undefined!6084 Bool) (index!23317 (_ BitVec 32)) (x!52237 (_ BitVec 32))) (Undefined!5272) (MissingVacant!5272 (index!23318 (_ BitVec 32))) )
))
(declare-fun lt!252763 () SeekEntryResult!5272)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!555947 (= res!348514 (or (= lt!252763 (MissingZero!5272 i!1132)) (= lt!252763 (MissingVacant!5272 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35021 (_ BitVec 32)) SeekEntryResult!5272)

(assert (=> b!555947 (= lt!252763 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!555948 () Bool)

(declare-fun res!348513 () Bool)

(assert (=> b!555948 (=> (not res!348513) (not e!320340))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!555948 (= res!348513 (validKeyInArray!0 k0!1914))))

(declare-fun b!555949 () Bool)

(declare-fun res!348508 () Bool)

(assert (=> b!555949 (=> (not res!348508) (not e!320340))))

(assert (=> b!555949 (= res!348508 (validKeyInArray!0 (select (arr!16816 a!3118) j!142)))))

(declare-fun b!555950 () Bool)

(declare-fun res!348512 () Bool)

(assert (=> b!555950 (=> (not res!348512) (not e!320338))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35021 (_ BitVec 32)) SeekEntryResult!5272)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!555950 (= res!348512 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16816 a!3118) j!142) mask!3119) (select (arr!16816 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16816 a!3118) i!1132 k0!1914) j!142) mask!3119) (select (store (arr!16816 a!3118) i!1132 k0!1914) j!142) (array!35022 (store (arr!16816 a!3118) i!1132 k0!1914) (size!17180 a!3118)) mask!3119)))))

(declare-fun b!555951 () Bool)

(assert (=> b!555951 (= e!320341 (= (seekEntryOrOpen!0 (select (arr!16816 a!3118) j!142) a!3118 mask!3119) (Found!5272 j!142)))))

(declare-fun res!348515 () Bool)

(assert (=> start!50842 (=> (not res!348515) (not e!320340))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50842 (= res!348515 (validMask!0 mask!3119))))

(assert (=> start!50842 e!320340))

(assert (=> start!50842 true))

(declare-fun array_inv!12590 (array!35021) Bool)

(assert (=> start!50842 (array_inv!12590 a!3118)))

(declare-fun b!555952 () Bool)

(declare-fun res!348509 () Bool)

(assert (=> b!555952 (=> (not res!348509) (not e!320340))))

(assert (=> b!555952 (= res!348509 (and (= (size!17180 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17180 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17180 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!555953 () Bool)

(declare-fun res!348506 () Bool)

(assert (=> b!555953 (=> (not res!348506) (not e!320338))))

(declare-datatypes ((List!10949 0))(
  ( (Nil!10946) (Cons!10945 (h!11930 (_ BitVec 64)) (t!17185 List!10949)) )
))
(declare-fun arrayNoDuplicates!0 (array!35021 (_ BitVec 32) List!10949) Bool)

(assert (=> b!555953 (= res!348506 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10946))))

(assert (= (and start!50842 res!348515) b!555952))

(assert (= (and b!555952 res!348509) b!555949))

(assert (= (and b!555949 res!348508) b!555948))

(assert (= (and b!555948 res!348513) b!555946))

(assert (= (and b!555946 res!348511) b!555947))

(assert (= (and b!555947 res!348514) b!555945))

(assert (= (and b!555945 res!348510) b!555953))

(assert (= (and b!555953 res!348506) b!555950))

(assert (= (and b!555950 res!348512) b!555944))

(assert (= (and b!555944 res!348507) b!555951))

(declare-fun m!533911 () Bool)

(assert (=> b!555945 m!533911))

(declare-fun m!533913 () Bool)

(assert (=> b!555949 m!533913))

(assert (=> b!555949 m!533913))

(declare-fun m!533915 () Bool)

(assert (=> b!555949 m!533915))

(declare-fun m!533917 () Bool)

(assert (=> start!50842 m!533917))

(declare-fun m!533919 () Bool)

(assert (=> start!50842 m!533919))

(declare-fun m!533921 () Bool)

(assert (=> b!555947 m!533921))

(declare-fun m!533923 () Bool)

(assert (=> b!555944 m!533923))

(declare-fun m!533925 () Bool)

(assert (=> b!555944 m!533925))

(declare-fun m!533927 () Bool)

(assert (=> b!555946 m!533927))

(assert (=> b!555951 m!533913))

(assert (=> b!555951 m!533913))

(declare-fun m!533929 () Bool)

(assert (=> b!555951 m!533929))

(declare-fun m!533931 () Bool)

(assert (=> b!555948 m!533931))

(declare-fun m!533933 () Bool)

(assert (=> b!555953 m!533933))

(assert (=> b!555950 m!533913))

(declare-fun m!533935 () Bool)

(assert (=> b!555950 m!533935))

(assert (=> b!555950 m!533913))

(declare-fun m!533937 () Bool)

(assert (=> b!555950 m!533937))

(declare-fun m!533939 () Bool)

(assert (=> b!555950 m!533939))

(assert (=> b!555950 m!533937))

(declare-fun m!533941 () Bool)

(assert (=> b!555950 m!533941))

(assert (=> b!555950 m!533935))

(assert (=> b!555950 m!533913))

(declare-fun m!533943 () Bool)

(assert (=> b!555950 m!533943))

(declare-fun m!533945 () Bool)

(assert (=> b!555950 m!533945))

(assert (=> b!555950 m!533937))

(assert (=> b!555950 m!533939))

(check-sat (not b!555949) (not b!555951) (not b!555950) (not b!555947) (not b!555948) (not b!555944) (not b!555953) (not b!555946) (not start!50842) (not b!555945))
(check-sat)
