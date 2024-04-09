; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64930 () Bool)

(assert start!64930)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun b!732274 () Bool)

(declare-datatypes ((array!41194 0))(
  ( (array!41195 (arr!19710 (Array (_ BitVec 32) (_ BitVec 64))) (size!20131 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41194)

(declare-datatypes ((SeekEntryResult!7317 0))(
  ( (MissingZero!7317 (index!31635 (_ BitVec 32))) (Found!7317 (index!31636 (_ BitVec 32))) (Intermediate!7317 (undefined!8129 Bool) (index!31637 (_ BitVec 32)) (x!62660 (_ BitVec 32))) (Undefined!7317) (MissingVacant!7317 (index!31638 (_ BitVec 32))) )
))
(declare-fun lt!324517 () SeekEntryResult!7317)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun e!409799 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41194 (_ BitVec 32)) SeekEntryResult!7317)

(assert (=> b!732274 (= e!409799 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19710 a!3186) j!159) a!3186 mask!3328) lt!324517))))

(declare-fun b!732275 () Bool)

(declare-fun res!492012 () Bool)

(declare-fun e!409802 () Bool)

(assert (=> b!732275 (=> (not res!492012) (not e!409802))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41194 (_ BitVec 32)) Bool)

(assert (=> b!732275 (= res!492012 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!732276 () Bool)

(declare-fun res!492017 () Bool)

(assert (=> b!732276 (=> (not res!492017) (not e!409802))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!732276 (= res!492017 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20131 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20131 a!3186))))))

(declare-fun b!732277 () Bool)

(declare-fun res!492011 () Bool)

(assert (=> b!732277 (=> (not res!492011) (not e!409802))))

(declare-datatypes ((List!13765 0))(
  ( (Nil!13762) (Cons!13761 (h!14827 (_ BitVec 64)) (t!20088 List!13765)) )
))
(declare-fun arrayNoDuplicates!0 (array!41194 (_ BitVec 32) List!13765) Bool)

(assert (=> b!732277 (= res!492011 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13762))))

(declare-fun e!409803 () Bool)

(declare-fun b!732278 () Bool)

(assert (=> b!732278 (= e!409803 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19710 a!3186) j!159) a!3186 mask!3328) (Found!7317 j!159)))))

(declare-fun b!732279 () Bool)

(declare-fun e!409796 () Bool)

(assert (=> b!732279 (= e!409796 e!409799)))

(declare-fun res!492023 () Bool)

(assert (=> b!732279 (=> (not res!492023) (not e!409799))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41194 (_ BitVec 32)) SeekEntryResult!7317)

(assert (=> b!732279 (= res!492023 (= (seekEntryOrOpen!0 (select (arr!19710 a!3186) j!159) a!3186 mask!3328) lt!324517))))

(assert (=> b!732279 (= lt!324517 (Found!7317 j!159))))

(declare-fun lt!324521 () (_ BitVec 32))

(declare-fun e!409795 () Bool)

(declare-fun b!732280 () Bool)

