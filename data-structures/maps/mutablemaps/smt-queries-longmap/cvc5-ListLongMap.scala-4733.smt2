; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65476 () Bool)

(assert start!65476)

(declare-fun b!745695 () Bool)

(declare-fun e!416488 () Bool)

(declare-fun e!416495 () Bool)

(assert (=> b!745695 (= e!416488 e!416495)))

(declare-fun res!502679 () Bool)

(assert (=> b!745695 (=> (not res!502679) (not e!416495))))

(declare-datatypes ((array!41602 0))(
  ( (array!41603 (arr!19911 (Array (_ BitVec 32) (_ BitVec 64))) (size!20332 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41602)

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7518 0))(
  ( (MissingZero!7518 (index!32439 (_ BitVec 32))) (Found!7518 (index!32440 (_ BitVec 32))) (Intermediate!7518 (undefined!8330 Bool) (index!32441 (_ BitVec 32)) (x!63421 (_ BitVec 32))) (Undefined!7518) (MissingVacant!7518 (index!32442 (_ BitVec 32))) )
))
(declare-fun lt!331345 () SeekEntryResult!7518)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41602 (_ BitVec 32)) SeekEntryResult!7518)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!745695 (= res!502679 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19911 a!3186) j!159) mask!3328) (select (arr!19911 a!3186) j!159) a!3186 mask!3328) lt!331345))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!745695 (= lt!331345 (Intermediate!7518 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!745696 () Bool)

(declare-fun res!502681 () Bool)

(declare-fun e!416494 () Bool)

(assert (=> b!745696 (=> (not res!502681) (not e!416494))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!745696 (= res!502681 (and (= (size!20332 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20332 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20332 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!745697 () Bool)

(declare-fun e!416492 () Bool)

(declare-fun lt!331340 () SeekEntryResult!7518)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41602 (_ BitVec 32)) SeekEntryResult!7518)

(assert (=> b!745697 (= e!416492 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19911 a!3186) j!159) a!3186 mask!3328) lt!331340))))

(declare-fun res!502674 () Bool)

(assert (=> start!65476 (=> (not res!502674) (not e!416494))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65476 (= res!502674 (validMask!0 mask!3328))))

(assert (=> start!65476 e!416494))

(assert (=> start!65476 true))

(declare-fun array_inv!15685 (array!41602) Bool)

(assert (=> start!65476 (array_inv!15685 a!3186)))

(declare-fun b!745698 () Bool)

(declare-fun res!502673 () Bool)

(assert (=> b!745698 (=> (not res!502673) (not e!416488))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!745698 (= res!502673 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20332 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20332 a!3186))))))

(declare-fun b!745699 () Bool)

(declare-fun res!502680 () Bool)

