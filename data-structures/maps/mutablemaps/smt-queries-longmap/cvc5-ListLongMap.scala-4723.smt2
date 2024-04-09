; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65416 () Bool)

(assert start!65416)

(declare-fun b!744048 () Bool)

(declare-fun res!501204 () Bool)

(declare-fun e!415685 () Bool)

(assert (=> b!744048 (=> (not res!501204) (not e!415685))))

(declare-datatypes ((array!41542 0))(
  ( (array!41543 (arr!19881 (Array (_ BitVec 32) (_ BitVec 64))) (size!20302 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41542)

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!41542 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!744048 (= res!501204 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun b!744049 () Bool)

(declare-fun e!415679 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7488 0))(
  ( (MissingZero!7488 (index!32319 (_ BitVec 32))) (Found!7488 (index!32320 (_ BitVec 32))) (Intermediate!7488 (undefined!8300 Bool) (index!32321 (_ BitVec 32)) (x!63311 (_ BitVec 32))) (Undefined!7488) (MissingVacant!7488 (index!32322 (_ BitVec 32))) )
))
(declare-fun lt!330546 () SeekEntryResult!7488)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41542 (_ BitVec 32)) SeekEntryResult!7488)

(assert (=> b!744049 (= e!415679 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19881 a!3186) j!159) a!3186 mask!3328) lt!330546))))

(declare-fun b!744050 () Bool)

(declare-fun res!501205 () Bool)

(declare-fun e!415680 () Bool)

(assert (=> b!744050 (=> (not res!501205) (not e!415680))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41542 (_ BitVec 32)) Bool)

(assert (=> b!744050 (= res!501205 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!744051 () Bool)

(declare-fun res!501216 () Bool)

(assert (=> b!744051 (=> (not res!501216) (not e!415680))))

(declare-datatypes ((List!13936 0))(
  ( (Nil!13933) (Cons!13932 (h!15004 (_ BitVec 64)) (t!20259 List!13936)) )
))
(declare-fun arrayNoDuplicates!0 (array!41542 (_ BitVec 32) List!13936) Bool)

(assert (=> b!744051 (= res!501216 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13933))))

(declare-fun b!744052 () Bool)

(declare-fun e!415681 () Bool)

(assert (=> b!744052 (= e!415681 e!415679)))

(declare-fun res!501201 () Bool)

(assert (=> b!744052 (=> (not res!501201) (not e!415679))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41542 (_ BitVec 32)) SeekEntryResult!7488)

(assert (=> b!744052 (= res!501201 (= (seekEntryOrOpen!0 (select (arr!19881 a!3186) j!159) a!3186 mask!3328) lt!330546))))

(assert (=> b!744052 (= lt!330546 (Found!7488 j!159))))

(declare-fun b!744053 () Bool)

(declare-fun res!501213 () Bool)

(assert (=> b!744053 (=> (not res!501213) (not e!415685))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!744053 (= res!501213 (validKeyInArray!0 k!2102))))

(declare-fun b!744054 () Bool)

(declare-fun res!501208 () Bool)

(assert (=> b!744054 (=> (not res!501208) (not e!415685))))

(assert (=> b!744054 (= res!501208 (validKeyInArray!0 (select (arr!19881 a!3186) j!159)))))

(declare-fun res!501207 () Bool)

(assert (=> start!65416 (=> (not res!501207) (not e!415685))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65416 (= res!501207 (validMask!0 mask!3328))))

(assert (=> start!65416 e!415685))

(assert (=> start!65416 true))

(declare-fun array_inv!15655 (array!41542) Bool)

(assert (=> start!65416 (array_inv!15655 a!3186)))

(declare-fun b!744055 () Bool)

(declare-fun e!415684 () Bool)

(assert (=> b!744055 (= e!415680 e!415684)))

(declare-fun res!501210 () Bool)

(assert (=> b!744055 (=> (not res!501210) (not e!415684))))

(declare-fun lt!330543 () SeekEntryResult!7488)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41542 (_ BitVec 32)) SeekEntryResult!7488)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!744055 (= res!501210 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19881 a!3186) j!159) mask!3328) (select (arr!19881 a!3186) j!159) a!3186 mask!3328) lt!330543))))

