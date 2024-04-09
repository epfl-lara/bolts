; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!50140 () Bool)

(assert start!50140)

(declare-fun b!548740 () Bool)

(declare-fun e!316990 () Bool)

(declare-fun mask!3119 () (_ BitVec 32))

(assert (=> b!548740 (= e!316990 (bvslt mask!3119 #b00000000000000000000000000000000))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun lt!249926 () (_ BitVec 32))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!34592 0))(
  ( (array!34593 (arr!16609 (Array (_ BitVec 32) (_ BitVec 64))) (size!16973 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34592)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!548740 (= lt!249926 (toIndex!0 (select (store (arr!16609 a!3118) i!1132 k0!1914) j!142) mask!3119))))

(declare-fun b!548741 () Bool)

(declare-fun e!316989 () Bool)

(assert (=> b!548741 (= e!316989 e!316990)))

(declare-fun res!342124 () Bool)

(assert (=> b!548741 (=> (not res!342124) (not e!316990))))

(declare-datatypes ((SeekEntryResult!5065 0))(
  ( (MissingZero!5065 (index!22487 (_ BitVec 32))) (Found!5065 (index!22488 (_ BitVec 32))) (Intermediate!5065 (undefined!5877 Bool) (index!22489 (_ BitVec 32)) (x!51451 (_ BitVec 32))) (Undefined!5065) (MissingVacant!5065 (index!22490 (_ BitVec 32))) )
))
(declare-fun lt!249925 () SeekEntryResult!5065)

(assert (=> b!548741 (= res!342124 (or (= lt!249925 (MissingZero!5065 i!1132)) (= lt!249925 (MissingVacant!5065 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34592 (_ BitVec 32)) SeekEntryResult!5065)

(assert (=> b!548741 (= lt!249925 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!548742 () Bool)

(declare-fun res!342121 () Bool)

(assert (=> b!548742 (=> (not res!342121) (not e!316989))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!548742 (= res!342121 (validKeyInArray!0 (select (arr!16609 a!3118) j!142)))))

(declare-fun b!548743 () Bool)

(declare-fun res!342123 () Bool)

(assert (=> b!548743 (=> (not res!342123) (not e!316989))))

(assert (=> b!548743 (= res!342123 (validKeyInArray!0 k0!1914))))

(declare-fun res!342126 () Bool)

(assert (=> start!50140 (=> (not res!342126) (not e!316989))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50140 (= res!342126 (validMask!0 mask!3119))))

(assert (=> start!50140 e!316989))

(assert (=> start!50140 true))

(declare-fun array_inv!12383 (array!34592) Bool)

(assert (=> start!50140 (array_inv!12383 a!3118)))

(declare-fun b!548744 () Bool)

(declare-fun res!342122 () Bool)

(assert (=> b!548744 (=> (not res!342122) (not e!316990))))

(declare-datatypes ((List!10742 0))(
  ( (Nil!10739) (Cons!10738 (h!11708 (_ BitVec 64)) (t!16978 List!10742)) )
))
(declare-fun arrayNoDuplicates!0 (array!34592 (_ BitVec 32) List!10742) Bool)

(assert (=> b!548744 (= res!342122 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10739))))

(declare-fun b!548745 () Bool)

(declare-fun res!342128 () Bool)

(assert (=> b!548745 (=> (not res!342128) (not e!316989))))

(declare-fun arrayContainsKey!0 (array!34592 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!548745 (= res!342128 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!548746 () Bool)

(declare-fun res!342127 () Bool)

(assert (=> b!548746 (=> (not res!342127) (not e!316989))))

(assert (=> b!548746 (= res!342127 (and (= (size!16973 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!16973 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!16973 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!548747 () Bool)

(declare-fun res!342125 () Bool)

(assert (=> b!548747 (=> (not res!342125) (not e!316990))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34592 (_ BitVec 32)) Bool)

(assert (=> b!548747 (= res!342125 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(assert (= (and start!50140 res!342126) b!548746))

(assert (= (and b!548746 res!342127) b!548742))

(assert (= (and b!548742 res!342121) b!548743))

(assert (= (and b!548743 res!342123) b!548745))

(assert (= (and b!548745 res!342128) b!548741))

(assert (= (and b!548741 res!342124) b!548747))

(assert (= (and b!548747 res!342125) b!548744))

(assert (= (and b!548744 res!342122) b!548740))

(declare-fun m!525685 () Bool)

(assert (=> b!548747 m!525685))

(declare-fun m!525687 () Bool)

(assert (=> b!548745 m!525687))

(declare-fun m!525689 () Bool)

(assert (=> b!548743 m!525689))

(declare-fun m!525691 () Bool)

(assert (=> b!548744 m!525691))

(declare-fun m!525693 () Bool)

(assert (=> b!548742 m!525693))

(assert (=> b!548742 m!525693))

(declare-fun m!525695 () Bool)

(assert (=> b!548742 m!525695))

(declare-fun m!525697 () Bool)

(assert (=> start!50140 m!525697))

(declare-fun m!525699 () Bool)

(assert (=> start!50140 m!525699))

(declare-fun m!525701 () Bool)

(assert (=> b!548741 m!525701))

(declare-fun m!525703 () Bool)

(assert (=> b!548740 m!525703))

(declare-fun m!525705 () Bool)

(assert (=> b!548740 m!525705))

(assert (=> b!548740 m!525705))

(declare-fun m!525707 () Bool)

(assert (=> b!548740 m!525707))

(check-sat (not b!548743) (not b!548741) (not b!548744) (not b!548742) (not b!548747) (not b!548745) (not start!50140) (not b!548740))
(check-sat)
