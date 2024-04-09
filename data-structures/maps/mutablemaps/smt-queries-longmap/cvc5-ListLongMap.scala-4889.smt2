; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67396 () Bool)

(assert start!67396)

(declare-fun b!779482 () Bool)

(declare-fun e!433642 () Bool)

(declare-fun e!433646 () Bool)

(assert (=> b!779482 (= e!433642 e!433646)))

(declare-fun res!527590 () Bool)

(assert (=> b!779482 (=> (not res!527590) (not e!433646))))

(declare-datatypes ((array!42580 0))(
  ( (array!42581 (arr!20379 (Array (_ BitVec 32) (_ BitVec 64))) (size!20800 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42580)

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7986 0))(
  ( (MissingZero!7986 (index!34311 (_ BitVec 32))) (Found!7986 (index!34312 (_ BitVec 32))) (Intermediate!7986 (undefined!8798 Bool) (index!34313 (_ BitVec 32)) (x!65284 (_ BitVec 32))) (Undefined!7986) (MissingVacant!7986 (index!34314 (_ BitVec 32))) )
))
(declare-fun lt!347366 () SeekEntryResult!7986)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42580 (_ BitVec 32)) SeekEntryResult!7986)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!779482 (= res!527590 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20379 a!3186) j!159) mask!3328) (select (arr!20379 a!3186) j!159) a!3186 mask!3328) lt!347366))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!779482 (= lt!347366 (Intermediate!7986 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!779483 () Bool)

(declare-fun res!527587 () Bool)

(assert (=> b!779483 (=> (not res!527587) (not e!433646))))

(declare-fun e!433648 () Bool)

(assert (=> b!779483 (= res!527587 e!433648)))

(declare-fun c!86352 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!779483 (= c!86352 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!779484 () Bool)

(declare-fun res!527597 () Bool)

(declare-fun e!433645 () Bool)

(assert (=> b!779484 (=> (not res!527597) (not e!433645))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!779484 (= res!527597 (validKeyInArray!0 (select (arr!20379 a!3186) j!159)))))

(declare-fun b!779485 () Bool)

(declare-fun res!527592 () Bool)

(assert (=> b!779485 (=> (not res!527592) (not e!433646))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!779485 (= res!527592 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20379 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!779486 () Bool)

(assert (=> b!779486 (= e!433645 e!433642)))

(declare-fun res!527593 () Bool)

(assert (=> b!779486 (=> (not res!527593) (not e!433642))))

(declare-fun lt!347371 () SeekEntryResult!7986)

(assert (=> b!779486 (= res!527593 (or (= lt!347371 (MissingZero!7986 i!1173)) (= lt!347371 (MissingVacant!7986 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42580 (_ BitVec 32)) SeekEntryResult!7986)

(assert (=> b!779486 (= lt!347371 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!779487 () Bool)

(declare-fun e!433641 () Bool)

(assert (=> b!779487 (= e!433646 e!433641)))

(declare-fun res!527591 () Bool)

(assert (=> b!779487 (=> (not res!527591) (not e!433641))))

(declare-fun lt!347369 () SeekEntryResult!7986)

(declare-fun lt!347374 () SeekEntryResult!7986)

(assert (=> b!779487 (= res!527591 (= lt!347369 lt!347374))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!347365 () (_ BitVec 64))

(declare-fun lt!347370 () array!42580)

(assert (=> b!779487 (= lt!347374 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!347365 lt!347370 mask!3328))))

(assert (=> b!779487 (= lt!347369 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!347365 mask!3328) lt!347365 lt!347370 mask!3328))))

(assert (=> b!779487 (= lt!347365 (select (store (arr!20379 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!779487 (= lt!347370 (array!42581 (store (arr!20379 a!3186) i!1173 k!2102) (size!20800 a!3186)))))

(declare-fun b!779488 () Bool)

(declare-fun e!433643 () Bool)

(declare-fun e!433647 () Bool)

(assert (=> b!779488 (= e!433643 e!433647)))

(declare-fun res!527586 () Bool)

(assert (=> b!779488 (=> res!527586 e!433647)))

(declare-fun lt!347367 () SeekEntryResult!7986)

(declare-fun lt!347373 () SeekEntryResult!7986)

(assert (=> b!779488 (= res!527586 (or (not (= lt!347367 lt!347373)) (= (select (store (arr!20379 a!3186) i!1173 k!2102) index!1321) lt!347365) (not (= (select (store (arr!20379 a!3186) i!1173 k!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42580 (_ BitVec 32)) SeekEntryResult!7986)

(assert (=> b!779488 (= lt!347367 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20379 a!3186) j!159) a!3186 mask!3328))))

(declare-fun e!433644 () Bool)

(declare-fun b!779489 () Bool)

(assert (=> b!779489 (= e!433644 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20379 a!3186) j!159) a!3186 mask!3328) lt!347373))))

(declare-fun b!779490 () Bool)

(declare-fun res!527589 () Bool)

(assert (=> b!779490 (=> (not res!527589) (not e!433642))))

(declare-datatypes ((List!14434 0))(
  ( (Nil!14431) (Cons!14430 (h!15544 (_ BitVec 64)) (t!20757 List!14434)) )
))
(declare-fun arrayNoDuplicates!0 (array!42580 (_ BitVec 32) List!14434) Bool)

(assert (=> b!779490 (= res!527589 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14431))))

(declare-fun b!779491 () Bool)

(declare-fun res!527585 () Bool)

(assert (=> b!779491 (=> (not res!527585) (not e!433645))))

(assert (=> b!779491 (= res!527585 (validKeyInArray!0 k!2102))))

(declare-fun b!779492 () Bool)

(declare-fun res!527588 () Bool)

(assert (=> b!779492 (=> (not res!527588) (not e!433642))))

(assert (=> b!779492 (= res!527588 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20800 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20800 a!3186))))))

(declare-fun res!527598 () Bool)

(assert (=> start!67396 (=> (not res!527598) (not e!433645))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67396 (= res!527598 (validMask!0 mask!3328))))

(assert (=> start!67396 e!433645))

(assert (=> start!67396 true))

(declare-fun array_inv!16153 (array!42580) Bool)

(assert (=> start!67396 (array_inv!16153 a!3186)))

(declare-fun b!779493 () Bool)

(assert (=> b!779493 (= e!433648 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20379 a!3186) j!159) a!3186 mask!3328) lt!347366))))

(declare-fun b!779494 () Bool)

(declare-fun res!527596 () Bool)

(assert (=> b!779494 (=> (not res!527596) (not e!433645))))

(declare-fun arrayContainsKey!0 (array!42580 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!779494 (= res!527596 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!779495 () Bool)

(declare-fun res!527594 () Bool)

(assert (=> b!779495 (=> (not res!527594) (not e!433642))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42580 (_ BitVec 32)) Bool)

(assert (=> b!779495 (= res!527594 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!779496 () Bool)

(declare-fun res!527584 () Bool)

(assert (=> b!779496 (=> (not res!527584) (not e!433645))))

(assert (=> b!779496 (= res!527584 (and (= (size!20800 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20800 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20800 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!779497 () Bool)

(assert (=> b!779497 (= e!433647 (= lt!347367 (MissingVacant!7986 resIntermediateIndex!5)))))

(declare-fun lt!347372 () SeekEntryResult!7986)

(assert (=> b!779497 (= lt!347372 lt!347367)))

(declare-fun b!779498 () Bool)

(assert (=> b!779498 (= e!433641 (not e!433643))))

(declare-fun res!527595 () Bool)

(assert (=> b!779498 (=> res!527595 e!433643)))

(assert (=> b!779498 (= res!527595 (or (not (is-Intermediate!7986 lt!347374)) (bvslt x!1131 (x!65284 lt!347374)) (not (= x!1131 (x!65284 lt!347374))) (not (= index!1321 (index!34313 lt!347374)))))))

(assert (=> b!779498 e!433644))

(declare-fun res!527599 () Bool)

(assert (=> b!779498 (=> (not res!527599) (not e!433644))))

(assert (=> b!779498 (= res!527599 (= lt!347372 lt!347373))))

(assert (=> b!779498 (= lt!347373 (Found!7986 j!159))))

(assert (=> b!779498 (= lt!347372 (seekEntryOrOpen!0 (select (arr!20379 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!779498 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!26866 0))(
  ( (Unit!26867) )
))
(declare-fun lt!347368 () Unit!26866)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42580 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26866)

(assert (=> b!779498 (= lt!347368 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!779499 () Bool)

(assert (=> b!779499 (= e!433648 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20379 a!3186) j!159) a!3186 mask!3328) (Found!7986 j!159)))))

(assert (= (and start!67396 res!527598) b!779496))

(assert (= (and b!779496 res!527584) b!779484))

(assert (= (and b!779484 res!527597) b!779491))

(assert (= (and b!779491 res!527585) b!779494))

(assert (= (and b!779494 res!527596) b!779486))

(assert (= (and b!779486 res!527593) b!779495))

(assert (= (and b!779495 res!527594) b!779490))

(assert (= (and b!779490 res!527589) b!779492))

(assert (= (and b!779492 res!527588) b!779482))

(assert (= (and b!779482 res!527590) b!779485))

(assert (= (and b!779485 res!527592) b!779483))

(assert (= (and b!779483 c!86352) b!779493))

(assert (= (and b!779483 (not c!86352)) b!779499))

(assert (= (and b!779483 res!527587) b!779487))

(assert (= (and b!779487 res!527591) b!779498))

(assert (= (and b!779498 res!527599) b!779489))

(assert (= (and b!779498 (not res!527595)) b!779488))

(assert (= (and b!779488 (not res!527586)) b!779497))

(declare-fun m!723055 () Bool)

(assert (=> b!779499 m!723055))

(assert (=> b!779499 m!723055))

(declare-fun m!723057 () Bool)

(assert (=> b!779499 m!723057))

(assert (=> b!779489 m!723055))

(assert (=> b!779489 m!723055))

(declare-fun m!723059 () Bool)

(assert (=> b!779489 m!723059))

(declare-fun m!723061 () Bool)

(assert (=> b!779490 m!723061))

(declare-fun m!723063 () Bool)

(assert (=> start!67396 m!723063))

(declare-fun m!723065 () Bool)

(assert (=> start!67396 m!723065))

(assert (=> b!779498 m!723055))

(assert (=> b!779498 m!723055))

(declare-fun m!723067 () Bool)

(assert (=> b!779498 m!723067))

(declare-fun m!723069 () Bool)

(assert (=> b!779498 m!723069))

(declare-fun m!723071 () Bool)

(assert (=> b!779498 m!723071))

(declare-fun m!723073 () Bool)

(assert (=> b!779491 m!723073))

(declare-fun m!723075 () Bool)

(assert (=> b!779485 m!723075))

(assert (=> b!779482 m!723055))

(assert (=> b!779482 m!723055))

(declare-fun m!723077 () Bool)

(assert (=> b!779482 m!723077))

(assert (=> b!779482 m!723077))

(assert (=> b!779482 m!723055))

(declare-fun m!723079 () Bool)

(assert (=> b!779482 m!723079))

(declare-fun m!723081 () Bool)

(assert (=> b!779495 m!723081))

(assert (=> b!779484 m!723055))

(assert (=> b!779484 m!723055))

(declare-fun m!723083 () Bool)

(assert (=> b!779484 m!723083))

(declare-fun m!723085 () Bool)

(assert (=> b!779487 m!723085))

(declare-fun m!723087 () Bool)

(assert (=> b!779487 m!723087))

(declare-fun m!723089 () Bool)

(assert (=> b!779487 m!723089))

(assert (=> b!779487 m!723085))

(declare-fun m!723091 () Bool)

(assert (=> b!779487 m!723091))

(declare-fun m!723093 () Bool)

(assert (=> b!779487 m!723093))

(assert (=> b!779493 m!723055))

(assert (=> b!779493 m!723055))

(declare-fun m!723095 () Bool)

(assert (=> b!779493 m!723095))

(assert (=> b!779488 m!723089))

(declare-fun m!723097 () Bool)

(assert (=> b!779488 m!723097))

(assert (=> b!779488 m!723055))

(assert (=> b!779488 m!723055))

(assert (=> b!779488 m!723057))

(declare-fun m!723099 () Bool)

(assert (=> b!779494 m!723099))

(declare-fun m!723101 () Bool)

(assert (=> b!779486 m!723101))

(push 1)

(assert (not start!67396))

(assert (not b!779494))

(assert (not b!779486))

(assert (not b!779484))

(assert (not b!779490))

(assert (not b!779487))

(assert (not b!779488))

(assert (not b!779489))

(assert (not b!779499))

(assert (not b!779482))

(assert (not b!779493))

(assert (not b!779498))

(assert (not b!779495))

(assert (not b!779491))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!779657 () Bool)

(declare-fun e!433732 () SeekEntryResult!7986)

(declare-fun e!433731 () SeekEntryResult!7986)

(assert (=> b!779657 (= e!433732 e!433731)))

(declare-fun lt!347463 () (_ BitVec 64))

(declare-fun c!86380 () Bool)

(assert (=> b!779657 (= c!86380 (= lt!347463 (select (arr!20379 a!3186) j!159)))))

(declare-fun b!779658 () Bool)

(declare-fun c!86382 () Bool)

(assert (=> b!779658 (= c!86382 (= lt!347463 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!433730 () SeekEntryResult!7986)

(assert (=> b!779658 (= e!433731 e!433730)))

(declare-fun b!779659 () Bool)

(assert (=> b!779659 (= e!433732 Undefined!7986)))

(declare-fun b!779660 () Bool)

(assert (=> b!779660 (= e!433731 (Found!7986 index!1321))))

(declare-fun b!779661 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!779661 (= e!433730 (seekKeyOrZeroReturnVacant!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) resIntermediateIndex!5 (select (arr!20379 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!779656 () Bool)

(assert (=> b!779656 (= e!433730 (MissingVacant!7986 resIntermediateIndex!5))))

(declare-fun lt!347464 () SeekEntryResult!7986)

(declare-fun d!102319 () Bool)

(assert (=> d!102319 (and (or (is-Undefined!7986 lt!347464) (not (is-Found!7986 lt!347464)) (and (bvsge (index!34312 lt!347464) #b00000000000000000000000000000000) (bvslt (index!34312 lt!347464) (size!20800 a!3186)))) (or (is-Undefined!7986 lt!347464) (is-Found!7986 lt!347464) (not (is-MissingVacant!7986 lt!347464)) (not (= (index!34314 lt!347464) resIntermediateIndex!5)) (and (bvsge (index!34314 lt!347464) #b00000000000000000000000000000000) (bvslt (index!34314 lt!347464) (size!20800 a!3186)))) (or (is-Undefined!7986 lt!347464) (ite (is-Found!7986 lt!347464) (= (select (arr!20379 a!3186) (index!34312 lt!347464)) (select (arr!20379 a!3186) j!159)) (and (is-MissingVacant!7986 lt!347464) (= (index!34314 lt!347464) resIntermediateIndex!5) (= (select (arr!20379 a!3186) (index!34314 lt!347464)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!102319 (= lt!347464 e!433732)))

(declare-fun c!86381 () Bool)

(assert (=> d!102319 (= c!86381 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!102319 (= lt!347463 (select (arr!20379 a!3186) index!1321))))

(assert (=> d!102319 (validMask!0 mask!3328)))

(assert (=> d!102319 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20379 a!3186) j!159) a!3186 mask!3328) lt!347464)))

(assert (= (and d!102319 c!86381) b!779659))

(assert (= (and d!102319 (not c!86381)) b!779657))

(assert (= (and b!779657 c!86380) b!779660))

(assert (= (and b!779657 (not c!86380)) b!779658))

(assert (= (and b!779658 c!86382) b!779656))

(assert (= (and b!779658 (not c!86382)) b!779661))

(declare-fun m!723231 () Bool)

(assert (=> b!779661 m!723231))

(assert (=> b!779661 m!723231))

(assert (=> b!779661 m!723055))

(declare-fun m!723233 () Bool)

(assert (=> b!779661 m!723233))

(declare-fun m!723235 () Bool)

(assert (=> d!102319 m!723235))

(declare-fun m!723237 () Bool)

(assert (=> d!102319 m!723237))

(declare-fun m!723239 () Bool)

(assert (=> d!102319 m!723239))

(assert (=> d!102319 m!723063))

(assert (=> b!779499 d!102319))

(assert (=> b!779488 d!102319))

(declare-fun b!779734 () Bool)

(declare-fun lt!347487 () SeekEntryResult!7986)

(declare-fun e!433776 () SeekEntryResult!7986)

(assert (=> b!779734 (= e!433776 (seekKeyOrZeroReturnVacant!0 (x!65284 lt!347487) (index!34313 lt!347487) (index!34313 lt!347487) (select (arr!20379 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!779735 () Bool)

(declare-fun e!433775 () SeekEntryResult!7986)

(assert (=> b!779735 (= e!433775 (Found!7986 (index!34313 lt!347487)))))

(declare-fun b!779736 () Bool)

(assert (=> b!779736 (= e!433776 (MissingZero!7986 (index!34313 lt!347487)))))

(declare-fun b!779737 () Bool)

(declare-fun c!86411 () Bool)

(declare-fun lt!347488 () (_ BitVec 64))

(assert (=> b!779737 (= c!86411 (= lt!347488 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!779737 (= e!433775 e!433776)))

(declare-fun b!779738 () Bool)

(declare-fun e!433777 () SeekEntryResult!7986)

(assert (=> b!779738 (= e!433777 e!433775)))

(assert (=> b!779738 (= lt!347488 (select (arr!20379 a!3186) (index!34313 lt!347487)))))

(declare-fun c!86412 () Bool)

(assert (=> b!779738 (= c!86412 (= lt!347488 (select (arr!20379 a!3186) j!159)))))

(declare-fun d!102333 () Bool)

(declare-fun lt!347486 () SeekEntryResult!7986)

(assert (=> d!102333 (and (or (is-Undefined!7986 lt!347486) (not (is-Found!7986 lt!347486)) (and (bvsge (index!34312 lt!347486) #b00000000000000000000000000000000) (bvslt (index!34312 lt!347486) (size!20800 a!3186)))) (or (is-Undefined!7986 lt!347486) (is-Found!7986 lt!347486) (not (is-MissingZero!7986 lt!347486)) (and (bvsge (index!34311 lt!347486) #b00000000000000000000000000000000) (bvslt (index!34311 lt!347486) (size!20800 a!3186)))) (or (is-Undefined!7986 lt!347486) (is-Found!7986 lt!347486) (is-MissingZero!7986 lt!347486) (not (is-MissingVacant!7986 lt!347486)) (and (bvsge (index!34314 lt!347486) #b00000000000000000000000000000000) (bvslt (index!34314 lt!347486) (size!20800 a!3186)))) (or (is-Undefined!7986 lt!347486) (ite (is-Found!7986 lt!347486) (= (select (arr!20379 a!3186) (index!34312 lt!347486)) (select (arr!20379 a!3186) j!159)) (ite (is-MissingZero!7986 lt!347486) (= (select (arr!20379 a!3186) (index!34311 lt!347486)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!7986 lt!347486) (= (select (arr!20379 a!3186) (index!34314 lt!347486)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!102333 (= lt!347486 e!433777)))

(declare-fun c!86410 () Bool)

(assert (=> d!102333 (= c!86410 (and (is-Intermediate!7986 lt!347487) (undefined!8798 lt!347487)))))

(assert (=> d!102333 (= lt!347487 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20379 a!3186) j!159) mask!3328) (select (arr!20379 a!3186) j!159) a!3186 mask!3328))))

(assert (=> d!102333 (validMask!0 mask!3328)))

(assert (=> d!102333 (= (seekEntryOrOpen!0 (select (arr!20379 a!3186) j!159) a!3186 mask!3328) lt!347486)))

(declare-fun b!779739 () Bool)

(assert (=> b!779739 (= e!433777 Undefined!7986)))

(assert (= (and d!102333 c!86410) b!779739))

(assert (= (and d!102333 (not c!86410)) b!779738))

(assert (= (and b!779738 c!86412) b!779735))

(assert (= (and b!779738 (not c!86412)) b!779737))

(assert (= (and b!779737 c!86411) b!779736))

(assert (= (and b!779737 (not c!86411)) b!779734))

(assert (=> b!779734 m!723055))

(declare-fun m!723267 () Bool)

(assert (=> b!779734 m!723267))

(declare-fun m!723271 () Bool)

(assert (=> b!779738 m!723271))

(assert (=> d!102333 m!723055))

(assert (=> d!102333 m!723077))

(declare-fun m!723275 () Bool)

(assert (=> d!102333 m!723275))

(declare-fun m!723277 () Bool)

(assert (=> d!102333 m!723277))

(assert (=> d!102333 m!723063))

(assert (=> d!102333 m!723077))

(assert (=> d!102333 m!723055))

(assert (=> d!102333 m!723079))

(declare-fun m!723279 () Bool)

(assert (=> d!102333 m!723279))

(assert (=> b!779498 d!102333))

(declare-fun b!779763 () Bool)

(declare-fun e!433797 () Bool)

(declare-fun call!35223 () Bool)

(assert (=> b!779763 (= e!433797 call!35223)))

(declare-fun b!779764 () Bool)

(declare-fun e!433795 () Bool)

(declare-fun e!433796 () Bool)

(assert (=> b!779764 (= e!433795 e!433796)))

(declare-fun c!86418 () Bool)

(assert (=> b!779764 (= c!86418 (validKeyInArray!0 (select (arr!20379 a!3186) j!159)))))

(declare-fun d!102341 () Bool)

(declare-fun res!527734 () Bool)

(assert (=> d!102341 (=> res!527734 e!433795)))

(assert (=> d!102341 (= res!527734 (bvsge j!159 (size!20800 a!3186)))))

(assert (=> d!102341 (= (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328) e!433795)))

(declare-fun bm!35220 () Bool)

(assert (=> bm!35220 (= call!35223 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!159 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun b!779765 () Bool)

(assert (=> b!779765 (= e!433796 call!35223)))

(declare-fun b!779766 () Bool)

(assert (=> b!779766 (= e!433796 e!433797)))

(declare-fun lt!347505 () (_ BitVec 64))

(assert (=> b!779766 (= lt!347505 (select (arr!20379 a!3186) j!159))))

(declare-fun lt!347503 () Unit!26866)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!42580 (_ BitVec 64) (_ BitVec 32)) Unit!26866)

(assert (=> b!779766 (= lt!347503 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!347505 j!159))))

(assert (=> b!779766 (arrayContainsKey!0 a!3186 lt!347505 #b00000000000000000000000000000000)))

(declare-fun lt!347504 () Unit!26866)

(assert (=> b!779766 (= lt!347504 lt!347503)))

(declare-fun res!527735 () Bool)

(assert (=> b!779766 (= res!527735 (= (seekEntryOrOpen!0 (select (arr!20379 a!3186) j!159) a!3186 mask!3328) (Found!7986 j!159)))))

(assert (=> b!779766 (=> (not res!527735) (not e!433797))))

(assert (= (and d!102341 (not res!527734)) b!779764))

(assert (= (and b!779764 c!86418) b!779766))

(assert (= (and b!779764 (not c!86418)) b!779765))

(assert (= (and b!779766 res!527735) b!779763))

(assert (= (or b!779763 b!779765) bm!35220))

(assert (=> b!779764 m!723055))

(assert (=> b!779764 m!723055))

(assert (=> b!779764 m!723083))

(declare-fun m!723293 () Bool)

(assert (=> bm!35220 m!723293))

(assert (=> b!779766 m!723055))

(declare-fun m!723295 () Bool)

(assert (=> b!779766 m!723295))

(declare-fun m!723297 () Bool)

(assert (=> b!779766 m!723297))

(assert (=> b!779766 m!723055))

(assert (=> b!779766 m!723067))

(assert (=> b!779498 d!102341))

(declare-fun d!102349 () Bool)

(assert (=> d!102349 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!347516 () Unit!26866)

(declare-fun choose!38 (array!42580 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26866)

(assert (=> d!102349 (= lt!347516 (choose!38 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (=> d!102349 (validMask!0 mask!3328)))

(assert (=> d!102349 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159) lt!347516)))

(declare-fun bs!21707 () Bool)

(assert (= bs!21707 d!102349))

(assert (=> bs!21707 m!723069))

(declare-fun m!723307 () Bool)

(assert (=> bs!21707 m!723307))

(assert (=> bs!21707 m!723063))

(assert (=> b!779498 d!102349))

(declare-fun b!779863 () Bool)

(declare-fun lt!347540 () SeekEntryResult!7986)

(assert (=> b!779863 (and (bvsge (index!34313 lt!347540) #b00000000000000000000000000000000) (bvslt (index!34313 lt!347540) (size!20800 lt!347370)))))

(declare-fun res!527761 () Bool)

(assert (=> b!779863 (= res!527761 (= (select (arr!20379 lt!347370) (index!34313 lt!347540)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!433858 () Bool)

(assert (=> b!779863 (=> res!527761 e!433858)))

(declare-fun b!779864 () Bool)

(assert (=> b!779864 (and (bvsge (index!34313 lt!347540) #b00000000000000000000000000000000) (bvslt (index!34313 lt!347540) (size!20800 lt!347370)))))

(declare-fun res!527760 () Bool)

(assert (=> b!779864 (= res!527760 (= (select (arr!20379 lt!347370) (index!34313 lt!347540)) lt!347365))))

(assert (=> b!779864 (=> res!527760 e!433858)))

(declare-fun e!433859 () Bool)

(assert (=> b!779864 (= e!433859 e!433858)))

(declare-fun b!779865 () Bool)

(assert (=> b!779865 (and (bvsge (index!34313 lt!347540) #b00000000000000000000000000000000) (bvslt (index!34313 lt!347540) (size!20800 lt!347370)))))

(assert (=> b!779865 (= e!433858 (= (select (arr!20379 lt!347370) (index!34313 lt!347540)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!779866 () Bool)

(declare-fun e!433857 () SeekEntryResult!7986)

(declare-fun e!433856 () SeekEntryResult!7986)

(assert (=> b!779866 (= e!433857 e!433856)))

(declare-fun c!86456 () Bool)

(declare-fun lt!347541 () (_ BitVec 64))

(assert (=> b!779866 (= c!86456 (or (= lt!347541 lt!347365) (= (bvadd lt!347541 lt!347541) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!779867 () Bool)

(declare-fun e!433855 () Bool)

(assert (=> b!779867 (= e!433855 (bvsge (x!65284 lt!347540) #b01111111111111111111111111111110))))

(declare-fun b!779868 () Bool)

(assert (=> b!779868 (= e!433855 e!433859)))

(declare-fun res!527762 () Bool)

(assert (=> b!779868 (= res!527762 (and (is-Intermediate!7986 lt!347540) (not (undefined!8798 lt!347540)) (bvslt (x!65284 lt!347540) #b01111111111111111111111111111110) (bvsge (x!65284 lt!347540) #b00000000000000000000000000000000) (bvsge (x!65284 lt!347540) x!1131)))))

(assert (=> b!779868 (=> (not res!527762) (not e!433859))))

(declare-fun d!102355 () Bool)

(assert (=> d!102355 e!433855))

(declare-fun c!86457 () Bool)

(assert (=> d!102355 (= c!86457 (and (is-Intermediate!7986 lt!347540) (undefined!8798 lt!347540)))))

(assert (=> d!102355 (= lt!347540 e!433857)))

(declare-fun c!86455 () Bool)

(assert (=> d!102355 (= c!86455 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!102355 (= lt!347541 (select (arr!20379 lt!347370) index!1321))))

(assert (=> d!102355 (validMask!0 mask!3328)))

(assert (=> d!102355 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!347365 lt!347370 mask!3328) lt!347540)))

(declare-fun b!779869 () Bool)

(assert (=> b!779869 (= e!433856 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) lt!347365 lt!347370 mask!3328))))

(declare-fun b!779870 () Bool)

(assert (=> b!779870 (= e!433856 (Intermediate!7986 false index!1321 x!1131))))

(declare-fun b!779871 () Bool)

(assert (=> b!779871 (= e!433857 (Intermediate!7986 true index!1321 x!1131))))

(assert (= (and d!102355 c!86455) b!779871))

(assert (= (and d!102355 (not c!86455)) b!779866))

(assert (= (and b!779866 c!86456) b!779870))

(assert (= (and b!779866 (not c!86456)) b!779869))

(assert (= (and d!102355 c!86457) b!779867))

(assert (= (and d!102355 (not c!86457)) b!779868))

(assert (= (and b!779868 res!527762) b!779864))

(assert (= (and b!779864 (not res!527760)) b!779863))

(assert (= (and b!779863 (not res!527761)) b!779865))

(declare-fun m!723349 () Bool)

(assert (=> b!779864 m!723349))

(assert (=> b!779863 m!723349))

(assert (=> b!779865 m!723349))

(assert (=> b!779869 m!723231))

(assert (=> b!779869 m!723231))

(declare-fun m!723353 () Bool)

(assert (=> b!779869 m!723353))

(declare-fun m!723355 () Bool)

(assert (=> d!102355 m!723355))

(assert (=> d!102355 m!723063))

(assert (=> b!779487 d!102355))

(declare-fun b!779876 () Bool)

(declare-fun lt!347545 () SeekEntryResult!7986)

(assert (=> b!779876 (and (bvsge (index!34313 lt!347545) #b00000000000000000000000000000000) (bvslt (index!34313 lt!347545) (size!20800 lt!347370)))))

(declare-fun res!527766 () Bool)

(assert (=> b!779876 (= res!527766 (= (select (arr!20379 lt!347370) (index!34313 lt!347545)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!433866 () Bool)

(assert (=> b!779876 (=> res!527766 e!433866)))

(declare-fun b!779877 () Bool)

(assert (=> b!779877 (and (bvsge (index!34313 lt!347545) #b00000000000000000000000000000000) (bvslt (index!34313 lt!347545) (size!20800 lt!347370)))))

(declare-fun res!527765 () Bool)

(assert (=> b!779877 (= res!527765 (= (select (arr!20379 lt!347370) (index!34313 lt!347545)) lt!347365))))

(assert (=> b!779877 (=> res!527765 e!433866)))

(declare-fun e!433867 () Bool)

(assert (=> b!779877 (= e!433867 e!433866)))

(declare-fun b!779878 () Bool)

(assert (=> b!779878 (and (bvsge (index!34313 lt!347545) #b00000000000000000000000000000000) (bvslt (index!34313 lt!347545) (size!20800 lt!347370)))))

(assert (=> b!779878 (= e!433866 (= (select (arr!20379 lt!347370) (index!34313 lt!347545)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!779879 () Bool)

(declare-fun e!433865 () SeekEntryResult!7986)

(declare-fun e!433864 () SeekEntryResult!7986)

(assert (=> b!779879 (= e!433865 e!433864)))

(declare-fun c!86460 () Bool)

(declare-fun lt!347546 () (_ BitVec 64))

(assert (=> b!779879 (= c!86460 (or (= lt!347546 lt!347365) (= (bvadd lt!347546 lt!347546) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!779880 () Bool)

(declare-fun e!433863 () Bool)

(assert (=> b!779880 (= e!433863 (bvsge (x!65284 lt!347545) #b01111111111111111111111111111110))))

(declare-fun b!779881 () Bool)

(assert (=> b!779881 (= e!433863 e!433867)))

(declare-fun res!527767 () Bool)

(assert (=> b!779881 (= res!527767 (and (is-Intermediate!7986 lt!347545) (not (undefined!8798 lt!347545)) (bvslt (x!65284 lt!347545) #b01111111111111111111111111111110) (bvsge (x!65284 lt!347545) #b00000000000000000000000000000000) (bvsge (x!65284 lt!347545) #b00000000000000000000000000000000)))))

(assert (=> b!779881 (=> (not res!527767) (not e!433867))))

(declare-fun d!102367 () Bool)

(assert (=> d!102367 e!433863))

(declare-fun c!86461 () Bool)

(assert (=> d!102367 (= c!86461 (and (is-Intermediate!7986 lt!347545) (undefined!8798 lt!347545)))))

(assert (=> d!102367 (= lt!347545 e!433865)))

(declare-fun c!86459 () Bool)

(assert (=> d!102367 (= c!86459 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!102367 (= lt!347546 (select (arr!20379 lt!347370) (toIndex!0 lt!347365 mask!3328)))))

(assert (=> d!102367 (validMask!0 mask!3328)))

(assert (=> d!102367 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!347365 mask!3328) lt!347365 lt!347370 mask!3328) lt!347545)))

(declare-fun b!779882 () Bool)

(assert (=> b!779882 (= e!433864 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!347365 mask!3328) #b00000000000000000000000000000000 mask!3328) lt!347365 lt!347370 mask!3328))))

(declare-fun b!779883 () Bool)

(assert (=> b!779883 (= e!433864 (Intermediate!7986 false (toIndex!0 lt!347365 mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!779884 () Bool)

(assert (=> b!779884 (= e!433865 (Intermediate!7986 true (toIndex!0 lt!347365 mask!3328) #b00000000000000000000000000000000))))

(assert (= (and d!102367 c!86459) b!779884))

(assert (= (and d!102367 (not c!86459)) b!779879))

(assert (= (and b!779879 c!86460) b!779883))

(assert (= (and b!779879 (not c!86460)) b!779882))

(assert (= (and d!102367 c!86461) b!779880))

(assert (= (and d!102367 (not c!86461)) b!779881))

(assert (= (and b!779881 res!527767) b!779877))

(assert (= (and b!779877 (not res!527765)) b!779876))

(assert (= (and b!779876 (not res!527766)) b!779878))

(declare-fun m!723365 () Bool)

(assert (=> b!779877 m!723365))

(assert (=> b!779876 m!723365))

(assert (=> b!779878 m!723365))

(assert (=> b!779882 m!723085))

(declare-fun m!723373 () Bool)

(assert (=> b!779882 m!723373))

(assert (=> b!779882 m!723373))

(declare-fun m!723375 () Bool)

(assert (=> b!779882 m!723375))

(assert (=> d!102367 m!723085))

(declare-fun m!723377 () Bool)

(assert (=> d!102367 m!723377))

(assert (=> d!102367 m!723063))

(assert (=> b!779487 d!102367))

(declare-fun d!102373 () Bool)

(declare-fun lt!347560 () (_ BitVec 32))

(declare-fun lt!347559 () (_ BitVec 32))

(assert (=> d!102373 (= lt!347560 (bvmul (bvxor lt!347559 (bvlshr lt!347559 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!102373 (= lt!347559 ((_ extract 31 0) (bvand (bvxor lt!347365 (bvlshr lt!347365 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!102373 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!527771 (let ((h!15548 ((_ extract 31 0) (bvand (bvxor lt!347365 (bvlshr lt!347365 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!65293 (bvmul (bvxor h!15548 (bvlshr h!15548 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!65293 (bvlshr x!65293 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!527771 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!527771 #b00000000000000000000000000000000))))))

(assert (=> d!102373 (= (toIndex!0 lt!347365 mask!3328) (bvand (bvxor lt!347560 (bvlshr lt!347560 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!779487 d!102373))

(declare-fun d!102377 () Bool)

(assert (=> d!102377 (= (validMask!0 mask!3328) (and (or (= mask!3328 #b00000000000000000000000000000111) (= mask!3328 #b00000000000000000000000000001111) (= mask!3328 #b00000000000000000000000000011111) (= mask!3328 #b00000000000000000000000000111111) (= mask!3328 #b00000000000000000000000001111111) (= mask!3328 #b00000000000000000000000011111111) (= mask!3328 #b00000000000000000000000111111111) (= mask!3328 #b00000000000000000000001111111111) (= mask!3328 #b00000000000000000000011111111111) (= mask!3328 #b00000000000000000000111111111111) (= mask!3328 #b00000000000000000001111111111111) (= mask!3328 #b00000000000000000011111111111111) (= mask!3328 #b00000000000000000111111111111111) (= mask!3328 #b00000000000000001111111111111111) (= mask!3328 #b00000000000000011111111111111111) (= mask!3328 #b00000000000000111111111111111111) (= mask!3328 #b00000000000001111111111111111111) (= mask!3328 #b00000000000011111111111111111111) (= mask!3328 #b00000000000111111111111111111111) (= mask!3328 #b00000000001111111111111111111111) (= mask!3328 #b00000000011111111111111111111111) (= mask!3328 #b00000000111111111111111111111111) (= mask!3328 #b00000001111111111111111111111111) (= mask!3328 #b00000011111111111111111111111111) (= mask!3328 #b00000111111111111111111111111111) (= mask!3328 #b00001111111111111111111111111111) (= mask!3328 #b00011111111111111111111111111111) (= mask!3328 #b00111111111111111111111111111111)) (bvsle mask!3328 #b00111111111111111111111111111111)))))

(assert (=> start!67396 d!102377))

(declare-fun d!102381 () Bool)

(assert (=> d!102381 (= (array_inv!16153 a!3186) (bvsge (size!20800 a!3186) #b00000000000000000000000000000000))))

(assert (=> start!67396 d!102381))

(declare-fun e!433892 () SeekEntryResult!7986)

(declare-fun lt!347568 () SeekEntryResult!7986)

(declare-fun b!779927 () Bool)

(assert (=> b!779927 (= e!433892 (seekKeyOrZeroReturnVacant!0 (x!65284 lt!347568) (index!34313 lt!347568) (index!34313 lt!347568) k!2102 a!3186 mask!3328))))

(declare-fun b!779928 () Bool)

(declare-fun e!433891 () SeekEntryResult!7986)

(assert (=> b!779928 (= e!433891 (Found!7986 (index!34313 lt!347568)))))

(declare-fun b!779929 () Bool)

(assert (=> b!779929 (= e!433892 (MissingZero!7986 (index!34313 lt!347568)))))

(declare-fun b!779930 () Bool)

(declare-fun c!86478 () Bool)

(declare-fun lt!347569 () (_ BitVec 64))

(assert (=> b!779930 (= c!86478 (= lt!347569 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!779930 (= e!433891 e!433892)))

(declare-fun b!779931 () Bool)

(declare-fun e!433893 () SeekEntryResult!7986)

(assert (=> b!779931 (= e!433893 e!433891)))

(assert (=> b!779931 (= lt!347569 (select (arr!20379 a!3186) (index!34313 lt!347568)))))

(declare-fun c!86479 () Bool)

(assert (=> b!779931 (= c!86479 (= lt!347569 k!2102))))

(declare-fun d!102383 () Bool)

(declare-fun lt!347567 () SeekEntryResult!7986)

(assert (=> d!102383 (and (or (is-Undefined!7986 lt!347567) (not (is-Found!7986 lt!347567)) (and (bvsge (index!34312 lt!347567) #b00000000000000000000000000000000) (bvslt (index!34312 lt!347567) (size!20800 a!3186)))) (or (is-Undefined!7986 lt!347567) (is-Found!7986 lt!347567) (not (is-MissingZero!7986 lt!347567)) (and (bvsge (index!34311 lt!347567) #b00000000000000000000000000000000) (bvslt (index!34311 lt!347567) (size!20800 a!3186)))) (or (is-Undefined!7986 lt!347567) (is-Found!7986 lt!347567) (is-MissingZero!7986 lt!347567) (not (is-MissingVacant!7986 lt!347567)) (and (bvsge (index!34314 lt!347567) #b00000000000000000000000000000000) (bvslt (index!34314 lt!347567) (size!20800 a!3186)))) (or (is-Undefined!7986 lt!347567) (ite (is-Found!7986 lt!347567) (= (select (arr!20379 a!3186) (index!34312 lt!347567)) k!2102) (ite (is-MissingZero!7986 lt!347567) (= (select (arr!20379 a!3186) (index!34311 lt!347567)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!7986 lt!347567) (= (select (arr!20379 a!3186) (index!34314 lt!347567)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!102383 (= lt!347567 e!433893)))

(declare-fun c!86477 () Bool)

(assert (=> d!102383 (= c!86477 (and (is-Intermediate!7986 lt!347568) (undefined!8798 lt!347568)))))

(assert (=> d!102383 (= lt!347568 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2102 mask!3328) k!2102 a!3186 mask!3328))))

(assert (=> d!102383 (validMask!0 mask!3328)))

(assert (=> d!102383 (= (seekEntryOrOpen!0 k!2102 a!3186 mask!3328) lt!347567)))

(declare-fun b!779932 () Bool)

(assert (=> b!779932 (= e!433893 Undefined!7986)))

(assert (= (and d!102383 c!86477) b!779932))

(assert (= (and d!102383 (not c!86477)) b!779931))

(assert (= (and b!779931 c!86479) b!779928))

(assert (= (and b!779931 (not c!86479)) b!779930))

(assert (= (and b!779930 c!86478) b!779929))

(assert (= (and b!779930 (not c!86478)) b!779927))

(declare-fun m!723391 () Bool)

(assert (=> b!779927 m!723391))

(declare-fun m!723393 () Bool)

(assert (=> b!779931 m!723393))

(declare-fun m!723395 () Bool)

(assert (=> d!102383 m!723395))

(declare-fun m!723397 () Bool)

(assert (=> d!102383 m!723397))

(declare-fun m!723399 () Bool)

(assert (=> d!102383 m!723399))

(assert (=> d!102383 m!723063))

(assert (=> d!102383 m!723395))

(declare-fun m!723401 () Bool)

(assert (=> d!102383 m!723401))

(declare-fun m!723403 () Bool)

(assert (=> d!102383 m!723403))

(assert (=> b!779486 d!102383))

(declare-fun b!779942 () Bool)

(declare-fun e!433901 () Bool)

(declare-fun call!35231 () Bool)

(assert (=> b!779942 (= e!433901 call!35231)))

(declare-fun b!779943 () Bool)

(declare-fun e!433899 () Bool)

(declare-fun e!433900 () Bool)

(assert (=> b!779943 (= e!433899 e!433900)))

(declare-fun c!86483 () Bool)

(assert (=> b!779943 (= c!86483 (validKeyInArray!0 (select (arr!20379 a!3186) #b00000000000000000000000000000000)))))

(declare-fun d!102387 () Bool)

(declare-fun res!527785 () Bool)

(assert (=> d!102387 (=> res!527785 e!433899)))

(assert (=> d!102387 (= res!527785 (bvsge #b00000000000000000000000000000000 (size!20800 a!3186)))))

(assert (=> d!102387 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328) e!433899)))

(declare-fun bm!35228 () Bool)

(assert (=> bm!35228 (= call!35231 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun b!779944 () Bool)

(assert (=> b!779944 (= e!433900 call!35231)))

(declare-fun b!779945 () Bool)

(assert (=> b!779945 (= e!433900 e!433901)))

(declare-fun lt!347576 () (_ BitVec 64))

(assert (=> b!779945 (= lt!347576 (select (arr!20379 a!3186) #b00000000000000000000000000000000))))

(declare-fun lt!347574 () Unit!26866)

(assert (=> b!779945 (= lt!347574 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!347576 #b00000000000000000000000000000000))))

(assert (=> b!779945 (arrayContainsKey!0 a!3186 lt!347576 #b00000000000000000000000000000000)))

(declare-fun lt!347575 () Unit!26866)

(assert (=> b!779945 (= lt!347575 lt!347574)))

(declare-fun res!527786 () Bool)

(assert (=> b!779945 (= res!527786 (= (seekEntryOrOpen!0 (select (arr!20379 a!3186) #b00000000000000000000000000000000) a!3186 mask!3328) (Found!7986 #b00000000000000000000000000000000)))))

(assert (=> b!779945 (=> (not res!527786) (not e!433901))))

(assert (= (and d!102387 (not res!527785)) b!779943))

(assert (= (and b!779943 c!86483) b!779945))

(assert (= (and b!779943 (not c!86483)) b!779944))

(assert (= (and b!779945 res!527786) b!779942))

(assert (= (or b!779942 b!779944) bm!35228))

(declare-fun m!723407 () Bool)

(assert (=> b!779943 m!723407))

(assert (=> b!779943 m!723407))

(declare-fun m!723411 () Bool)

(assert (=> b!779943 m!723411))

(declare-fun m!723413 () Bool)

(assert (=> bm!35228 m!723413))

(assert (=> b!779945 m!723407))

(declare-fun m!723415 () Bool)

(assert (=> b!779945 m!723415))

(declare-fun m!723417 () Bool)

(assert (=> b!779945 m!723417))

(assert (=> b!779945 m!723407))

(declare-fun m!723419 () Bool)

(assert (=> b!779945 m!723419))

(assert (=> b!779495 d!102387))

(declare-fun d!102391 () Bool)

(assert (=> d!102391 (= (validKeyInArray!0 (select (arr!20379 a!3186) j!159)) (and (not (= (select (arr!20379 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!20379 a!3186) j!159) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!779484 d!102391))

(declare-fun d!102395 () Bool)

(declare-fun res!527797 () Bool)

(declare-fun e!433912 () Bool)

(assert (=> d!102395 (=> res!527797 e!433912)))

(assert (=> d!102395 (= res!527797 (= (select (arr!20379 a!3186) #b00000000000000000000000000000000) k!2102))))

(assert (=> d!102395 (= (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000) e!433912)))

(declare-fun b!779956 () Bool)

(declare-fun e!433913 () Bool)

(assert (=> b!779956 (= e!433912 e!433913)))

(declare-fun res!527798 () Bool)

(assert (=> b!779956 (=> (not res!527798) (not e!433913))))

(assert (=> b!779956 (= res!527798 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!20800 a!3186)))))

(declare-fun b!779957 () Bool)

(assert (=> b!779957 (= e!433913 (arrayContainsKey!0 a!3186 k!2102 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!102395 (not res!527797)) b!779956))

(assert (= (and b!779956 res!527798) b!779957))

(assert (=> d!102395 m!723407))

(declare-fun m!723423 () Bool)

(assert (=> b!779957 m!723423))

(assert (=> b!779494 d!102395))

(declare-fun b!779964 () Bool)

(declare-fun lt!347580 () SeekEntryResult!7986)

(assert (=> b!779964 (and (bvsge (index!34313 lt!347580) #b00000000000000000000000000000000) (bvslt (index!34313 lt!347580) (size!20800 a!3186)))))

(declare-fun res!527800 () Bool)

(assert (=> b!779964 (= res!527800 (= (select (arr!20379 a!3186) (index!34313 lt!347580)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!433920 () Bool)

(assert (=> b!779964 (=> res!527800 e!433920)))

(declare-fun b!779965 () Bool)

(assert (=> b!779965 (and (bvsge (index!34313 lt!347580) #b00000000000000000000000000000000) (bvslt (index!34313 lt!347580) (size!20800 a!3186)))))

(declare-fun res!527799 () Bool)

(assert (=> b!779965 (= res!527799 (= (select (arr!20379 a!3186) (index!34313 lt!347580)) (select (arr!20379 a!3186) j!159)))))

(assert (=> b!779965 (=> res!527799 e!433920)))

(declare-fun e!433921 () Bool)

(assert (=> b!779965 (= e!433921 e!433920)))

(declare-fun b!779966 () Bool)

(assert (=> b!779966 (and (bvsge (index!34313 lt!347580) #b00000000000000000000000000000000) (bvslt (index!34313 lt!347580) (size!20800 a!3186)))))

(assert (=> b!779966 (= e!433920 (= (select (arr!20379 a!3186) (index!34313 lt!347580)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!779967 () Bool)

(declare-fun e!433919 () SeekEntryResult!7986)

(declare-fun e!433918 () SeekEntryResult!7986)

(assert (=> b!779967 (= e!433919 e!433918)))

(declare-fun lt!347581 () (_ BitVec 64))

(declare-fun c!86488 () Bool)

(assert (=> b!779967 (= c!86488 (or (= lt!347581 (select (arr!20379 a!3186) j!159)) (= (bvadd lt!347581 lt!347581) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!779968 () Bool)

(declare-fun e!433917 () Bool)

(assert (=> b!779968 (= e!433917 (bvsge (x!65284 lt!347580) #b01111111111111111111111111111110))))

(declare-fun b!779969 () Bool)

(assert (=> b!779969 (= e!433917 e!433921)))

(declare-fun res!527801 () Bool)

(assert (=> b!779969 (= res!527801 (and (is-Intermediate!7986 lt!347580) (not (undefined!8798 lt!347580)) (bvslt (x!65284 lt!347580) #b01111111111111111111111111111110) (bvsge (x!65284 lt!347580) #b00000000000000000000000000000000) (bvsge (x!65284 lt!347580) x!1131)))))

(assert (=> b!779969 (=> (not res!527801) (not e!433921))))

(declare-fun d!102399 () Bool)

(assert (=> d!102399 e!433917))

(declare-fun c!86489 () Bool)

(assert (=> d!102399 (= c!86489 (and (is-Intermediate!7986 lt!347580) (undefined!8798 lt!347580)))))

(assert (=> d!102399 (= lt!347580 e!433919)))

(declare-fun c!86487 () Bool)

(assert (=> d!102399 (= c!86487 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!102399 (= lt!347581 (select (arr!20379 a!3186) index!1321))))

(assert (=> d!102399 (validMask!0 mask!3328)))

(assert (=> d!102399 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20379 a!3186) j!159) a!3186 mask!3328) lt!347580)))

(declare-fun b!779970 () Bool)

(assert (=> b!779970 (= e!433918 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) (select (arr!20379 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!779971 () Bool)

(assert (=> b!779971 (= e!433918 (Intermediate!7986 false index!1321 x!1131))))

(declare-fun b!779972 () Bool)

(assert (=> b!779972 (= e!433919 (Intermediate!7986 true index!1321 x!1131))))

(assert (= (and d!102399 c!86487) b!779972))

(assert (= (and d!102399 (not c!86487)) b!779967))

(assert (= (and b!779967 c!86488) b!779971))

(assert (= (and b!779967 (not c!86488)) b!779970))

(assert (= (and d!102399 c!86489) b!779968))

(assert (= (and d!102399 (not c!86489)) b!779969))

(assert (= (and b!779969 res!527801) b!779965))

(assert (= (and b!779965 (not res!527799)) b!779964))

(assert (= (and b!779964 (not res!527800)) b!779966))

(declare-fun m!723431 () Bool)

(assert (=> b!779965 m!723431))

(assert (=> b!779964 m!723431))

(assert (=> b!779966 m!723431))

(assert (=> b!779970 m!723231))

(assert (=> b!779970 m!723231))

(assert (=> b!779970 m!723055))

(declare-fun m!723437 () Bool)

(assert (=> b!779970 m!723437))

(assert (=> d!102399 m!723239))

(assert (=> d!102399 m!723063))

(assert (=> b!779493 d!102399))

(declare-fun b!779977 () Bool)

(declare-fun lt!347585 () SeekEntryResult!7986)

(assert (=> b!779977 (and (bvsge (index!34313 lt!347585) #b00000000000000000000000000000000) (bvslt (index!34313 lt!347585) (size!20800 a!3186)))))

(declare-fun res!527805 () Bool)

(assert (=> b!779977 (= res!527805 (= (select (arr!20379 a!3186) (index!34313 lt!347585)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!433928 () Bool)

(assert (=> b!779977 (=> res!527805 e!433928)))

(declare-fun b!779978 () Bool)

(assert (=> b!779978 (and (bvsge (index!34313 lt!347585) #b00000000000000000000000000000000) (bvslt (index!34313 lt!347585) (size!20800 a!3186)))))

(declare-fun res!527804 () Bool)

(assert (=> b!779978 (= res!527804 (= (select (arr!20379 a!3186) (index!34313 lt!347585)) (select (arr!20379 a!3186) j!159)))))

(assert (=> b!779978 (=> res!527804 e!433928)))

(declare-fun e!433929 () Bool)

(assert (=> b!779978 (= e!433929 e!433928)))

(declare-fun b!779979 () Bool)

(assert (=> b!779979 (and (bvsge (index!34313 lt!347585) #b00000000000000000000000000000000) (bvslt (index!34313 lt!347585) (size!20800 a!3186)))))

(assert (=> b!779979 (= e!433928 (= (select (arr!20379 a!3186) (index!34313 lt!347585)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!779980 () Bool)

(declare-fun e!433927 () SeekEntryResult!7986)

(declare-fun e!433926 () SeekEntryResult!7986)

(assert (=> b!779980 (= e!433927 e!433926)))

(declare-fun lt!347586 () (_ BitVec 64))

(declare-fun c!86492 () Bool)

(assert (=> b!779980 (= c!86492 (or (= lt!347586 (select (arr!20379 a!3186) j!159)) (= (bvadd lt!347586 lt!347586) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!779981 () Bool)

(declare-fun e!433925 () Bool)

(assert (=> b!779981 (= e!433925 (bvsge (x!65284 lt!347585) #b01111111111111111111111111111110))))

(declare-fun b!779982 () Bool)

(assert (=> b!779982 (= e!433925 e!433929)))

(declare-fun res!527806 () Bool)

(assert (=> b!779982 (= res!527806 (and (is-Intermediate!7986 lt!347585) (not (undefined!8798 lt!347585)) (bvslt (x!65284 lt!347585) #b01111111111111111111111111111110) (bvsge (x!65284 lt!347585) #b00000000000000000000000000000000) (bvsge (x!65284 lt!347585) #b00000000000000000000000000000000)))))

(assert (=> b!779982 (=> (not res!527806) (not e!433929))))

(declare-fun d!102403 () Bool)

(assert (=> d!102403 e!433925))

(declare-fun c!86493 () Bool)

(assert (=> d!102403 (= c!86493 (and (is-Intermediate!7986 lt!347585) (undefined!8798 lt!347585)))))

(assert (=> d!102403 (= lt!347585 e!433927)))

(declare-fun c!86491 () Bool)

(assert (=> d!102403 (= c!86491 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!102403 (= lt!347586 (select (arr!20379 a!3186) (toIndex!0 (select (arr!20379 a!3186) j!159) mask!3328)))))

(assert (=> d!102403 (validMask!0 mask!3328)))

(assert (=> d!102403 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20379 a!3186) j!159) mask!3328) (select (arr!20379 a!3186) j!159) a!3186 mask!3328) lt!347585)))

(declare-fun b!779983 () Bool)

(assert (=> b!779983 (= e!433926 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!20379 a!3186) j!159) mask!3328) #b00000000000000000000000000000000 mask!3328) (select (arr!20379 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!779984 () Bool)

(assert (=> b!779984 (= e!433926 (Intermediate!7986 false (toIndex!0 (select (arr!20379 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!779985 () Bool)

(assert (=> b!779985 (= e!433927 (Intermediate!7986 true (toIndex!0 (select (arr!20379 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(assert (= (and d!102403 c!86491) b!779985))

(assert (= (and d!102403 (not c!86491)) b!779980))

(assert (= (and b!779980 c!86492) b!779984))

(assert (= (and b!779980 (not c!86492)) b!779983))

(assert (= (and d!102403 c!86493) b!779981))

(assert (= (and d!102403 (not c!86493)) b!779982))

(assert (= (and b!779982 res!527806) b!779978))

(assert (= (and b!779978 (not res!527804)) b!779977))

(assert (= (and b!779977 (not res!527805)) b!779979))

(declare-fun m!723445 () Bool)

(assert (=> b!779978 m!723445))

(assert (=> b!779977 m!723445))

(assert (=> b!779979 m!723445))

(assert (=> b!779983 m!723077))

(declare-fun m!723447 () Bool)

(assert (=> b!779983 m!723447))

(assert (=> b!779983 m!723447))

(assert (=> b!779983 m!723055))

(declare-fun m!723449 () Bool)

(assert (=> b!779983 m!723449))

(assert (=> d!102403 m!723077))

(declare-fun m!723451 () Bool)

(assert (=> d!102403 m!723451))

(assert (=> d!102403 m!723063))

(assert (=> b!779482 d!102403))

(declare-fun d!102407 () Bool)

(declare-fun lt!347588 () (_ BitVec 32))

(declare-fun lt!347587 () (_ BitVec 32))

(assert (=> d!102407 (= lt!347588 (bvmul (bvxor lt!347587 (bvlshr lt!347587 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!102407 (= lt!347587 ((_ extract 31 0) (bvand (bvxor (select (arr!20379 a!3186) j!159) (bvlshr (select (arr!20379 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!102407 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!527771 (let ((h!15548 ((_ extract 31 0) (bvand (bvxor (select (arr!20379 a!3186) j!159) (bvlshr (select (arr!20379 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!65293 (bvmul (bvxor h!15548 (bvlshr h!15548 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!65293 (bvlshr x!65293 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!527771 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!527771 #b00000000000000000000000000000000))))))

(assert (=> d!102407 (= (toIndex!0 (select (arr!20379 a!3186) j!159) mask!3328) (bvand (bvxor lt!347588 (bvlshr lt!347588 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!779482 d!102407))

(declare-fun d!102409 () Bool)

(assert (=> d!102409 (= (validKeyInArray!0 k!2102) (and (not (= k!2102 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2102 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!779491 d!102409))

(declare-fun b!779996 () Bool)

(declare-fun e!433938 () Bool)

(declare-fun e!433940 () Bool)

(assert (=> b!779996 (= e!433938 e!433940)))

(declare-fun c!86496 () Bool)

(assert (=> b!779996 (= c!86496 (validKeyInArray!0 (select (arr!20379 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!779997 () Bool)

(declare-fun call!35235 () Bool)

(assert (=> b!779997 (= e!433940 call!35235)))

(declare-fun b!779998 () Bool)

(assert (=> b!779998 (= e!433940 call!35235)))

(declare-fun bm!35232 () Bool)

(assert (=> bm!35232 (= call!35235 (arrayNoDuplicates!0 a!3186 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!86496 (Cons!14430 (select (arr!20379 a!3186) #b00000000000000000000000000000000) Nil!14431) Nil!14431)))))

(declare-fun d!102411 () Bool)

(declare-fun res!527813 () Bool)

(declare-fun e!433941 () Bool)

(assert (=> d!102411 (=> res!527813 e!433941)))

(assert (=> d!102411 (= res!527813 (bvsge #b00000000000000000000000000000000 (size!20800 a!3186)))))

(assert (=> d!102411 (= (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14431) e!433941)))

(declare-fun b!779999 () Bool)

(assert (=> b!779999 (= e!433941 e!433938)))

(declare-fun res!527814 () Bool)

(assert (=> b!779999 (=> (not res!527814) (not e!433938))))

(declare-fun e!433939 () Bool)

(assert (=> b!779999 (= res!527814 (not e!433939))))

(declare-fun res!527815 () Bool)

(assert (=> b!779999 (=> (not res!527815) (not e!433939))))

(assert (=> b!779999 (= res!527815 (validKeyInArray!0 (select (arr!20379 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!780000 () Bool)

(declare-fun contains!4105 (List!14434 (_ BitVec 64)) Bool)

(assert (=> b!780000 (= e!433939 (contains!4105 Nil!14431 (select (arr!20379 a!3186) #b00000000000000000000000000000000)))))

(assert (= (and d!102411 (not res!527813)) b!779999))

(assert (= (and b!779999 res!527815) b!780000))

(assert (= (and b!779999 res!527814) b!779996))

(assert (= (and b!779996 c!86496) b!779997))

(assert (= (and b!779996 (not c!86496)) b!779998))

(assert (= (or b!779997 b!779998) bm!35232))

(assert (=> b!779996 m!723407))

(assert (=> b!779996 m!723407))

(assert (=> b!779996 m!723411))

(assert (=> bm!35232 m!723407))

(declare-fun m!723455 () Bool)

(assert (=> bm!35232 m!723455))

(assert (=> b!779999 m!723407))

(assert (=> b!779999 m!723407))

(assert (=> b!779999 m!723411))

(assert (=> b!780000 m!723407))

(assert (=> b!780000 m!723407))

(declare-fun m!723457 () Bool)

(assert (=> b!780000 m!723457))

(assert (=> b!779490 d!102411))

(declare-fun b!780002 () Bool)

(declare-fun e!433944 () SeekEntryResult!7986)

(declare-fun e!433943 () SeekEntryResult!7986)

(assert (=> b!780002 (= e!433944 e!433943)))

(declare-fun lt!347592 () (_ BitVec 64))

(declare-fun c!86497 () Bool)

(assert (=> b!780002 (= c!86497 (= lt!347592 (select (arr!20379 a!3186) j!159)))))

(declare-fun b!780003 () Bool)

(declare-fun c!86499 () Bool)

(assert (=> b!780003 (= c!86499 (= lt!347592 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!433942 () SeekEntryResult!7986)

(assert (=> b!780003 (= e!433943 e!433942)))

(declare-fun b!780004 () Bool)

(assert (=> b!780004 (= e!433944 Undefined!7986)))

(declare-fun b!780005 () Bool)

(assert (=> b!780005 (= e!433943 (Found!7986 resIntermediateIndex!5))))

(declare-fun b!780006 () Bool)

(assert (=> b!780006 (= e!433942 (seekKeyOrZeroReturnVacant!0 (bvadd resIntermediateX!5 #b00000000000000000000000000000001) (nextIndex!0 resIntermediateIndex!5 resIntermediateX!5 mask!3328) resIntermediateIndex!5 (select (arr!20379 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!780001 () Bool)

(assert (=> b!780001 (= e!433942 (MissingVacant!7986 resIntermediateIndex!5))))

(declare-fun lt!347593 () SeekEntryResult!7986)

(declare-fun d!102417 () Bool)

(assert (=> d!102417 (and (or (is-Undefined!7986 lt!347593) (not (is-Found!7986 lt!347593)) (and (bvsge (index!34312 lt!347593) #b00000000000000000000000000000000) (bvslt (index!34312 lt!347593) (size!20800 a!3186)))) (or (is-Undefined!7986 lt!347593) (is-Found!7986 lt!347593) (not (is-MissingVacant!7986 lt!347593)) (not (= (index!34314 lt!347593) resIntermediateIndex!5)) (and (bvsge (index!34314 lt!347593) #b00000000000000000000000000000000) (bvslt (index!34314 lt!347593) (size!20800 a!3186)))) (or (is-Undefined!7986 lt!347593) (ite (is-Found!7986 lt!347593) (= (select (arr!20379 a!3186) (index!34312 lt!347593)) (select (arr!20379 a!3186) j!159)) (and (is-MissingVacant!7986 lt!347593) (= (index!34314 lt!347593) resIntermediateIndex!5) (= (select (arr!20379 a!3186) (index!34314 lt!347593)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!102417 (= lt!347593 e!433944)))

(declare-fun c!86498 () Bool)

(assert (=> d!102417 (= c!86498 (bvsge resIntermediateX!5 #b01111111111111111111111111111110))))

(assert (=> d!102417 (= lt!347592 (select (arr!20379 a!3186) resIntermediateIndex!5))))

(assert (=> d!102417 (validMask!0 mask!3328)))

(assert (=> d!102417 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20379 a!3186) j!159) a!3186 mask!3328) lt!347593)))

(assert (= (and d!102417 c!86498) b!780004))

(assert (= (and d!102417 (not c!86498)) b!780002))

(assert (= (and b!780002 c!86497) b!780005))

(assert (= (and b!780002 (not c!86497)) b!780003))

(assert (= (and b!780003 c!86499) b!780001))

(assert (= (and b!780003 (not c!86499)) b!780006))

(declare-fun m!723459 () Bool)

(assert (=> b!780006 m!723459))

(assert (=> b!780006 m!723459))

(assert (=> b!780006 m!723055))

(declare-fun m!723461 () Bool)

(assert (=> b!780006 m!723461))

(declare-fun m!723463 () Bool)

(assert (=> d!102417 m!723463))

(declare-fun m!723465 () Bool)

(assert (=> d!102417 m!723465))

(assert (=> d!102417 m!723075))

(assert (=> d!102417 m!723063))

(assert (=> b!779489 d!102417))

(push 1)

(assert (not b!779766))

(assert (not d!102333))

(assert (not d!102399))

(assert (not b!779970))

(assert (not b!780006))

(assert (not b!779764))

(assert (not b!779943))

(assert (not d!102349))

(assert (not b!779869))

(assert (not b!779734))

(assert (not bm!35220))

(assert (not bm!35228))

(assert (not b!780000))

(assert (not b!779661))

(assert (not d!102403))

(assert (not b!779945))

(assert (not d!102417))

(assert (not b!779983))

(assert (not b!779957))

(assert (not b!779996))

(assert (not b!779999))

(assert (not d!102355))

(assert (not bm!35232))

(assert (not d!102383))

(assert (not b!779882))

(assert (not d!102319))

(assert (not d!102367))

(assert (not b!779927))

(check-sat)

(pop 1)

(push 1)

(check-sat)

