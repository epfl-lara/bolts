; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50778 () Bool)

(assert start!50778)

(declare-fun b!555057 () Bool)

(declare-fun res!347627 () Bool)

(declare-fun e!319945 () Bool)

(assert (=> b!555057 (=> (not res!347627) (not e!319945))))

(declare-datatypes ((array!34957 0))(
  ( (array!34958 (arr!16784 (Array (_ BitVec 32) (_ BitVec 64))) (size!17148 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34957)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!555057 (= res!347627 (validKeyInArray!0 (select (arr!16784 a!3118) j!142)))))

(declare-fun b!555058 () Bool)

(declare-fun res!347626 () Bool)

(assert (=> b!555058 (=> (not res!347626) (not e!319945))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34957 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!555058 (= res!347626 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!555060 () Bool)

(declare-fun e!319947 () Bool)

(assert (=> b!555060 (= e!319947 (not true))))

(declare-datatypes ((SeekEntryResult!5240 0))(
  ( (MissingZero!5240 (index!23187 (_ BitVec 32))) (Found!5240 (index!23188 (_ BitVec 32))) (Intermediate!5240 (undefined!6052 Bool) (index!23189 (_ BitVec 32)) (x!52117 (_ BitVec 32))) (Undefined!5240) (MissingVacant!5240 (index!23190 (_ BitVec 32))) )
))
(declare-fun lt!252256 () SeekEntryResult!5240)

(declare-fun lt!252255 () SeekEntryResult!5240)

(assert (=> b!555060 (and (= lt!252255 (Found!5240 j!142)) (or (undefined!6052 lt!252256) (not (is-Intermediate!5240 lt!252256)) (= (select (arr!16784 a!3118) (index!23189 lt!252256)) (select (arr!16784 a!3118) j!142)) (not (= (select (arr!16784 a!3118) (index!23189 lt!252256)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= lt!252255 (MissingZero!5240 (index!23189 lt!252256)))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34957 (_ BitVec 32)) SeekEntryResult!5240)

(assert (=> b!555060 (= lt!252255 (seekEntryOrOpen!0 (select (arr!16784 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34957 (_ BitVec 32)) Bool)

(assert (=> b!555060 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17254 0))(
  ( (Unit!17255) )
))
(declare-fun lt!252254 () Unit!17254)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34957 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17254)

(assert (=> b!555060 (= lt!252254 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!555061 () Bool)

(declare-fun res!347621 () Bool)

(declare-fun e!319948 () Bool)

(assert (=> b!555061 (=> (not res!347621) (not e!319948))))

(assert (=> b!555061 (= res!347621 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!555062 () Bool)

(assert (=> b!555062 (= e!319945 e!319948)))

(declare-fun res!347625 () Bool)

(assert (=> b!555062 (=> (not res!347625) (not e!319948))))

(declare-fun lt!252253 () SeekEntryResult!5240)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!555062 (= res!347625 (or (= lt!252253 (MissingZero!5240 i!1132)) (= lt!252253 (MissingVacant!5240 i!1132))))))

(assert (=> b!555062 (= lt!252253 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!555063 () Bool)

(assert (=> b!555063 (= e!319948 e!319947)))

(declare-fun res!347623 () Bool)

(assert (=> b!555063 (=> (not res!347623) (not e!319947))))

(declare-fun lt!252257 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34957 (_ BitVec 32)) SeekEntryResult!5240)

(assert (=> b!555063 (= res!347623 (= lt!252256 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!252257 (select (store (arr!16784 a!3118) i!1132 k!1914) j!142) (array!34958 (store (arr!16784 a!3118) i!1132 k!1914) (size!17148 a!3118)) mask!3119)))))

(declare-fun lt!252252 () (_ BitVec 32))

(assert (=> b!555063 (= lt!252256 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!252252 (select (arr!16784 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!555063 (= lt!252257 (toIndex!0 (select (store (arr!16784 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!555063 (= lt!252252 (toIndex!0 (select (arr!16784 a!3118) j!142) mask!3119))))

(declare-fun b!555064 () Bool)

(declare-fun res!347619 () Bool)

(assert (=> b!555064 (=> (not res!347619) (not e!319945))))

(assert (=> b!555064 (= res!347619 (validKeyInArray!0 k!1914))))

(declare-fun b!555065 () Bool)

(declare-fun res!347622 () Bool)

(assert (=> b!555065 (=> (not res!347622) (not e!319948))))

(declare-datatypes ((List!10917 0))(
  ( (Nil!10914) (Cons!10913 (h!11898 (_ BitVec 64)) (t!17153 List!10917)) )
))
(declare-fun arrayNoDuplicates!0 (array!34957 (_ BitVec 32) List!10917) Bool)

(assert (=> b!555065 (= res!347622 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10914))))

(declare-fun b!555059 () Bool)

(declare-fun res!347620 () Bool)

(assert (=> b!555059 (=> (not res!347620) (not e!319945))))

(assert (=> b!555059 (= res!347620 (and (= (size!17148 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17148 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17148 a!3118)) (not (= i!1132 j!142))))))

(declare-fun res!347624 () Bool)

(assert (=> start!50778 (=> (not res!347624) (not e!319945))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50778 (= res!347624 (validMask!0 mask!3119))))

(assert (=> start!50778 e!319945))

(assert (=> start!50778 true))

(declare-fun array_inv!12558 (array!34957) Bool)

(assert (=> start!50778 (array_inv!12558 a!3118)))

(assert (= (and start!50778 res!347624) b!555059))

(assert (= (and b!555059 res!347620) b!555057))

(assert (= (and b!555057 res!347627) b!555064))

(assert (= (and b!555064 res!347619) b!555058))

(assert (= (and b!555058 res!347626) b!555062))

(assert (= (and b!555062 res!347625) b!555061))

(assert (= (and b!555061 res!347621) b!555065))

(assert (= (and b!555065 res!347622) b!555063))

(assert (= (and b!555063 res!347623) b!555060))

(declare-fun m!532703 () Bool)

(assert (=> b!555063 m!532703))

(declare-fun m!532705 () Bool)

(assert (=> b!555063 m!532705))

(declare-fun m!532707 () Bool)

(assert (=> b!555063 m!532707))

(declare-fun m!532709 () Bool)

(assert (=> b!555063 m!532709))

(assert (=> b!555063 m!532707))

(assert (=> b!555063 m!532707))

(declare-fun m!532711 () Bool)

(assert (=> b!555063 m!532711))

(assert (=> b!555063 m!532703))

(declare-fun m!532713 () Bool)

(assert (=> b!555063 m!532713))

(assert (=> b!555063 m!532703))

(declare-fun m!532715 () Bool)

(assert (=> b!555063 m!532715))

(declare-fun m!532717 () Bool)

(assert (=> b!555064 m!532717))

(declare-fun m!532719 () Bool)

(assert (=> b!555061 m!532719))

(assert (=> b!555057 m!532707))

(assert (=> b!555057 m!532707))

(declare-fun m!532721 () Bool)

(assert (=> b!555057 m!532721))

(declare-fun m!532723 () Bool)

(assert (=> b!555065 m!532723))

(declare-fun m!532725 () Bool)

(assert (=> b!555058 m!532725))

(declare-fun m!532727 () Bool)

(assert (=> b!555062 m!532727))

(declare-fun m!532729 () Bool)

(assert (=> b!555060 m!532729))

(assert (=> b!555060 m!532707))

(declare-fun m!532731 () Bool)

(assert (=> b!555060 m!532731))

(declare-fun m!532733 () Bool)

(assert (=> b!555060 m!532733))

(assert (=> b!555060 m!532707))

(declare-fun m!532735 () Bool)

(assert (=> b!555060 m!532735))

(declare-fun m!532737 () Bool)

(assert (=> start!50778 m!532737))

(declare-fun m!532739 () Bool)

(assert (=> start!50778 m!532739))

(push 1)

