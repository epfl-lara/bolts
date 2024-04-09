; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50354 () Bool)

(assert start!50354)

(declare-fun b!550577 () Bool)

(declare-fun res!343693 () Bool)

(declare-fun e!317806 () Bool)

(assert (=> b!550577 (=> (not res!343693) (not e!317806))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!34704 0))(
  ( (array!34705 (arr!16662 (Array (_ BitVec 32) (_ BitVec 64))) (size!17026 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34704)

(declare-datatypes ((SeekEntryResult!5118 0))(
  ( (MissingZero!5118 (index!22699 (_ BitVec 32))) (Found!5118 (index!22700 (_ BitVec 32))) (Intermediate!5118 (undefined!5930 Bool) (index!22701 (_ BitVec 32)) (x!51657 (_ BitVec 32))) (Undefined!5118) (MissingVacant!5118 (index!22702 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34704 (_ BitVec 32)) SeekEntryResult!5118)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!550577 (= res!343693 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16662 a!3118) j!142) mask!3119) (select (arr!16662 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16662 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!16662 a!3118) i!1132 k!1914) j!142) (array!34705 (store (arr!16662 a!3118) i!1132 k!1914) (size!17026 a!3118)) mask!3119)))))

(declare-fun res!343697 () Bool)

(declare-fun e!317809 () Bool)

(assert (=> start!50354 (=> (not res!343697) (not e!317809))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50354 (= res!343697 (validMask!0 mask!3119))))

(assert (=> start!50354 e!317809))

(assert (=> start!50354 true))

(declare-fun array_inv!12436 (array!34704) Bool)

(assert (=> start!50354 (array_inv!12436 a!3118)))

(declare-fun b!550578 () Bool)

(declare-fun res!343689 () Bool)

(assert (=> b!550578 (=> (not res!343689) (not e!317809))))

(declare-fun arrayContainsKey!0 (array!34704 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!550578 (= res!343689 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!550579 () Bool)

(assert (=> b!550579 (= e!317809 e!317806)))

(declare-fun res!343688 () Bool)

(assert (=> b!550579 (=> (not res!343688) (not e!317806))))

(declare-fun lt!250580 () SeekEntryResult!5118)

(assert (=> b!550579 (= res!343688 (or (= lt!250580 (MissingZero!5118 i!1132)) (= lt!250580 (MissingVacant!5118 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34704 (_ BitVec 32)) SeekEntryResult!5118)

(assert (=> b!550579 (= lt!250580 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!550580 () Bool)

(declare-fun res!343696 () Bool)

(assert (=> b!550580 (=> (not res!343696) (not e!317809))))

(assert (=> b!550580 (= res!343696 (and (= (size!17026 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17026 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17026 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!550581 () Bool)

(declare-fun res!343690 () Bool)

(assert (=> b!550581 (=> (not res!343690) (not e!317809))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!550581 (= res!343690 (validKeyInArray!0 (select (arr!16662 a!3118) j!142)))))

(declare-fun b!550582 () Bool)

(declare-fun res!343695 () Bool)

(assert (=> b!550582 (=> (not res!343695) (not e!317809))))

(assert (=> b!550582 (= res!343695 (validKeyInArray!0 k!1914))))

(declare-fun b!550583 () Bool)

(declare-fun res!343694 () Bool)

(assert (=> b!550583 (=> (not res!343694) (not e!317806))))

(declare-datatypes ((List!10795 0))(
  ( (Nil!10792) (Cons!10791 (h!11767 (_ BitVec 64)) (t!17031 List!10795)) )
))
(declare-fun arrayNoDuplicates!0 (array!34704 (_ BitVec 32) List!10795) Bool)

(assert (=> b!550583 (= res!343694 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10792))))

(declare-fun b!550584 () Bool)

(assert (=> b!550584 (= e!317806 (not true))))

(declare-fun e!317807 () Bool)

(assert (=> b!550584 e!317807))

(declare-fun res!343692 () Bool)

(assert (=> b!550584 (=> (not res!343692) (not e!317807))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34704 (_ BitVec 32)) Bool)

(assert (=> b!550584 (= res!343692 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17010 0))(
  ( (Unit!17011) )
))
(declare-fun lt!250579 () Unit!17010)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34704 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17010)

(assert (=> b!550584 (= lt!250579 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!550585 () Bool)

(declare-fun res!343691 () Bool)

(assert (=> b!550585 (=> (not res!343691) (not e!317806))))

(assert (=> b!550585 (= res!343691 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!550586 () Bool)

(assert (=> b!550586 (= e!317807 (= (seekEntryOrOpen!0 (select (arr!16662 a!3118) j!142) a!3118 mask!3119) (Found!5118 j!142)))))

(assert (= (and start!50354 res!343697) b!550580))

(assert (= (and b!550580 res!343696) b!550581))

(assert (= (and b!550581 res!343690) b!550582))

(assert (= (and b!550582 res!343695) b!550578))

(assert (= (and b!550578 res!343689) b!550579))

(assert (= (and b!550579 res!343688) b!550585))

(assert (= (and b!550585 res!343691) b!550583))

(assert (= (and b!550583 res!343694) b!550577))

(assert (= (and b!550577 res!343693) b!550584))

(assert (= (and b!550584 res!343692) b!550586))

(declare-fun m!527611 () Bool)

(assert (=> b!550579 m!527611))

(declare-fun m!527613 () Bool)

(assert (=> b!550578 m!527613))

(declare-fun m!527615 () Bool)

(assert (=> b!550577 m!527615))

(declare-fun m!527617 () Bool)

(assert (=> b!550577 m!527617))

(assert (=> b!550577 m!527615))

(declare-fun m!527619 () Bool)

(assert (=> b!550577 m!527619))

(declare-fun m!527621 () Bool)

(assert (=> b!550577 m!527621))

(assert (=> b!550577 m!527619))

(declare-fun m!527623 () Bool)

(assert (=> b!550577 m!527623))

(assert (=> b!550577 m!527617))

(assert (=> b!550577 m!527615))

(declare-fun m!527625 () Bool)

(assert (=> b!550577 m!527625))

(declare-fun m!527627 () Bool)

(assert (=> b!550577 m!527627))

(assert (=> b!550577 m!527619))

(assert (=> b!550577 m!527621))

(declare-fun m!527629 () Bool)

(assert (=> b!550583 m!527629))

(assert (=> b!550586 m!527615))

(assert (=> b!550586 m!527615))

(declare-fun m!527631 () Bool)

(assert (=> b!550586 m!527631))

(assert (=> b!550581 m!527615))

(assert (=> b!550581 m!527615))

(declare-fun m!527633 () Bool)

(assert (=> b!550581 m!527633))

(declare-fun m!527635 () Bool)

(assert (=> start!50354 m!527635))

(declare-fun m!527637 () Bool)

(assert (=> start!50354 m!527637))

(declare-fun m!527639 () Bool)

(assert (=> b!550584 m!527639))

(declare-fun m!527641 () Bool)

(assert (=> b!550584 m!527641))

(declare-fun m!527643 () Bool)

(assert (=> b!550582 m!527643))

(declare-fun m!527645 () Bool)

(assert (=> b!550585 m!527645))

(push 1)

