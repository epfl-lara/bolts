; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65510 () Bool)

(assert start!65510)

(declare-fun b!746613 () Bool)

(declare-fun e!416950 () Bool)

(declare-fun e!416951 () Bool)

(assert (=> b!746613 (= e!416950 e!416951)))

(declare-fun res!503496 () Bool)

(assert (=> b!746613 (=> (not res!503496) (not e!416951))))

(declare-datatypes ((SeekEntryResult!7535 0))(
  ( (MissingZero!7535 (index!32507 (_ BitVec 32))) (Found!7535 (index!32508 (_ BitVec 32))) (Intermediate!7535 (undefined!8347 Bool) (index!32509 (_ BitVec 32)) (x!63478 (_ BitVec 32))) (Undefined!7535) (MissingVacant!7535 (index!32510 (_ BitVec 32))) )
))
(declare-fun lt!331852 () SeekEntryResult!7535)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!746613 (= res!503496 (or (= lt!331852 (MissingZero!7535 i!1173)) (= lt!331852 (MissingVacant!7535 i!1173))))))

(declare-datatypes ((array!41636 0))(
  ( (array!41637 (arr!19928 (Array (_ BitVec 32) (_ BitVec 64))) (size!20349 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41636)

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41636 (_ BitVec 32)) SeekEntryResult!7535)

(assert (=> b!746613 (= lt!331852 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!746614 () Bool)

(declare-fun res!503492 () Bool)

(assert (=> b!746614 (=> (not res!503492) (not e!416950))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!746614 (= res!503492 (and (= (size!20349 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20349 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20349 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!746615 () Bool)

(declare-fun res!503498 () Bool)

(assert (=> b!746615 (=> (not res!503498) (not e!416951))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41636 (_ BitVec 32)) Bool)

(assert (=> b!746615 (= res!503498 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!746616 () Bool)

(declare-fun e!416952 () Bool)

(assert (=> b!746616 (= e!416952 true)))

(declare-fun lt!331856 () SeekEntryResult!7535)

(declare-fun lt!331848 () SeekEntryResult!7535)

(assert (=> b!746616 (= lt!331856 lt!331848)))

(declare-fun b!746617 () Bool)

(declare-fun res!503485 () Bool)

(declare-fun e!416949 () Bool)

(assert (=> b!746617 (=> (not res!503485) (not e!416949))))

(declare-fun e!416948 () Bool)

(assert (=> b!746617 (= res!503485 e!416948)))

(declare-fun c!81945 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!746617 (= c!81945 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!746618 () Bool)

(declare-fun res!503494 () Bool)

(assert (=> b!746618 (=> (not res!503494) (not e!416950))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!746618 (= res!503494 (validKeyInArray!0 (select (arr!19928 a!3186) j!159)))))

(declare-fun b!746619 () Bool)

(declare-fun res!503484 () Bool)

(assert (=> b!746619 (=> (not res!503484) (not e!416950))))

(assert (=> b!746619 (= res!503484 (validKeyInArray!0 k!2102))))

(declare-fun b!746620 () Bool)

(declare-fun res!503488 () Bool)

(assert (=> b!746620 (=> (not res!503488) (not e!416951))))

(declare-datatypes ((List!13983 0))(
  ( (Nil!13980) (Cons!13979 (h!15051 (_ BitVec 64)) (t!20306 List!13983)) )
))
(declare-fun arrayNoDuplicates!0 (array!41636 (_ BitVec 32) List!13983) Bool)

(assert (=> b!746620 (= res!503488 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13980))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!746621 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41636 (_ BitVec 32)) SeekEntryResult!7535)

(assert (=> b!746621 (= e!416948 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19928 a!3186) j!159) a!3186 mask!3328) (Found!7535 j!159)))))

(declare-fun b!746622 () Bool)

(declare-fun res!503490 () Bool)

(assert (=> b!746622 (=> (not res!503490) (not e!416949))))

(assert (=> b!746622 (= res!503490 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19928 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!746623 () Bool)

(assert (=> b!746623 (= e!416951 e!416949)))

(declare-fun res!503486 () Bool)

(assert (=> b!746623 (=> (not res!503486) (not e!416949))))

(declare-fun lt!331849 () SeekEntryResult!7535)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41636 (_ BitVec 32)) SeekEntryResult!7535)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!746623 (= res!503486 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19928 a!3186) j!159) mask!3328) (select (arr!19928 a!3186) j!159) a!3186 mask!3328) lt!331849))))