(assert (=> b!744055 (= lt!330543 (Intermediate!7488 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!744056 () Bool)

(assert (=> b!744056 (= e!415685 e!415680)))

(declare-fun res!501202 () Bool)

(assert (=> b!744056 (=> (not res!501202) (not e!415680))))

(declare-fun lt!330548 () SeekEntryResult!7488)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!744056 (= res!501202 (or (= lt!330548 (MissingZero!7488 i!1173)) (= lt!330548 (MissingVacant!7488 i!1173))))))

(assert (=> b!744056 (= lt!330548 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!744057 () Bool)

(declare-fun e!415686 () Bool)

(declare-fun e!415683 () Bool)

(assert (=> b!744057 (= e!415686 (not e!415683))))

(declare-fun res!501211 () Bool)

(assert (=> b!744057 (=> res!501211 e!415683)))

(declare-fun lt!330547 () SeekEntryResult!7488)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!744057 (= res!501211 (or (not (is-Intermediate!7488 lt!330547)) (bvslt x!1131 (x!63311 lt!330547)) (not (= x!1131 (x!63311 lt!330547))) (not (= index!1321 (index!32321 lt!330547)))))))

(assert (=> b!744057 e!415681))

(declare-fun res!501212 () Bool)

(assert (=> b!744057 (=> (not res!501212) (not e!415681))))

(assert (=> b!744057 (= res!501212 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25456 0))(
  ( (Unit!25457) )
))
(declare-fun lt!330544 () Unit!25456)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41542 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25456)

(assert (=> b!744057 (= lt!330544 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!744058 () Bool)

(declare-fun e!415678 () Bool)

(assert (=> b!744058 (= e!415678 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19881 a!3186) j!159) a!3186 mask!3328) (Found!7488 j!159)))))

(declare-fun b!744059 () Bool)

(assert (=> b!744059 (= e!415683 true)))

(declare-fun lt!330550 () SeekEntryResult!7488)

(assert (=> b!744059 (= lt!330550 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19881 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!744060 () Bool)

(assert (=> b!744060 (= e!415684 e!415686)))

(declare-fun res!501206 () Bool)

(assert (=> b!744060 (=> (not res!501206) (not e!415686))))

(declare-fun lt!330545 () SeekEntryResult!7488)

(assert (=> b!744060 (= res!501206 (= lt!330545 lt!330547))))

(declare-fun lt!330549 () array!41542)

(declare-fun lt!330551 () (_ BitVec 64))

(assert (=> b!744060 (= lt!330547 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!330551 lt!330549 mask!3328))))

(assert (=> b!744060 (= lt!330545 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!330551 mask!3328) lt!330551 lt!330549 mask!3328))))

(assert (=> b!744060 (= lt!330551 (select (store (arr!19881 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!744060 (= lt!330549 (array!41543 (store (arr!19881 a!3186) i!1173 k!2102) (size!20302 a!3186)))))

(declare-fun b!744061 () Bool)

(declare-fun res!501203 () Bool)

(assert (=> b!744061 (=> (not res!501203) (not e!415684))))

(assert (=> b!744061 (= res!501203 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19881 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!744062 () Bool)

(declare-fun res!501209 () Bool)

(assert (=> b!744062 (=> (not res!501209) (not e!415680))))

(assert (=> b!744062 (= res!501209 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20302 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20302 a!3186))))))

(declare-fun b!744063 () Bool)

(assert (=> b!744063 (= e!415678 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19881 a!3186) j!159) a!3186 mask!3328) lt!330543))))

(declare-fun b!744064 () Bool)

(declare-fun res!501215 () Bool)

(assert (=> b!744064 (=> (not res!501215) (not e!415684))))

(assert (=> b!744064 (= res!501215 e!415678)))

(declare-fun c!81804 () Bool)

