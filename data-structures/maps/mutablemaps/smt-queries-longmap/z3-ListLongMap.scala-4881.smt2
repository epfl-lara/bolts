; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!67284 () Bool)

(assert start!67284)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7963 0))(
  ( (MissingZero!7963 (index!34219 (_ BitVec 32))) (Found!7963 (index!34220 (_ BitVec 32))) (Intermediate!7963 (undefined!8775 Bool) (index!34221 (_ BitVec 32)) (x!65188 (_ BitVec 32))) (Undefined!7963) (MissingVacant!7963 (index!34222 (_ BitVec 32))) )
))
(declare-fun lt!346542 () SeekEntryResult!7963)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((array!42531 0))(
  ( (array!42532 (arr!20356 (Array (_ BitVec 32) (_ BitVec 64))) (size!20777 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42531)

(declare-fun e!432770 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun b!777788 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42531 (_ BitVec 32)) SeekEntryResult!7963)

(assert (=> b!777788 (= e!432770 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20356 a!3186) j!159) a!3186 mask!3328) lt!346542))))

(declare-fun b!777789 () Bool)

(declare-fun lt!346548 () SeekEntryResult!7963)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun e!432767 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42531 (_ BitVec 32)) SeekEntryResult!7963)

(assert (=> b!777789 (= e!432767 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20356 a!3186) j!159) a!3186 mask!3328) lt!346548))))

(declare-fun b!777790 () Bool)

(declare-fun e!432769 () Bool)

(declare-fun e!432774 () Bool)

(assert (=> b!777790 (= e!432769 e!432774)))

(declare-fun res!526341 () Bool)

(assert (=> b!777790 (=> (not res!526341) (not e!432774))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!777790 (= res!526341 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20356 a!3186) j!159) mask!3328) (select (arr!20356 a!3186) j!159) a!3186 mask!3328) lt!346548))))