(assert (=> b!746623 (= lt!331849 (Intermediate!7535 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!746624 () Bool)

(declare-fun res!503499 () Bool)

(assert (=> b!746624 (=> (not res!503499) (not e!416951))))

(assert (=> b!746624 (= res!503499 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20349 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20349 a!3186))))))

(declare-fun b!746625 () Bool)

(assert (=> b!746625 (= e!416948 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19928 a!3186) j!159) a!3186 mask!3328) lt!331849))))

(declare-fun res!503487 () Bool)

(assert (=> start!65510 (=> (not res!503487) (not e!416950))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65510 (= res!503487 (validMask!0 mask!3328))))

(assert (=> start!65510 e!416950))

(assert (=> start!65510 true))

(declare-fun array_inv!15702 (array!41636) Bool)

(assert (=> start!65510 (array_inv!15702 a!3186)))

(declare-fun e!416954 () Bool)

(declare-fun lt!331851 () SeekEntryResult!7535)

(declare-fun b!746626 () Bool)

(assert (=> b!746626 (= e!416954 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19928 a!3186) j!159) a!3186 mask!3328) lt!331851))))

(declare-fun b!746627 () Bool)

(declare-fun res!503497 () Bool)

(assert (=> b!746627 (=> (not res!503497) (not e!416950))))

