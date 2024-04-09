; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!50524 () Bool)

(assert start!50524)

(declare-fun b!551909 () Bool)

(declare-fun e!318489 () Bool)

(declare-fun e!318488 () Bool)

(assert (=> b!551909 (= e!318489 e!318488)))

(declare-fun res!344656 () Bool)

(assert (=> b!551909 (=> (not res!344656) (not e!318488))))

(declare-datatypes ((SeekEntryResult!5143 0))(
  ( (MissingZero!5143 (index!22799 (_ BitVec 32))) (Found!5143 (index!22800 (_ BitVec 32))) (Intermediate!5143 (undefined!5955 Bool) (index!22801 (_ BitVec 32)) (x!51758 (_ BitVec 32))) (Undefined!5143) (MissingVacant!5143 (index!22802 (_ BitVec 32))) )
))
(declare-fun lt!250997 () SeekEntryResult!5143)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!551909 (= res!344656 (or (= lt!250997 (MissingZero!5143 i!1132)) (= lt!250997 (MissingVacant!5143 i!1132))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-datatypes ((array!34760 0))(
  ( (array!34761 (arr!16687 (Array (_ BitVec 32) (_ BitVec 64))) (size!17051 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34760)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34760 (_ BitVec 32)) SeekEntryResult!5143)

(assert (=> b!551909 (= lt!250997 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun res!344654 () Bool)

(assert (=> start!50524 (=> (not res!344654) (not e!318489))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50524 (= res!344654 (validMask!0 mask!3119))))

(assert (=> start!50524 e!318489))

(assert (=> start!50524 true))

(declare-fun array_inv!12461 (array!34760) Bool)

(assert (=> start!50524 (array_inv!12461 a!3118)))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun e!318490 () Bool)

(declare-fun b!551910 () Bool)

(assert (=> b!551910 (= e!318490 (= (seekEntryOrOpen!0 (select (arr!16687 a!3118) j!142) a!3118 mask!3119) (Found!5143 j!142)))))

(declare-fun b!551911 () Bool)

(declare-fun res!344663 () Bool)

(assert (=> b!551911 (=> (not res!344663) (not e!318489))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!551911 (= res!344663 (validKeyInArray!0 k0!1914))))

(declare-fun b!551912 () Bool)

(declare-fun res!344661 () Bool)

(assert (=> b!551912 (=> (not res!344661) (not e!318488))))

(declare-datatypes ((List!10820 0))(
  ( (Nil!10817) (Cons!10816 (h!11798 (_ BitVec 64)) (t!17056 List!10820)) )
))
(declare-fun arrayNoDuplicates!0 (array!34760 (_ BitVec 32) List!10820) Bool)

(assert (=> b!551912 (= res!344661 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10817))))

(declare-fun b!551913 () Bool)

(declare-fun res!344657 () Bool)

(assert (=> b!551913 (=> (not res!344657) (not e!318489))))

(assert (=> b!551913 (= res!344657 (and (= (size!17051 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17051 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17051 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!551914 () Bool)

(declare-fun res!344659 () Bool)

(assert (=> b!551914 (=> (not res!344659) (not e!318488))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34760 (_ BitVec 32)) Bool)

(assert (=> b!551914 (= res!344659 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!551915 () Bool)

(assert (=> b!551915 (= e!318488 (not true))))

(assert (=> b!551915 e!318490))

(declare-fun res!344662 () Bool)

(assert (=> b!551915 (=> (not res!344662) (not e!318490))))

(assert (=> b!551915 (= res!344662 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17060 0))(
  ( (Unit!17061) )
))
(declare-fun lt!250996 () Unit!17060)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34760 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17060)

(assert (=> b!551915 (= lt!250996 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!551916 () Bool)

(declare-fun res!344655 () Bool)

(assert (=> b!551916 (=> (not res!344655) (not e!318488))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34760 (_ BitVec 32)) SeekEntryResult!5143)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!551916 (= res!344655 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16687 a!3118) j!142) mask!3119) (select (arr!16687 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16687 a!3118) i!1132 k0!1914) j!142) mask!3119) (select (store (arr!16687 a!3118) i!1132 k0!1914) j!142) (array!34761 (store (arr!16687 a!3118) i!1132 k0!1914) (size!17051 a!3118)) mask!3119)))))

(declare-fun b!551917 () Bool)

(declare-fun res!344660 () Bool)

(assert (=> b!551917 (=> (not res!344660) (not e!318489))))

(assert (=> b!551917 (= res!344660 (validKeyInArray!0 (select (arr!16687 a!3118) j!142)))))

(declare-fun b!551918 () Bool)

(declare-fun res!344658 () Bool)

(assert (=> b!551918 (=> (not res!344658) (not e!318489))))

(declare-fun arrayContainsKey!0 (array!34760 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!551918 (= res!344658 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(assert (= (and start!50524 res!344654) b!551913))

(assert (= (and b!551913 res!344657) b!551917))

(assert (= (and b!551917 res!344660) b!551911))

(assert (= (and b!551911 res!344663) b!551918))

(assert (= (and b!551918 res!344658) b!551909))

(assert (= (and b!551909 res!344656) b!551914))

(assert (= (and b!551914 res!344659) b!551912))

(assert (= (and b!551912 res!344661) b!551916))

(assert (= (and b!551916 res!344655) b!551915))

(assert (= (and b!551915 res!344662) b!551910))

(declare-fun m!528913 () Bool)

(assert (=> b!551917 m!528913))

(assert (=> b!551917 m!528913))

(declare-fun m!528915 () Bool)

(assert (=> b!551917 m!528915))

(assert (=> b!551910 m!528913))

(assert (=> b!551910 m!528913))

(declare-fun m!528917 () Bool)

(assert (=> b!551910 m!528917))

(declare-fun m!528919 () Bool)

(assert (=> b!551918 m!528919))

(declare-fun m!528921 () Bool)

(assert (=> b!551912 m!528921))

(declare-fun m!528923 () Bool)

(assert (=> b!551914 m!528923))

(assert (=> b!551916 m!528913))

(declare-fun m!528925 () Bool)

(assert (=> b!551916 m!528925))

(assert (=> b!551916 m!528913))

(declare-fun m!528927 () Bool)

(assert (=> b!551916 m!528927))

(declare-fun m!528929 () Bool)

(assert (=> b!551916 m!528929))

(assert (=> b!551916 m!528927))

(declare-fun m!528931 () Bool)

(assert (=> b!551916 m!528931))

(assert (=> b!551916 m!528925))

(assert (=> b!551916 m!528913))

(declare-fun m!528933 () Bool)

(assert (=> b!551916 m!528933))

(declare-fun m!528935 () Bool)

(assert (=> b!551916 m!528935))

(assert (=> b!551916 m!528927))

(assert (=> b!551916 m!528929))

(declare-fun m!528937 () Bool)

(assert (=> b!551911 m!528937))

(declare-fun m!528939 () Bool)

(assert (=> b!551909 m!528939))

(declare-fun m!528941 () Bool)

(assert (=> start!50524 m!528941))

(declare-fun m!528943 () Bool)

(assert (=> start!50524 m!528943))

(declare-fun m!528945 () Bool)

(assert (=> b!551915 m!528945))

(declare-fun m!528947 () Bool)

(assert (=> b!551915 m!528947))

(check-sat (not b!551917) (not b!551916) (not b!551911) (not b!551910) (not b!551918) (not b!551909) (not b!551912) (not b!551914) (not b!551915) (not start!50524))
(check-sat)
