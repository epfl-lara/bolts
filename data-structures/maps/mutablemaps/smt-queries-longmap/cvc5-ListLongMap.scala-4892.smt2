; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67480 () Bool)

(assert start!67480)

(declare-fun b!780418 () Bool)

(declare-fun e!434135 () Bool)

(declare-fun e!434141 () Bool)

(assert (=> b!780418 (= e!434135 e!434141)))

(declare-fun res!528164 () Bool)

(assert (=> b!780418 (=> (not res!528164) (not e!434141))))

(declare-datatypes ((SeekEntryResult!7995 0))(
  ( (MissingZero!7995 (index!34347 (_ BitVec 32))) (Found!7995 (index!34348 (_ BitVec 32))) (Intermediate!7995 (undefined!8807 Bool) (index!34349 (_ BitVec 32)) (x!65326 (_ BitVec 32))) (Undefined!7995) (MissingVacant!7995 (index!34350 (_ BitVec 32))) )
))
(declare-fun lt!347809 () SeekEntryResult!7995)

(declare-fun lt!347801 () SeekEntryResult!7995)

(assert (=> b!780418 (= res!528164 (= lt!347809 lt!347801))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-datatypes ((array!42601 0))(
  ( (array!42602 (arr!20388 (Array (_ BitVec 32) (_ BitVec 64))) (size!20809 (_ BitVec 32))) )
))
(declare-fun lt!347803 () array!42601)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!347808 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42601 (_ BitVec 32)) SeekEntryResult!7995)

(assert (=> b!780418 (= lt!347801 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!347808 lt!347803 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!780418 (= lt!347809 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!347808 mask!3328) lt!347808 lt!347803 mask!3328))))

(declare-fun a!3186 () array!42601)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!780418 (= lt!347808 (select (store (arr!20388 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!780418 (= lt!347803 (array!42602 (store (arr!20388 a!3186) i!1173 k!2102) (size!20809 a!3186)))))

(declare-fun b!780419 () Bool)

(declare-fun res!528158 () Bool)

(assert (=> b!780419 (=> (not res!528158) (not e!434135))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!780419 (= res!528158 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20388 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!780420 () Bool)

(declare-fun e!434143 () Bool)

(assert (=> b!780420 (= e!434143 true)))

(declare-datatypes ((Unit!26890 0))(
  ( (Unit!26891) )
))
(declare-fun lt!347802 () Unit!26890)

(declare-fun e!434140 () Unit!26890)

(assert (=> b!780420 (= lt!347802 e!434140)))

(declare-fun c!86537 () Bool)

(assert (=> b!780420 (= c!86537 (= (select (store (arr!20388 a!3186) i!1173 k!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!780421 () Bool)

(declare-fun res!528156 () Bool)

(declare-fun e!434138 () Bool)

(assert (=> b!780421 (=> (not res!528156) (not e!434138))))

(declare-fun arrayContainsKey!0 (array!42601 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!780421 (= res!528156 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!780422 () Bool)

(declare-fun res!528153 () Bool)

(declare-fun e!434137 () Bool)

(assert (=> b!780422 (=> (not res!528153) (not e!434137))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!780422 (= res!528153 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20809 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20809 a!3186))))))

(declare-fun b!780424 () Bool)

(declare-fun res!528165 () Bool)

(assert (=> b!780424 (=> (not res!528165) (not e!434138))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!780424 (= res!528165 (validKeyInArray!0 k!2102))))

(declare-fun e!434139 () Bool)

(declare-fun b!780425 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42601 (_ BitVec 32)) SeekEntryResult!7995)

(assert (=> b!780425 (= e!434139 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20388 a!3186) j!159) a!3186 mask!3328) (Found!7995 j!159)))))

(declare-fun b!780426 () Bool)

(declare-fun Unit!26892 () Unit!26890)

(assert (=> b!780426 (= e!434140 Unit!26892)))

(declare-fun b!780427 () Bool)

(declare-fun res!528155 () Bool)

(assert (=> b!780427 (=> res!528155 e!434143)))

(declare-fun lt!347807 () SeekEntryResult!7995)

(assert (=> b!780427 (= res!528155 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20388 a!3186) j!159) a!3186 mask!3328) lt!347807)))))

(declare-fun b!780428 () Bool)

(declare-fun res!528163 () Bool)

(assert (=> b!780428 (=> (not res!528163) (not e!434135))))

(assert (=> b!780428 (= res!528163 e!434139)))

(declare-fun c!86538 () Bool)

