; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67028 () Bool)

(assert start!67028)

(declare-fun b!773189 () Bool)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!42407 0))(
  ( (array!42408 (arr!20297 (Array (_ BitVec 32) (_ BitVec 64))) (size!20718 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42407)

(declare-fun e!430437 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7904 0))(
  ( (MissingZero!7904 (index!33983 (_ BitVec 32))) (Found!7904 (index!33984 (_ BitVec 32))) (Intermediate!7904 (undefined!8716 Bool) (index!33985 (_ BitVec 32)) (x!64948 (_ BitVec 32))) (Undefined!7904) (MissingVacant!7904 (index!33986 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42407 (_ BitVec 32)) SeekEntryResult!7904)

(assert (=> b!773189 (= e!430437 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20297 a!3186) j!159) a!3186 mask!3328) (Found!7904 j!159)))))

(declare-fun b!773190 () Bool)

(declare-datatypes ((Unit!26652 0))(
  ( (Unit!26653) )
))
(declare-fun e!430433 () Unit!26652)

(declare-fun Unit!26654 () Unit!26652)

(assert (=> b!773190 (= e!430433 Unit!26654)))

(declare-fun lt!344314 () (_ BitVec 32))

(declare-fun lt!344318 () SeekEntryResult!7904)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42407 (_ BitVec 32)) SeekEntryResult!7904)

(assert (=> b!773190 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!344314 (select (arr!20297 a!3186) j!159) a!3186 mask!3328) lt!344318)))

(declare-fun b!773191 () Bool)

(declare-fun e!430432 () Bool)

(declare-fun e!430439 () Bool)

(assert (=> b!773191 (= e!430432 e!430439)))

(declare-fun res!523021 () Bool)

(assert (=> b!773191 (=> (not res!523021) (not e!430439))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!773191 (= res!523021 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20297 a!3186) j!159) mask!3328) (select (arr!20297 a!3186) j!159) a!3186 mask!3328) lt!344318))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!773191 (= lt!344318 (Intermediate!7904 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun res!523018 () Bool)

(declare-fun e!430436 () Bool)

(assert (=> start!67028 (=> (not res!523018) (not e!430436))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67028 (= res!523018 (validMask!0 mask!3328))))

(assert (=> start!67028 e!430436))

(assert (=> start!67028 true))

(declare-fun array_inv!16071 (array!42407) Bool)

(assert (=> start!67028 (array_inv!16071 a!3186)))

(declare-fun b!773192 () Bool)

(declare-fun res!523028 () Bool)

(assert (=> b!773192 (=> (not res!523028) (not e!430432))))

(assert (=> b!773192 (= res!523028 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20718 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20718 a!3186))))))

(declare-fun b!773193 () Bool)

(declare-fun res!523020 () Bool)

(assert (=> b!773193 (=> (not res!523020) (not e!430436))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42407 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!773193 (= res!523020 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun e!430440 () Bool)

(declare-fun b!773194 () Bool)

(declare-fun lt!344320 () SeekEntryResult!7904)

(assert (=> b!773194 (= e!430440 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20297 a!3186) j!159) a!3186 mask!3328) lt!344320))))

(declare-fun b!773195 () Bool)

(declare-fun res!523019 () Bool)

(assert (=> b!773195 (=> (not res!523019) (not e!430432))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42407 (_ BitVec 32)) Bool)

