; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!67566 () Bool)

(assert start!67566)

(declare-fun b!781465 () Bool)

(declare-fun res!528797 () Bool)

(declare-fun e!434661 () Bool)

(assert (=> b!781465 (=> res!528797 e!434661)))

(declare-datatypes ((array!42624 0))(
  ( (array!42625 (arr!20398 (Array (_ BitVec 32) (_ BitVec 64))) (size!20819 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42624)

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun lt!348274 () (_ BitVec 64))

(assert (=> b!781465 (= res!528797 (= (select (store (arr!20398 a!3186) i!1173 k0!2102) index!1321) lt!348274))))

(declare-fun b!781467 () Bool)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8005 0))(
  ( (MissingZero!8005 (index!34387 (_ BitVec 32))) (Found!8005 (index!34388 (_ BitVec 32))) (Intermediate!8005 (undefined!8817 Bool) (index!34389 (_ BitVec 32)) (x!65369 (_ BitVec 32))) (Undefined!8005) (MissingVacant!8005 (index!34390 (_ BitVec 32))) )
))
(declare-fun lt!348268 () SeekEntryResult!8005)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun e!434664 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42624 (_ BitVec 32)) SeekEntryResult!8005)

(assert (=> b!781467 (= e!434664 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20398 a!3186) j!159) a!3186 mask!3328) lt!348268))))

(declare-fun b!781468 () Bool)

(declare-fun res!528801 () Bool)

(declare-fun e!434665 () Bool)

(assert (=> b!781468 (=> (not res!528801) (not e!434665))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42624 (_ BitVec 32)) Bool)

(assert (=> b!781468 (= res!528801 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!781469 () Bool)

(declare-fun res!528805 () Bool)

(assert (=> b!781469 (=> (not res!528805) (not e!434665))))

(declare-datatypes ((List!14453 0))(
  ( (Nil!14450) (Cons!14449 (h!15569 (_ BitVec 64)) (t!20776 List!14453)) )
))
(declare-fun arrayNoDuplicates!0 (array!42624 (_ BitVec 32) List!14453) Bool)

(assert (=> b!781469 (= res!528805 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14450))))

(declare-fun b!781470 () Bool)

(declare-fun res!528803 () Bool)

(declare-fun e!434660 () Bool)

(assert (=> b!781470 (=> (not res!528803) (not e!434660))))

(declare-fun arrayContainsKey!0 (array!42624 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!781470 (= res!528803 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!781471 () Bool)

(declare-fun e!434657 () Bool)

(assert (=> b!781471 (= e!434665 e!434657)))

(declare-fun res!528791 () Bool)

(assert (=> b!781471 (=> (not res!528791) (not e!434657))))

(declare-fun lt!348273 () SeekEntryResult!8005)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42624 (_ BitVec 32)) SeekEntryResult!8005)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!781471 (= res!528791 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20398 a!3186) j!159) mask!3328) (select (arr!20398 a!3186) j!159) a!3186 mask!3328) lt!348273))))

