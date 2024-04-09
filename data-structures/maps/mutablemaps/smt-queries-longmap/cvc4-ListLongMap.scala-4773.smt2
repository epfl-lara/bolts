; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65720 () Bool)

(assert start!65720)

(declare-fun b!753502 () Bool)

(declare-fun res!509148 () Bool)

(declare-fun e!420283 () Bool)

(assert (=> b!753502 (=> (not res!509148) (not e!420283))))

(declare-datatypes ((array!41846 0))(
  ( (array!41847 (arr!20033 (Array (_ BitVec 32) (_ BitVec 64))) (size!20454 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41846)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!753502 (= res!509148 (validKeyInArray!0 (select (arr!20033 a!3186) j!159)))))

(declare-fun b!753503 () Bool)

(declare-fun e!420287 () Bool)

(assert (=> b!753503 (= e!420283 e!420287)))

(declare-fun res!509134 () Bool)

(assert (=> b!753503 (=> (not res!509134) (not e!420287))))

(declare-datatypes ((SeekEntryResult!7640 0))(
  ( (MissingZero!7640 (index!32927 (_ BitVec 32))) (Found!7640 (index!32928 (_ BitVec 32))) (Intermediate!7640 (undefined!8452 Bool) (index!32929 (_ BitVec 32)) (x!63863 (_ BitVec 32))) (Undefined!7640) (MissingVacant!7640 (index!32930 (_ BitVec 32))) )
))
(declare-fun lt!335294 () SeekEntryResult!7640)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!753503 (= res!509134 (or (= lt!335294 (MissingZero!7640 i!1173)) (= lt!335294 (MissingVacant!7640 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41846 (_ BitVec 32)) SeekEntryResult!7640)

(assert (=> b!753503 (= lt!335294 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun e!420292 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!753504 () Bool)

(declare-fun lt!335285 () SeekEntryResult!7640)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41846 (_ BitVec 32)) SeekEntryResult!7640)

(assert (=> b!753504 (= e!420292 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20033 a!3186) j!159) a!3186 mask!3328) lt!335285))))

(declare-fun b!753505 () Bool)

(declare-fun e!420288 () Bool)

(declare-fun lt!335292 () SeekEntryResult!7640)

(declare-fun lt!335284 () SeekEntryResult!7640)

(assert (=> b!753505 (= e!420288 (= lt!335292 lt!335284))))

(declare-fun b!753507 () Bool)

(declare-fun e!420294 () Bool)

(assert (=> b!753507 (= e!420294 true)))

(assert (=> b!753507 e!420288))

(declare-fun res!509139 () Bool)

(assert (=> b!753507 (=> (not res!509139) (not e!420288))))

(declare-fun lt!335290 () (_ BitVec 64))

