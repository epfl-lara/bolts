; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65334 () Bool)

(assert start!65334)

(declare-fun b!741721 () Bool)

(declare-fun res!499132 () Bool)

(declare-fun e!414593 () Bool)

(assert (=> b!741721 (=> (not res!499132) (not e!414593))))

(declare-fun e!414594 () Bool)

(assert (=> b!741721 (= res!499132 e!414594)))

(declare-fun c!81681 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!741721 (= c!81681 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!741722 () Bool)

(declare-fun e!414595 () Bool)

(declare-fun e!414599 () Bool)

(assert (=> b!741722 (= e!414595 e!414599)))

(declare-fun res!499126 () Bool)

(assert (=> b!741722 (=> (not res!499126) (not e!414599))))

(declare-datatypes ((array!41460 0))(
  ( (array!41461 (arr!19840 (Array (_ BitVec 32) (_ BitVec 64))) (size!20261 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41460)

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7447 0))(
  ( (MissingZero!7447 (index!32155 (_ BitVec 32))) (Found!7447 (index!32156 (_ BitVec 32))) (Intermediate!7447 (undefined!8259 Bool) (index!32157 (_ BitVec 32)) (x!63158 (_ BitVec 32))) (Undefined!7447) (MissingVacant!7447 (index!32158 (_ BitVec 32))) )
))
(declare-fun lt!329539 () SeekEntryResult!7447)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41460 (_ BitVec 32)) SeekEntryResult!7447)

(assert (=> b!741722 (= res!499126 (= (seekEntryOrOpen!0 (select (arr!19840 a!3186) j!159) a!3186 mask!3328) lt!329539))))

(assert (=> b!741722 (= lt!329539 (Found!7447 j!159))))

(declare-fun b!741723 () Bool)

(declare-fun res!499134 () Bool)

(assert (=> b!741723 (=> (not res!499134) (not e!414593))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!741723 (= res!499134 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19840 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!741724 () Bool)

(declare-fun lt!329540 () SeekEntryResult!7447)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41460 (_ BitVec 32)) SeekEntryResult!7447)

(assert (=> b!741724 (= e!414594 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19840 a!3186) j!159) a!3186 mask!3328) lt!329540))))

(declare-fun b!741725 () Bool)

(declare-fun e!414598 () Bool)

(declare-fun e!414597 () Bool)

(assert (=> b!741725 (= e!414598 e!414597)))

(declare-fun res!499124 () Bool)

(assert (=> b!741725 (=> (not res!499124) (not e!414597))))

(declare-fun lt!329546 () SeekEntryResult!7447)

(assert (=> b!741725 (= res!499124 (or (= lt!329546 (MissingZero!7447 i!1173)) (= lt!329546 (MissingVacant!7447 i!1173))))))

(declare-fun k0!2102 () (_ BitVec 64))

(assert (=> b!741725 (= lt!329546 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!741726 () Bool)

(declare-fun res!499129 () Bool)

(assert (=> b!741726 (=> (not res!499129) (not e!414597))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41460 (_ BitVec 32)) Bool)

(assert (=> b!741726 (= res!499129 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!741727 () Bool)

(declare-fun res!499128 () Bool)

(assert (=> b!741727 (=> (not res!499128) (not e!414598))))

(assert (=> b!741727 (= res!499128 (and (= (size!20261 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20261 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20261 a!3186)) (not (= i!1173 j!159))))))

(declare-fun res!499122 () Bool)

(assert (=> start!65334 (=> (not res!499122) (not e!414598))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65334 (= res!499122 (validMask!0 mask!3328))))

(assert (=> start!65334 e!414598))

(assert (=> start!65334 true))

(declare-fun array_inv!15614 (array!41460) Bool)

(assert (=> start!65334 (array_inv!15614 a!3186)))

(declare-fun b!741728 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41460 (_ BitVec 32)) SeekEntryResult!7447)

(assert (=> b!741728 (= e!414599 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19840 a!3186) j!159) a!3186 mask!3328) lt!329539))))

