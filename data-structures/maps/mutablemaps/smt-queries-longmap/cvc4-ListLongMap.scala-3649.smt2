; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50352 () Bool)

(assert start!50352)

(declare-fun b!550547 () Bool)

(declare-fun res!343664 () Bool)

(declare-fun e!317794 () Bool)

(assert (=> b!550547 (=> (not res!343664) (not e!317794))))

(declare-datatypes ((array!34702 0))(
  ( (array!34703 (arr!16661 (Array (_ BitVec 32) (_ BitVec 64))) (size!17025 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34702)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34702 (_ BitVec 32)) Bool)

(assert (=> b!550547 (= res!343664 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!550548 () Bool)

(declare-fun e!317795 () Bool)

(assert (=> b!550548 (= e!317795 e!317794)))

(declare-fun res!343658 () Bool)

(assert (=> b!550548 (=> (not res!343658) (not e!317794))))

(declare-datatypes ((SeekEntryResult!5117 0))(
  ( (MissingZero!5117 (index!22695 (_ BitVec 32))) (Found!5117 (index!22696 (_ BitVec 32))) (Intermediate!5117 (undefined!5929 Bool) (index!22697 (_ BitVec 32)) (x!51648 (_ BitVec 32))) (Undefined!5117) (MissingVacant!5117 (index!22698 (_ BitVec 32))) )
))
(declare-fun lt!250573 () SeekEntryResult!5117)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!550548 (= res!343658 (or (= lt!250573 (MissingZero!5117 i!1132)) (= lt!250573 (MissingVacant!5117 i!1132))))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34702 (_ BitVec 32)) SeekEntryResult!5117)

(assert (=> b!550548 (= lt!250573 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun res!343661 () Bool)

(assert (=> start!50352 (=> (not res!343661) (not e!317795))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50352 (= res!343661 (validMask!0 mask!3119))))

(assert (=> start!50352 e!317795))

(assert (=> start!50352 true))

(declare-fun array_inv!12435 (array!34702) Bool)

(assert (=> start!50352 (array_inv!12435 a!3118)))

(declare-fun b!550549 () Bool)

(declare-fun res!343659 () Bool)

(assert (=> b!550549 (=> (not res!343659) (not e!317794))))

(declare-datatypes ((List!10794 0))(
  ( (Nil!10791) (Cons!10790 (h!11766 (_ BitVec 64)) (t!17030 List!10794)) )
))
(declare-fun arrayNoDuplicates!0 (array!34702 (_ BitVec 32) List!10794) Bool)

(assert (=> b!550549 (= res!343659 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10791))))

(declare-fun b!550550 () Bool)

(declare-fun res!343667 () Bool)

(assert (=> b!550550 (=> (not res!343667) (not e!317795))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!550550 (= res!343667 (validKeyInArray!0 (select (arr!16661 a!3118) j!142)))))

(declare-fun b!550551 () Bool)

(declare-fun res!343660 () Bool)

(assert (=> b!550551 (=> (not res!343660) (not e!317794))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34702 (_ BitVec 32)) SeekEntryResult!5117)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!550551 (= res!343660 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16661 a!3118) j!142) mask!3119) (select (arr!16661 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16661 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!16661 a!3118) i!1132 k!1914) j!142) (array!34703 (store (arr!16661 a!3118) i!1132 k!1914) (size!17025 a!3118)) mask!3119)))))

(declare-fun b!550552 () Bool)

(assert (=> b!550552 (= e!317794 (not (bvsge mask!3119 #b00000000000000000000000000000000)))))

(declare-fun e!317796 () Bool)

(assert (=> b!550552 e!317796))

(declare-fun res!343662 () Bool)

(assert (=> b!550552 (=> (not res!343662) (not e!317796))))

(assert (=> b!550552 (= res!343662 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17008 0))(
  ( (Unit!17009) )
))
(declare-fun lt!250574 () Unit!17008)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34702 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17008)

(assert (=> b!550552 (= lt!250574 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!550553 () Bool)

(assert (=> b!550553 (= e!317796 (= (seekEntryOrOpen!0 (select (arr!16661 a!3118) j!142) a!3118 mask!3119) (Found!5117 j!142)))))

(declare-fun b!550554 () Bool)

(declare-fun res!343666 () Bool)

(assert (=> b!550554 (=> (not res!343666) (not e!317795))))

(declare-fun arrayContainsKey!0 (array!34702 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!550554 (= res!343666 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!550555 () Bool)

(declare-fun res!343663 () Bool)

(assert (=> b!550555 (=> (not res!343663) (not e!317795))))

(assert (=> b!550555 (= res!343663 (validKeyInArray!0 k!1914))))

(declare-fun b!550556 () Bool)

(declare-fun res!343665 () Bool)

(assert (=> b!550556 (=> (not res!343665) (not e!317795))))

(assert (=> b!550556 (= res!343665 (and (= (size!17025 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17025 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17025 a!3118)) (not (= i!1132 j!142))))))

(assert (= (and start!50352 res!343661) b!550556))

(assert (= (and b!550556 res!343665) b!550550))

(assert (= (and b!550550 res!343667) b!550555))

(assert (= (and b!550555 res!343663) b!550554))

(assert (= (and b!550554 res!343666) b!550548))

(assert (= (and b!550548 res!343658) b!550547))

(assert (= (and b!550547 res!343664) b!550549))

(assert (= (and b!550549 res!343659) b!550551))

(assert (= (and b!550551 res!343660) b!550552))

(assert (= (and b!550552 res!343662) b!550553))

(declare-fun m!527575 () Bool)

(assert (=> b!550554 m!527575))

(declare-fun m!527577 () Bool)

(assert (=> b!550550 m!527577))

(assert (=> b!550550 m!527577))

(declare-fun m!527579 () Bool)

(assert (=> b!550550 m!527579))

(declare-fun m!527581 () Bool)

(assert (=> b!550547 m!527581))

(declare-fun m!527583 () Bool)

(assert (=> b!550555 m!527583))

(declare-fun m!527585 () Bool)

(assert (=> b!550548 m!527585))

(assert (=> b!550553 m!527577))

(assert (=> b!550553 m!527577))

(declare-fun m!527587 () Bool)

(assert (=> b!550553 m!527587))

(declare-fun m!527589 () Bool)

(assert (=> b!550552 m!527589))

(declare-fun m!527591 () Bool)

(assert (=> b!550552 m!527591))

(declare-fun m!527593 () Bool)

(assert (=> b!550549 m!527593))

(declare-fun m!527595 () Bool)

(assert (=> start!50352 m!527595))

(declare-fun m!527597 () Bool)

(assert (=> start!50352 m!527597))

(assert (=> b!550551 m!527577))

(declare-fun m!527599 () Bool)

(assert (=> b!550551 m!527599))

(assert (=> b!550551 m!527577))

(declare-fun m!527601 () Bool)

(assert (=> b!550551 m!527601))

(declare-fun m!527603 () Bool)

(assert (=> b!550551 m!527603))

(assert (=> b!550551 m!527601))

(declare-fun m!527605 () Bool)

(assert (=> b!550551 m!527605))

(assert (=> b!550551 m!527599))

(assert (=> b!550551 m!527577))

(declare-fun m!527607 () Bool)

(assert (=> b!550551 m!527607))

(declare-fun m!527609 () Bool)

(assert (=> b!550551 m!527609))

(assert (=> b!550551 m!527601))

(assert (=> b!550551 m!527603))

(push 1)

(assert (not b!550548))

(assert (not b!550549))

(assert (not start!50352))

