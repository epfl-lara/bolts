; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65262 () Bool)

(assert start!65262)

(declare-fun b!739434 () Bool)

(declare-fun res!497285 () Bool)

(declare-fun e!413494 () Bool)

(assert (=> b!739434 (=> (not res!497285) (not e!413494))))

(declare-fun e!413497 () Bool)

(assert (=> b!739434 (= res!497285 e!413497)))

(declare-fun c!81459 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!739434 (= c!81459 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!739435 () Bool)

(declare-fun res!497292 () Bool)

(assert (=> b!739435 (=> (not res!497292) (not e!413494))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41388 0))(
  ( (array!41389 (arr!19804 (Array (_ BitVec 32) (_ BitVec 64))) (size!20225 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41388)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!739435 (= res!497292 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19804 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!739436 () Bool)

(declare-fun res!497298 () Bool)

(declare-fun e!413496 () Bool)

(assert (=> b!739436 (=> (not res!497298) (not e!413496))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!739436 (= res!497298 (validKeyInArray!0 (select (arr!19804 a!3186) j!159)))))

(declare-fun b!739437 () Bool)

(declare-fun res!497291 () Bool)

(assert (=> b!739437 (=> (not res!497291) (not e!413496))))

(declare-fun k0!2102 () (_ BitVec 64))

(assert (=> b!739437 (= res!497291 (validKeyInArray!0 k0!2102))))

(declare-datatypes ((SeekEntryResult!7411 0))(
  ( (MissingZero!7411 (index!32011 (_ BitVec 32))) (Found!7411 (index!32012 (_ BitVec 32))) (Intermediate!7411 (undefined!8223 Bool) (index!32013 (_ BitVec 32)) (x!63026 (_ BitVec 32))) (Undefined!7411) (MissingVacant!7411 (index!32014 (_ BitVec 32))) )
))
(declare-fun lt!328383 () SeekEntryResult!7411)

(declare-fun e!413489 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun lt!328387 () (_ BitVec 32))

(declare-fun b!739438 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41388 (_ BitVec 32)) SeekEntryResult!7411)

(assert (=> b!739438 (= e!413489 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328387 (select (arr!19804 a!3186) j!159) a!3186 mask!3328) lt!328383)))))

(declare-fun b!739439 () Bool)

(declare-fun e!413495 () Bool)

(declare-fun e!413492 () Bool)

(assert (=> b!739439 (= e!413495 e!413492)))

(declare-fun res!497281 () Bool)

(assert (=> b!739439 (=> res!497281 e!413492)))

(assert (=> b!739439 (= res!497281 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt lt!328387 #b00000000000000000000000000000000) (bvsge lt!328387 (size!20225 a!3186))))))

(declare-datatypes ((Unit!25262 0))(
  ( (Unit!25263) )
))
(declare-fun lt!328392 () Unit!25262)

(declare-fun e!413493 () Unit!25262)

(assert (=> b!739439 (= lt!328392 e!413493)))

(declare-fun c!81457 () Bool)

(declare-fun lt!328394 () Bool)

(assert (=> b!739439 (= c!81457 lt!328394)))

(assert (=> b!739439 (= lt!328394 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!739439 (= lt!328387 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!739440 () Bool)

(declare-fun Unit!25264 () Unit!25262)

(assert (=> b!739440 (= e!413493 Unit!25264)))

(declare-fun lt!328384 () SeekEntryResult!7411)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41388 (_ BitVec 32)) SeekEntryResult!7411)

(assert (=> b!739440 (= lt!328384 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19804 a!3186) j!159) a!3186 mask!3328))))

(declare-fun lt!328382 () SeekEntryResult!7411)

(assert (=> b!739440 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328387 resIntermediateIndex!5 (select (arr!19804 a!3186) j!159) a!3186 mask!3328) lt!328382)))

(declare-fun b!739441 () Bool)

(declare-fun e!413490 () Bool)

(assert (=> b!739441 (= e!413490 (not e!413495))))

(declare-fun res!497294 () Bool)

