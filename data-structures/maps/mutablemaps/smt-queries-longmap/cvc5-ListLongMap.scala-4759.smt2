; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65632 () Bool)

(assert start!65632)

(declare-fun b!750509 () Bool)

(declare-fun e!418752 () Bool)

(declare-fun e!418751 () Bool)

(assert (=> b!750509 (= e!418752 e!418751)))

(declare-fun res!506673 () Bool)

(assert (=> b!750509 (=> res!506673 e!418751)))

(declare-fun lt!333743 () (_ BitVec 64))

(declare-fun lt!333749 () (_ BitVec 64))

(assert (=> b!750509 (= res!506673 (= lt!333743 lt!333749))))

(declare-datatypes ((array!41758 0))(
  ( (array!41759 (arr!19989 (Array (_ BitVec 32) (_ BitVec 64))) (size!20410 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41758)

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!750509 (= lt!333743 (select (store (arr!19989 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!750510 () Bool)

(declare-fun res!506676 () Bool)

(declare-fun e!418748 () Bool)

(assert (=> b!750510 (=> (not res!506676) (not e!418748))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41758 (_ BitVec 32)) Bool)

(assert (=> b!750510 (= res!506676 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!750512 () Bool)

(assert (=> b!750512 (= e!418751 (or (bvslt mask!3328 #b00000000000000000000000000000000) (bvslt index!1321 (bvadd #b00000000000000000000000000000001 mask!3328))))))

(declare-fun e!418749 () Bool)

(assert (=> b!750512 e!418749))

(declare-fun res!506669 () Bool)

(assert (=> b!750512 (=> (not res!506669) (not e!418749))))

(assert (=> b!750512 (= res!506669 (= lt!333743 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!25786 0))(
  ( (Unit!25787) )
))
(declare-fun lt!333745 () Unit!25786)

(declare-fun e!418742 () Unit!25786)

(assert (=> b!750512 (= lt!333745 e!418742)))

(declare-fun c!82302 () Bool)

(assert (=> b!750512 (= c!82302 (= lt!333743 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!750513 () Bool)

(declare-fun e!418744 () Bool)

(assert (=> b!750513 (= e!418744 (not e!418752))))

(declare-fun res!506679 () Bool)

(assert (=> b!750513 (=> res!506679 e!418752)))

(declare-fun x!1131 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7596 0))(
  ( (MissingZero!7596 (index!32751 (_ BitVec 32))) (Found!7596 (index!32752 (_ BitVec 32))) (Intermediate!7596 (undefined!8408 Bool) (index!32753 (_ BitVec 32)) (x!63707 (_ BitVec 32))) (Undefined!7596) (MissingVacant!7596 (index!32754 (_ BitVec 32))) )
))
(declare-fun lt!333747 () SeekEntryResult!7596)

(assert (=> b!750513 (= res!506679 (or (not (is-Intermediate!7596 lt!333747)) (bvslt x!1131 (x!63707 lt!333747)) (not (= x!1131 (x!63707 lt!333747))) (not (= index!1321 (index!32753 lt!333747)))))))

(declare-fun e!418747 () Bool)

(assert (=> b!750513 e!418747))

(declare-fun res!506681 () Bool)

(assert (=> b!750513 (=> (not res!506681) (not e!418747))))

(declare-fun lt!333752 () SeekEntryResult!7596)

(declare-fun lt!333748 () SeekEntryResult!7596)

(assert (=> b!750513 (= res!506681 (= lt!333752 lt!333748))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!750513 (= lt!333748 (Found!7596 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41758 (_ BitVec 32)) SeekEntryResult!7596)

(assert (=> b!750513 (= lt!333752 (seekEntryOrOpen!0 (select (arr!19989 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!750513 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!333744 () Unit!25786)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41758 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25786)

(assert (=> b!750513 (= lt!333744 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!750514 () Bool)

(declare-fun res!506680 () Bool)

(declare-fun e!418743 () Bool)

(assert (=> b!750514 (=> (not res!506680) (not e!418743))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!750514 (= res!506680 (validKeyInArray!0 k!2102))))

(declare-fun b!750515 () Bool)

(declare-fun Unit!25788 () Unit!25786)

(assert (=> b!750515 (= e!418742 Unit!25788)))

(assert (=> b!750515 false))

(declare-fun b!750516 () Bool)

(assert (=> b!750516 (= e!418743 e!418748)))

(declare-fun res!506684 () Bool)

(assert (=> b!750516 (=> (not res!506684) (not e!418748))))

(declare-fun lt!333742 () SeekEntryResult!7596)

(assert (=> b!750516 (= res!506684 (or (= lt!333742 (MissingZero!7596 i!1173)) (= lt!333742 (MissingVacant!7596 i!1173))))))

(assert (=> b!750516 (= lt!333742 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!750517 () Bool)

(declare-fun e!418745 () Bool)

(assert (=> b!750517 (= e!418748 e!418745)))

(declare-fun res!506682 () Bool)

(assert (=> b!750517 (=> (not res!506682) (not e!418745))))

(declare-fun lt!333746 () SeekEntryResult!7596)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41758 (_ BitVec 32)) SeekEntryResult!7596)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!750517 (= res!506682 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19989 a!3186) j!159) mask!3328) (select (arr!19989 a!3186) j!159) a!3186 mask!3328) lt!333746))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!750517 (= lt!333746 (Intermediate!7596 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!750518 () Bool)

(declare-fun res!506670 () Bool)

(assert (=> b!750518 (=> (not res!506670) (not e!418745))))

(declare-fun e!418746 () Bool)

(assert (=> b!750518 (= res!506670 e!418746)))

(declare-fun c!82301 () Bool)

(assert (=> b!750518 (= c!82301 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!750519 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41758 (_ BitVec 32)) SeekEntryResult!7596)

(assert (=> b!750519 (= e!418747 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19989 a!3186) j!159) a!3186 mask!3328) lt!333748))))

(declare-fun b!750520 () Bool)

(declare-fun res!506671 () Bool)

(assert (=> b!750520 (=> (not res!506671) (not e!418743))))

(declare-fun arrayContainsKey!0 (array!41758 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!750520 (= res!506671 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!750511 () Bool)

(assert (=> b!750511 (= e!418746 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19989 a!3186) j!159) a!3186 mask!3328) lt!333746))))

(declare-fun res!506674 () Bool)

(assert (=> start!65632 (=> (not res!506674) (not e!418743))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65632 (= res!506674 (validMask!0 mask!3328))))

(assert (=> start!65632 e!418743))

(assert (=> start!65632 true))

(declare-fun array_inv!15763 (array!41758) Bool)

(assert (=> start!65632 (array_inv!15763 a!3186)))

(declare-fun b!750521 () Bool)

(declare-fun res!506683 () Bool)

(assert (=> b!750521 (=> (not res!506683) (not e!418748))))

(declare-datatypes ((List!14044 0))(
  ( (Nil!14041) (Cons!14040 (h!15112 (_ BitVec 64)) (t!20367 List!14044)) )
))
(declare-fun arrayNoDuplicates!0 (array!41758 (_ BitVec 32) List!14044) Bool)

(assert (=> b!750521 (= res!506683 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14041))))

(declare-fun b!750522 () Bool)

(declare-fun res!506685 () Bool)

(assert (=> b!750522 (=> (not res!506685) (not e!418743))))

(assert (=> b!750522 (= res!506685 (validKeyInArray!0 (select (arr!19989 a!3186) j!159)))))

(declare-fun lt!333750 () array!41758)

(declare-fun b!750523 () Bool)

(assert (=> b!750523 (= e!418749 (= (seekEntryOrOpen!0 lt!333749 lt!333750 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!333749 lt!333750 mask!3328)))))

(declare-fun b!750524 () Bool)

(declare-fun res!506672 () Bool)

(assert (=> b!750524 (=> res!506672 e!418752)))

(assert (=> b!750524 (= res!506672 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19989 a!3186) j!159) a!3186 mask!3328) lt!333748)))))

(declare-fun b!750525 () Bool)

(declare-fun res!506675 () Bool)

(assert (=> b!750525 (=> (not res!506675) (not e!418743))))

(assert (=> b!750525 (= res!506675 (and (= (size!20410 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20410 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20410 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!750526 () Bool)

(assert (=> b!750526 (= e!418745 e!418744)))

(declare-fun res!506677 () Bool)

(assert (=> b!750526 (=> (not res!506677) (not e!418744))))

(declare-fun lt!333751 () SeekEntryResult!7596)

(assert (=> b!750526 (= res!506677 (= lt!333751 lt!333747))))

(assert (=> b!750526 (= lt!333747 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!333749 lt!333750 mask!3328))))

(assert (=> b!750526 (= lt!333751 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!333749 mask!3328) lt!333749 lt!333750 mask!3328))))

(assert (=> b!750526 (= lt!333749 (select (store (arr!19989 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!750526 (= lt!333750 (array!41759 (store (arr!19989 a!3186) i!1173 k!2102) (size!20410 a!3186)))))

(declare-fun b!750527 () Bool)

(declare-fun res!506678 () Bool)

(assert (=> b!750527 (=> (not res!506678) (not e!418745))))

(assert (=> b!750527 (= res!506678 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19989 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!750528 () Bool)

(declare-fun Unit!25789 () Unit!25786)

(assert (=> b!750528 (= e!418742 Unit!25789)))

(declare-fun b!750529 () Bool)

(assert (=> b!750529 (= e!418746 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19989 a!3186) j!159) a!3186 mask!3328) (Found!7596 j!159)))))

(declare-fun b!750530 () Bool)

(declare-fun res!506668 () Bool)

(assert (=> b!750530 (=> (not res!506668) (not e!418748))))

(assert (=> b!750530 (= res!506668 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20410 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20410 a!3186))))))

(assert (= (and start!65632 res!506674) b!750525))

(assert (= (and b!750525 res!506675) b!750522))

(assert (= (and b!750522 res!506685) b!750514))

(assert (= (and b!750514 res!506680) b!750520))

(assert (= (and b!750520 res!506671) b!750516))

(assert (= (and b!750516 res!506684) b!750510))

(assert (= (and b!750510 res!506676) b!750521))

(assert (= (and b!750521 res!506683) b!750530))

(assert (= (and b!750530 res!506668) b!750517))

(assert (= (and b!750517 res!506682) b!750527))

(assert (= (and b!750527 res!506678) b!750518))

(assert (= (and b!750518 c!82301) b!750511))

(assert (= (and b!750518 (not c!82301)) b!750529))

(assert (= (and b!750518 res!506670) b!750526))

(assert (= (and b!750526 res!506677) b!750513))

(assert (= (and b!750513 res!506681) b!750519))

(assert (= (and b!750513 (not res!506679)) b!750524))

(assert (= (and b!750524 (not res!506672)) b!750509))

(assert (= (and b!750509 (not res!506673)) b!750512))

(assert (= (and b!750512 c!82302) b!750515))

(assert (= (and b!750512 (not c!82302)) b!750528))

(assert (= (and b!750512 res!506669) b!750523))

(declare-fun m!699961 () Bool)

(assert (=> b!750517 m!699961))

(assert (=> b!750517 m!699961))

(declare-fun m!699963 () Bool)

(assert (=> b!750517 m!699963))

(assert (=> b!750517 m!699963))

(assert (=> b!750517 m!699961))

(declare-fun m!699965 () Bool)

(assert (=> b!750517 m!699965))

(declare-fun m!699967 () Bool)

(assert (=> b!750514 m!699967))

(declare-fun m!699969 () Bool)

(assert (=> b!750509 m!699969))

(declare-fun m!699971 () Bool)

(assert (=> b!750509 m!699971))

(declare-fun m!699973 () Bool)

(assert (=> b!750523 m!699973))

(declare-fun m!699975 () Bool)

(assert (=> b!750523 m!699975))

(assert (=> b!750513 m!699961))

(assert (=> b!750513 m!699961))

(declare-fun m!699977 () Bool)

(assert (=> b!750513 m!699977))

(declare-fun m!699979 () Bool)

(assert (=> b!750513 m!699979))

(declare-fun m!699981 () Bool)

(assert (=> b!750513 m!699981))

(declare-fun m!699983 () Bool)

(assert (=> b!750526 m!699983))

(declare-fun m!699985 () Bool)

(assert (=> b!750526 m!699985))

(declare-fun m!699987 () Bool)

(assert (=> b!750526 m!699987))

(assert (=> b!750526 m!699985))

(declare-fun m!699989 () Bool)

(assert (=> b!750526 m!699989))

(assert (=> b!750526 m!699969))

(declare-fun m!699991 () Bool)

(assert (=> b!750520 m!699991))

(declare-fun m!699993 () Bool)

(assert (=> b!750510 m!699993))

(declare-fun m!699995 () Bool)

(assert (=> start!65632 m!699995))

(declare-fun m!699997 () Bool)

(assert (=> start!65632 m!699997))

(declare-fun m!699999 () Bool)

(assert (=> b!750516 m!699999))

(declare-fun m!700001 () Bool)

(assert (=> b!750521 m!700001))

(assert (=> b!750524 m!699961))

(assert (=> b!750524 m!699961))

(declare-fun m!700003 () Bool)

(assert (=> b!750524 m!700003))

(assert (=> b!750522 m!699961))

(assert (=> b!750522 m!699961))

(declare-fun m!700005 () Bool)

(assert (=> b!750522 m!700005))

(assert (=> b!750519 m!699961))

(assert (=> b!750519 m!699961))

(declare-fun m!700007 () Bool)

(assert (=> b!750519 m!700007))

(declare-fun m!700009 () Bool)

(assert (=> b!750527 m!700009))

(assert (=> b!750511 m!699961))

(assert (=> b!750511 m!699961))

(declare-fun m!700011 () Bool)

(assert (=> b!750511 m!700011))

(assert (=> b!750529 m!699961))

(assert (=> b!750529 m!699961))

(assert (=> b!750529 m!700003))

(push 1)

(assert (not b!750510))

(assert (not b!750516))

(assert (not b!750519))

(assert (not b!750529))

(assert (not b!750522))

(assert (not b!750524))

(assert (not b!750526))

(assert (not b!750513))

(assert (not b!750514))

(assert (not b!750521))

(assert (not b!750517))

(assert (not start!65632))

(assert (not b!750523))

(assert (not b!750520))

(assert (not b!750511))

(check-sat)

(pop 1)

(push 1)

(check-sat)

