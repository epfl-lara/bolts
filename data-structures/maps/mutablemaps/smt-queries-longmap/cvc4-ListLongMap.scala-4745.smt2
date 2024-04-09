; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65552 () Bool)

(assert start!65552)

(declare-fun b!747915 () Bool)

(declare-datatypes ((Unit!25626 0))(
  ( (Unit!25627) )
))
(declare-fun e!417527 () Unit!25626)

(declare-fun Unit!25628 () Unit!25626)

(assert (=> b!747915 (= e!417527 Unit!25628)))

(declare-fun b!747916 () Bool)

(declare-fun e!417531 () Bool)

(declare-fun e!417530 () Bool)

(assert (=> b!747916 (= e!417531 e!417530)))

(declare-fun res!504569 () Bool)

(assert (=> b!747916 (=> (not res!504569) (not e!417530))))

(declare-datatypes ((SeekEntryResult!7556 0))(
  ( (MissingZero!7556 (index!32591 (_ BitVec 32))) (Found!7556 (index!32592 (_ BitVec 32))) (Intermediate!7556 (undefined!8368 Bool) (index!32593 (_ BitVec 32)) (x!63555 (_ BitVec 32))) (Undefined!7556) (MissingVacant!7556 (index!32594 (_ BitVec 32))) )
))
(declare-fun lt!332485 () SeekEntryResult!7556)

(declare-fun lt!332478 () SeekEntryResult!7556)

(assert (=> b!747916 (= res!504569 (= lt!332485 lt!332478))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((array!41678 0))(
  ( (array!41679 (arr!19949 (Array (_ BitVec 32) (_ BitVec 64))) (size!20370 (_ BitVec 32))) )
))
(declare-fun lt!332477 () array!41678)

(declare-fun lt!332479 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41678 (_ BitVec 32)) SeekEntryResult!7556)

(assert (=> b!747916 (= lt!332478 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!332479 lt!332477 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!747916 (= lt!332485 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!332479 mask!3328) lt!332479 lt!332477 mask!3328))))

(declare-fun a!3186 () array!41678)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!747916 (= lt!332479 (select (store (arr!19949 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!747916 (= lt!332477 (array!41679 (store (arr!19949 a!3186) i!1173 k!2102) (size!20370 a!3186)))))

(declare-fun res!504560 () Bool)

(declare-fun e!417523 () Bool)

(assert (=> start!65552 (=> (not res!504560) (not e!417523))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65552 (= res!504560 (validMask!0 mask!3328))))

(assert (=> start!65552 e!417523))

(assert (=> start!65552 true))

(declare-fun array_inv!15723 (array!41678) Bool)

(assert (=> start!65552 (array_inv!15723 a!3186)))

(declare-fun b!747917 () Bool)

(declare-fun res!504568 () Bool)

(assert (=> b!747917 (=> (not res!504568) (not e!417523))))

(declare-fun arrayContainsKey!0 (array!41678 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!747917 (= res!504568 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!747918 () Bool)

(declare-fun res!504565 () Bool)

(assert (=> b!747918 (=> (not res!504565) (not e!417523))))

(assert (=> b!747918 (= res!504565 (and (= (size!20370 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20370 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20370 a!3186)) (not (= i!1173 j!159))))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun b!747919 () Bool)

(declare-fun e!417526 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41678 (_ BitVec 32)) SeekEntryResult!7556)

(assert (=> b!747919 (= e!417526 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19949 a!3186) j!159) a!3186 mask!3328) (Found!7556 j!159)))))

(declare-fun b!747920 () Bool)

(declare-fun res!504566 () Bool)

(declare-fun e!417525 () Bool)

(assert (=> b!747920 (=> (not res!504566) (not e!417525))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!747920 (= res!504566 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20370 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20370 a!3186))))))

(declare-fun b!747921 () Bool)

(declare-fun res!504561 () Bool)

(assert (=> b!747921 (=> (not res!504561) (not e!417531))))

(assert (=> b!747921 (= res!504561 e!417526)))

(declare-fun c!82062 () Bool)

