; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64940 () Bool)

(assert start!64940)

(declare-fun b!732566 () Bool)

(declare-fun e!409946 () Bool)

(declare-fun e!409947 () Bool)

(assert (=> b!732566 (= e!409946 e!409947)))

(declare-fun res!492285 () Bool)

(assert (=> b!732566 (=> (not res!492285) (not e!409947))))

(declare-datatypes ((SeekEntryResult!7322 0))(
  ( (MissingZero!7322 (index!31655 (_ BitVec 32))) (Found!7322 (index!31656 (_ BitVec 32))) (Intermediate!7322 (undefined!8134 Bool) (index!31657 (_ BitVec 32)) (x!62673 (_ BitVec 32))) (Undefined!7322) (MissingVacant!7322 (index!31658 (_ BitVec 32))) )
))
(declare-fun lt!324667 () SeekEntryResult!7322)

(declare-fun lt!324663 () SeekEntryResult!7322)

(assert (=> b!732566 (= res!492285 (= lt!324667 lt!324663))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!324662 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((array!41204 0))(
  ( (array!41205 (arr!19715 (Array (_ BitVec 32) (_ BitVec 64))) (size!20136 (_ BitVec 32))) )
))
(declare-fun lt!324660 () array!41204)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41204 (_ BitVec 32)) SeekEntryResult!7322)

(assert (=> b!732566 (= lt!324663 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!324662 lt!324660 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!732566 (= lt!324667 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!324662 mask!3328) lt!324662 lt!324660 mask!3328))))

(declare-fun a!3186 () array!41204)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!732566 (= lt!324662 (select (store (arr!19715 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!732566 (= lt!324660 (array!41205 (store (arr!19715 a!3186) i!1173 k!2102) (size!20136 a!3186)))))

(declare-fun b!732567 () Bool)

(declare-fun res!492282 () Bool)

(declare-fun e!409951 () Bool)

(assert (=> b!732567 (=> (not res!492282) (not e!409951))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!732567 (= res!492282 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20136 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20136 a!3186))))))

(declare-fun b!732568 () Bool)

(declare-fun e!409945 () Bool)

(declare-fun e!409949 () Bool)

(assert (=> b!732568 (= e!409945 e!409949)))

(declare-fun res!492269 () Bool)

(assert (=> b!732568 (=> (not res!492269) (not e!409949))))

(declare-fun lt!324661 () SeekEntryResult!7322)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41204 (_ BitVec 32)) SeekEntryResult!7322)

(assert (=> b!732568 (= res!492269 (= (seekEntryOrOpen!0 (select (arr!19715 a!3186) j!159) a!3186 mask!3328) lt!324661))))

(assert (=> b!732568 (= lt!324661 (Found!7322 j!159))))

(declare-fun res!492274 () Bool)

(declare-fun e!409944 () Bool)

(assert (=> start!64940 (=> (not res!492274) (not e!409944))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64940 (= res!492274 (validMask!0 mask!3328))))

(assert (=> start!64940 e!409944))

(assert (=> start!64940 true))

(declare-fun array_inv!15489 (array!41204) Bool)

(assert (=> start!64940 (array_inv!15489 a!3186)))

(declare-fun lt!324666 () SeekEntryResult!7322)

(declare-fun e!409950 () Bool)

(declare-fun b!732569 () Bool)

(assert (=> b!732569 (= e!409950 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19715 a!3186) j!159) a!3186 mask!3328) lt!324666))))

(declare-fun b!732570 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41204 (_ BitVec 32)) SeekEntryResult!7322)

(assert (=> b!732570 (= e!409949 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19715 a!3186) j!159) a!3186 mask!3328) lt!324661))))

(declare-fun b!732571 () Bool)

(assert (=> b!732571 (= e!409950 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19715 a!3186) j!159) a!3186 mask!3328) (Found!7322 j!159)))))

(declare-fun b!732572 () Bool)

(declare-fun res!492278 () Bool)

(assert (=> b!732572 (=> (not res!492278) (not e!409944))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!732572 (= res!492278 (validKeyInArray!0 k!2102))))

(declare-fun b!732573 () Bool)

