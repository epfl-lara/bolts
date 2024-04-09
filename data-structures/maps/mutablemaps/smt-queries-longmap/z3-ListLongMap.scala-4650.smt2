; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64692 () Bool)

(assert start!64692)

(declare-fun b!728826 () Bool)

(declare-fun res!489425 () Bool)

(declare-fun e!407975 () Bool)

(assert (=> b!728826 (=> (not res!489425) (not e!407975))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41094 0))(
  ( (array!41095 (arr!19663 (Array (_ BitVec 32) (_ BitVec 64))) (size!20084 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41094)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!728826 (= res!489425 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19663 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!728827 () Bool)

(declare-fun e!407981 () Bool)

(declare-fun e!407974 () Bool)

(assert (=> b!728827 (= e!407981 e!407974)))

(declare-fun res!489433 () Bool)

(assert (=> b!728827 (=> (not res!489433) (not e!407974))))

(declare-datatypes ((SeekEntryResult!7270 0))(
  ( (MissingZero!7270 (index!31447 (_ BitVec 32))) (Found!7270 (index!31448 (_ BitVec 32))) (Intermediate!7270 (undefined!8082 Bool) (index!31449 (_ BitVec 32)) (x!62461 (_ BitVec 32))) (Undefined!7270) (MissingVacant!7270 (index!31450 (_ BitVec 32))) )
))
(declare-fun lt!322887 () SeekEntryResult!7270)

(assert (=> b!728827 (= res!489433 (or (= lt!322887 (MissingZero!7270 i!1173)) (= lt!322887 (MissingVacant!7270 i!1173))))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41094 (_ BitVec 32)) SeekEntryResult!7270)

(assert (=> b!728827 (= lt!322887 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun res!489428 () Bool)

(assert (=> start!64692 (=> (not res!489428) (not e!407981))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64692 (= res!489428 (validMask!0 mask!3328))))

(assert (=> start!64692 e!407981))

(assert (=> start!64692 true))

(declare-fun array_inv!15437 (array!41094) Bool)

(assert (=> start!64692 (array_inv!15437 a!3186)))

(declare-fun b!728828 () Bool)

(declare-fun res!489432 () Bool)

(assert (=> b!728828 (=> (not res!489432) (not e!407981))))

(declare-fun arrayContainsKey!0 (array!41094 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!728828 (= res!489432 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!728829 () Bool)

(declare-fun e!407978 () Bool)

(declare-fun e!407979 () Bool)

(assert (=> b!728829 (= e!407978 (not e!407979))))

(declare-fun res!489424 () Bool)

(assert (=> b!728829 (=> res!489424 e!407979)))

(declare-fun lt!322885 () SeekEntryResult!7270)

(declare-fun x!1131 () (_ BitVec 32))

(get-info :version)

(assert (=> b!728829 (= res!489424 (or (not ((_ is Intermediate!7270) lt!322885)) (bvsge x!1131 (x!62461 lt!322885))))))

(declare-fun e!407982 () Bool)

(assert (=> b!728829 e!407982))

(declare-fun res!489436 () Bool)

(assert (=> b!728829 (=> (not res!489436) (not e!407982))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41094 (_ BitVec 32)) Bool)

(assert (=> b!728829 (= res!489436 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24858 0))(
  ( (Unit!24859) )
))
(declare-fun lt!322889 () Unit!24858)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41094 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24858)

(assert (=> b!728829 (= lt!322889 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!728830 () Bool)

(declare-fun res!489423 () Bool)

(assert (=> b!728830 (=> (not res!489423) (not e!407974))))

(declare-datatypes ((List!13718 0))(
  ( (Nil!13715) (Cons!13714 (h!14774 (_ BitVec 64)) (t!20041 List!13718)) )
))
(declare-fun arrayNoDuplicates!0 (array!41094 (_ BitVec 32) List!13718) Bool)

(assert (=> b!728830 (= res!489423 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13715))))

(declare-fun e!407977 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun lt!322881 () SeekEntryResult!7270)

(declare-fun b!728831 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41094 (_ BitVec 32)) SeekEntryResult!7270)

(assert (=> b!728831 (= e!407977 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19663 a!3186) j!159) a!3186 mask!3328) lt!322881))))

(declare-fun b!728832 () Bool)

(assert (=> b!728832 (= e!407975 e!407978)))

(declare-fun res!489435 () Bool)

(assert (=> b!728832 (=> (not res!489435) (not e!407978))))

(declare-fun lt!322882 () SeekEntryResult!7270)

(assert (=> b!728832 (= res!489435 (= lt!322882 lt!322885))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!322886 () (_ BitVec 64))

(declare-fun lt!322884 () array!41094)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41094 (_ BitVec 32)) SeekEntryResult!7270)

(assert (=> b!728832 (= lt!322885 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!322886 lt!322884 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!728832 (= lt!322882 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!322886 mask!3328) lt!322886 lt!322884 mask!3328))))