(assert (=> b!747921 (= c!82062 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!747922 () Bool)

(declare-fun res!504556 () Bool)

(declare-fun e!417524 () Bool)

(assert (=> b!747922 (=> res!504556 e!417524)))

(assert (=> b!747922 (= res!504556 (= (select (store (arr!19949 a!3186) i!1173 k!2102) index!1321) lt!332479))))

(declare-fun b!747923 () Bool)

(declare-fun res!504562 () Bool)

(assert (=> b!747923 (=> (not res!504562) (not e!417525))))

(declare-datatypes ((List!14004 0))(
  ( (Nil!14001) (Cons!14000 (h!15072 (_ BitVec 64)) (t!20327 List!14004)) )
))
(declare-fun arrayNoDuplicates!0 (array!41678 (_ BitVec 32) List!14004) Bool)

(assert (=> b!747923 (= res!504562 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14001))))

(declare-fun b!747924 () Bool)

(assert (=> b!747924 (= e!417525 e!417531)))

(declare-fun res!504554 () Bool)

(assert (=> b!747924 (=> (not res!504554) (not e!417531))))

(declare-fun lt!332484 () SeekEntryResult!7556)

(assert (=> b!747924 (= res!504554 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19949 a!3186) j!159) mask!3328) (select (arr!19949 a!3186) j!159) a!3186 mask!3328) lt!332484))))

(assert (=> b!747924 (= lt!332484 (Intermediate!7556 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!747925 () Bool)

(declare-fun res!504557 () Bool)

(assert (=> b!747925 (=> res!504557 e!417524)))

(declare-fun lt!332481 () SeekEntryResult!7556)

(assert (=> b!747925 (= res!504557 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19949 a!3186) j!159) a!3186 mask!3328) lt!332481)))))

(declare-fun b!747926 () Bool)

(assert (=> b!747926 (= e!417526 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19949 a!3186) j!159) a!3186 mask!3328) lt!332484))))

(declare-fun b!747927 () Bool)

(declare-fun res!504563 () Bool)

(assert (=> b!747927 (=> (not res!504563) (not e!417523))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!747927 (= res!504563 (validKeyInArray!0 (select (arr!19949 a!3186) j!159)))))

(declare-fun b!747928 () Bool)

(declare-fun res!504558 () Bool)

(assert (=> b!747928 (=> (not res!504558) (not e!417523))))

(assert (=> b!747928 (= res!504558 (validKeyInArray!0 k!2102))))

(declare-fun b!747929 () Bool)

(assert (=> b!747929 (= e!417530 (not e!417524))))

(declare-fun res!504570 () Bool)

(assert (=> b!747929 (=> res!504570 e!417524)))

(assert (=> b!747929 (= res!504570 (or (not (is-Intermediate!7556 lt!332478)) (bvslt x!1131 (x!63555 lt!332478)) (not (= x!1131 (x!63555 lt!332478))) (not (= index!1321 (index!32593 lt!332478)))))))

(declare-fun e!417528 () Bool)

(assert (=> b!747929 e!417528))

(declare-fun res!504564 () Bool)

(assert (=> b!747929 (=> (not res!504564) (not e!417528))))

(declare-fun lt!332482 () SeekEntryResult!7556)

(assert (=> b!747929 (= res!504564 (= lt!332482 lt!332481))))

