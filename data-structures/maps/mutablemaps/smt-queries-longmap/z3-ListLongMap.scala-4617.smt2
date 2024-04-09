; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64356 () Bool)

(assert start!64356)

(declare-fun b!722982 () Bool)

(declare-fun res!484737 () Bool)

(declare-fun e!405124 () Bool)

(assert (=> b!722982 (=> (not res!484737) (not e!405124))))

(declare-datatypes ((array!40890 0))(
  ( (array!40891 (arr!19564 (Array (_ BitVec 32) (_ BitVec 64))) (size!19985 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40890)

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!40890 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!722982 (= res!484737 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-datatypes ((SeekEntryResult!7171 0))(
  ( (MissingZero!7171 (index!31051 (_ BitVec 32))) (Found!7171 (index!31052 (_ BitVec 32))) (Intermediate!7171 (undefined!7983 Bool) (index!31053 (_ BitVec 32)) (x!62077 (_ BitVec 32))) (Undefined!7171) (MissingVacant!7171 (index!31054 (_ BitVec 32))) )
))
(declare-fun lt!320522 () SeekEntryResult!7171)

(declare-fun b!722983 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun e!405128 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40890 (_ BitVec 32)) SeekEntryResult!7171)

(assert (=> b!722983 (= e!405128 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19564 a!3186) j!159) a!3186 mask!3328) lt!320522))))

(declare-fun b!722984 () Bool)

(declare-fun res!484741 () Bool)

(declare-fun e!405129 () Bool)

(assert (=> b!722984 (=> (not res!484741) (not e!405129))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40890 (_ BitVec 32)) Bool)

(assert (=> b!722984 (= res!484741 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!722985 () Bool)

(assert (=> b!722985 (= e!405124 e!405129)))

(declare-fun res!484739 () Bool)

(assert (=> b!722985 (=> (not res!484739) (not e!405129))))

(declare-fun lt!320521 () SeekEntryResult!7171)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!722985 (= res!484739 (or (= lt!320521 (MissingZero!7171 i!1173)) (= lt!320521 (MissingVacant!7171 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40890 (_ BitVec 32)) SeekEntryResult!7171)

(assert (=> b!722985 (= lt!320521 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun res!484743 () Bool)

(assert (=> start!64356 (=> (not res!484743) (not e!405124))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64356 (= res!484743 (validMask!0 mask!3328))))

(assert (=> start!64356 e!405124))

(assert (=> start!64356 true))

(declare-fun array_inv!15338 (array!40890) Bool)

(assert (=> start!64356 (array_inv!15338 a!3186)))

(declare-fun b!722986 () Bool)

(declare-fun res!484748 () Bool)

(assert (=> b!722986 (=> (not res!484748) (not e!405129))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!722986 (= res!484748 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19985 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19985 a!3186))))))

(declare-fun b!722987 () Bool)

(declare-fun res!484746 () Bool)

(assert (=> b!722987 (=> (not res!484746) (not e!405124))))

(assert (=> b!722987 (= res!484746 (and (= (size!19985 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19985 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19985 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!722988 () Bool)

(declare-fun res!484745 () Bool)

(assert (=> b!722988 (=> (not res!484745) (not e!405124))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!722988 (= res!484745 (validKeyInArray!0 (select (arr!19564 a!3186) j!159)))))

(declare-fun b!722989 () Bool)

(declare-fun e!405125 () Bool)

(declare-fun e!405127 () Bool)

(assert (=> b!722989 (= e!405125 e!405127)))

(declare-fun res!484749 () Bool)

(assert (=> b!722989 (=> (not res!484749) (not e!405127))))

(declare-fun lt!320525 () array!40890)

(declare-fun lt!320523 () (_ BitVec 64))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!722989 (= res!484749 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!320523 mask!3328) lt!320523 lt!320525 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!320523 lt!320525 mask!3328)))))

(assert (=> b!722989 (= lt!320523 (select (store (arr!19564 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!722989 (= lt!320525 (array!40891 (store (arr!19564 a!3186) i!1173 k0!2102) (size!19985 a!3186)))))

(declare-fun b!722990 () Bool)

(assert (=> b!722990 (= e!405129 e!405125)))

(declare-fun res!484744 () Bool)

(assert (=> b!722990 (=> (not res!484744) (not e!405125))))

(assert (=> b!722990 (= res!484744 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19564 a!3186) j!159) mask!3328) (select (arr!19564 a!3186) j!159) a!3186 mask!3328) lt!320522))))

(assert (=> b!722990 (= lt!320522 (Intermediate!7171 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!722991 () Bool)

(declare-fun res!484747 () Bool)

(assert (=> b!722991 (=> (not res!484747) (not e!405124))))

(assert (=> b!722991 (= res!484747 (validKeyInArray!0 k0!2102))))

(declare-fun b!722992 () Bool)

(declare-fun res!484738 () Bool)

(assert (=> b!722992 (=> (not res!484738) (not e!405125))))

(assert (=> b!722992 (= res!484738 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19564 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!722993 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40890 (_ BitVec 32)) SeekEntryResult!7171)

(assert (=> b!722993 (= e!405128 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19564 a!3186) j!159) a!3186 mask!3328) (Found!7171 j!159)))))

(declare-fun b!722994 () Bool)

(assert (=> b!722994 (= e!405127 (not true))))

(assert (=> b!722994 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!24660 0))(
  ( (Unit!24661) )
))
(declare-fun lt!320524 () Unit!24660)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!40890 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24660)

