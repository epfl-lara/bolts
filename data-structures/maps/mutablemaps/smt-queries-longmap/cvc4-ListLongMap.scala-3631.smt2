; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50136 () Bool)

(assert start!50136)

(declare-fun b!548692 () Bool)

(declare-fun e!316970 () Bool)

(declare-fun e!316971 () Bool)

(assert (=> b!548692 (= e!316970 e!316971)))

(declare-fun res!342079 () Bool)

(assert (=> b!548692 (=> (not res!342079) (not e!316971))))

(declare-datatypes ((SeekEntryResult!5063 0))(
  ( (MissingZero!5063 (index!22479 (_ BitVec 32))) (Found!5063 (index!22480 (_ BitVec 32))) (Intermediate!5063 (undefined!5875 Bool) (index!22481 (_ BitVec 32)) (x!51441 (_ BitVec 32))) (Undefined!5063) (MissingVacant!5063 (index!22482 (_ BitVec 32))) )
))
(declare-fun lt!249913 () SeekEntryResult!5063)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!548692 (= res!342079 (or (= lt!249913 (MissingZero!5063 i!1132)) (= lt!249913 (MissingVacant!5063 i!1132))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun k!1914 () (_ BitVec 64))

(declare-datatypes ((array!34588 0))(
  ( (array!34589 (arr!16607 (Array (_ BitVec 32) (_ BitVec 64))) (size!16971 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34588)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34588 (_ BitVec 32)) SeekEntryResult!5063)

(assert (=> b!548692 (= lt!249913 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun res!342077 () Bool)

(assert (=> start!50136 (=> (not res!342077) (not e!316970))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50136 (= res!342077 (validMask!0 mask!3119))))

(assert (=> start!50136 e!316970))

(assert (=> start!50136 true))

(declare-fun array_inv!12381 (array!34588) Bool)

(assert (=> start!50136 (array_inv!12381 a!3118)))

(declare-fun b!548693 () Bool)

(declare-fun res!342074 () Bool)

(assert (=> b!548693 (=> (not res!342074) (not e!316970))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!548693 (= res!342074 (validKeyInArray!0 (select (arr!16607 a!3118) j!142)))))

(declare-fun b!548694 () Bool)

(declare-fun res!342080 () Bool)

(assert (=> b!548694 (=> (not res!342080) (not e!316970))))

(declare-fun arrayContainsKey!0 (array!34588 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!548694 (= res!342080 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!548695 () Bool)

(assert (=> b!548695 (= e!316971 false)))

(declare-fun lt!249914 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!548695 (= lt!249914 (toIndex!0 (select (store (arr!16607 a!3118) i!1132 k!1914) j!142) mask!3119))))

(declare-fun b!548696 () Bool)

(declare-fun res!342076 () Bool)

(assert (=> b!548696 (=> (not res!342076) (not e!316970))))

(assert (=> b!548696 (= res!342076 (and (= (size!16971 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!16971 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!16971 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!548697 () Bool)

(declare-fun res!342075 () Bool)

(assert (=> b!548697 (=> (not res!342075) (not e!316971))))

(declare-datatypes ((List!10740 0))(
  ( (Nil!10737) (Cons!10736 (h!11706 (_ BitVec 64)) (t!16976 List!10740)) )
))
(declare-fun arrayNoDuplicates!0 (array!34588 (_ BitVec 32) List!10740) Bool)

(assert (=> b!548697 (= res!342075 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10737))))

(declare-fun b!548698 () Bool)

(declare-fun res!342073 () Bool)

(assert (=> b!548698 (=> (not res!342073) (not e!316970))))

(assert (=> b!548698 (= res!342073 (validKeyInArray!0 k!1914))))

(declare-fun b!548699 () Bool)

(declare-fun res!342078 () Bool)

(assert (=> b!548699 (=> (not res!342078) (not e!316971))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34588 (_ BitVec 32)) Bool)

(assert (=> b!548699 (= res!342078 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(assert (= (and start!50136 res!342077) b!548696))

(assert (= (and b!548696 res!342076) b!548693))

(assert (= (and b!548693 res!342074) b!548698))

(assert (= (and b!548698 res!342073) b!548694))

(assert (= (and b!548694 res!342080) b!548692))

(assert (= (and b!548692 res!342079) b!548699))

(assert (= (and b!548699 res!342078) b!548697))

(assert (= (and b!548697 res!342075) b!548695))

(declare-fun m!525637 () Bool)

(assert (=> b!548698 m!525637))

(declare-fun m!525639 () Bool)

(assert (=> start!50136 m!525639))

(declare-fun m!525641 () Bool)

(assert (=> start!50136 m!525641))

(declare-fun m!525643 () Bool)

(assert (=> b!548697 m!525643))

(declare-fun m!525645 () Bool)

(assert (=> b!548694 m!525645))

(declare-fun m!525647 () Bool)

(assert (=> b!548695 m!525647))

(declare-fun m!525649 () Bool)

(assert (=> b!548695 m!525649))

(assert (=> b!548695 m!525649))

(declare-fun m!525651 () Bool)

(assert (=> b!548695 m!525651))

(declare-fun m!525653 () Bool)

(assert (=> b!548693 m!525653))

(assert (=> b!548693 m!525653))

(declare-fun m!525655 () Bool)

(assert (=> b!548693 m!525655))

(declare-fun m!525657 () Bool)

(assert (=> b!548699 m!525657))

(declare-fun m!525659 () Bool)

(assert (=> b!548692 m!525659))

(push 1)

(assert (not start!50136))

(assert (not b!548693))

(assert (not b!548694))

(assert (not b!548695))

(assert (not b!548698))

(assert (not b!548697))

(assert (not b!548692))

(assert (not b!548699))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

