; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!50674 () Bool)

(assert start!50674)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun e!319288 () Bool)

(declare-datatypes ((array!34853 0))(
  ( (array!34854 (arr!16732 (Array (_ BitVec 32) (_ BitVec 64))) (size!17096 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34853)

(declare-fun b!553568 () Bool)

(declare-datatypes ((SeekEntryResult!5188 0))(
  ( (MissingZero!5188 (index!22979 (_ BitVec 32))) (Found!5188 (index!22980 (_ BitVec 32))) (Intermediate!5188 (undefined!6000 Bool) (index!22981 (_ BitVec 32)) (x!51929 (_ BitVec 32))) (Undefined!5188) (MissingVacant!5188 (index!22982 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34853 (_ BitVec 32)) SeekEntryResult!5188)

(assert (=> b!553568 (= e!319288 (= (seekEntryOrOpen!0 (select (arr!16732 a!3118) j!142) a!3118 mask!3119) (Found!5188 j!142)))))

(declare-fun b!553569 () Bool)

(declare-fun res!346133 () Bool)

(declare-fun e!319285 () Bool)

(assert (=> b!553569 (=> (not res!346133) (not e!319285))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34853 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!553569 (= res!346133 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!553570 () Bool)

(declare-fun res!346135 () Bool)

(assert (=> b!553570 (=> (not res!346135) (not e!319285))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!553570 (= res!346135 (validKeyInArray!0 (select (arr!16732 a!3118) j!142)))))

(declare-fun b!553571 () Bool)

(declare-fun res!346138 () Bool)

(assert (=> b!553571 (=> (not res!346138) (not e!319285))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!553571 (= res!346138 (and (= (size!17096 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17096 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17096 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!553572 () Bool)

(declare-fun res!346134 () Bool)

(declare-fun e!319286 () Bool)

(assert (=> b!553572 (=> (not res!346134) (not e!319286))))

(declare-datatypes ((List!10865 0))(
  ( (Nil!10862) (Cons!10861 (h!11846 (_ BitVec 64)) (t!17101 List!10865)) )
))
(declare-fun arrayNoDuplicates!0 (array!34853 (_ BitVec 32) List!10865) Bool)

(assert (=> b!553572 (= res!346134 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10862))))

(declare-fun b!553573 () Bool)

(declare-fun res!346132 () Bool)

(assert (=> b!553573 (=> (not res!346132) (not e!319285))))

(assert (=> b!553573 (= res!346132 (validKeyInArray!0 k0!1914))))

(declare-fun b!553574 () Bool)

(declare-fun res!346131 () Bool)

(assert (=> b!553574 (=> (not res!346131) (not e!319286))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34853 (_ BitVec 32)) SeekEntryResult!5188)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!553574 (= res!346131 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16732 a!3118) j!142) mask!3119) (select (arr!16732 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16732 a!3118) i!1132 k0!1914) j!142) mask!3119) (select (store (arr!16732 a!3118) i!1132 k0!1914) j!142) (array!34854 (store (arr!16732 a!3118) i!1132 k0!1914) (size!17096 a!3118)) mask!3119)))))

(declare-fun b!553575 () Bool)

(assert (=> b!553575 (= e!319286 (not true))))

(assert (=> b!553575 e!319288))

(declare-fun res!346137 () Bool)

(assert (=> b!553575 (=> (not res!346137) (not e!319288))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34853 (_ BitVec 32)) Bool)

(assert (=> b!553575 (= res!346137 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17150 0))(
  ( (Unit!17151) )
))
(declare-fun lt!251539 () Unit!17150)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34853 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17150)

(assert (=> b!553575 (= lt!251539 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun res!346139 () Bool)

(assert (=> start!50674 (=> (not res!346139) (not e!319285))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50674 (= res!346139 (validMask!0 mask!3119))))

(assert (=> start!50674 e!319285))

(assert (=> start!50674 true))

(declare-fun array_inv!12506 (array!34853) Bool)

(assert (=> start!50674 (array_inv!12506 a!3118)))

(declare-fun b!553576 () Bool)

(declare-fun res!346136 () Bool)

(assert (=> b!553576 (=> (not res!346136) (not e!319286))))

(assert (=> b!553576 (= res!346136 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!553577 () Bool)

(assert (=> b!553577 (= e!319285 e!319286)))

(declare-fun res!346130 () Bool)

(assert (=> b!553577 (=> (not res!346130) (not e!319286))))

(declare-fun lt!251540 () SeekEntryResult!5188)

(assert (=> b!553577 (= res!346130 (or (= lt!251540 (MissingZero!5188 i!1132)) (= lt!251540 (MissingVacant!5188 i!1132))))))

(assert (=> b!553577 (= lt!251540 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(assert (= (and start!50674 res!346139) b!553571))

(assert (= (and b!553571 res!346138) b!553570))

(assert (= (and b!553570 res!346135) b!553573))

(assert (= (and b!553573 res!346132) b!553569))

(assert (= (and b!553569 res!346133) b!553577))

(assert (= (and b!553577 res!346130) b!553576))

(assert (= (and b!553576 res!346136) b!553572))

(assert (= (and b!553572 res!346134) b!553574))

(assert (= (and b!553574 res!346131) b!553575))

(assert (= (and b!553575 res!346137) b!553568))

(declare-fun m!530755 () Bool)

(assert (=> start!50674 m!530755))

(declare-fun m!530757 () Bool)

(assert (=> start!50674 m!530757))

(declare-fun m!530759 () Bool)

(assert (=> b!553569 m!530759))

(declare-fun m!530761 () Bool)

(assert (=> b!553574 m!530761))

(declare-fun m!530763 () Bool)

(assert (=> b!553574 m!530763))

(assert (=> b!553574 m!530761))

(declare-fun m!530765 () Bool)

(assert (=> b!553574 m!530765))

(declare-fun m!530767 () Bool)

(assert (=> b!553574 m!530767))

(assert (=> b!553574 m!530765))

(declare-fun m!530769 () Bool)

(assert (=> b!553574 m!530769))

(assert (=> b!553574 m!530763))

(assert (=> b!553574 m!530761))

(declare-fun m!530771 () Bool)

(assert (=> b!553574 m!530771))

(declare-fun m!530773 () Bool)

(assert (=> b!553574 m!530773))

(assert (=> b!553574 m!530765))

(assert (=> b!553574 m!530767))

(declare-fun m!530775 () Bool)

(assert (=> b!553573 m!530775))

(declare-fun m!530777 () Bool)

(assert (=> b!553575 m!530777))

(declare-fun m!530779 () Bool)

(assert (=> b!553575 m!530779))

(declare-fun m!530781 () Bool)

(assert (=> b!553577 m!530781))

(declare-fun m!530783 () Bool)

(assert (=> b!553576 m!530783))

(assert (=> b!553570 m!530761))

(assert (=> b!553570 m!530761))

(declare-fun m!530785 () Bool)

(assert (=> b!553570 m!530785))

(declare-fun m!530787 () Bool)

(assert (=> b!553572 m!530787))

(assert (=> b!553568 m!530761))

(assert (=> b!553568 m!530761))

(declare-fun m!530789 () Bool)

(assert (=> b!553568 m!530789))

(check-sat (not b!553572) (not b!553576) (not b!553573) (not b!553574) (not b!553570) (not b!553569) (not start!50674) (not b!553577) (not b!553575) (not b!553568))
(check-sat)
