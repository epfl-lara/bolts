; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!51532 () Bool)

(assert start!51532)

(declare-fun b!563360 () Bool)

(declare-fun res!354662 () Bool)

(declare-fun e!324633 () Bool)

(assert (=> b!563360 (=> (not res!354662) (not e!324633))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!35351 0))(
  ( (array!35352 (arr!16972 (Array (_ BitVec 32) (_ BitVec 64))) (size!17336 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35351)

(declare-datatypes ((SeekEntryResult!5428 0))(
  ( (MissingZero!5428 (index!23939 (_ BitVec 32))) (Found!5428 (index!23940 (_ BitVec 32))) (Intermediate!5428 (undefined!6240 Bool) (index!23941 (_ BitVec 32)) (x!52854 (_ BitVec 32))) (Undefined!5428) (MissingVacant!5428 (index!23942 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35351 (_ BitVec 32)) SeekEntryResult!5428)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!563360 (= res!354662 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16972 a!3118) j!142) mask!3119) (select (arr!16972 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16972 a!3118) i!1132 k0!1914) j!142) mask!3119) (select (store (arr!16972 a!3118) i!1132 k0!1914) j!142) (array!35352 (store (arr!16972 a!3118) i!1132 k0!1914) (size!17336 a!3118)) mask!3119)))))

(declare-fun b!563361 () Bool)

(declare-fun res!354670 () Bool)

(assert (=> b!563361 (=> (not res!354670) (not e!324633))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35351 (_ BitVec 32)) Bool)

(assert (=> b!563361 (= res!354670 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!563362 () Bool)

(declare-fun e!324631 () Bool)

(assert (=> b!563362 (= e!324631 e!324633)))

(declare-fun res!354665 () Bool)

(assert (=> b!563362 (=> (not res!354665) (not e!324633))))

(declare-fun lt!257219 () SeekEntryResult!5428)

(assert (=> b!563362 (= res!354665 (or (= lt!257219 (MissingZero!5428 i!1132)) (= lt!257219 (MissingVacant!5428 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35351 (_ BitVec 32)) SeekEntryResult!5428)

(assert (=> b!563362 (= lt!257219 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!563363 () Bool)

(declare-fun res!354668 () Bool)

(assert (=> b!563363 (=> (not res!354668) (not e!324631))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!563363 (= res!354668 (validKeyInArray!0 k0!1914))))

(declare-fun b!563364 () Bool)

(assert (=> b!563364 (= e!324633 (not true))))

(declare-fun e!324632 () Bool)

(assert (=> b!563364 e!324632))

(declare-fun res!354664 () Bool)

(assert (=> b!563364 (=> (not res!354664) (not e!324632))))

(assert (=> b!563364 (= res!354664 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17630 0))(
  ( (Unit!17631) )
))
(declare-fun lt!257218 () Unit!17630)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35351 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17630)

(assert (=> b!563364 (= lt!257218 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!563365 () Bool)

(declare-fun res!354666 () Bool)

(assert (=> b!563365 (=> (not res!354666) (not e!324633))))

(declare-datatypes ((List!11105 0))(
  ( (Nil!11102) (Cons!11101 (h!12104 (_ BitVec 64)) (t!17341 List!11105)) )
))
(declare-fun arrayNoDuplicates!0 (array!35351 (_ BitVec 32) List!11105) Bool)

(assert (=> b!563365 (= res!354666 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11102))))

(declare-fun b!563366 () Bool)

(assert (=> b!563366 (= e!324632 (= (seekEntryOrOpen!0 (select (arr!16972 a!3118) j!142) a!3118 mask!3119) (Found!5428 j!142)))))

(declare-fun b!563367 () Bool)

(declare-fun res!354663 () Bool)

(assert (=> b!563367 (=> (not res!354663) (not e!324631))))

(declare-fun arrayContainsKey!0 (array!35351 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!563367 (= res!354663 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun res!354667 () Bool)

(assert (=> start!51532 (=> (not res!354667) (not e!324631))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51532 (= res!354667 (validMask!0 mask!3119))))

(assert (=> start!51532 e!324631))

(assert (=> start!51532 true))

(declare-fun array_inv!12746 (array!35351) Bool)

(assert (=> start!51532 (array_inv!12746 a!3118)))

(declare-fun b!563368 () Bool)

(declare-fun res!354671 () Bool)

(assert (=> b!563368 (=> (not res!354671) (not e!324631))))

(assert (=> b!563368 (= res!354671 (and (= (size!17336 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17336 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17336 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!563369 () Bool)

(declare-fun res!354669 () Bool)

(assert (=> b!563369 (=> (not res!354669) (not e!324631))))

(assert (=> b!563369 (= res!354669 (validKeyInArray!0 (select (arr!16972 a!3118) j!142)))))

(assert (= (and start!51532 res!354667) b!563368))

(assert (= (and b!563368 res!354671) b!563369))

(assert (= (and b!563369 res!354669) b!563363))

(assert (= (and b!563363 res!354668) b!563367))

(assert (= (and b!563367 res!354663) b!563362))

(assert (= (and b!563362 res!354665) b!563361))

(assert (= (and b!563361 res!354670) b!563365))

(assert (= (and b!563365 res!354666) b!563360))

(assert (= (and b!563360 res!354662) b!563364))

(assert (= (and b!563364 res!354664) b!563366))

(declare-fun m!541765 () Bool)

(assert (=> b!563361 m!541765))

(declare-fun m!541767 () Bool)

(assert (=> b!563362 m!541767))

(declare-fun m!541769 () Bool)

(assert (=> b!563369 m!541769))

(assert (=> b!563369 m!541769))

(declare-fun m!541771 () Bool)

(assert (=> b!563369 m!541771))

(declare-fun m!541773 () Bool)

(assert (=> b!563364 m!541773))

(declare-fun m!541775 () Bool)

(assert (=> b!563364 m!541775))

(declare-fun m!541777 () Bool)

(assert (=> b!563365 m!541777))

(declare-fun m!541779 () Bool)

(assert (=> start!51532 m!541779))

(declare-fun m!541781 () Bool)

(assert (=> start!51532 m!541781))

(declare-fun m!541783 () Bool)

(assert (=> b!563367 m!541783))

(declare-fun m!541785 () Bool)

(assert (=> b!563363 m!541785))

(assert (=> b!563366 m!541769))

(assert (=> b!563366 m!541769))

(declare-fun m!541787 () Bool)

(assert (=> b!563366 m!541787))

(assert (=> b!563360 m!541769))

(declare-fun m!541789 () Bool)

(assert (=> b!563360 m!541789))

(assert (=> b!563360 m!541769))

(declare-fun m!541791 () Bool)

(assert (=> b!563360 m!541791))

(declare-fun m!541793 () Bool)

(assert (=> b!563360 m!541793))

(assert (=> b!563360 m!541791))

(declare-fun m!541795 () Bool)

(assert (=> b!563360 m!541795))

(assert (=> b!563360 m!541789))

(assert (=> b!563360 m!541769))

(declare-fun m!541797 () Bool)

(assert (=> b!563360 m!541797))

(declare-fun m!541799 () Bool)

(assert (=> b!563360 m!541799))

(assert (=> b!563360 m!541791))

(assert (=> b!563360 m!541793))

(check-sat (not b!563367) (not b!563365) (not b!563364) (not b!563363) (not b!563360) (not b!563361) (not b!563366) (not b!563362) (not start!51532) (not b!563369))
(check-sat)
