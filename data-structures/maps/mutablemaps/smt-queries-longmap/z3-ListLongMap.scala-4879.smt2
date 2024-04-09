; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!67272 () Bool)

(assert start!67272)

(declare-fun b!777428 () Bool)

(declare-fun res!526025 () Bool)

(declare-fun e!432612 () Bool)

(assert (=> b!777428 (=> res!526025 e!432612)))

(declare-datatypes ((array!42519 0))(
  ( (array!42520 (arr!20350 (Array (_ BitVec 32) (_ BitVec 64))) (size!20771 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42519)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7957 0))(
  ( (MissingZero!7957 (index!34195 (_ BitVec 32))) (Found!7957 (index!34196 (_ BitVec 32))) (Intermediate!7957 (undefined!8769 Bool) (index!34197 (_ BitVec 32)) (x!65166 (_ BitVec 32))) (Undefined!7957) (MissingVacant!7957 (index!34198 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42519 (_ BitVec 32)) SeekEntryResult!7957)

(assert (=> b!777428 (= res!526025 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20350 a!3186) j!159) a!3186 mask!3328) (Found!7957 j!159))))))

(declare-fun b!777429 () Bool)

(declare-fun res!526028 () Bool)

(declare-fun e!432613 () Bool)

(assert (=> b!777429 (=> (not res!526028) (not e!432613))))

(declare-datatypes ((List!14405 0))(
  ( (Nil!14402) (Cons!14401 (h!15512 (_ BitVec 64)) (t!20728 List!14405)) )
))
(declare-fun arrayNoDuplicates!0 (array!42519 (_ BitVec 32) List!14405) Bool)

(assert (=> b!777429 (= res!526028 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14402))))

(declare-fun b!777430 () Bool)

(declare-fun e!432609 () Bool)

(assert (=> b!777430 (= e!432609 (not e!432612))))

(declare-fun res!526018 () Bool)

(assert (=> b!777430 (=> res!526018 e!432612)))

(declare-fun lt!346382 () SeekEntryResult!7957)

(get-info :version)

(assert (=> b!777430 (= res!526018 (or (not ((_ is Intermediate!7957) lt!346382)) (bvslt x!1131 (x!65166 lt!346382)) (not (= x!1131 (x!65166 lt!346382))) (not (= index!1321 (index!34197 lt!346382)))))))

(declare-fun e!432611 () Bool)

(assert (=> b!777430 e!432611))

(declare-fun res!526013 () Bool)

(assert (=> b!777430 (=> (not res!526013) (not e!432611))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42519 (_ BitVec 32)) Bool)

(assert (=> b!777430 (= res!526013 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26808 0))(
  ( (Unit!26809) )
))
(declare-fun lt!346383 () Unit!26808)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42519 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26808)

(assert (=> b!777430 (= lt!346383 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!777431 () Bool)

(declare-fun e!432606 () Bool)

(assert (=> b!777431 (= e!432611 e!432606)))

(declare-fun res!526029 () Bool)

(assert (=> b!777431 (=> (not res!526029) (not e!432606))))

(declare-fun lt!346381 () SeekEntryResult!7957)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42519 (_ BitVec 32)) SeekEntryResult!7957)

(assert (=> b!777431 (= res!526029 (= (seekEntryOrOpen!0 (select (arr!20350 a!3186) j!159) a!3186 mask!3328) lt!346381))))

(assert (=> b!777431 (= lt!346381 (Found!7957 j!159))))

(declare-fun b!777432 () Bool)

(declare-fun res!526016 () Bool)

(declare-fun e!432607 () Bool)

(assert (=> b!777432 (=> (not res!526016) (not e!432607))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42519 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!777432 (= res!526016 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun res!526020 () Bool)

(assert (=> start!67272 (=> (not res!526020) (not e!432607))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67272 (= res!526020 (validMask!0 mask!3328))))

(assert (=> start!67272 e!432607))

(assert (=> start!67272 true))

(declare-fun array_inv!16124 (array!42519) Bool)

(assert (=> start!67272 (array_inv!16124 a!3186)))

(declare-fun b!777433 () Bool)

(declare-fun res!526014 () Bool)

(declare-fun e!432610 () Bool)

(assert (=> b!777433 (=> (not res!526014) (not e!432610))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!777433 (= res!526014 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20350 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!777434 () Bool)

(declare-fun res!526015 () Bool)

(assert (=> b!777434 (=> (not res!526015) (not e!432613))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!777434 (= res!526015 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20771 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20771 a!3186))))))

(declare-fun b!777435 () Bool)

(assert (=> b!777435 (= e!432612 true)))

(declare-fun lt!346387 () array!42519)

(declare-fun lt!346379 () SeekEntryResult!7957)

(declare-fun lt!346384 () (_ BitVec 64))

(assert (=> b!777435 (= lt!346379 (seekEntryOrOpen!0 lt!346384 lt!346387 mask!3328))))

(declare-fun b!777436 () Bool)

(declare-fun e!432605 () Bool)

(assert (=> b!777436 (= e!432605 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20350 a!3186) j!159) a!3186 mask!3328) (Found!7957 j!159)))))

