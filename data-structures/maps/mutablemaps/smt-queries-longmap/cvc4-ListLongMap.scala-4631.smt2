; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64508 () Bool)

(assert start!64508)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!40979 0))(
  ( (array!40980 (arr!19607 (Array (_ BitVec 32) (_ BitVec 64))) (size!20028 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40979)

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7214 0))(
  ( (MissingZero!7214 (index!31223 (_ BitVec 32))) (Found!7214 (index!31224 (_ BitVec 32))) (Intermediate!7214 (undefined!8026 Bool) (index!31225 (_ BitVec 32)) (x!62241 (_ BitVec 32))) (Undefined!7214) (MissingVacant!7214 (index!31226 (_ BitVec 32))) )
))
(declare-fun lt!321351 () SeekEntryResult!7214)

(declare-fun b!725440 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun e!406266 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40979 (_ BitVec 32)) SeekEntryResult!7214)

(assert (=> b!725440 (= e!406266 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19607 a!3186) j!159) a!3186 mask!3328) lt!321351))))

(declare-fun b!725441 () Bool)

(declare-fun res!486678 () Bool)

(declare-fun e!406265 () Bool)

(assert (=> b!725441 (=> (not res!486678) (not e!406265))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!40979 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!725441 (= res!486678 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!725442 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun e!406269 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!725442 (= e!406269 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19607 a!3186) j!159) a!3186 mask!3328) (Found!7214 j!159)))))

(declare-fun res!486664 () Bool)

(assert (=> start!64508 (=> (not res!486664) (not e!406265))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64508 (= res!486664 (validMask!0 mask!3328))))

(assert (=> start!64508 e!406265))

(assert (=> start!64508 true))

(declare-fun array_inv!15381 (array!40979) Bool)

(assert (=> start!64508 (array_inv!15381 a!3186)))

(declare-fun b!725443 () Bool)

(declare-fun e!406267 () Bool)

(assert (=> b!725443 (= e!406267 e!406266)))

(declare-fun res!486669 () Bool)

(assert (=> b!725443 (=> (not res!486669) (not e!406266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40979 (_ BitVec 32)) SeekEntryResult!7214)

(assert (=> b!725443 (= res!486669 (= (seekEntryOrOpen!0 (select (arr!19607 a!3186) j!159) a!3186 mask!3328) lt!321351))))

(assert (=> b!725443 (= lt!321351 (Found!7214 j!159))))

(declare-fun b!725444 () Bool)

(declare-fun e!406268 () Bool)

(declare-fun e!406272 () Bool)

(assert (=> b!725444 (= e!406268 e!406272)))

(declare-fun res!486667 () Bool)

(assert (=> b!725444 (=> (not res!486667) (not e!406272))))

(declare-fun lt!321353 () (_ BitVec 64))

(declare-fun lt!321352 () array!40979)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40979 (_ BitVec 32)) SeekEntryResult!7214)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!725444 (= res!486667 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!321353 mask!3328) lt!321353 lt!321352 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!321353 lt!321352 mask!3328)))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!725444 (= lt!321353 (select (store (arr!19607 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!725444 (= lt!321352 (array!40980 (store (arr!19607 a!3186) i!1173 k!2102) (size!20028 a!3186)))))

(declare-fun b!725445 () Bool)

(declare-fun res!486674 () Bool)

(assert (=> b!725445 (=> (not res!486674) (not e!406265))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!725445 (= res!486674 (validKeyInArray!0 (select (arr!19607 a!3186) j!159)))))

(declare-fun b!725446 () Bool)

(declare-fun lt!321355 () SeekEntryResult!7214)

(assert (=> b!725446 (= e!406269 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19607 a!3186) j!159) a!3186 mask!3328) lt!321355))))

(declare-fun b!725447 () Bool)

(declare-fun e!406271 () Bool)

(assert (=> b!725447 (= e!406271 e!406268)))

(declare-fun res!486677 () Bool)

(assert (=> b!725447 (=> (not res!486677) (not e!406268))))

(assert (=> b!725447 (= res!486677 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19607 a!3186) j!159) mask!3328) (select (arr!19607 a!3186) j!159) a!3186 mask!3328) lt!321355))))

