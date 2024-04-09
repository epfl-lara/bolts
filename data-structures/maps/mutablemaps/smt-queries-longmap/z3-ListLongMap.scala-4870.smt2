; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!67152 () Bool)

(assert start!67152)

(declare-fun b!775511 () Bool)

(declare-fun res!524574 () Bool)

(declare-fun e!431620 () Bool)

(assert (=> b!775511 (=> (not res!524574) (not e!431620))))

(declare-datatypes ((array!42462 0))(
  ( (array!42463 (arr!20323 (Array (_ BitVec 32) (_ BitVec 64))) (size!20744 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42462)

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!775511 (= res!524574 (and (= (size!20744 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20744 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20744 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!775512 () Bool)

(declare-fun e!431622 () Bool)

(assert (=> b!775512 (= e!431622 (not true))))

(declare-fun e!431619 () Bool)

(assert (=> b!775512 e!431619))

(declare-fun res!524567 () Bool)

(assert (=> b!775512 (=> (not res!524567) (not e!431619))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42462 (_ BitVec 32)) Bool)

(assert (=> b!775512 (= res!524567 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26754 0))(
  ( (Unit!26755) )
))
(declare-fun lt!345497 () Unit!26754)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42462 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26754)

(assert (=> b!775512 (= lt!345497 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!775513 () Bool)

(declare-fun res!524580 () Bool)

(assert (=> b!775513 (=> (not res!524580) (not e!431620))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!775513 (= res!524580 (validKeyInArray!0 k0!2102))))

(declare-fun b!775514 () Bool)

(declare-fun res!524578 () Bool)

(declare-fun e!431625 () Bool)

(assert (=> b!775514 (=> (not res!524578) (not e!431625))))

(declare-fun e!431623 () Bool)

(assert (=> b!775514 (= res!524578 e!431623)))

(declare-fun c!85872 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!775514 (= c!85872 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!775515 () Bool)

(declare-fun res!524577 () Bool)

(assert (=> b!775515 (=> (not res!524577) (not e!431625))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!775515 (= res!524577 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20323 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!524573 () Bool)

(assert (=> start!67152 (=> (not res!524573) (not e!431620))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67152 (= res!524573 (validMask!0 mask!3328))))

(assert (=> start!67152 e!431620))

(assert (=> start!67152 true))

(declare-fun array_inv!16097 (array!42462) Bool)

(assert (=> start!67152 (array_inv!16097 a!3186)))

(declare-fun b!775516 () Bool)

(declare-fun e!431626 () Bool)

(assert (=> b!775516 (= e!431620 e!431626)))

(declare-fun res!524576 () Bool)

(assert (=> b!775516 (=> (not res!524576) (not e!431626))))

(declare-datatypes ((SeekEntryResult!7930 0))(
  ( (MissingZero!7930 (index!34087 (_ BitVec 32))) (Found!7930 (index!34088 (_ BitVec 32))) (Intermediate!7930 (undefined!8742 Bool) (index!34089 (_ BitVec 32)) (x!65058 (_ BitVec 32))) (Undefined!7930) (MissingVacant!7930 (index!34090 (_ BitVec 32))) )
))
(declare-fun lt!345502 () SeekEntryResult!7930)

(assert (=> b!775516 (= res!524576 (or (= lt!345502 (MissingZero!7930 i!1173)) (= lt!345502 (MissingVacant!7930 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42462 (_ BitVec 32)) SeekEntryResult!7930)

(assert (=> b!775516 (= lt!345502 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun e!431621 () Bool)

(declare-fun lt!345501 () SeekEntryResult!7930)

(declare-fun b!775517 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42462 (_ BitVec 32)) SeekEntryResult!7930)

(assert (=> b!775517 (= e!431621 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20323 a!3186) j!159) a!3186 mask!3328) lt!345501))))

(declare-fun b!775518 () Bool)

(declare-fun res!524568 () Bool)

(assert (=> b!775518 (=> (not res!524568) (not e!431626))))

(declare-datatypes ((List!14378 0))(
  ( (Nil!14375) (Cons!14374 (h!15482 (_ BitVec 64)) (t!20701 List!14378)) )
))
(declare-fun arrayNoDuplicates!0 (array!42462 (_ BitVec 32) List!14378) Bool)

(assert (=> b!775518 (= res!524568 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14375))))

(declare-fun b!775519 () Bool)

(assert (=> b!775519 (= e!431619 e!431621)))

(declare-fun res!524581 () Bool)

(assert (=> b!775519 (=> (not res!524581) (not e!431621))))

(assert (=> b!775519 (= res!524581 (= (seekEntryOrOpen!0 (select (arr!20323 a!3186) j!159) a!3186 mask!3328) lt!345501))))

(assert (=> b!775519 (= lt!345501 (Found!7930 j!159))))

(declare-fun b!775520 () Bool)

(declare-fun res!524575 () Bool)

(assert (=> b!775520 (=> (not res!524575) (not e!431626))))

(assert (=> b!775520 (= res!524575 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!775521 () Bool)

(declare-fun res!524571 () Bool)

(assert (=> b!775521 (=> (not res!524571) (not e!431620))))

(declare-fun arrayContainsKey!0 (array!42462 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!775521 (= res!524571 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!775522 () Bool)

(declare-fun res!524570 () Bool)

(assert (=> b!775522 (=> (not res!524570) (not e!431620))))

(assert (=> b!775522 (= res!524570 (validKeyInArray!0 (select (arr!20323 a!3186) j!159)))))

(declare-fun b!775523 () Bool)

(assert (=> b!775523 (= e!431626 e!431625)))

(declare-fun res!524579 () Bool)

(assert (=> b!775523 (=> (not res!524579) (not e!431625))))

(declare-fun lt!345499 () SeekEntryResult!7930)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42462 (_ BitVec 32)) SeekEntryResult!7930)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!775523 (= res!524579 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20323 a!3186) j!159) mask!3328) (select (arr!20323 a!3186) j!159) a!3186 mask!3328) lt!345499))))

(assert (=> b!775523 (= lt!345499 (Intermediate!7930 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!775524 () Bool)

(declare-fun res!524569 () Bool)

(assert (=> b!775524 (=> (not res!524569) (not e!431626))))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!775524 (= res!524569 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20744 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20744 a!3186))))))

(declare-fun b!775525 () Bool)

(assert (=> b!775525 (= e!431623 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20323 a!3186) j!159) a!3186 mask!3328) (Found!7930 j!159)))))

