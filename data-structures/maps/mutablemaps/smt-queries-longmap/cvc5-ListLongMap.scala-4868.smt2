; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67138 () Bool)

(assert start!67138)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun b!775026 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((array!42448 0))(
  ( (array!42449 (arr!20316 (Array (_ BitVec 32) (_ BitVec 64))) (size!20737 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42448)

(declare-fun e!431388 () Bool)

(declare-datatypes ((SeekEntryResult!7923 0))(
  ( (MissingZero!7923 (index!34059 (_ BitVec 32))) (Found!7923 (index!34060 (_ BitVec 32))) (Intermediate!7923 (undefined!8735 Bool) (index!34061 (_ BitVec 32)) (x!65035 (_ BitVec 32))) (Undefined!7923) (MissingVacant!7923 (index!34062 (_ BitVec 32))) )
))
(declare-fun lt!345254 () SeekEntryResult!7923)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42448 (_ BitVec 32)) SeekEntryResult!7923)

(assert (=> b!775026 (= e!431388 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20316 a!3186) j!159) a!3186 mask!3328) lt!345254))))

(declare-fun b!775027 () Bool)

(declare-fun res!524203 () Bool)

(declare-fun e!431391 () Bool)

(assert (=> b!775027 (=> res!524203 e!431391)))

(declare-fun e!431397 () Bool)

(assert (=> b!775027 (= res!524203 e!431397)))

(declare-fun c!85819 () Bool)

(declare-fun lt!345256 () Bool)

(assert (=> b!775027 (= c!85819 lt!345256)))

(declare-fun b!775028 () Bool)

(declare-fun e!431395 () Bool)

(assert (=> b!775028 (= e!431395 e!431391)))

(declare-fun res!524201 () Bool)

(assert (=> b!775028 (=> res!524201 e!431391)))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!345252 () (_ BitVec 32))

