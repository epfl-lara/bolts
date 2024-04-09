; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!52420 () Bool)

(assert start!52420)

(declare-fun b!571607 () Bool)

(declare-fun e!328780 () Bool)

(declare-fun e!328778 () Bool)

(assert (=> b!571607 (= e!328780 e!328778)))

(declare-fun res!361266 () Bool)

(assert (=> b!571607 (=> (not res!361266) (not e!328778))))

(declare-datatypes ((SeekEntryResult!5626 0))(
  ( (MissingZero!5626 (index!24731 (_ BitVec 32))) (Found!5626 (index!24732 (_ BitVec 32))) (Intermediate!5626 (undefined!6438 Bool) (index!24733 (_ BitVec 32)) (x!53634 (_ BitVec 32))) (Undefined!5626) (MissingVacant!5626 (index!24734 (_ BitVec 32))) )
))
(declare-fun lt!260760 () SeekEntryResult!5626)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!571607 (= res!361266 (or (= lt!260760 (MissingZero!5626 i!1132)) (= lt!260760 (MissingVacant!5626 i!1132))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-datatypes ((array!35771 0))(
  ( (array!35772 (arr!17170 (Array (_ BitVec 32) (_ BitVec 64))) (size!17534 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35771)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35771 (_ BitVec 32)) SeekEntryResult!5626)

(assert (=> b!571607 (= lt!260760 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!571608 () Bool)

(declare-fun e!328781 () Bool)

(assert (=> b!571608 (= e!328778 e!328781)))

(declare-fun res!361273 () Bool)

(assert (=> b!571608 (=> (not res!361273) (not e!328781))))

(declare-fun lt!260759 () (_ BitVec 64))

(declare-fun lt!260765 () SeekEntryResult!5626)

(declare-fun lt!260763 () (_ BitVec 32))

(declare-fun lt!260761 () array!35771)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35771 (_ BitVec 32)) SeekEntryResult!5626)

(assert (=> b!571608 (= res!361273 (= lt!260765 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!260763 lt!260759 lt!260761 mask!3119)))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun lt!260758 () (_ BitVec 32))

(assert (=> b!571608 (= lt!260765 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!260758 (select (arr!17170 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!571608 (= lt!260763 (toIndex!0 lt!260759 mask!3119))))

(assert (=> b!571608 (= lt!260759 (select (store (arr!17170 a!3118) i!1132 k0!1914) j!142))))

(assert (=> b!571608 (= lt!260758 (toIndex!0 (select (arr!17170 a!3118) j!142) mask!3119))))

(assert (=> b!571608 (= lt!260761 (array!35772 (store (arr!17170 a!3118) i!1132 k0!1914) (size!17534 a!3118)))))

(declare-fun b!571609 () Bool)

(declare-fun e!328783 () Bool)

(declare-fun e!328782 () Bool)

(assert (=> b!571609 (= e!328783 e!328782)))

(declare-fun res!361272 () Bool)

(assert (=> b!571609 (=> (not res!361272) (not e!328782))))

(declare-fun lt!260757 () SeekEntryResult!5626)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35771 (_ BitVec 32)) SeekEntryResult!5626)

(assert (=> b!571609 (= res!361272 (= lt!260757 (seekKeyOrZeroReturnVacant!0 (x!53634 lt!260765) (index!24733 lt!260765) (index!24733 lt!260765) (select (arr!17170 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!571610 () Bool)

(declare-fun res!361269 () Bool)

(assert (=> b!571610 (=> (not res!361269) (not e!328778))))

(declare-datatypes ((List!11303 0))(
  ( (Nil!11300) (Cons!11299 (h!12326 (_ BitVec 64)) (t!17539 List!11303)) )
))
(declare-fun arrayNoDuplicates!0 (array!35771 (_ BitVec 32) List!11303) Bool)

(assert (=> b!571610 (= res!361269 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11300))))

(declare-fun b!571611 () Bool)

(declare-fun e!328776 () Bool)

(declare-fun e!328777 () Bool)

(assert (=> b!571611 (= e!328776 e!328777)))

(declare-fun res!361271 () Bool)

(assert (=> b!571611 (=> res!361271 e!328777)))

(get-info :version)

(assert (=> b!571611 (= res!361271 (or (undefined!6438 lt!260765) (not ((_ is Intermediate!5626) lt!260765))))))

(declare-fun b!571612 () Bool)

(declare-fun res!361265 () Bool)

(assert (=> b!571612 (=> (not res!361265) (not e!328780))))

(declare-fun arrayContainsKey!0 (array!35771 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!571612 (= res!361265 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!571613 () Bool)

(assert (=> b!571613 (= e!328782 (= (seekEntryOrOpen!0 lt!260759 lt!260761 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!53634 lt!260765) (index!24733 lt!260765) (index!24733 lt!260765) lt!260759 lt!260761 mask!3119)))))

(declare-fun b!571614 () Bool)

(assert (=> b!571614 (= e!328781 (not true))))

(assert (=> b!571614 e!328776))

(declare-fun res!361276 () Bool)

(assert (=> b!571614 (=> (not res!361276) (not e!328776))))

(assert (=> b!571614 (= res!361276 (= lt!260757 (Found!5626 j!142)))))

(assert (=> b!571614 (= lt!260757 (seekEntryOrOpen!0 (select (arr!17170 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35771 (_ BitVec 32)) Bool)

(assert (=> b!571614 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17954 0))(
  ( (Unit!17955) )
))
(declare-fun lt!260762 () Unit!17954)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35771 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17954)

(assert (=> b!571614 (= lt!260762 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!571615 () Bool)

(declare-fun res!361275 () Bool)

(assert (=> b!571615 (=> (not res!361275) (not e!328780))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!571615 (= res!361275 (validKeyInArray!0 (select (arr!17170 a!3118) j!142)))))

(declare-fun b!571616 () Bool)

(declare-fun res!361268 () Bool)

(assert (=> b!571616 (=> (not res!361268) (not e!328780))))

(assert (=> b!571616 (= res!361268 (and (= (size!17534 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17534 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17534 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!571617 () Bool)

(declare-fun res!361274 () Bool)

(assert (=> b!571617 (=> (not res!361274) (not e!328780))))

(assert (=> b!571617 (= res!361274 (validKeyInArray!0 k0!1914))))

(declare-fun b!571618 () Bool)

(declare-fun res!361277 () Bool)

(assert (=> b!571618 (=> (not res!361277) (not e!328778))))

(assert (=> b!571618 (= res!361277 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun res!361270 () Bool)

(assert (=> start!52420 (=> (not res!361270) (not e!328780))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52420 (= res!361270 (validMask!0 mask!3119))))

(assert (=> start!52420 e!328780))

(assert (=> start!52420 true))

(declare-fun array_inv!12944 (array!35771) Bool)

(assert (=> start!52420 (array_inv!12944 a!3118)))

(declare-fun b!571619 () Bool)

(assert (=> b!571619 (= e!328777 e!328783)))

(declare-fun res!361267 () Bool)

(assert (=> b!571619 (=> res!361267 e!328783)))

(declare-fun lt!260764 () (_ BitVec 64))

(assert (=> b!571619 (= res!361267 (or (= lt!260764 (select (arr!17170 a!3118) j!142)) (= lt!260764 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!571619 (= lt!260764 (select (arr!17170 a!3118) (index!24733 lt!260765)))))

(assert (= (and start!52420 res!361270) b!571616))

(assert (= (and b!571616 res!361268) b!571615))

(assert (= (and b!571615 res!361275) b!571617))

(assert (= (and b!571617 res!361274) b!571612))

(assert (= (and b!571612 res!361265) b!571607))

(assert (= (and b!571607 res!361266) b!571618))

(assert (= (and b!571618 res!361277) b!571610))

(assert (= (and b!571610 res!361269) b!571608))

(assert (= (and b!571608 res!361273) b!571614))

(assert (= (and b!571614 res!361276) b!571611))

(assert (= (and b!571611 (not res!361271)) b!571619))

(assert (= (and b!571619 (not res!361267)) b!571609))

(assert (= (and b!571609 res!361272) b!571613))

(declare-fun m!550539 () Bool)

(assert (=> b!571613 m!550539))

(declare-fun m!550541 () Bool)

(assert (=> b!571613 m!550541))

(declare-fun m!550543 () Bool)

(assert (=> start!52420 m!550543))

(declare-fun m!550545 () Bool)

(assert (=> start!52420 m!550545))

(declare-fun m!550547 () Bool)

(assert (=> b!571619 m!550547))

(declare-fun m!550549 () Bool)

(assert (=> b!571619 m!550549))

(assert (=> b!571614 m!550547))

(assert (=> b!571614 m!550547))

(declare-fun m!550551 () Bool)

(assert (=> b!571614 m!550551))

(declare-fun m!550553 () Bool)

(assert (=> b!571614 m!550553))

(declare-fun m!550555 () Bool)

(assert (=> b!571614 m!550555))

(declare-fun m!550557 () Bool)

(assert (=> b!571610 m!550557))

(assert (=> b!571609 m!550547))

(assert (=> b!571609 m!550547))

(declare-fun m!550559 () Bool)

(assert (=> b!571609 m!550559))

(assert (=> b!571608 m!550547))

(declare-fun m!550561 () Bool)

(assert (=> b!571608 m!550561))

(assert (=> b!571608 m!550547))

(declare-fun m!550563 () Bool)

(assert (=> b!571608 m!550563))

(declare-fun m!550565 () Bool)

(assert (=> b!571608 m!550565))

(declare-fun m!550567 () Bool)

(assert (=> b!571608 m!550567))

(declare-fun m!550569 () Bool)

(assert (=> b!571608 m!550569))

(assert (=> b!571608 m!550547))

(declare-fun m!550571 () Bool)

(assert (=> b!571608 m!550571))

(assert (=> b!571615 m!550547))

(assert (=> b!571615 m!550547))

(declare-fun m!550573 () Bool)

(assert (=> b!571615 m!550573))

(declare-fun m!550575 () Bool)

(assert (=> b!571607 m!550575))

(declare-fun m!550577 () Bool)

(assert (=> b!571617 m!550577))

(declare-fun m!550579 () Bool)

(assert (=> b!571618 m!550579))

(declare-fun m!550581 () Bool)

(assert (=> b!571612 m!550581))

(check-sat (not b!571615) (not b!571608) (not b!571610) (not b!571612) (not b!571618) (not start!52420) (not b!571614) (not b!571617) (not b!571613) (not b!571607) (not b!571609))
(check-sat)
