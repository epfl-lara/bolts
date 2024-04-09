; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65512 () Bool)

(assert start!65512)

(declare-datatypes ((array!41638 0))(
  ( (array!41639 (arr!19929 (Array (_ BitVec 32) (_ BitVec 64))) (size!20350 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41638)

(declare-fun b!746667 () Bool)

(declare-fun e!416979 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7536 0))(
  ( (MissingZero!7536 (index!32511 (_ BitVec 32))) (Found!7536 (index!32512 (_ BitVec 32))) (Intermediate!7536 (undefined!8348 Bool) (index!32513 (_ BitVec 32)) (x!63487 (_ BitVec 32))) (Undefined!7536) (MissingVacant!7536 (index!32514 (_ BitVec 32))) )
))
(declare-fun lt!331881 () SeekEntryResult!7536)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41638 (_ BitVec 32)) SeekEntryResult!7536)

(assert (=> b!746667 (= e!416979 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19929 a!3186) j!159) a!3186 mask!3328) lt!331881))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun b!746668 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun e!416981 () Bool)

(declare-fun lt!331878 () SeekEntryResult!7536)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41638 (_ BitVec 32)) SeekEntryResult!7536)

(assert (=> b!746668 (= e!416981 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19929 a!3186) j!159) a!3186 mask!3328) lt!331878))))

(declare-fun b!746669 () Bool)

(declare-fun res!503543 () Bool)

(declare-fun e!416978 () Bool)

(assert (=> b!746669 (=> (not res!503543) (not e!416978))))

(declare-datatypes ((List!13984 0))(
  ( (Nil!13981) (Cons!13980 (h!15052 (_ BitVec 64)) (t!20307 List!13984)) )
))
(declare-fun arrayNoDuplicates!0 (array!41638 (_ BitVec 32) List!13984) Bool)

(assert (=> b!746669 (= res!503543 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13981))))

(declare-fun b!746671 () Bool)

(declare-fun res!503541 () Bool)

(declare-fun e!416982 () Bool)

(assert (=> b!746671 (=> (not res!503541) (not e!416982))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!746671 (= res!503541 (validKeyInArray!0 (select (arr!19929 a!3186) j!159)))))

(declare-fun b!746672 () Bool)

(declare-fun e!416980 () Bool)

(assert (=> b!746672 (= e!416980 true)))

(declare-fun lt!331884 () SeekEntryResult!7536)

(declare-fun lt!331879 () SeekEntryResult!7536)

(assert (=> b!746672 (= lt!331884 lt!331879)))

(declare-fun b!746673 () Bool)

(declare-fun res!503540 () Bool)

(assert (=> b!746673 (=> (not res!503540) (not e!416982))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!41638 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!746673 (= res!503540 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!746674 () Bool)

(declare-fun res!503533 () Bool)

(assert (=> b!746674 (=> (not res!503533) (not e!416982))))

(assert (=> b!746674 (= res!503533 (validKeyInArray!0 k!2102))))

(declare-fun b!746675 () Bool)

(assert (=> b!746675 (= e!416979 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19929 a!3186) j!159) a!3186 mask!3328) (Found!7536 j!159)))))

(declare-fun b!746676 () Bool)

(declare-fun res!503534 () Bool)

(assert (=> b!746676 (=> (not res!503534) (not e!416978))))

(assert (=> b!746676 (= res!503534 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20350 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20350 a!3186))))))

(declare-fun b!746677 () Bool)

(declare-fun res!503536 () Bool)

(declare-fun e!416976 () Bool)

