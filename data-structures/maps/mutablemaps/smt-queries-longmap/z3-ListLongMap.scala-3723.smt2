; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!51352 () Bool)

(assert start!51352)

(declare-fun b!560009 () Bool)

(declare-fun res!351320 () Bool)

(declare-fun e!322657 () Bool)

(assert (=> b!560009 (=> (not res!351320) (not e!322657))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!35171 0))(
  ( (array!35172 (arr!16882 (Array (_ BitVec 32) (_ BitVec 64))) (size!17246 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35171)

(assert (=> b!560009 (= res!351320 (and (= (size!17246 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17246 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17246 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!560010 () Bool)

(declare-fun res!351311 () Bool)

(declare-fun e!322660 () Bool)

(assert (=> b!560010 (=> (not res!351311) (not e!322660))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35171 (_ BitVec 32)) Bool)

(assert (=> b!560010 (= res!351311 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!560011 () Bool)

(declare-fun res!351319 () Bool)

(assert (=> b!560011 (=> (not res!351319) (not e!322657))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!560011 (= res!351319 (validKeyInArray!0 (select (arr!16882 a!3118) j!142)))))

(declare-fun b!560012 () Bool)

(declare-fun e!322658 () Bool)

(declare-fun e!322653 () Bool)

(assert (=> b!560012 (= e!322658 e!322653)))

(declare-fun res!351322 () Bool)

(assert (=> b!560012 (=> res!351322 e!322653)))

(declare-datatypes ((SeekEntryResult!5338 0))(
  ( (MissingZero!5338 (index!23579 (_ BitVec 32))) (Found!5338 (index!23580 (_ BitVec 32))) (Intermediate!5338 (undefined!6150 Bool) (index!23581 (_ BitVec 32)) (x!52524 (_ BitVec 32))) (Undefined!5338) (MissingVacant!5338 (index!23582 (_ BitVec 32))) )
))
(declare-fun lt!254624 () SeekEntryResult!5338)

(get-info :version)

(assert (=> b!560012 (= res!351322 (or (undefined!6150 lt!254624) (not ((_ is Intermediate!5338) lt!254624))))))

(declare-fun b!560014 () Bool)

(declare-fun e!322659 () Bool)

(assert (=> b!560014 (= e!322660 e!322659)))

(declare-fun res!351316 () Bool)

(assert (=> b!560014 (=> (not res!351316) (not e!322659))))

(declare-fun lt!254623 () (_ BitVec 32))

(declare-fun lt!254620 () (_ BitVec 64))

(declare-fun lt!254621 () array!35171)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35171 (_ BitVec 32)) SeekEntryResult!5338)

(assert (=> b!560014 (= res!351316 (= lt!254624 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!254623 lt!254620 lt!254621 mask!3119)))))

(declare-fun lt!254619 () (_ BitVec 32))

(assert (=> b!560014 (= lt!254624 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!254619 (select (arr!16882 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!560014 (= lt!254623 (toIndex!0 lt!254620 mask!3119))))

(declare-fun k0!1914 () (_ BitVec 64))

(assert (=> b!560014 (= lt!254620 (select (store (arr!16882 a!3118) i!1132 k0!1914) j!142))))

(assert (=> b!560014 (= lt!254619 (toIndex!0 (select (arr!16882 a!3118) j!142) mask!3119))))

(assert (=> b!560014 (= lt!254621 (array!35172 (store (arr!16882 a!3118) i!1132 k0!1914) (size!17246 a!3118)))))

(declare-fun b!560015 () Bool)

(declare-fun e!322656 () Bool)

(assert (=> b!560015 (= e!322653 e!322656)))

(declare-fun res!351314 () Bool)

(assert (=> b!560015 (=> res!351314 e!322656)))

(declare-fun lt!254618 () (_ BitVec 64))

(assert (=> b!560015 (= res!351314 (or (= lt!254618 (select (arr!16882 a!3118) j!142)) (= lt!254618 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!560015 (= lt!254618 (select (arr!16882 a!3118) (index!23581 lt!254624)))))

(declare-fun b!560016 () Bool)

(declare-fun e!322655 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35171 (_ BitVec 32)) SeekEntryResult!5338)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35171 (_ BitVec 32)) SeekEntryResult!5338)

(assert (=> b!560016 (= e!322655 (= (seekEntryOrOpen!0 lt!254620 lt!254621 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!52524 lt!254624) (index!23581 lt!254624) (index!23581 lt!254624) lt!254620 lt!254621 mask!3119)))))

(declare-fun b!560017 () Bool)

(assert (=> b!560017 (= e!322656 e!322655)))

(declare-fun res!351313 () Bool)

(assert (=> b!560017 (=> (not res!351313) (not e!322655))))

(declare-fun lt!254616 () SeekEntryResult!5338)

(assert (=> b!560017 (= res!351313 (= lt!254616 (seekKeyOrZeroReturnVacant!0 (x!52524 lt!254624) (index!23581 lt!254624) (index!23581 lt!254624) (select (arr!16882 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!560018 () Bool)

(declare-fun res!351312 () Bool)

(assert (=> b!560018 (=> (not res!351312) (not e!322657))))

(assert (=> b!560018 (= res!351312 (validKeyInArray!0 k0!1914))))

(declare-fun b!560019 () Bool)

(assert (=> b!560019 (= e!322657 e!322660)))

(declare-fun res!351317 () Bool)

(assert (=> b!560019 (=> (not res!351317) (not e!322660))))

(declare-fun lt!254622 () SeekEntryResult!5338)

(assert (=> b!560019 (= res!351317 (or (= lt!254622 (MissingZero!5338 i!1132)) (= lt!254622 (MissingVacant!5338 i!1132))))))

(assert (=> b!560019 (= lt!254622 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!560020 () Bool)

(assert (=> b!560020 (= e!322659 (not true))))

(assert (=> b!560020 e!322658))

(declare-fun res!351323 () Bool)

(assert (=> b!560020 (=> (not res!351323) (not e!322658))))

(assert (=> b!560020 (= res!351323 (= lt!254616 (Found!5338 j!142)))))

(assert (=> b!560020 (= lt!254616 (seekEntryOrOpen!0 (select (arr!16882 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!560020 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17450 0))(
  ( (Unit!17451) )
))
(declare-fun lt!254617 () Unit!17450)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35171 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17450)

(assert (=> b!560020 (= lt!254617 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!560021 () Bool)

(declare-fun res!351315 () Bool)

(assert (=> b!560021 (=> (not res!351315) (not e!322657))))

(declare-fun arrayContainsKey!0 (array!35171 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!560021 (= res!351315 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun res!351318 () Bool)

(assert (=> start!51352 (=> (not res!351318) (not e!322657))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51352 (= res!351318 (validMask!0 mask!3119))))

(assert (=> start!51352 e!322657))

(assert (=> start!51352 true))

(declare-fun array_inv!12656 (array!35171) Bool)

(assert (=> start!51352 (array_inv!12656 a!3118)))

(declare-fun b!560013 () Bool)

(declare-fun res!351321 () Bool)

(assert (=> b!560013 (=> (not res!351321) (not e!322660))))

(declare-datatypes ((List!11015 0))(
  ( (Nil!11012) (Cons!11011 (h!12014 (_ BitVec 64)) (t!17251 List!11015)) )
))
(declare-fun arrayNoDuplicates!0 (array!35171 (_ BitVec 32) List!11015) Bool)

(assert (=> b!560013 (= res!351321 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11012))))

(assert (= (and start!51352 res!351318) b!560009))

(assert (= (and b!560009 res!351320) b!560011))

(assert (= (and b!560011 res!351319) b!560018))

(assert (= (and b!560018 res!351312) b!560021))

(assert (= (and b!560021 res!351315) b!560019))

(assert (= (and b!560019 res!351317) b!560010))

(assert (= (and b!560010 res!351311) b!560013))

(assert (= (and b!560013 res!351321) b!560014))

(assert (= (and b!560014 res!351316) b!560020))

(assert (= (and b!560020 res!351323) b!560012))

(assert (= (and b!560012 (not res!351322)) b!560015))

(assert (= (and b!560015 (not res!351314)) b!560017))

(assert (= (and b!560017 res!351313) b!560016))

(declare-fun m!537783 () Bool)

(assert (=> b!560021 m!537783))

(declare-fun m!537785 () Bool)

(assert (=> b!560016 m!537785))

(declare-fun m!537787 () Bool)

(assert (=> b!560016 m!537787))

(declare-fun m!537789 () Bool)

(assert (=> b!560010 m!537789))

(declare-fun m!537791 () Bool)

(assert (=> start!51352 m!537791))

(declare-fun m!537793 () Bool)

(assert (=> start!51352 m!537793))

(declare-fun m!537795 () Bool)

(assert (=> b!560015 m!537795))

(declare-fun m!537797 () Bool)

(assert (=> b!560015 m!537797))

(assert (=> b!560014 m!537795))

(declare-fun m!537799 () Bool)

(assert (=> b!560014 m!537799))

(assert (=> b!560014 m!537795))

(declare-fun m!537801 () Bool)

(assert (=> b!560014 m!537801))

(assert (=> b!560014 m!537795))

(declare-fun m!537803 () Bool)

(assert (=> b!560014 m!537803))

(declare-fun m!537805 () Bool)

(assert (=> b!560014 m!537805))

(declare-fun m!537807 () Bool)

(assert (=> b!560014 m!537807))

(declare-fun m!537809 () Bool)

(assert (=> b!560014 m!537809))

(declare-fun m!537811 () Bool)

(assert (=> b!560019 m!537811))

(declare-fun m!537813 () Bool)

(assert (=> b!560018 m!537813))

(assert (=> b!560020 m!537795))

(assert (=> b!560020 m!537795))

(declare-fun m!537815 () Bool)

(assert (=> b!560020 m!537815))

(declare-fun m!537817 () Bool)

(assert (=> b!560020 m!537817))

(declare-fun m!537819 () Bool)

(assert (=> b!560020 m!537819))

(assert (=> b!560011 m!537795))

(assert (=> b!560011 m!537795))

(declare-fun m!537821 () Bool)

(assert (=> b!560011 m!537821))

(declare-fun m!537823 () Bool)

(assert (=> b!560013 m!537823))

(assert (=> b!560017 m!537795))

(assert (=> b!560017 m!537795))

(declare-fun m!537825 () Bool)

(assert (=> b!560017 m!537825))

(check-sat (not b!560014) (not b!560021) (not b!560010) (not b!560016) (not start!51352) (not b!560013) (not b!560011) (not b!560020) (not b!560018) (not b!560019) (not b!560017))
(check-sat)
