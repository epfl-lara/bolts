; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!50356 () Bool)

(assert start!50356)

(declare-fun b!550607 () Bool)

(declare-fun res!343721 () Bool)

(declare-fun e!317820 () Bool)

(assert (=> b!550607 (=> (not res!343721) (not e!317820))))

(declare-datatypes ((array!34706 0))(
  ( (array!34707 (arr!16663 (Array (_ BitVec 32) (_ BitVec 64))) (size!17027 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34706)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34706 (_ BitVec 32)) Bool)

(assert (=> b!550607 (= res!343721 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun e!317818 () Bool)

(declare-fun b!550608 () Bool)

(declare-datatypes ((SeekEntryResult!5119 0))(
  ( (MissingZero!5119 (index!22703 (_ BitVec 32))) (Found!5119 (index!22704 (_ BitVec 32))) (Intermediate!5119 (undefined!5931 Bool) (index!22705 (_ BitVec 32)) (x!51658 (_ BitVec 32))) (Undefined!5119) (MissingVacant!5119 (index!22706 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34706 (_ BitVec 32)) SeekEntryResult!5119)

(assert (=> b!550608 (= e!317818 (= (seekEntryOrOpen!0 (select (arr!16663 a!3118) j!142) a!3118 mask!3119) (Found!5119 j!142)))))

(declare-fun res!343723 () Bool)

(declare-fun e!317819 () Bool)

(assert (=> start!50356 (=> (not res!343723) (not e!317819))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50356 (= res!343723 (validMask!0 mask!3119))))

(assert (=> start!50356 e!317819))

(assert (=> start!50356 true))

(declare-fun array_inv!12437 (array!34706) Bool)

(assert (=> start!50356 (array_inv!12437 a!3118)))

(declare-fun b!550609 () Bool)

(declare-fun res!343722 () Bool)

(assert (=> b!550609 (=> (not res!343722) (not e!317819))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!550609 (= res!343722 (and (= (size!17027 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17027 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17027 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!550610 () Bool)

(declare-fun res!343725 () Bool)

(assert (=> b!550610 (=> (not res!343725) (not e!317820))))

(declare-datatypes ((List!10796 0))(
  ( (Nil!10793) (Cons!10792 (h!11768 (_ BitVec 64)) (t!17032 List!10796)) )
))
(declare-fun arrayNoDuplicates!0 (array!34706 (_ BitVec 32) List!10796) Bool)

(assert (=> b!550610 (= res!343725 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10793))))

(declare-fun b!550611 () Bool)

(assert (=> b!550611 (= e!317820 (not true))))

(assert (=> b!550611 e!317818))

(declare-fun res!343727 () Bool)

(assert (=> b!550611 (=> (not res!343727) (not e!317818))))

(assert (=> b!550611 (= res!343727 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17012 0))(
  ( (Unit!17013) )
))
(declare-fun lt!250586 () Unit!17012)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34706 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17012)

(assert (=> b!550611 (= lt!250586 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!550612 () Bool)

(declare-fun res!343726 () Bool)

(assert (=> b!550612 (=> (not res!343726) (not e!317819))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!550612 (= res!343726 (validKeyInArray!0 (select (arr!16663 a!3118) j!142)))))

(declare-fun b!550613 () Bool)

(assert (=> b!550613 (= e!317819 e!317820)))

(declare-fun res!343718 () Bool)

(assert (=> b!550613 (=> (not res!343718) (not e!317820))))

(declare-fun lt!250585 () SeekEntryResult!5119)

(assert (=> b!550613 (= res!343718 (or (= lt!250585 (MissingZero!5119 i!1132)) (= lt!250585 (MissingVacant!5119 i!1132))))))

(declare-fun k0!1914 () (_ BitVec 64))

(assert (=> b!550613 (= lt!250585 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!550614 () Bool)

(declare-fun res!343724 () Bool)

(assert (=> b!550614 (=> (not res!343724) (not e!317820))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34706 (_ BitVec 32)) SeekEntryResult!5119)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!550614 (= res!343724 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16663 a!3118) j!142) mask!3119) (select (arr!16663 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16663 a!3118) i!1132 k0!1914) j!142) mask!3119) (select (store (arr!16663 a!3118) i!1132 k0!1914) j!142) (array!34707 (store (arr!16663 a!3118) i!1132 k0!1914) (size!17027 a!3118)) mask!3119)))))

(declare-fun b!550615 () Bool)

(declare-fun res!343719 () Bool)

(assert (=> b!550615 (=> (not res!343719) (not e!317819))))

(declare-fun arrayContainsKey!0 (array!34706 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!550615 (= res!343719 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!550616 () Bool)

(declare-fun res!343720 () Bool)

(assert (=> b!550616 (=> (not res!343720) (not e!317819))))

(assert (=> b!550616 (= res!343720 (validKeyInArray!0 k0!1914))))

(assert (= (and start!50356 res!343723) b!550609))

(assert (= (and b!550609 res!343722) b!550612))

(assert (= (and b!550612 res!343726) b!550616))

(assert (= (and b!550616 res!343720) b!550615))

(assert (= (and b!550615 res!343719) b!550613))

(assert (= (and b!550613 res!343718) b!550607))

(assert (= (and b!550607 res!343721) b!550610))

(assert (= (and b!550610 res!343725) b!550614))

(assert (= (and b!550614 res!343724) b!550611))

(assert (= (and b!550611 res!343727) b!550608))

(declare-fun m!527647 () Bool)

(assert (=> b!550608 m!527647))

(assert (=> b!550608 m!527647))

(declare-fun m!527649 () Bool)

(assert (=> b!550608 m!527649))

(declare-fun m!527651 () Bool)

(assert (=> start!50356 m!527651))

(declare-fun m!527653 () Bool)

(assert (=> start!50356 m!527653))

(declare-fun m!527655 () Bool)

(assert (=> b!550616 m!527655))

(declare-fun m!527657 () Bool)

(assert (=> b!550613 m!527657))

(assert (=> b!550612 m!527647))

(assert (=> b!550612 m!527647))

(declare-fun m!527659 () Bool)

(assert (=> b!550612 m!527659))

(declare-fun m!527661 () Bool)

(assert (=> b!550607 m!527661))

(declare-fun m!527663 () Bool)

(assert (=> b!550615 m!527663))

(declare-fun m!527665 () Bool)

(assert (=> b!550611 m!527665))

(declare-fun m!527667 () Bool)

(assert (=> b!550611 m!527667))

(declare-fun m!527669 () Bool)

(assert (=> b!550610 m!527669))

(assert (=> b!550614 m!527647))

(declare-fun m!527671 () Bool)

(assert (=> b!550614 m!527671))

(assert (=> b!550614 m!527647))

(declare-fun m!527673 () Bool)

(assert (=> b!550614 m!527673))

(declare-fun m!527675 () Bool)

(assert (=> b!550614 m!527675))

(assert (=> b!550614 m!527673))

(declare-fun m!527677 () Bool)

(assert (=> b!550614 m!527677))

(assert (=> b!550614 m!527671))

(assert (=> b!550614 m!527647))

(declare-fun m!527679 () Bool)

(assert (=> b!550614 m!527679))

(declare-fun m!527681 () Bool)

(assert (=> b!550614 m!527681))

(assert (=> b!550614 m!527673))

(assert (=> b!550614 m!527675))

(check-sat (not b!550607) (not b!550615) (not b!550613) (not b!550608) (not b!550614) (not start!50356) (not b!550612) (not b!550611) (not b!550616) (not b!550610))
(check-sat)