(declare-fun b!741729 () Bool)

(declare-fun e!414600 () Bool)

(assert (=> b!741729 (= e!414593 e!414600)))

(declare-fun res!499120 () Bool)

(assert (=> b!741729 (=> (not res!499120) (not e!414600))))

(declare-fun lt!329544 () SeekEntryResult!7447)

(declare-fun lt!329545 () SeekEntryResult!7447)

(assert (=> b!741729 (= res!499120 (= lt!329544 lt!329545))))

(declare-fun lt!329543 () array!41460)

(declare-fun lt!329542 () (_ BitVec 64))

(assert (=> b!741729 (= lt!329545 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!329542 lt!329543 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!741729 (= lt!329544 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!329542 mask!3328) lt!329542 lt!329543 mask!3328))))

(assert (=> b!741729 (= lt!329542 (select (store (arr!19840 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!741729 (= lt!329543 (array!41461 (store (arr!19840 a!3186) i!1173 k0!2102) (size!20261 a!3186)))))

(declare-fun b!741730 () Bool)

(declare-fun res!499127 () Bool)

(assert (=> b!741730 (=> (not res!499127) (not e!414598))))

(declare-fun arrayContainsKey!0 (array!41460 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!741730 (= res!499127 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!741731 () Bool)

(declare-fun res!499123 () Bool)

(assert (=> b!741731 (=> (not res!499123) (not e!414598))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!741731 (= res!499123 (validKeyInArray!0 (select (arr!19840 a!3186) j!159)))))

(declare-fun b!741732 () Bool)

(assert (=> b!741732 (= e!414594 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19840 a!3186) j!159) a!3186 mask!3328) (Found!7447 j!159)))))

(declare-fun b!741733 () Bool)

(declare-fun res!499121 () Bool)

(assert (=> b!741733 (=> (not res!499121) (not e!414597))))

(declare-datatypes ((List!13895 0))(
  ( (Nil!13892) (Cons!13891 (h!14963 (_ BitVec 64)) (t!20218 List!13895)) )
))
(declare-fun arrayNoDuplicates!0 (array!41460 (_ BitVec 32) List!13895) Bool)

(assert (=> b!741733 (= res!499121 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13892))))

(declare-fun b!741734 () Bool)

(get-info :version)

(assert (=> b!741734 (= e!414600 (not (or (not ((_ is Intermediate!7447) lt!329545)) (not (= x!1131 (x!63158 lt!329545))) (not (= index!1321 (index!32157 lt!329545))) (bvslt mask!3328 #b00000000000000000000000000000000) (bvsge index!1321 (bvadd #b00000000000000000000000000000001 mask!3328)) (bvslt resIntermediateIndex!5 (bvadd #b00000000000000000000000000000001 mask!3328)))))))

(assert (=> b!741734 e!414595))

(declare-fun res!499125 () Bool)

(assert (=> b!741734 (=> (not res!499125) (not e!414595))))

(assert (=> b!741734 (= res!499125 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25374 0))(
  ( (Unit!25375) )
))
(declare-fun lt!329541 () Unit!25374)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41460 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25374)

(assert (=> b!741734 (= lt!329541 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!741735 () Bool)

(declare-fun res!499133 () Bool)

(assert (=> b!741735 (=> (not res!499133) (not e!414597))))

(assert (=> b!741735 (= res!499133 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20261 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20261 a!3186))))))

(declare-fun b!741736 () Bool)

(declare-fun res!499130 () Bool)

(assert (=> b!741736 (=> (not res!499130) (not e!414598))))

(assert (=> b!741736 (= res!499130 (validKeyInArray!0 k0!2102))))

(declare-fun b!741737 () Bool)

(assert (=> b!741737 (= e!414597 e!414593)))

(declare-fun res!499131 () Bool)

(assert (=> b!741737 (=> (not res!499131) (not e!414593))))

(assert (=> b!741737 (= res!499131 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19840 a!3186) j!159) mask!3328) (select (arr!19840 a!3186) j!159) a!3186 mask!3328) lt!329540))))

