; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!50518 () Bool)

(assert start!50518)

(declare-fun b!551819 () Bool)

(declare-fun res!344572 () Bool)

(declare-fun e!318451 () Bool)

(assert (=> b!551819 (=> (not res!344572) (not e!318451))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!34754 0))(
  ( (array!34755 (arr!16684 (Array (_ BitVec 32) (_ BitVec 64))) (size!17048 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34754)

(assert (=> b!551819 (= res!344572 (and (= (size!17048 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17048 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17048 a!3118)) (not (= i!1132 j!142))))))

(declare-fun res!344568 () Bool)

(assert (=> start!50518 (=> (not res!344568) (not e!318451))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50518 (= res!344568 (validMask!0 mask!3119))))

(assert (=> start!50518 e!318451))

(assert (=> start!50518 true))

(declare-fun array_inv!12458 (array!34754) Bool)

(assert (=> start!50518 (array_inv!12458 a!3118)))

(declare-fun b!551820 () Bool)

(declare-fun e!318452 () Bool)

(declare-datatypes ((SeekEntryResult!5140 0))(
  ( (MissingZero!5140 (index!22787 (_ BitVec 32))) (Found!5140 (index!22788 (_ BitVec 32))) (Intermediate!5140 (undefined!5952 Bool) (index!22789 (_ BitVec 32)) (x!51747 (_ BitVec 32))) (Undefined!5140) (MissingVacant!5140 (index!22790 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34754 (_ BitVec 32)) SeekEntryResult!5140)

(assert (=> b!551820 (= e!318452 (= (seekEntryOrOpen!0 (select (arr!16684 a!3118) j!142) a!3118 mask!3119) (Found!5140 j!142)))))

(declare-fun b!551821 () Bool)

(declare-fun res!344569 () Bool)

(declare-fun e!318453 () Bool)

(assert (=> b!551821 (=> (not res!344569) (not e!318453))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34754 (_ BitVec 32)) Bool)

(assert (=> b!551821 (= res!344569 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!551822 () Bool)

(assert (=> b!551822 (= e!318453 (not (bvsge mask!3119 #b00000000000000000000000000000000)))))

(assert (=> b!551822 e!318452))

(declare-fun res!344565 () Bool)

(assert (=> b!551822 (=> (not res!344565) (not e!318452))))

(assert (=> b!551822 (= res!344565 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17054 0))(
  ( (Unit!17055) )
))
(declare-fun lt!250979 () Unit!17054)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34754 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17054)

(assert (=> b!551822 (= lt!250979 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!551823 () Bool)

(declare-fun res!344571 () Bool)

(assert (=> b!551823 (=> (not res!344571) (not e!318453))))

(declare-datatypes ((List!10817 0))(
  ( (Nil!10814) (Cons!10813 (h!11795 (_ BitVec 64)) (t!17053 List!10817)) )
))
(declare-fun arrayNoDuplicates!0 (array!34754 (_ BitVec 32) List!10817) Bool)

(assert (=> b!551823 (= res!344571 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10814))))

(declare-fun b!551824 () Bool)

(declare-fun res!344570 () Bool)

(assert (=> b!551824 (=> (not res!344570) (not e!318451))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!551824 (= res!344570 (validKeyInArray!0 k0!1914))))

(declare-fun b!551825 () Bool)

(declare-fun res!344567 () Bool)

(assert (=> b!551825 (=> (not res!344567) (not e!318453))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34754 (_ BitVec 32)) SeekEntryResult!5140)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!551825 (= res!344567 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16684 a!3118) j!142) mask!3119) (select (arr!16684 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16684 a!3118) i!1132 k0!1914) j!142) mask!3119) (select (store (arr!16684 a!3118) i!1132 k0!1914) j!142) (array!34755 (store (arr!16684 a!3118) i!1132 k0!1914) (size!17048 a!3118)) mask!3119)))))

(declare-fun b!551826 () Bool)

(assert (=> b!551826 (= e!318451 e!318453)))

(declare-fun res!344573 () Bool)

(assert (=> b!551826 (=> (not res!344573) (not e!318453))))

(declare-fun lt!250978 () SeekEntryResult!5140)

(assert (=> b!551826 (= res!344573 (or (= lt!250978 (MissingZero!5140 i!1132)) (= lt!250978 (MissingVacant!5140 i!1132))))))

(assert (=> b!551826 (= lt!250978 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!551827 () Bool)

(declare-fun res!344566 () Bool)

(assert (=> b!551827 (=> (not res!344566) (not e!318451))))

(declare-fun arrayContainsKey!0 (array!34754 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!551827 (= res!344566 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!551828 () Bool)

(declare-fun res!344564 () Bool)

(assert (=> b!551828 (=> (not res!344564) (not e!318451))))

(assert (=> b!551828 (= res!344564 (validKeyInArray!0 (select (arr!16684 a!3118) j!142)))))

(assert (= (and start!50518 res!344568) b!551819))

(assert (= (and b!551819 res!344572) b!551828))

(assert (= (and b!551828 res!344564) b!551824))

(assert (= (and b!551824 res!344570) b!551827))

(assert (= (and b!551827 res!344566) b!551826))

(assert (= (and b!551826 res!344573) b!551821))

(assert (= (and b!551821 res!344569) b!551823))

(assert (= (and b!551823 res!344571) b!551825))

(assert (= (and b!551825 res!344567) b!551822))

(assert (= (and b!551822 res!344565) b!551820))

(declare-fun m!528805 () Bool)

(assert (=> start!50518 m!528805))

(declare-fun m!528807 () Bool)

(assert (=> start!50518 m!528807))

(declare-fun m!528809 () Bool)

(assert (=> b!551823 m!528809))

(declare-fun m!528811 () Bool)

(assert (=> b!551827 m!528811))

(declare-fun m!528813 () Bool)

(assert (=> b!551825 m!528813))

(declare-fun m!528815 () Bool)

(assert (=> b!551825 m!528815))

(assert (=> b!551825 m!528813))

(declare-fun m!528817 () Bool)

(assert (=> b!551825 m!528817))

(declare-fun m!528819 () Bool)

(assert (=> b!551825 m!528819))

(assert (=> b!551825 m!528817))

(declare-fun m!528821 () Bool)

(assert (=> b!551825 m!528821))

(assert (=> b!551825 m!528815))

(assert (=> b!551825 m!528813))

(declare-fun m!528823 () Bool)

(assert (=> b!551825 m!528823))

(declare-fun m!528825 () Bool)

(assert (=> b!551825 m!528825))

(assert (=> b!551825 m!528817))

(assert (=> b!551825 m!528819))

(assert (=> b!551820 m!528813))

(assert (=> b!551820 m!528813))

(declare-fun m!528827 () Bool)

(assert (=> b!551820 m!528827))

(declare-fun m!528829 () Bool)

(assert (=> b!551826 m!528829))

(assert (=> b!551828 m!528813))

(assert (=> b!551828 m!528813))

(declare-fun m!528831 () Bool)

(assert (=> b!551828 m!528831))

(declare-fun m!528833 () Bool)

(assert (=> b!551824 m!528833))

(declare-fun m!528835 () Bool)

(assert (=> b!551821 m!528835))

(declare-fun m!528837 () Bool)

(assert (=> b!551822 m!528837))

(declare-fun m!528839 () Bool)

(assert (=> b!551822 m!528839))

(check-sat (not b!551828) (not b!551827) (not start!50518) (not b!551820) (not b!551825) (not b!551822) (not b!551824) (not b!551823) (not b!551826) (not b!551821))
(check-sat)
