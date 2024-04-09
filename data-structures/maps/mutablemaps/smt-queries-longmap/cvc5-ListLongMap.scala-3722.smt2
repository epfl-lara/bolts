; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51344 () Bool)

(assert start!51344)

(declare-fun b!559846 () Bool)

(declare-fun res!351160 () Bool)

(declare-fun e!322556 () Bool)

(assert (=> b!559846 (=> (not res!351160) (not e!322556))))

(declare-datatypes ((array!35163 0))(
  ( (array!35164 (arr!16878 (Array (_ BitVec 32) (_ BitVec 64))) (size!17242 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35163)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35163 (_ BitVec 32)) Bool)

(assert (=> b!559846 (= res!351160 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!559847 () Bool)

(declare-fun e!322553 () Bool)

(assert (=> b!559847 (= e!322556 e!322553)))

(declare-fun res!351148 () Bool)

(assert (=> b!559847 (=> (not res!351148) (not e!322553))))

(declare-fun lt!254516 () (_ BitVec 64))

(declare-fun lt!254515 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5334 0))(
  ( (MissingZero!5334 (index!23563 (_ BitVec 32))) (Found!5334 (index!23564 (_ BitVec 32))) (Intermediate!5334 (undefined!6146 Bool) (index!23565 (_ BitVec 32)) (x!52512 (_ BitVec 32))) (Undefined!5334) (MissingVacant!5334 (index!23566 (_ BitVec 32))) )
))
(declare-fun lt!254511 () SeekEntryResult!5334)

(declare-fun i!1132 () (_ BitVec 32))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35163 (_ BitVec 32)) SeekEntryResult!5334)

(assert (=> b!559847 (= res!351148 (= lt!254511 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!254515 lt!254516 (array!35164 (store (arr!16878 a!3118) i!1132 k!1914) (size!17242 a!3118)) mask!3119)))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun lt!254509 () (_ BitVec 32))

