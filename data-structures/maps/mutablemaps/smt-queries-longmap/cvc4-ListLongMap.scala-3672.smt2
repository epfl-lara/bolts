; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50670 () Bool)

(assert start!50670)

(declare-fun b!553508 () Bool)

(declare-fun res!346076 () Bool)

(declare-fun e!319262 () Bool)

(assert (=> b!553508 (=> (not res!346076) (not e!319262))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!34849 0))(
  ( (array!34850 (arr!16730 (Array (_ BitVec 32) (_ BitVec 64))) (size!17094 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34849)

(declare-datatypes ((SeekEntryResult!5186 0))(
  ( (MissingZero!5186 (index!22971 (_ BitVec 32))) (Found!5186 (index!22972 (_ BitVec 32))) (Intermediate!5186 (undefined!5998 Bool) (index!22973 (_ BitVec 32)) (x!51919 (_ BitVec 32))) (Undefined!5186) (MissingVacant!5186 (index!22974 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34849 (_ BitVec 32)) SeekEntryResult!5186)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!553508 (= res!346076 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16730 a!3118) j!142) mask!3119) (select (arr!16730 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16730 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!16730 a!3118) i!1132 k!1914) j!142) (array!34850 (store (arr!16730 a!3118) i!1132 k!1914) (size!17094 a!3118)) mask!3119)))))

(declare-fun b!553509 () Bool)

(declare-fun res!346073 () Bool)

(declare-fun e!319263 () Bool)

(assert (=> b!553509 (=> (not res!346073) (not e!319263))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!553509 (= res!346073 (validKeyInArray!0 (select (arr!16730 a!3118) j!142)))))

(declare-fun b!553510 () Bool)

(assert (=> b!553510 (= e!319262 (not true))))

(declare-fun e!319264 () Bool)

(assert (=> b!553510 e!319264))

(declare-fun res!346072 () Bool)

(assert (=> b!553510 (=> (not res!346072) (not e!319264))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34849 (_ BitVec 32)) Bool)

(assert (=> b!553510 (= res!346072 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17146 0))(
  ( (Unit!17147) )
))
(declare-fun lt!251528 () Unit!17146)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34849 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17146)

(assert (=> b!553510 (= lt!251528 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!553511 () Bool)

(declare-fun res!346074 () Bool)

(assert (=> b!553511 (=> (not res!346074) (not e!319263))))

(assert (=> b!553511 (= res!346074 (validKeyInArray!0 k!1914))))

(declare-fun b!553512 () Bool)

(declare-fun res!346078 () Bool)

(assert (=> b!553512 (=> (not res!346078) (not e!319263))))

(declare-fun arrayContainsKey!0 (array!34849 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!553512 (= res!346078 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!553513 () Bool)

(declare-fun res!346079 () Bool)

(assert (=> b!553513 (=> (not res!346079) (not e!319263))))

(assert (=> b!553513 (= res!346079 (and (= (size!17094 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17094 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17094 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!553514 () Bool)

(declare-fun res!346077 () Bool)

(assert (=> b!553514 (=> (not res!346077) (not e!319262))))

(assert (=> b!553514 (= res!346077 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!553515 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34849 (_ BitVec 32)) SeekEntryResult!5186)

(assert (=> b!553515 (= e!319264 (= (seekEntryOrOpen!0 (select (arr!16730 a!3118) j!142) a!3118 mask!3119) (Found!5186 j!142)))))

(declare-fun res!346071 () Bool)

(assert (=> start!50670 (=> (not res!346071) (not e!319263))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50670 (= res!346071 (validMask!0 mask!3119))))

(assert (=> start!50670 e!319263))

(assert (=> start!50670 true))

(declare-fun array_inv!12504 (array!34849) Bool)

(assert (=> start!50670 (array_inv!12504 a!3118)))

(declare-fun b!553516 () Bool)

(assert (=> b!553516 (= e!319263 e!319262)))

(declare-fun res!346070 () Bool)

(assert (=> b!553516 (=> (not res!346070) (not e!319262))))

(declare-fun lt!251527 () SeekEntryResult!5186)

(assert (=> b!553516 (= res!346070 (or (= lt!251527 (MissingZero!5186 i!1132)) (= lt!251527 (MissingVacant!5186 i!1132))))))

(assert (=> b!553516 (= lt!251527 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!553517 () Bool)

(declare-fun res!346075 () Bool)

(assert (=> b!553517 (=> (not res!346075) (not e!319262))))

(declare-datatypes ((List!10863 0))(
  ( (Nil!10860) (Cons!10859 (h!11844 (_ BitVec 64)) (t!17099 List!10863)) )
))
(declare-fun arrayNoDuplicates!0 (array!34849 (_ BitVec 32) List!10863) Bool)

(assert (=> b!553517 (= res!346075 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10860))))

(assert (= (and start!50670 res!346071) b!553513))

(assert (= (and b!553513 res!346079) b!553509))

(assert (= (and b!553509 res!346073) b!553511))

(assert (= (and b!553511 res!346074) b!553512))

(assert (= (and b!553512 res!346078) b!553516))

(assert (= (and b!553516 res!346070) b!553514))

(assert (= (and b!553514 res!346077) b!553517))

(assert (= (and b!553517 res!346075) b!553508))

(assert (= (and b!553508 res!346076) b!553510))

(assert (= (and b!553510 res!346072) b!553515))

(declare-fun m!530683 () Bool)

(assert (=> b!553512 m!530683))

(declare-fun m!530685 () Bool)

(assert (=> b!553510 m!530685))

(declare-fun m!530687 () Bool)

(assert (=> b!553510 m!530687))

(declare-fun m!530689 () Bool)

(assert (=> start!50670 m!530689))

(declare-fun m!530691 () Bool)

(assert (=> start!50670 m!530691))

(declare-fun m!530693 () Bool)

(assert (=> b!553514 m!530693))

(declare-fun m!530695 () Bool)

(assert (=> b!553515 m!530695))

(assert (=> b!553515 m!530695))

(declare-fun m!530697 () Bool)

(assert (=> b!553515 m!530697))

(declare-fun m!530699 () Bool)

(assert (=> b!553511 m!530699))

(declare-fun m!530701 () Bool)

(assert (=> b!553517 m!530701))

(assert (=> b!553509 m!530695))

(assert (=> b!553509 m!530695))

(declare-fun m!530703 () Bool)

(assert (=> b!553509 m!530703))

(declare-fun m!530705 () Bool)

(assert (=> b!553516 m!530705))

(assert (=> b!553508 m!530695))

(declare-fun m!530707 () Bool)

(assert (=> b!553508 m!530707))

(assert (=> b!553508 m!530695))

(declare-fun m!530709 () Bool)

(assert (=> b!553508 m!530709))

(declare-fun m!530711 () Bool)

(assert (=> b!553508 m!530711))

(assert (=> b!553508 m!530709))

(declare-fun m!530713 () Bool)

(assert (=> b!553508 m!530713))

(assert (=> b!553508 m!530707))

(assert (=> b!553508 m!530695))

(declare-fun m!530715 () Bool)

(assert (=> b!553508 m!530715))

(declare-fun m!530717 () Bool)

(assert (=> b!553508 m!530717))

(assert (=> b!553508 m!530709))

(assert (=> b!553508 m!530711))

(push 1)

