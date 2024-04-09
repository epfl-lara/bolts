; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65802 () Bool)

(assert start!65802)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41928 0))(
  ( (array!41929 (arr!20074 (Array (_ BitVec 32) (_ BitVec 64))) (size!20495 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41928)

(declare-fun b!756331 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun e!421760 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7681 0))(
  ( (MissingZero!7681 (index!33091 (_ BitVec 32))) (Found!7681 (index!33092 (_ BitVec 32))) (Intermediate!7681 (undefined!8493 Bool) (index!33093 (_ BitVec 32)) (x!64016 (_ BitVec 32))) (Undefined!7681) (MissingVacant!7681 (index!33094 (_ BitVec 32))) )
))
(declare-fun lt!336763 () SeekEntryResult!7681)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41928 (_ BitVec 32)) SeekEntryResult!7681)

(assert (=> b!756331 (= e!421760 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20074 a!3186) j!159) a!3186 mask!3328) lt!336763))))

(declare-fun b!756332 () Bool)

(declare-fun res!511473 () Bool)

(declare-fun e!421767 () Bool)

(assert (=> b!756332 (=> (not res!511473) (not e!421767))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!756332 (= res!511473 (validKeyInArray!0 (select (arr!20074 a!3186) j!159)))))

(declare-fun b!756333 () Bool)

(declare-fun res!511485 () Bool)

(declare-fun e!421768 () Bool)

(assert (=> b!756333 (=> (not res!511485) (not e!421768))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!756333 (= res!511485 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20074 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!756334 () Bool)

(declare-fun res!511478 () Bool)

(declare-fun e!421759 () Bool)

(assert (=> b!756334 (=> (not res!511478) (not e!421759))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!756334 (= res!511478 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20495 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20495 a!3186))))))

(declare-fun b!756335 () Bool)

(declare-fun res!511475 () Bool)

(assert (=> b!756335 (=> (not res!511475) (not e!421767))))

(assert (=> b!756335 (= res!511475 (and (= (size!20495 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20495 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20495 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!756336 () Bool)

(declare-fun res!511472 () Bool)

(assert (=> b!756336 (=> (not res!511472) (not e!421768))))

(declare-fun e!421766 () Bool)

(assert (=> b!756336 (= res!511472 e!421766)))

(declare-fun c!82811 () Bool)

(assert (=> b!756336 (= c!82811 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!756337 () Bool)

(declare-fun res!511488 () Bool)

(declare-fun e!421765 () Bool)

(assert (=> b!756337 (=> (not res!511488) (not e!421765))))

(declare-fun lt!336768 () array!41928)

(declare-fun lt!336759 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41928 (_ BitVec 32)) SeekEntryResult!7681)

(assert (=> b!756337 (= res!511488 (= (seekEntryOrOpen!0 lt!336759 lt!336768 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!336759 lt!336768 mask!3328)))))

(declare-fun b!756338 () Bool)

(declare-fun e!421763 () Bool)

(assert (=> b!756338 (= e!421763 true)))

(assert (=> b!756338 e!421765))

(declare-fun res!511486 () Bool)

(assert (=> b!756338 (=> (not res!511486) (not e!421765))))

(declare-fun lt!336760 () (_ BitVec 64))

(assert (=> b!756338 (= res!511486 (= lt!336760 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!26126 0))(
  ( (Unit!26127) )
))
(declare-fun lt!336769 () Unit!26126)

(declare-fun e!421770 () Unit!26126)

(assert (=> b!756338 (= lt!336769 e!421770)))

(declare-fun c!82812 () Bool)

(assert (=> b!756338 (= c!82812 (= lt!336760 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!756339 () Bool)

(declare-fun Unit!26128 () Unit!26126)

(assert (=> b!756339 (= e!421770 Unit!26128)))

(assert (=> b!756339 false))

(declare-fun b!756340 () Bool)

(assert (=> b!756340 (= e!421759 e!421768)))

(declare-fun res!511480 () Bool)

(assert (=> b!756340 (=> (not res!511480) (not e!421768))))

(declare-fun lt!336767 () SeekEntryResult!7681)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41928 (_ BitVec 32)) SeekEntryResult!7681)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!756340 (= res!511480 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20074 a!3186) j!159) mask!3328) (select (arr!20074 a!3186) j!159) a!3186 mask!3328) lt!336767))))

(assert (=> b!756340 (= lt!336767 (Intermediate!7681 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun res!511476 () Bool)

(assert (=> start!65802 (=> (not res!511476) (not e!421767))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65802 (= res!511476 (validMask!0 mask!3328))))

(assert (=> start!65802 e!421767))

(assert (=> start!65802 true))

(declare-fun array_inv!15848 (array!41928) Bool)

(assert (=> start!65802 (array_inv!15848 a!3186)))

(declare-fun b!756341 () Bool)

(assert (=> b!756341 (= e!421766 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20074 a!3186) j!159) a!3186 mask!3328) (Found!7681 j!159)))))

