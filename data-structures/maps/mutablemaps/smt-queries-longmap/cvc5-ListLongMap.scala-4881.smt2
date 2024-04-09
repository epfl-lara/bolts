; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67282 () Bool)

(assert start!67282)

(declare-fun res!526297 () Bool)

(declare-fun e!432741 () Bool)

(assert (=> start!67282 (=> (not res!526297) (not e!432741))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67282 (= res!526297 (validMask!0 mask!3328))))

(assert (=> start!67282 e!432741))

(assert (=> start!67282 true))

(declare-datatypes ((array!42529 0))(
  ( (array!42530 (arr!20355 (Array (_ BitVec 32) (_ BitVec 64))) (size!20776 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42529)

(declare-fun array_inv!16129 (array!42529) Bool)

(assert (=> start!67282 (array_inv!16129 a!3186)))

(declare-fun b!777728 () Bool)

(declare-fun res!526283 () Bool)

(assert (=> b!777728 (=> (not res!526283) (not e!432741))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!777728 (= res!526283 (validKeyInArray!0 (select (arr!20355 a!3186) j!159)))))

(declare-fun b!777729 () Bool)

(declare-fun res!526285 () Bool)

(declare-fun e!432748 () Bool)

(assert (=> b!777729 (=> (not res!526285) (not e!432748))))

(declare-fun e!432746 () Bool)

(assert (=> b!777729 (= res!526285 e!432746)))

(declare-fun c!86124 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!777729 (= c!86124 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!777730 () Bool)

(declare-fun res!526289 () Bool)

(declare-fun e!432745 () Bool)

(assert (=> b!777730 (=> res!526289 e!432745)))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7962 0))(
  ( (MissingZero!7962 (index!34215 (_ BitVec 32))) (Found!7962 (index!34216 (_ BitVec 32))) (Intermediate!7962 (undefined!8774 Bool) (index!34217 (_ BitVec 32)) (x!65187 (_ BitVec 32))) (Undefined!7962) (MissingVacant!7962 (index!34218 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42529 (_ BitVec 32)) SeekEntryResult!7962)

(assert (=> b!777730 (= res!526289 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20355 a!3186) j!159) a!3186 mask!3328) (Found!7962 j!159))))))

(declare-fun b!777731 () Bool)

(declare-fun res!526287 () Bool)

(assert (=> b!777731 (=> (not res!526287) (not e!432741))))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!777731 (= res!526287 (validKeyInArray!0 k!2102))))

(declare-fun b!777732 () Bool)

(declare-fun lt!346516 () SeekEntryResult!7962)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42529 (_ BitVec 32)) SeekEntryResult!7962)

(assert (=> b!777732 (= e!432746 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20355 a!3186) j!159) a!3186 mask!3328) lt!346516))))

(declare-fun b!777733 () Bool)

(declare-fun res!526290 () Bool)

(assert (=> b!777733 (=> res!526290 e!432745)))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun lt!346515 () SeekEntryResult!7962)

(declare-fun lt!346518 () (_ BitVec 64))

(assert (=> b!777733 (= res!526290 (or (not (= (select (store (arr!20355 a!3186) i!1173 k!2102) index!1321) lt!346518)) (undefined!8774 lt!346515)))))

(declare-fun b!777734 () Bool)

(declare-fun res!526294 () Bool)

(declare-fun e!432743 () Bool)

(assert (=> b!777734 (=> (not res!526294) (not e!432743))))

(assert (=> b!777734 (= res!526294 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20776 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20776 a!3186))))))

(declare-fun b!777735 () Bool)

(declare-fun e!432747 () Bool)

(declare-fun e!432744 () Bool)

(assert (=> b!777735 (= e!432747 e!432744)))

(declare-fun res!526295 () Bool)

(assert (=> b!777735 (=> (not res!526295) (not e!432744))))

(declare-fun lt!346519 () SeekEntryResult!7962)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42529 (_ BitVec 32)) SeekEntryResult!7962)

(assert (=> b!777735 (= res!526295 (= (seekEntryOrOpen!0 (select (arr!20355 a!3186) j!159) a!3186 mask!3328) lt!346519))))

(assert (=> b!777735 (= lt!346519 (Found!7962 j!159))))

(declare-fun b!777736 () Bool)

(assert (=> b!777736 (= e!432741 e!432743)))

(declare-fun res!526286 () Bool)