(assert (=> b!775028 (= res!524201 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt lt!345252 #b00000000000000000000000000000000) (bvsge lt!345252 (size!20737 a!3186))))))

(declare-datatypes ((Unit!26728 0))(
  ( (Unit!26729) )
))
(declare-fun lt!345250 () Unit!26728)

(declare-fun e!431387 () Unit!26728)

(assert (=> b!775028 (= lt!345250 e!431387)))

(declare-fun c!85820 () Bool)

(assert (=> b!775028 (= c!85820 lt!345256)))

(assert (=> b!775028 (= lt!345256 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!775028 (= lt!345252 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!775029 () Bool)

(declare-fun res!524189 () Bool)

(declare-fun e!431396 () Bool)

(assert (=> b!775029 (=> (not res!524189) (not e!431396))))

(assert (=> b!775029 (= res!524189 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20737 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20737 a!3186))))))

(declare-fun b!775030 () Bool)

(declare-fun e!431393 () Bool)

(assert (=> b!775030 (= e!431393 e!431396)))

(declare-fun res!524190 () Bool)

(assert (=> b!775030 (=> (not res!524190) (not e!431396))))

(declare-fun lt!345245 () SeekEntryResult!7923)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!775030 (= res!524190 (or (= lt!345245 (MissingZero!7923 i!1173)) (= lt!345245 (MissingVacant!7923 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42448 (_ BitVec 32)) SeekEntryResult!7923)

(assert (=> b!775030 (= lt!345245 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!775031 () Bool)

(declare-fun e!431398 () Bool)

(assert (=> b!775031 (= e!431398 (not e!431395))))

(declare-fun res!524196 () Bool)

(assert (=> b!775031 (=> res!524196 e!431395)))

(declare-fun lt!345248 () SeekEntryResult!7923)

(assert (=> b!775031 (= res!524196 (or (not (is-Intermediate!7923 lt!345248)) (bvsge x!1131 (x!65035 lt!345248))))))

(declare-fun lt!345247 () SeekEntryResult!7923)

(assert (=> b!775031 (= lt!345247 (Found!7923 j!159))))

(declare-fun e!431394 () Bool)

(assert (=> b!775031 e!431394))

(declare-fun res!524202 () Bool)

(assert (=> b!775031 (=> (not res!524202) (not e!431394))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42448 (_ BitVec 32)) Bool)

(assert (=> b!775031 (= res!524202 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!345253 () Unit!26728)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42448 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26728)

(assert (=> b!775031 (= lt!345253 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!775032 () Bool)

(declare-fun res!524205 () Bool)

(declare-fun e!431390 () Bool)

(assert (=> b!775032 (=> (not res!524205) (not e!431390))))

(assert (=> b!775032 (= res!524205 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20316 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!775033 () Bool)

(assert (=> b!775033 (= e!431391 true)))

(declare-fun lt!345255 () (_ BitVec 64))

(declare-fun lt!345246 () array!42448)

(assert (=> b!775033 (= (seekEntryOrOpen!0 lt!345255 lt!345246 mask!3328) lt!345247)))

(declare-fun lt!345244 () Unit!26728)

(declare-fun lemmaPutValidKeyPreservesVacantIsAtI!0 (array!42448 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26728)

(assert (=> b!775033 (= lt!345244 (lemmaPutValidKeyPreservesVacantIsAtI!0 a!3186 i!1173 k!2102 j!159 lt!345252 (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateIndex!5 resIntermediateX!5 mask!3328))))

(declare-fun b!775034 () Bool)

(declare-fun lt!345251 () SeekEntryResult!7923)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42448 (_ BitVec 32)) SeekEntryResult!7923)

(assert (=> b!775034 (= e!431397 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!345252 (select (arr!20316 a!3186) j!159) a!3186 mask!3328) lt!345251)))))

(declare-fun b!775035 () Bool)

(declare-fun e!431389 () Bool)

(assert (=> b!775035 (= e!431389 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20316 a!3186) j!159) a!3186 mask!3328) (Found!7923 j!159)))))

(declare-fun res!524192 () Bool)

(assert (=> start!67138 (=> (not res!524192) (not e!431393))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67138 (= res!524192 (validMask!0 mask!3328))))

(assert (=> start!67138 e!431393))

(assert (=> start!67138 true))

(declare-fun array_inv!16090 (array!42448) Bool)

(assert (=> start!67138 (array_inv!16090 a!3186)))

(declare-fun b!775036 () Bool)

(declare-fun res!524199 () Bool)

(assert (=> b!775036 (=> (not res!524199) (not e!431393))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!775036 (= res!524199 (validKeyInArray!0 k!2102))))

(declare-fun b!775037 () Bool)

(declare-fun res!524206 () Bool)

(assert (=> b!775037 (=> res!524206 e!431391)))

(declare-fun lt!345249 () SeekEntryResult!7923)

(assert (=> b!775037 (= res!524206 (not (= lt!345249 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!345252 lt!345255 lt!345246 mask!3328))))))

(declare-fun b!775038 () Bool)

(declare-fun res!524193 () Bool)

(assert (=> b!775038 (=> (not res!524193) (not e!431393))))

(assert (=> b!775038 (= res!524193 (and (= (size!20737 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20737 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20737 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!775039 () Bool)

(declare-fun Unit!26730 () Unit!26728)

(assert (=> b!775039 (= e!431387 Unit!26730)))

(declare-fun lt!345243 () SeekEntryResult!7923)

(assert (=> b!775039 (= lt!345243 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20316 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!775039 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!345252 resIntermediateIndex!5 (select (arr!20316 a!3186) j!159) a!3186 mask!3328) lt!345247)))

(declare-fun b!775040 () Bool)

(declare-fun res!524204 () Bool)

(assert (=> b!775040 (=> (not res!524204) (not e!431396))))

(declare-datatypes ((List!14371 0))(
  ( (Nil!14368) (Cons!14367 (h!15475 (_ BitVec 64)) (t!20694 List!14371)) )
))
(declare-fun arrayNoDuplicates!0 (array!42448 (_ BitVec 32) List!14371) Bool)

(assert (=> b!775040 (= res!524204 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14368))))

(declare-fun b!775041 () Bool)

(assert (=> b!775041 (= e!431397 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!345252 resIntermediateIndex!5 (select (arr!20316 a!3186) j!159) a!3186 mask!3328) lt!345247)))))

(declare-fun b!775042 () Bool)

(declare-fun res!524200 () Bool)

(assert (=> b!775042 (=> (not res!524200) (not e!431390))))

(assert (=> b!775042 (= res!524200 e!431389)))

(declare-fun c!85821 () Bool)

(assert (=> b!775042 (= c!85821 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!775043 () Bool)

(declare-fun res!524191 () Bool)

(assert (=> b!775043 (=> (not res!524191) (not e!431393))))

(assert (=> b!775043 (= res!524191 (validKeyInArray!0 (select (arr!20316 a!3186) j!159)))))

(declare-fun b!775044 () Bool)

(assert (=> b!775044 (= e!431396 e!431390)))

(declare-fun res!524195 () Bool)

(assert (=> b!775044 (=> (not res!524195) (not e!431390))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!775044 (= res!524195 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20316 a!3186) j!159) mask!3328) (select (arr!20316 a!3186) j!159) a!3186 mask!3328) lt!345251))))

(assert (=> b!775044 (= lt!345251 (Intermediate!7923 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!775045 () Bool)

(declare-fun res!524194 () Bool)

(assert (=> b!775045 (=> (not res!524194) (not e!431393))))

(declare-fun arrayContainsKey!0 (array!42448 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!775045 (= res!524194 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!775046 () Bool)

(assert (=> b!775046 (= e!431394 e!431388)))

(declare-fun res!524198 () Bool)

(assert (=> b!775046 (=> (not res!524198) (not e!431388))))

(assert (=> b!775046 (= res!524198 (= (seekEntryOrOpen!0 (select (arr!20316 a!3186) j!159) a!3186 mask!3328) lt!345254))))

(assert (=> b!775046 (= lt!345254 (Found!7923 j!159))))

(declare-fun b!775047 () Bool)

(declare-fun res!524197 () Bool)

(assert (=> b!775047 (=> (not res!524197) (not e!431396))))

(assert (=> b!775047 (= res!524197 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!775048 () Bool)

(declare-fun Unit!26731 () Unit!26728)

(assert (=> b!775048 (= e!431387 Unit!26731)))

(assert (=> b!775048 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!345252 (select (arr!20316 a!3186) j!159) a!3186 mask!3328) lt!345251)))

(declare-fun b!775049 () Bool)

(assert (=> b!775049 (= e!431389 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20316 a!3186) j!159) a!3186 mask!3328) lt!345251))))

(declare-fun b!775050 () Bool)

(assert (=> b!775050 (= e!431390 e!431398)))

(declare-fun res!524188 () Bool)

(assert (=> b!775050 (=> (not res!524188) (not e!431398))))

(assert (=> b!775050 (= res!524188 (= lt!345249 lt!345248))))

(assert (=> b!775050 (= lt!345248 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!345255 lt!345246 mask!3328))))

(assert (=> b!775050 (= lt!345249 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!345255 mask!3328) lt!345255 lt!345246 mask!3328))))