(declare-fun b!756342 () Bool)

(assert (=> b!756342 (= e!421767 e!421759)))

(declare-fun res!511482 () Bool)

(assert (=> b!756342 (=> (not res!511482) (not e!421759))))

(declare-fun lt!336765 () SeekEntryResult!7681)

(assert (=> b!756342 (= res!511482 (or (= lt!336765 (MissingZero!7681 i!1173)) (= lt!336765 (MissingVacant!7681 i!1173))))))

(declare-fun k0!2102 () (_ BitVec 64))

(assert (=> b!756342 (= lt!336765 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!756343 () Bool)

(declare-fun Unit!26129 () Unit!26126)

(assert (=> b!756343 (= e!421770 Unit!26129)))

(declare-fun b!756344 () Bool)

(declare-fun res!511471 () Bool)

(assert (=> b!756344 (=> (not res!511471) (not e!421759))))

(declare-datatypes ((List!14129 0))(
  ( (Nil!14126) (Cons!14125 (h!15197 (_ BitVec 64)) (t!20452 List!14129)) )
))
(declare-fun arrayNoDuplicates!0 (array!41928 (_ BitVec 32) List!14129) Bool)

(assert (=> b!756344 (= res!511471 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14126))))

(declare-fun b!756345 () Bool)

(declare-fun res!511483 () Bool)

(assert (=> b!756345 (=> (not res!511483) (not e!421767))))

(assert (=> b!756345 (= res!511483 (validKeyInArray!0 k0!2102))))

(declare-fun b!756346 () Bool)

(assert (=> b!756346 (= e!421766 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20074 a!3186) j!159) a!3186 mask!3328) lt!336767))))

(declare-fun b!756347 () Bool)

(declare-fun e!421764 () Bool)

(declare-fun e!421769 () Bool)

(assert (=> b!756347 (= e!421764 e!421769)))

(declare-fun res!511479 () Bool)

(assert (=> b!756347 (=> res!511479 e!421769)))

(declare-fun lt!336761 () SeekEntryResult!7681)

(assert (=> b!756347 (= res!511479 (not (= lt!336761 lt!336763)))))