(assert (=> b!739441 (=> res!497294 e!413495)))

(declare-fun lt!328393 () SeekEntryResult!7411)

(get-info :version)

(assert (=> b!739441 (= res!497294 (or (not ((_ is Intermediate!7411) lt!328393)) (bvsge x!1131 (x!63026 lt!328393))))))

(assert (=> b!739441 (= lt!328382 (Found!7411 j!159))))

(declare-fun e!413499 () Bool)

(assert (=> b!739441 e!413499))

(declare-fun res!497296 () Bool)

(assert (=> b!739441 (=> (not res!497296) (not e!413499))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41388 (_ BitVec 32)) Bool)

(assert (=> b!739441 (= res!497296 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!328386 () Unit!25262)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41388 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25262)

(assert (=> b!739441 (= lt!328386 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!739442 () Bool)

(declare-fun Unit!25265 () Unit!25262)

(assert (=> b!739442 (= e!413493 Unit!25265)))

(assert (=> b!739442 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328387 (select (arr!19804 a!3186) j!159) a!3186 mask!3328) lt!328383)))

(declare-fun b!739443 () Bool)

(declare-fun res!497297 () Bool)

(declare-fun e!413488 () Bool)

(assert (=> b!739443 (=> (not res!497297) (not e!413488))))

(assert (=> b!739443 (= res!497297 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!739444 () Bool)

(assert (=> b!739444 (= e!413497 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19804 a!3186) j!159) a!3186 mask!3328) lt!328383))))

(declare-fun b!739445 () Bool)

(assert (=> b!739445 (= e!413489 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328387 resIntermediateIndex!5 (select (arr!19804 a!3186) j!159) a!3186 mask!3328) lt!328382)))))

(declare-fun b!739446 () Bool)

(declare-fun res!497295 () Bool)

(assert (=> b!739446 (=> (not res!497295) (not e!413488))))

(assert (=> b!739446 (= res!497295 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20225 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20225 a!3186))))))

(declare-fun b!739447 () Bool)

(assert (=> b!739447 (= e!413494 e!413490)))

(declare-fun res!497282 () Bool)

(assert (=> b!739447 (=> (not res!497282) (not e!413490))))

(declare-fun lt!328391 () SeekEntryResult!7411)

(assert (=> b!739447 (= res!497282 (= lt!328391 lt!328393))))

(declare-fun lt!328390 () array!41388)

(declare-fun lt!328385 () (_ BitVec 64))

(assert (=> b!739447 (= lt!328393 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!328385 lt!328390 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!739447 (= lt!328391 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!328385 mask!3328) lt!328385 lt!328390 mask!3328))))

(assert (=> b!739447 (= lt!328385 (select (store (arr!19804 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!739447 (= lt!328390 (array!41389 (store (arr!19804 a!3186) i!1173 k0!2102) (size!20225 a!3186)))))

(declare-fun b!739448 () Bool)

(assert (=> b!739448 (= e!413488 e!413494)))

(declare-fun res!497293 () Bool)

(assert (=> b!739448 (=> (not res!497293) (not e!413494))))

(assert (=> b!739448 (= res!497293 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19804 a!3186) j!159) mask!3328) (select (arr!19804 a!3186) j!159) a!3186 mask!3328) lt!328383))))

