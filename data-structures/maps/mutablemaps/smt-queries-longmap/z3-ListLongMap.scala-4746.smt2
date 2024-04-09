; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65556 () Bool)

(assert start!65556)

(declare-fun b!748041 () Bool)

(declare-fun res!504669 () Bool)

(declare-fun e!417585 () Bool)

(assert (=> b!748041 (=> (not res!504669) (not e!417585))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!748041 (= res!504669 (validKeyInArray!0 k0!2102))))

(declare-fun b!748042 () Bool)

(declare-fun res!504672 () Bool)

(declare-fun e!417583 () Bool)

(assert (=> b!748042 (=> (not res!504672) (not e!417583))))

(declare-datatypes ((array!41682 0))(
  ( (array!41683 (arr!19951 (Array (_ BitVec 32) (_ BitVec 64))) (size!20372 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41682)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41682 (_ BitVec 32)) Bool)

(assert (=> b!748042 (= res!504672 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!748043 () Bool)

(declare-fun res!504660 () Bool)

(assert (=> b!748043 (=> (not res!504660) (not e!417585))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!748043 (= res!504660 (and (= (size!20372 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20372 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20372 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!748044 () Bool)

(declare-fun e!417578 () Bool)

(assert (=> b!748044 (= e!417578 true)))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!748044 (= (select (store (arr!19951 a!3186) i!1173 k0!2102) index!1321) #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-datatypes ((Unit!25634 0))(
  ( (Unit!25635) )
))
(declare-fun lt!332540 () Unit!25634)

(declare-fun e!417580 () Unit!25634)

(assert (=> b!748044 (= lt!332540 e!417580)))

(declare-fun c!82074 () Bool)

(assert (=> b!748044 (= c!82074 (= (select (store (arr!19951 a!3186) i!1173 k0!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!748045 () Bool)

(declare-fun res!504667 () Bool)

(declare-fun e!417577 () Bool)

(assert (=> b!748045 (=> (not res!504667) (not e!417577))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!748045 (= res!504667 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19951 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!748046 () Bool)

(declare-fun res!504656 () Bool)

(assert (=> b!748046 (=> res!504656 e!417578)))

(declare-fun x!1131 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7558 0))(
  ( (MissingZero!7558 (index!32599 (_ BitVec 32))) (Found!7558 (index!32600 (_ BitVec 32))) (Intermediate!7558 (undefined!8370 Bool) (index!32601 (_ BitVec 32)) (x!63565 (_ BitVec 32))) (Undefined!7558) (MissingVacant!7558 (index!32602 (_ BitVec 32))) )
))
(declare-fun lt!332541 () SeekEntryResult!7558)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41682 (_ BitVec 32)) SeekEntryResult!7558)

(assert (=> b!748046 (= res!504656 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19951 a!3186) j!159) a!3186 mask!3328) lt!332541)))))

(declare-fun b!748047 () Bool)

(declare-fun res!504665 () Bool)

(assert (=> b!748047 (=> (not res!504665) (not e!417585))))

(assert (=> b!748047 (= res!504665 (validKeyInArray!0 (select (arr!19951 a!3186) j!159)))))

(declare-fun b!748048 () Bool)

(declare-fun res!504661 () Bool)

(assert (=> b!748048 (=> (not res!504661) (not e!417585))))

(declare-fun arrayContainsKey!0 (array!41682 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!748048 (= res!504661 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun lt!332545 () SeekEntryResult!7558)

(declare-fun e!417582 () Bool)

(declare-fun b!748049 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41682 (_ BitVec 32)) SeekEntryResult!7558)

(assert (=> b!748049 (= e!417582 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19951 a!3186) j!159) a!3186 mask!3328) lt!332545))))

(declare-fun b!748050 () Bool)

(declare-fun res!504671 () Bool)

(assert (=> b!748050 (=> (not res!504671) (not e!417583))))

(declare-datatypes ((List!14006 0))(
  ( (Nil!14003) (Cons!14002 (h!15074 (_ BitVec 64)) (t!20329 List!14006)) )
))
(declare-fun arrayNoDuplicates!0 (array!41682 (_ BitVec 32) List!14006) Bool)

(assert (=> b!748050 (= res!504671 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14003))))

(declare-fun b!748051 () Bool)

(assert (=> b!748051 (= e!417585 e!417583)))

(declare-fun res!504662 () Bool)

(assert (=> b!748051 (=> (not res!504662) (not e!417583))))

(declare-fun lt!332542 () SeekEntryResult!7558)

(assert (=> b!748051 (= res!504662 (or (= lt!332542 (MissingZero!7558 i!1173)) (= lt!332542 (MissingVacant!7558 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41682 (_ BitVec 32)) SeekEntryResult!7558)

(assert (=> b!748051 (= lt!332542 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!748053 () Bool)

(declare-fun res!504668 () Bool)

(assert (=> b!748053 (=> res!504668 e!417578)))

(declare-fun lt!332537 () (_ BitVec 64))

(assert (=> b!748053 (= res!504668 (= (select (store (arr!19951 a!3186) i!1173 k0!2102) index!1321) lt!332537))))

(declare-fun b!748054 () Bool)

(declare-fun res!504666 () Bool)

(assert (=> b!748054 (=> (not res!504666) (not e!417583))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!748054 (= res!504666 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20372 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20372 a!3186))))))

(declare-fun b!748055 () Bool)

(assert (=> b!748055 (= e!417583 e!417577)))

(declare-fun res!504663 () Bool)

(assert (=> b!748055 (=> (not res!504663) (not e!417577))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!748055 (= res!504663 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19951 a!3186) j!159) mask!3328) (select (arr!19951 a!3186) j!159) a!3186 mask!3328) lt!332545))))