(assert (=> b!745699 (=> (not res!502680) (not e!416494))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!41602 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!745699 (= res!502680 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!745700 () Bool)

(declare-fun res!502668 () Bool)

(assert (=> b!745700 (=> (not res!502668) (not e!416488))))

(declare-datatypes ((List!13966 0))(
  ( (Nil!13963) (Cons!13962 (h!15034 (_ BitVec 64)) (t!20289 List!13966)) )
))
(declare-fun arrayNoDuplicates!0 (array!41602 (_ BitVec 32) List!13966) Bool)

(assert (=> b!745700 (= res!502668 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13963))))

(declare-fun b!745701 () Bool)

(declare-fun res!502670 () Bool)

(assert (=> b!745701 (=> (not res!502670) (not e!416488))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41602 (_ BitVec 32)) Bool)

(assert (=> b!745701 (= res!502670 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!745702 () Bool)

(declare-fun e!416496 () Bool)

(declare-fun e!416490 () Bool)

(assert (=> b!745702 (= e!416496 e!416490)))

(declare-fun res!502671 () Bool)

(assert (=> b!745702 (=> res!502671 e!416490)))

(declare-fun lt!331344 () (_ BitVec 64))

(declare-fun lt!331343 () SeekEntryResult!7518)

(assert (=> b!745702 (= res!502671 (or (not (= lt!331343 lt!331340)) (= (select (store (arr!19911 a!3186) i!1173 k!2102) index!1321) lt!331344) (not (= (select (store (arr!19911 a!3186) i!1173 k!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!745702 (= lt!331343 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19911 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!745703 () Bool)

(assert (=> b!745703 (= e!416490 (bvsge mask!3328 #b00000000000000000000000000000000))))

(declare-fun lt!331346 () SeekEntryResult!7518)

(assert (=> b!745703 (= lt!331346 lt!331343)))

(declare-fun b!745704 () Bool)

(declare-fun e!416489 () Bool)

(assert (=> b!745704 (= e!416489 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19911 a!3186) j!159) a!3186 mask!3328) lt!331345))))

(declare-fun b!745705 () Bool)

(declare-fun res!502678 () Bool)

(assert (=> b!745705 (=> (not res!502678) (not e!416495))))

(assert (=> b!745705 (= res!502678 e!416489)))

(declare-fun c!81894 () Bool)

(assert (=> b!745705 (= c!81894 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!745706 () Bool)

(assert (=> b!745706 (= e!416494 e!416488)))

(declare-fun res!502683 () Bool)

(assert (=> b!745706 (=> (not res!502683) (not e!416488))))

(declare-fun lt!331339 () SeekEntryResult!7518)

(assert (=> b!745706 (= res!502683 (or (= lt!331339 (MissingZero!7518 i!1173)) (= lt!331339 (MissingVacant!7518 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41602 (_ BitVec 32)) SeekEntryResult!7518)

(assert (=> b!745706 (= lt!331339 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!745707 () Bool)

(declare-fun e!416491 () Bool)

(assert (=> b!745707 (= e!416491 (not e!416496))))

(declare-fun res!502682 () Bool)

(assert (=> b!745707 (=> res!502682 e!416496)))

(declare-fun lt!331341 () SeekEntryResult!7518)

(assert (=> b!745707 (= res!502682 (or (not (is-Intermediate!7518 lt!331341)) (bvslt x!1131 (x!63421 lt!331341)) (not (= x!1131 (x!63421 lt!331341))) (not (= index!1321 (index!32441 lt!331341)))))))

(assert (=> b!745707 e!416492))

(declare-fun res!502675 () Bool)

(assert (=> b!745707 (=> (not res!502675) (not e!416492))))

(assert (=> b!745707 (= res!502675 (= lt!331346 lt!331340))))

(assert (=> b!745707 (= lt!331340 (Found!7518 j!159))))

(assert (=> b!745707 (= lt!331346 (seekEntryOrOpen!0 (select (arr!19911 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!745707 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!25516 0))(
  ( (Unit!25517) )
))
(declare-fun lt!331338 () Unit!25516)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41602 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25516)

(assert (=> b!745707 (= lt!331338 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!745708 () Bool)

(declare-fun res!502672 () Bool)

(assert (=> b!745708 (=> (not res!502672) (not e!416494))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!745708 (= res!502672 (validKeyInArray!0 k!2102))))

(declare-fun b!745709 () Bool)

(assert (=> b!745709 (= e!416495 e!416491)))

(declare-fun res!502676 () Bool)

(assert (=> b!745709 (=> (not res!502676) (not e!416491))))

(declare-fun lt!331337 () SeekEntryResult!7518)

(assert (=> b!745709 (= res!502676 (= lt!331337 lt!331341))))

(declare-fun lt!331342 () array!41602)

(assert (=> b!745709 (= lt!331341 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!331344 lt!331342 mask!3328))))

(assert (=> b!745709 (= lt!331337 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!331344 mask!3328) lt!331344 lt!331342 mask!3328))))

(assert (=> b!745709 (= lt!331344 (select (store (arr!19911 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!745709 (= lt!331342 (array!41603 (store (arr!19911 a!3186) i!1173 k!2102) (size!20332 a!3186)))))

(declare-fun b!745710 () Bool)

(declare-fun res!502669 () Bool)

(assert (=> b!745710 (=> (not res!502669) (not e!416495))))

(assert (=> b!745710 (= res!502669 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19911 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!745711 () Bool)

(assert (=> b!745711 (= e!416489 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19911 a!3186) j!159) a!3186 mask!3328) (Found!7518 j!159)))))

(declare-fun b!745712 () Bool)

(declare-fun res!502677 () Bool)

(assert (=> b!745712 (=> (not res!502677) (not e!416494))))

(assert (=> b!745712 (= res!502677 (validKeyInArray!0 (select (arr!19911 a!3186) j!159)))))

(assert (= (and start!65476 res!502674) b!745696))

(assert (= (and b!745696 res!502681) b!745712))

(assert (= (and b!745712 res!502677) b!745708))

(assert (= (and b!745708 res!502672) b!745699))

(assert (= (and b!745699 res!502680) b!745706))

(assert (= (and b!745706 res!502683) b!745701))

(assert (= (and b!745701 res!502670) b!745700))

(assert (= (and b!745700 res!502668) b!745698))

(assert (= (and b!745698 res!502673) b!745695))

(assert (= (and b!745695 res!502679) b!745710))

(assert (= (and b!745710 res!502669) b!745705))

(assert (= (and b!745705 c!81894) b!745704))

(assert (= (and b!745705 (not c!81894)) b!745711))

(assert (= (and b!745705 res!502678) b!745709))

(assert (= (and b!745709 res!502676) b!745707))

(assert (= (and b!745707 res!502675) b!745697))

(assert (= (and b!745707 (not res!502682)) b!745702))

(assert (= (and b!745702 (not res!502671)) b!745703))

(declare-fun m!696121 () Bool)

(assert (=> b!745710 m!696121))

(declare-fun m!696123 () Bool)

(assert (=> b!745709 m!696123))

(declare-fun m!696125 () Bool)

(assert (=> b!745709 m!696125))

(declare-fun m!696127 () Bool)

(assert (=> b!745709 m!696127))

(declare-fun m!696129 () Bool)

(assert (=> b!745709 m!696129))

(declare-fun m!696131 () Bool)

(assert (=> b!745709 m!696131))

(assert (=> b!745709 m!696123))

(declare-fun m!696133 () Bool)

(assert (=> start!65476 m!696133))

(declare-fun m!696135 () Bool)

(assert (=> start!65476 m!696135))

(declare-fun m!696137 () Bool)

(assert (=> b!745700 m!696137))

(declare-fun m!696139 () Bool)

(assert (=> b!745701 m!696139))

(declare-fun m!696141 () Bool)

(assert (=> b!745706 m!696141))

(declare-fun m!696143 () Bool)

(assert (=> b!745707 m!696143))

(assert (=> b!745707 m!696143))

(declare-fun m!696145 () Bool)

(assert (=> b!745707 m!696145))

(declare-fun m!696147 () Bool)

(assert (=> b!745707 m!696147))

(declare-fun m!696149 () Bool)

(assert (=> b!745707 m!696149))

(assert (=> b!745702 m!696129))

(declare-fun m!696151 () Bool)

(assert (=> b!745702 m!696151))

(assert (=> b!745702 m!696143))

(assert (=> b!745702 m!696143))

(declare-fun m!696153 () Bool)

(assert (=> b!745702 m!696153))

(assert (=> b!745697 m!696143))

(assert (=> b!745697 m!696143))

(declare-fun m!696155 () Bool)

(assert (=> b!745697 m!696155))

(assert (=> b!745695 m!696143))

(assert (=> b!745695 m!696143))

(declare-fun m!696157 () Bool)

(assert (=> b!745695 m!696157))

(assert (=> b!745695 m!696157))

(assert (=> b!745695 m!696143))

(declare-fun m!696159 () Bool)

(assert (=> b!745695 m!696159))

(assert (=> b!745712 m!696143))

(assert (=> b!745712 m!696143))

(declare-fun m!696161 () Bool)

(assert (=> b!745712 m!696161))

(assert (=> b!745704 m!696143))

(assert (=> b!745704 m!696143))

(declare-fun m!696163 () Bool)

(assert (=> b!745704 m!696163))

(declare-fun m!696165 () Bool)

(assert (=> b!745699 m!696165))

(assert (=> b!745711 m!696143))

(assert (=> b!745711 m!696143))

(assert (=> b!745711 m!696153))

(declare-fun m!696167 () Bool)

(assert (=> b!745708 m!696167))

(push 1)