(declare-fun b!777437 () Bool)

(declare-fun res!526017 () Bool)

(assert (=> b!777437 (=> (not res!526017) (not e!432607))))

(assert (=> b!777437 (= res!526017 (and (= (size!20771 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20771 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20771 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!777438 () Bool)

(assert (=> b!777438 (= e!432606 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20350 a!3186) j!159) a!3186 mask!3328) lt!346381))))

(declare-fun b!777439 () Bool)

(declare-fun res!526023 () Bool)

(assert (=> b!777439 (=> (not res!526023) (not e!432610))))

(assert (=> b!777439 (= res!526023 e!432605)))

(declare-fun c!86109 () Bool)

(assert (=> b!777439 (= c!86109 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!777440 () Bool)

(declare-fun res!526021 () Bool)

(assert (=> b!777440 (=> (not res!526021) (not e!432613))))

(assert (=> b!777440 (= res!526021 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!777441 () Bool)

(declare-fun lt!346385 () SeekEntryResult!7957)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42519 (_ BitVec 32)) SeekEntryResult!7957)

(assert (=> b!777441 (= e!432605 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20350 a!3186) j!159) a!3186 mask!3328) lt!346385))))

(declare-fun b!777442 () Bool)

(declare-fun res!526019 () Bool)

(assert (=> b!777442 (=> res!526019 e!432612)))

(assert (=> b!777442 (= res!526019 (or (not (= (select (store (arr!20350 a!3186) i!1173 k0!2102) index!1321) lt!346384)) (undefined!8769 lt!346382)))))

(declare-fun b!777443 () Bool)

(declare-fun res!526030 () Bool)

(assert (=> b!777443 (=> (not res!526030) (not e!432607))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!777443 (= res!526030 (validKeyInArray!0 k0!2102))))

(declare-fun b!777444 () Bool)

(assert (=> b!777444 (= e!432613 e!432610)))

(declare-fun res!526026 () Bool)

(assert (=> b!777444 (=> (not res!526026) (not e!432610))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!777444 (= res!526026 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20350 a!3186) j!159) mask!3328) (select (arr!20350 a!3186) j!159) a!3186 mask!3328) lt!346385))))

