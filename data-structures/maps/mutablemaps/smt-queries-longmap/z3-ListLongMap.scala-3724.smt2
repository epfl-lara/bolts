; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!51358 () Bool)

(assert start!51358)

(declare-fun b!560126 () Bool)

(declare-fun res!351435 () Bool)

(declare-fun e!322730 () Bool)

(assert (=> b!560126 (=> (not res!351435) (not e!322730))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!35177 0))(
  ( (array!35178 (arr!16885 (Array (_ BitVec 32) (_ BitVec 64))) (size!17249 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35177)

(assert (=> b!560126 (= res!351435 (and (= (size!17249 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17249 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17249 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!560127 () Bool)

(declare-fun res!351433 () Bool)

(assert (=> b!560127 (=> (not res!351433) (not e!322730))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!35177 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!560127 (= res!351433 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!560128 () Bool)

(declare-fun res!351431 () Bool)

(declare-fun e!322725 () Bool)

(assert (=> b!560128 (=> (not res!351431) (not e!322725))))

(declare-datatypes ((List!11018 0))(
  ( (Nil!11015) (Cons!11014 (h!12017 (_ BitVec 64)) (t!17254 List!11018)) )
))
(declare-fun arrayNoDuplicates!0 (array!35177 (_ BitVec 32) List!11018) Bool)

(assert (=> b!560128 (= res!351431 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11015))))

(declare-fun b!560129 () Bool)

(declare-fun res!351436 () Bool)

(assert (=> b!560129 (=> (not res!351436) (not e!322730))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!560129 (= res!351436 (validKeyInArray!0 k0!1914))))

(declare-fun b!560130 () Bool)

(declare-fun e!322727 () Bool)

(assert (=> b!560130 (= e!322725 e!322727)))

(declare-fun res!351439 () Bool)

(assert (=> b!560130 (=> (not res!351439) (not e!322727))))

(declare-datatypes ((SeekEntryResult!5341 0))(
  ( (MissingZero!5341 (index!23591 (_ BitVec 32))) (Found!5341 (index!23592 (_ BitVec 32))) (Intermediate!5341 (undefined!6153 Bool) (index!23593 (_ BitVec 32)) (x!52535 (_ BitVec 32))) (Undefined!5341) (MissingVacant!5341 (index!23594 (_ BitVec 32))) )
))
(declare-fun lt!254701 () SeekEntryResult!5341)

(declare-fun lt!254699 () (_ BitVec 64))

(declare-fun lt!254698 () array!35177)

(declare-fun lt!254702 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35177 (_ BitVec 32)) SeekEntryResult!5341)

(assert (=> b!560130 (= res!351439 (= lt!254701 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!254702 lt!254699 lt!254698 mask!3119)))))

(declare-fun lt!254704 () (_ BitVec 32))

(assert (=> b!560130 (= lt!254701 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!254704 (select (arr!16885 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!560130 (= lt!254702 (toIndex!0 lt!254699 mask!3119))))

(assert (=> b!560130 (= lt!254699 (select (store (arr!16885 a!3118) i!1132 k0!1914) j!142))))

(assert (=> b!560130 (= lt!254704 (toIndex!0 (select (arr!16885 a!3118) j!142) mask!3119))))

(assert (=> b!560130 (= lt!254698 (array!35178 (store (arr!16885 a!3118) i!1132 k0!1914) (size!17249 a!3118)))))

(declare-fun b!560131 () Bool)

(declare-fun e!322731 () Bool)

(declare-fun e!322728 () Bool)

(assert (=> b!560131 (= e!322731 e!322728)))

(declare-fun res!351434 () Bool)

(assert (=> b!560131 (=> (not res!351434) (not e!322728))))

(declare-fun lt!254703 () SeekEntryResult!5341)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35177 (_ BitVec 32)) SeekEntryResult!5341)

(assert (=> b!560131 (= res!351434 (= lt!254703 (seekKeyOrZeroReturnVacant!0 (x!52535 lt!254701) (index!23593 lt!254701) (index!23593 lt!254701) (select (arr!16885 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!560132 () Bool)

(declare-fun e!322726 () Bool)

(declare-fun e!322729 () Bool)

(assert (=> b!560132 (= e!322726 e!322729)))

(declare-fun res!351429 () Bool)

(assert (=> b!560132 (=> res!351429 e!322729)))

(get-info :version)

(assert (=> b!560132 (= res!351429 (or (undefined!6153 lt!254701) (not ((_ is Intermediate!5341) lt!254701))))))

(declare-fun res!351438 () Bool)

(assert (=> start!51358 (=> (not res!351438) (not e!322730))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51358 (= res!351438 (validMask!0 mask!3119))))

(assert (=> start!51358 e!322730))

(assert (=> start!51358 true))

(declare-fun array_inv!12659 (array!35177) Bool)

(assert (=> start!51358 (array_inv!12659 a!3118)))

(declare-fun b!560133 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35177 (_ BitVec 32)) SeekEntryResult!5341)

(assert (=> b!560133 (= e!322728 (= (seekEntryOrOpen!0 lt!254699 lt!254698 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!52535 lt!254701) (index!23593 lt!254701) (index!23593 lt!254701) lt!254699 lt!254698 mask!3119)))))

(declare-fun b!560134 () Bool)

(assert (=> b!560134 (= e!322727 (not true))))

(assert (=> b!560134 e!322726))

(declare-fun res!351430 () Bool)

(assert (=> b!560134 (=> (not res!351430) (not e!322726))))

(assert (=> b!560134 (= res!351430 (= lt!254703 (Found!5341 j!142)))))

(assert (=> b!560134 (= lt!254703 (seekEntryOrOpen!0 (select (arr!16885 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35177 (_ BitVec 32)) Bool)

(assert (=> b!560134 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17456 0))(
  ( (Unit!17457) )
))
(declare-fun lt!254697 () Unit!17456)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35177 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17456)

(assert (=> b!560134 (= lt!254697 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!560135 () Bool)

(assert (=> b!560135 (= e!322729 e!322731)))

(declare-fun res!351428 () Bool)

(assert (=> b!560135 (=> res!351428 e!322731)))

(declare-fun lt!254705 () (_ BitVec 64))

(assert (=> b!560135 (= res!351428 (or (= lt!254705 (select (arr!16885 a!3118) j!142)) (= lt!254705 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!560135 (= lt!254705 (select (arr!16885 a!3118) (index!23593 lt!254701)))))

(declare-fun b!560136 () Bool)

(assert (=> b!560136 (= e!322730 e!322725)))

(declare-fun res!351440 () Bool)

(assert (=> b!560136 (=> (not res!351440) (not e!322725))))

(declare-fun lt!254700 () SeekEntryResult!5341)

(assert (=> b!560136 (= res!351440 (or (= lt!254700 (MissingZero!5341 i!1132)) (= lt!254700 (MissingVacant!5341 i!1132))))))

(assert (=> b!560136 (= lt!254700 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!560137 () Bool)

(declare-fun res!351432 () Bool)

(assert (=> b!560137 (=> (not res!351432) (not e!322730))))

(assert (=> b!560137 (= res!351432 (validKeyInArray!0 (select (arr!16885 a!3118) j!142)))))

(declare-fun b!560138 () Bool)

(declare-fun res!351437 () Bool)

(assert (=> b!560138 (=> (not res!351437) (not e!322725))))

(assert (=> b!560138 (= res!351437 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(assert (= (and start!51358 res!351438) b!560126))

(assert (= (and b!560126 res!351435) b!560137))

(assert (= (and b!560137 res!351432) b!560129))

(assert (= (and b!560129 res!351436) b!560127))

(assert (= (and b!560127 res!351433) b!560136))

(assert (= (and b!560136 res!351440) b!560138))

(assert (= (and b!560138 res!351437) b!560128))

(assert (= (and b!560128 res!351431) b!560130))

(assert (= (and b!560130 res!351439) b!560134))

(assert (= (and b!560134 res!351430) b!560132))

(assert (= (and b!560132 (not res!351429)) b!560135))

(assert (= (and b!560135 (not res!351428)) b!560131))

(assert (= (and b!560131 res!351434) b!560133))

(declare-fun m!537915 () Bool)

(assert (=> b!560138 m!537915))

(declare-fun m!537917 () Bool)

(assert (=> b!560128 m!537917))

(declare-fun m!537919 () Bool)

(assert (=> start!51358 m!537919))

(declare-fun m!537921 () Bool)

(assert (=> start!51358 m!537921))

(declare-fun m!537923 () Bool)

(assert (=> b!560130 m!537923))

(declare-fun m!537925 () Bool)

(assert (=> b!560130 m!537925))

(declare-fun m!537927 () Bool)

(assert (=> b!560130 m!537927))

(declare-fun m!537929 () Bool)

(assert (=> b!560130 m!537929))

(assert (=> b!560130 m!537925))

(assert (=> b!560130 m!537925))

(declare-fun m!537931 () Bool)

(assert (=> b!560130 m!537931))

(declare-fun m!537933 () Bool)

(assert (=> b!560130 m!537933))

(declare-fun m!537935 () Bool)

(assert (=> b!560130 m!537935))

(assert (=> b!560131 m!537925))

(assert (=> b!560131 m!537925))

(declare-fun m!537937 () Bool)

(assert (=> b!560131 m!537937))

(assert (=> b!560135 m!537925))

(declare-fun m!537939 () Bool)

(assert (=> b!560135 m!537939))

(assert (=> b!560137 m!537925))

(assert (=> b!560137 m!537925))

(declare-fun m!537941 () Bool)

(assert (=> b!560137 m!537941))

(declare-fun m!537943 () Bool)

(assert (=> b!560129 m!537943))

(declare-fun m!537945 () Bool)

(assert (=> b!560127 m!537945))

(assert (=> b!560134 m!537925))

(assert (=> b!560134 m!537925))

(declare-fun m!537947 () Bool)

(assert (=> b!560134 m!537947))

(declare-fun m!537949 () Bool)

(assert (=> b!560134 m!537949))

(declare-fun m!537951 () Bool)

(assert (=> b!560134 m!537951))

(declare-fun m!537953 () Bool)

(assert (=> b!560133 m!537953))

(declare-fun m!537955 () Bool)

(assert (=> b!560133 m!537955))

(declare-fun m!537957 () Bool)

(assert (=> b!560136 m!537957))

(check-sat (not b!560129) (not b!560133) (not b!560134) (not b!560137) (not b!560131) (not b!560130) (not start!51358) (not b!560128) (not b!560138) (not b!560136) (not b!560127))
(check-sat)
