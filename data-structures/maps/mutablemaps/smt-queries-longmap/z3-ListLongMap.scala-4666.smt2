; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64932 () Bool)

(assert start!64932)

(declare-fun b!732334 () Bool)

(declare-fun res!492073 () Bool)

(declare-fun e!409830 () Bool)

(assert (=> b!732334 (=> (not res!492073) (not e!409830))))

(declare-datatypes ((array!41196 0))(
  ( (array!41197 (arr!19711 (Array (_ BitVec 32) (_ BitVec 64))) (size!20132 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41196)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41196 (_ BitVec 32)) Bool)

(assert (=> b!732334 (= res!492073 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!732335 () Bool)

(declare-fun res!492070 () Bool)

(declare-fun e!409832 () Bool)

(assert (=> b!732335 (=> res!492070 e!409832)))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7318 0))(
  ( (MissingZero!7318 (index!31639 (_ BitVec 32))) (Found!7318 (index!31640 (_ BitVec 32))) (Intermediate!7318 (undefined!8130 Bool) (index!31641 (_ BitVec 32)) (x!62661 (_ BitVec 32))) (Undefined!7318) (MissingVacant!7318 (index!31642 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41196 (_ BitVec 32)) SeekEntryResult!7318)

(assert (=> b!732335 (= res!492070 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19711 a!3186) j!159) a!3186 mask!3328) (Found!7318 j!159))))))

(declare-fun b!732336 () Bool)

(declare-fun e!409827 () Bool)

(declare-fun e!409828 () Bool)

(assert (=> b!732336 (= e!409827 e!409828)))

(declare-fun res!492061 () Bool)

(assert (=> b!732336 (=> (not res!492061) (not e!409828))))

(declare-fun lt!324543 () SeekEntryResult!7318)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41196 (_ BitVec 32)) SeekEntryResult!7318)

(assert (=> b!732336 (= res!492061 (= (seekEntryOrOpen!0 (select (arr!19711 a!3186) j!159) a!3186 mask!3328) lt!324543))))

(assert (=> b!732336 (= lt!324543 (Found!7318 j!159))))

(declare-fun b!732337 () Bool)

(declare-fun res!492063 () Bool)

(declare-fun e!409829 () Bool)

(assert (=> b!732337 (=> (not res!492063) (not e!409829))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!732337 (= res!492063 (validKeyInArray!0 (select (arr!19711 a!3186) j!159)))))

(declare-fun b!732338 () Bool)

(declare-fun e!409824 () Bool)

(assert (=> b!732338 (= e!409830 e!409824)))

(declare-fun res!492066 () Bool)

(assert (=> b!732338 (=> (not res!492066) (not e!409824))))