(assert (=> b!756347 (= lt!336761 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20074 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!756348 () Bool)

(declare-fun res!511474 () Bool)

(assert (=> b!756348 (=> (not res!511474) (not e!421759))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41928 (_ BitVec 32)) Bool)

(assert (=> b!756348 (= res!511474 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!756349 () Bool)

(declare-fun e!421761 () Bool)

(assert (=> b!756349 (= e!421768 e!421761)))

(declare-fun res!511484 () Bool)

(assert (=> b!756349 (=> (not res!511484) (not e!421761))))

(declare-fun lt!336764 () SeekEntryResult!7681)

(declare-fun lt!336770 () SeekEntryResult!7681)

(assert (=> b!756349 (= res!511484 (= lt!336764 lt!336770))))

(assert (=> b!756349 (= lt!336770 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!336759 lt!336768 mask!3328))))

(assert (=> b!756349 (= lt!336764 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!336759 mask!3328) lt!336759 lt!336768 mask!3328))))

(assert (=> b!756349 (= lt!336759 (select (store (arr!20074 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!756349 (= lt!336768 (array!41929 (store (arr!20074 a!3186) i!1173 k0!2102) (size!20495 a!3186)))))

(declare-fun b!756350 () Bool)

(declare-fun res!511477 () Bool)

(assert (=> b!756350 (=> (not res!511477) (not e!421767))))

(declare-fun arrayContainsKey!0 (array!41928 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!756350 (= res!511477 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!756351 () Bool)

(declare-fun lt!336762 () SeekEntryResult!7681)

(assert (=> b!756351 (= e!421765 (= lt!336762 lt!336761))))

(declare-fun b!756352 () Bool)

(assert (=> b!756352 (= e!421769 e!421763)))

(declare-fun res!511470 () Bool)

(assert (=> b!756352 (=> res!511470 e!421763)))

(assert (=> b!756352 (= res!511470 (= lt!336760 lt!336759))))

(assert (=> b!756352 (= lt!336760 (select (store (arr!20074 a!3186) i!1173 k0!2102) index!1321))))

(declare-fun b!756353 () Bool)

(assert (=> b!756353 (= e!421761 (not e!421764))))

(declare-fun res!511487 () Bool)

(assert (=> b!756353 (=> res!511487 e!421764)))

(get-info :version)

(assert (=> b!756353 (= res!511487 (or (not ((_ is Intermediate!7681) lt!336770)) (bvslt x!1131 (x!64016 lt!336770)) (not (= x!1131 (x!64016 lt!336770))) (not (= index!1321 (index!33093 lt!336770)))))))

(assert (=> b!756353 e!421760))

(declare-fun res!511481 () Bool)

(assert (=> b!756353 (=> (not res!511481) (not e!421760))))

(assert (=> b!756353 (= res!511481 (= lt!336762 lt!336763))))

(assert (=> b!756353 (= lt!336763 (Found!7681 j!159))))

(assert (=> b!756353 (= lt!336762 (seekEntryOrOpen!0 (select (arr!20074 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!756353 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!336766 () Unit!26126)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41928 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26126)

(assert (=> b!756353 (= lt!336766 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (= (and start!65802 res!511476) b!756335))

(assert (= (and b!756335 res!511475) b!756332))

(assert (= (and b!756332 res!511473) b!756345))

(assert (= (and b!756345 res!511483) b!756350))

(assert (= (and b!756350 res!511477) b!756342))

(assert (= (and b!756342 res!511482) b!756348))

(assert (= (and b!756348 res!511474) b!756344))

(assert (= (and b!756344 res!511471) b!756334))

(assert (= (and b!756334 res!511478) b!756340))

(assert (= (and b!756340 res!511480) b!756333))

(assert (= (and b!756333 res!511485) b!756336))

(assert (= (and b!756336 c!82811) b!756346))

(assert (= (and b!756336 (not c!82811)) b!756341))

(assert (= (and b!756336 res!511472) b!756349))

(assert (= (and b!756349 res!511484) b!756353))

(assert (= (and b!756353 res!511481) b!756331))

(assert (= (and b!756353 (not res!511487)) b!756347))

(assert (= (and b!756347 (not res!511479)) b!756352))

(assert (= (and b!756352 (not res!511470)) b!756338))

(assert (= (and b!756338 c!82812) b!756339))

(assert (= (and b!756338 (not c!82812)) b!756343))

(assert (= (and b!756338 res!511486) b!756337))

(assert (= (and b!756337 res!511488) b!756351))

(declare-fun m!704381 () Bool)

(assert (=> b!756340 m!704381))

(assert (=> b!756340 m!704381))

(declare-fun m!704383 () Bool)

(assert (=> b!756340 m!704383))

(assert (=> b!756340 m!704383))

(assert (=> b!756340 m!704381))

(declare-fun m!704385 () Bool)

(assert (=> b!756340 m!704385))

(declare-fun m!704387 () Bool)

(assert (=> b!756337 m!704387))

(declare-fun m!704389 () Bool)

(assert (=> b!756337 m!704389))

(declare-fun m!704391 () Bool)

(assert (=> b!756352 m!704391))

(declare-fun m!704393 () Bool)

(assert (=> b!756352 m!704393))

(assert (=> b!756332 m!704381))

(assert (=> b!756332 m!704381))

(declare-fun m!704395 () Bool)

(assert (=> b!756332 m!704395))

(declare-fun m!704397 () Bool)

(assert (=> b!756349 m!704397))

(declare-fun m!704399 () Bool)

(assert (=> b!756349 m!704399))

(assert (=> b!756349 m!704399))

(declare-fun m!704401 () Bool)

(assert (=> b!756349 m!704401))

(assert (=> b!756349 m!704391))

(declare-fun m!704403 () Bool)

(assert (=> b!756349 m!704403))

(declare-fun m!704405 () Bool)

(assert (=> b!756344 m!704405))

(assert (=> b!756346 m!704381))

(assert (=> b!756346 m!704381))

(declare-fun m!704407 () Bool)

(assert (=> b!756346 m!704407))

(declare-fun m!704409 () Bool)

(assert (=> b!756345 m!704409))

(declare-fun m!704411 () Bool)

(assert (=> b!756333 m!704411))

(declare-fun m!704413 () Bool)

(assert (=> start!65802 m!704413))

(declare-fun m!704415 () Bool)

(assert (=> start!65802 m!704415))

(assert (=> b!756341 m!704381))

(assert (=> b!756341 m!704381))

(declare-fun m!704417 () Bool)

(assert (=> b!756341 m!704417))

(assert (=> b!756331 m!704381))

(assert (=> b!756331 m!704381))

(declare-fun m!704419 () Bool)

(assert (=> b!756331 m!704419))

(declare-fun m!704421 () Bool)

(assert (=> b!756350 m!704421))

(declare-fun m!704423 () Bool)

(assert (=> b!756342 m!704423))

(assert (=> b!756353 m!704381))

(assert (=> b!756353 m!704381))

(declare-fun m!704425 () Bool)

(assert (=> b!756353 m!704425))

(declare-fun m!704427 () Bool)

(assert (=> b!756353 m!704427))

(declare-fun m!704429 () Bool)

(assert (=> b!756353 m!704429))

(assert (=> b!756347 m!704381))

(assert (=> b!756347 m!704381))

(assert (=> b!756347 m!704417))

(declare-fun m!704431 () Bool)

(assert (=> b!756348 m!704431))

(check-sat (not b!756331) (not b!756345) (not b!756349) (not b!756332) (not b!756350) (not start!65802) (not b!756353) (not b!756342) (not b!756347) (not b!756344) (not b!756348) (not b!756341) (not b!756346) (not b!756340) (not b!756337))
(check-sat)