(assert (=> b!728832 (= lt!322886 (select (store (arr!19663 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!728832 (= lt!322884 (array!41095 (store (arr!19663 a!3186) i!1173 k0!2102) (size!20084 a!3186)))))

(declare-fun lt!322888 () SeekEntryResult!7270)

(declare-fun b!728833 () Bool)

(declare-fun e!407976 () Bool)

(assert (=> b!728833 (= e!407976 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19663 a!3186) j!159) a!3186 mask!3328) lt!322888))))

(declare-fun b!728834 () Bool)

(declare-fun res!489430 () Bool)

(assert (=> b!728834 (=> (not res!489430) (not e!407981))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!728834 (= res!489430 (validKeyInArray!0 k0!2102))))

(declare-fun b!728835 () Bool)

(declare-fun res!489434 () Bool)

(assert (=> b!728835 (=> (not res!489434) (not e!407975))))

(assert (=> b!728835 (= res!489434 e!407976)))

(declare-fun c!80076 () Bool)

(assert (=> b!728835 (= c!80076 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!728836 () Bool)

(assert (=> b!728836 (= e!407979 true)))

(declare-fun lt!322883 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!728836 (= lt!322883 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!728837 () Bool)

(assert (=> b!728837 (= e!407974 e!407975)))

(declare-fun res!489431 () Bool)

(assert (=> b!728837 (=> (not res!489431) (not e!407975))))

(assert (=> b!728837 (= res!489431 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19663 a!3186) j!159) mask!3328) (select (arr!19663 a!3186) j!159) a!3186 mask!3328) lt!322888))))

