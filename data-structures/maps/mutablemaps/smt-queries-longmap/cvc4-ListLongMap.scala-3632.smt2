; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50142 () Bool)

(assert start!50142)

(declare-fun b!548764 () Bool)

(declare-fun res!342146 () Bool)

(declare-fun e!316998 () Bool)

(assert (=> b!548764 (=> (not res!342146) (not e!316998))))

(declare-datatypes ((array!34594 0))(
  ( (array!34595 (arr!16610 (Array (_ BitVec 32) (_ BitVec 64))) (size!16974 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34594)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34594 (_ BitVec 32)) Bool)

(assert (=> b!548764 (= res!342146 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun res!342150 () Bool)

(declare-fun e!316999 () Bool)

(assert (=> start!50142 (=> (not res!342150) (not e!316999))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50142 (= res!342150 (validMask!0 mask!3119))))

(assert (=> start!50142 e!316999))

(assert (=> start!50142 true))

(declare-fun array_inv!12384 (array!34594) Bool)

(assert (=> start!50142 (array_inv!12384 a!3118)))

(declare-fun b!548765 () Bool)

(declare-fun res!342148 () Bool)

(assert (=> b!548765 (=> (not res!342148) (not e!316999))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!548765 (= res!342148 (and (= (size!16974 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!16974 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!16974 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!548766 () Bool)

(declare-fun res!342149 () Bool)

(assert (=> b!548766 (=> (not res!342149) (not e!316999))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34594 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!548766 (= res!342149 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!548767 () Bool)

(declare-fun res!342145 () Bool)

(assert (=> b!548767 (=> (not res!342145) (not e!316998))))

(declare-datatypes ((List!10743 0))(
  ( (Nil!10740) (Cons!10739 (h!11709 (_ BitVec 64)) (t!16979 List!10743)) )
))
(declare-fun arrayNoDuplicates!0 (array!34594 (_ BitVec 32) List!10743) Bool)

(assert (=> b!548767 (= res!342145 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10740))))

(declare-fun b!548768 () Bool)

(assert (=> b!548768 (= e!316998 (bvslt mask!3119 #b00000000000000000000000000000000))))

(declare-fun lt!249931 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!548768 (= lt!249931 (toIndex!0 (select (store (arr!16610 a!3118) i!1132 k!1914) j!142) mask!3119))))

(declare-fun b!548769 () Bool)

(declare-fun res!342151 () Bool)

(assert (=> b!548769 (=> (not res!342151) (not e!316999))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!548769 (= res!342151 (validKeyInArray!0 (select (arr!16610 a!3118) j!142)))))

(declare-fun b!548770 () Bool)

(assert (=> b!548770 (= e!316999 e!316998)))

(declare-fun res!342147 () Bool)

(assert (=> b!548770 (=> (not res!342147) (not e!316998))))

(declare-datatypes ((SeekEntryResult!5066 0))(
  ( (MissingZero!5066 (index!22491 (_ BitVec 32))) (Found!5066 (index!22492 (_ BitVec 32))) (Intermediate!5066 (undefined!5878 Bool) (index!22493 (_ BitVec 32)) (x!51452 (_ BitVec 32))) (Undefined!5066) (MissingVacant!5066 (index!22494 (_ BitVec 32))) )
))
(declare-fun lt!249932 () SeekEntryResult!5066)

(assert (=> b!548770 (= res!342147 (or (= lt!249932 (MissingZero!5066 i!1132)) (= lt!249932 (MissingVacant!5066 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34594 (_ BitVec 32)) SeekEntryResult!5066)

(assert (=> b!548770 (= lt!249932 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!548771 () Bool)

(declare-fun res!342152 () Bool)

(assert (=> b!548771 (=> (not res!342152) (not e!316999))))

(assert (=> b!548771 (= res!342152 (validKeyInArray!0 k!1914))))

(assert (= (and start!50142 res!342150) b!548765))

(assert (= (and b!548765 res!342148) b!548769))

(assert (= (and b!548769 res!342151) b!548771))

(assert (= (and b!548771 res!342152) b!548766))

(assert (= (and b!548766 res!342149) b!548770))

(assert (= (and b!548770 res!342147) b!548764))

(assert (= (and b!548764 res!342146) b!548767))

(assert (= (and b!548767 res!342145) b!548768))

(declare-fun m!525709 () Bool)

(assert (=> b!548769 m!525709))

(assert (=> b!548769 m!525709))

(declare-fun m!525711 () Bool)

(assert (=> b!548769 m!525711))

(declare-fun m!525713 () Bool)

(assert (=> b!548771 m!525713))

(declare-fun m!525715 () Bool)

(assert (=> start!50142 m!525715))

(declare-fun m!525717 () Bool)

(assert (=> start!50142 m!525717))

(declare-fun m!525719 () Bool)

(assert (=> b!548770 m!525719))

(declare-fun m!525721 () Bool)

(assert (=> b!548764 m!525721))

(declare-fun m!525723 () Bool)

(assert (=> b!548767 m!525723))

(declare-fun m!525725 () Bool)

(assert (=> b!548766 m!525725))

(declare-fun m!525727 () Bool)

(assert (=> b!548768 m!525727))

(declare-fun m!525729 () Bool)

(assert (=> b!548768 m!525729))

(assert (=> b!548768 m!525729))

(declare-fun m!525731 () Bool)

(assert (=> b!548768 m!525731))

(push 1)

(assert (not b!548766))

(assert (not b!548770))

(assert (not b!548768))

(assert (not b!548764))

(assert (not start!50142))