(assert (=> b!781471 (= lt!348273 (Intermediate!8005 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!781472 () Bool)

(declare-fun res!528802 () Bool)

(assert (=> b!781472 (=> (not res!528802) (not e!434657))))

(declare-fun e!434662 () Bool)

(assert (=> b!781472 (= res!528802 e!434662)))

(declare-fun c!86745 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!781472 (= c!86745 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!781473 () Bool)

(declare-fun e!434663 () Bool)

(assert (=> b!781473 (= e!434657 e!434663)))

(declare-fun res!528790 () Bool)

(assert (=> b!781473 (=> (not res!528790) (not e!434663))))

(declare-fun lt!348270 () SeekEntryResult!8005)

(declare-fun lt!348271 () SeekEntryResult!8005)

(assert (=> b!781473 (= res!528790 (= lt!348270 lt!348271))))

(declare-fun lt!348267 () array!42624)

(assert (=> b!781473 (= lt!348271 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!348274 lt!348267 mask!3328))))

(assert (=> b!781473 (= lt!348270 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!348274 mask!3328) lt!348274 lt!348267 mask!3328))))

(assert (=> b!781473 (= lt!348274 (select (store (arr!20398 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!781473 (= lt!348267 (array!42625 (store (arr!20398 a!3186) i!1173 k0!2102) (size!20819 a!3186)))))

(declare-fun b!781474 () Bool)

(declare-datatypes ((Unit!26930 0))(
  ( (Unit!26931) )
))
(declare-fun e!434658 () Unit!26930)

(declare-fun Unit!26932 () Unit!26930)

(assert (=> b!781474 (= e!434658 Unit!26932)))

(declare-fun b!781475 () Bool)

(assert (=> b!781475 (= e!434663 (not e!434661))))

(declare-fun res!528796 () Bool)

(assert (=> b!781475 (=> res!528796 e!434661)))

(get-info :version)

(assert (=> b!781475 (= res!528796 (or (not ((_ is Intermediate!8005) lt!348271)) (bvslt x!1131 (x!65369 lt!348271)) (not (= x!1131 (x!65369 lt!348271))) (not (= index!1321 (index!34389 lt!348271)))))))

(assert (=> b!781475 e!434664))

(declare-fun res!528804 () Bool)

(assert (=> b!781475 (=> (not res!528804) (not e!434664))))

(declare-fun lt!348266 () SeekEntryResult!8005)

(assert (=> b!781475 (= res!528804 (= lt!348266 lt!348268))))

(assert (=> b!781475 (= lt!348268 (Found!8005 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42624 (_ BitVec 32)) SeekEntryResult!8005)

(assert (=> b!781475 (= lt!348266 (seekEntryOrOpen!0 (select (arr!20398 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!781475 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!348265 () Unit!26930)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42624 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26930)

(assert (=> b!781475 (= lt!348265 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!781476 () Bool)

(declare-fun Unit!26933 () Unit!26930)

(assert (=> b!781476 (= e!434658 Unit!26933)))

(assert (=> b!781476 false))

(declare-fun b!781477 () Bool)

(assert (=> b!781477 (= e!434662 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20398 a!3186) j!159) a!3186 mask!3328) lt!348273))))

(declare-fun b!781478 () Bool)

(assert (=> b!781478 (= e!434660 e!434665)))

(declare-fun res!528799 () Bool)

(assert (=> b!781478 (=> (not res!528799) (not e!434665))))

(declare-fun lt!348272 () SeekEntryResult!8005)

(assert (=> b!781478 (= res!528799 (or (= lt!348272 (MissingZero!8005 i!1173)) (= lt!348272 (MissingVacant!8005 i!1173))))))

(assert (=> b!781478 (= lt!348272 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!781466 () Bool)

(declare-fun res!528794 () Bool)

(assert (=> b!781466 (=> (not res!528794) (not e!434665))))

(assert (=> b!781466 (= res!528794 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20819 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20819 a!3186))))))

(declare-fun res!528795 () Bool)

(assert (=> start!67566 (=> (not res!528795) (not e!434660))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67566 (= res!528795 (validMask!0 mask!3328))))

(assert (=> start!67566 e!434660))

(assert (=> start!67566 true))

(declare-fun array_inv!16172 (array!42624) Bool)

(assert (=> start!67566 (array_inv!16172 a!3186)))

(declare-fun b!781479 () Bool)

(declare-fun res!528798 () Bool)

(assert (=> b!781479 (=> res!528798 e!434661)))

(assert (=> b!781479 (= res!528798 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20398 a!3186) j!159) a!3186 mask!3328) lt!348268)))))

(declare-fun b!781480 () Bool)

(declare-fun res!528793 () Bool)

(assert (=> b!781480 (=> (not res!528793) (not e!434660))))

(assert (=> b!781480 (= res!528793 (and (= (size!20819 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20819 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20819 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!781481 () Bool)

(declare-fun res!528789 () Bool)

(assert (=> b!781481 (=> (not res!528789) (not e!434657))))

(assert (=> b!781481 (= res!528789 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20398 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!781482 () Bool)

(declare-fun res!528792 () Bool)

(assert (=> b!781482 (=> (not res!528792) (not e!434660))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!781482 (= res!528792 (validKeyInArray!0 k0!2102))))

(declare-fun b!781483 () Bool)

(declare-fun res!528800 () Bool)

(assert (=> b!781483 (=> (not res!528800) (not e!434660))))

(assert (=> b!781483 (= res!528800 (validKeyInArray!0 (select (arr!20398 a!3186) j!159)))))

(declare-fun b!781484 () Bool)

(assert (=> b!781484 (= e!434662 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20398 a!3186) j!159) a!3186 mask!3328) (Found!8005 j!159)))))

(declare-fun b!781485 () Bool)

(assert (=> b!781485 (= e!434661 true)))

(assert (=> b!781485 (= (select (store (arr!20398 a!3186) i!1173 k0!2102) index!1321) #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!348269 () Unit!26930)

(assert (=> b!781485 (= lt!348269 e!434658)))

(declare-fun c!86744 () Bool)

(assert (=> b!781485 (= c!86744 (= (select (store (arr!20398 a!3186) i!1173 k0!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!67566 res!528795) b!781480))

(assert (= (and b!781480 res!528793) b!781483))

(assert (= (and b!781483 res!528800) b!781482))

(assert (= (and b!781482 res!528792) b!781470))

(assert (= (and b!781470 res!528803) b!781478))

(assert (= (and b!781478 res!528799) b!781468))

(assert (= (and b!781468 res!528801) b!781469))

(assert (= (and b!781469 res!528805) b!781466))

(assert (= (and b!781466 res!528794) b!781471))

(assert (= (and b!781471 res!528791) b!781481))

(assert (= (and b!781481 res!528789) b!781472))

(assert (= (and b!781472 c!86745) b!781477))

(assert (= (and b!781472 (not c!86745)) b!781484))

(assert (= (and b!781472 res!528802) b!781473))

(assert (= (and b!781473 res!528790) b!781475))

(assert (= (and b!781475 res!528804) b!781467))

(assert (= (and b!781475 (not res!528796)) b!781479))

(assert (= (and b!781479 (not res!528798)) b!781465))

(assert (= (and b!781465 (not res!528797)) b!781485))

(assert (= (and b!781485 c!86744) b!781476))

(assert (= (and b!781485 (not c!86744)) b!781474))

(declare-fun m!724531 () Bool)

(assert (=> start!67566 m!724531))

(declare-fun m!724533 () Bool)

(assert (=> start!67566 m!724533))

(declare-fun m!724535 () Bool)

(assert (=> b!781477 m!724535))

(assert (=> b!781477 m!724535))

(declare-fun m!724537 () Bool)

(assert (=> b!781477 m!724537))

(assert (=> b!781479 m!724535))

(assert (=> b!781479 m!724535))

(declare-fun m!724539 () Bool)

(assert (=> b!781479 m!724539))

(declare-fun m!724541 () Bool)

(assert (=> b!781470 m!724541))

(assert (=> b!781475 m!724535))

(assert (=> b!781475 m!724535))

(declare-fun m!724543 () Bool)

(assert (=> b!781475 m!724543))

(declare-fun m!724545 () Bool)

(assert (=> b!781475 m!724545))

(declare-fun m!724547 () Bool)

(assert (=> b!781475 m!724547))

(assert (=> b!781483 m!724535))

(assert (=> b!781483 m!724535))

(declare-fun m!724549 () Bool)

(assert (=> b!781483 m!724549))

(assert (=> b!781484 m!724535))

(assert (=> b!781484 m!724535))

(assert (=> b!781484 m!724539))

(declare-fun m!724551 () Bool)

(assert (=> b!781473 m!724551))

(declare-fun m!724553 () Bool)

(assert (=> b!781473 m!724553))

(declare-fun m!724555 () Bool)

(assert (=> b!781473 m!724555))

(declare-fun m!724557 () Bool)

(assert (=> b!781473 m!724557))

(declare-fun m!724559 () Bool)

(assert (=> b!781473 m!724559))

(assert (=> b!781473 m!724553))

(declare-fun m!724561 () Bool)

(assert (=> b!781469 m!724561))

(assert (=> b!781465 m!724551))

(declare-fun m!724563 () Bool)

(assert (=> b!781465 m!724563))

(declare-fun m!724565 () Bool)

(assert (=> b!781481 m!724565))

(assert (=> b!781485 m!724551))

(assert (=> b!781485 m!724563))

(declare-fun m!724567 () Bool)

(assert (=> b!781478 m!724567))

(assert (=> b!781471 m!724535))

(assert (=> b!781471 m!724535))

(declare-fun m!724569 () Bool)

(assert (=> b!781471 m!724569))

(assert (=> b!781471 m!724569))

(assert (=> b!781471 m!724535))

(declare-fun m!724571 () Bool)

(assert (=> b!781471 m!724571))

(declare-fun m!724573 () Bool)

(assert (=> b!781468 m!724573))

(assert (=> b!781467 m!724535))

(assert (=> b!781467 m!724535))

(declare-fun m!724575 () Bool)

(assert (=> b!781467 m!724575))

(declare-fun m!724577 () Bool)

(assert (=> b!781482 m!724577))

(check-sat (not b!781483) (not b!781468) (not b!781467) (not b!781477) (not b!781473) (not b!781470) (not b!781482) (not b!781478) (not b!781484) (not b!781469) (not b!781479) (not start!67566) (not b!781475) (not b!781471))
(check-sat)