(assert (=> b!773195 (= res!523019 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!773196 () Bool)

(declare-fun e!430441 () Bool)

(assert (=> b!773196 (= e!430441 true)))

(declare-fun lt!344319 () Unit!26652)

(assert (=> b!773196 (= lt!344319 e!430433)))

(declare-fun c!85484 () Bool)

(assert (=> b!773196 (= c!85484 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!773196 (= lt!344314 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!773197 () Bool)

(declare-fun res!523031 () Bool)

(assert (=> b!773197 (=> (not res!523031) (not e!430436))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!773197 (= res!523031 (validKeyInArray!0 (select (arr!20297 a!3186) j!159)))))

(declare-fun b!773198 () Bool)

(declare-fun res!523023 () Bool)

(assert (=> b!773198 (=> (not res!523023) (not e!430432))))

(declare-datatypes ((List!14352 0))(
  ( (Nil!14349) (Cons!14348 (h!15453 (_ BitVec 64)) (t!20675 List!14352)) )
))
(declare-fun arrayNoDuplicates!0 (array!42407 (_ BitVec 32) List!14352) Bool)

(assert (=> b!773198 (= res!523023 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14349))))

(declare-fun b!773199 () Bool)

(declare-fun res!523022 () Bool)

(assert (=> b!773199 (=> (not res!523022) (not e!430436))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!773199 (= res!523022 (and (= (size!20718 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20718 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20718 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!773200 () Bool)

(assert (=> b!773200 (= e!430437 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20297 a!3186) j!159) a!3186 mask!3328) lt!344318))))

(declare-fun b!773201 () Bool)

(declare-fun Unit!26655 () Unit!26652)

(assert (=> b!773201 (= e!430433 Unit!26655)))

(declare-fun lt!344310 () SeekEntryResult!7904)

(assert (=> b!773201 (= lt!344310 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20297 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!773201 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!344314 resIntermediateIndex!5 (select (arr!20297 a!3186) j!159) a!3186 mask!3328) (Found!7904 j!159))))

(declare-fun b!773202 () Bool)

(declare-fun res!523030 () Bool)

(assert (=> b!773202 (=> (not res!523030) (not e!430436))))

(assert (=> b!773202 (= res!523030 (validKeyInArray!0 k!2102))))

(declare-fun b!773203 () Bool)

(declare-fun e!430435 () Bool)

(assert (=> b!773203 (= e!430435 e!430440)))

(declare-fun res!523029 () Bool)

(assert (=> b!773203 (=> (not res!523029) (not e!430440))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42407 (_ BitVec 32)) SeekEntryResult!7904)

(assert (=> b!773203 (= res!523029 (= (seekEntryOrOpen!0 (select (arr!20297 a!3186) j!159) a!3186 mask!3328) lt!344320))))

(assert (=> b!773203 (= lt!344320 (Found!7904 j!159))))

(declare-fun b!773204 () Bool)

(declare-fun e!430434 () Bool)

(assert (=> b!773204 (= e!430439 e!430434)))

(declare-fun res!523025 () Bool)

(assert (=> b!773204 (=> (not res!523025) (not e!430434))))

(declare-fun lt!344316 () SeekEntryResult!7904)

(declare-fun lt!344311 () SeekEntryResult!7904)

(assert (=> b!773204 (= res!523025 (= lt!344316 lt!344311))))

(declare-fun lt!344313 () array!42407)

(declare-fun lt!344312 () (_ BitVec 64))

(assert (=> b!773204 (= lt!344311 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!344312 lt!344313 mask!3328))))

(assert (=> b!773204 (= lt!344316 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!344312 mask!3328) lt!344312 lt!344313 mask!3328))))

(assert (=> b!773204 (= lt!344312 (select (store (arr!20297 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!773204 (= lt!344313 (array!42408 (store (arr!20297 a!3186) i!1173 k!2102) (size!20718 a!3186)))))

(declare-fun b!773205 () Bool)

(declare-fun res!523026 () Bool)

(assert (=> b!773205 (=> (not res!523026) (not e!430439))))

(assert (=> b!773205 (= res!523026 e!430437)))

(declare-fun c!85485 () Bool)

(assert (=> b!773205 (= c!85485 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!773206 () Bool)

(assert (=> b!773206 (= e!430436 e!430432)))

(declare-fun res!523027 () Bool)

(assert (=> b!773206 (=> (not res!523027) (not e!430432))))

(declare-fun lt!344317 () SeekEntryResult!7904)

(assert (=> b!773206 (= res!523027 (or (= lt!344317 (MissingZero!7904 i!1173)) (= lt!344317 (MissingVacant!7904 i!1173))))))

(assert (=> b!773206 (= lt!344317 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!773207 () Bool)

(declare-fun res!523032 () Bool)

(assert (=> b!773207 (=> (not res!523032) (not e!430439))))

(assert (=> b!773207 (= res!523032 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20297 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!773208 () Bool)

(assert (=> b!773208 (= e!430434 (not e!430441))))

(declare-fun res!523024 () Bool)

(assert (=> b!773208 (=> res!523024 e!430441)))

(assert (=> b!773208 (= res!523024 (or (not (is-Intermediate!7904 lt!344311)) (bvsge x!1131 (x!64948 lt!344311))))))

(assert (=> b!773208 e!430435))

(declare-fun res!523033 () Bool)

(assert (=> b!773208 (=> (not res!523033) (not e!430435))))

(assert (=> b!773208 (= res!523033 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!344315 () Unit!26652)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42407 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26652)

(assert (=> b!773208 (= lt!344315 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (= (and start!67028 res!523018) b!773199))

(assert (= (and b!773199 res!523022) b!773197))

(assert (= (and b!773197 res!523031) b!773202))

(assert (= (and b!773202 res!523030) b!773193))

(assert (= (and b!773193 res!523020) b!773206))

(assert (= (and b!773206 res!523027) b!773195))

(assert (= (and b!773195 res!523019) b!773198))

(assert (= (and b!773198 res!523023) b!773192))

(assert (= (and b!773192 res!523028) b!773191))

(assert (= (and b!773191 res!523021) b!773207))

(assert (= (and b!773207 res!523032) b!773205))

(assert (= (and b!773205 c!85485) b!773200))

(assert (= (and b!773205 (not c!85485)) b!773189))

(assert (= (and b!773205 res!523026) b!773204))

(assert (= (and b!773204 res!523025) b!773208))

(assert (= (and b!773208 res!523033) b!773203))

(assert (= (and b!773203 res!523029) b!773194))

(assert (= (and b!773208 (not res!523024)) b!773196))

(assert (= (and b!773196 c!85484) b!773190))

(assert (= (and b!773196 (not c!85484)) b!773201))

(declare-fun m!718011 () Bool)

(assert (=> b!773190 m!718011))

(assert (=> b!773190 m!718011))

(declare-fun m!718013 () Bool)

(assert (=> b!773190 m!718013))

(declare-fun m!718015 () Bool)

(assert (=> b!773196 m!718015))

(declare-fun m!718017 () Bool)

(assert (=> b!773193 m!718017))

(assert (=> b!773194 m!718011))

(assert (=> b!773194 m!718011))

(declare-fun m!718019 () Bool)

(assert (=> b!773194 m!718019))

(declare-fun m!718021 () Bool)

(assert (=> b!773206 m!718021))

(assert (=> b!773191 m!718011))

(assert (=> b!773191 m!718011))

(declare-fun m!718023 () Bool)

(assert (=> b!773191 m!718023))

(assert (=> b!773191 m!718023))

(assert (=> b!773191 m!718011))

(declare-fun m!718025 () Bool)

(assert (=> b!773191 m!718025))

(assert (=> b!773203 m!718011))

(assert (=> b!773203 m!718011))

(declare-fun m!718027 () Bool)

(assert (=> b!773203 m!718027))

(declare-fun m!718029 () Bool)

(assert (=> b!773208 m!718029))

(declare-fun m!718031 () Bool)

(assert (=> b!773208 m!718031))

(assert (=> b!773189 m!718011))

(assert (=> b!773189 m!718011))

(declare-fun m!718033 () Bool)

(assert (=> b!773189 m!718033))

(assert (=> b!773197 m!718011))

(assert (=> b!773197 m!718011))

(declare-fun m!718035 () Bool)

(assert (=> b!773197 m!718035))

(declare-fun m!718037 () Bool)

(assert (=> b!773202 m!718037))

(assert (=> b!773200 m!718011))

(assert (=> b!773200 m!718011))

(declare-fun m!718039 () Bool)

(assert (=> b!773200 m!718039))

(assert (=> b!773201 m!718011))

(assert (=> b!773201 m!718011))

(assert (=> b!773201 m!718033))

(assert (=> b!773201 m!718011))

(declare-fun m!718041 () Bool)

(assert (=> b!773201 m!718041))

(declare-fun m!718043 () Bool)

(assert (=> b!773198 m!718043))

(declare-fun m!718045 () Bool)

(assert (=> b!773204 m!718045))

(declare-fun m!718047 () Bool)

(assert (=> b!773204 m!718047))

(declare-fun m!718049 () Bool)

(assert (=> b!773204 m!718049))

(assert (=> b!773204 m!718047))

(declare-fun m!718051 () Bool)

(assert (=> b!773204 m!718051))

(declare-fun m!718053 () Bool)

(assert (=> b!773204 m!718053))

(declare-fun m!718055 () Bool)

(assert (=> b!773207 m!718055))

(declare-fun m!718057 () Bool)

(assert (=> start!67028 m!718057))

(declare-fun m!718059 () Bool)

(assert (=> start!67028 m!718059))

(declare-fun m!718061 () Bool)

(assert (=> b!773195 m!718061))

(push 1)

