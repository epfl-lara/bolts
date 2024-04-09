; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65532 () Bool)

(assert start!65532)

(declare-fun b!747276 () Bool)

(declare-fun res!504035 () Bool)

(declare-fun e!417251 () Bool)

(assert (=> b!747276 (=> (not res!504035) (not e!417251))))

(declare-datatypes ((array!41658 0))(
  ( (array!41659 (arr!19939 (Array (_ BitVec 32) (_ BitVec 64))) (size!20360 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41658)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!747276 (= res!504035 (and (= (size!20360 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20360 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20360 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!747277 () Bool)

(declare-fun res!504048 () Bool)

(declare-fun e!417248 () Bool)

(assert (=> b!747277 (=> res!504048 e!417248)))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7546 0))(
  ( (MissingZero!7546 (index!32551 (_ BitVec 32))) (Found!7546 (index!32552 (_ BitVec 32))) (Intermediate!7546 (undefined!8358 Bool) (index!32553 (_ BitVec 32)) (x!63521 (_ BitVec 32))) (Undefined!7546) (MissingVacant!7546 (index!32554 (_ BitVec 32))) )
))
(declare-fun lt!332178 () SeekEntryResult!7546)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41658 (_ BitVec 32)) SeekEntryResult!7546)

(assert (=> b!747277 (= res!504048 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19939 a!3186) j!159) a!3186 mask!3328) lt!332178)))))

(declare-fun res!504039 () Bool)

(assert (=> start!65532 (=> (not res!504039) (not e!417251))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65532 (= res!504039 (validMask!0 mask!3328))))

(assert (=> start!65532 e!417251))

(assert (=> start!65532 true))

(declare-fun array_inv!15713 (array!41658) Bool)

(assert (=> start!65532 (array_inv!15713 a!3186)))

(declare-fun b!747278 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun e!417245 () Bool)

(assert (=> b!747278 (= e!417245 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19939 a!3186) j!159) a!3186 mask!3328) lt!332178))))

(declare-fun b!747279 () Bool)

(declare-fun res!504036 () Bool)

(assert (=> b!747279 (=> (not res!504036) (not e!417251))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!747279 (= res!504036 (validKeyInArray!0 k0!2102))))

(declare-fun b!747280 () Bool)

(declare-fun res!504046 () Bool)

(declare-fun e!417246 () Bool)

(assert (=> b!747280 (=> (not res!504046) (not e!417246))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41658 (_ BitVec 32)) Bool)

