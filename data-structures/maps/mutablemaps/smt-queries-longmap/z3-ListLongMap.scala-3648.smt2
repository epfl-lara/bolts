; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!50344 () Bool)

(assert start!50344)

(declare-fun res!343542 () Bool)

(declare-fun e!317749 () Bool)

(assert (=> start!50344 (=> (not res!343542) (not e!317749))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50344 (= res!343542 (validMask!0 mask!3119))))

(assert (=> start!50344 e!317749))

(assert (=> start!50344 true))

(declare-datatypes ((array!34694 0))(
  ( (array!34695 (arr!16657 (Array (_ BitVec 32) (_ BitVec 64))) (size!17021 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34694)

(declare-fun array_inv!12431 (array!34694) Bool)

(assert (=> start!50344 (array_inv!12431 a!3118)))

(declare-fun b!550427 () Bool)

(declare-fun res!343541 () Bool)

(assert (=> b!550427 (=> (not res!343541) (not e!317749))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!550427 (= res!343541 (and (= (size!17021 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17021 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17021 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!550428 () Bool)

(declare-fun e!317748 () Bool)

(assert (=> b!550428 (= e!317748 (not true))))

(declare-fun e!317747 () Bool)

(assert (=> b!550428 e!317747))

(declare-fun res!343544 () Bool)

(assert (=> b!550428 (=> (not res!343544) (not e!317747))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34694 (_ BitVec 32)) Bool)

(assert (=> b!550428 (= res!343544 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17000 0))(
  ( (Unit!17001) )
))
(declare-fun lt!250550 () Unit!17000)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34694 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17000)

(assert (=> b!550428 (= lt!250550 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!550429 () Bool)

(declare-fun res!343540 () Bool)

(assert (=> b!550429 (=> (not res!343540) (not e!317749))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34694 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!550429 (= res!343540 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!550430 () Bool)

(declare-datatypes ((SeekEntryResult!5113 0))(
  ( (MissingZero!5113 (index!22679 (_ BitVec 32))) (Found!5113 (index!22680 (_ BitVec 32))) (Intermediate!5113 (undefined!5925 Bool) (index!22681 (_ BitVec 32)) (x!51636 (_ BitVec 32))) (Undefined!5113) (MissingVacant!5113 (index!22682 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34694 (_ BitVec 32)) SeekEntryResult!5113)

(assert (=> b!550430 (= e!317747 (= (seekEntryOrOpen!0 (select (arr!16657 a!3118) j!142) a!3118 mask!3119) (Found!5113 j!142)))))

(declare-fun b!550431 () Bool)

(assert (=> b!550431 (= e!317749 e!317748)))

(declare-fun res!343547 () Bool)

(assert (=> b!550431 (=> (not res!343547) (not e!317748))))

(declare-fun lt!250549 () SeekEntryResult!5113)

(assert (=> b!550431 (= res!343547 (or (= lt!250549 (MissingZero!5113 i!1132)) (= lt!250549 (MissingVacant!5113 i!1132))))))

(assert (=> b!550431 (= lt!250549 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!550432 () Bool)

(declare-fun res!343538 () Bool)

(assert (=> b!550432 (=> (not res!343538) (not e!317748))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34694 (_ BitVec 32)) SeekEntryResult!5113)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!550432 (= res!343538 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16657 a!3118) j!142) mask!3119) (select (arr!16657 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16657 a!3118) i!1132 k0!1914) j!142) mask!3119) (select (store (arr!16657 a!3118) i!1132 k0!1914) j!142) (array!34695 (store (arr!16657 a!3118) i!1132 k0!1914) (size!17021 a!3118)) mask!3119)))))

(declare-fun b!550433 () Bool)

(declare-fun res!343545 () Bool)

(assert (=> b!550433 (=> (not res!343545) (not e!317748))))

(assert (=> b!550433 (= res!343545 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!550434 () Bool)

(declare-fun res!343546 () Bool)

(assert (=> b!550434 (=> (not res!343546) (not e!317748))))

(declare-datatypes ((List!10790 0))(
  ( (Nil!10787) (Cons!10786 (h!11762 (_ BitVec 64)) (t!17026 List!10790)) )
))
(declare-fun arrayNoDuplicates!0 (array!34694 (_ BitVec 32) List!10790) Bool)

(assert (=> b!550434 (= res!343546 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10787))))

(declare-fun b!550435 () Bool)

(declare-fun res!343539 () Bool)

(assert (=> b!550435 (=> (not res!343539) (not e!317749))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!550435 (= res!343539 (validKeyInArray!0 k0!1914))))

(declare-fun b!550436 () Bool)

(declare-fun res!343543 () Bool)

(assert (=> b!550436 (=> (not res!343543) (not e!317749))))

(assert (=> b!550436 (= res!343543 (validKeyInArray!0 (select (arr!16657 a!3118) j!142)))))

(assert (= (and start!50344 res!343542) b!550427))

(assert (= (and b!550427 res!343541) b!550436))

(assert (= (and b!550436 res!343543) b!550435))

(assert (= (and b!550435 res!343539) b!550429))

(assert (= (and b!550429 res!343540) b!550431))

(assert (= (and b!550431 res!343547) b!550433))

(assert (= (and b!550433 res!343545) b!550434))

(assert (= (and b!550434 res!343546) b!550432))

(assert (= (and b!550432 res!343538) b!550428))

(assert (= (and b!550428 res!343544) b!550430))

(declare-fun m!527431 () Bool)

(assert (=> b!550431 m!527431))

(declare-fun m!527433 () Bool)

(assert (=> b!550432 m!527433))

(declare-fun m!527435 () Bool)

(assert (=> b!550432 m!527435))

(assert (=> b!550432 m!527433))

(declare-fun m!527437 () Bool)

(assert (=> b!550432 m!527437))

(declare-fun m!527439 () Bool)

(assert (=> b!550432 m!527439))

(assert (=> b!550432 m!527437))

(declare-fun m!527441 () Bool)

(assert (=> b!550432 m!527441))

(assert (=> b!550432 m!527435))

(assert (=> b!550432 m!527433))

(declare-fun m!527443 () Bool)

(assert (=> b!550432 m!527443))

(declare-fun m!527445 () Bool)

(assert (=> b!550432 m!527445))

(assert (=> b!550432 m!527437))

(assert (=> b!550432 m!527439))

(assert (=> b!550430 m!527433))

(assert (=> b!550430 m!527433))

(declare-fun m!527447 () Bool)

(assert (=> b!550430 m!527447))

(declare-fun m!527449 () Bool)

(assert (=> b!550435 m!527449))

(declare-fun m!527451 () Bool)

(assert (=> b!550434 m!527451))

(assert (=> b!550436 m!527433))

(assert (=> b!550436 m!527433))

(declare-fun m!527453 () Bool)

(assert (=> b!550436 m!527453))

(declare-fun m!527455 () Bool)

(assert (=> start!50344 m!527455))

(declare-fun m!527457 () Bool)

(assert (=> start!50344 m!527457))

(declare-fun m!527459 () Bool)

(assert (=> b!550428 m!527459))

(declare-fun m!527461 () Bool)

(assert (=> b!550428 m!527461))

(declare-fun m!527463 () Bool)

(assert (=> b!550429 m!527463))

(declare-fun m!527465 () Bool)

(assert (=> b!550433 m!527465))

(check-sat (not b!550428) (not b!550433) (not b!550429) (not b!550432) (not b!550431) (not start!50344) (not b!550430) (not b!550436) (not b!550434) (not b!550435))
(check-sat)