(assert (=> b!777444 (= lt!346385 (Intermediate!7957 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!777445 () Bool)

(declare-fun res!526024 () Bool)

(assert (=> b!777445 (=> (not res!526024) (not e!432607))))

(assert (=> b!777445 (= res!526024 (validKeyInArray!0 (select (arr!20350 a!3186) j!159)))))

(declare-fun b!777446 () Bool)

(assert (=> b!777446 (= e!432607 e!432613)))

(declare-fun res!526022 () Bool)

(assert (=> b!777446 (=> (not res!526022) (not e!432613))))

(declare-fun lt!346386 () SeekEntryResult!7957)

(assert (=> b!777446 (= res!526022 (or (= lt!346386 (MissingZero!7957 i!1173)) (= lt!346386 (MissingVacant!7957 i!1173))))))

(assert (=> b!777446 (= lt!346386 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!777447 () Bool)

(assert (=> b!777447 (= e!432610 e!432609)))

(declare-fun res!526027 () Bool)

(assert (=> b!777447 (=> (not res!526027) (not e!432609))))

(declare-fun lt!346380 () SeekEntryResult!7957)

(assert (=> b!777447 (= res!526027 (= lt!346380 lt!346382))))

(assert (=> b!777447 (= lt!346382 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!346384 lt!346387 mask!3328))))

(assert (=> b!777447 (= lt!346380 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!346384 mask!3328) lt!346384 lt!346387 mask!3328))))

(assert (=> b!777447 (= lt!346384 (select (store (arr!20350 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!777447 (= lt!346387 (array!42520 (store (arr!20350 a!3186) i!1173 k0!2102) (size!20771 a!3186)))))

(assert (= (and start!67272 res!526020) b!777437))

(assert (= (and b!777437 res!526017) b!777445))

(assert (= (and b!777445 res!526024) b!777443))

(assert (= (and b!777443 res!526030) b!777432))

(assert (= (and b!777432 res!526016) b!777446))

(assert (= (and b!777446 res!526022) b!777440))

(assert (= (and b!777440 res!526021) b!777429))

(assert (= (and b!777429 res!526028) b!777434))

(assert (= (and b!777434 res!526015) b!777444))

(assert (= (and b!777444 res!526026) b!777433))

(assert (= (and b!777433 res!526014) b!777439))

(assert (= (and b!777439 c!86109) b!777441))

(assert (= (and b!777439 (not c!86109)) b!777436))

(assert (= (and b!777439 res!526023) b!777447))

(assert (= (and b!777447 res!526027) b!777430))

(assert (= (and b!777430 res!526013) b!777431))

(assert (= (and b!777431 res!526029) b!777438))

(assert (= (and b!777430 (not res!526018)) b!777428))

(assert (= (and b!777428 (not res!526025)) b!777442))

(assert (= (and b!777442 (not res!526019)) b!777435))

(declare-fun m!721353 () Bool)

(assert (=> b!777431 m!721353))

(assert (=> b!777431 m!721353))

(declare-fun m!721355 () Bool)

(assert (=> b!777431 m!721355))

(assert (=> b!777441 m!721353))

(assert (=> b!777441 m!721353))

(declare-fun m!721357 () Bool)

(assert (=> b!777441 m!721357))

(declare-fun m!721359 () Bool)

(assert (=> b!777446 m!721359))

(declare-fun m!721361 () Bool)

(assert (=> b!777443 m!721361))

(declare-fun m!721363 () Bool)

(assert (=> b!777429 m!721363))

(declare-fun m!721365 () Bool)

(assert (=> start!67272 m!721365))

(declare-fun m!721367 () Bool)

(assert (=> start!67272 m!721367))

(assert (=> b!777438 m!721353))

(assert (=> b!777438 m!721353))

(declare-fun m!721369 () Bool)

(assert (=> b!777438 m!721369))

(declare-fun m!721371 () Bool)

(assert (=> b!777440 m!721371))

(assert (=> b!777436 m!721353))

(assert (=> b!777436 m!721353))

(declare-fun m!721373 () Bool)

(assert (=> b!777436 m!721373))

(declare-fun m!721375 () Bool)

(assert (=> b!777430 m!721375))

(declare-fun m!721377 () Bool)

(assert (=> b!777430 m!721377))

(declare-fun m!721379 () Bool)

(assert (=> b!777433 m!721379))

(declare-fun m!721381 () Bool)

(assert (=> b!777432 m!721381))

(declare-fun m!721383 () Bool)

(assert (=> b!777442 m!721383))

(declare-fun m!721385 () Bool)

(assert (=> b!777442 m!721385))

(assert (=> b!777445 m!721353))

(assert (=> b!777445 m!721353))

(declare-fun m!721387 () Bool)

(assert (=> b!777445 m!721387))

(declare-fun m!721389 () Bool)

(assert (=> b!777447 m!721389))

(declare-fun m!721391 () Bool)

(assert (=> b!777447 m!721391))

(assert (=> b!777447 m!721383))

(assert (=> b!777447 m!721389))

(declare-fun m!721393 () Bool)

(assert (=> b!777447 m!721393))

(declare-fun m!721395 () Bool)

(assert (=> b!777447 m!721395))

(assert (=> b!777428 m!721353))

(assert (=> b!777428 m!721353))

(assert (=> b!777428 m!721373))

(assert (=> b!777444 m!721353))

(assert (=> b!777444 m!721353))

(declare-fun m!721397 () Bool)

(assert (=> b!777444 m!721397))

(assert (=> b!777444 m!721397))

(assert (=> b!777444 m!721353))

(declare-fun m!721399 () Bool)

(assert (=> b!777444 m!721399))

(declare-fun m!721401 () Bool)

(assert (=> b!777435 m!721401))

(check-sat (not b!777432) (not b!777428) (not b!777443) (not b!777445) (not start!67272) (not b!777446) (not b!777444) (not b!777441) (not b!777429) (not b!777436) (not b!777440) (not b!777430) (not b!777431) (not b!777435) (not b!777447) (not b!777438))
(check-sat)