(assert (=> b!722994 (= lt!320524 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!722995 () Bool)

(declare-fun res!484742 () Bool)

(assert (=> b!722995 (=> (not res!484742) (not e!405129))))

(declare-datatypes ((List!13619 0))(
  ( (Nil!13616) (Cons!13615 (h!14669 (_ BitVec 64)) (t!19942 List!13619)) )
))
(declare-fun arrayNoDuplicates!0 (array!40890 (_ BitVec 32) List!13619) Bool)

(assert (=> b!722995 (= res!484742 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13616))))

(declare-fun b!722996 () Bool)

(declare-fun res!484740 () Bool)

(assert (=> b!722996 (=> (not res!484740) (not e!405125))))

(assert (=> b!722996 (= res!484740 e!405128)))

(declare-fun c!79494 () Bool)

(assert (=> b!722996 (= c!79494 (bvsle x!1131 resIntermediateX!5))))

(assert (= (and start!64356 res!484743) b!722987))

(assert (= (and b!722987 res!484746) b!722988))

(assert (= (and b!722988 res!484745) b!722991))

(assert (= (and b!722991 res!484747) b!722982))

(assert (= (and b!722982 res!484737) b!722985))

(assert (= (and b!722985 res!484739) b!722984))

(assert (= (and b!722984 res!484741) b!722995))

(assert (= (and b!722995 res!484742) b!722986))

(assert (= (and b!722986 res!484748) b!722990))

(assert (= (and b!722990 res!484744) b!722992))

(assert (= (and b!722992 res!484738) b!722996))

(assert (= (and b!722996 c!79494) b!722983))

(assert (= (and b!722996 (not c!79494)) b!722993))

(assert (= (and b!722996 res!484740) b!722989))

(assert (= (and b!722989 res!484749) b!722994))

(declare-fun m!677545 () Bool)

(assert (=> b!722982 m!677545))

(declare-fun m!677547 () Bool)

(assert (=> b!722983 m!677547))

(assert (=> b!722983 m!677547))

(declare-fun m!677549 () Bool)

(assert (=> b!722983 m!677549))

(declare-fun m!677551 () Bool)

(assert (=> b!722992 m!677551))

(declare-fun m!677553 () Bool)

(assert (=> b!722995 m!677553))

(declare-fun m!677555 () Bool)

(assert (=> b!722991 m!677555))

(assert (=> b!722993 m!677547))

(assert (=> b!722993 m!677547))

(declare-fun m!677557 () Bool)

(assert (=> b!722993 m!677557))

(declare-fun m!677559 () Bool)

(assert (=> b!722994 m!677559))

(declare-fun m!677561 () Bool)

(assert (=> b!722994 m!677561))

(declare-fun m!677563 () Bool)

(assert (=> start!64356 m!677563))

(declare-fun m!677565 () Bool)

(assert (=> start!64356 m!677565))

(declare-fun m!677567 () Bool)

(assert (=> b!722984 m!677567))

(assert (=> b!722990 m!677547))

(assert (=> b!722990 m!677547))

(declare-fun m!677569 () Bool)

(assert (=> b!722990 m!677569))

(assert (=> b!722990 m!677569))

(assert (=> b!722990 m!677547))

(declare-fun m!677571 () Bool)

(assert (=> b!722990 m!677571))

(declare-fun m!677573 () Bool)

(assert (=> b!722985 m!677573))

(declare-fun m!677575 () Bool)

(assert (=> b!722989 m!677575))

(declare-fun m!677577 () Bool)

(assert (=> b!722989 m!677577))

(declare-fun m!677579 () Bool)

(assert (=> b!722989 m!677579))

(declare-fun m!677581 () Bool)

(assert (=> b!722989 m!677581))

(assert (=> b!722989 m!677577))

(declare-fun m!677583 () Bool)

(assert (=> b!722989 m!677583))

(assert (=> b!722988 m!677547))

(assert (=> b!722988 m!677547))

(declare-fun m!677585 () Bool)

(assert (=> b!722988 m!677585))

(check-sat (not b!722983) (not b!722995) (not b!722988) (not b!722993) (not b!722982) (not b!722989) (not b!722991) (not b!722985) (not b!722990) (not b!722984) (not b!722994) (not start!64356))
(check-sat)