(assert (=> b!777790 (= lt!346548 (Intermediate!7963 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!777791 () Bool)

(declare-fun res!526344 () Bool)

(declare-fun e!432768 () Bool)

(assert (=> b!777791 (=> (not res!526344) (not e!432768))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!777791 (= res!526344 (and (= (size!20777 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20777 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20777 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!777792 () Bool)

(assert (=> b!777792 (= e!432768 e!432769)))

(declare-fun res!526339 () Bool)

(assert (=> b!777792 (=> (not res!526339) (not e!432769))))

(declare-fun lt!346549 () SeekEntryResult!7963)

(assert (=> b!777792 (= res!526339 (or (= lt!346549 (MissingZero!7963 i!1173)) (= lt!346549 (MissingVacant!7963 i!1173))))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42531 (_ BitVec 32)) SeekEntryResult!7963)

(assert (=> b!777792 (= lt!346549 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!777793 () Bool)

(declare-fun e!432775 () Bool)

(assert (=> b!777793 (= e!432775 e!432770)))

(declare-fun res!526351 () Bool)

(assert (=> b!777793 (=> (not res!526351) (not e!432770))))

(assert (=> b!777793 (= res!526351 (= (seekEntryOrOpen!0 (select (arr!20356 a!3186) j!159) a!3186 mask!3328) lt!346542))))

(assert (=> b!777793 (= lt!346542 (Found!7963 j!159))))

(declare-fun res!526343 () Bool)

(assert (=> start!67284 (=> (not res!526343) (not e!432768))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67284 (= res!526343 (validMask!0 mask!3328))))

(assert (=> start!67284 e!432768))

(assert (=> start!67284 true))

(declare-fun array_inv!16130 (array!42531) Bool)

(assert (=> start!67284 (array_inv!16130 a!3186)))

(declare-fun b!777794 () Bool)

(declare-fun e!432773 () Bool)

(declare-fun e!432771 () Bool)

(assert (=> b!777794 (= e!432773 (not e!432771))))

(declare-fun res!526346 () Bool)

(assert (=> b!777794 (=> res!526346 e!432771)))

(declare-fun lt!346545 () SeekEntryResult!7963)

(get-info :version)

(assert (=> b!777794 (= res!526346 (or (not ((_ is Intermediate!7963) lt!346545)) (bvslt x!1131 (x!65188 lt!346545)) (not (= x!1131 (x!65188 lt!346545))) (not (= index!1321 (index!34221 lt!346545)))))))

(assert (=> b!777794 e!432775))

(declare-fun res!526354 () Bool)

(assert (=> b!777794 (=> (not res!526354) (not e!432775))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42531 (_ BitVec 32)) Bool)

(assert (=> b!777794 (= res!526354 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26820 0))(
  ( (Unit!26821) )
))
(declare-fun lt!346541 () Unit!26820)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42531 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26820)

(assert (=> b!777794 (= lt!346541 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!777795 () Bool)

(declare-fun res!526342 () Bool)

(assert (=> b!777795 (=> (not res!526342) (not e!432768))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!777795 (= res!526342 (validKeyInArray!0 k0!2102))))

(declare-fun b!777796 () Bool)

(declare-fun res!526347 () Bool)

(assert (=> b!777796 (=> (not res!526347) (not e!432769))))

(assert (=> b!777796 (= res!526347 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20777 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20777 a!3186))))))

(declare-fun b!777797 () Bool)

(declare-fun res!526345 () Bool)

(assert (=> b!777797 (=> (not res!526345) (not e!432768))))

(assert (=> b!777797 (= res!526345 (validKeyInArray!0 (select (arr!20356 a!3186) j!159)))))

(declare-fun b!777798 () Bool)

(declare-fun res!526340 () Bool)

(assert (=> b!777798 (=> (not res!526340) (not e!432769))))

(assert (=> b!777798 (= res!526340 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!777799 () Bool)

(assert (=> b!777799 (= e!432767 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20356 a!3186) j!159) a!3186 mask!3328) (Found!7963 j!159)))))

(declare-fun b!777800 () Bool)

(declare-fun res!526352 () Bool)

(assert (=> b!777800 (=> res!526352 e!432771)))

(declare-fun lt!346547 () (_ BitVec 64))

(assert (=> b!777800 (= res!526352 (or (not (= (select (store (arr!20356 a!3186) i!1173 k0!2102) index!1321) lt!346547)) (undefined!8775 lt!346545)))))

(declare-fun b!777801 () Bool)

(declare-fun res!526337 () Bool)

(assert (=> b!777801 (=> (not res!526337) (not e!432774))))

(assert (=> b!777801 (= res!526337 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20356 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!777802 () Bool)

(declare-fun res!526348 () Bool)

(assert (=> b!777802 (=> (not res!526348) (not e!432768))))

(declare-fun arrayContainsKey!0 (array!42531 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!777802 (= res!526348 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!777803 () Bool)

(assert (=> b!777803 (= e!432774 e!432773)))

(declare-fun res!526349 () Bool)

(assert (=> b!777803 (=> (not res!526349) (not e!432773))))

(declare-fun lt!346546 () SeekEntryResult!7963)

(assert (=> b!777803 (= res!526349 (= lt!346546 lt!346545))))

(declare-fun lt!346544 () array!42531)

(assert (=> b!777803 (= lt!346545 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!346547 lt!346544 mask!3328))))

(assert (=> b!777803 (= lt!346546 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!346547 mask!3328) lt!346547 lt!346544 mask!3328))))

(assert (=> b!777803 (= lt!346547 (select (store (arr!20356 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!777803 (= lt!346544 (array!42532 (store (arr!20356 a!3186) i!1173 k0!2102) (size!20777 a!3186)))))

(declare-fun b!777804 () Bool)

(declare-fun res!526338 () Bool)

(assert (=> b!777804 (=> (not res!526338) (not e!432774))))

(assert (=> b!777804 (= res!526338 e!432767)))

(declare-fun c!86127 () Bool)

(assert (=> b!777804 (= c!86127 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!777805 () Bool)

(declare-fun res!526350 () Bool)

(assert (=> b!777805 (=> res!526350 e!432771)))

(assert (=> b!777805 (= res!526350 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20356 a!3186) j!159) a!3186 mask!3328) (Found!7963 j!159))))))

(declare-fun b!777806 () Bool)

(assert (=> b!777806 (= e!432771 true)))

(declare-fun lt!346543 () SeekEntryResult!7963)

(assert (=> b!777806 (= lt!346543 (seekEntryOrOpen!0 lt!346547 lt!346544 mask!3328))))

(declare-fun b!777807 () Bool)

(declare-fun res!526353 () Bool)

(assert (=> b!777807 (=> (not res!526353) (not e!432769))))

(declare-datatypes ((List!14411 0))(
  ( (Nil!14408) (Cons!14407 (h!15518 (_ BitVec 64)) (t!20734 List!14411)) )
))
(declare-fun arrayNoDuplicates!0 (array!42531 (_ BitVec 32) List!14411) Bool)

(assert (=> b!777807 (= res!526353 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14408))))

(assert (= (and start!67284 res!526343) b!777791))

(assert (= (and b!777791 res!526344) b!777797))

(assert (= (and b!777797 res!526345) b!777795))

(assert (= (and b!777795 res!526342) b!777802))

(assert (= (and b!777802 res!526348) b!777792))

(assert (= (and b!777792 res!526339) b!777798))

(assert (= (and b!777798 res!526340) b!777807))

(assert (= (and b!777807 res!526353) b!777796))

(assert (= (and b!777796 res!526347) b!777790))

(assert (= (and b!777790 res!526341) b!777801))

(assert (= (and b!777801 res!526337) b!777804))

(assert (= (and b!777804 c!86127) b!777789))

(assert (= (and b!777804 (not c!86127)) b!777799))

(assert (= (and b!777804 res!526338) b!777803))

(assert (= (and b!777803 res!526349) b!777794))

(assert (= (and b!777794 res!526354) b!777793))

(assert (= (and b!777793 res!526351) b!777788))

(assert (= (and b!777794 (not res!526346)) b!777805))

(assert (= (and b!777805 (not res!526350)) b!777800))

(assert (= (and b!777800 (not res!526352)) b!777806))

(declare-fun m!721653 () Bool)

(assert (=> b!777797 m!721653))

(assert (=> b!777797 m!721653))

(declare-fun m!721655 () Bool)

(assert (=> b!777797 m!721655))

(assert (=> b!777788 m!721653))

(assert (=> b!777788 m!721653))

(declare-fun m!721657 () Bool)

(assert (=> b!777788 m!721657))

(declare-fun m!721659 () Bool)

(assert (=> b!777792 m!721659))

(assert (=> b!777790 m!721653))

(assert (=> b!777790 m!721653))

(declare-fun m!721661 () Bool)

(assert (=> b!777790 m!721661))

(assert (=> b!777790 m!721661))

(assert (=> b!777790 m!721653))

(declare-fun m!721663 () Bool)

(assert (=> b!777790 m!721663))

(declare-fun m!721665 () Bool)

(assert (=> b!777802 m!721665))

(declare-fun m!721667 () Bool)

(assert (=> b!777803 m!721667))

(declare-fun m!721669 () Bool)

(assert (=> b!777803 m!721669))

(assert (=> b!777803 m!721667))

(declare-fun m!721671 () Bool)

(assert (=> b!777803 m!721671))

(declare-fun m!721673 () Bool)

(assert (=> b!777803 m!721673))

(declare-fun m!721675 () Bool)

(assert (=> b!777803 m!721675))

(declare-fun m!721677 () Bool)

(assert (=> b!777807 m!721677))

(assert (=> b!777805 m!721653))

(assert (=> b!777805 m!721653))

(declare-fun m!721679 () Bool)

(assert (=> b!777805 m!721679))

(assert (=> b!777793 m!721653))

(assert (=> b!777793 m!721653))

(declare-fun m!721681 () Bool)

(assert (=> b!777793 m!721681))

(declare-fun m!721683 () Bool)

(assert (=> b!777794 m!721683))

(declare-fun m!721685 () Bool)

(assert (=> b!777794 m!721685))

(declare-fun m!721687 () Bool)

(assert (=> b!777801 m!721687))

(assert (=> b!777800 m!721671))

(declare-fun m!721689 () Bool)

(assert (=> b!777800 m!721689))

(declare-fun m!721691 () Bool)

(assert (=> b!777795 m!721691))

(assert (=> b!777799 m!721653))

(assert (=> b!777799 m!721653))

(assert (=> b!777799 m!721679))

(declare-fun m!721693 () Bool)

(assert (=> b!777806 m!721693))

(declare-fun m!721695 () Bool)

(assert (=> start!67284 m!721695))

(declare-fun m!721697 () Bool)

(assert (=> start!67284 m!721697))

(assert (=> b!777789 m!721653))

(assert (=> b!777789 m!721653))

(declare-fun m!721699 () Bool)

(assert (=> b!777789 m!721699))

(declare-fun m!721701 () Bool)

(assert (=> b!777798 m!721701))

(check-sat (not b!777789) (not b!777788) (not b!777798) (not b!777792) (not b!777805) (not b!777806) (not b!777807) (not b!777802) (not start!67284) (not b!777797) (not b!777795) (not b!777790) (not b!777799) (not b!777794) (not b!777793) (not b!777803))
(check-sat)