(assert (=> b!777736 (=> (not res!526286) (not e!432743))))

(declare-fun lt!346517 () SeekEntryResult!7962)

(assert (=> b!777736 (= res!526286 (or (= lt!346517 (MissingZero!7962 i!1173)) (= lt!346517 (MissingVacant!7962 i!1173))))))

(assert (=> b!777736 (= lt!346517 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!777737 () Bool)

(declare-fun e!432742 () Bool)

(assert (=> b!777737 (= e!432742 (not e!432745))))

(declare-fun res!526298 () Bool)

(assert (=> b!777737 (=> res!526298 e!432745)))

(assert (=> b!777737 (= res!526298 (or (not (is-Intermediate!7962 lt!346515)) (bvslt x!1131 (x!65187 lt!346515)) (not (= x!1131 (x!65187 lt!346515))) (not (= index!1321 (index!34217 lt!346515)))))))

(assert (=> b!777737 e!432747))

(declare-fun res!526292 () Bool)

(assert (=> b!777737 (=> (not res!526292) (not e!432747))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42529 (_ BitVec 32)) Bool)

(assert (=> b!777737 (= res!526292 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26818 0))(
  ( (Unit!26819) )
))
(declare-fun lt!346514 () Unit!26818)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42529 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26818)

(assert (=> b!777737 (= lt!346514 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!777738 () Bool)

(assert (=> b!777738 (= e!432745 true)))

(declare-fun lt!346521 () array!42529)

(declare-fun lt!346520 () SeekEntryResult!7962)

(assert (=> b!777738 (= lt!346520 (seekEntryOrOpen!0 lt!346518 lt!346521 mask!3328))))

(declare-fun b!777739 () Bool)

(declare-fun res!526293 () Bool)

(assert (=> b!777739 (=> (not res!526293) (not e!432743))))

(assert (=> b!777739 (= res!526293 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!777740 () Bool)

(declare-fun res!526296 () Bool)

(assert (=> b!777740 (=> (not res!526296) (not e!432748))))

(assert (=> b!777740 (= res!526296 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20355 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!777741 () Bool)

(assert (=> b!777741 (= e!432746 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20355 a!3186) j!159) a!3186 mask!3328) (Found!7962 j!159)))))

(declare-fun b!777742 () Bool)

(assert (=> b!777742 (= e!432744 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20355 a!3186) j!159) a!3186 mask!3328) lt!346519))))

(declare-fun b!777743 () Bool)

(declare-fun res!526288 () Bool)

(assert (=> b!777743 (=> (not res!526288) (not e!432743))))

(declare-datatypes ((List!14410 0))(
  ( (Nil!14407) (Cons!14406 (h!15517 (_ BitVec 64)) (t!20733 List!14410)) )
))
(declare-fun arrayNoDuplicates!0 (array!42529 (_ BitVec 32) List!14410) Bool)

(assert (=> b!777743 (= res!526288 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14407))))

(declare-fun b!777744 () Bool)

(assert (=> b!777744 (= e!432748 e!432742)))

(declare-fun res!526300 () Bool)

(assert (=> b!777744 (=> (not res!526300) (not e!432742))))

(declare-fun lt!346522 () SeekEntryResult!7962)

(assert (=> b!777744 (= res!526300 (= lt!346522 lt!346515))))

(assert (=> b!777744 (= lt!346515 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!346518 lt!346521 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!777744 (= lt!346522 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!346518 mask!3328) lt!346518 lt!346521 mask!3328))))