(assert (=> b!746677 (=> (not res!503536) (not e!416976))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!746677 (= res!503536 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19929 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!746678 () Bool)

(assert (=> b!746678 (= e!416982 e!416978)))

(declare-fun res!503542 () Bool)

(assert (=> b!746678 (=> (not res!503542) (not e!416978))))

(declare-fun lt!331883 () SeekEntryResult!7536)

(assert (=> b!746678 (= res!503542 (or (= lt!331883 (MissingZero!7536 i!1173)) (= lt!331883 (MissingVacant!7536 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41638 (_ BitVec 32)) SeekEntryResult!7536)

(assert (=> b!746678 (= lt!331883 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!746679 () Bool)

(declare-fun res!503547 () Bool)

(assert (=> b!746679 (=> (not res!503547) (not e!416976))))

(assert (=> b!746679 (= res!503547 e!416979)))

(declare-fun c!81948 () Bool)

(assert (=> b!746679 (= c!81948 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!746680 () Bool)

(declare-fun e!416974 () Bool)

(declare-fun e!416977 () Bool)

(assert (=> b!746680 (= e!416974 (not e!416977))))

(declare-fun res!503546 () Bool)

(assert (=> b!746680 (=> res!503546 e!416977)))

(declare-fun lt!331886 () SeekEntryResult!7536)

(assert (=> b!746680 (= res!503546 (or (not (is-Intermediate!7536 lt!331886)) (bvslt x!1131 (x!63487 lt!331886)) (not (= x!1131 (x!63487 lt!331886))) (not (= index!1321 (index!32513 lt!331886)))))))

(assert (=> b!746680 e!416981))

(declare-fun res!503538 () Bool)

(assert (=> b!746680 (=> (not res!503538) (not e!416981))))

(assert (=> b!746680 (= res!503538 (= lt!331884 lt!331878))))

(assert (=> b!746680 (= lt!331878 (Found!7536 j!159))))

(assert (=> b!746680 (= lt!331884 (seekEntryOrOpen!0 (select (arr!19929 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41638 (_ BitVec 32)) Bool)

(assert (=> b!746680 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!25552 0))(
  ( (Unit!25553) )
))
(declare-fun lt!331877 () Unit!25552)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41638 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25552)

(assert (=> b!746680 (= lt!331877 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!746681 () Bool)

(declare-fun res!503544 () Bool)

(assert (=> b!746681 (=> (not res!503544) (not e!416982))))

(assert (=> b!746681 (= res!503544 (and (= (size!20350 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20350 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20350 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!746670 () Bool)

(assert (=> b!746670 (= e!416978 e!416976)))

(declare-fun res!503545 () Bool)

(assert (=> b!746670 (=> (not res!503545) (not e!416976))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!746670 (= res!503545 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19929 a!3186) j!159) mask!3328) (select (arr!19929 a!3186) j!159) a!3186 mask!3328) lt!331881))))

(assert (=> b!746670 (= lt!331881 (Intermediate!7536 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun res!503539 () Bool)

(assert (=> start!65512 (=> (not res!503539) (not e!416982))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65512 (= res!503539 (validMask!0 mask!3328))))

(assert (=> start!65512 e!416982))

(assert (=> start!65512 true))

(declare-fun array_inv!15703 (array!41638) Bool)

(assert (=> start!65512 (array_inv!15703 a!3186)))

(declare-fun b!746682 () Bool)

(assert (=> b!746682 (= e!416977 e!416980)))

(declare-fun res!503535 () Bool)

(assert (=> b!746682 (=> res!503535 e!416980)))

(declare-fun lt!331880 () (_ BitVec 64))

(assert (=> b!746682 (= res!503535 (or (not (= lt!331879 lt!331878)) (= (select (store (arr!19929 a!3186) i!1173 k!2102) index!1321) lt!331880) (not (= (select (store (arr!19929 a!3186) i!1173 k!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!746682 (= lt!331879 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19929 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!746683 () Bool)

(declare-fun res!503537 () Bool)

(assert (=> b!746683 (=> (not res!503537) (not e!416978))))

(assert (=> b!746683 (= res!503537 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!746684 () Bool)

(assert (=> b!746684 (= e!416976 e!416974)))

(declare-fun res!503532 () Bool)

(assert (=> b!746684 (=> (not res!503532) (not e!416974))))

(declare-fun lt!331885 () SeekEntryResult!7536)

(assert (=> b!746684 (= res!503532 (= lt!331885 lt!331886))))

(declare-fun lt!331882 () array!41638)

(assert (=> b!746684 (= lt!331886 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!331880 lt!331882 mask!3328))))

(assert (=> b!746684 (= lt!331885 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!331880 mask!3328) lt!331880 lt!331882 mask!3328))))

(assert (=> b!746684 (= lt!331880 (select (store (arr!19929 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!746684 (= lt!331882 (array!41639 (store (arr!19929 a!3186) i!1173 k!2102) (size!20350 a!3186)))))

(assert (= (and start!65512 res!503539) b!746681))

(assert (= (and b!746681 res!503544) b!746671))

(assert (= (and b!746671 res!503541) b!746674))

(assert (= (and b!746674 res!503533) b!746673))

(assert (= (and b!746673 res!503540) b!746678))

(assert (= (and b!746678 res!503542) b!746683))

(assert (= (and b!746683 res!503537) b!746669))

(assert (= (and b!746669 res!503543) b!746676))

(assert (= (and b!746676 res!503534) b!746670))

(assert (= (and b!746670 res!503545) b!746677))

(assert (= (and b!746677 res!503536) b!746679))

(assert (= (and b!746679 c!81948) b!746667))

(assert (= (and b!746679 (not c!81948)) b!746675))

(assert (= (and b!746679 res!503547) b!746684))

(assert (= (and b!746684 res!503532) b!746680))

(assert (= (and b!746680 res!503538) b!746668))

(assert (= (and b!746680 (not res!503546)) b!746682))

(assert (= (and b!746682 (not res!503535)) b!746672))

(declare-fun m!696985 () Bool)

(assert (=> b!746670 m!696985))

(assert (=> b!746670 m!696985))

(declare-fun m!696987 () Bool)

(assert (=> b!746670 m!696987))

(assert (=> b!746670 m!696987))

(assert (=> b!746670 m!696985))

(declare-fun m!696989 () Bool)

(assert (=> b!746670 m!696989))

(declare-fun m!696991 () Bool)

(assert (=> start!65512 m!696991))

(declare-fun m!696993 () Bool)

(assert (=> start!65512 m!696993))

(assert (=> b!746668 m!696985))

(assert (=> b!746668 m!696985))

(declare-fun m!696995 () Bool)

(assert (=> b!746668 m!696995))

(assert (=> b!746667 m!696985))

(assert (=> b!746667 m!696985))

(declare-fun m!696997 () Bool)

(assert (=> b!746667 m!696997))

(declare-fun m!696999 () Bool)

(assert (=> b!746678 m!696999))

(assert (=> b!746671 m!696985))

(assert (=> b!746671 m!696985))

(declare-fun m!697001 () Bool)

(assert (=> b!746671 m!697001))

(declare-fun m!697003 () Bool)

(assert (=> b!746677 m!697003))

(declare-fun m!697005 () Bool)

(assert (=> b!746683 m!697005))

(declare-fun m!697007 () Bool)

(assert (=> b!746682 m!697007))

(declare-fun m!697009 () Bool)

(assert (=> b!746682 m!697009))

(assert (=> b!746682 m!696985))

(assert (=> b!746682 m!696985))

(declare-fun m!697011 () Bool)

(assert (=> b!746682 m!697011))

(declare-fun m!697013 () Bool)

(assert (=> b!746674 m!697013))

(assert (=> b!746680 m!696985))

(assert (=> b!746680 m!696985))

(declare-fun m!697015 () Bool)

(assert (=> b!746680 m!697015))

(declare-fun m!697017 () Bool)

(assert (=> b!746680 m!697017))

(declare-fun m!697019 () Bool)

(assert (=> b!746680 m!697019))

(declare-fun m!697021 () Bool)

(assert (=> b!746673 m!697021))

(declare-fun m!697023 () Bool)

(assert (=> b!746669 m!697023))

(assert (=> b!746675 m!696985))

(assert (=> b!746675 m!696985))

(assert (=> b!746675 m!697011))

(declare-fun m!697025 () Bool)

(assert (=> b!746684 m!697025))

(assert (=> b!746684 m!697007))

(assert (=> b!746684 m!697025))

(declare-fun m!697027 () Bool)

(assert (=> b!746684 m!697027))

(declare-fun m!697029 () Bool)

(assert (=> b!746684 m!697029))

(declare-fun m!697031 () Bool)

(assert (=> b!746684 m!697031))

(push 1)

