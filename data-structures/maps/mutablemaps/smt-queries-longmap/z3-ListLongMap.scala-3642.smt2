; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!50248 () Bool)

(assert start!50248)

(declare-fun b!549627 () Bool)

(declare-fun res!342927 () Bool)

(declare-fun e!317375 () Bool)

(assert (=> b!549627 (=> (not res!342927) (not e!317375))))

(declare-datatypes ((array!34655 0))(
  ( (array!34656 (arr!16639 (Array (_ BitVec 32) (_ BitVec 64))) (size!17003 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34655)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34655 (_ BitVec 32)) Bool)

(assert (=> b!549627 (= res!342927 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!549628 () Bool)

(assert (=> b!549628 (= e!317375 (not true))))

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!549628 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!16964 0))(
  ( (Unit!16965) )
))
(declare-fun lt!250312 () Unit!16964)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34655 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16964)

(assert (=> b!549628 (= lt!250312 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!549629 () Bool)

(declare-fun res!342928 () Bool)

(declare-fun e!317377 () Bool)

(assert (=> b!549629 (=> (not res!342928) (not e!317377))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!549629 (= res!342928 (validKeyInArray!0 (select (arr!16639 a!3118) j!142)))))

(declare-fun b!549630 () Bool)

(declare-fun res!342925 () Bool)

(assert (=> b!549630 (=> (not res!342925) (not e!317377))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34655 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!549630 (= res!342925 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun res!342929 () Bool)

(assert (=> start!50248 (=> (not res!342929) (not e!317377))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50248 (= res!342929 (validMask!0 mask!3119))))

(assert (=> start!50248 e!317377))

(assert (=> start!50248 true))

(declare-fun array_inv!12413 (array!34655) Bool)

(assert (=> start!50248 (array_inv!12413 a!3118)))

(declare-fun b!549631 () Bool)

(assert (=> b!549631 (= e!317377 e!317375)))

(declare-fun res!342924 () Bool)

(assert (=> b!549631 (=> (not res!342924) (not e!317375))))

(declare-datatypes ((SeekEntryResult!5095 0))(
  ( (MissingZero!5095 (index!22607 (_ BitVec 32))) (Found!5095 (index!22608 (_ BitVec 32))) (Intermediate!5095 (undefined!5907 Bool) (index!22609 (_ BitVec 32)) (x!51564 (_ BitVec 32))) (Undefined!5095) (MissingVacant!5095 (index!22610 (_ BitVec 32))) )
))
(declare-fun lt!250313 () SeekEntryResult!5095)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!549631 (= res!342924 (or (= lt!250313 (MissingZero!5095 i!1132)) (= lt!250313 (MissingVacant!5095 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34655 (_ BitVec 32)) SeekEntryResult!5095)

(assert (=> b!549631 (= lt!250313 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!549632 () Bool)

(declare-fun res!342922 () Bool)

(assert (=> b!549632 (=> (not res!342922) (not e!317377))))

(assert (=> b!549632 (= res!342922 (and (= (size!17003 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17003 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17003 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!549633 () Bool)

(declare-fun res!342921 () Bool)

(assert (=> b!549633 (=> (not res!342921) (not e!317375))))

(declare-datatypes ((List!10772 0))(
  ( (Nil!10769) (Cons!10768 (h!11741 (_ BitVec 64)) (t!17008 List!10772)) )
))
(declare-fun arrayNoDuplicates!0 (array!34655 (_ BitVec 32) List!10772) Bool)

(assert (=> b!549633 (= res!342921 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10769))))

(declare-fun b!549634 () Bool)

(declare-fun res!342923 () Bool)

(assert (=> b!549634 (=> (not res!342923) (not e!317377))))

(assert (=> b!549634 (= res!342923 (validKeyInArray!0 k0!1914))))

(declare-fun b!549635 () Bool)

(declare-fun res!342926 () Bool)

(assert (=> b!549635 (=> (not res!342926) (not e!317375))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34655 (_ BitVec 32)) SeekEntryResult!5095)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!549635 (= res!342926 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16639 a!3118) j!142) mask!3119) (select (arr!16639 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16639 a!3118) i!1132 k0!1914) j!142) mask!3119) (select (store (arr!16639 a!3118) i!1132 k0!1914) j!142) (array!34656 (store (arr!16639 a!3118) i!1132 k0!1914) (size!17003 a!3118)) mask!3119)))))

(assert (= (and start!50248 res!342929) b!549632))

(assert (= (and b!549632 res!342922) b!549629))

(assert (= (and b!549629 res!342928) b!549634))

(assert (= (and b!549634 res!342923) b!549630))

(assert (= (and b!549630 res!342925) b!549631))

(assert (= (and b!549631 res!342924) b!549627))

(assert (= (and b!549627 res!342927) b!549633))

(assert (= (and b!549633 res!342921) b!549635))

(assert (= (and b!549635 res!342926) b!549628))

(declare-fun m!526607 () Bool)

(assert (=> start!50248 m!526607))

(declare-fun m!526609 () Bool)

(assert (=> start!50248 m!526609))

(declare-fun m!526611 () Bool)

(assert (=> b!549633 m!526611))

(declare-fun m!526613 () Bool)

(assert (=> b!549629 m!526613))

(assert (=> b!549629 m!526613))

(declare-fun m!526615 () Bool)

(assert (=> b!549629 m!526615))

(declare-fun m!526617 () Bool)

(assert (=> b!549631 m!526617))

(declare-fun m!526619 () Bool)

(assert (=> b!549628 m!526619))

(declare-fun m!526621 () Bool)

(assert (=> b!549628 m!526621))

(assert (=> b!549635 m!526613))

(declare-fun m!526623 () Bool)

(assert (=> b!549635 m!526623))

(assert (=> b!549635 m!526613))

(declare-fun m!526625 () Bool)

(assert (=> b!549635 m!526625))

(declare-fun m!526627 () Bool)

(assert (=> b!549635 m!526627))

(assert (=> b!549635 m!526625))

(declare-fun m!526629 () Bool)

(assert (=> b!549635 m!526629))

(assert (=> b!549635 m!526623))

(assert (=> b!549635 m!526613))

(declare-fun m!526631 () Bool)

(assert (=> b!549635 m!526631))

(declare-fun m!526633 () Bool)

(assert (=> b!549635 m!526633))

(assert (=> b!549635 m!526625))

(assert (=> b!549635 m!526627))

(declare-fun m!526635 () Bool)

(assert (=> b!549634 m!526635))

(declare-fun m!526637 () Bool)

(assert (=> b!549627 m!526637))

(declare-fun m!526639 () Bool)

(assert (=> b!549630 m!526639))

(check-sat (not b!549629) (not b!549634) (not start!50248) (not b!549631) (not b!549630) (not b!549628) (not b!549633) (not b!549627) (not b!549635))
(check-sat)