(assert (=> b!559847 (= lt!254511 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!254509 (select (arr!16878 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!559847 (= lt!254515 (toIndex!0 lt!254516 mask!3119))))

(assert (=> b!559847 (= lt!254516 (select (store (arr!16878 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!559847 (= lt!254509 (toIndex!0 (select (arr!16878 a!3118) j!142) mask!3119))))

(declare-fun b!559848 () Bool)

(declare-fun res!351149 () Bool)

(declare-fun e!322555 () Bool)

(assert (=> b!559848 (=> (not res!351149) (not e!322555))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!559848 (= res!351149 (validKeyInArray!0 k!1914))))

(declare-fun b!559849 () Bool)

(declare-fun e!322551 () Bool)

(declare-fun e!322554 () Bool)

(assert (=> b!559849 (= e!322551 e!322554)))

(declare-fun res!351159 () Bool)

(assert (=> b!559849 (=> res!351159 e!322554)))

(assert (=> b!559849 (= res!351159 (or (undefined!6146 lt!254511) (not (is-Intermediate!5334 lt!254511))))))

(declare-fun res!351153 () Bool)

(assert (=> start!51344 (=> (not res!351153) (not e!322555))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51344 (= res!351153 (validMask!0 mask!3119))))

(assert (=> start!51344 e!322555))

(assert (=> start!51344 true))

(declare-fun array_inv!12652 (array!35163) Bool)

(assert (=> start!51344 (array_inv!12652 a!3118)))

(declare-fun lt!254510 () SeekEntryResult!5334)

(declare-fun b!559850 () Bool)

(declare-fun e!322558 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35163 (_ BitVec 32)) SeekEntryResult!5334)

(assert (=> b!559850 (= e!322558 (= lt!254510 (seekKeyOrZeroReturnVacant!0 (x!52512 lt!254511) (index!23565 lt!254511) (index!23565 lt!254511) (select (arr!16878 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!559851 () Bool)

(declare-fun res!351157 () Bool)

(assert (=> b!559851 (=> (not res!351157) (not e!322555))))

(declare-fun arrayContainsKey!0 (array!35163 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!559851 (= res!351157 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!559852 () Bool)

(assert (=> b!559852 (= e!322555 e!322556)))

(declare-fun res!351158 () Bool)

(assert (=> b!559852 (=> (not res!351158) (not e!322556))))

(declare-fun lt!254514 () SeekEntryResult!5334)

(assert (=> b!559852 (= res!351158 (or (= lt!254514 (MissingZero!5334 i!1132)) (= lt!254514 (MissingVacant!5334 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35163 (_ BitVec 32)) SeekEntryResult!5334)

(assert (=> b!559852 (= lt!254514 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!559853 () Bool)

(assert (=> b!559853 (= e!322554 e!322558)))

(declare-fun res!351161 () Bool)

(assert (=> b!559853 (=> res!351161 e!322558)))

(declare-fun lt!254513 () (_ BitVec 64))

(assert (=> b!559853 (= res!351161 (or (= lt!254513 (select (arr!16878 a!3118) j!142)) (= lt!254513 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!559853 (= lt!254513 (select (arr!16878 a!3118) (index!23565 lt!254511)))))

(declare-fun b!559854 () Bool)

(declare-fun e!322552 () Bool)

(assert (=> b!559854 (= e!322552 (validKeyInArray!0 lt!254516))))

(declare-fun b!559855 () Bool)

(declare-fun res!351154 () Bool)

(assert (=> b!559855 (=> (not res!351154) (not e!322556))))

(declare-datatypes ((List!11011 0))(
  ( (Nil!11008) (Cons!11007 (h!12010 (_ BitVec 64)) (t!17247 List!11011)) )
))
(declare-fun arrayNoDuplicates!0 (array!35163 (_ BitVec 32) List!11011) Bool)

(assert (=> b!559855 (= res!351154 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11008))))

(declare-fun b!559856 () Bool)

(declare-fun res!351151 () Bool)

(assert (=> b!559856 (=> (not res!351151) (not e!322555))))

(assert (=> b!559856 (= res!351151 (validKeyInArray!0 (select (arr!16878 a!3118) j!142)))))

(declare-fun b!559857 () Bool)

(declare-fun e!322550 () Bool)

(assert (=> b!559857 (= e!322550 e!322552)))

(declare-fun res!351150 () Bool)

(assert (=> b!559857 (=> res!351150 e!322552)))

(declare-fun lt!254508 () (_ BitVec 64))

(assert (=> b!559857 (= res!351150 (or (= lt!254508 (select (arr!16878 a!3118) j!142)) (= lt!254508 #b0000000000000000000000000000000000000000000000000000000000000000) (bvslt mask!3119 #b00000000000000000000000000000000) (bvslt (index!23565 lt!254511) #b00000000000000000000000000000000) (bvsge (index!23565 lt!254511) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsgt (x!52512 lt!254511) #b01111111111111111111111111111110) (bvslt (x!52512 lt!254511) #b00000000000000000000000000000000) (not (= (select (store (arr!16878 a!3118) i!1132 k!1914) (index!23565 lt!254511)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!559857 (= lt!254508 (select (arr!16878 a!3118) (index!23565 lt!254511)))))

(declare-fun b!559858 () Bool)

(assert (=> b!559858 (= e!322553 (not e!322550))))

(declare-fun res!351152 () Bool)

(assert (=> b!559858 (=> res!351152 e!322550)))

(assert (=> b!559858 (= res!351152 (or (undefined!6146 lt!254511) (not (is-Intermediate!5334 lt!254511))))))

(assert (=> b!559858 e!322551))

(declare-fun res!351156 () Bool)

(assert (=> b!559858 (=> (not res!351156) (not e!322551))))

(assert (=> b!559858 (= res!351156 (= lt!254510 (Found!5334 j!142)))))

(assert (=> b!559858 (= lt!254510 (seekEntryOrOpen!0 (select (arr!16878 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!559858 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17442 0))(
  ( (Unit!17443) )
))
(declare-fun lt!254512 () Unit!17442)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35163 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17442)

(assert (=> b!559858 (= lt!254512 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!559859 () Bool)

(declare-fun res!351155 () Bool)

(assert (=> b!559859 (=> (not res!351155) (not e!322555))))

(assert (=> b!559859 (= res!351155 (and (= (size!17242 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17242 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17242 a!3118)) (not (= i!1132 j!142))))))

(assert (= (and start!51344 res!351153) b!559859))

(assert (= (and b!559859 res!351155) b!559856))

(assert (= (and b!559856 res!351151) b!559848))

(assert (= (and b!559848 res!351149) b!559851))

(assert (= (and b!559851 res!351157) b!559852))

(assert (= (and b!559852 res!351158) b!559846))

(assert (= (and b!559846 res!351160) b!559855))

(assert (= (and b!559855 res!351154) b!559847))

(assert (= (and b!559847 res!351148) b!559858))

(assert (= (and b!559858 res!351156) b!559849))

(assert (= (and b!559849 (not res!351159)) b!559853))

(assert (= (and b!559853 (not res!351161)) b!559850))

(assert (= (and b!559858 (not res!351152)) b!559857))

(assert (= (and b!559857 (not res!351150)) b!559854))

(declare-fun m!537607 () Bool)

(assert (=> b!559854 m!537607))

(declare-fun m!537609 () Bool)

(assert (=> b!559847 m!537609))

(declare-fun m!537611 () Bool)

(assert (=> b!559847 m!537611))

(declare-fun m!537613 () Bool)

(assert (=> b!559847 m!537613))

(assert (=> b!559847 m!537609))

(assert (=> b!559847 m!537609))

(declare-fun m!537615 () Bool)

(assert (=> b!559847 m!537615))

(declare-fun m!537617 () Bool)

(assert (=> b!559847 m!537617))

(declare-fun m!537619 () Bool)

(assert (=> b!559847 m!537619))

(declare-fun m!537621 () Bool)

(assert (=> b!559847 m!537621))

(assert (=> b!559856 m!537609))

(assert (=> b!559856 m!537609))

(declare-fun m!537623 () Bool)

(assert (=> b!559856 m!537623))

(declare-fun m!537625 () Bool)

(assert (=> b!559848 m!537625))

(declare-fun m!537627 () Bool)

(assert (=> b!559851 m!537627))

(assert (=> b!559857 m!537609))

(assert (=> b!559857 m!537619))

(declare-fun m!537629 () Bool)

(assert (=> b!559857 m!537629))

(declare-fun m!537631 () Bool)

(assert (=> b!559857 m!537631))

(declare-fun m!537633 () Bool)

(assert (=> b!559846 m!537633))

(assert (=> b!559858 m!537609))

(assert (=> b!559858 m!537609))

(declare-fun m!537635 () Bool)

(assert (=> b!559858 m!537635))

(declare-fun m!537637 () Bool)

(assert (=> b!559858 m!537637))

(declare-fun m!537639 () Bool)

(assert (=> b!559858 m!537639))

(declare-fun m!537641 () Bool)

(assert (=> b!559852 m!537641))

(assert (=> b!559853 m!537609))

(assert (=> b!559853 m!537631))

(declare-fun m!537643 () Bool)

(assert (=> b!559855 m!537643))

(assert (=> b!559850 m!537609))

(assert (=> b!559850 m!537609))

(declare-fun m!537645 () Bool)

(assert (=> b!559850 m!537645))

(declare-fun m!537647 () Bool)

(assert (=> start!51344 m!537647))

(declare-fun m!537649 () Bool)

(assert (=> start!51344 m!537649))

(push 1)

