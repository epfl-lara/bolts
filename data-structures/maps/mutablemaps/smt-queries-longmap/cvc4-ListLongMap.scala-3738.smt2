; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51444 () Bool)

(assert start!51444)

(declare-fun b!561803 () Bool)

(declare-fun e!323762 () Bool)

(declare-fun e!323757 () Bool)

(assert (=> b!561803 (= e!323762 e!323757)))

(declare-fun res!353117 () Bool)

(assert (=> b!561803 (=> (not res!353117) (not e!323757))))

(declare-datatypes ((SeekEntryResult!5384 0))(
  ( (MissingZero!5384 (index!23763 (_ BitVec 32))) (Found!5384 (index!23764 (_ BitVec 32))) (Intermediate!5384 (undefined!6196 Bool) (index!23765 (_ BitVec 32)) (x!52690 (_ BitVec 32))) (Undefined!5384) (MissingVacant!5384 (index!23766 (_ BitVec 32))) )
))
(declare-fun lt!255858 () SeekEntryResult!5384)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!561803 (= res!353117 (or (= lt!255858 (MissingZero!5384 i!1132)) (= lt!255858 (MissingVacant!5384 i!1132))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun k!1914 () (_ BitVec 64))

(declare-datatypes ((array!35263 0))(
  ( (array!35264 (arr!16928 (Array (_ BitVec 32) (_ BitVec 64))) (size!17292 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35263)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35263 (_ BitVec 32)) SeekEntryResult!5384)

(assert (=> b!561803 (= lt!255858 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!561804 () Bool)

(declare-fun e!323763 () Bool)

(declare-fun e!323759 () Bool)

(assert (=> b!561804 (= e!323763 e!323759)))

(declare-fun res!353113 () Bool)

(assert (=> b!561804 (=> (not res!353113) (not e!323759))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun lt!255863 () SeekEntryResult!5384)

(declare-fun lt!255864 () SeekEntryResult!5384)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35263 (_ BitVec 32)) SeekEntryResult!5384)

(assert (=> b!561804 (= res!353113 (= lt!255863 (seekKeyOrZeroReturnVacant!0 (x!52690 lt!255864) (index!23765 lt!255864) (index!23765 lt!255864) (select (arr!16928 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!561805 () Bool)

(declare-fun res!353115 () Bool)

(assert (=> b!561805 (=> (not res!353115) (not e!323762))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!561805 (= res!353115 (validKeyInArray!0 (select (arr!16928 a!3118) j!142)))))

(declare-fun b!561806 () Bool)

(declare-fun res!353107 () Bool)

(assert (=> b!561806 (=> (not res!353107) (not e!323757))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35263 (_ BitVec 32)) Bool)

(assert (=> b!561806 (= res!353107 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!561807 () Bool)

(declare-fun res!353112 () Bool)

(assert (=> b!561807 (=> (not res!353112) (not e!323762))))

(assert (=> b!561807 (= res!353112 (validKeyInArray!0 k!1914))))

(declare-fun b!561808 () Bool)

(declare-fun e!323764 () Bool)

(assert (=> b!561808 (= e!323764 e!323763)))

(declare-fun res!353108 () Bool)

(assert (=> b!561808 (=> res!353108 e!323763)))

(declare-fun lt!255866 () (_ BitVec 64))

(assert (=> b!561808 (= res!353108 (or (= lt!255866 (select (arr!16928 a!3118) j!142)) (= lt!255866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!561808 (= lt!255866 (select (arr!16928 a!3118) (index!23765 lt!255864)))))

(declare-fun b!561809 () Bool)

(declare-fun e!323758 () Bool)

(assert (=> b!561809 (= e!323758 e!323764)))

(declare-fun res!353111 () Bool)

(assert (=> b!561809 (=> res!353111 e!323764)))

(assert (=> b!561809 (= res!353111 (or (undefined!6196 lt!255864) (not (is-Intermediate!5384 lt!255864))))))

(declare-fun res!353105 () Bool)

(assert (=> start!51444 (=> (not res!353105) (not e!323762))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51444 (= res!353105 (validMask!0 mask!3119))))

(assert (=> start!51444 e!323762))

(assert (=> start!51444 true))

(declare-fun array_inv!12702 (array!35263) Bool)

(assert (=> start!51444 (array_inv!12702 a!3118)))

(declare-fun b!561810 () Bool)

(declare-fun res!353109 () Bool)

(assert (=> b!561810 (=> (not res!353109) (not e!323757))))

(declare-datatypes ((List!11061 0))(
  ( (Nil!11058) (Cons!11057 (h!12060 (_ BitVec 64)) (t!17297 List!11061)) )
))
(declare-fun arrayNoDuplicates!0 (array!35263 (_ BitVec 32) List!11061) Bool)

(assert (=> b!561810 (= res!353109 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11058))))

(declare-fun b!561811 () Bool)

(declare-fun res!353114 () Bool)

(assert (=> b!561811 (=> (not res!353114) (not e!323762))))

(assert (=> b!561811 (= res!353114 (and (= (size!17292 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17292 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17292 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!561812 () Bool)

(declare-fun e!323760 () Bool)

(assert (=> b!561812 (= e!323760 (not true))))

(assert (=> b!561812 e!323758))

(declare-fun res!353106 () Bool)

(assert (=> b!561812 (=> (not res!353106) (not e!323758))))

(assert (=> b!561812 (= res!353106 (= lt!255863 (Found!5384 j!142)))))

(assert (=> b!561812 (= lt!255863 (seekEntryOrOpen!0 (select (arr!16928 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!561812 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17542 0))(
  ( (Unit!17543) )
))
(declare-fun lt!255861 () Unit!17542)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35263 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17542)

(assert (=> b!561812 (= lt!255861 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun lt!255862 () (_ BitVec 64))

(declare-fun lt!255860 () array!35263)

(declare-fun b!561813 () Bool)

(assert (=> b!561813 (= e!323759 (= (seekEntryOrOpen!0 lt!255862 lt!255860 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!52690 lt!255864) (index!23765 lt!255864) (index!23765 lt!255864) lt!255862 lt!255860 mask!3119)))))

(declare-fun b!561814 () Bool)

(declare-fun res!353116 () Bool)

(assert (=> b!561814 (=> (not res!353116) (not e!323762))))

(declare-fun arrayContainsKey!0 (array!35263 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!561814 (= res!353116 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!561815 () Bool)

(assert (=> b!561815 (= e!323757 e!323760)))

(declare-fun res!353110 () Bool)

(assert (=> b!561815 (=> (not res!353110) (not e!323760))))

(declare-fun lt!255859 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35263 (_ BitVec 32)) SeekEntryResult!5384)

(assert (=> b!561815 (= res!353110 (= lt!255864 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!255859 lt!255862 lt!255860 mask!3119)))))

(declare-fun lt!255865 () (_ BitVec 32))

(assert (=> b!561815 (= lt!255864 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!255865 (select (arr!16928 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!561815 (= lt!255859 (toIndex!0 lt!255862 mask!3119))))

(assert (=> b!561815 (= lt!255862 (select (store (arr!16928 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!561815 (= lt!255865 (toIndex!0 (select (arr!16928 a!3118) j!142) mask!3119))))

(assert (=> b!561815 (= lt!255860 (array!35264 (store (arr!16928 a!3118) i!1132 k!1914) (size!17292 a!3118)))))

(assert (= (and start!51444 res!353105) b!561811))

(assert (= (and b!561811 res!353114) b!561805))

(assert (= (and b!561805 res!353115) b!561807))

(assert (= (and b!561807 res!353112) b!561814))

(assert (= (and b!561814 res!353116) b!561803))

(assert (= (and b!561803 res!353117) b!561806))

(assert (= (and b!561806 res!353107) b!561810))

(assert (= (and b!561810 res!353109) b!561815))

(assert (= (and b!561815 res!353110) b!561812))

(assert (= (and b!561812 res!353106) b!561809))

(assert (= (and b!561809 (not res!353111)) b!561808))

(assert (= (and b!561808 (not res!353108)) b!561804))

(assert (= (and b!561804 res!353113) b!561813))

(declare-fun m!539807 () Bool)

(assert (=> b!561808 m!539807))

(declare-fun m!539809 () Bool)

(assert (=> b!561808 m!539809))

(declare-fun m!539811 () Bool)

(assert (=> b!561803 m!539811))

(assert (=> b!561805 m!539807))

(assert (=> b!561805 m!539807))

(declare-fun m!539813 () Bool)

(assert (=> b!561805 m!539813))

(assert (=> b!561804 m!539807))

(assert (=> b!561804 m!539807))

(declare-fun m!539815 () Bool)

(assert (=> b!561804 m!539815))

(declare-fun m!539817 () Bool)

(assert (=> start!51444 m!539817))

(declare-fun m!539819 () Bool)

(assert (=> start!51444 m!539819))

(assert (=> b!561815 m!539807))

(declare-fun m!539821 () Bool)

(assert (=> b!561815 m!539821))

(assert (=> b!561815 m!539807))

(declare-fun m!539823 () Bool)

(assert (=> b!561815 m!539823))

(declare-fun m!539825 () Bool)

(assert (=> b!561815 m!539825))

(declare-fun m!539827 () Bool)

(assert (=> b!561815 m!539827))

(declare-fun m!539829 () Bool)

(assert (=> b!561815 m!539829))

(assert (=> b!561815 m!539807))

(declare-fun m!539831 () Bool)

(assert (=> b!561815 m!539831))

(declare-fun m!539833 () Bool)

(assert (=> b!561806 m!539833))

(declare-fun m!539835 () Bool)

(assert (=> b!561814 m!539835))

(declare-fun m!539837 () Bool)

(assert (=> b!561810 m!539837))

(assert (=> b!561812 m!539807))

(assert (=> b!561812 m!539807))

(declare-fun m!539839 () Bool)

(assert (=> b!561812 m!539839))

(declare-fun m!539841 () Bool)

(assert (=> b!561812 m!539841))

(declare-fun m!539843 () Bool)

(assert (=> b!561812 m!539843))

(declare-fun m!539845 () Bool)

(assert (=> b!561807 m!539845))

(declare-fun m!539847 () Bool)

(assert (=> b!561813 m!539847))

(declare-fun m!539849 () Bool)

(assert (=> b!561813 m!539849))

(push 1)

(assert (not start!51444))

(assert (not b!561805))

(assert (not b!561814))

(assert (not b!561807))

(assert (not b!561810))

(assert (not b!561803))

(assert (not b!561806))

