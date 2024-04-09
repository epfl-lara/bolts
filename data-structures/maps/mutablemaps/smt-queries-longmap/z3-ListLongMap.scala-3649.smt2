; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!50350 () Bool)

(assert start!50350)

(declare-fun b!550517 () Bool)

(declare-fun res!343631 () Bool)

(declare-fun e!317783 () Bool)

(assert (=> b!550517 (=> (not res!343631) (not e!317783))))

(declare-datatypes ((array!34700 0))(
  ( (array!34701 (arr!16660 (Array (_ BitVec 32) (_ BitVec 64))) (size!17024 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34700)

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34700 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!550517 (= res!343631 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!550518 () Bool)

(declare-fun e!317784 () Bool)

(declare-fun mask!3119 () (_ BitVec 32))

(assert (=> b!550518 (= e!317784 (not (bvsge mask!3119 #b00000000000000000000000000000000)))))

(declare-fun e!317782 () Bool)

(assert (=> b!550518 e!317782))

(declare-fun res!343637 () Bool)

(assert (=> b!550518 (=> (not res!343637) (not e!317782))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34700 (_ BitVec 32)) Bool)

(assert (=> b!550518 (= res!343637 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17006 0))(
  ( (Unit!17007) )
))
(declare-fun lt!250567 () Unit!17006)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34700 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17006)

(assert (=> b!550518 (= lt!250567 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!550519 () Bool)

(declare-datatypes ((SeekEntryResult!5116 0))(
  ( (MissingZero!5116 (index!22691 (_ BitVec 32))) (Found!5116 (index!22692 (_ BitVec 32))) (Intermediate!5116 (undefined!5928 Bool) (index!22693 (_ BitVec 32)) (x!51647 (_ BitVec 32))) (Undefined!5116) (MissingVacant!5116 (index!22694 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34700 (_ BitVec 32)) SeekEntryResult!5116)

(assert (=> b!550519 (= e!317782 (= (seekEntryOrOpen!0 (select (arr!16660 a!3118) j!142) a!3118 mask!3119) (Found!5116 j!142)))))

(declare-fun res!343628 () Bool)

(assert (=> start!50350 (=> (not res!343628) (not e!317783))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50350 (= res!343628 (validMask!0 mask!3119))))

(assert (=> start!50350 e!317783))

(assert (=> start!50350 true))

(declare-fun array_inv!12434 (array!34700) Bool)

(assert (=> start!50350 (array_inv!12434 a!3118)))

(declare-fun b!550520 () Bool)

(declare-fun res!343630 () Bool)

(assert (=> b!550520 (=> (not res!343630) (not e!317784))))

(declare-fun i!1132 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34700 (_ BitVec 32)) SeekEntryResult!5116)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!550520 (= res!343630 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16660 a!3118) j!142) mask!3119) (select (arr!16660 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16660 a!3118) i!1132 k0!1914) j!142) mask!3119) (select (store (arr!16660 a!3118) i!1132 k0!1914) j!142) (array!34701 (store (arr!16660 a!3118) i!1132 k0!1914) (size!17024 a!3118)) mask!3119)))))

(declare-fun b!550521 () Bool)

(declare-fun res!343636 () Bool)

(assert (=> b!550521 (=> (not res!343636) (not e!317784))))

(declare-datatypes ((List!10793 0))(
  ( (Nil!10790) (Cons!10789 (h!11765 (_ BitVec 64)) (t!17029 List!10793)) )
))
(declare-fun arrayNoDuplicates!0 (array!34700 (_ BitVec 32) List!10793) Bool)

(assert (=> b!550521 (= res!343636 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10790))))

(declare-fun b!550522 () Bool)

(declare-fun res!343629 () Bool)

(assert (=> b!550522 (=> (not res!343629) (not e!317784))))

(assert (=> b!550522 (= res!343629 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!550523 () Bool)

(declare-fun res!343633 () Bool)

(assert (=> b!550523 (=> (not res!343633) (not e!317783))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!550523 (= res!343633 (validKeyInArray!0 (select (arr!16660 a!3118) j!142)))))

(declare-fun b!550524 () Bool)

(declare-fun res!343635 () Bool)

(assert (=> b!550524 (=> (not res!343635) (not e!317783))))

(assert (=> b!550524 (= res!343635 (validKeyInArray!0 k0!1914))))

(declare-fun b!550525 () Bool)

(assert (=> b!550525 (= e!317783 e!317784)))

(declare-fun res!343632 () Bool)

(assert (=> b!550525 (=> (not res!343632) (not e!317784))))

(declare-fun lt!250568 () SeekEntryResult!5116)

(assert (=> b!550525 (= res!343632 (or (= lt!250568 (MissingZero!5116 i!1132)) (= lt!250568 (MissingVacant!5116 i!1132))))))

(assert (=> b!550525 (= lt!250568 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!550526 () Bool)

(declare-fun res!343634 () Bool)

(assert (=> b!550526 (=> (not res!343634) (not e!317783))))

(assert (=> b!550526 (= res!343634 (and (= (size!17024 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17024 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17024 a!3118)) (not (= i!1132 j!142))))))

(assert (= (and start!50350 res!343628) b!550526))

(assert (= (and b!550526 res!343634) b!550523))

(assert (= (and b!550523 res!343633) b!550524))

(assert (= (and b!550524 res!343635) b!550517))

(assert (= (and b!550517 res!343631) b!550525))

(assert (= (and b!550525 res!343632) b!550522))

(assert (= (and b!550522 res!343629) b!550521))

(assert (= (and b!550521 res!343636) b!550520))

(assert (= (and b!550520 res!343630) b!550518))

(assert (= (and b!550518 res!343637) b!550519))

(declare-fun m!527539 () Bool)

(assert (=> b!550519 m!527539))

(assert (=> b!550519 m!527539))

(declare-fun m!527541 () Bool)

(assert (=> b!550519 m!527541))

(assert (=> b!550523 m!527539))

(assert (=> b!550523 m!527539))

(declare-fun m!527543 () Bool)

(assert (=> b!550523 m!527543))

(declare-fun m!527545 () Bool)

(assert (=> b!550524 m!527545))

(declare-fun m!527547 () Bool)

(assert (=> b!550522 m!527547))

(declare-fun m!527549 () Bool)

(assert (=> start!50350 m!527549))

(declare-fun m!527551 () Bool)

(assert (=> start!50350 m!527551))

(declare-fun m!527553 () Bool)

(assert (=> b!550517 m!527553))

(declare-fun m!527555 () Bool)

(assert (=> b!550525 m!527555))

(declare-fun m!527557 () Bool)

(assert (=> b!550518 m!527557))

(declare-fun m!527559 () Bool)

(assert (=> b!550518 m!527559))

(declare-fun m!527561 () Bool)

(assert (=> b!550521 m!527561))

(assert (=> b!550520 m!527539))

(declare-fun m!527563 () Bool)

(assert (=> b!550520 m!527563))

(assert (=> b!550520 m!527539))

(declare-fun m!527565 () Bool)

(assert (=> b!550520 m!527565))

(declare-fun m!527567 () Bool)

(assert (=> b!550520 m!527567))

(assert (=> b!550520 m!527565))

(declare-fun m!527569 () Bool)

(assert (=> b!550520 m!527569))

(assert (=> b!550520 m!527563))

(assert (=> b!550520 m!527539))

(declare-fun m!527571 () Bool)

(assert (=> b!550520 m!527571))

(declare-fun m!527573 () Bool)

(assert (=> b!550520 m!527573))

(assert (=> b!550520 m!527565))

(assert (=> b!550520 m!527567))

(check-sat (not b!550518) (not b!550520) (not b!550524) (not b!550523) (not start!50350) (not b!550525) (not b!550517) (not b!550519) (not b!550521) (not b!550522))
(check-sat)
