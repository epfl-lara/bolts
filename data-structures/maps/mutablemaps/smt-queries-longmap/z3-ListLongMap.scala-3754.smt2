; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!51538 () Bool)

(assert start!51538)

(declare-fun b!563450 () Bool)

(declare-fun res!354758 () Bool)

(declare-fun e!324670 () Bool)

(assert (=> b!563450 (=> (not res!354758) (not e!324670))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!35357 0))(
  ( (array!35358 (arr!16975 (Array (_ BitVec 32) (_ BitVec 64))) (size!17339 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35357)

(assert (=> b!563450 (= res!354758 (and (= (size!17339 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17339 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17339 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!563451 () Bool)

(declare-fun res!354755 () Bool)

(declare-fun e!324669 () Bool)

(assert (=> b!563451 (=> (not res!354755) (not e!324669))))

(declare-datatypes ((List!11108 0))(
  ( (Nil!11105) (Cons!11104 (h!12107 (_ BitVec 64)) (t!17344 List!11108)) )
))
(declare-fun arrayNoDuplicates!0 (array!35357 (_ BitVec 32) List!11108) Bool)

(assert (=> b!563451 (= res!354755 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11105))))

(declare-fun b!563452 () Bool)

(declare-fun res!354752 () Bool)

(assert (=> b!563452 (=> (not res!354752) (not e!324669))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!5431 0))(
  ( (MissingZero!5431 (index!23951 (_ BitVec 32))) (Found!5431 (index!23952 (_ BitVec 32))) (Intermediate!5431 (undefined!6243 Bool) (index!23953 (_ BitVec 32)) (x!52865 (_ BitVec 32))) (Undefined!5431) (MissingVacant!5431 (index!23954 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35357 (_ BitVec 32)) SeekEntryResult!5431)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!563452 (= res!354752 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16975 a!3118) j!142) mask!3119) (select (arr!16975 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16975 a!3118) i!1132 k0!1914) j!142) mask!3119) (select (store (arr!16975 a!3118) i!1132 k0!1914) j!142) (array!35358 (store (arr!16975 a!3118) i!1132 k0!1914) (size!17339 a!3118)) mask!3119)))))

(declare-fun b!563453 () Bool)

(declare-fun res!354759 () Bool)

(assert (=> b!563453 (=> (not res!354759) (not e!324670))))

(declare-fun arrayContainsKey!0 (array!35357 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!563453 (= res!354759 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!563454 () Bool)

(assert (=> b!563454 (= e!324670 e!324669)))

(declare-fun res!354753 () Bool)

(assert (=> b!563454 (=> (not res!354753) (not e!324669))))

(declare-fun lt!257236 () SeekEntryResult!5431)

(assert (=> b!563454 (= res!354753 (or (= lt!257236 (MissingZero!5431 i!1132)) (= lt!257236 (MissingVacant!5431 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35357 (_ BitVec 32)) SeekEntryResult!5431)

(assert (=> b!563454 (= lt!257236 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun res!354761 () Bool)

(assert (=> start!51538 (=> (not res!354761) (not e!324670))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51538 (= res!354761 (validMask!0 mask!3119))))

(assert (=> start!51538 e!324670))

(assert (=> start!51538 true))

(declare-fun array_inv!12749 (array!35357) Bool)

(assert (=> start!51538 (array_inv!12749 a!3118)))

(declare-fun b!563455 () Bool)

(declare-fun res!354757 () Bool)

(assert (=> b!563455 (=> (not res!354757) (not e!324670))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!563455 (= res!354757 (validKeyInArray!0 k0!1914))))

(declare-fun b!563456 () Bool)

(declare-fun e!324668 () Bool)

(assert (=> b!563456 (= e!324668 (= (seekEntryOrOpen!0 (select (arr!16975 a!3118) j!142) a!3118 mask!3119) (Found!5431 j!142)))))

(declare-fun b!563457 () Bool)

(assert (=> b!563457 (= e!324669 (not true))))

(assert (=> b!563457 e!324668))

(declare-fun res!354760 () Bool)

(assert (=> b!563457 (=> (not res!354760) (not e!324668))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35357 (_ BitVec 32)) Bool)

(assert (=> b!563457 (= res!354760 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17636 0))(
  ( (Unit!17637) )
))
(declare-fun lt!257237 () Unit!17636)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35357 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17636)

(assert (=> b!563457 (= lt!257237 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!563458 () Bool)

(declare-fun res!354754 () Bool)

(assert (=> b!563458 (=> (not res!354754) (not e!324669))))

(assert (=> b!563458 (= res!354754 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!563459 () Bool)

(declare-fun res!354756 () Bool)

(assert (=> b!563459 (=> (not res!354756) (not e!324670))))

(assert (=> b!563459 (= res!354756 (validKeyInArray!0 (select (arr!16975 a!3118) j!142)))))

(assert (= (and start!51538 res!354761) b!563450))

(assert (= (and b!563450 res!354758) b!563459))

(assert (= (and b!563459 res!354756) b!563455))

(assert (= (and b!563455 res!354757) b!563453))

(assert (= (and b!563453 res!354759) b!563454))

(assert (= (and b!563454 res!354753) b!563458))

(assert (= (and b!563458 res!354754) b!563451))

(assert (= (and b!563451 res!354755) b!563452))

(assert (= (and b!563452 res!354752) b!563457))

(assert (= (and b!563457 res!354760) b!563456))

(declare-fun m!541873 () Bool)

(assert (=> b!563457 m!541873))

(declare-fun m!541875 () Bool)

(assert (=> b!563457 m!541875))

(declare-fun m!541877 () Bool)

(assert (=> b!563455 m!541877))

(declare-fun m!541879 () Bool)

(assert (=> b!563454 m!541879))

(declare-fun m!541881 () Bool)

(assert (=> b!563451 m!541881))

(declare-fun m!541883 () Bool)

(assert (=> b!563458 m!541883))

(declare-fun m!541885 () Bool)

(assert (=> b!563456 m!541885))

(assert (=> b!563456 m!541885))

(declare-fun m!541887 () Bool)

(assert (=> b!563456 m!541887))

(declare-fun m!541889 () Bool)

(assert (=> b!563453 m!541889))

(assert (=> b!563452 m!541885))

(declare-fun m!541891 () Bool)

(assert (=> b!563452 m!541891))

(assert (=> b!563452 m!541885))

(declare-fun m!541893 () Bool)

(assert (=> b!563452 m!541893))

(declare-fun m!541895 () Bool)

(assert (=> b!563452 m!541895))

(assert (=> b!563452 m!541893))

(declare-fun m!541897 () Bool)

(assert (=> b!563452 m!541897))

(assert (=> b!563452 m!541891))

(assert (=> b!563452 m!541885))

(declare-fun m!541899 () Bool)

(assert (=> b!563452 m!541899))

(declare-fun m!541901 () Bool)

(assert (=> b!563452 m!541901))

(assert (=> b!563452 m!541893))

(assert (=> b!563452 m!541895))

(declare-fun m!541903 () Bool)

(assert (=> start!51538 m!541903))

(declare-fun m!541905 () Bool)

(assert (=> start!51538 m!541905))

(assert (=> b!563459 m!541885))

(assert (=> b!563459 m!541885))

(declare-fun m!541907 () Bool)

(assert (=> b!563459 m!541907))

(check-sat (not b!563457) (not b!563453) (not b!563458) (not b!563452) (not b!563456) (not b!563459) (not b!563451) (not b!563455) (not start!51538) (not b!563454))
(check-sat)