(declare-fun arrayContainsKey!0 (array!41636 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!746627 (= res!503497 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!746628 () Bool)

(declare-fun e!416953 () Bool)

(assert (=> b!746628 (= e!416953 e!416952)))

(declare-fun res!503495 () Bool)

(assert (=> b!746628 (=> res!503495 e!416952)))

(declare-fun lt!331850 () (_ BitVec 64))

(assert (=> b!746628 (= res!503495 (or (not (= lt!331848 lt!331851)) (= (select (store (arr!19928 a!3186) i!1173 k!2102) index!1321) lt!331850) (not (= (select (store (arr!19928 a!3186) i!1173 k!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!746628 (= lt!331848 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19928 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!746629 () Bool)

(declare-fun e!416955 () Bool)

(assert (=> b!746629 (= e!416949 e!416955)))

(declare-fun res!503491 () Bool)

(assert (=> b!746629 (=> (not res!503491) (not e!416955))))

(declare-fun lt!331853 () SeekEntryResult!7535)

(declare-fun lt!331855 () SeekEntryResult!7535)

(assert (=> b!746629 (= res!503491 (= lt!331853 lt!331855))))

(declare-fun lt!331854 () array!41636)

(assert (=> b!746629 (= lt!331855 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!331850 lt!331854 mask!3328))))

(assert (=> b!746629 (= lt!331853 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!331850 mask!3328) lt!331850 lt!331854 mask!3328))))

(assert (=> b!746629 (= lt!331850 (select (store (arr!19928 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!746629 (= lt!331854 (array!41637 (store (arr!19928 a!3186) i!1173 k!2102) (size!20349 a!3186)))))

(declare-fun b!746630 () Bool)

(assert (=> b!746630 (= e!416955 (not e!416953))))

(declare-fun res!503493 () Bool)

(assert (=> b!746630 (=> res!503493 e!416953)))

(assert (=> b!746630 (= res!503493 (or (not (is-Intermediate!7535 lt!331855)) (bvslt x!1131 (x!63478 lt!331855)) (not (= x!1131 (x!63478 lt!331855))) (not (= index!1321 (index!32509 lt!331855)))))))

(assert (=> b!746630 e!416954))

(declare-fun res!503489 () Bool)

(assert (=> b!746630 (=> (not res!503489) (not e!416954))))

(assert (=> b!746630 (= res!503489 (= lt!331856 lt!331851))))

(assert (=> b!746630 (= lt!331851 (Found!7535 j!159))))

(assert (=> b!746630 (= lt!331856 (seekEntryOrOpen!0 (select (arr!19928 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!746630 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!25550 0))(
  ( (Unit!25551) )
))
(declare-fun lt!331847 () Unit!25550)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41636 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25550)

(assert (=> b!746630 (= lt!331847 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (= (and start!65510 res!503487) b!746614))

(assert (= (and b!746614 res!503492) b!746618))

(assert (= (and b!746618 res!503494) b!746619))

(assert (= (and b!746619 res!503484) b!746627))

(assert (= (and b!746627 res!503497) b!746613))

(assert (= (and b!746613 res!503496) b!746615))

(assert (= (and b!746615 res!503498) b!746620))

(assert (= (and b!746620 res!503488) b!746624))

(assert (= (and b!746624 res!503499) b!746623))

(assert (= (and b!746623 res!503486) b!746622))

(assert (= (and b!746622 res!503490) b!746617))

(assert (= (and b!746617 c!81945) b!746625))

(assert (= (and b!746617 (not c!81945)) b!746621))

(assert (= (and b!746617 res!503485) b!746629))

(assert (= (and b!746629 res!503491) b!746630))

(assert (= (and b!746630 res!503489) b!746626))

(assert (= (and b!746630 (not res!503493)) b!746628))

(assert (= (and b!746628 (not res!503495)) b!746616))

(declare-fun m!696937 () Bool)

(assert (=> b!746626 m!696937))

(assert (=> b!746626 m!696937))

(declare-fun m!696939 () Bool)

(assert (=> b!746626 m!696939))

(assert (=> b!746625 m!696937))

(assert (=> b!746625 m!696937))

(declare-fun m!696941 () Bool)

(assert (=> b!746625 m!696941))

(declare-fun m!696943 () Bool)

(assert (=> b!746622 m!696943))

(assert (=> b!746621 m!696937))

(assert (=> b!746621 m!696937))

(declare-fun m!696945 () Bool)

(assert (=> b!746621 m!696945))

(declare-fun m!696947 () Bool)

(assert (=> b!746615 m!696947))

(assert (=> b!746630 m!696937))

(assert (=> b!746630 m!696937))

(declare-fun m!696949 () Bool)

(assert (=> b!746630 m!696949))

(declare-fun m!696951 () Bool)

(assert (=> b!746630 m!696951))

(declare-fun m!696953 () Bool)

(assert (=> b!746630 m!696953))

(declare-fun m!696955 () Bool)

(assert (=> start!65510 m!696955))

(declare-fun m!696957 () Bool)

(assert (=> start!65510 m!696957))

(assert (=> b!746618 m!696937))

(assert (=> b!746618 m!696937))

(declare-fun m!696959 () Bool)

(assert (=> b!746618 m!696959))

(declare-fun m!696961 () Bool)

(assert (=> b!746619 m!696961))

(declare-fun m!696963 () Bool)

(assert (=> b!746629 m!696963))

(declare-fun m!696965 () Bool)

(assert (=> b!746629 m!696965))

(declare-fun m!696967 () Bool)

(assert (=> b!746629 m!696967))

(declare-fun m!696969 () Bool)

(assert (=> b!746629 m!696969))

(assert (=> b!746629 m!696969))

(declare-fun m!696971 () Bool)

(assert (=> b!746629 m!696971))

(assert (=> b!746623 m!696937))

(assert (=> b!746623 m!696937))

(declare-fun m!696973 () Bool)

(assert (=> b!746623 m!696973))

(assert (=> b!746623 m!696973))

(assert (=> b!746623 m!696937))

(declare-fun m!696975 () Bool)

(assert (=> b!746623 m!696975))

(assert (=> b!746628 m!696965))

(declare-fun m!696977 () Bool)

(assert (=> b!746628 m!696977))

(assert (=> b!746628 m!696937))

(assert (=> b!746628 m!696937))

(assert (=> b!746628 m!696945))

(declare-fun m!696979 () Bool)

(assert (=> b!746620 m!696979))

(declare-fun m!696981 () Bool)

(assert (=> b!746627 m!696981))

(declare-fun m!696983 () Bool)

(assert (=> b!746613 m!696983))

(push 1)

