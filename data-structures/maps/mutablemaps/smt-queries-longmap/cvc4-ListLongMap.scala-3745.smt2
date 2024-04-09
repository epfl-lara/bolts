; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51486 () Bool)

(assert start!51486)

(declare-fun b!562587 () Bool)

(declare-fun res!353897 () Bool)

(declare-fun e!324229 () Bool)

(assert (=> b!562587 (=> (not res!353897) (not e!324229))))

(declare-datatypes ((array!35305 0))(
  ( (array!35306 (arr!16949 (Array (_ BitVec 32) (_ BitVec 64))) (size!17313 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35305)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!562587 (= res!353897 (validKeyInArray!0 (select (arr!16949 a!3118) j!142)))))

(declare-fun b!562588 () Bool)

(declare-fun res!353889 () Bool)

(assert (=> b!562588 (=> (not res!353889) (not e!324229))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!562588 (= res!353889 (and (= (size!17313 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17313 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17313 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!562589 () Bool)

(declare-fun res!353891 () Bool)

(assert (=> b!562589 (=> (not res!353891) (not e!324229))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!35305 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!562589 (= res!353891 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!562590 () Bool)

(declare-fun e!324231 () Bool)

(assert (=> b!562590 (= e!324231 true)))

(declare-datatypes ((SeekEntryResult!5405 0))(
  ( (MissingZero!5405 (index!23847 (_ BitVec 32))) (Found!5405 (index!23848 (_ BitVec 32))) (Intermediate!5405 (undefined!6217 Bool) (index!23849 (_ BitVec 32)) (x!52767 (_ BitVec 32))) (Undefined!5405) (MissingVacant!5405 (index!23850 (_ BitVec 32))) )
))
(declare-fun lt!256604 () SeekEntryResult!5405)

(declare-fun lt!256603 () SeekEntryResult!5405)

(assert (=> b!562590 (= lt!256604 lt!256603)))

(declare-datatypes ((Unit!17584 0))(
  ( (Unit!17585) )
))
(declare-fun lt!256612 () Unit!17584)

(declare-fun lt!256600 () SeekEntryResult!5405)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!35305 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17584)

(assert (=> b!562590 (= lt!256612 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!3118 i!1132 k!1914 j!142 (x!52767 lt!256600) (index!23849 lt!256600) (index!23849 lt!256600) mask!3119))))

(declare-fun b!562591 () Bool)

(declare-fun e!324226 () Bool)

(declare-fun e!324230 () Bool)

(assert (=> b!562591 (= e!324226 (not e!324230))))

(declare-fun res!353894 () Bool)

(assert (=> b!562591 (=> res!353894 e!324230)))

(assert (=> b!562591 (= res!353894 (or (undefined!6217 lt!256600) (not (is-Intermediate!5405 lt!256600))))))

(declare-fun lt!256608 () SeekEntryResult!5405)

(declare-fun lt!256613 () SeekEntryResult!5405)

(assert (=> b!562591 (= lt!256608 lt!256613)))

(assert (=> b!562591 (= lt!256613 (Found!5405 j!142))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35305 (_ BitVec 32)) SeekEntryResult!5405)

(assert (=> b!562591 (= lt!256608 (seekEntryOrOpen!0 (select (arr!16949 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35305 (_ BitVec 32)) Bool)

(assert (=> b!562591 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-fun lt!256610 () Unit!17584)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35305 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17584)

(assert (=> b!562591 (= lt!256610 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!562592 () Bool)

(declare-fun e!324227 () Bool)

(assert (=> b!562592 (= e!324227 e!324226)))

(declare-fun res!353898 () Bool)

(assert (=> b!562592 (=> (not res!353898) (not e!324226))))

(declare-fun lt!256605 () (_ BitVec 32))

(declare-fun lt!256606 () (_ BitVec 64))

(declare-fun lt!256601 () array!35305)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35305 (_ BitVec 32)) SeekEntryResult!5405)

(assert (=> b!562592 (= res!353898 (= lt!256600 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!256605 lt!256606 lt!256601 mask!3119)))))

(declare-fun lt!256607 () (_ BitVec 32))

(assert (=> b!562592 (= lt!256600 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!256607 (select (arr!16949 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!562592 (= lt!256605 (toIndex!0 lt!256606 mask!3119))))

(assert (=> b!562592 (= lt!256606 (select (store (arr!16949 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!562592 (= lt!256607 (toIndex!0 (select (arr!16949 a!3118) j!142) mask!3119))))

(assert (=> b!562592 (= lt!256601 (array!35306 (store (arr!16949 a!3118) i!1132 k!1914) (size!17313 a!3118)))))

(declare-fun b!562593 () Bool)

(declare-fun res!353899 () Bool)

(assert (=> b!562593 (=> (not res!353899) (not e!324229))))

(assert (=> b!562593 (= res!353899 (validKeyInArray!0 k!1914))))

(declare-fun b!562594 () Bool)

(assert (=> b!562594 (= e!324229 e!324227)))

(declare-fun res!353895 () Bool)

(assert (=> b!562594 (=> (not res!353895) (not e!324227))))

(declare-fun lt!256611 () SeekEntryResult!5405)

(assert (=> b!562594 (= res!353895 (or (= lt!256611 (MissingZero!5405 i!1132)) (= lt!256611 (MissingVacant!5405 i!1132))))))

(assert (=> b!562594 (= lt!256611 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!562595 () Bool)

(declare-fun e!324228 () Bool)

(assert (=> b!562595 (= e!324230 e!324228)))

(declare-fun res!353893 () Bool)

(assert (=> b!562595 (=> res!353893 e!324228)))

(declare-fun lt!256609 () (_ BitVec 64))

(assert (=> b!562595 (= res!353893 (or (= lt!256609 (select (arr!16949 a!3118) j!142)) (= lt!256609 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!562595 (= lt!256609 (select (arr!16949 a!3118) (index!23849 lt!256600)))))

(declare-fun b!562596 () Bool)

(declare-fun res!353892 () Bool)

(assert (=> b!562596 (=> (not res!353892) (not e!324227))))

(declare-datatypes ((List!11082 0))(
  ( (Nil!11079) (Cons!11078 (h!12081 (_ BitVec 64)) (t!17318 List!11082)) )
))
(declare-fun arrayNoDuplicates!0 (array!35305 (_ BitVec 32) List!11082) Bool)

(assert (=> b!562596 (= res!353892 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11079))))

(declare-fun b!562597 () Bool)

(declare-fun res!353896 () Bool)

(assert (=> b!562597 (=> (not res!353896) (not e!324227))))

(assert (=> b!562597 (= res!353896 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!562598 () Bool)

(assert (=> b!562598 (= e!324228 e!324231)))

(declare-fun res!353890 () Bool)

(assert (=> b!562598 (=> res!353890 e!324231)))

(assert (=> b!562598 (= res!353890 (or (bvslt (index!23849 lt!256600) #b00000000000000000000000000000000) (bvsge (index!23849 lt!256600) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsgt (x!52767 lt!256600) #b01111111111111111111111111111110) (bvslt (x!52767 lt!256600) #b00000000000000000000000000000000) (not (= lt!256609 #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (store (arr!16949 a!3118) i!1132 k!1914) (index!23849 lt!256600)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= lt!256604 lt!256613))))))

(declare-fun lt!256602 () SeekEntryResult!5405)

(assert (=> b!562598 (= lt!256602 lt!256603)))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35305 (_ BitVec 32)) SeekEntryResult!5405)

(assert (=> b!562598 (= lt!256603 (seekKeyOrZeroReturnVacant!0 (x!52767 lt!256600) (index!23849 lt!256600) (index!23849 lt!256600) lt!256606 lt!256601 mask!3119))))

(assert (=> b!562598 (= lt!256602 (seekEntryOrOpen!0 lt!256606 lt!256601 mask!3119))))

(assert (=> b!562598 (= lt!256608 lt!256604)))

(assert (=> b!562598 (= lt!256604 (seekKeyOrZeroReturnVacant!0 (x!52767 lt!256600) (index!23849 lt!256600) (index!23849 lt!256600) (select (arr!16949 a!3118) j!142) a!3118 mask!3119))))

(declare-fun res!353900 () Bool)

(assert (=> start!51486 (=> (not res!353900) (not e!324229))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51486 (= res!353900 (validMask!0 mask!3119))))

(assert (=> start!51486 e!324229))

(assert (=> start!51486 true))

(declare-fun array_inv!12723 (array!35305) Bool)

(assert (=> start!51486 (array_inv!12723 a!3118)))

(assert (= (and start!51486 res!353900) b!562588))

(assert (= (and b!562588 res!353889) b!562587))

(assert (= (and b!562587 res!353897) b!562593))

(assert (= (and b!562593 res!353899) b!562589))

(assert (= (and b!562589 res!353891) b!562594))

(assert (= (and b!562594 res!353895) b!562597))

(assert (= (and b!562597 res!353896) b!562596))

(assert (= (and b!562596 res!353892) b!562592))

(assert (= (and b!562592 res!353898) b!562591))

(assert (= (and b!562591 (not res!353894)) b!562595))

(assert (= (and b!562595 (not res!353893)) b!562598))

(assert (= (and b!562598 (not res!353890)) b!562590))

(declare-fun m!540775 () Bool)

(assert (=> b!562596 m!540775))

(declare-fun m!540777 () Bool)

(assert (=> b!562591 m!540777))

(assert (=> b!562591 m!540777))

(declare-fun m!540779 () Bool)

(assert (=> b!562591 m!540779))

(declare-fun m!540781 () Bool)

(assert (=> b!562591 m!540781))

(declare-fun m!540783 () Bool)

(assert (=> b!562591 m!540783))

(declare-fun m!540785 () Bool)

(assert (=> b!562594 m!540785))

(declare-fun m!540787 () Bool)

(assert (=> b!562589 m!540787))

(declare-fun m!540789 () Bool)

(assert (=> b!562593 m!540789))

(declare-fun m!540791 () Bool)

(assert (=> b!562590 m!540791))

(declare-fun m!540793 () Bool)

(assert (=> b!562597 m!540793))

(assert (=> b!562598 m!540777))

(assert (=> b!562598 m!540777))

(declare-fun m!540795 () Bool)

(assert (=> b!562598 m!540795))

(declare-fun m!540797 () Bool)

(assert (=> b!562598 m!540797))

(declare-fun m!540799 () Bool)

(assert (=> b!562598 m!540799))

(declare-fun m!540801 () Bool)

(assert (=> b!562598 m!540801))

(declare-fun m!540803 () Bool)

(assert (=> b!562598 m!540803))

(assert (=> b!562595 m!540777))

(declare-fun m!540805 () Bool)

(assert (=> b!562595 m!540805))

(declare-fun m!540807 () Bool)

(assert (=> start!51486 m!540807))

(declare-fun m!540809 () Bool)

(assert (=> start!51486 m!540809))

(declare-fun m!540811 () Bool)

(assert (=> b!562592 m!540811))

(assert (=> b!562592 m!540777))

(declare-fun m!540813 () Bool)

(assert (=> b!562592 m!540813))

(assert (=> b!562592 m!540777))

(assert (=> b!562592 m!540777))

(declare-fun m!540815 () Bool)

(assert (=> b!562592 m!540815))

(declare-fun m!540817 () Bool)

(assert (=> b!562592 m!540817))

(assert (=> b!562592 m!540801))

(declare-fun m!540819 () Bool)

(assert (=> b!562592 m!540819))

(assert (=> b!562587 m!540777))

(assert (=> b!562587 m!540777))

(declare-fun m!540821 () Bool)

(assert (=> b!562587 m!540821))

(push 1)

