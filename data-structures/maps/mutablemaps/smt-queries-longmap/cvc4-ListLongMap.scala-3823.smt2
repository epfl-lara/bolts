; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52446 () Bool)

(assert start!52446)

(declare-fun b!572114 () Bool)

(declare-fun res!361779 () Bool)

(declare-fun e!329089 () Bool)

(assert (=> b!572114 (=> (not res!361779) (not e!329089))))

(declare-datatypes ((array!35797 0))(
  ( (array!35798 (arr!17183 (Array (_ BitVec 32) (_ BitVec 64))) (size!17547 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35797)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!572114 (= res!361779 (validKeyInArray!0 (select (arr!17183 a!3118) j!142)))))

(declare-fun b!572115 () Bool)

(declare-fun res!361784 () Bool)

(declare-fun e!329090 () Bool)

(assert (=> b!572115 (=> (not res!361784) (not e!329090))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35797 (_ BitVec 32)) Bool)

(assert (=> b!572115 (= res!361784 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!572116 () Bool)

(declare-fun res!361775 () Bool)

(assert (=> b!572116 (=> (not res!361775) (not e!329089))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!35797 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!572116 (= res!361775 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!572117 () Bool)

(declare-fun e!329091 () Bool)

(declare-fun e!329095 () Bool)

(assert (=> b!572117 (= e!329091 e!329095)))

(declare-fun res!361772 () Bool)

(assert (=> b!572117 (=> res!361772 e!329095)))

(declare-datatypes ((SeekEntryResult!5639 0))(
  ( (MissingZero!5639 (index!24783 (_ BitVec 32))) (Found!5639 (index!24784 (_ BitVec 32))) (Intermediate!5639 (undefined!6451 Bool) (index!24785 (_ BitVec 32)) (x!53679 (_ BitVec 32))) (Undefined!5639) (MissingVacant!5639 (index!24786 (_ BitVec 32))) )
))
(declare-fun lt!261113 () SeekEntryResult!5639)

(assert (=> b!572117 (= res!361772 (or (undefined!6451 lt!261113) (not (is-Intermediate!5639 lt!261113))))))

(declare-fun b!572118 () Bool)

(declare-fun e!329093 () Bool)

(assert (=> b!572118 (= e!329093 (not true))))

(assert (=> b!572118 e!329091))

(declare-fun res!361782 () Bool)

(assert (=> b!572118 (=> (not res!361782) (not e!329091))))

(declare-fun lt!261116 () SeekEntryResult!5639)

(assert (=> b!572118 (= res!361782 (= lt!261116 (Found!5639 j!142)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35797 (_ BitVec 32)) SeekEntryResult!5639)

(assert (=> b!572118 (= lt!261116 (seekEntryOrOpen!0 (select (arr!17183 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!572118 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17980 0))(
  ( (Unit!17981) )
))
(declare-fun lt!261112 () Unit!17980)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35797 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17980)

(assert (=> b!572118 (= lt!261112 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!572119 () Bool)

(declare-fun e!329094 () Bool)

(declare-fun e!329092 () Bool)

(assert (=> b!572119 (= e!329094 e!329092)))

(declare-fun res!361780 () Bool)

(assert (=> b!572119 (=> (not res!361780) (not e!329092))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35797 (_ BitVec 32)) SeekEntryResult!5639)

(assert (=> b!572119 (= res!361780 (= lt!261116 (seekKeyOrZeroReturnVacant!0 (x!53679 lt!261113) (index!24785 lt!261113) (index!24785 lt!261113) (select (arr!17183 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun res!361777 () Bool)

(assert (=> start!52446 (=> (not res!361777) (not e!329089))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52446 (= res!361777 (validMask!0 mask!3119))))

(assert (=> start!52446 e!329089))

(assert (=> start!52446 true))

(declare-fun array_inv!12957 (array!35797) Bool)

(assert (=> start!52446 (array_inv!12957 a!3118)))

(declare-fun b!572120 () Bool)

(declare-fun lt!261115 () (_ BitVec 64))

(declare-fun lt!261111 () array!35797)

(assert (=> b!572120 (= e!329092 (= (seekEntryOrOpen!0 lt!261115 lt!261111 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!53679 lt!261113) (index!24785 lt!261113) (index!24785 lt!261113) lt!261115 lt!261111 mask!3119)))))

(declare-fun b!572121 () Bool)

(assert (=> b!572121 (= e!329095 e!329094)))

(declare-fun res!361783 () Bool)

(assert (=> b!572121 (=> res!361783 e!329094)))

(declare-fun lt!261109 () (_ BitVec 64))

(assert (=> b!572121 (= res!361783 (or (= lt!261109 (select (arr!17183 a!3118) j!142)) (= lt!261109 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!572121 (= lt!261109 (select (arr!17183 a!3118) (index!24785 lt!261113)))))

(declare-fun b!572122 () Bool)

(declare-fun res!361776 () Bool)

(assert (=> b!572122 (=> (not res!361776) (not e!329089))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!572122 (= res!361776 (and (= (size!17547 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17547 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17547 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!572123 () Bool)

(assert (=> b!572123 (= e!329089 e!329090)))

(declare-fun res!361778 () Bool)

(assert (=> b!572123 (=> (not res!361778) (not e!329090))))

(declare-fun lt!261114 () SeekEntryResult!5639)

(assert (=> b!572123 (= res!361778 (or (= lt!261114 (MissingZero!5639 i!1132)) (= lt!261114 (MissingVacant!5639 i!1132))))))

(assert (=> b!572123 (= lt!261114 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!572124 () Bool)

(assert (=> b!572124 (= e!329090 e!329093)))

(declare-fun res!361774 () Bool)

(assert (=> b!572124 (=> (not res!361774) (not e!329093))))

(declare-fun lt!261108 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35797 (_ BitVec 32)) SeekEntryResult!5639)

(assert (=> b!572124 (= res!361774 (= lt!261113 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!261108 lt!261115 lt!261111 mask!3119)))))

(declare-fun lt!261110 () (_ BitVec 32))

(assert (=> b!572124 (= lt!261113 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!261110 (select (arr!17183 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!572124 (= lt!261108 (toIndex!0 lt!261115 mask!3119))))

(assert (=> b!572124 (= lt!261115 (select (store (arr!17183 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!572124 (= lt!261110 (toIndex!0 (select (arr!17183 a!3118) j!142) mask!3119))))

(assert (=> b!572124 (= lt!261111 (array!35798 (store (arr!17183 a!3118) i!1132 k!1914) (size!17547 a!3118)))))

(declare-fun b!572125 () Bool)

(declare-fun res!361773 () Bool)

(assert (=> b!572125 (=> (not res!361773) (not e!329090))))

(declare-datatypes ((List!11316 0))(
  ( (Nil!11313) (Cons!11312 (h!12339 (_ BitVec 64)) (t!17552 List!11316)) )
))
(declare-fun arrayNoDuplicates!0 (array!35797 (_ BitVec 32) List!11316) Bool)

(assert (=> b!572125 (= res!361773 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11313))))

(declare-fun b!572126 () Bool)

(declare-fun res!361781 () Bool)

(assert (=> b!572126 (=> (not res!361781) (not e!329089))))

(assert (=> b!572126 (= res!361781 (validKeyInArray!0 k!1914))))

(assert (= (and start!52446 res!361777) b!572122))

(assert (= (and b!572122 res!361776) b!572114))

(assert (= (and b!572114 res!361779) b!572126))

(assert (= (and b!572126 res!361781) b!572116))

(assert (= (and b!572116 res!361775) b!572123))

(assert (= (and b!572123 res!361778) b!572115))

(assert (= (and b!572115 res!361784) b!572125))

(assert (= (and b!572125 res!361773) b!572124))

(assert (= (and b!572124 res!361774) b!572118))

(assert (= (and b!572118 res!361782) b!572117))

(assert (= (and b!572117 (not res!361772)) b!572121))

(assert (= (and b!572121 (not res!361783)) b!572119))

(assert (= (and b!572119 res!361780) b!572120))

(declare-fun m!551111 () Bool)

(assert (=> b!572121 m!551111))

(declare-fun m!551113 () Bool)

(assert (=> b!572121 m!551113))

(assert (=> b!572119 m!551111))

(assert (=> b!572119 m!551111))

(declare-fun m!551115 () Bool)

(assert (=> b!572119 m!551115))

(declare-fun m!551117 () Bool)

(assert (=> start!52446 m!551117))

(declare-fun m!551119 () Bool)

(assert (=> start!52446 m!551119))

(declare-fun m!551121 () Bool)

(assert (=> b!572126 m!551121))

(assert (=> b!572118 m!551111))

(assert (=> b!572118 m!551111))

(declare-fun m!551123 () Bool)

(assert (=> b!572118 m!551123))

(declare-fun m!551125 () Bool)

(assert (=> b!572118 m!551125))

(declare-fun m!551127 () Bool)

(assert (=> b!572118 m!551127))

(declare-fun m!551129 () Bool)

(assert (=> b!572116 m!551129))

(assert (=> b!572114 m!551111))

(assert (=> b!572114 m!551111))

(declare-fun m!551131 () Bool)

(assert (=> b!572114 m!551131))

(declare-fun m!551133 () Bool)

(assert (=> b!572115 m!551133))

(declare-fun m!551135 () Bool)

(assert (=> b!572125 m!551135))

(declare-fun m!551137 () Bool)

(assert (=> b!572120 m!551137))

(declare-fun m!551139 () Bool)

(assert (=> b!572120 m!551139))

(declare-fun m!551141 () Bool)

(assert (=> b!572123 m!551141))

(assert (=> b!572124 m!551111))

(declare-fun m!551143 () Bool)

(assert (=> b!572124 m!551143))

(assert (=> b!572124 m!551111))

(declare-fun m!551145 () Bool)

(assert (=> b!572124 m!551145))

(assert (=> b!572124 m!551111))

(declare-fun m!551147 () Bool)

(assert (=> b!572124 m!551147))

(declare-fun m!551149 () Bool)

(assert (=> b!572124 m!551149))

(declare-fun m!551151 () Bool)

(assert (=> b!572124 m!551151))

(declare-fun m!551153 () Bool)

(assert (=> b!572124 m!551153))

(push 1)