(assert (=> b!747280 (= res!504046 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!747281 () Bool)

(assert (=> b!747281 (= e!417248 true)))

(assert (=> b!747281 (= (select (store (arr!19939 a!3186) i!1173 k0!2102) index!1321) #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-datatypes ((Unit!25586 0))(
  ( (Unit!25587) )
))
(declare-fun lt!332185 () Unit!25586)

(declare-fun e!417244 () Unit!25586)

(assert (=> b!747281 (= lt!332185 e!417244)))

(declare-fun c!82002 () Bool)

(assert (=> b!747281 (= c!82002 (= (select (store (arr!19939 a!3186) i!1173 k0!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!747282 () Bool)

(declare-fun res!504037 () Bool)

(assert (=> b!747282 (=> (not res!504037) (not e!417251))))

(assert (=> b!747282 (= res!504037 (validKeyInArray!0 (select (arr!19939 a!3186) j!159)))))

(declare-fun b!747283 () Bool)

(declare-fun res!504051 () Bool)

(declare-fun e!417249 () Bool)

(assert (=> b!747283 (=> (not res!504051) (not e!417249))))

(assert (=> b!747283 (= res!504051 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19939 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!747284 () Bool)

(declare-fun res!504049 () Bool)

(assert (=> b!747284 (=> (not res!504049) (not e!417246))))

(assert (=> b!747284 (= res!504049 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20360 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20360 a!3186))))))

(declare-fun b!747285 () Bool)

(declare-fun e!417247 () Bool)

(assert (=> b!747285 (= e!417247 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19939 a!3186) j!159) a!3186 mask!3328) (Found!7546 j!159)))))

(declare-fun b!747286 () Bool)

(declare-fun e!417250 () Bool)

(assert (=> b!747286 (= e!417250 (not e!417248))))

(declare-fun res!504042 () Bool)

(assert (=> b!747286 (=> res!504042 e!417248)))

(declare-fun lt!332180 () SeekEntryResult!7546)

(get-info :version)

(assert (=> b!747286 (= res!504042 (or (not ((_ is Intermediate!7546) lt!332180)) (bvslt x!1131 (x!63521 lt!332180)) (not (= x!1131 (x!63521 lt!332180))) (not (= index!1321 (index!32553 lt!332180)))))))

(assert (=> b!747286 e!417245))

(declare-fun res!504050 () Bool)

(assert (=> b!747286 (=> (not res!504050) (not e!417245))))

(declare-fun lt!332186 () SeekEntryResult!7546)

(assert (=> b!747286 (= res!504050 (= lt!332186 lt!332178))))

(assert (=> b!747286 (= lt!332178 (Found!7546 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41658 (_ BitVec 32)) SeekEntryResult!7546)

(assert (=> b!747286 (= lt!332186 (seekEntryOrOpen!0 (select (arr!19939 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!747286 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!332179 () Unit!25586)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41658 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25586)

(assert (=> b!747286 (= lt!332179 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!747287 () Bool)

(declare-fun res!504040 () Bool)

(assert (=> b!747287 (=> (not res!504040) (not e!417249))))

(assert (=> b!747287 (= res!504040 e!417247)))

(declare-fun c!82001 () Bool)

(assert (=> b!747287 (= c!82001 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!747288 () Bool)

(assert (=> b!747288 (= e!417246 e!417249)))

(declare-fun res!504041 () Bool)

(assert (=> b!747288 (=> (not res!504041) (not e!417249))))

(declare-fun lt!332182 () SeekEntryResult!7546)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41658 (_ BitVec 32)) SeekEntryResult!7546)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!747288 (= res!504041 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19939 a!3186) j!159) mask!3328) (select (arr!19939 a!3186) j!159) a!3186 mask!3328) lt!332182))))

(assert (=> b!747288 (= lt!332182 (Intermediate!7546 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!747289 () Bool)

(assert (=> b!747289 (= e!417249 e!417250)))

(declare-fun res!504047 () Bool)

(assert (=> b!747289 (=> (not res!504047) (not e!417250))))

(declare-fun lt!332181 () SeekEntryResult!7546)

(assert (=> b!747289 (= res!504047 (= lt!332181 lt!332180))))

(declare-fun lt!332184 () array!41658)

(declare-fun lt!332177 () (_ BitVec 64))

(assert (=> b!747289 (= lt!332180 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!332177 lt!332184 mask!3328))))

(assert (=> b!747289 (= lt!332181 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!332177 mask!3328) lt!332177 lt!332184 mask!3328))))

(assert (=> b!747289 (= lt!332177 (select (store (arr!19939 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!747289 (= lt!332184 (array!41659 (store (arr!19939 a!3186) i!1173 k0!2102) (size!20360 a!3186)))))

(declare-fun b!747290 () Bool)

(declare-fun res!504038 () Bool)

(assert (=> b!747290 (=> (not res!504038) (not e!417246))))

(declare-datatypes ((List!13994 0))(
  ( (Nil!13991) (Cons!13990 (h!15062 (_ BitVec 64)) (t!20317 List!13994)) )
))
(declare-fun arrayNoDuplicates!0 (array!41658 (_ BitVec 32) List!13994) Bool)

(assert (=> b!747290 (= res!504038 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13991))))

(declare-fun b!747291 () Bool)

(declare-fun res!504043 () Bool)

(assert (=> b!747291 (=> res!504043 e!417248)))

(assert (=> b!747291 (= res!504043 (= (select (store (arr!19939 a!3186) i!1173 k0!2102) index!1321) lt!332177))))

(declare-fun b!747292 () Bool)

(declare-fun Unit!25588 () Unit!25586)

(assert (=> b!747292 (= e!417244 Unit!25588)))

(assert (=> b!747292 false))

(declare-fun b!747293 () Bool)

(assert (=> b!747293 (= e!417251 e!417246)))

(declare-fun res!504044 () Bool)

(assert (=> b!747293 (=> (not res!504044) (not e!417246))))

(declare-fun lt!332183 () SeekEntryResult!7546)

(assert (=> b!747293 (= res!504044 (or (= lt!332183 (MissingZero!7546 i!1173)) (= lt!332183 (MissingVacant!7546 i!1173))))))

(assert (=> b!747293 (= lt!332183 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!747294 () Bool)

(assert (=> b!747294 (= e!417247 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19939 a!3186) j!159) a!3186 mask!3328) lt!332182))))

(declare-fun b!747295 () Bool)

(declare-fun Unit!25589 () Unit!25586)

(assert (=> b!747295 (= e!417244 Unit!25589)))

(declare-fun b!747296 () Bool)

(declare-fun res!504045 () Bool)

(assert (=> b!747296 (=> (not res!504045) (not e!417251))))

(declare-fun arrayContainsKey!0 (array!41658 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!747296 (= res!504045 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(assert (= (and start!65532 res!504039) b!747276))

(assert (= (and b!747276 res!504035) b!747282))

(assert (= (and b!747282 res!504037) b!747279))

(assert (= (and b!747279 res!504036) b!747296))

(assert (= (and b!747296 res!504045) b!747293))

(assert (= (and b!747293 res!504044) b!747280))

(assert (= (and b!747280 res!504046) b!747290))

(assert (= (and b!747290 res!504038) b!747284))

(assert (= (and b!747284 res!504049) b!747288))

(assert (= (and b!747288 res!504041) b!747283))

(assert (= (and b!747283 res!504051) b!747287))

(assert (= (and b!747287 c!82001) b!747294))

(assert (= (and b!747287 (not c!82001)) b!747285))

(assert (= (and b!747287 res!504040) b!747289))

(assert (= (and b!747289 res!504047) b!747286))

(assert (= (and b!747286 res!504050) b!747278))

(assert (= (and b!747286 (not res!504042)) b!747277))

(assert (= (and b!747277 (not res!504048)) b!747291))

(assert (= (and b!747291 (not res!504043)) b!747281))

(assert (= (and b!747281 c!82002) b!747292))

(assert (= (and b!747281 (not c!82002)) b!747295))

(declare-fun m!697465 () Bool)

(assert (=> b!747282 m!697465))

(assert (=> b!747282 m!697465))

(declare-fun m!697467 () Bool)

(assert (=> b!747282 m!697467))

(assert (=> b!747278 m!697465))

(assert (=> b!747278 m!697465))

(declare-fun m!697469 () Bool)

(assert (=> b!747278 m!697469))

(declare-fun m!697471 () Bool)

(assert (=> start!65532 m!697471))

(declare-fun m!697473 () Bool)

(assert (=> start!65532 m!697473))

(assert (=> b!747286 m!697465))

(assert (=> b!747286 m!697465))

(declare-fun m!697475 () Bool)

(assert (=> b!747286 m!697475))

(declare-fun m!697477 () Bool)

(assert (=> b!747286 m!697477))

(declare-fun m!697479 () Bool)

(assert (=> b!747286 m!697479))

(declare-fun m!697481 () Bool)

(assert (=> b!747296 m!697481))

(declare-fun m!697483 () Bool)

(assert (=> b!747290 m!697483))

(assert (=> b!747285 m!697465))

(assert (=> b!747285 m!697465))

(declare-fun m!697485 () Bool)

(assert (=> b!747285 m!697485))

(assert (=> b!747294 m!697465))

(assert (=> b!747294 m!697465))

(declare-fun m!697487 () Bool)

(assert (=> b!747294 m!697487))

(declare-fun m!697489 () Bool)

(assert (=> b!747281 m!697489))

(declare-fun m!697491 () Bool)

(assert (=> b!747281 m!697491))

(assert (=> b!747291 m!697489))

(assert (=> b!747291 m!697491))

(declare-fun m!697493 () Bool)

(assert (=> b!747293 m!697493))

(assert (=> b!747288 m!697465))

(assert (=> b!747288 m!697465))

(declare-fun m!697495 () Bool)

(assert (=> b!747288 m!697495))

(assert (=> b!747288 m!697495))

(assert (=> b!747288 m!697465))

(declare-fun m!697497 () Bool)

(assert (=> b!747288 m!697497))

(declare-fun m!697499 () Bool)

(assert (=> b!747280 m!697499))

(declare-fun m!697501 () Bool)

(assert (=> b!747283 m!697501))

(assert (=> b!747277 m!697465))

(assert (=> b!747277 m!697465))

(assert (=> b!747277 m!697485))

(declare-fun m!697503 () Bool)

(assert (=> b!747279 m!697503))

(assert (=> b!747289 m!697489))

(declare-fun m!697505 () Bool)

(assert (=> b!747289 m!697505))

(declare-fun m!697507 () Bool)

(assert (=> b!747289 m!697507))

(declare-fun m!697509 () Bool)

(assert (=> b!747289 m!697509))

(assert (=> b!747289 m!697509))

(declare-fun m!697511 () Bool)

(assert (=> b!747289 m!697511))

(check-sat (not b!747288) (not b!747278) (not b!747279) (not b!747296) (not b!747285) (not b!747294) (not b!747280) (not b!747282) (not b!747293) (not start!65532) (not b!747286) (not b!747289) (not b!747277) (not b!747290))
(check-sat)
