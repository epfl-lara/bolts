; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64686 () Bool)

(assert start!64686)

(declare-fun b!728664 () Bool)

(declare-fun e!407896 () Bool)

(declare-fun e!407893 () Bool)

(assert (=> b!728664 (= e!407896 e!407893)))

(declare-fun res!489286 () Bool)

(assert (=> b!728664 (=> (not res!489286) (not e!407893))))

(declare-datatypes ((SeekEntryResult!7267 0))(
  ( (MissingZero!7267 (index!31435 (_ BitVec 32))) (Found!7267 (index!31436 (_ BitVec 32))) (Intermediate!7267 (undefined!8079 Bool) (index!31437 (_ BitVec 32)) (x!62450 (_ BitVec 32))) (Undefined!7267) (MissingVacant!7267 (index!31438 (_ BitVec 32))) )
))
(declare-fun lt!322800 () SeekEntryResult!7267)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!728664 (= res!489286 (or (= lt!322800 (MissingZero!7267 i!1173)) (= lt!322800 (MissingVacant!7267 i!1173))))))

(declare-datatypes ((array!41088 0))(
  ( (array!41089 (arr!19660 (Array (_ BitVec 32) (_ BitVec 64))) (size!20081 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41088)

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41088 (_ BitVec 32)) SeekEntryResult!7267)

(assert (=> b!728664 (= lt!322800 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!728665 () Bool)

(declare-fun res!489279 () Bool)

(assert (=> b!728665 (=> (not res!489279) (not e!407893))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!728665 (= res!489279 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20081 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20081 a!3186))))))

(declare-fun b!728666 () Bool)

(declare-fun res!489280 () Bool)

(assert (=> b!728666 (=> (not res!489280) (not e!407896))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!728666 (= res!489280 (and (= (size!20081 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20081 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20081 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!728667 () Bool)

(declare-fun e!407898 () Bool)

(declare-fun e!407897 () Bool)

(assert (=> b!728667 (= e!407898 e!407897)))

(declare-fun res!489281 () Bool)

(assert (=> b!728667 (=> (not res!489281) (not e!407897))))

(declare-fun lt!322804 () SeekEntryResult!7267)

(declare-fun lt!322807 () SeekEntryResult!7267)

(assert (=> b!728667 (= res!489281 (= lt!322804 lt!322807))))

(declare-fun lt!322801 () array!41088)

(declare-fun lt!322803 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41088 (_ BitVec 32)) SeekEntryResult!7267)

(assert (=> b!728667 (= lt!322807 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!322803 lt!322801 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!728667 (= lt!322804 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!322803 mask!3328) lt!322803 lt!322801 mask!3328))))

(assert (=> b!728667 (= lt!322803 (select (store (arr!19660 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!728667 (= lt!322801 (array!41089 (store (arr!19660 a!3186) i!1173 k0!2102) (size!20081 a!3186)))))

(declare-fun b!728668 () Bool)

(declare-fun res!489293 () Bool)

(assert (=> b!728668 (=> (not res!489293) (not e!407898))))

(assert (=> b!728668 (= res!489293 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19660 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!728669 () Bool)

(declare-fun res!489282 () Bool)

(assert (=> b!728669 (=> (not res!489282) (not e!407896))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!728669 (= res!489282 (validKeyInArray!0 k0!2102))))

(declare-fun b!728670 () Bool)

(declare-fun e!407901 () Bool)

(assert (=> b!728670 (= e!407897 (not e!407901))))

(declare-fun res!489288 () Bool)

(assert (=> b!728670 (=> res!489288 e!407901)))

(get-info :version)

(assert (=> b!728670 (= res!489288 (or (not ((_ is Intermediate!7267) lt!322807)) (bvsge x!1131 (x!62450 lt!322807))))))

(declare-fun e!407900 () Bool)

(assert (=> b!728670 e!407900))

(declare-fun res!489287 () Bool)

(assert (=> b!728670 (=> (not res!489287) (not e!407900))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41088 (_ BitVec 32)) Bool)

(assert (=> b!728670 (= res!489287 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24852 0))(
  ( (Unit!24853) )
))
(declare-fun lt!322806 () Unit!24852)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41088 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24852)

(assert (=> b!728670 (= lt!322806 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun res!489289 () Bool)

(assert (=> start!64686 (=> (not res!489289) (not e!407896))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64686 (= res!489289 (validMask!0 mask!3328))))

(assert (=> start!64686 e!407896))

(assert (=> start!64686 true))

(declare-fun array_inv!15434 (array!41088) Bool)

(assert (=> start!64686 (array_inv!15434 a!3186)))

(declare-fun b!728671 () Bool)

(assert (=> b!728671 (= e!407901 true)))

(declare-fun lt!322808 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!728671 (= lt!322808 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!728672 () Bool)

(declare-fun res!489290 () Bool)

(assert (=> b!728672 (=> (not res!489290) (not e!407896))))

(declare-fun arrayContainsKey!0 (array!41088 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!728672 (= res!489290 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun e!407894 () Bool)

(declare-fun b!728673 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41088 (_ BitVec 32)) SeekEntryResult!7267)

(assert (=> b!728673 (= e!407894 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19660 a!3186) j!159) a!3186 mask!3328) (Found!7267 j!159)))))

(declare-fun b!728674 () Bool)

(assert (=> b!728674 (= e!407893 e!407898)))

(declare-fun res!489284 () Bool)

(assert (=> b!728674 (=> (not res!489284) (not e!407898))))

(declare-fun lt!322805 () SeekEntryResult!7267)

(assert (=> b!728674 (= res!489284 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19660 a!3186) j!159) mask!3328) (select (arr!19660 a!3186) j!159) a!3186 mask!3328) lt!322805))))

(assert (=> b!728674 (= lt!322805 (Intermediate!7267 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!728675 () Bool)

(declare-fun res!489283 () Bool)

(assert (=> b!728675 (=> (not res!489283) (not e!407893))))

(assert (=> b!728675 (= res!489283 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!728676 () Bool)

(declare-fun res!489294 () Bool)

(assert (=> b!728676 (=> (not res!489294) (not e!407898))))

(assert (=> b!728676 (= res!489294 e!407894)))

(declare-fun c!80067 () Bool)

(assert (=> b!728676 (= c!80067 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!728677 () Bool)

(declare-fun e!407899 () Bool)

(assert (=> b!728677 (= e!407900 e!407899)))

(declare-fun res!489285 () Bool)

(assert (=> b!728677 (=> (not res!489285) (not e!407899))))

(declare-fun lt!322802 () SeekEntryResult!7267)

(assert (=> b!728677 (= res!489285 (= (seekEntryOrOpen!0 (select (arr!19660 a!3186) j!159) a!3186 mask!3328) lt!322802))))

(assert (=> b!728677 (= lt!322802 (Found!7267 j!159))))

(declare-fun b!728678 () Bool)

(declare-fun res!489291 () Bool)

(assert (=> b!728678 (=> (not res!489291) (not e!407896))))

(assert (=> b!728678 (= res!489291 (validKeyInArray!0 (select (arr!19660 a!3186) j!159)))))

(declare-fun b!728679 () Bool)

(assert (=> b!728679 (= e!407899 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19660 a!3186) j!159) a!3186 mask!3328) lt!322802))))

(declare-fun b!728680 () Bool)

(assert (=> b!728680 (= e!407894 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19660 a!3186) j!159) a!3186 mask!3328) lt!322805))))

(declare-fun b!728681 () Bool)

(declare-fun res!489292 () Bool)

(assert (=> b!728681 (=> (not res!489292) (not e!407893))))

(declare-datatypes ((List!13715 0))(
  ( (Nil!13712) (Cons!13711 (h!14771 (_ BitVec 64)) (t!20038 List!13715)) )
))
(declare-fun arrayNoDuplicates!0 (array!41088 (_ BitVec 32) List!13715) Bool)

(assert (=> b!728681 (= res!489292 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13712))))

(assert (= (and start!64686 res!489289) b!728666))

(assert (= (and b!728666 res!489280) b!728678))

(assert (= (and b!728678 res!489291) b!728669))

(assert (= (and b!728669 res!489282) b!728672))

(assert (= (and b!728672 res!489290) b!728664))

(assert (= (and b!728664 res!489286) b!728675))

(assert (= (and b!728675 res!489283) b!728681))

(assert (= (and b!728681 res!489292) b!728665))

(assert (= (and b!728665 res!489279) b!728674))

(assert (= (and b!728674 res!489284) b!728668))

(assert (= (and b!728668 res!489293) b!728676))

(assert (= (and b!728676 c!80067) b!728680))

(assert (= (and b!728676 (not c!80067)) b!728673))

(assert (= (and b!728676 res!489294) b!728667))

(assert (= (and b!728667 res!489281) b!728670))

(assert (= (and b!728670 res!489287) b!728677))

(assert (= (and b!728677 res!489285) b!728679))

(assert (= (and b!728670 (not res!489288)) b!728671))

(declare-fun m!682477 () Bool)

(assert (=> b!728681 m!682477))

(declare-fun m!682479 () Bool)

(assert (=> start!64686 m!682479))

(declare-fun m!682481 () Bool)

(assert (=> start!64686 m!682481))

(declare-fun m!682483 () Bool)

(assert (=> b!728667 m!682483))

(declare-fun m!682485 () Bool)

(assert (=> b!728667 m!682485))

(declare-fun m!682487 () Bool)

(assert (=> b!728667 m!682487))

(declare-fun m!682489 () Bool)

(assert (=> b!728667 m!682489))

(declare-fun m!682491 () Bool)

(assert (=> b!728667 m!682491))

(assert (=> b!728667 m!682485))

(declare-fun m!682493 () Bool)

(assert (=> b!728678 m!682493))

(assert (=> b!728678 m!682493))

(declare-fun m!682495 () Bool)

(assert (=> b!728678 m!682495))

(assert (=> b!728674 m!682493))

(assert (=> b!728674 m!682493))

(declare-fun m!682497 () Bool)

(assert (=> b!728674 m!682497))

(assert (=> b!728674 m!682497))

(assert (=> b!728674 m!682493))

(declare-fun m!682499 () Bool)

(assert (=> b!728674 m!682499))

(declare-fun m!682501 () Bool)

(assert (=> b!728675 m!682501))

(assert (=> b!728680 m!682493))

(assert (=> b!728680 m!682493))

(declare-fun m!682503 () Bool)

(assert (=> b!728680 m!682503))

(assert (=> b!728679 m!682493))

(assert (=> b!728679 m!682493))

(declare-fun m!682505 () Bool)

(assert (=> b!728679 m!682505))

(declare-fun m!682507 () Bool)

(assert (=> b!728671 m!682507))

(declare-fun m!682509 () Bool)

(assert (=> b!728672 m!682509))

(declare-fun m!682511 () Bool)

(assert (=> b!728664 m!682511))

(declare-fun m!682513 () Bool)

(assert (=> b!728668 m!682513))

(declare-fun m!682515 () Bool)

(assert (=> b!728670 m!682515))

(declare-fun m!682517 () Bool)

(assert (=> b!728670 m!682517))

(assert (=> b!728673 m!682493))

(assert (=> b!728673 m!682493))

(declare-fun m!682519 () Bool)

(assert (=> b!728673 m!682519))

(declare-fun m!682521 () Bool)

(assert (=> b!728669 m!682521))

(assert (=> b!728677 m!682493))

(assert (=> b!728677 m!682493))

(declare-fun m!682523 () Bool)

(assert (=> b!728677 m!682523))

(check-sat (not b!728667) (not start!64686) (not b!728677) (not b!728675) (not b!728679) (not b!728678) (not b!728672) (not b!728674) (not b!728681) (not b!728670) (not b!728671) (not b!728680) (not b!728664) (not b!728673) (not b!728669))
(check-sat)
