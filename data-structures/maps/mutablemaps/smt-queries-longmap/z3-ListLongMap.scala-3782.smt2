; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!51766 () Bool)

(assert start!51766)

(declare-fun b!566018 () Bool)

(declare-fun e!325763 () Bool)

(declare-fun e!325765 () Bool)

(assert (=> b!566018 (= e!325763 e!325765)))

(declare-fun res!357141 () Bool)

(assert (=> b!566018 (=> (not res!357141) (not e!325765))))

(declare-datatypes ((SeekEntryResult!5515 0))(
  ( (MissingZero!5515 (index!24287 (_ BitVec 32))) (Found!5515 (index!24288 (_ BitVec 32))) (Intermediate!5515 (undefined!6327 Bool) (index!24289 (_ BitVec 32)) (x!53179 (_ BitVec 32))) (Undefined!5515) (MissingVacant!5515 (index!24290 (_ BitVec 32))) )
))
(declare-fun lt!258004 () SeekEntryResult!5515)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!566018 (= res!357141 (or (= lt!258004 (MissingZero!5515 i!1132)) (= lt!258004 (MissingVacant!5515 i!1132))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-datatypes ((array!35528 0))(
  ( (array!35529 (arr!17059 (Array (_ BitVec 32) (_ BitVec 64))) (size!17423 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35528)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35528 (_ BitVec 32)) SeekEntryResult!5515)

(assert (=> b!566018 (= lt!258004 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!566019 () Bool)

(declare-fun res!357146 () Bool)

(assert (=> b!566019 (=> (not res!357146) (not e!325763))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!566019 (= res!357146 (validKeyInArray!0 (select (arr!17059 a!3118) j!142)))))

(declare-fun b!566020 () Bool)

(declare-fun res!357137 () Bool)

(assert (=> b!566020 (=> (not res!357137) (not e!325763))))

(assert (=> b!566020 (= res!357137 (and (= (size!17423 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17423 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17423 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!566021 () Bool)

(declare-fun e!325764 () Bool)

(assert (=> b!566021 (= e!325764 (= (seekEntryOrOpen!0 (select (arr!17059 a!3118) j!142) a!3118 mask!3119) (Found!5515 j!142)))))

(declare-fun b!566022 () Bool)

(assert (=> b!566022 (= e!325765 (not true))))

(assert (=> b!566022 e!325764))

(declare-fun res!357143 () Bool)

(assert (=> b!566022 (=> (not res!357143) (not e!325764))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35528 (_ BitVec 32)) Bool)

(assert (=> b!566022 (= res!357143 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17732 0))(
  ( (Unit!17733) )
))
(declare-fun lt!258005 () Unit!17732)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35528 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17732)

(assert (=> b!566022 (= lt!258005 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!566023 () Bool)

(declare-fun res!357138 () Bool)

(assert (=> b!566023 (=> (not res!357138) (not e!325765))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35528 (_ BitVec 32)) SeekEntryResult!5515)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!566023 (= res!357138 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17059 a!3118) j!142) mask!3119) (select (arr!17059 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!17059 a!3118) i!1132 k0!1914) j!142) mask!3119) (select (store (arr!17059 a!3118) i!1132 k0!1914) j!142) (array!35529 (store (arr!17059 a!3118) i!1132 k0!1914) (size!17423 a!3118)) mask!3119)))))

(declare-fun res!357142 () Bool)

(assert (=> start!51766 (=> (not res!357142) (not e!325763))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51766 (= res!357142 (validMask!0 mask!3119))))

(assert (=> start!51766 e!325763))

(assert (=> start!51766 true))

(declare-fun array_inv!12833 (array!35528) Bool)

(assert (=> start!51766 (array_inv!12833 a!3118)))

(declare-fun b!566024 () Bool)

(declare-fun res!357145 () Bool)

(assert (=> b!566024 (=> (not res!357145) (not e!325765))))

(declare-datatypes ((List!11192 0))(
  ( (Nil!11189) (Cons!11188 (h!12194 (_ BitVec 64)) (t!17428 List!11192)) )
))
(declare-fun arrayNoDuplicates!0 (array!35528 (_ BitVec 32) List!11192) Bool)

(assert (=> b!566024 (= res!357145 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11189))))

(declare-fun b!566025 () Bool)

(declare-fun res!357140 () Bool)

(assert (=> b!566025 (=> (not res!357140) (not e!325765))))

(assert (=> b!566025 (= res!357140 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!566026 () Bool)

(declare-fun res!357144 () Bool)

(assert (=> b!566026 (=> (not res!357144) (not e!325763))))

(assert (=> b!566026 (= res!357144 (validKeyInArray!0 k0!1914))))

(declare-fun b!566027 () Bool)

(declare-fun res!357139 () Bool)

(assert (=> b!566027 (=> (not res!357139) (not e!325763))))

(declare-fun arrayContainsKey!0 (array!35528 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!566027 (= res!357139 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(assert (= (and start!51766 res!357142) b!566020))

(assert (= (and b!566020 res!357137) b!566019))

(assert (= (and b!566019 res!357146) b!566026))

(assert (= (and b!566026 res!357144) b!566027))

(assert (= (and b!566027 res!357139) b!566018))

(assert (= (and b!566018 res!357141) b!566025))

(assert (= (and b!566025 res!357140) b!566024))

(assert (= (and b!566024 res!357145) b!566023))

(assert (= (and b!566023 res!357138) b!566022))

(assert (= (and b!566022 res!357143) b!566021))

(declare-fun m!544669 () Bool)

(assert (=> b!566023 m!544669))

(declare-fun m!544671 () Bool)

(assert (=> b!566023 m!544671))

(assert (=> b!566023 m!544669))

(declare-fun m!544673 () Bool)

(assert (=> b!566023 m!544673))

(declare-fun m!544675 () Bool)

(assert (=> b!566023 m!544675))

(assert (=> b!566023 m!544673))

(declare-fun m!544677 () Bool)

(assert (=> b!566023 m!544677))

(assert (=> b!566023 m!544671))

(assert (=> b!566023 m!544669))

(declare-fun m!544679 () Bool)

(assert (=> b!566023 m!544679))

(declare-fun m!544681 () Bool)

(assert (=> b!566023 m!544681))

(assert (=> b!566023 m!544673))

(assert (=> b!566023 m!544675))

(declare-fun m!544683 () Bool)

(assert (=> b!566018 m!544683))

(declare-fun m!544685 () Bool)

(assert (=> b!566024 m!544685))

(declare-fun m!544687 () Bool)

(assert (=> b!566027 m!544687))

(declare-fun m!544689 () Bool)

(assert (=> b!566022 m!544689))

(declare-fun m!544691 () Bool)

(assert (=> b!566022 m!544691))

(declare-fun m!544693 () Bool)

(assert (=> b!566026 m!544693))

(declare-fun m!544695 () Bool)

(assert (=> b!566025 m!544695))

(assert (=> b!566019 m!544669))

(assert (=> b!566019 m!544669))

(declare-fun m!544697 () Bool)

(assert (=> b!566019 m!544697))

(declare-fun m!544699 () Bool)

(assert (=> start!51766 m!544699))

(declare-fun m!544701 () Bool)

(assert (=> start!51766 m!544701))

(assert (=> b!566021 m!544669))

(assert (=> b!566021 m!544669))

(declare-fun m!544703 () Bool)

(assert (=> b!566021 m!544703))

(check-sat (not b!566018) (not b!566019) (not b!566027) (not b!566021) (not b!566024) (not start!51766) (not b!566022) (not b!566023) (not b!566025) (not b!566026))
(check-sat)