(declare-fun res!492272 () Bool)

(assert (=> b!732573 (=> (not res!492272) (not e!409944))))

(assert (=> b!732573 (= res!492272 (and (= (size!20136 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20136 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20136 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!732574 () Bool)

(assert (=> b!732574 (= e!409944 e!409951)))

(declare-fun res!492279 () Bool)

(assert (=> b!732574 (=> (not res!492279) (not e!409951))))

(declare-fun lt!324668 () SeekEntryResult!7322)

(assert (=> b!732574 (= res!492279 (or (= lt!324668 (MissingZero!7322 i!1173)) (= lt!324668 (MissingVacant!7322 i!1173))))))

(assert (=> b!732574 (= lt!324668 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!732575 () Bool)

(declare-fun res!492273 () Bool)

(assert (=> b!732575 (=> (not res!492273) (not e!409951))))

(declare-datatypes ((List!13770 0))(
  ( (Nil!13767) (Cons!13766 (h!14832 (_ BitVec 64)) (t!20093 List!13770)) )
))
(declare-fun arrayNoDuplicates!0 (array!41204 (_ BitVec 32) List!13770) Bool)

(assert (=> b!732575 (= res!492273 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13767))))

(declare-fun b!732576 () Bool)

(declare-fun res!492283 () Bool)

(assert (=> b!732576 (=> (not res!492283) (not e!409946))))

(assert (=> b!732576 (= res!492283 e!409950)))

(declare-fun c!80526 () Bool)

(assert (=> b!732576 (= c!80526 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!732577 () Bool)

(declare-fun res!492277 () Bool)

(assert (=> b!732577 (=> (not res!492277) (not e!409944))))

(declare-fun arrayContainsKey!0 (array!41204 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!732577 (= res!492277 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!732578 () Bool)

(declare-fun e!409948 () Bool)

(assert (=> b!732578 (= e!409947 (not e!409948))))

(declare-fun res!492275 () Bool)

(assert (=> b!732578 (=> res!492275 e!409948)))

(assert (=> b!732578 (= res!492275 (or (not (is-Intermediate!7322 lt!324663)) (bvsge x!1131 (x!62673 lt!324663))))))

(assert (=> b!732578 e!409945))

(declare-fun res!492281 () Bool)

(assert (=> b!732578 (=> (not res!492281) (not e!409945))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41204 (_ BitVec 32)) Bool)

(assert (=> b!732578 (= res!492281 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24962 0))(
  ( (Unit!24963) )
))
(declare-fun lt!324664 () Unit!24962)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41204 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24962)

(assert (=> b!732578 (= lt!324664 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!732579 () Bool)

(declare-fun res!492280 () Bool)

(assert (=> b!732579 (=> (not res!492280) (not e!409951))))

(assert (=> b!732579 (= res!492280 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!732580 () Bool)

(declare-fun e!409952 () Bool)

(assert (=> b!732580 (= e!409952 true)))

(declare-fun lt!324665 () SeekEntryResult!7322)

(assert (=> b!732580 (= lt!324665 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19715 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!732581 () Bool)

(assert (=> b!732581 (= e!409948 e!409952)))

(declare-fun res!492270 () Bool)

(assert (=> b!732581 (=> res!492270 e!409952)))

(assert (=> b!732581 (= res!492270 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun lt!324659 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!732581 (= lt!324659 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!732582 () Bool)

(declare-fun res!492276 () Bool)

(assert (=> b!732582 (=> (not res!492276) (not e!409944))))

(assert (=> b!732582 (= res!492276 (validKeyInArray!0 (select (arr!19715 a!3186) j!159)))))

(declare-fun b!732583 () Bool)

(assert (=> b!732583 (= e!409951 e!409946)))

(declare-fun res!492271 () Bool)

(assert (=> b!732583 (=> (not res!492271) (not e!409946))))

(assert (=> b!732583 (= res!492271 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19715 a!3186) j!159) mask!3328) (select (arr!19715 a!3186) j!159) a!3186 mask!3328) lt!324666))))

(assert (=> b!732583 (= lt!324666 (Intermediate!7322 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!732584 () Bool)

(declare-fun res!492284 () Bool)

(assert (=> b!732584 (=> (not res!492284) (not e!409946))))

(assert (=> b!732584 (= res!492284 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19715 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!64940 res!492274) b!732573))

(assert (= (and b!732573 res!492272) b!732582))

(assert (= (and b!732582 res!492276) b!732572))

(assert (= (and b!732572 res!492278) b!732577))

(assert (= (and b!732577 res!492277) b!732574))

(assert (= (and b!732574 res!492279) b!732579))

(assert (= (and b!732579 res!492280) b!732575))

(assert (= (and b!732575 res!492273) b!732567))

(assert (= (and b!732567 res!492282) b!732583))

(assert (= (and b!732583 res!492271) b!732584))

(assert (= (and b!732584 res!492284) b!732576))

(assert (= (and b!732576 c!80526) b!732569))

(assert (= (and b!732576 (not c!80526)) b!732571))

(assert (= (and b!732576 res!492283) b!732566))

(assert (= (and b!732566 res!492285) b!732578))

(assert (= (and b!732578 res!492281) b!732568))

(assert (= (and b!732568 res!492269) b!732570))

(assert (= (and b!732578 (not res!492275)) b!732581))

(assert (= (and b!732581 (not res!492270)) b!732580))

(declare-fun m!685681 () Bool)

(assert (=> b!732577 m!685681))

(declare-fun m!685683 () Bool)

(assert (=> b!732582 m!685683))

(assert (=> b!732582 m!685683))

(declare-fun m!685685 () Bool)

(assert (=> b!732582 m!685685))

(assert (=> b!732571 m!685683))

(assert (=> b!732571 m!685683))

(declare-fun m!685687 () Bool)

(assert (=> b!732571 m!685687))

(assert (=> b!732583 m!685683))

(assert (=> b!732583 m!685683))

(declare-fun m!685689 () Bool)

(assert (=> b!732583 m!685689))

(assert (=> b!732583 m!685689))

(assert (=> b!732583 m!685683))

(declare-fun m!685691 () Bool)

(assert (=> b!732583 m!685691))

(declare-fun m!685693 () Bool)

(assert (=> b!732574 m!685693))

(declare-fun m!685695 () Bool)

(assert (=> b!732575 m!685695))

(assert (=> b!732568 m!685683))

(assert (=> b!732568 m!685683))

(declare-fun m!685697 () Bool)

(assert (=> b!732568 m!685697))

(assert (=> b!732580 m!685683))

(assert (=> b!732580 m!685683))

(assert (=> b!732580 m!685687))

(declare-fun m!685699 () Bool)

(assert (=> b!732572 m!685699))

(declare-fun m!685701 () Bool)

(assert (=> b!732579 m!685701))

(declare-fun m!685703 () Bool)

(assert (=> b!732578 m!685703))

(declare-fun m!685705 () Bool)

(assert (=> b!732578 m!685705))

(assert (=> b!732570 m!685683))

(assert (=> b!732570 m!685683))

(declare-fun m!685707 () Bool)

(assert (=> b!732570 m!685707))

(assert (=> b!732569 m!685683))

(assert (=> b!732569 m!685683))

(declare-fun m!685709 () Bool)

(assert (=> b!732569 m!685709))

(declare-fun m!685711 () Bool)

(assert (=> b!732584 m!685711))

(declare-fun m!685713 () Bool)

(assert (=> start!64940 m!685713))

(declare-fun m!685715 () Bool)

(assert (=> start!64940 m!685715))

(declare-fun m!685717 () Bool)

(assert (=> b!732581 m!685717))

(declare-fun m!685719 () Bool)

(assert (=> b!732566 m!685719))

(declare-fun m!685721 () Bool)

(assert (=> b!732566 m!685721))

(assert (=> b!732566 m!685719))

(declare-fun m!685723 () Bool)

(assert (=> b!732566 m!685723))

(declare-fun m!685725 () Bool)

(assert (=> b!732566 m!685725))

(declare-fun m!685727 () Bool)

(assert (=> b!732566 m!685727))

(push 1)