(assert (=> b!753507 (= res!509139 (= lt!335290 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!25962 0))(
  ( (Unit!25963) )
))
(declare-fun lt!335289 () Unit!25962)

(declare-fun e!420285 () Unit!25962)

(assert (=> b!753507 (= lt!335289 e!420285)))

(declare-fun c!82566 () Bool)

(assert (=> b!753507 (= c!82566 (= lt!335290 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!753508 () Bool)

(declare-fun e!420290 () Bool)

(declare-fun e!420293 () Bool)

(assert (=> b!753508 (= e!420290 e!420293)))

(declare-fun res!509144 () Bool)

(assert (=> b!753508 (=> (not res!509144) (not e!420293))))

(declare-fun lt!335283 () SeekEntryResult!7640)

(declare-fun lt!335288 () SeekEntryResult!7640)

(assert (=> b!753508 (= res!509144 (= lt!335283 lt!335288))))

(declare-fun lt!335287 () array!41846)

(declare-fun lt!335291 () (_ BitVec 64))

(assert (=> b!753508 (= lt!335288 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!335291 lt!335287 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!753508 (= lt!335283 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!335291 mask!3328) lt!335291 lt!335287 mask!3328))))

(assert (=> b!753508 (= lt!335291 (select (store (arr!20033 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!753508 (= lt!335287 (array!41847 (store (arr!20033 a!3186) i!1173 k!2102) (size!20454 a!3186)))))

(declare-fun b!753509 () Bool)

(declare-fun Unit!25964 () Unit!25962)

(assert (=> b!753509 (= e!420285 Unit!25964)))

(assert (=> b!753509 false))

(declare-fun b!753510 () Bool)

(declare-fun res!509143 () Bool)

(assert (=> b!753510 (=> (not res!509143) (not e!420283))))

(assert (=> b!753510 (= res!509143 (validKeyInArray!0 k!2102))))

(declare-fun b!753511 () Bool)

(declare-fun res!509135 () Bool)

(assert (=> b!753511 (=> (not res!509135) (not e!420283))))

(assert (=> b!753511 (= res!509135 (and (= (size!20454 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20454 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20454 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!753512 () Bool)

(declare-fun e!420291 () Bool)

(assert (=> b!753512 (= e!420293 (not e!420291))))

(declare-fun res!509138 () Bool)

(assert (=> b!753512 (=> res!509138 e!420291)))

(assert (=> b!753512 (= res!509138 (or (not (is-Intermediate!7640 lt!335288)) (bvslt x!1131 (x!63863 lt!335288)) (not (= x!1131 (x!63863 lt!335288))) (not (= index!1321 (index!32929 lt!335288)))))))

(declare-fun e!420289 () Bool)

(assert (=> b!753512 e!420289))

(declare-fun res!509142 () Bool)

(assert (=> b!753512 (=> (not res!509142) (not e!420289))))

(declare-fun lt!335293 () SeekEntryResult!7640)

(assert (=> b!753512 (= res!509142 (= lt!335292 lt!335293))))

(assert (=> b!753512 (= lt!335293 (Found!7640 j!159))))

(assert (=> b!753512 (= lt!335292 (seekEntryOrOpen!0 (select (arr!20033 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41846 (_ BitVec 32)) Bool)

(assert (=> b!753512 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!335286 () Unit!25962)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41846 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25962)

(assert (=> b!753512 (= lt!335286 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun b!753513 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41846 (_ BitVec 32)) SeekEntryResult!7640)

(assert (=> b!753513 (= e!420292 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20033 a!3186) j!159) a!3186 mask!3328) (Found!7640 j!159)))))

(declare-fun b!753506 () Bool)

(declare-fun e!420286 () Bool)

(assert (=> b!753506 (= e!420286 e!420294)))

(declare-fun res!509147 () Bool)

(assert (=> b!753506 (=> res!509147 e!420294)))

(assert (=> b!753506 (= res!509147 (= lt!335290 lt!335291))))

(assert (=> b!753506 (= lt!335290 (select (store (arr!20033 a!3186) i!1173 k!2102) index!1321))))

(declare-fun res!509151 () Bool)

(assert (=> start!65720 (=> (not res!509151) (not e!420283))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65720 (= res!509151 (validMask!0 mask!3328))))

(assert (=> start!65720 e!420283))

(assert (=> start!65720 true))

(declare-fun array_inv!15807 (array!41846) Bool)

(assert (=> start!65720 (array_inv!15807 a!3186)))

(declare-fun b!753514 () Bool)

(declare-fun res!509136 () Bool)

(assert (=> b!753514 (=> (not res!509136) (not e!420287))))

(assert (=> b!753514 (= res!509136 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!753515 () Bool)

(declare-fun Unit!25965 () Unit!25962)

(assert (=> b!753515 (= e!420285 Unit!25965)))

(declare-fun b!753516 () Bool)

(declare-fun res!509149 () Bool)

(assert (=> b!753516 (=> (not res!509149) (not e!420290))))

(assert (=> b!753516 (= res!509149 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20033 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!753517 () Bool)

(declare-fun res!509146 () Bool)

(assert (=> b!753517 (=> (not res!509146) (not e!420283))))

(declare-fun arrayContainsKey!0 (array!41846 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!753517 (= res!509146 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!753518 () Bool)

(declare-fun res!509137 () Bool)

(assert (=> b!753518 (=> (not res!509137) (not e!420288))))

(assert (=> b!753518 (= res!509137 (= (seekEntryOrOpen!0 lt!335291 lt!335287 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!335291 lt!335287 mask!3328)))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun b!753519 () Bool)

(assert (=> b!753519 (= e!420289 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20033 a!3186) j!159) a!3186 mask!3328) lt!335293))))

(declare-fun b!753520 () Bool)

(declare-fun res!509141 () Bool)

(assert (=> b!753520 (=> (not res!509141) (not e!420287))))

(assert (=> b!753520 (= res!509141 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20454 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20454 a!3186))))))

(declare-fun b!753521 () Bool)

(assert (=> b!753521 (= e!420291 e!420286)))

(declare-fun res!509133 () Bool)

(assert (=> b!753521 (=> res!509133 e!420286)))

(assert (=> b!753521 (= res!509133 (not (= lt!335284 lt!335293)))))

(assert (=> b!753521 (= lt!335284 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20033 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!753522 () Bool)

(assert (=> b!753522 (= e!420287 e!420290)))

(declare-fun res!509145 () Bool)

(assert (=> b!753522 (=> (not res!509145) (not e!420290))))

(assert (=> b!753522 (= res!509145 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20033 a!3186) j!159) mask!3328) (select (arr!20033 a!3186) j!159) a!3186 mask!3328) lt!335285))))

(assert (=> b!753522 (= lt!335285 (Intermediate!7640 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!753523 () Bool)

(declare-fun res!509140 () Bool)

(assert (=> b!753523 (=> (not res!509140) (not e!420290))))

(assert (=> b!753523 (= res!509140 e!420292)))

(declare-fun c!82565 () Bool)

(assert (=> b!753523 (= c!82565 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!753524 () Bool)

(declare-fun res!509150 () Bool)

(assert (=> b!753524 (=> (not res!509150) (not e!420287))))

(declare-datatypes ((List!14088 0))(
  ( (Nil!14085) (Cons!14084 (h!15156 (_ BitVec 64)) (t!20411 List!14088)) )
))
(declare-fun arrayNoDuplicates!0 (array!41846 (_ BitVec 32) List!14088) Bool)

(assert (=> b!753524 (= res!509150 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14085))))

(assert (= (and start!65720 res!509151) b!753511))

(assert (= (and b!753511 res!509135) b!753502))

(assert (= (and b!753502 res!509148) b!753510))

(assert (= (and b!753510 res!509143) b!753517))

(assert (= (and b!753517 res!509146) b!753503))

(assert (= (and b!753503 res!509134) b!753514))

(assert (= (and b!753514 res!509136) b!753524))

(assert (= (and b!753524 res!509150) b!753520))

(assert (= (and b!753520 res!509141) b!753522))

(assert (= (and b!753522 res!509145) b!753516))

(assert (= (and b!753516 res!509149) b!753523))

(assert (= (and b!753523 c!82565) b!753504))

(assert (= (and b!753523 (not c!82565)) b!753513))

(assert (= (and b!753523 res!509140) b!753508))

(assert (= (and b!753508 res!509144) b!753512))

(assert (= (and b!753512 res!509142) b!753519))

(assert (= (and b!753512 (not res!509138)) b!753521))

(assert (= (and b!753521 (not res!509133)) b!753506))

(assert (= (and b!753506 (not res!509147)) b!753507))

(assert (= (and b!753507 c!82566) b!753509))

(assert (= (and b!753507 (not c!82566)) b!753515))

(assert (= (and b!753507 res!509139) b!753518))

(assert (= (and b!753518 res!509137) b!753505))

(declare-fun m!702249 () Bool)

(assert (=> b!753524 m!702249))

(declare-fun m!702251 () Bool)

(assert (=> b!753514 m!702251))

(declare-fun m!702253 () Bool)

(assert (=> b!753521 m!702253))

(assert (=> b!753521 m!702253))

(declare-fun m!702255 () Bool)

(assert (=> b!753521 m!702255))

(declare-fun m!702257 () Bool)

(assert (=> b!753516 m!702257))

(declare-fun m!702259 () Bool)

(assert (=> b!753517 m!702259))

(assert (=> b!753512 m!702253))

(assert (=> b!753512 m!702253))

(declare-fun m!702261 () Bool)

(assert (=> b!753512 m!702261))

(declare-fun m!702263 () Bool)

(assert (=> b!753512 m!702263))

(declare-fun m!702265 () Bool)

(assert (=> b!753512 m!702265))

(declare-fun m!702267 () Bool)

(assert (=> b!753518 m!702267))

(declare-fun m!702269 () Bool)

(assert (=> b!753518 m!702269))

(assert (=> b!753519 m!702253))

(assert (=> b!753519 m!702253))

(declare-fun m!702271 () Bool)

(assert (=> b!753519 m!702271))

(assert (=> b!753522 m!702253))

(assert (=> b!753522 m!702253))

(declare-fun m!702273 () Bool)

(assert (=> b!753522 m!702273))

(assert (=> b!753522 m!702273))

(assert (=> b!753522 m!702253))

(declare-fun m!702275 () Bool)

(assert (=> b!753522 m!702275))

(assert (=> b!753502 m!702253))

(assert (=> b!753502 m!702253))

(declare-fun m!702277 () Bool)

(assert (=> b!753502 m!702277))

(assert (=> b!753513 m!702253))

(assert (=> b!753513 m!702253))

(assert (=> b!753513 m!702255))

(declare-fun m!702279 () Bool)

(assert (=> start!65720 m!702279))

(declare-fun m!702281 () Bool)

(assert (=> start!65720 m!702281))

(declare-fun m!702283 () Bool)

(assert (=> b!753506 m!702283))

(declare-fun m!702285 () Bool)

(assert (=> b!753506 m!702285))

(assert (=> b!753504 m!702253))

(assert (=> b!753504 m!702253))

(declare-fun m!702287 () Bool)

(assert (=> b!753504 m!702287))

(declare-fun m!702289 () Bool)

(assert (=> b!753503 m!702289))

(declare-fun m!702291 () Bool)

(assert (=> b!753508 m!702291))

(assert (=> b!753508 m!702283))

(assert (=> b!753508 m!702291))

(declare-fun m!702293 () Bool)

(assert (=> b!753508 m!702293))

(declare-fun m!702295 () Bool)

(assert (=> b!753508 m!702295))

(declare-fun m!702297 () Bool)

(assert (=> b!753508 m!702297))

(declare-fun m!702299 () Bool)

(assert (=> b!753510 m!702299))

(push 1)