(assert (=> b!748055 (= lt!332545 (Intermediate!7558 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!748056 () Bool)

(declare-fun res!504664 () Bool)

(assert (=> b!748056 (=> (not res!504664) (not e!417577))))

(assert (=> b!748056 (= res!504664 e!417582)))

(declare-fun c!82073 () Bool)

(assert (=> b!748056 (= c!82073 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!748057 () Bool)

(assert (=> b!748057 (= e!417582 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19951 a!3186) j!159) a!3186 mask!3328) (Found!7558 j!159)))))

(declare-fun b!748058 () Bool)

(declare-fun Unit!25636 () Unit!25634)

(assert (=> b!748058 (= e!417580 Unit!25636)))

(assert (=> b!748058 false))

(declare-fun b!748059 () Bool)

(declare-fun e!417584 () Bool)

(assert (=> b!748059 (= e!417584 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19951 a!3186) j!159) a!3186 mask!3328) lt!332541))))

(declare-fun b!748060 () Bool)

(declare-fun Unit!25637 () Unit!25634)

(assert (=> b!748060 (= e!417580 Unit!25637)))

(declare-fun b!748061 () Bool)

(declare-fun e!417579 () Bool)

(assert (=> b!748061 (= e!417579 (not e!417578))))

(declare-fun res!504658 () Bool)

(assert (=> b!748061 (=> res!504658 e!417578)))

(declare-fun lt!332546 () SeekEntryResult!7558)

(get-info :version)

(assert (=> b!748061 (= res!504658 (or (not ((_ is Intermediate!7558) lt!332546)) (bvslt x!1131 (x!63565 lt!332546)) (not (= x!1131 (x!63565 lt!332546))) (not (= index!1321 (index!32601 lt!332546)))))))

(assert (=> b!748061 e!417584))

(declare-fun res!504659 () Bool)

(assert (=> b!748061 (=> (not res!504659) (not e!417584))))

(declare-fun lt!332538 () SeekEntryResult!7558)

(assert (=> b!748061 (= res!504659 (= lt!332538 lt!332541))))

(assert (=> b!748061 (= lt!332541 (Found!7558 j!159))))