(assert (=> b!739448 (= lt!328383 (Intermediate!7411 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!739449 () Bool)

(assert (=> b!739449 (= e!413492 true)))

(declare-fun lt!328389 () SeekEntryResult!7411)

(assert (=> b!739449 (= lt!328389 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328387 lt!328385 lt!328390 mask!3328))))

(declare-fun b!739450 () Bool)

(declare-fun res!497288 () Bool)

(assert (=> b!739450 (=> (not res!497288) (not e!413496))))

(assert (=> b!739450 (= res!497288 (and (= (size!20225 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20225 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20225 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!739451 () Bool)

(declare-fun res!497284 () Bool)

(assert (=> b!739451 (=> res!497284 e!413492)))

(assert (=> b!739451 (= res!497284 e!413489)))

(declare-fun c!81458 () Bool)

(assert (=> b!739451 (= c!81458 lt!328394)))

(declare-fun lt!328381 () SeekEntryResult!7411)

(declare-fun e!413491 () Bool)

(declare-fun b!739452 () Bool)

(assert (=> b!739452 (= e!413491 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19804 a!3186) j!159) a!3186 mask!3328) lt!328381))))

(declare-fun b!739453 () Bool)

(assert (=> b!739453 (= e!413499 e!413491)))

(declare-fun res!497286 () Bool)

(assert (=> b!739453 (=> (not res!497286) (not e!413491))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41388 (_ BitVec 32)) SeekEntryResult!7411)

(assert (=> b!739453 (= res!497286 (= (seekEntryOrOpen!0 (select (arr!19804 a!3186) j!159) a!3186 mask!3328) lt!328381))))

(assert (=> b!739453 (= lt!328381 (Found!7411 j!159))))

(declare-fun b!739454 () Bool)

(declare-fun res!497290 () Bool)

(assert (=> b!739454 (=> (not res!497290) (not e!413488))))

(declare-datatypes ((List!13859 0))(
  ( (Nil!13856) (Cons!13855 (h!14927 (_ BitVec 64)) (t!20182 List!13859)) )
))
(declare-fun arrayNoDuplicates!0 (array!41388 (_ BitVec 32) List!13859) Bool)

(assert (=> b!739454 (= res!497290 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13856))))

(declare-fun b!739455 () Bool)

(assert (=> b!739455 (= e!413497 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19804 a!3186) j!159) a!3186 mask!3328) (Found!7411 j!159)))))

(declare-fun res!497287 () Bool)

(assert (=> start!65262 (=> (not res!497287) (not e!413496))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65262 (= res!497287 (validMask!0 mask!3328))))

(assert (=> start!65262 e!413496))

(assert (=> start!65262 true))

(declare-fun array_inv!15578 (array!41388) Bool)

(assert (=> start!65262 (array_inv!15578 a!3186)))

(declare-fun b!739456 () Bool)

(assert (=> b!739456 (= e!413496 e!413488)))

(declare-fun res!497289 () Bool)

(assert (=> b!739456 (=> (not res!497289) (not e!413488))))

(declare-fun lt!328388 () SeekEntryResult!7411)

(assert (=> b!739456 (= res!497289 (or (= lt!328388 (MissingZero!7411 i!1173)) (= lt!328388 (MissingVacant!7411 i!1173))))))