(assert (=> b!777744 (= lt!346518 (select (store (arr!20355 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!777744 (= lt!346521 (array!42530 (store (arr!20355 a!3186) i!1173 k!2102) (size!20776 a!3186)))))

(declare-fun b!777745 () Bool)

(declare-fun res!526291 () Bool)

(assert (=> b!777745 (=> (not res!526291) (not e!432741))))

(assert (=> b!777745 (= res!526291 (and (= (size!20776 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20776 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20776 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!777746 () Bool)

(assert (=> b!777746 (= e!432743 e!432748)))

(declare-fun res!526284 () Bool)

(assert (=> b!777746 (=> (not res!526284) (not e!432748))))

(assert (=> b!777746 (= res!526284 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20355 a!3186) j!159) mask!3328) (select (arr!20355 a!3186) j!159) a!3186 mask!3328) lt!346516))))

(assert (=> b!777746 (= lt!346516 (Intermediate!7962 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!777747 () Bool)

(declare-fun res!526299 () Bool)

(assert (=> b!777747 (=> (not res!526299) (not e!432741))))

(declare-fun arrayContainsKey!0 (array!42529 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!777747 (= res!526299 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(assert (= (and start!67282 res!526297) b!777745))

(assert (= (and b!777745 res!526291) b!777728))

(assert (= (and b!777728 res!526283) b!777731))

(assert (= (and b!777731 res!526287) b!777747))

(assert (= (and b!777747 res!526299) b!777736))

(assert (= (and b!777736 res!526286) b!777739))

(assert (= (and b!777739 res!526293) b!777743))

(assert (= (and b!777743 res!526288) b!777734))

(assert (= (and b!777734 res!526294) b!777746))

(assert (= (and b!777746 res!526284) b!777740))

(assert (= (and b!777740 res!526296) b!777729))

(assert (= (and b!777729 c!86124) b!777732))

(assert (= (and b!777729 (not c!86124)) b!777741))

(assert (= (and b!777729 res!526285) b!777744))

(assert (= (and b!777744 res!526300) b!777737))

(assert (= (and b!777737 res!526292) b!777735))

(assert (= (and b!777735 res!526295) b!777742))

(assert (= (and b!777737 (not res!526298)) b!777730))

(assert (= (and b!777730 (not res!526289)) b!777733))

(assert (= (and b!777733 (not res!526290)) b!777738))

(declare-fun m!721603 () Bool)

(assert (=> b!777738 m!721603))

(declare-fun m!721605 () Bool)

(assert (=> start!67282 m!721605))

(declare-fun m!721607 () Bool)

(assert (=> start!67282 m!721607))

(declare-fun m!721609 () Bool)

(assert (=> b!777739 m!721609))

(declare-fun m!721611 () Bool)

(assert (=> b!777743 m!721611))

(declare-fun m!721613 () Bool)

(assert (=> b!777731 m!721613))

(declare-fun m!721615 () Bool)

(assert (=> b!777741 m!721615))

(assert (=> b!777741 m!721615))

(declare-fun m!721617 () Bool)

(assert (=> b!777741 m!721617))

(declare-fun m!721619 () Bool)

(assert (=> b!777747 m!721619))

(declare-fun m!721621 () Bool)

(assert (=> b!777733 m!721621))

(declare-fun m!721623 () Bool)

(assert (=> b!777733 m!721623))

(declare-fun m!721625 () Bool)

(assert (=> b!777740 m!721625))

(declare-fun m!721627 () Bool)

(assert (=> b!777736 m!721627))

(assert (=> b!777742 m!721615))

(assert (=> b!777742 m!721615))

(declare-fun m!721629 () Bool)

(assert (=> b!777742 m!721629))

(declare-fun m!721631 () Bool)

(assert (=> b!777737 m!721631))

(declare-fun m!721633 () Bool)

(assert (=> b!777737 m!721633))

(assert (=> b!777746 m!721615))

(assert (=> b!777746 m!721615))

(declare-fun m!721635 () Bool)

(assert (=> b!777746 m!721635))

(assert (=> b!777746 m!721635))

(assert (=> b!777746 m!721615))

(declare-fun m!721637 () Bool)

(assert (=> b!777746 m!721637))

(assert (=> b!777732 m!721615))

(assert (=> b!777732 m!721615))

(declare-fun m!721639 () Bool)

(assert (=> b!777732 m!721639))

(assert (=> b!777744 m!721621))

(declare-fun m!721641 () Bool)

(assert (=> b!777744 m!721641))

(declare-fun m!721643 () Bool)

(assert (=> b!777744 m!721643))

(assert (=> b!777744 m!721643))

(declare-fun m!721645 () Bool)

(assert (=> b!777744 m!721645))

(declare-fun m!721647 () Bool)

(assert (=> b!777744 m!721647))

(assert (=> b!777730 m!721615))

(assert (=> b!777730 m!721615))

(assert (=> b!777730 m!721617))

(assert (=> b!777728 m!721615))

(assert (=> b!777728 m!721615))

(declare-fun m!721649 () Bool)

(assert (=> b!777728 m!721649))

(assert (=> b!777735 m!721615))

(assert (=> b!777735 m!721615))

(declare-fun m!721651 () Bool)

(assert (=> b!777735 m!721651))

(push 1)

