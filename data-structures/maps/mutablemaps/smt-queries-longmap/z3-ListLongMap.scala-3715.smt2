; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!51106 () Bool)

(assert start!51106)

(declare-fun b!558127 () Bool)

(declare-fun res!350145 () Bool)

(declare-fun e!321532 () Bool)

(assert (=> b!558127 (=> (not res!350145) (not e!321532))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!558127 (= res!350145 (validKeyInArray!0 k0!1914))))

(declare-fun b!558128 () Bool)

(declare-fun e!321531 () Bool)

(assert (=> b!558128 (= e!321531 (not true))))

(declare-fun e!321529 () Bool)

(assert (=> b!558128 e!321529))

(declare-fun res!350148 () Bool)

(assert (=> b!558128 (=> (not res!350148) (not e!321529))))

(declare-datatypes ((SeekEntryResult!5314 0))(
  ( (MissingZero!5314 (index!23483 (_ BitVec 32))) (Found!5314 (index!23484 (_ BitVec 32))) (Intermediate!5314 (undefined!6126 Bool) (index!23485 (_ BitVec 32)) (x!52409 (_ BitVec 32))) (Undefined!5314) (MissingVacant!5314 (index!23486 (_ BitVec 32))) )
))
(declare-fun lt!253679 () SeekEntryResult!5314)

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!558128 (= res!350148 (= lt!253679 (Found!5314 j!142)))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-datatypes ((array!35114 0))(
  ( (array!35115 (arr!16858 (Array (_ BitVec 32) (_ BitVec 64))) (size!17222 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35114)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35114 (_ BitVec 32)) SeekEntryResult!5314)

(assert (=> b!558128 (= lt!253679 (seekEntryOrOpen!0 (select (arr!16858 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35114 (_ BitVec 32)) Bool)

(assert (=> b!558128 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17402 0))(
  ( (Unit!17403) )
))
(declare-fun lt!253676 () Unit!17402)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35114 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17402)

(assert (=> b!558128 (= lt!253676 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!558129 () Bool)

(declare-fun e!321527 () Bool)

(assert (=> b!558129 (= e!321529 e!321527)))

(declare-fun res!350143 () Bool)

(assert (=> b!558129 (=> res!350143 e!321527)))

(declare-fun lt!253674 () SeekEntryResult!5314)

(get-info :version)

(assert (=> b!558129 (= res!350143 (or (undefined!6126 lt!253674) (not ((_ is Intermediate!5314) lt!253674)) (= (select (arr!16858 a!3118) (index!23485 lt!253674)) (select (arr!16858 a!3118) j!142)) (= (select (arr!16858 a!3118) (index!23485 lt!253674)) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!558130 () Bool)

(declare-fun e!321530 () Bool)

(assert (=> b!558130 (= e!321532 e!321530)))

(declare-fun res!350150 () Bool)

(assert (=> b!558130 (=> (not res!350150) (not e!321530))))

(declare-fun lt!253678 () SeekEntryResult!5314)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!558130 (= res!350150 (or (= lt!253678 (MissingZero!5314 i!1132)) (= lt!253678 (MissingVacant!5314 i!1132))))))

(assert (=> b!558130 (= lt!253678 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!558132 () Bool)

(declare-fun res!350140 () Bool)

(assert (=> b!558132 (=> (not res!350140) (not e!321532))))

(assert (=> b!558132 (= res!350140 (and (= (size!17222 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17222 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17222 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!558133 () Bool)

(declare-fun res!350142 () Bool)

(assert (=> b!558133 (=> (not res!350142) (not e!321530))))

(declare-datatypes ((List!10991 0))(
  ( (Nil!10988) (Cons!10987 (h!11981 (_ BitVec 64)) (t!17227 List!10991)) )
))
(declare-fun arrayNoDuplicates!0 (array!35114 (_ BitVec 32) List!10991) Bool)

(assert (=> b!558133 (= res!350142 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10988))))

(declare-fun b!558134 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35114 (_ BitVec 32)) SeekEntryResult!5314)

(assert (=> b!558134 (= e!321527 (= lt!253679 (seekKeyOrZeroReturnVacant!0 (x!52409 lt!253674) (index!23485 lt!253674) (index!23485 lt!253674) (select (arr!16858 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!558135 () Bool)

(declare-fun res!350149 () Bool)

(assert (=> b!558135 (=> (not res!350149) (not e!321532))))

(assert (=> b!558135 (= res!350149 (validKeyInArray!0 (select (arr!16858 a!3118) j!142)))))

(declare-fun b!558136 () Bool)

(declare-fun res!350144 () Bool)

(assert (=> b!558136 (=> (not res!350144) (not e!321532))))

(declare-fun arrayContainsKey!0 (array!35114 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!558136 (= res!350144 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!558137 () Bool)

(declare-fun res!350146 () Bool)

(assert (=> b!558137 (=> (not res!350146) (not e!321530))))

(assert (=> b!558137 (= res!350146 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!558131 () Bool)

(assert (=> b!558131 (= e!321530 e!321531)))

(declare-fun res!350141 () Bool)

(assert (=> b!558131 (=> (not res!350141) (not e!321531))))

(declare-fun lt!253677 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35114 (_ BitVec 32)) SeekEntryResult!5314)

(assert (=> b!558131 (= res!350141 (= lt!253674 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!253677 (select (store (arr!16858 a!3118) i!1132 k0!1914) j!142) (array!35115 (store (arr!16858 a!3118) i!1132 k0!1914) (size!17222 a!3118)) mask!3119)))))

(declare-fun lt!253675 () (_ BitVec 32))

(assert (=> b!558131 (= lt!253674 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!253675 (select (arr!16858 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!558131 (= lt!253677 (toIndex!0 (select (store (arr!16858 a!3118) i!1132 k0!1914) j!142) mask!3119))))

(assert (=> b!558131 (= lt!253675 (toIndex!0 (select (arr!16858 a!3118) j!142) mask!3119))))

(declare-fun res!350147 () Bool)

(assert (=> start!51106 (=> (not res!350147) (not e!321532))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51106 (= res!350147 (validMask!0 mask!3119))))

(assert (=> start!51106 e!321532))

(assert (=> start!51106 true))

(declare-fun array_inv!12632 (array!35114) Bool)

(assert (=> start!51106 (array_inv!12632 a!3118)))

(assert (= (and start!51106 res!350147) b!558132))

(assert (= (and b!558132 res!350140) b!558135))

(assert (= (and b!558135 res!350149) b!558127))

(assert (= (and b!558127 res!350145) b!558136))

(assert (= (and b!558136 res!350144) b!558130))

(assert (= (and b!558130 res!350150) b!558137))

(assert (= (and b!558137 res!350146) b!558133))

(assert (= (and b!558133 res!350142) b!558131))

(assert (= (and b!558131 res!350141) b!558128))

(assert (= (and b!558128 res!350148) b!558129))

(assert (= (and b!558129 (not res!350143)) b!558134))

(declare-fun m!536117 () Bool)

(assert (=> b!558134 m!536117))

(assert (=> b!558134 m!536117))

(declare-fun m!536119 () Bool)

(assert (=> b!558134 m!536119))

(declare-fun m!536121 () Bool)

(assert (=> b!558130 m!536121))

(declare-fun m!536123 () Bool)

(assert (=> start!51106 m!536123))

(declare-fun m!536125 () Bool)

(assert (=> start!51106 m!536125))

(assert (=> b!558128 m!536117))

(assert (=> b!558128 m!536117))

(declare-fun m!536127 () Bool)

(assert (=> b!558128 m!536127))

(declare-fun m!536129 () Bool)

(assert (=> b!558128 m!536129))

(declare-fun m!536131 () Bool)

(assert (=> b!558128 m!536131))

(declare-fun m!536133 () Bool)

(assert (=> b!558133 m!536133))

(declare-fun m!536135 () Bool)

(assert (=> b!558129 m!536135))

(assert (=> b!558129 m!536117))

(declare-fun m!536137 () Bool)

(assert (=> b!558137 m!536137))

(assert (=> b!558131 m!536117))

(declare-fun m!536139 () Bool)

(assert (=> b!558131 m!536139))

(assert (=> b!558131 m!536117))

(declare-fun m!536141 () Bool)

(assert (=> b!558131 m!536141))

(assert (=> b!558131 m!536117))

(declare-fun m!536143 () Bool)

(assert (=> b!558131 m!536143))

(assert (=> b!558131 m!536141))

(declare-fun m!536145 () Bool)

(assert (=> b!558131 m!536145))

(declare-fun m!536147 () Bool)

(assert (=> b!558131 m!536147))

(assert (=> b!558131 m!536141))

(declare-fun m!536149 () Bool)

(assert (=> b!558131 m!536149))

(declare-fun m!536151 () Bool)

(assert (=> b!558136 m!536151))

(declare-fun m!536153 () Bool)

(assert (=> b!558127 m!536153))

(assert (=> b!558135 m!536117))

(assert (=> b!558135 m!536117))

(declare-fun m!536155 () Bool)

(assert (=> b!558135 m!536155))

(check-sat (not b!558131) (not b!558130) (not b!558134) (not b!558136) (not start!51106) (not b!558137) (not b!558127) (not b!558133) (not b!558128) (not b!558135))
(check-sat)