(assert (=> b!725447 (= lt!321355 (Intermediate!7214 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!725448 () Bool)

(declare-fun res!486666 () Bool)

(assert (=> b!725448 (=> (not res!486666) (not e!406265))))

(assert (=> b!725448 (= res!486666 (validKeyInArray!0 k!2102))))

(declare-fun b!725449 () Bool)

(declare-fun res!486673 () Bool)

(assert (=> b!725449 (=> (not res!486673) (not e!406265))))

(assert (=> b!725449 (= res!486673 (and (= (size!20028 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20028 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20028 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!725450 () Bool)

(declare-fun res!486675 () Bool)

(assert (=> b!725450 (=> (not res!486675) (not e!406268))))

(assert (=> b!725450 (= res!486675 e!406269)))

(declare-fun c!79761 () Bool)

(assert (=> b!725450 (= c!79761 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!725451 () Bool)

(declare-fun res!486665 () Bool)

(assert (=> b!725451 (=> (not res!486665) (not e!406271))))

(assert (=> b!725451 (= res!486665 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20028 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20028 a!3186))))))

(declare-fun b!725452 () Bool)

(declare-fun res!486676 () Bool)

(assert (=> b!725452 (=> (not res!486676) (not e!406271))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40979 (_ BitVec 32)) Bool)

(assert (=> b!725452 (= res!486676 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!725453 () Bool)

(assert (=> b!725453 (= e!406272 (not true))))

(assert (=> b!725453 e!406267))

(declare-fun res!486672 () Bool)

(assert (=> b!725453 (=> (not res!486672) (not e!406267))))

(assert (=> b!725453 (= res!486672 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24746 0))(
  ( (Unit!24747) )
))
(declare-fun lt!321354 () Unit!24746)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!40979 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24746)

(assert (=> b!725453 (= lt!321354 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!725454 () Bool)

(declare-fun res!486670 () Bool)

(assert (=> b!725454 (=> (not res!486670) (not e!406271))))

(declare-datatypes ((List!13662 0))(
  ( (Nil!13659) (Cons!13658 (h!14715 (_ BitVec 64)) (t!19985 List!13662)) )
))
(declare-fun arrayNoDuplicates!0 (array!40979 (_ BitVec 32) List!13662) Bool)

(assert (=> b!725454 (= res!486670 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13659))))

(declare-fun b!725455 () Bool)

(assert (=> b!725455 (= e!406265 e!406271)))

(declare-fun res!486671 () Bool)

(assert (=> b!725455 (=> (not res!486671) (not e!406271))))

(declare-fun lt!321356 () SeekEntryResult!7214)

(assert (=> b!725455 (= res!486671 (or (= lt!321356 (MissingZero!7214 i!1173)) (= lt!321356 (MissingVacant!7214 i!1173))))))

(assert (=> b!725455 (= lt!321356 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!725456 () Bool)

(declare-fun res!486668 () Bool)

(assert (=> b!725456 (=> (not res!486668) (not e!406268))))

(assert (=> b!725456 (= res!486668 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19607 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!64508 res!486664) b!725449))

(assert (= (and b!725449 res!486673) b!725445))

(assert (= (and b!725445 res!486674) b!725448))

(assert (= (and b!725448 res!486666) b!725441))

(assert (= (and b!725441 res!486678) b!725455))

(assert (= (and b!725455 res!486671) b!725452))

(assert (= (and b!725452 res!486676) b!725454))

(assert (= (and b!725454 res!486670) b!725451))

(assert (= (and b!725451 res!486665) b!725447))

(assert (= (and b!725447 res!486677) b!725456))

(assert (= (and b!725456 res!486668) b!725450))

(assert (= (and b!725450 c!79761) b!725446))

(assert (= (and b!725450 (not c!79761)) b!725442))

(assert (= (and b!725450 res!486675) b!725444))

(assert (= (and b!725444 res!486667) b!725453))

(assert (= (and b!725453 res!486672) b!725443))

(assert (= (and b!725443 res!486669) b!725440))

(declare-fun m!679689 () Bool)

(assert (=> b!725454 m!679689))

(declare-fun m!679691 () Bool)

(assert (=> b!725448 m!679691))

(declare-fun m!679693 () Bool)

(assert (=> b!725445 m!679693))

(assert (=> b!725445 m!679693))

(declare-fun m!679695 () Bool)

(assert (=> b!725445 m!679695))

(assert (=> b!725440 m!679693))

(assert (=> b!725440 m!679693))

(declare-fun m!679697 () Bool)

(assert (=> b!725440 m!679697))

(declare-fun m!679699 () Bool)

(assert (=> b!725452 m!679699))

(assert (=> b!725447 m!679693))

(assert (=> b!725447 m!679693))

(declare-fun m!679701 () Bool)

(assert (=> b!725447 m!679701))

(assert (=> b!725447 m!679701))

(assert (=> b!725447 m!679693))

(declare-fun m!679703 () Bool)

(assert (=> b!725447 m!679703))

(declare-fun m!679705 () Bool)

(assert (=> b!725455 m!679705))

(declare-fun m!679707 () Bool)

(assert (=> b!725441 m!679707))

(declare-fun m!679709 () Bool)

(assert (=> b!725453 m!679709))

(declare-fun m!679711 () Bool)

(assert (=> b!725453 m!679711))

(assert (=> b!725442 m!679693))

(assert (=> b!725442 m!679693))

(declare-fun m!679713 () Bool)

(assert (=> b!725442 m!679713))

(assert (=> b!725443 m!679693))

(assert (=> b!725443 m!679693))

(declare-fun m!679715 () Bool)

(assert (=> b!725443 m!679715))

(assert (=> b!725446 m!679693))

(assert (=> b!725446 m!679693))

(declare-fun m!679717 () Bool)

(assert (=> b!725446 m!679717))

(declare-fun m!679719 () Bool)

(assert (=> start!64508 m!679719))

(declare-fun m!679721 () Bool)

(assert (=> start!64508 m!679721))

(declare-fun m!679723 () Bool)

(assert (=> b!725456 m!679723))

(declare-fun m!679725 () Bool)

(assert (=> b!725444 m!679725))

(declare-fun m!679727 () Bool)

(assert (=> b!725444 m!679727))

(declare-fun m!679729 () Bool)

(assert (=> b!725444 m!679729))

(declare-fun m!679731 () Bool)

(assert (=> b!725444 m!679731))

(assert (=> b!725444 m!679725))

(declare-fun m!679733 () Bool)

(assert (=> b!725444 m!679733))

(push 1)

