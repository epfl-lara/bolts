; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!50854 () Bool)

(assert start!50854)

(declare-fun res!348692 () Bool)

(declare-fun e!320413 () Bool)

(assert (=> start!50854 (=> (not res!348692) (not e!320413))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50854 (= res!348692 (validMask!0 mask!3119))))

(assert (=> start!50854 e!320413))

(assert (=> start!50854 true))

(declare-datatypes ((array!35033 0))(
  ( (array!35034 (arr!16822 (Array (_ BitVec 32) (_ BitVec 64))) (size!17186 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35033)

(declare-fun array_inv!12596 (array!35033) Bool)

(assert (=> start!50854 (array_inv!12596 a!3118)))

(declare-fun b!556124 () Bool)

(declare-fun res!348694 () Bool)

(assert (=> b!556124 (=> (not res!348694) (not e!320413))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!556124 (= res!348694 (validKeyInArray!0 (select (arr!16822 a!3118) j!142)))))

(declare-fun b!556125 () Bool)

(declare-fun res!348689 () Bool)

(declare-fun e!320410 () Bool)

(assert (=> b!556125 (=> (not res!348689) (not e!320410))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35033 (_ BitVec 32)) Bool)

(assert (=> b!556125 (= res!348689 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!556126 () Bool)

(assert (=> b!556126 (= e!320413 e!320410)))

(declare-fun res!348686 () Bool)

(assert (=> b!556126 (=> (not res!348686) (not e!320410))))

(declare-datatypes ((SeekEntryResult!5278 0))(
  ( (MissingZero!5278 (index!23339 (_ BitVec 32))) (Found!5278 (index!23340 (_ BitVec 32))) (Intermediate!5278 (undefined!6090 Bool) (index!23341 (_ BitVec 32)) (x!52259 (_ BitVec 32))) (Undefined!5278) (MissingVacant!5278 (index!23342 (_ BitVec 32))) )
))
(declare-fun lt!252800 () SeekEntryResult!5278)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!556126 (= res!348686 (or (= lt!252800 (MissingZero!5278 i!1132)) (= lt!252800 (MissingVacant!5278 i!1132))))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35033 (_ BitVec 32)) SeekEntryResult!5278)

(assert (=> b!556126 (= lt!252800 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!556127 () Bool)

(declare-fun res!348688 () Bool)

(assert (=> b!556127 (=> (not res!348688) (not e!320410))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35033 (_ BitVec 32)) SeekEntryResult!5278)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!556127 (= res!348688 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16822 a!3118) j!142) mask!3119) (select (arr!16822 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16822 a!3118) i!1132 k0!1914) j!142) mask!3119) (select (store (arr!16822 a!3118) i!1132 k0!1914) j!142) (array!35034 (store (arr!16822 a!3118) i!1132 k0!1914) (size!17186 a!3118)) mask!3119)))))

(declare-fun b!556128 () Bool)

(assert (=> b!556128 (= e!320410 (not true))))

(declare-fun e!320412 () Bool)

(assert (=> b!556128 e!320412))

(declare-fun res!348691 () Bool)

(assert (=> b!556128 (=> (not res!348691) (not e!320412))))

(assert (=> b!556128 (= res!348691 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17330 0))(
  ( (Unit!17331) )
))
(declare-fun lt!252799 () Unit!17330)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35033 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17330)

(assert (=> b!556128 (= lt!252799 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!556129 () Bool)

(assert (=> b!556129 (= e!320412 (= (seekEntryOrOpen!0 (select (arr!16822 a!3118) j!142) a!3118 mask!3119) (Found!5278 j!142)))))

(declare-fun b!556130 () Bool)

(declare-fun res!348693 () Bool)

(assert (=> b!556130 (=> (not res!348693) (not e!320410))))

(declare-datatypes ((List!10955 0))(
  ( (Nil!10952) (Cons!10951 (h!11936 (_ BitVec 64)) (t!17191 List!10955)) )
))
(declare-fun arrayNoDuplicates!0 (array!35033 (_ BitVec 32) List!10955) Bool)

(assert (=> b!556130 (= res!348693 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10952))))

(declare-fun b!556131 () Bool)

(declare-fun res!348695 () Bool)

(assert (=> b!556131 (=> (not res!348695) (not e!320413))))

(declare-fun arrayContainsKey!0 (array!35033 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!556131 (= res!348695 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!556132 () Bool)

(declare-fun res!348687 () Bool)

(assert (=> b!556132 (=> (not res!348687) (not e!320413))))

(assert (=> b!556132 (= res!348687 (and (= (size!17186 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17186 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17186 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!556133 () Bool)

(declare-fun res!348690 () Bool)

(assert (=> b!556133 (=> (not res!348690) (not e!320413))))

(assert (=> b!556133 (= res!348690 (validKeyInArray!0 k0!1914))))

(assert (= (and start!50854 res!348692) b!556132))

(assert (= (and b!556132 res!348687) b!556124))

(assert (= (and b!556124 res!348694) b!556133))

(assert (= (and b!556133 res!348690) b!556131))

(assert (= (and b!556131 res!348695) b!556126))

(assert (= (and b!556126 res!348686) b!556125))

(assert (= (and b!556125 res!348689) b!556130))

(assert (= (and b!556130 res!348693) b!556127))

(assert (= (and b!556127 res!348688) b!556128))

(assert (= (and b!556128 res!348691) b!556129))

(declare-fun m!534127 () Bool)

(assert (=> b!556126 m!534127))

(declare-fun m!534129 () Bool)

(assert (=> b!556125 m!534129))

(declare-fun m!534131 () Bool)

(assert (=> start!50854 m!534131))

(declare-fun m!534133 () Bool)

(assert (=> start!50854 m!534133))

(declare-fun m!534135 () Bool)

(assert (=> b!556131 m!534135))

(declare-fun m!534137 () Bool)

(assert (=> b!556128 m!534137))

(declare-fun m!534139 () Bool)

(assert (=> b!556128 m!534139))

(declare-fun m!534141 () Bool)

(assert (=> b!556133 m!534141))

(declare-fun m!534143 () Bool)

(assert (=> b!556130 m!534143))

(declare-fun m!534145 () Bool)

(assert (=> b!556129 m!534145))

(assert (=> b!556129 m!534145))

(declare-fun m!534147 () Bool)

(assert (=> b!556129 m!534147))

(assert (=> b!556127 m!534145))

(declare-fun m!534149 () Bool)

(assert (=> b!556127 m!534149))

(assert (=> b!556127 m!534145))

(declare-fun m!534151 () Bool)

(assert (=> b!556127 m!534151))

(declare-fun m!534153 () Bool)

(assert (=> b!556127 m!534153))

(assert (=> b!556127 m!534151))

(declare-fun m!534155 () Bool)

(assert (=> b!556127 m!534155))

(assert (=> b!556127 m!534149))

(assert (=> b!556127 m!534145))

(declare-fun m!534157 () Bool)

(assert (=> b!556127 m!534157))

(declare-fun m!534159 () Bool)

(assert (=> b!556127 m!534159))

(assert (=> b!556127 m!534151))

(assert (=> b!556127 m!534153))

(assert (=> b!556124 m!534145))

(assert (=> b!556124 m!534145))

(declare-fun m!534161 () Bool)

(assert (=> b!556124 m!534161))

(check-sat (not b!556126) (not b!556127) (not b!556128) (not b!556124) (not b!556129) (not b!556125) (not start!50854) (not b!556130) (not b!556133) (not b!556131))
(check-sat)