(declare-fun b!775526 () Bool)

(assert (=> b!775526 (= e!431625 e!431622)))

(declare-fun res!524572 () Bool)

(assert (=> b!775526 (=> (not res!524572) (not e!431622))))

(declare-fun lt!345498 () array!42462)

(declare-fun lt!345500 () (_ BitVec 64))

(assert (=> b!775526 (= res!524572 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!345500 mask!3328) lt!345500 lt!345498 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!345500 lt!345498 mask!3328)))))

(assert (=> b!775526 (= lt!345500 (select (store (arr!20323 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!775526 (= lt!345498 (array!42463 (store (arr!20323 a!3186) i!1173 k0!2102) (size!20744 a!3186)))))

(declare-fun b!775527 () Bool)

(assert (=> b!775527 (= e!431623 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20323 a!3186) j!159) a!3186 mask!3328) lt!345499))))

(assert (= (and start!67152 res!524573) b!775511))

(assert (= (and b!775511 res!524574) b!775522))

(assert (= (and b!775522 res!524570) b!775513))

(assert (= (and b!775513 res!524580) b!775521))

(assert (= (and b!775521 res!524571) b!775516))

(assert (= (and b!775516 res!524576) b!775520))

(assert (= (and b!775520 res!524575) b!775518))

(assert (= (and b!775518 res!524568) b!775524))

(assert (= (and b!775524 res!524569) b!775523))

(assert (= (and b!775523 res!524579) b!775515))

(assert (= (and b!775515 res!524577) b!775514))

(assert (= (and b!775514 c!85872) b!775527))

(assert (= (and b!775514 (not c!85872)) b!775525))

(assert (= (and b!775514 res!524578) b!775526))

(assert (= (and b!775526 res!524572) b!775512))

(assert (= (and b!775512 res!524567) b!775519))

(assert (= (and b!775519 res!524581) b!775517))

(declare-fun m!719783 () Bool)

(assert (=> b!775512 m!719783))

(declare-fun m!719785 () Bool)

(assert (=> b!775512 m!719785))

(declare-fun m!719787 () Bool)

(assert (=> b!775522 m!719787))

(assert (=> b!775522 m!719787))

(declare-fun m!719789 () Bool)

(assert (=> b!775522 m!719789))

(declare-fun m!719791 () Bool)

(assert (=> b!775526 m!719791))

(declare-fun m!719793 () Bool)

(assert (=> b!775526 m!719793))

(assert (=> b!775526 m!719791))

(declare-fun m!719795 () Bool)

(assert (=> b!775526 m!719795))

(declare-fun m!719797 () Bool)

(assert (=> b!775526 m!719797))

(declare-fun m!719799 () Bool)

(assert (=> b!775526 m!719799))

(assert (=> b!775527 m!719787))

(assert (=> b!775527 m!719787))

(declare-fun m!719801 () Bool)

(assert (=> b!775527 m!719801))

(declare-fun m!719803 () Bool)

(assert (=> start!67152 m!719803))

(declare-fun m!719805 () Bool)

(assert (=> start!67152 m!719805))

(declare-fun m!719807 () Bool)

(assert (=> b!775516 m!719807))

(declare-fun m!719809 () Bool)

(assert (=> b!775513 m!719809))

(assert (=> b!775523 m!719787))

(assert (=> b!775523 m!719787))

(declare-fun m!719811 () Bool)

(assert (=> b!775523 m!719811))

(assert (=> b!775523 m!719811))

(assert (=> b!775523 m!719787))

(declare-fun m!719813 () Bool)

(assert (=> b!775523 m!719813))

(assert (=> b!775525 m!719787))

(assert (=> b!775525 m!719787))

(declare-fun m!719815 () Bool)

(assert (=> b!775525 m!719815))

(declare-fun m!719817 () Bool)

(assert (=> b!775515 m!719817))

(declare-fun m!719819 () Bool)

(assert (=> b!775521 m!719819))

(assert (=> b!775519 m!719787))

(assert (=> b!775519 m!719787))

(declare-fun m!719821 () Bool)

(assert (=> b!775519 m!719821))

(declare-fun m!719823 () Bool)

(assert (=> b!775518 m!719823))

(declare-fun m!719825 () Bool)

(assert (=> b!775520 m!719825))

(assert (=> b!775517 m!719787))

(assert (=> b!775517 m!719787))

(declare-fun m!719827 () Bool)

(assert (=> b!775517 m!719827))

(check-sat (not b!775517) (not b!775521) (not b!775513) (not b!775526) (not b!775525) (not b!775516) (not b!775518) (not b!775527) (not b!775522) (not start!67152) (not b!775520) (not b!775519) (not b!775512) (not b!775523))
(check-sat)