(assert (=> b!775050 (= lt!345255 (select (store (arr!20316 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!775050 (= lt!345246 (array!42449 (store (arr!20316 a!3186) i!1173 k!2102) (size!20737 a!3186)))))

(assert (= (and start!67138 res!524192) b!775038))

(assert (= (and b!775038 res!524193) b!775043))

(assert (= (and b!775043 res!524191) b!775036))

(assert (= (and b!775036 res!524199) b!775045))

(assert (= (and b!775045 res!524194) b!775030))

(assert (= (and b!775030 res!524190) b!775047))

(assert (= (and b!775047 res!524197) b!775040))

(assert (= (and b!775040 res!524204) b!775029))

(assert (= (and b!775029 res!524189) b!775044))

(assert (= (and b!775044 res!524195) b!775032))

(assert (= (and b!775032 res!524205) b!775042))

(assert (= (and b!775042 c!85821) b!775049))

(assert (= (and b!775042 (not c!85821)) b!775035))

(assert (= (and b!775042 res!524200) b!775050))

(assert (= (and b!775050 res!524188) b!775031))

(assert (= (and b!775031 res!524202) b!775046))

(assert (= (and b!775046 res!524198) b!775026))

(assert (= (and b!775031 (not res!524196)) b!775028))

(assert (= (and b!775028 c!85820) b!775048))

(assert (= (and b!775028 (not c!85820)) b!775039))

(assert (= (and b!775028 (not res!524201)) b!775027))

(assert (= (and b!775027 c!85819) b!775034))

(assert (= (and b!775027 (not c!85819)) b!775041))

(assert (= (and b!775027 (not res!524203)) b!775037))

(assert (= (and b!775037 (not res!524206)) b!775033))

(declare-fun m!719389 () Bool)

(assert (=> b!775047 m!719389))

(declare-fun m!719391 () Bool)

(assert (=> start!67138 m!719391))

(declare-fun m!719393 () Bool)

(assert (=> start!67138 m!719393))

(declare-fun m!719395 () Bool)

(assert (=> b!775030 m!719395))

(declare-fun m!719397 () Bool)

(assert (=> b!775039 m!719397))

(assert (=> b!775039 m!719397))

(declare-fun m!719399 () Bool)

(assert (=> b!775039 m!719399))

(assert (=> b!775039 m!719397))

(declare-fun m!719401 () Bool)

(assert (=> b!775039 m!719401))

(assert (=> b!775041 m!719397))

(assert (=> b!775041 m!719397))

(assert (=> b!775041 m!719401))

(assert (=> b!775043 m!719397))

(assert (=> b!775043 m!719397))

(declare-fun m!719403 () Bool)

(assert (=> b!775043 m!719403))

(declare-fun m!719405 () Bool)

(assert (=> b!775036 m!719405))

(assert (=> b!775035 m!719397))

(assert (=> b!775035 m!719397))

(assert (=> b!775035 m!719399))

(assert (=> b!775046 m!719397))

(assert (=> b!775046 m!719397))

(declare-fun m!719407 () Bool)

(assert (=> b!775046 m!719407))

(assert (=> b!775049 m!719397))

(assert (=> b!775049 m!719397))

(declare-fun m!719409 () Bool)

(assert (=> b!775049 m!719409))

(declare-fun m!719411 () Bool)

(assert (=> b!775045 m!719411))

(assert (=> b!775044 m!719397))

(assert (=> b!775044 m!719397))

(declare-fun m!719413 () Bool)

(assert (=> b!775044 m!719413))

(assert (=> b!775044 m!719413))

(assert (=> b!775044 m!719397))

(declare-fun m!719415 () Bool)

(assert (=> b!775044 m!719415))

(assert (=> b!775048 m!719397))

(assert (=> b!775048 m!719397))

(declare-fun m!719417 () Bool)

(assert (=> b!775048 m!719417))

(assert (=> b!775034 m!719397))

(assert (=> b!775034 m!719397))

(assert (=> b!775034 m!719417))

(declare-fun m!719419 () Bool)

(assert (=> b!775031 m!719419))

(declare-fun m!719421 () Bool)

(assert (=> b!775031 m!719421))

(declare-fun m!719423 () Bool)

(assert (=> b!775050 m!719423))

(declare-fun m!719425 () Bool)

(assert (=> b!775050 m!719425))

(declare-fun m!719427 () Bool)

(assert (=> b!775050 m!719427))

(declare-fun m!719429 () Bool)

(assert (=> b!775050 m!719429))

(declare-fun m!719431 () Bool)

(assert (=> b!775050 m!719431))

(assert (=> b!775050 m!719425))

(declare-fun m!719433 () Bool)

(assert (=> b!775032 m!719433))

(declare-fun m!719435 () Bool)

(assert (=> b!775033 m!719435))

(declare-fun m!719437 () Bool)

(assert (=> b!775033 m!719437))

(declare-fun m!719439 () Bool)

(assert (=> b!775028 m!719439))

(declare-fun m!719441 () Bool)

(assert (=> b!775040 m!719441))

(assert (=> b!775026 m!719397))

(assert (=> b!775026 m!719397))

(declare-fun m!719443 () Bool)

(assert (=> b!775026 m!719443))

(declare-fun m!719445 () Bool)

(assert (=> b!775037 m!719445))

(push 1)