(assert (=> b!744064 (= c!81804 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!744065 () Bool)

(declare-fun res!501214 () Bool)

(assert (=> b!744065 (=> (not res!501214) (not e!415685))))

(assert (=> b!744065 (= res!501214 (and (= (size!20302 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20302 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20302 a!3186)) (not (= i!1173 j!159))))))

(assert (= (and start!65416 res!501207) b!744065))

(assert (= (and b!744065 res!501214) b!744054))

(assert (= (and b!744054 res!501208) b!744053))

(assert (= (and b!744053 res!501213) b!744048))

(assert (= (and b!744048 res!501204) b!744056))

(assert (= (and b!744056 res!501202) b!744050))

(assert (= (and b!744050 res!501205) b!744051))

(assert (= (and b!744051 res!501216) b!744062))

(assert (= (and b!744062 res!501209) b!744055))

(assert (= (and b!744055 res!501210) b!744061))

(assert (= (and b!744061 res!501203) b!744064))

(assert (= (and b!744064 c!81804) b!744063))

(assert (= (and b!744064 (not c!81804)) b!744058))

(assert (= (and b!744064 res!501215) b!744060))

(assert (= (and b!744060 res!501206) b!744057))

(assert (= (and b!744057 res!501212) b!744052))

(assert (= (and b!744052 res!501201) b!744049))

(assert (= (and b!744057 (not res!501211)) b!744059))

(declare-fun m!694717 () Bool)

(assert (=> b!744060 m!694717))

(assert (=> b!744060 m!694717))

(declare-fun m!694719 () Bool)

(assert (=> b!744060 m!694719))

(declare-fun m!694721 () Bool)

(assert (=> b!744060 m!694721))

(declare-fun m!694723 () Bool)

(assert (=> b!744060 m!694723))

(declare-fun m!694725 () Bool)

(assert (=> b!744060 m!694725))

(declare-fun m!694727 () Bool)

(assert (=> b!744061 m!694727))

(declare-fun m!694729 () Bool)

(assert (=> b!744059 m!694729))

(assert (=> b!744059 m!694729))

(declare-fun m!694731 () Bool)

(assert (=> b!744059 m!694731))

(assert (=> b!744055 m!694729))

(assert (=> b!744055 m!694729))

(declare-fun m!694733 () Bool)

(assert (=> b!744055 m!694733))

(assert (=> b!744055 m!694733))

(assert (=> b!744055 m!694729))

(declare-fun m!694735 () Bool)

(assert (=> b!744055 m!694735))

(declare-fun m!694737 () Bool)

(assert (=> b!744056 m!694737))

(declare-fun m!694739 () Bool)

(assert (=> b!744050 m!694739))

(declare-fun m!694741 () Bool)

(assert (=> b!744051 m!694741))

(assert (=> b!744058 m!694729))

(assert (=> b!744058 m!694729))

(assert (=> b!744058 m!694731))

(assert (=> b!744054 m!694729))

(assert (=> b!744054 m!694729))

(declare-fun m!694743 () Bool)

(assert (=> b!744054 m!694743))

(assert (=> b!744052 m!694729))

(assert (=> b!744052 m!694729))

(declare-fun m!694745 () Bool)

(assert (=> b!744052 m!694745))

(declare-fun m!694747 () Bool)

(assert (=> b!744048 m!694747))

(declare-fun m!694749 () Bool)

(assert (=> b!744057 m!694749))

(declare-fun m!694751 () Bool)

(assert (=> b!744057 m!694751))

(assert (=> b!744063 m!694729))

(assert (=> b!744063 m!694729))

(declare-fun m!694753 () Bool)

(assert (=> b!744063 m!694753))

(assert (=> b!744049 m!694729))

(assert (=> b!744049 m!694729))

(declare-fun m!694755 () Bool)

(assert (=> b!744049 m!694755))

(declare-fun m!694757 () Bool)

(assert (=> start!65416 m!694757))

(declare-fun m!694759 () Bool)

(assert (=> start!65416 m!694759))

(declare-fun m!694761 () Bool)

(assert (=> b!744053 m!694761))

(push 1)

