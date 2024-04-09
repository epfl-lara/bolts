; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!50716 () Bool)

(assert start!50716)

(declare-fun b!554207 () Bool)

(declare-fun res!346774 () Bool)

(declare-fun e!319574 () Bool)

(assert (=> b!554207 (=> (not res!346774) (not e!319574))))

(declare-datatypes ((array!34895 0))(
  ( (array!34896 (arr!16753 (Array (_ BitVec 32) (_ BitVec 64))) (size!17117 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34895)

(declare-datatypes ((List!10886 0))(
  ( (Nil!10883) (Cons!10882 (h!11867 (_ BitVec 64)) (t!17122 List!10886)) )
))
(declare-fun arrayNoDuplicates!0 (array!34895 (_ BitVec 32) List!10886) Bool)

(assert (=> b!554207 (= res!346774 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10883))))

(declare-fun res!346772 () Bool)

(declare-fun e!319575 () Bool)

(assert (=> start!50716 (=> (not res!346772) (not e!319575))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50716 (= res!346772 (validMask!0 mask!3119))))

(assert (=> start!50716 e!319575))

(assert (=> start!50716 true))

(declare-fun array_inv!12527 (array!34895) Bool)

(assert (=> start!50716 (array_inv!12527 a!3118)))

(declare-fun b!554208 () Bool)

(declare-fun res!346771 () Bool)

(assert (=> b!554208 (=> (not res!346771) (not e!319575))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!554208 (= res!346771 (validKeyInArray!0 k0!1914))))

(declare-fun b!554209 () Bool)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun e!319573 () Bool)

(declare-datatypes ((SeekEntryResult!5209 0))(
  ( (MissingZero!5209 (index!23063 (_ BitVec 32))) (Found!5209 (index!23064 (_ BitVec 32))) (Intermediate!5209 (undefined!6021 Bool) (index!23065 (_ BitVec 32)) (x!52006 (_ BitVec 32))) (Undefined!5209) (MissingVacant!5209 (index!23066 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34895 (_ BitVec 32)) SeekEntryResult!5209)

(assert (=> b!554209 (= e!319573 (= (seekEntryOrOpen!0 (select (arr!16753 a!3118) j!142) a!3118 mask!3119) (Found!5209 j!142)))))

(declare-fun b!554210 () Bool)

(assert (=> b!554210 (= e!319575 e!319574)))

(declare-fun res!346769 () Bool)

(assert (=> b!554210 (=> (not res!346769) (not e!319574))))

(declare-fun lt!251747 () SeekEntryResult!5209)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!554210 (= res!346769 (or (= lt!251747 (MissingZero!5209 i!1132)) (= lt!251747 (MissingVacant!5209 i!1132))))))

(assert (=> b!554210 (= lt!251747 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!554211 () Bool)

(declare-fun res!346775 () Bool)

(assert (=> b!554211 (=> (not res!346775) (not e!319575))))

(assert (=> b!554211 (= res!346775 (and (= (size!17117 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17117 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17117 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!554212 () Bool)

(declare-fun res!346778 () Bool)

(assert (=> b!554212 (=> (not res!346778) (not e!319574))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34895 (_ BitVec 32)) SeekEntryResult!5209)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!554212 (= res!346778 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16753 a!3118) j!142) mask!3119) (select (arr!16753 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16753 a!3118) i!1132 k0!1914) j!142) mask!3119) (select (store (arr!16753 a!3118) i!1132 k0!1914) j!142) (array!34896 (store (arr!16753 a!3118) i!1132 k0!1914) (size!17117 a!3118)) mask!3119)))))

(declare-fun b!554213 () Bool)

(assert (=> b!554213 (= e!319574 (not true))))

(assert (=> b!554213 e!319573))

(declare-fun res!346770 () Bool)

(assert (=> b!554213 (=> (not res!346770) (not e!319573))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34895 (_ BitVec 32)) Bool)

(assert (=> b!554213 (= res!346770 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17192 0))(
  ( (Unit!17193) )
))
(declare-fun lt!251746 () Unit!17192)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34895 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17192)

(assert (=> b!554213 (= lt!251746 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!554214 () Bool)

(declare-fun res!346773 () Bool)

(assert (=> b!554214 (=> (not res!346773) (not e!319575))))

(assert (=> b!554214 (= res!346773 (validKeyInArray!0 (select (arr!16753 a!3118) j!142)))))

(declare-fun b!554215 () Bool)

(declare-fun res!346777 () Bool)

(assert (=> b!554215 (=> (not res!346777) (not e!319574))))

(assert (=> b!554215 (= res!346777 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!554216 () Bool)

(declare-fun res!346776 () Bool)

(assert (=> b!554216 (=> (not res!346776) (not e!319575))))

(declare-fun arrayContainsKey!0 (array!34895 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!554216 (= res!346776 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(assert (= (and start!50716 res!346772) b!554211))

(assert (= (and b!554211 res!346775) b!554214))

(assert (= (and b!554214 res!346773) b!554208))

(assert (= (and b!554208 res!346771) b!554216))

(assert (= (and b!554216 res!346776) b!554210))

(assert (= (and b!554210 res!346769) b!554215))

(assert (= (and b!554215 res!346777) b!554207))

(assert (= (and b!554207 res!346774) b!554212))

(assert (= (and b!554212 res!346778) b!554213))

(assert (= (and b!554213 res!346770) b!554209))

(declare-fun m!531535 () Bool)

(assert (=> b!554212 m!531535))

(declare-fun m!531537 () Bool)

(assert (=> b!554212 m!531537))

(assert (=> b!554212 m!531535))

(declare-fun m!531539 () Bool)

(assert (=> b!554212 m!531539))

(declare-fun m!531541 () Bool)

(assert (=> b!554212 m!531541))

(assert (=> b!554212 m!531539))

(declare-fun m!531543 () Bool)

(assert (=> b!554212 m!531543))

(assert (=> b!554212 m!531537))

(assert (=> b!554212 m!531535))

(declare-fun m!531545 () Bool)

(assert (=> b!554212 m!531545))

(declare-fun m!531547 () Bool)

(assert (=> b!554212 m!531547))

(assert (=> b!554212 m!531539))

(assert (=> b!554212 m!531541))

(declare-fun m!531549 () Bool)

(assert (=> start!50716 m!531549))

(declare-fun m!531551 () Bool)

(assert (=> start!50716 m!531551))

(assert (=> b!554209 m!531535))

(assert (=> b!554209 m!531535))

(declare-fun m!531553 () Bool)

(assert (=> b!554209 m!531553))

(declare-fun m!531555 () Bool)

(assert (=> b!554210 m!531555))

(assert (=> b!554214 m!531535))

(assert (=> b!554214 m!531535))

(declare-fun m!531557 () Bool)

(assert (=> b!554214 m!531557))

(declare-fun m!531559 () Bool)

(assert (=> b!554208 m!531559))

(declare-fun m!531561 () Bool)

(assert (=> b!554213 m!531561))

(declare-fun m!531563 () Bool)

(assert (=> b!554213 m!531563))

(declare-fun m!531565 () Bool)

(assert (=> b!554216 m!531565))

(declare-fun m!531567 () Bool)

(assert (=> b!554215 m!531567))

(declare-fun m!531569 () Bool)

(assert (=> b!554207 m!531569))

(check-sat (not start!50716) (not b!554213) (not b!554212) (not b!554207) (not b!554208) (not b!554209) (not b!554210) (not b!554215) (not b!554216) (not b!554214))
(check-sat)
