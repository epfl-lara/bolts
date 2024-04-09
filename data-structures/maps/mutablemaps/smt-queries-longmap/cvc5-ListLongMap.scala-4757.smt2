; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65620 () Bool)

(assert start!65620)

(declare-fun b!750113 () Bool)

(declare-datatypes ((Unit!25762 0))(
  ( (Unit!25763) )
))
(declare-fun e!418553 () Unit!25762)

(declare-fun Unit!25764 () Unit!25762)

(assert (=> b!750113 (= e!418553 Unit!25764)))

(declare-fun b!750114 () Bool)

(declare-fun Unit!25765 () Unit!25762)

(assert (=> b!750114 (= e!418553 Unit!25765)))

(assert (=> b!750114 false))

(declare-fun b!750115 () Bool)

(declare-fun res!506346 () Bool)

(declare-fun e!418552 () Bool)

(assert (=> b!750115 (=> (not res!506346) (not e!418552))))

(declare-fun e!418550 () Bool)

(assert (=> b!750115 (= res!506346 e!418550)))

(declare-fun c!82265 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!750115 (= c!82265 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!750116 () Bool)

(declare-fun res!506349 () Bool)

(declare-fun e!418546 () Bool)

(assert (=> b!750116 (=> (not res!506349) (not e!418546))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!750116 (= res!506349 (validKeyInArray!0 k!2102))))

(declare-datatypes ((array!41746 0))(
  ( (array!41747 (arr!19983 (Array (_ BitVec 32) (_ BitVec 64))) (size!20404 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41746)

(declare-fun b!750117 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7590 0))(
  ( (MissingZero!7590 (index!32727 (_ BitVec 32))) (Found!7590 (index!32728 (_ BitVec 32))) (Intermediate!7590 (undefined!8402 Bool) (index!32729 (_ BitVec 32)) (x!63685 (_ BitVec 32))) (Undefined!7590) (MissingVacant!7590 (index!32730 (_ BitVec 32))) )
))
(declare-fun lt!333549 () SeekEntryResult!7590)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41746 (_ BitVec 32)) SeekEntryResult!7590)

(assert (=> b!750117 (= e!418550 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19983 a!3186) j!159) a!3186 mask!3328) lt!333549))))

(declare-fun b!750118 () Bool)

(declare-fun res!506355 () Bool)