(assert (=> b!728837 (= lt!322888 (Intermediate!7270 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!728838 () Bool)

(declare-fun res!489429 () Bool)

(assert (=> b!728838 (=> (not res!489429) (not e!407974))))

(assert (=> b!728838 (= res!489429 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!728839 () Bool)

(declare-fun res!489426 () Bool)

(assert (=> b!728839 (=> (not res!489426) (not e!407981))))

(assert (=> b!728839 (= res!489426 (and (= (size!20084 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20084 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20084 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!728840 () Bool)

(assert (=> b!728840 (= e!407976 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19663 a!3186) j!159) a!3186 mask!3328) (Found!7270 j!159)))))

(declare-fun b!728841 () Bool)

(assert (=> b!728841 (= e!407982 e!407977)))

(declare-fun res!489437 () Bool)

(assert (=> b!728841 (=> (not res!489437) (not e!407977))))

(assert (=> b!728841 (= res!489437 (= (seekEntryOrOpen!0 (select (arr!19663 a!3186) j!159) a!3186 mask!3328) lt!322881))))

(assert (=> b!728841 (= lt!322881 (Found!7270 j!159))))

(declare-fun b!728842 () Bool)

(declare-fun res!489438 () Bool)

(assert (=> b!728842 (=> (not res!489438) (not e!407981))))

(assert (=> b!728842 (= res!489438 (validKeyInArray!0 (select (arr!19663 a!3186) j!159)))))

(declare-fun b!728843 () Bool)

(declare-fun res!489427 () Bool)

(assert (=> b!728843 (=> (not res!489427) (not e!407974))))

(assert (=> b!728843 (= res!489427 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20084 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20084 a!3186))))))

(assert (= (and start!64692 res!489428) b!728839))

(assert (= (and b!728839 res!489426) b!728842))

(assert (= (and b!728842 res!489438) b!728834))

(assert (= (and b!728834 res!489430) b!728828))

(assert (= (and b!728828 res!489432) b!728827))

(assert (= (and b!728827 res!489433) b!728838))

(assert (= (and b!728838 res!489429) b!728830))

(assert (= (and b!728830 res!489423) b!728843))

(assert (= (and b!728843 res!489427) b!728837))

(assert (= (and b!728837 res!489431) b!728826))

(assert (= (and b!728826 res!489425) b!728835))

(assert (= (and b!728835 c!80076) b!728833))

(assert (= (and b!728835 (not c!80076)) b!728840))

(assert (= (and b!728835 res!489434) b!728832))

(assert (= (and b!728832 res!489435) b!728829))

(assert (= (and b!728829 res!489436) b!728841))

(assert (= (and b!728841 res!489437) b!728831))

(assert (= (and b!728829 (not res!489424)) b!728836))

(declare-fun m!682621 () Bool)

(assert (=> b!728828 m!682621))

(declare-fun m!682623 () Bool)

(assert (=> b!728834 m!682623))

(declare-fun m!682625 () Bool)

(assert (=> b!728837 m!682625))

(assert (=> b!728837 m!682625))

(declare-fun m!682627 () Bool)

(assert (=> b!728837 m!682627))

(assert (=> b!728837 m!682627))

(assert (=> b!728837 m!682625))

(declare-fun m!682629 () Bool)

(assert (=> b!728837 m!682629))

(declare-fun m!682631 () Bool)

(assert (=> start!64692 m!682631))

(declare-fun m!682633 () Bool)

(assert (=> start!64692 m!682633))

(declare-fun m!682635 () Bool)

(assert (=> b!728826 m!682635))

(declare-fun m!682637 () Bool)

(assert (=> b!728827 m!682637))

(declare-fun m!682639 () Bool)

(assert (=> b!728829 m!682639))

(declare-fun m!682641 () Bool)

(assert (=> b!728829 m!682641))

(assert (=> b!728841 m!682625))

(assert (=> b!728841 m!682625))

(declare-fun m!682643 () Bool)

(assert (=> b!728841 m!682643))

(assert (=> b!728842 m!682625))

(assert (=> b!728842 m!682625))

(declare-fun m!682645 () Bool)

(assert (=> b!728842 m!682645))

(declare-fun m!682647 () Bool)

(assert (=> b!728836 m!682647))

(declare-fun m!682649 () Bool)

(assert (=> b!728838 m!682649))

(declare-fun m!682651 () Bool)

(assert (=> b!728830 m!682651))

(declare-fun m!682653 () Bool)

(assert (=> b!728832 m!682653))

(declare-fun m!682655 () Bool)

(assert (=> b!728832 m!682655))

(declare-fun m!682657 () Bool)

(assert (=> b!728832 m!682657))

(assert (=> b!728832 m!682655))

(declare-fun m!682659 () Bool)

(assert (=> b!728832 m!682659))

(declare-fun m!682661 () Bool)

(assert (=> b!728832 m!682661))

(assert (=> b!728840 m!682625))

(assert (=> b!728840 m!682625))

(declare-fun m!682663 () Bool)

(assert (=> b!728840 m!682663))

(assert (=> b!728831 m!682625))

(assert (=> b!728831 m!682625))

(declare-fun m!682665 () Bool)

(assert (=> b!728831 m!682665))

(assert (=> b!728833 m!682625))

(assert (=> b!728833 m!682625))

(declare-fun m!682667 () Bool)

(assert (=> b!728833 m!682667))

(check-sat (not b!728828) (not b!728832) (not b!728840) (not b!728841) (not b!728831) (not b!728836) (not b!728842) (not b!728837) (not start!64692) (not b!728829) (not b!728838) (not b!728833) (not b!728827) (not b!728834) (not b!728830))
(check-sat)
