; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!50146 () Bool)

(assert start!50146)

(declare-fun b!548812 () Bool)

(declare-fun res!342200 () Bool)

(declare-fun e!317015 () Bool)

(assert (=> b!548812 (=> (not res!342200) (not e!317015))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!34598 0))(
  ( (array!34599 (arr!16612 (Array (_ BitVec 32) (_ BitVec 64))) (size!16976 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34598)

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!548812 (= res!342200 (and (= (size!16976 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!16976 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!16976 a!3118)) (not (= i!1132 j!142))))))

(declare-fun res!342194 () Bool)

(assert (=> start!50146 (=> (not res!342194) (not e!317015))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50146 (= res!342194 (validMask!0 mask!3119))))

(assert (=> start!50146 e!317015))

(assert (=> start!50146 true))

(declare-fun array_inv!12386 (array!34598) Bool)

(assert (=> start!50146 (array_inv!12386 a!3118)))

(declare-fun b!548813 () Bool)

(declare-fun e!317017 () Bool)

(assert (=> b!548813 (= e!317015 e!317017)))

(declare-fun res!342199 () Bool)

(assert (=> b!548813 (=> (not res!342199) (not e!317017))))

(declare-datatypes ((SeekEntryResult!5068 0))(
  ( (MissingZero!5068 (index!22499 (_ BitVec 32))) (Found!5068 (index!22500 (_ BitVec 32))) (Intermediate!5068 (undefined!5880 Bool) (index!22501 (_ BitVec 32)) (x!51462 (_ BitVec 32))) (Undefined!5068) (MissingVacant!5068 (index!22502 (_ BitVec 32))) )
))
(declare-fun lt!249943 () SeekEntryResult!5068)

(assert (=> b!548813 (= res!342199 (or (= lt!249943 (MissingZero!5068 i!1132)) (= lt!249943 (MissingVacant!5068 i!1132))))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34598 (_ BitVec 32)) SeekEntryResult!5068)

(assert (=> b!548813 (= lt!249943 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!548814 () Bool)

(declare-fun res!342197 () Bool)

(assert (=> b!548814 (=> (not res!342197) (not e!317015))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!548814 (= res!342197 (validKeyInArray!0 k0!1914))))

(declare-fun b!548815 () Bool)

(declare-fun res!342198 () Bool)

(assert (=> b!548815 (=> (not res!342198) (not e!317017))))

(declare-datatypes ((List!10745 0))(
  ( (Nil!10742) (Cons!10741 (h!11711 (_ BitVec 64)) (t!16981 List!10745)) )
))
(declare-fun arrayNoDuplicates!0 (array!34598 (_ BitVec 32) List!10745) Bool)

(assert (=> b!548815 (= res!342198 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10742))))

(declare-fun b!548816 () Bool)

(declare-fun res!342193 () Bool)

(assert (=> b!548816 (=> (not res!342193) (not e!317017))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34598 (_ BitVec 32)) Bool)

(assert (=> b!548816 (= res!342193 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!548817 () Bool)

(declare-fun res!342195 () Bool)

(assert (=> b!548817 (=> (not res!342195) (not e!317015))))

(declare-fun arrayContainsKey!0 (array!34598 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!548817 (= res!342195 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!548818 () Bool)

(declare-fun res!342196 () Bool)

(assert (=> b!548818 (=> (not res!342196) (not e!317015))))

(assert (=> b!548818 (= res!342196 (validKeyInArray!0 (select (arr!16612 a!3118) j!142)))))

(declare-fun b!548819 () Bool)

(assert (=> b!548819 (= e!317017 false)))

(declare-fun lt!249944 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!548819 (= lt!249944 (toIndex!0 (select (store (arr!16612 a!3118) i!1132 k0!1914) j!142) mask!3119))))

(assert (= (and start!50146 res!342194) b!548812))

(assert (= (and b!548812 res!342200) b!548818))

(assert (= (and b!548818 res!342196) b!548814))

(assert (= (and b!548814 res!342197) b!548817))

(assert (= (and b!548817 res!342195) b!548813))

(assert (= (and b!548813 res!342199) b!548816))

(assert (= (and b!548816 res!342193) b!548815))

(assert (= (and b!548815 res!342198) b!548819))

(declare-fun m!525757 () Bool)

(assert (=> b!548816 m!525757))

(declare-fun m!525759 () Bool)

(assert (=> b!548813 m!525759))

(declare-fun m!525761 () Bool)

(assert (=> b!548818 m!525761))

(assert (=> b!548818 m!525761))

(declare-fun m!525763 () Bool)

(assert (=> b!548818 m!525763))

(declare-fun m!525765 () Bool)

(assert (=> start!50146 m!525765))

(declare-fun m!525767 () Bool)

(assert (=> start!50146 m!525767))

(declare-fun m!525769 () Bool)

(assert (=> b!548817 m!525769))

(declare-fun m!525771 () Bool)

(assert (=> b!548814 m!525771))

(declare-fun m!525773 () Bool)

(assert (=> b!548819 m!525773))

(declare-fun m!525775 () Bool)

(assert (=> b!548819 m!525775))

(assert (=> b!548819 m!525775))

(declare-fun m!525777 () Bool)

(assert (=> b!548819 m!525777))

(declare-fun m!525779 () Bool)

(assert (=> b!548815 m!525779))

(check-sat (not b!548813) (not b!548817) (not start!50146) (not b!548815) (not b!548814) (not b!548818) (not b!548816) (not b!548819))
(check-sat)