(assert (=> b!732280 (= e!409795 (or (bvslt mask!3328 #b00000000000000000000000000000000) (bvslt lt!324521 #b00000000000000000000000000000000) (bvsge lt!324521 (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (bvadd #b00000000000000000000000000000001 mask!3328))))))

(declare-fun b!732281 () Bool)

(declare-fun e!409797 () Bool)

(declare-fun e!409800 () Bool)

(assert (=> b!732281 (= e!409797 e!409800)))

(declare-fun res!492021 () Bool)

(assert (=> b!732281 (=> (not res!492021) (not e!409800))))

(declare-fun lt!324523 () SeekEntryResult!7317)

(declare-fun lt!324520 () SeekEntryResult!7317)

(assert (=> b!732281 (= res!492021 (= lt!324523 lt!324520))))

(declare-fun lt!324522 () array!41194)

(declare-fun lt!324524 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41194 (_ BitVec 32)) SeekEntryResult!7317)

(assert (=> b!732281 (= lt!324520 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!324524 lt!324522 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!732281 (= lt!324523 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!324524 mask!3328) lt!324524 lt!324522 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!732281 (= lt!324524 (select (store (arr!19710 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!732281 (= lt!324522 (array!41195 (store (arr!19710 a!3186) i!1173 k!2102) (size!20131 a!3186)))))

(declare-fun res!492013 () Bool)

(declare-fun e!409801 () Bool)

(assert (=> start!64930 (=> (not res!492013) (not e!409801))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64930 (= res!492013 (validMask!0 mask!3328))))

(assert (=> start!64930 e!409801))

(assert (=> start!64930 true))

(declare-fun array_inv!15484 (array!41194) Bool)

(assert (=> start!64930 (array_inv!15484 a!3186)))

(declare-fun b!732282 () Bool)

(assert (=> b!732282 (= e!409802 e!409797)))

(declare-fun res!492020 () Bool)

(assert (=> b!732282 (=> (not res!492020) (not e!409797))))

(declare-fun lt!324518 () SeekEntryResult!7317)

(assert (=> b!732282 (= res!492020 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19710 a!3186) j!159) mask!3328) (select (arr!19710 a!3186) j!159) a!3186 mask!3328) lt!324518))))

(assert (=> b!732282 (= lt!324518 (Intermediate!7317 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!732283 () Bool)

(declare-fun res!492015 () Bool)

(assert (=> b!732283 (=> (not res!492015) (not e!409801))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!732283 (= res!492015 (validKeyInArray!0 (select (arr!19710 a!3186) j!159)))))

(declare-fun b!732284 () Bool)

(declare-fun res!492007 () Bool)

(assert (=> b!732284 (=> (not res!492007) (not e!409801))))

(assert (=> b!732284 (= res!492007 (validKeyInArray!0 k!2102))))

(declare-fun b!732285 () Bool)

(declare-fun res!492010 () Bool)

(assert (=> b!732285 (=> (not res!492010) (not e!409797))))

(assert (=> b!732285 (= res!492010 e!409803)))

(declare-fun c!80511 () Bool)

(assert (=> b!732285 (= c!80511 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!732286 () Bool)

(assert (=> b!732286 (= e!409803 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19710 a!3186) j!159) a!3186 mask!3328) lt!324518))))

(declare-fun b!732287 () Bool)

(assert (=> b!732287 (= e!409801 e!409802)))

(declare-fun res!492009 () Bool)

(assert (=> b!732287 (=> (not res!492009) (not e!409802))))

(declare-fun lt!324516 () SeekEntryResult!7317)

(assert (=> b!732287 (= res!492009 (or (= lt!324516 (MissingZero!7317 i!1173)) (= lt!324516 (MissingVacant!7317 i!1173))))))

(assert (=> b!732287 (= lt!324516 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!732288 () Bool)

(declare-fun e!409794 () Bool)

(assert (=> b!732288 (= e!409794 e!409795)))

(declare-fun res!492008 () Bool)

(assert (=> b!732288 (=> res!492008 e!409795)))

(assert (=> b!732288 (= res!492008 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!732288 (= lt!324521 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!732289 () Bool)

(assert (=> b!732289 (= e!409800 (not e!409794))))

(declare-fun res!492018 () Bool)

(assert (=> b!732289 (=> res!492018 e!409794)))

(assert (=> b!732289 (= res!492018 (or (not (is-Intermediate!7317 lt!324520)) (bvsge x!1131 (x!62660 lt!324520))))))

(assert (=> b!732289 e!409796))

(declare-fun res!492022 () Bool)

(assert (=> b!732289 (=> (not res!492022) (not e!409796))))

(assert (=> b!732289 (= res!492022 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24952 0))(
  ( (Unit!24953) )
))
(declare-fun lt!324519 () Unit!24952)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41194 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24952)

(assert (=> b!732289 (= lt!324519 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!732290 () Bool)

(declare-fun res!492014 () Bool)

(assert (=> b!732290 (=> (not res!492014) (not e!409797))))

(assert (=> b!732290 (= res!492014 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19710 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!732291 () Bool)

(declare-fun res!492016 () Bool)

(assert (=> b!732291 (=> (not res!492016) (not e!409801))))

(declare-fun arrayContainsKey!0 (array!41194 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!732291 (= res!492016 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!732292 () Bool)

(declare-fun res!492024 () Bool)

(assert (=> b!732292 (=> (not res!492024) (not e!409801))))

(assert (=> b!732292 (= res!492024 (and (= (size!20131 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20131 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20131 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!732293 () Bool)

(declare-fun res!492019 () Bool)

(assert (=> b!732293 (=> res!492019 e!409795)))

(assert (=> b!732293 (= res!492019 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19710 a!3186) j!159) a!3186 mask!3328) (Found!7317 j!159))))))

(assert (= (and start!64930 res!492013) b!732292))

(assert (= (and b!732292 res!492024) b!732283))

(assert (= (and b!732283 res!492015) b!732284))

(assert (= (and b!732284 res!492007) b!732291))

(assert (= (and b!732291 res!492016) b!732287))

(assert (= (and b!732287 res!492009) b!732275))

(assert (= (and b!732275 res!492012) b!732277))

(assert (= (and b!732277 res!492011) b!732276))

(assert (= (and b!732276 res!492017) b!732282))

(assert (= (and b!732282 res!492020) b!732290))

(assert (= (and b!732290 res!492014) b!732285))

(assert (= (and b!732285 c!80511) b!732286))

(assert (= (and b!732285 (not c!80511)) b!732278))

(assert (= (and b!732285 res!492010) b!732281))

(assert (= (and b!732281 res!492021) b!732289))

(assert (= (and b!732289 res!492022) b!732279))

(assert (= (and b!732279 res!492023) b!732274))

(assert (= (and b!732289 (not res!492018)) b!732288))

(assert (= (and b!732288 (not res!492008)) b!732293))

(assert (= (and b!732293 (not res!492019)) b!732280))

(declare-fun m!685441 () Bool)

(assert (=> b!732275 m!685441))

(declare-fun m!685443 () Bool)

(assert (=> b!732281 m!685443))

(declare-fun m!685445 () Bool)

(assert (=> b!732281 m!685445))

(declare-fun m!685447 () Bool)

(assert (=> b!732281 m!685447))

(assert (=> b!732281 m!685443))

(declare-fun m!685449 () Bool)

(assert (=> b!732281 m!685449))

(declare-fun m!685451 () Bool)

(assert (=> b!732281 m!685451))

(declare-fun m!685453 () Bool)

(assert (=> b!732282 m!685453))

(assert (=> b!732282 m!685453))

(declare-fun m!685455 () Bool)

(assert (=> b!732282 m!685455))

(assert (=> b!732282 m!685455))

(assert (=> b!732282 m!685453))

(declare-fun m!685457 () Bool)

(assert (=> b!732282 m!685457))

(declare-fun m!685459 () Bool)

(assert (=> b!732289 m!685459))

(declare-fun m!685461 () Bool)

(assert (=> b!732289 m!685461))

(assert (=> b!732283 m!685453))

(assert (=> b!732283 m!685453))

(declare-fun m!685463 () Bool)

(assert (=> b!732283 m!685463))

(assert (=> b!732286 m!685453))

(assert (=> b!732286 m!685453))

(declare-fun m!685465 () Bool)

(assert (=> b!732286 m!685465))

(declare-fun m!685467 () Bool)

(assert (=> b!732288 m!685467))

(assert (=> b!732293 m!685453))

(assert (=> b!732293 m!685453))

(declare-fun m!685469 () Bool)

(assert (=> b!732293 m!685469))

(declare-fun m!685471 () Bool)

(assert (=> b!732284 m!685471))

(declare-fun m!685473 () Bool)

(assert (=> b!732287 m!685473))

(declare-fun m!685475 () Bool)

(assert (=> b!732291 m!685475))

(declare-fun m!685477 () Bool)

(assert (=> b!732290 m!685477))

(assert (=> b!732279 m!685453))

(assert (=> b!732279 m!685453))

(declare-fun m!685479 () Bool)

(assert (=> b!732279 m!685479))

(declare-fun m!685481 () Bool)

(assert (=> start!64930 m!685481))

(declare-fun m!685483 () Bool)

(assert (=> start!64930 m!685483))

(declare-fun m!685485 () Bool)

(assert (=> b!732277 m!685485))

(assert (=> b!732274 m!685453))

(assert (=> b!732274 m!685453))

(declare-fun m!685487 () Bool)

(assert (=> b!732274 m!685487))

(assert (=> b!732278 m!685453))

(assert (=> b!732278 m!685453))

(assert (=> b!732278 m!685469))

(push 1)

(assert (not b!732279))

(assert (not b!732287))

(assert (not b!732282))

(assert (not b!732274))

(assert (not b!732284))

(assert (not b!732288))

(assert (not b!732278))

(assert (not b!732283))

(assert (not b!732281))

(assert (not b!732286))

(assert (not b!732293))

(assert (not start!64930))

(assert (not b!732277))

(assert (not b!732289))

(assert (not b!732291))

(assert (not b!732275))

(check-sat)

(pop 1)

(push 1)

(check-sat)