(assert (=> b!741737 (= lt!329540 (Intermediate!7447 false resIntermediateIndex!5 resIntermediateX!5))))

(assert (= (and start!65334 res!499122) b!741727))

(assert (= (and b!741727 res!499128) b!741731))

(assert (= (and b!741731 res!499123) b!741736))

(assert (= (and b!741736 res!499130) b!741730))

(assert (= (and b!741730 res!499127) b!741725))

(assert (= (and b!741725 res!499124) b!741726))

(assert (= (and b!741726 res!499129) b!741733))

(assert (= (and b!741733 res!499121) b!741735))

(assert (= (and b!741735 res!499133) b!741737))

(assert (= (and b!741737 res!499131) b!741723))

(assert (= (and b!741723 res!499134) b!741721))

(assert (= (and b!741721 c!81681) b!741724))

(assert (= (and b!741721 (not c!81681)) b!741732))

(assert (= (and b!741721 res!499132) b!741729))

(assert (= (and b!741729 res!499120) b!741734))

(assert (= (and b!741734 res!499125) b!741722))

(assert (= (and b!741722 res!499126) b!741728))

(declare-fun m!692753 () Bool)

(assert (=> start!65334 m!692753))

(declare-fun m!692755 () Bool)

(assert (=> start!65334 m!692755))

(declare-fun m!692757 () Bool)

(assert (=> b!741724 m!692757))

(assert (=> b!741724 m!692757))

(declare-fun m!692759 () Bool)

(assert (=> b!741724 m!692759))

(declare-fun m!692761 () Bool)

(assert (=> b!741726 m!692761))

(declare-fun m!692763 () Bool)

(assert (=> b!741733 m!692763))

(assert (=> b!741732 m!692757))

(assert (=> b!741732 m!692757))

(declare-fun m!692765 () Bool)

(assert (=> b!741732 m!692765))

(declare-fun m!692767 () Bool)

(assert (=> b!741734 m!692767))

(declare-fun m!692769 () Bool)

(assert (=> b!741734 m!692769))

(assert (=> b!741722 m!692757))

(assert (=> b!741722 m!692757))

(declare-fun m!692771 () Bool)

(assert (=> b!741722 m!692771))

(declare-fun m!692773 () Bool)

(assert (=> b!741729 m!692773))

(declare-fun m!692775 () Bool)

(assert (=> b!741729 m!692775))

(declare-fun m!692777 () Bool)

(assert (=> b!741729 m!692777))

(assert (=> b!741729 m!692773))

(declare-fun m!692779 () Bool)

(assert (=> b!741729 m!692779))

(declare-fun m!692781 () Bool)

(assert (=> b!741729 m!692781))

(declare-fun m!692783 () Bool)

(assert (=> b!741725 m!692783))

(declare-fun m!692785 () Bool)

(assert (=> b!741723 m!692785))

(assert (=> b!741728 m!692757))

(assert (=> b!741728 m!692757))

(declare-fun m!692787 () Bool)

(assert (=> b!741728 m!692787))

(declare-fun m!692789 () Bool)

(assert (=> b!741730 m!692789))

(assert (=> b!741731 m!692757))

(assert (=> b!741731 m!692757))

(declare-fun m!692791 () Bool)

(assert (=> b!741731 m!692791))

(declare-fun m!692793 () Bool)

(assert (=> b!741736 m!692793))

(assert (=> b!741737 m!692757))

(assert (=> b!741737 m!692757))

(declare-fun m!692795 () Bool)

(assert (=> b!741737 m!692795))

(assert (=> b!741737 m!692795))

(assert (=> b!741737 m!692757))

(declare-fun m!692797 () Bool)

(assert (=> b!741737 m!692797))

(check-sat (not b!741725) (not b!741722) (not b!741732) (not b!741724) (not b!741731) (not b!741726) (not b!741737) (not b!741736) (not b!741733) (not start!65334) (not b!741730) (not b!741729) (not b!741734) (not b!741728))
(check-sat)