(assert (=> b!750118 (=> (not res!506355) (not e!418546))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!750118 (= res!506355 (and (= (size!20404 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20404 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20404 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!750119 () Bool)

(declare-fun res!506351 () Bool)

(assert (=> b!750119 (=> (not res!506351) (not e!418546))))

(declare-fun arrayContainsKey!0 (array!41746 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!750119 (= res!506351 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!750120 () Bool)

(declare-fun res!506348 () Bool)

(declare-fun e!418551 () Bool)

(assert (=> b!750120 (=> (not res!506348) (not e!418551))))

(declare-datatypes ((List!14038 0))(
  ( (Nil!14035) (Cons!14034 (h!15106 (_ BitVec 64)) (t!20361 List!14038)) )
))
(declare-fun arrayNoDuplicates!0 (array!41746 (_ BitVec 32) List!14038) Bool)

(assert (=> b!750120 (= res!506348 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14035))))

(declare-fun b!750121 () Bool)

(assert (=> b!750121 (= e!418546 e!418551)))

(declare-fun res!506345 () Bool)

(assert (=> b!750121 (=> (not res!506345) (not e!418551))))

(declare-fun lt!333547 () SeekEntryResult!7590)

(assert (=> b!750121 (= res!506345 (or (= lt!333547 (MissingZero!7590 i!1173)) (= lt!333547 (MissingVacant!7590 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41746 (_ BitVec 32)) SeekEntryResult!7590)

(assert (=> b!750121 (= lt!333547 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!750122 () Bool)

(declare-fun e!418554 () Bool)

(declare-fun e!418547 () Bool)

(assert (=> b!750122 (= e!418554 e!418547)))

(declare-fun res!506353 () Bool)

(assert (=> b!750122 (=> res!506353 e!418547)))

(declare-fun lt!333552 () (_ BitVec 64))

(declare-fun lt!333551 () (_ BitVec 64))

(assert (=> b!750122 (= res!506353 (= lt!333552 lt!333551))))

(assert (=> b!750122 (= lt!333552 (select (store (arr!19983 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!750123 () Bool)

(declare-fun res!506347 () Bool)

(assert (=> b!750123 (=> (not res!506347) (not e!418546))))

(assert (=> b!750123 (= res!506347 (validKeyInArray!0 (select (arr!19983 a!3186) j!159)))))

(declare-fun e!418548 () Bool)

(declare-fun b!750124 () Bool)

(declare-fun lt!333554 () array!41746)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41746 (_ BitVec 32)) SeekEntryResult!7590)

(assert (=> b!750124 (= e!418548 (= (seekEntryOrOpen!0 lt!333551 lt!333554 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!333551 lt!333554 mask!3328)))))

(declare-fun b!750125 () Bool)

(declare-fun e!418549 () Bool)

(assert (=> b!750125 (= e!418549 (not e!418554))))

(declare-fun res!506350 () Bool)

(assert (=> b!750125 (=> res!506350 e!418554)))

(declare-fun lt!333546 () SeekEntryResult!7590)

(assert (=> b!750125 (= res!506350 (or (not (is-Intermediate!7590 lt!333546)) (bvslt x!1131 (x!63685 lt!333546)) (not (= x!1131 (x!63685 lt!333546))) (not (= index!1321 (index!32729 lt!333546)))))))

(declare-fun e!418544 () Bool)

(assert (=> b!750125 e!418544))

(declare-fun res!506358 () Bool)

(assert (=> b!750125 (=> (not res!506358) (not e!418544))))

(declare-fun lt!333550 () SeekEntryResult!7590)

(declare-fun lt!333545 () SeekEntryResult!7590)

(assert (=> b!750125 (= res!506358 (= lt!333550 lt!333545))))

(assert (=> b!750125 (= lt!333545 (Found!7590 j!159))))

(assert (=> b!750125 (= lt!333550 (seekEntryOrOpen!0 (select (arr!19983 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41746 (_ BitVec 32)) Bool)

(assert (=> b!750125 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!333553 () Unit!25762)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41746 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25762)

(assert (=> b!750125 (= lt!333553 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!750126 () Bool)

(declare-fun res!506354 () Bool)

(assert (=> b!750126 (=> (not res!506354) (not e!418551))))

(assert (=> b!750126 (= res!506354 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!750127 () Bool)

(declare-fun res!506357 () Bool)

(assert (=> b!750127 (=> res!506357 e!418554)))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!750127 (= res!506357 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19983 a!3186) j!159) a!3186 mask!3328) lt!333545)))))

(declare-fun b!750128 () Bool)

(assert (=> b!750128 (= e!418551 e!418552)))

(declare-fun res!506352 () Bool)

(assert (=> b!750128 (=> (not res!506352) (not e!418552))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!750128 (= res!506352 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19983 a!3186) j!159) mask!3328) (select (arr!19983 a!3186) j!159) a!3186 mask!3328) lt!333549))))

(assert (=> b!750128 (= lt!333549 (Intermediate!7590 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!750129 () Bool)

(assert (=> b!750129 (= e!418552 e!418549)))

(declare-fun res!506359 () Bool)

(assert (=> b!750129 (=> (not res!506359) (not e!418549))))

(declare-fun lt!333548 () SeekEntryResult!7590)

(assert (=> b!750129 (= res!506359 (= lt!333548 lt!333546))))

(assert (=> b!750129 (= lt!333546 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!333551 lt!333554 mask!3328))))

(assert (=> b!750129 (= lt!333548 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!333551 mask!3328) lt!333551 lt!333554 mask!3328))))

(assert (=> b!750129 (= lt!333551 (select (store (arr!19983 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!750129 (= lt!333554 (array!41747 (store (arr!19983 a!3186) i!1173 k!2102) (size!20404 a!3186)))))

(declare-fun b!750130 () Bool)

(assert (=> b!750130 (= e!418544 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19983 a!3186) j!159) a!3186 mask!3328) lt!333545))))

(declare-fun b!750131 () Bool)

(declare-fun res!506360 () Bool)

(assert (=> b!750131 (=> (not res!506360) (not e!418551))))

(assert (=> b!750131 (= res!506360 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20404 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20404 a!3186))))))

(declare-fun b!750132 () Bool)

(declare-fun res!506344 () Bool)

(assert (=> b!750132 (=> (not res!506344) (not e!418552))))

(assert (=> b!750132 (= res!506344 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19983 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!506361 () Bool)

(assert (=> start!65620 (=> (not res!506361) (not e!418546))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65620 (= res!506361 (validMask!0 mask!3328))))

(assert (=> start!65620 e!418546))

(assert (=> start!65620 true))

(declare-fun array_inv!15757 (array!41746) Bool)

(assert (=> start!65620 (array_inv!15757 a!3186)))

(declare-fun b!750133 () Bool)

(assert (=> b!750133 (= e!418547 (bvsge mask!3328 #b00000000000000000000000000000000))))

(assert (=> b!750133 e!418548))

(declare-fun res!506356 () Bool)

(assert (=> b!750133 (=> (not res!506356) (not e!418548))))

(assert (=> b!750133 (= res!506356 (= lt!333552 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!333544 () Unit!25762)

(assert (=> b!750133 (= lt!333544 e!418553)))

(declare-fun c!82266 () Bool)

(assert (=> b!750133 (= c!82266 (= lt!333552 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!750134 () Bool)

(assert (=> b!750134 (= e!418550 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19983 a!3186) j!159) a!3186 mask!3328) (Found!7590 j!159)))))

(assert (= (and start!65620 res!506361) b!750118))

(assert (= (and b!750118 res!506355) b!750123))

(assert (= (and b!750123 res!506347) b!750116))

(assert (= (and b!750116 res!506349) b!750119))

(assert (= (and b!750119 res!506351) b!750121))

(assert (= (and b!750121 res!506345) b!750126))

(assert (= (and b!750126 res!506354) b!750120))

(assert (= (and b!750120 res!506348) b!750131))

(assert (= (and b!750131 res!506360) b!750128))

(assert (= (and b!750128 res!506352) b!750132))

(assert (= (and b!750132 res!506344) b!750115))

(assert (= (and b!750115 c!82265) b!750117))

(assert (= (and b!750115 (not c!82265)) b!750134))

(assert (= (and b!750115 res!506346) b!750129))

(assert (= (and b!750129 res!506359) b!750125))

(assert (= (and b!750125 res!506358) b!750130))

(assert (= (and b!750125 (not res!506350)) b!750127))

(assert (= (and b!750127 (not res!506357)) b!750122))

(assert (= (and b!750122 (not res!506353)) b!750133))

(assert (= (and b!750133 c!82266) b!750114))

(assert (= (and b!750133 (not c!82266)) b!750113))

(assert (= (and b!750133 res!506356) b!750124))

(declare-fun m!699649 () Bool)

(assert (=> b!750134 m!699649))

(assert (=> b!750134 m!699649))

(declare-fun m!699651 () Bool)

(assert (=> b!750134 m!699651))

(declare-fun m!699653 () Bool)

(assert (=> b!750129 m!699653))

(declare-fun m!699655 () Bool)

(assert (=> b!750129 m!699655))

(declare-fun m!699657 () Bool)

(assert (=> b!750129 m!699657))

(assert (=> b!750129 m!699653))

(declare-fun m!699659 () Bool)

(assert (=> b!750129 m!699659))

(declare-fun m!699661 () Bool)

(assert (=> b!750129 m!699661))

(assert (=> b!750117 m!699649))

(assert (=> b!750117 m!699649))

(declare-fun m!699663 () Bool)

(assert (=> b!750117 m!699663))

(assert (=> b!750127 m!699649))

(assert (=> b!750127 m!699649))

(assert (=> b!750127 m!699651))

(assert (=> b!750123 m!699649))

(assert (=> b!750123 m!699649))

(declare-fun m!699665 () Bool)

(assert (=> b!750123 m!699665))

(assert (=> b!750125 m!699649))

(assert (=> b!750125 m!699649))

(declare-fun m!699667 () Bool)

(assert (=> b!750125 m!699667))

(declare-fun m!699669 () Bool)

(assert (=> b!750125 m!699669))

(declare-fun m!699671 () Bool)

(assert (=> b!750125 m!699671))

(declare-fun m!699673 () Bool)

(assert (=> b!750124 m!699673))

(declare-fun m!699675 () Bool)

(assert (=> b!750124 m!699675))

(declare-fun m!699677 () Bool)

(assert (=> b!750120 m!699677))

(declare-fun m!699679 () Bool)

(assert (=> b!750126 m!699679))

(assert (=> b!750128 m!699649))

(assert (=> b!750128 m!699649))

(declare-fun m!699681 () Bool)

(assert (=> b!750128 m!699681))

(assert (=> b!750128 m!699681))

(assert (=> b!750128 m!699649))

(declare-fun m!699683 () Bool)

(assert (=> b!750128 m!699683))

(declare-fun m!699685 () Bool)

(assert (=> start!65620 m!699685))

(declare-fun m!699687 () Bool)

(assert (=> start!65620 m!699687))

(declare-fun m!699689 () Bool)

(assert (=> b!750119 m!699689))

(declare-fun m!699691 () Bool)

(assert (=> b!750116 m!699691))

(assert (=> b!750122 m!699659))

(declare-fun m!699693 () Bool)

(assert (=> b!750122 m!699693))

(assert (=> b!750130 m!699649))

(assert (=> b!750130 m!699649))

(declare-fun m!699695 () Bool)

(assert (=> b!750130 m!699695))

(declare-fun m!699697 () Bool)

(assert (=> b!750121 m!699697))

(declare-fun m!699699 () Bool)

(assert (=> b!750132 m!699699))

(push 1)

