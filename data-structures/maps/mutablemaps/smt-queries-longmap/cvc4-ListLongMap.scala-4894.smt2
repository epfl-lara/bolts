; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67562 () Bool)

(assert start!67562)

(declare-fun b!781340 () Bool)

(declare-fun res!528697 () Bool)

(declare-fun e!434605 () Bool)

(assert (=> b!781340 (=> (not res!528697) (not e!434605))))

(declare-datatypes ((array!42620 0))(
  ( (array!42621 (arr!20396 (Array (_ BitVec 32) (_ BitVec 64))) (size!20817 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42620)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42620 (_ BitVec 32)) Bool)

(assert (=> b!781340 (= res!528697 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!781341 () Bool)

(declare-datatypes ((Unit!26922 0))(
  ( (Unit!26923) )
))
(declare-fun e!434604 () Unit!26922)

(declare-fun Unit!26924 () Unit!26922)

(assert (=> b!781341 (= e!434604 Unit!26924)))

(assert (=> b!781341 false))

(declare-fun b!781342 () Bool)

(declare-fun res!528688 () Bool)

(declare-fun e!434609 () Bool)

(assert (=> b!781342 (=> res!528688 e!434609)))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun lt!348207 () (_ BitVec 64))

(assert (=> b!781342 (= res!528688 (= (select (store (arr!20396 a!3186) i!1173 k!2102) index!1321) lt!348207))))

(declare-fun b!781343 () Bool)

(declare-fun Unit!26925 () Unit!26922)

(assert (=> b!781343 (= e!434604 Unit!26925)))

(declare-fun b!781344 () Bool)

(assert (=> b!781344 (= e!434609 true)))

(assert (=> b!781344 (= (select (store (arr!20396 a!3186) i!1173 k!2102) index!1321) #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!348211 () Unit!26922)

(assert (=> b!781344 (= lt!348211 e!434604)))

(declare-fun c!86732 () Bool)

(assert (=> b!781344 (= c!86732 (= (select (store (arr!20396 a!3186) i!1173 k!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!781345 () Bool)

(declare-fun res!528696 () Bool)

(assert (=> b!781345 (=> (not res!528696) (not e!434605))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!781345 (= res!528696 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20817 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20817 a!3186))))))

(declare-fun b!781346 () Bool)

(declare-fun res!528701 () Bool)

(declare-fun e!434606 () Bool)

(assert (=> b!781346 (=> (not res!528701) (not e!434606))))

(declare-fun arrayContainsKey!0 (array!42620 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!781346 (= res!528701 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun e!434611 () Bool)

(declare-fun b!781347 () Bool)

(declare-datatypes ((SeekEntryResult!8003 0))(
  ( (MissingZero!8003 (index!34379 (_ BitVec 32))) (Found!8003 (index!34380 (_ BitVec 32))) (Intermediate!8003 (undefined!8815 Bool) (index!34381 (_ BitVec 32)) (x!65359 (_ BitVec 32))) (Undefined!8003) (MissingVacant!8003 (index!34382 (_ BitVec 32))) )
))
(declare-fun lt!348213 () SeekEntryResult!8003)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42620 (_ BitVec 32)) SeekEntryResult!8003)

(assert (=> b!781347 (= e!434611 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20396 a!3186) j!159) a!3186 mask!3328) lt!348213))))

(declare-fun b!781348 () Bool)

(declare-fun res!528692 () Bool)

(assert (=> b!781348 (=> (not res!528692) (not e!434606))))

(assert (=> b!781348 (= res!528692 (and (= (size!20817 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20817 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20817 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!781349 () Bool)

(declare-fun res!528703 () Bool)

(assert (=> b!781349 (=> res!528703 e!434609)))

(assert (=> b!781349 (= res!528703 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20396 a!3186) j!159) a!3186 mask!3328) lt!348213)))))

(declare-fun b!781350 () Bool)

(declare-fun res!528700 () Bool)

(declare-fun e!434607 () Bool)

(assert (=> b!781350 (=> (not res!528700) (not e!434607))))

(declare-fun e!434603 () Bool)

(assert (=> b!781350 (= res!528700 e!434603)))

(declare-fun c!86733 () Bool)

(assert (=> b!781350 (= c!86733 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!781351 () Bool)

(declare-fun res!528699 () Bool)

(assert (=> b!781351 (=> (not res!528699) (not e!434607))))

(assert (=> b!781351 (= res!528699 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20396 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!781352 () Bool)

(assert (=> b!781352 (= e!434606 e!434605)))

(declare-fun res!528695 () Bool)

(assert (=> b!781352 (=> (not res!528695) (not e!434605))))

(declare-fun lt!348212 () SeekEntryResult!8003)

(assert (=> b!781352 (= res!528695 (or (= lt!348212 (MissingZero!8003 i!1173)) (= lt!348212 (MissingVacant!8003 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42620 (_ BitVec 32)) SeekEntryResult!8003)

(assert (=> b!781352 (= lt!348212 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!781339 () Bool)

(declare-fun res!528689 () Bool)

(assert (=> b!781339 (=> (not res!528689) (not e!434605))))

(declare-datatypes ((List!14451 0))(
  ( (Nil!14448) (Cons!14447 (h!15567 (_ BitVec 64)) (t!20774 List!14451)) )
))
(declare-fun arrayNoDuplicates!0 (array!42620 (_ BitVec 32) List!14451) Bool)

(assert (=> b!781339 (= res!528689 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14448))))

(declare-fun res!528690 () Bool)

(assert (=> start!67562 (=> (not res!528690) (not e!434606))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67562 (= res!528690 (validMask!0 mask!3328))))

(assert (=> start!67562 e!434606))

(assert (=> start!67562 true))

(declare-fun array_inv!16170 (array!42620) Bool)

(assert (=> start!67562 (array_inv!16170 a!3186)))

(declare-fun b!781353 () Bool)

(assert (=> b!781353 (= e!434605 e!434607)))

(declare-fun res!528693 () Bool)

(assert (=> b!781353 (=> (not res!528693) (not e!434607))))

(declare-fun lt!348210 () SeekEntryResult!8003)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42620 (_ BitVec 32)) SeekEntryResult!8003)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!781353 (= res!528693 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20396 a!3186) j!159) mask!3328) (select (arr!20396 a!3186) j!159) a!3186 mask!3328) lt!348210))))

(assert (=> b!781353 (= lt!348210 (Intermediate!8003 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!781354 () Bool)

(declare-fun res!528687 () Bool)

(assert (=> b!781354 (=> (not res!528687) (not e!434606))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!781354 (= res!528687 (validKeyInArray!0 (select (arr!20396 a!3186) j!159)))))

(declare-fun b!781355 () Bool)

(declare-fun e!434608 () Bool)

(assert (=> b!781355 (= e!434608 (not e!434609))))

(declare-fun res!528698 () Bool)

(assert (=> b!781355 (=> res!528698 e!434609)))

(declare-fun lt!348205 () SeekEntryResult!8003)

(assert (=> b!781355 (= res!528698 (or (not (is-Intermediate!8003 lt!348205)) (bvslt x!1131 (x!65359 lt!348205)) (not (= x!1131 (x!65359 lt!348205))) (not (= index!1321 (index!34381 lt!348205)))))))

(assert (=> b!781355 e!434611))

(declare-fun res!528691 () Bool)

(assert (=> b!781355 (=> (not res!528691) (not e!434611))))

(declare-fun lt!348209 () SeekEntryResult!8003)

(assert (=> b!781355 (= res!528691 (= lt!348209 lt!348213))))

(assert (=> b!781355 (= lt!348213 (Found!8003 j!159))))

(assert (=> b!781355 (= lt!348209 (seekEntryOrOpen!0 (select (arr!20396 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!781355 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!348206 () Unit!26922)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42620 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26922)

(assert (=> b!781355 (= lt!348206 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!781356 () Bool)

(assert (=> b!781356 (= e!434603 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20396 a!3186) j!159) a!3186 mask!3328) lt!348210))))

(declare-fun b!781357 () Bool)

(assert (=> b!781357 (= e!434603 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20396 a!3186) j!159) a!3186 mask!3328) (Found!8003 j!159)))))

(declare-fun b!781358 () Bool)

(declare-fun res!528694 () Bool)

(assert (=> b!781358 (=> (not res!528694) (not e!434606))))

(assert (=> b!781358 (= res!528694 (validKeyInArray!0 k!2102))))

(declare-fun b!781359 () Bool)

(assert (=> b!781359 (= e!434607 e!434608)))

(declare-fun res!528702 () Bool)

(assert (=> b!781359 (=> (not res!528702) (not e!434608))))

(declare-fun lt!348208 () SeekEntryResult!8003)

(assert (=> b!781359 (= res!528702 (= lt!348208 lt!348205))))

(declare-fun lt!348214 () array!42620)

(assert (=> b!781359 (= lt!348205 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!348207 lt!348214 mask!3328))))

(assert (=> b!781359 (= lt!348208 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!348207 mask!3328) lt!348207 lt!348214 mask!3328))))

(assert (=> b!781359 (= lt!348207 (select (store (arr!20396 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!781359 (= lt!348214 (array!42621 (store (arr!20396 a!3186) i!1173 k!2102) (size!20817 a!3186)))))

(assert (= (and start!67562 res!528690) b!781348))

(assert (= (and b!781348 res!528692) b!781354))

(assert (= (and b!781354 res!528687) b!781358))

(assert (= (and b!781358 res!528694) b!781346))

(assert (= (and b!781346 res!528701) b!781352))

(assert (= (and b!781352 res!528695) b!781340))

(assert (= (and b!781340 res!528697) b!781339))

(assert (= (and b!781339 res!528689) b!781345))

(assert (= (and b!781345 res!528696) b!781353))

(assert (= (and b!781353 res!528693) b!781351))

(assert (= (and b!781351 res!528699) b!781350))

(assert (= (and b!781350 c!86733) b!781356))

(assert (= (and b!781350 (not c!86733)) b!781357))

(assert (= (and b!781350 res!528700) b!781359))

(assert (= (and b!781359 res!528702) b!781355))

(assert (= (and b!781355 res!528691) b!781347))

(assert (= (and b!781355 (not res!528698)) b!781349))

(assert (= (and b!781349 (not res!528703)) b!781342))

(assert (= (and b!781342 (not res!528688)) b!781344))

(assert (= (and b!781344 c!86732) b!781341))

(assert (= (and b!781344 (not c!86732)) b!781343))

(declare-fun m!724435 () Bool)

(assert (=> b!781346 m!724435))

(declare-fun m!724437 () Bool)

(assert (=> b!781344 m!724437))

(declare-fun m!724439 () Bool)

(assert (=> b!781344 m!724439))

(declare-fun m!724441 () Bool)

(assert (=> b!781340 m!724441))

(declare-fun m!724443 () Bool)

(assert (=> b!781359 m!724443))

(declare-fun m!724445 () Bool)

(assert (=> b!781359 m!724445))

(assert (=> b!781359 m!724437))

(declare-fun m!724447 () Bool)

(assert (=> b!781359 m!724447))

(assert (=> b!781359 m!724445))

(declare-fun m!724449 () Bool)

(assert (=> b!781359 m!724449))

(declare-fun m!724451 () Bool)

(assert (=> b!781355 m!724451))

(assert (=> b!781355 m!724451))

(declare-fun m!724453 () Bool)

(assert (=> b!781355 m!724453))

(declare-fun m!724455 () Bool)

(assert (=> b!781355 m!724455))

(declare-fun m!724457 () Bool)

(assert (=> b!781355 m!724457))

(declare-fun m!724459 () Bool)

(assert (=> b!781358 m!724459))

(assert (=> b!781353 m!724451))

(assert (=> b!781353 m!724451))

(declare-fun m!724461 () Bool)

(assert (=> b!781353 m!724461))

(assert (=> b!781353 m!724461))

(assert (=> b!781353 m!724451))

(declare-fun m!724463 () Bool)

(assert (=> b!781353 m!724463))

(assert (=> b!781342 m!724437))

(assert (=> b!781342 m!724439))

(declare-fun m!724465 () Bool)

(assert (=> start!67562 m!724465))

(declare-fun m!724467 () Bool)

(assert (=> start!67562 m!724467))

(declare-fun m!724469 () Bool)

(assert (=> b!781351 m!724469))

(declare-fun m!724471 () Bool)

(assert (=> b!781339 m!724471))

(assert (=> b!781357 m!724451))

(assert (=> b!781357 m!724451))

(declare-fun m!724473 () Bool)

(assert (=> b!781357 m!724473))

(declare-fun m!724475 () Bool)

(assert (=> b!781352 m!724475))

(assert (=> b!781347 m!724451))

(assert (=> b!781347 m!724451))

(declare-fun m!724477 () Bool)

(assert (=> b!781347 m!724477))

(assert (=> b!781356 m!724451))

(assert (=> b!781356 m!724451))

(declare-fun m!724479 () Bool)

(assert (=> b!781356 m!724479))

(assert (=> b!781349 m!724451))

(assert (=> b!781349 m!724451))

(assert (=> b!781349 m!724473))

(assert (=> b!781354 m!724451))

(assert (=> b!781354 m!724451))

(declare-fun m!724481 () Bool)

(assert (=> b!781354 m!724481))

(push 1)