(declare-fun lt!324547 () SeekEntryResult!7318)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41196 (_ BitVec 32)) SeekEntryResult!7318)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!732338 (= res!492066 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19711 a!3186) j!159) mask!3328) (select (arr!19711 a!3186) j!159) a!3186 mask!3328) lt!324547))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!732338 (= lt!324547 (Intermediate!7318 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!732339 () Bool)

(declare-fun res!492068 () Bool)

(assert (=> b!732339 (=> (not res!492068) (not e!409829))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!732339 (= res!492068 (and (= (size!20132 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20132 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20132 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!732340 () Bool)

(declare-fun e!409826 () Bool)

(assert (=> b!732340 (= e!409826 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19711 a!3186) j!159) a!3186 mask!3328) (Found!7318 j!159)))))

(declare-fun b!732341 () Bool)

(declare-fun e!409831 () Bool)

(declare-fun e!409825 () Bool)

(assert (=> b!732341 (= e!409831 (not e!409825))))

(declare-fun res!492076 () Bool)

(assert (=> b!732341 (=> res!492076 e!409825)))

(declare-fun lt!324550 () SeekEntryResult!7318)

(get-info :version)

(assert (=> b!732341 (= res!492076 (or (not ((_ is Intermediate!7318) lt!324550)) (bvsge x!1131 (x!62661 lt!324550))))))

(assert (=> b!732341 e!409827))

(declare-fun res!492074 () Bool)

(assert (=> b!732341 (=> (not res!492074) (not e!409827))))

(assert (=> b!732341 (= res!492074 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24954 0))(
  ( (Unit!24955) )
))
(declare-fun lt!324551 () Unit!24954)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41196 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24954)

(assert (=> b!732341 (= lt!324551 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun lt!324544 () (_ BitVec 32))

(declare-fun b!732343 () Bool)

(assert (=> b!732343 (= e!409832 (or (bvslt mask!3328 #b00000000000000000000000000000000) (bvslt lt!324544 #b00000000000000000000000000000000) (bvsge lt!324544 (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (bvadd #b00000000000000000000000000000001 mask!3328))))))

(declare-fun b!732344 () Bool)

(assert (=> b!732344 (= e!409824 e!409831)))

(declare-fun res!492078 () Bool)

(assert (=> b!732344 (=> (not res!492078) (not e!409831))))

(declare-fun lt!324546 () SeekEntryResult!7318)

(assert (=> b!732344 (= res!492078 (= lt!324546 lt!324550))))

(declare-fun lt!324549 () array!41196)

(declare-fun lt!324548 () (_ BitVec 64))

(assert (=> b!732344 (= lt!324550 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!324548 lt!324549 mask!3328))))

(assert (=> b!732344 (= lt!324546 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!324548 mask!3328) lt!324548 lt!324549 mask!3328))))

(declare-fun k0!2102 () (_ BitVec 64))

(assert (=> b!732344 (= lt!324548 (select (store (arr!19711 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!732344 (= lt!324549 (array!41197 (store (arr!19711 a!3186) i!1173 k0!2102) (size!20132 a!3186)))))

(declare-fun b!732345 () Bool)

(assert (=> b!732345 (= e!409829 e!409830)))

(declare-fun res!492075 () Bool)

(assert (=> b!732345 (=> (not res!492075) (not e!409830))))

(declare-fun lt!324545 () SeekEntryResult!7318)

(assert (=> b!732345 (= res!492075 (or (= lt!324545 (MissingZero!7318 i!1173)) (= lt!324545 (MissingVacant!7318 i!1173))))))

(assert (=> b!732345 (= lt!324545 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!732346 () Bool)

(declare-fun res!492072 () Bool)

(assert (=> b!732346 (=> (not res!492072) (not e!409829))))

(declare-fun arrayContainsKey!0 (array!41196 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!732346 (= res!492072 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!732347 () Bool)

(declare-fun res!492077 () Bool)

(assert (=> b!732347 (=> (not res!492077) (not e!409830))))

(assert (=> b!732347 (= res!492077 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20132 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20132 a!3186))))))

(declare-fun b!732348 () Bool)

(declare-fun res!492065 () Bool)

(assert (=> b!732348 (=> (not res!492065) (not e!409829))))

(assert (=> b!732348 (= res!492065 (validKeyInArray!0 k0!2102))))

(declare-fun b!732349 () Bool)

(declare-fun res!492062 () Bool)

(assert (=> b!732349 (=> (not res!492062) (not e!409824))))

(assert (=> b!732349 (= res!492062 e!409826)))

(declare-fun c!80514 () Bool)

(assert (=> b!732349 (= c!80514 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!732350 () Bool)

(declare-fun res!492067 () Bool)

(assert (=> b!732350 (=> (not res!492067) (not e!409824))))

(assert (=> b!732350 (= res!492067 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19711 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!732351 () Bool)

(assert (=> b!732351 (= e!409828 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19711 a!3186) j!159) a!3186 mask!3328) lt!324543))))

(declare-fun b!732352 () Bool)

(declare-fun res!492069 () Bool)

(assert (=> b!732352 (=> (not res!492069) (not e!409830))))

(declare-datatypes ((List!13766 0))(
  ( (Nil!13763) (Cons!13762 (h!14828 (_ BitVec 64)) (t!20089 List!13766)) )
))
(declare-fun arrayNoDuplicates!0 (array!41196 (_ BitVec 32) List!13766) Bool)

(assert (=> b!732352 (= res!492069 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13763))))

(declare-fun b!732353 () Bool)

(assert (=> b!732353 (= e!409825 e!409832)))

(declare-fun res!492071 () Bool)

(assert (=> b!732353 (=> res!492071 e!409832)))

(assert (=> b!732353 (= res!492071 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!732353 (= lt!324544 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun res!492064 () Bool)

(assert (=> start!64932 (=> (not res!492064) (not e!409829))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64932 (= res!492064 (validMask!0 mask!3328))))

(assert (=> start!64932 e!409829))

(assert (=> start!64932 true))

(declare-fun array_inv!15485 (array!41196) Bool)

(assert (=> start!64932 (array_inv!15485 a!3186)))

(declare-fun b!732342 () Bool)

(assert (=> b!732342 (= e!409826 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19711 a!3186) j!159) a!3186 mask!3328) lt!324547))))

(assert (= (and start!64932 res!492064) b!732339))

(assert (= (and b!732339 res!492068) b!732337))

(assert (= (and b!732337 res!492063) b!732348))

(assert (= (and b!732348 res!492065) b!732346))

(assert (= (and b!732346 res!492072) b!732345))

(assert (= (and b!732345 res!492075) b!732334))

(assert (= (and b!732334 res!492073) b!732352))

(assert (= (and b!732352 res!492069) b!732347))

(assert (= (and b!732347 res!492077) b!732338))

(assert (= (and b!732338 res!492066) b!732350))

(assert (= (and b!732350 res!492067) b!732349))

(assert (= (and b!732349 c!80514) b!732342))

(assert (= (and b!732349 (not c!80514)) b!732340))

(assert (= (and b!732349 res!492062) b!732344))

(assert (= (and b!732344 res!492078) b!732341))

(assert (= (and b!732341 res!492074) b!732336))

(assert (= (and b!732336 res!492061) b!732351))

(assert (= (and b!732341 (not res!492076)) b!732353))

(assert (= (and b!732353 (not res!492071)) b!732335))

(assert (= (and b!732335 (not res!492070)) b!732343))

(declare-fun m!685489 () Bool)

(assert (=> b!732351 m!685489))

(assert (=> b!732351 m!685489))

(declare-fun m!685491 () Bool)

(assert (=> b!732351 m!685491))

(declare-fun m!685493 () Bool)

(assert (=> b!732346 m!685493))

(declare-fun m!685495 () Bool)

(assert (=> b!732348 m!685495))

(declare-fun m!685497 () Bool)

(assert (=> b!732344 m!685497))

(declare-fun m!685499 () Bool)

(assert (=> b!732344 m!685499))

(declare-fun m!685501 () Bool)

(assert (=> b!732344 m!685501))

(assert (=> b!732344 m!685497))

(declare-fun m!685503 () Bool)

(assert (=> b!732344 m!685503))

(declare-fun m!685505 () Bool)

(assert (=> b!732344 m!685505))

(declare-fun m!685507 () Bool)

(assert (=> b!732341 m!685507))

(declare-fun m!685509 () Bool)

(assert (=> b!732341 m!685509))

(declare-fun m!685511 () Bool)

(assert (=> b!732353 m!685511))

(assert (=> b!732342 m!685489))

(assert (=> b!732342 m!685489))

(declare-fun m!685513 () Bool)

(assert (=> b!732342 m!685513))

(assert (=> b!732337 m!685489))

(assert (=> b!732337 m!685489))

(declare-fun m!685515 () Bool)

(assert (=> b!732337 m!685515))

(assert (=> b!732336 m!685489))

(assert (=> b!732336 m!685489))

(declare-fun m!685517 () Bool)

(assert (=> b!732336 m!685517))

(declare-fun m!685519 () Bool)

(assert (=> b!732350 m!685519))

(declare-fun m!685521 () Bool)

(assert (=> b!732334 m!685521))

(assert (=> b!732338 m!685489))

(assert (=> b!732338 m!685489))

(declare-fun m!685523 () Bool)

(assert (=> b!732338 m!685523))

(assert (=> b!732338 m!685523))

(assert (=> b!732338 m!685489))

(declare-fun m!685525 () Bool)

(assert (=> b!732338 m!685525))

(declare-fun m!685527 () Bool)

(assert (=> start!64932 m!685527))

(declare-fun m!685529 () Bool)

(assert (=> start!64932 m!685529))

(declare-fun m!685531 () Bool)

(assert (=> b!732352 m!685531))

(assert (=> b!732340 m!685489))

(assert (=> b!732340 m!685489))

(declare-fun m!685533 () Bool)

(assert (=> b!732340 m!685533))

(assert (=> b!732335 m!685489))

(assert (=> b!732335 m!685489))

(assert (=> b!732335 m!685533))

(declare-fun m!685535 () Bool)

(assert (=> b!732345 m!685535))

(check-sat (not b!732340) (not b!732342) (not b!732352) (not b!732345) (not b!732348) (not start!64932) (not b!732351) (not b!732335) (not b!732346) (not b!732353) (not b!732344) (not b!732338) (not b!732337) (not b!732336) (not b!732341) (not b!732334))
(check-sat)