(assert (=> b!739456 (= lt!328388 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!739457 () Bool)

(declare-fun res!497283 () Bool)

(assert (=> b!739457 (=> (not res!497283) (not e!413496))))

(declare-fun arrayContainsKey!0 (array!41388 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!739457 (= res!497283 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(assert (= (and start!65262 res!497287) b!739450))

(assert (= (and b!739450 res!497288) b!739436))

(assert (= (and b!739436 res!497298) b!739437))

(assert (= (and b!739437 res!497291) b!739457))

(assert (= (and b!739457 res!497283) b!739456))

(assert (= (and b!739456 res!497289) b!739443))

(assert (= (and b!739443 res!497297) b!739454))

(assert (= (and b!739454 res!497290) b!739446))

(assert (= (and b!739446 res!497295) b!739448))

(assert (= (and b!739448 res!497293) b!739435))

(assert (= (and b!739435 res!497292) b!739434))

(assert (= (and b!739434 c!81459) b!739444))

(assert (= (and b!739434 (not c!81459)) b!739455))

(assert (= (and b!739434 res!497285) b!739447))

(assert (= (and b!739447 res!497282) b!739441))

(assert (= (and b!739441 res!497296) b!739453))

(assert (= (and b!739453 res!497286) b!739452))

(assert (= (and b!739441 (not res!497294)) b!739439))

(assert (= (and b!739439 c!81457) b!739442))

(assert (= (and b!739439 (not c!81457)) b!739440))

(assert (= (and b!739439 (not res!497281)) b!739451))

(assert (= (and b!739451 c!81458) b!739438))

(assert (= (and b!739451 (not c!81458)) b!739445))

(assert (= (and b!739451 (not res!497284)) b!739449))

(declare-fun m!690883 () Bool)

(assert (=> b!739447 m!690883))

(declare-fun m!690885 () Bool)

(assert (=> b!739447 m!690885))

(declare-fun m!690887 () Bool)

(assert (=> b!739447 m!690887))

(declare-fun m!690889 () Bool)

(assert (=> b!739447 m!690889))

(assert (=> b!739447 m!690883))

(declare-fun m!690891 () Bool)

(assert (=> b!739447 m!690891))

(declare-fun m!690893 () Bool)

(assert (=> b!739448 m!690893))

(assert (=> b!739448 m!690893))

(declare-fun m!690895 () Bool)

(assert (=> b!739448 m!690895))

(assert (=> b!739448 m!690895))

(assert (=> b!739448 m!690893))

(declare-fun m!690897 () Bool)

(assert (=> b!739448 m!690897))

(assert (=> b!739436 m!690893))

(assert (=> b!739436 m!690893))

(declare-fun m!690899 () Bool)

(assert (=> b!739436 m!690899))

(declare-fun m!690901 () Bool)

(assert (=> b!739449 m!690901))

(assert (=> b!739452 m!690893))

(assert (=> b!739452 m!690893))

(declare-fun m!690903 () Bool)

(assert (=> b!739452 m!690903))

(assert (=> b!739455 m!690893))

(assert (=> b!739455 m!690893))

(declare-fun m!690905 () Bool)

(assert (=> b!739455 m!690905))

(declare-fun m!690907 () Bool)

(assert (=> start!65262 m!690907))

(declare-fun m!690909 () Bool)

(assert (=> start!65262 m!690909))

(declare-fun m!690911 () Bool)

(assert (=> b!739454 m!690911))

(assert (=> b!739442 m!690893))

(assert (=> b!739442 m!690893))

(declare-fun m!690913 () Bool)

(assert (=> b!739442 m!690913))

(declare-fun m!690915 () Bool)

(assert (=> b!739441 m!690915))

(declare-fun m!690917 () Bool)

(assert (=> b!739441 m!690917))

(assert (=> b!739444 m!690893))

(assert (=> b!739444 m!690893))

(declare-fun m!690919 () Bool)

(assert (=> b!739444 m!690919))

(declare-fun m!690921 () Bool)

(assert (=> b!739443 m!690921))

(declare-fun m!690923 () Bool)

(assert (=> b!739439 m!690923))

(declare-fun m!690925 () Bool)

(assert (=> b!739435 m!690925))

(assert (=> b!739453 m!690893))

(assert (=> b!739453 m!690893))

(declare-fun m!690927 () Bool)

(assert (=> b!739453 m!690927))

(declare-fun m!690929 () Bool)

(assert (=> b!739456 m!690929))

(assert (=> b!739438 m!690893))

(assert (=> b!739438 m!690893))

(assert (=> b!739438 m!690913))

(declare-fun m!690931 () Bool)

(assert (=> b!739437 m!690931))

(assert (=> b!739440 m!690893))

(assert (=> b!739440 m!690893))

(assert (=> b!739440 m!690905))

(assert (=> b!739440 m!690893))

(declare-fun m!690933 () Bool)

(assert (=> b!739440 m!690933))

(assert (=> b!739445 m!690893))

(assert (=> b!739445 m!690893))

(assert (=> b!739445 m!690933))

(declare-fun m!690935 () Bool)

(assert (=> b!739457 m!690935))

(check-sat (not b!739441) (not b!739445) (not b!739456) (not b!739437) (not b!739454) (not b!739447) (not b!739457) (not b!739448) (not b!739453) (not b!739452) (not b!739443) (not b!739449) (not b!739455) (not b!739444) (not b!739442) (not b!739440) (not start!65262) (not b!739439) (not b!739438) (not b!739436))
(check-sat)