(assert (=> b!747929 (= lt!332481 (Found!7556 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41678 (_ BitVec 32)) SeekEntryResult!7556)

(assert (=> b!747929 (= lt!332482 (seekEntryOrOpen!0 (select (arr!19949 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41678 (_ BitVec 32)) Bool)

(assert (=> b!747929 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!332480 () Unit!25626)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41678 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25626)

(assert (=> b!747929 (= lt!332480 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!747930 () Bool)

(assert (=> b!747930 (= e!417528 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19949 a!3186) j!159) a!3186 mask!3328) lt!332481))))

(declare-fun b!747931 () Bool)

(assert (=> b!747931 (= e!417524 (bvsge mask!3328 #b00000000000000000000000000000000))))

(assert (=> b!747931 (= (select (store (arr!19949 a!3186) i!1173 k!2102) index!1321) #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!332483 () Unit!25626)

(assert (=> b!747931 (= lt!332483 e!417527)))

(declare-fun c!82061 () Bool)

(assert (=> b!747931 (= c!82061 (= (select (store (arr!19949 a!3186) i!1173 k!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!747932 () Bool)

(declare-fun res!504567 () Bool)

(assert (=> b!747932 (=> (not res!504567) (not e!417531))))

(assert (=> b!747932 (= res!504567 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19949 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!747933 () Bool)

(declare-fun Unit!25629 () Unit!25626)

(assert (=> b!747933 (= e!417527 Unit!25629)))

(assert (=> b!747933 false))

(declare-fun b!747934 () Bool)

(declare-fun res!504555 () Bool)

(assert (=> b!747934 (=> (not res!504555) (not e!417525))))

(assert (=> b!747934 (= res!504555 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!747935 () Bool)

(assert (=> b!747935 (= e!417523 e!417525)))

(declare-fun res!504559 () Bool)

(assert (=> b!747935 (=> (not res!504559) (not e!417525))))

(declare-fun lt!332486 () SeekEntryResult!7556)

(assert (=> b!747935 (= res!504559 (or (= lt!332486 (MissingZero!7556 i!1173)) (= lt!332486 (MissingVacant!7556 i!1173))))))

(assert (=> b!747935 (= lt!332486 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(assert (= (and start!65552 res!504560) b!747918))

(assert (= (and b!747918 res!504565) b!747927))

(assert (= (and b!747927 res!504563) b!747928))

(assert (= (and b!747928 res!504558) b!747917))

(assert (= (and b!747917 res!504568) b!747935))

(assert (= (and b!747935 res!504559) b!747934))

(assert (= (and b!747934 res!504555) b!747923))

(assert (= (and b!747923 res!504562) b!747920))

(assert (= (and b!747920 res!504566) b!747924))

(assert (= (and b!747924 res!504554) b!747932))

(assert (= (and b!747932 res!504567) b!747921))

(assert (= (and b!747921 c!82062) b!747926))

(assert (= (and b!747921 (not c!82062)) b!747919))

(assert (= (and b!747921 res!504561) b!747916))

(assert (= (and b!747916 res!504569) b!747929))

(assert (= (and b!747929 res!504564) b!747930))

(assert (= (and b!747929 (not res!504570)) b!747925))

(assert (= (and b!747925 (not res!504557)) b!747922))

(assert (= (and b!747922 (not res!504556)) b!747931))

(assert (= (and b!747931 c!82061) b!747933))

(assert (= (and b!747931 (not c!82061)) b!747915))

(declare-fun m!697951 () Bool)

(assert (=> b!747935 m!697951))

(declare-fun m!697953 () Bool)

(assert (=> b!747916 m!697953))

(declare-fun m!697955 () Bool)

(assert (=> b!747916 m!697955))

(declare-fun m!697957 () Bool)

(assert (=> b!747916 m!697957))

(declare-fun m!697959 () Bool)

(assert (=> b!747916 m!697959))

(assert (=> b!747916 m!697953))

(declare-fun m!697961 () Bool)

(assert (=> b!747916 m!697961))

(declare-fun m!697963 () Bool)

(assert (=> b!747929 m!697963))

(assert (=> b!747929 m!697963))

(declare-fun m!697965 () Bool)

(assert (=> b!747929 m!697965))

(declare-fun m!697967 () Bool)

(assert (=> b!747929 m!697967))

(declare-fun m!697969 () Bool)

(assert (=> b!747929 m!697969))

(declare-fun m!697971 () Bool)

(assert (=> b!747928 m!697971))

(declare-fun m!697973 () Bool)

(assert (=> start!65552 m!697973))

(declare-fun m!697975 () Bool)

(assert (=> start!65552 m!697975))

(declare-fun m!697977 () Bool)

(assert (=> b!747923 m!697977))

(declare-fun m!697979 () Bool)

(assert (=> b!747932 m!697979))

(assert (=> b!747919 m!697963))

(assert (=> b!747919 m!697963))

(declare-fun m!697981 () Bool)

(assert (=> b!747919 m!697981))

(assert (=> b!747926 m!697963))

(assert (=> b!747926 m!697963))

(declare-fun m!697983 () Bool)

(assert (=> b!747926 m!697983))

(assert (=> b!747931 m!697957))

(declare-fun m!697985 () Bool)

(assert (=> b!747931 m!697985))

(assert (=> b!747930 m!697963))

(assert (=> b!747930 m!697963))

(declare-fun m!697987 () Bool)

(assert (=> b!747930 m!697987))

(assert (=> b!747927 m!697963))

(assert (=> b!747927 m!697963))

(declare-fun m!697989 () Bool)

(assert (=> b!747927 m!697989))

(assert (=> b!747922 m!697957))

(assert (=> b!747922 m!697985))

(declare-fun m!697991 () Bool)

(assert (=> b!747934 m!697991))

(assert (=> b!747924 m!697963))

(assert (=> b!747924 m!697963))

(declare-fun m!697993 () Bool)

(assert (=> b!747924 m!697993))

(assert (=> b!747924 m!697993))

(assert (=> b!747924 m!697963))

(declare-fun m!697995 () Bool)

(assert (=> b!747924 m!697995))

(assert (=> b!747925 m!697963))

(assert (=> b!747925 m!697963))

(assert (=> b!747925 m!697981))

(declare-fun m!697997 () Bool)

(assert (=> b!747917 m!697997))

(push 1)