(assert (=> b!748061 (= lt!332538 (seekEntryOrOpen!0 (select (arr!19951 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!748061 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!332539 () Unit!25634)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41682 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25634)

(assert (=> b!748061 (= lt!332539 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun res!504670 () Bool)

(assert (=> start!65556 (=> (not res!504670) (not e!417585))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65556 (= res!504670 (validMask!0 mask!3328))))

(assert (=> start!65556 e!417585))

(assert (=> start!65556 true))

(declare-fun array_inv!15725 (array!41682) Bool)

(assert (=> start!65556 (array_inv!15725 a!3186)))

(declare-fun b!748052 () Bool)

(assert (=> b!748052 (= e!417577 e!417579)))

(declare-fun res!504657 () Bool)

(assert (=> b!748052 (=> (not res!504657) (not e!417579))))

(declare-fun lt!332543 () SeekEntryResult!7558)

(assert (=> b!748052 (= res!504657 (= lt!332543 lt!332546))))

(declare-fun lt!332544 () array!41682)

(assert (=> b!748052 (= lt!332546 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!332537 lt!332544 mask!3328))))

(assert (=> b!748052 (= lt!332543 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!332537 mask!3328) lt!332537 lt!332544 mask!3328))))

(assert (=> b!748052 (= lt!332537 (select (store (arr!19951 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!748052 (= lt!332544 (array!41683 (store (arr!19951 a!3186) i!1173 k0!2102) (size!20372 a!3186)))))

(assert (= (and start!65556 res!504670) b!748043))

(assert (= (and b!748043 res!504660) b!748047))

(assert (= (and b!748047 res!504665) b!748041))

(assert (= (and b!748041 res!504669) b!748048))

(assert (= (and b!748048 res!504661) b!748051))

(assert (= (and b!748051 res!504662) b!748042))

(assert (= (and b!748042 res!504672) b!748050))

(assert (= (and b!748050 res!504671) b!748054))

(assert (= (and b!748054 res!504666) b!748055))

(assert (= (and b!748055 res!504663) b!748045))

(assert (= (and b!748045 res!504667) b!748056))

(assert (= (and b!748056 c!82073) b!748049))

(assert (= (and b!748056 (not c!82073)) b!748057))

(assert (= (and b!748056 res!504664) b!748052))

(assert (= (and b!748052 res!504657) b!748061))

(assert (= (and b!748061 res!504659) b!748059))

(assert (= (and b!748061 (not res!504658)) b!748046))

(assert (= (and b!748046 (not res!504656)) b!748053))

(assert (= (and b!748053 (not res!504668)) b!748044))

(assert (= (and b!748044 c!82074) b!748058))

(assert (= (and b!748044 (not c!82074)) b!748060))

(declare-fun m!698047 () Bool)

(assert (=> b!748041 m!698047))

(declare-fun m!698049 () Bool)

(assert (=> b!748052 m!698049))

(declare-fun m!698051 () Bool)

(assert (=> b!748052 m!698051))

(declare-fun m!698053 () Bool)

(assert (=> b!748052 m!698053))

(declare-fun m!698055 () Bool)

(assert (=> b!748052 m!698055))

(assert (=> b!748052 m!698049))

(declare-fun m!698057 () Bool)

(assert (=> b!748052 m!698057))

(assert (=> b!748053 m!698055))

(declare-fun m!698059 () Bool)

(assert (=> b!748053 m!698059))

(declare-fun m!698061 () Bool)

(assert (=> b!748042 m!698061))

(declare-fun m!698063 () Bool)

(assert (=> b!748051 m!698063))

(declare-fun m!698065 () Bool)

(assert (=> b!748050 m!698065))

(declare-fun m!698067 () Bool)

(assert (=> b!748046 m!698067))

(assert (=> b!748046 m!698067))

(declare-fun m!698069 () Bool)

(assert (=> b!748046 m!698069))

(assert (=> b!748061 m!698067))

(assert (=> b!748061 m!698067))

(declare-fun m!698071 () Bool)

(assert (=> b!748061 m!698071))

(declare-fun m!698073 () Bool)

(assert (=> b!748061 m!698073))

(declare-fun m!698075 () Bool)

(assert (=> b!748061 m!698075))

(declare-fun m!698077 () Bool)

(assert (=> start!65556 m!698077))

(declare-fun m!698079 () Bool)

(assert (=> start!65556 m!698079))

(declare-fun m!698081 () Bool)

(assert (=> b!748045 m!698081))

(assert (=> b!748044 m!698055))

(assert (=> b!748044 m!698059))

(declare-fun m!698083 () Bool)

(assert (=> b!748048 m!698083))

(assert (=> b!748047 m!698067))

(assert (=> b!748047 m!698067))

(declare-fun m!698085 () Bool)

(assert (=> b!748047 m!698085))

(assert (=> b!748057 m!698067))

(assert (=> b!748057 m!698067))

(assert (=> b!748057 m!698069))

(assert (=> b!748049 m!698067))

(assert (=> b!748049 m!698067))

(declare-fun m!698087 () Bool)

(assert (=> b!748049 m!698087))

(assert (=> b!748059 m!698067))

(assert (=> b!748059 m!698067))

(declare-fun m!698089 () Bool)

(assert (=> b!748059 m!698089))

(assert (=> b!748055 m!698067))

(assert (=> b!748055 m!698067))

(declare-fun m!698091 () Bool)

(assert (=> b!748055 m!698091))

(assert (=> b!748055 m!698091))

(assert (=> b!748055 m!698067))

(declare-fun m!698093 () Bool)

(assert (=> b!748055 m!698093))

(check-sat (not b!748047) (not b!748059) (not b!748057) (not b!748046) (not b!748052) (not start!65556) (not b!748049) (not b!748050) (not b!748051) (not b!748055) (not b!748048) (not b!748041) (not b!748061) (not b!748042))
(check-sat)