(assert (=> b!780428 (= c!86538 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!780429 () Bool)

(assert (=> b!780429 (= e!434138 e!434137)))

(declare-fun res!528159 () Bool)

(assert (=> b!780429 (=> (not res!528159) (not e!434137))))

(declare-fun lt!347806 () SeekEntryResult!7995)

(assert (=> b!780429 (= res!528159 (or (= lt!347806 (MissingZero!7995 i!1173)) (= lt!347806 (MissingVacant!7995 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42601 (_ BitVec 32)) SeekEntryResult!7995)

(assert (=> b!780429 (= lt!347806 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!780430 () Bool)

(declare-fun lt!347804 () SeekEntryResult!7995)

(assert (=> b!780430 (= e!434139 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20388 a!3186) j!159) a!3186 mask!3328) lt!347804))))

(declare-fun b!780431 () Bool)

(assert (=> b!780431 (= e!434141 (not e!434143))))

(declare-fun res!528157 () Bool)

(assert (=> b!780431 (=> res!528157 e!434143)))

(assert (=> b!780431 (= res!528157 (or (not (is-Intermediate!7995 lt!347801)) (bvslt x!1131 (x!65326 lt!347801)) (not (= x!1131 (x!65326 lt!347801))) (not (= index!1321 (index!34349 lt!347801)))))))

(declare-fun e!434136 () Bool)

(assert (=> b!780431 e!434136))

(declare-fun res!528168 () Bool)

(assert (=> b!780431 (=> (not res!528168) (not e!434136))))

(declare-fun lt!347805 () SeekEntryResult!7995)

(assert (=> b!780431 (= res!528168 (= lt!347805 lt!347807))))

(assert (=> b!780431 (= lt!347807 (Found!7995 j!159))))

(assert (=> b!780431 (= lt!347805 (seekEntryOrOpen!0 (select (arr!20388 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42601 (_ BitVec 32)) Bool)

(assert (=> b!780431 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!347800 () Unit!26890)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42601 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26890)

(assert (=> b!780431 (= lt!347800 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!780432 () Bool)

(assert (=> b!780432 (= e!434136 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20388 a!3186) j!159) a!3186 mask!3328) lt!347807))))

(declare-fun b!780433 () Bool)

(declare-fun res!528160 () Bool)

(assert (=> b!780433 (=> (not res!528160) (not e!434138))))

(assert (=> b!780433 (= res!528160 (and (= (size!20809 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20809 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20809 a!3186)) (not (= i!1173 j!159))))))

(declare-fun res!528169 () Bool)

(assert (=> start!67480 (=> (not res!528169) (not e!434138))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67480 (= res!528169 (validMask!0 mask!3328))))

(assert (=> start!67480 e!434138))

(assert (=> start!67480 true))

(declare-fun array_inv!16162 (array!42601) Bool)

(assert (=> start!67480 (array_inv!16162 a!3186)))

(declare-fun b!780423 () Bool)

(declare-fun res!528166 () Bool)

(assert (=> b!780423 (=> (not res!528166) (not e!434137))))

(assert (=> b!780423 (= res!528166 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!780434 () Bool)

(assert (=> b!780434 (= e!434137 e!434135)))

(declare-fun res!528162 () Bool)

(assert (=> b!780434 (=> (not res!528162) (not e!434135))))

(assert (=> b!780434 (= res!528162 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20388 a!3186) j!159) mask!3328) (select (arr!20388 a!3186) j!159) a!3186 mask!3328) lt!347804))))

(assert (=> b!780434 (= lt!347804 (Intermediate!7995 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!780435 () Bool)

(declare-fun Unit!26893 () Unit!26890)

(assert (=> b!780435 (= e!434140 Unit!26893)))

(assert (=> b!780435 false))

(declare-fun b!780436 () Bool)

(declare-fun res!528161 () Bool)

(assert (=> b!780436 (=> (not res!528161) (not e!434137))))

(declare-datatypes ((List!14443 0))(
  ( (Nil!14440) (Cons!14439 (h!15556 (_ BitVec 64)) (t!20766 List!14443)) )
))
(declare-fun arrayNoDuplicates!0 (array!42601 (_ BitVec 32) List!14443) Bool)

(assert (=> b!780436 (= res!528161 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14440))))

(declare-fun b!780437 () Bool)

(declare-fun res!528167 () Bool)

(assert (=> b!780437 (=> (not res!528167) (not e!434138))))

(assert (=> b!780437 (= res!528167 (validKeyInArray!0 (select (arr!20388 a!3186) j!159)))))

(declare-fun b!780438 () Bool)

(declare-fun res!528154 () Bool)

(assert (=> b!780438 (=> res!528154 e!434143)))

(assert (=> b!780438 (= res!528154 (= (select (store (arr!20388 a!3186) i!1173 k!2102) index!1321) lt!347808))))

(assert (= (and start!67480 res!528169) b!780433))

(assert (= (and b!780433 res!528160) b!780437))

(assert (= (and b!780437 res!528167) b!780424))

(assert (= (and b!780424 res!528165) b!780421))

(assert (= (and b!780421 res!528156) b!780429))

(assert (= (and b!780429 res!528159) b!780423))

(assert (= (and b!780423 res!528166) b!780436))

(assert (= (and b!780436 res!528161) b!780422))

(assert (= (and b!780422 res!528153) b!780434))

(assert (= (and b!780434 res!528162) b!780419))

(assert (= (and b!780419 res!528158) b!780428))

(assert (= (and b!780428 c!86538) b!780430))

(assert (= (and b!780428 (not c!86538)) b!780425))

(assert (= (and b!780428 res!528163) b!780418))

(assert (= (and b!780418 res!528164) b!780431))

(assert (= (and b!780431 res!528168) b!780432))

(assert (= (and b!780431 (not res!528157)) b!780427))

(assert (= (and b!780427 (not res!528155)) b!780438))

(assert (= (and b!780438 (not res!528154)) b!780420))

(assert (= (and b!780420 c!86537) b!780435))

(assert (= (and b!780420 (not c!86537)) b!780426))

(declare-fun m!723769 () Bool)

(assert (=> b!780437 m!723769))

(assert (=> b!780437 m!723769))

(declare-fun m!723771 () Bool)

(assert (=> b!780437 m!723771))

(declare-fun m!723773 () Bool)

(assert (=> b!780418 m!723773))

(declare-fun m!723775 () Bool)

(assert (=> b!780418 m!723775))

(declare-fun m!723777 () Bool)

(assert (=> b!780418 m!723777))

(declare-fun m!723779 () Bool)

(assert (=> b!780418 m!723779))

(declare-fun m!723781 () Bool)

(assert (=> b!780418 m!723781))

(assert (=> b!780418 m!723779))

(assert (=> b!780431 m!723769))

(assert (=> b!780431 m!723769))

(declare-fun m!723783 () Bool)

(assert (=> b!780431 m!723783))

(declare-fun m!723785 () Bool)

(assert (=> b!780431 m!723785))

(declare-fun m!723787 () Bool)

(assert (=> b!780431 m!723787))

(declare-fun m!723789 () Bool)

(assert (=> b!780423 m!723789))

(declare-fun m!723791 () Bool)

(assert (=> b!780436 m!723791))

(assert (=> b!780425 m!723769))

(assert (=> b!780425 m!723769))

(declare-fun m!723793 () Bool)

(assert (=> b!780425 m!723793))

(assert (=> b!780432 m!723769))

(assert (=> b!780432 m!723769))

(declare-fun m!723795 () Bool)

(assert (=> b!780432 m!723795))

(declare-fun m!723797 () Bool)

(assert (=> b!780429 m!723797))

(assert (=> b!780430 m!723769))

(assert (=> b!780430 m!723769))

(declare-fun m!723799 () Bool)

(assert (=> b!780430 m!723799))

(declare-fun m!723801 () Bool)

(assert (=> b!780421 m!723801))

(assert (=> b!780438 m!723773))

(declare-fun m!723803 () Bool)

(assert (=> b!780438 m!723803))

(assert (=> b!780427 m!723769))

(assert (=> b!780427 m!723769))

(assert (=> b!780427 m!723793))

(declare-fun m!723805 () Bool)

(assert (=> b!780419 m!723805))

(assert (=> b!780434 m!723769))

(assert (=> b!780434 m!723769))

(declare-fun m!723807 () Bool)

(assert (=> b!780434 m!723807))

(assert (=> b!780434 m!723807))

(assert (=> b!780434 m!723769))

(declare-fun m!723809 () Bool)

(assert (=> b!780434 m!723809))

(declare-fun m!723811 () Bool)

(assert (=> start!67480 m!723811))

(declare-fun m!723813 () Bool)

(assert (=> start!67480 m!723813))

(declare-fun m!723815 () Bool)

(assert (=> b!780424 m!723815))

(assert (=> b!780420 m!723773))

(assert (=> b!780420 m!723803))

(push 1)

