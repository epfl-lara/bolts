; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!67032 () Bool)

(assert start!67032)

(declare-fun b!773310 () Bool)

(declare-fun res!523118 () Bool)

(declare-fun e!430497 () Bool)

(assert (=> b!773310 (=> (not res!523118) (not e!430497))))

(declare-datatypes ((array!42411 0))(
  ( (array!42412 (arr!20299 (Array (_ BitVec 32) (_ BitVec 64))) (size!20720 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42411)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!773310 (= res!523118 (and (= (size!20720 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20720 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20720 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!773311 () Bool)

(declare-fun res!523124 () Bool)

(assert (=> b!773311 (=> (not res!523124) (not e!430497))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!773311 (= res!523124 (validKeyInArray!0 (select (arr!20299 a!3186) j!159)))))

(declare-fun b!773312 () Bool)

(declare-fun res!523116 () Bool)

(declare-fun e!430501 () Bool)

(assert (=> b!773312 (=> (not res!523116) (not e!430501))))

(declare-datatypes ((List!14354 0))(
  ( (Nil!14351) (Cons!14350 (h!15455 (_ BitVec 64)) (t!20677 List!14354)) )
))
(declare-fun arrayNoDuplicates!0 (array!42411 (_ BitVec 32) List!14354) Bool)

(assert (=> b!773312 (= res!523116 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14351))))

(declare-fun b!773313 () Bool)

(declare-fun e!430499 () Bool)

(declare-fun e!430492 () Bool)

(assert (=> b!773313 (= e!430499 (not e!430492))))

(declare-fun res!523117 () Bool)

(assert (=> b!773313 (=> res!523117 e!430492)))

(declare-datatypes ((SeekEntryResult!7906 0))(
  ( (MissingZero!7906 (index!33991 (_ BitVec 32))) (Found!7906 (index!33992 (_ BitVec 32))) (Intermediate!7906 (undefined!8718 Bool) (index!33993 (_ BitVec 32)) (x!64958 (_ BitVec 32))) (Undefined!7906) (MissingVacant!7906 (index!33994 (_ BitVec 32))) )
))
(declare-fun lt!344379 () SeekEntryResult!7906)

(declare-fun x!1131 () (_ BitVec 32))

(get-info :version)

(assert (=> b!773313 (= res!523117 (or (not ((_ is Intermediate!7906) lt!344379)) (bvsge x!1131 (x!64958 lt!344379))))))

(declare-fun e!430500 () Bool)

(assert (=> b!773313 e!430500))

(declare-fun res!523125 () Bool)

(assert (=> b!773313 (=> (not res!523125) (not e!430500))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42411 (_ BitVec 32)) Bool)

(assert (=> b!773313 (= res!523125 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26660 0))(
  ( (Unit!26661) )
))
(declare-fun lt!344386 () Unit!26660)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42411 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26660)

(assert (=> b!773313 (= lt!344386 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!773314 () Bool)

(declare-fun res!523114 () Bool)

(declare-fun e!430493 () Bool)

(assert (=> b!773314 (=> (not res!523114) (not e!430493))))

(declare-fun e!430498 () Bool)

(assert (=> b!773314 (= res!523114 e!430498)))

(declare-fun c!85496 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!773314 (= c!85496 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!773315 () Bool)

(declare-fun e!430494 () Unit!26660)

(declare-fun Unit!26662 () Unit!26660)

(assert (=> b!773315 (= e!430494 Unit!26662)))

(declare-fun lt!344378 () (_ BitVec 32))

(declare-fun lt!344380 () SeekEntryResult!7906)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42411 (_ BitVec 32)) SeekEntryResult!7906)

(assert (=> b!773315 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!344378 (select (arr!20299 a!3186) j!159) a!3186 mask!3328) lt!344380)))

(declare-fun b!773316 () Bool)

(declare-fun Unit!26663 () Unit!26660)

(assert (=> b!773316 (= e!430494 Unit!26663)))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!344376 () SeekEntryResult!7906)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42411 (_ BitVec 32)) SeekEntryResult!7906)

(assert (=> b!773316 (= lt!344376 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20299 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!773316 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!344378 resIntermediateIndex!5 (select (arr!20299 a!3186) j!159) a!3186 mask!3328) (Found!7906 j!159))))

(declare-fun b!773317 () Bool)

(declare-fun res!523123 () Bool)

(assert (=> b!773317 (=> (not res!523123) (not e!430493))))

(assert (=> b!773317 (= res!523123 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20299 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!773318 () Bool)

(assert (=> b!773318 (= e!430497 e!430501)))

(declare-fun res!523126 () Bool)

(assert (=> b!773318 (=> (not res!523126) (not e!430501))))

(declare-fun lt!344384 () SeekEntryResult!7906)

(assert (=> b!773318 (= res!523126 (or (= lt!344384 (MissingZero!7906 i!1173)) (= lt!344384 (MissingVacant!7906 i!1173))))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42411 (_ BitVec 32)) SeekEntryResult!7906)

(assert (=> b!773318 (= lt!344384 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!773319 () Bool)

(declare-fun res!523121 () Bool)

(assert (=> b!773319 (=> (not res!523121) (not e!430497))))

(declare-fun arrayContainsKey!0 (array!42411 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!773319 (= res!523121 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun res!523128 () Bool)

(assert (=> start!67032 (=> (not res!523128) (not e!430497))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67032 (= res!523128 (validMask!0 mask!3328))))

(assert (=> start!67032 e!430497))

(assert (=> start!67032 true))

(declare-fun array_inv!16073 (array!42411) Bool)

(assert (=> start!67032 (array_inv!16073 a!3186)))

(declare-fun b!773309 () Bool)

(assert (=> b!773309 (= e!430501 e!430493)))

(declare-fun res!523129 () Bool)

(assert (=> b!773309 (=> (not res!523129) (not e!430493))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!773309 (= res!523129 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20299 a!3186) j!159) mask!3328) (select (arr!20299 a!3186) j!159) a!3186 mask!3328) lt!344380))))

(assert (=> b!773309 (= lt!344380 (Intermediate!7906 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!773320 () Bool)

(assert (=> b!773320 (= e!430498 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20299 a!3186) j!159) a!3186 mask!3328) (Found!7906 j!159)))))

(declare-fun b!773321 () Bool)

(declare-fun res!523115 () Bool)

(assert (=> b!773321 (=> (not res!523115) (not e!430501))))

(assert (=> b!773321 (= res!523115 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20720 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20720 a!3186))))))

(declare-fun b!773322 () Bool)

(declare-fun res!523119 () Bool)

(assert (=> b!773322 (=> (not res!523119) (not e!430501))))

(assert (=> b!773322 (= res!523119 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!773323 () Bool)

(assert (=> b!773323 (= e!430493 e!430499)))

(declare-fun res!523120 () Bool)

(assert (=> b!773323 (=> (not res!523120) (not e!430499))))

(declare-fun lt!344383 () SeekEntryResult!7906)

(assert (=> b!773323 (= res!523120 (= lt!344383 lt!344379))))

(declare-fun lt!344385 () array!42411)

(declare-fun lt!344382 () (_ BitVec 64))

(assert (=> b!773323 (= lt!344379 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!344382 lt!344385 mask!3328))))

(assert (=> b!773323 (= lt!344383 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!344382 mask!3328) lt!344382 lt!344385 mask!3328))))

(assert (=> b!773323 (= lt!344382 (select (store (arr!20299 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!773323 (= lt!344385 (array!42412 (store (arr!20299 a!3186) i!1173 k0!2102) (size!20720 a!3186)))))

(declare-fun b!773324 () Bool)

(assert (=> b!773324 (= e!430492 true)))

(declare-fun lt!344377 () Unit!26660)

(assert (=> b!773324 (= lt!344377 e!430494)))

(declare-fun c!85497 () Bool)

(assert (=> b!773324 (= c!85497 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!773324 (= lt!344378 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!773325 () Bool)

(declare-fun e!430495 () Bool)

(assert (=> b!773325 (= e!430500 e!430495)))

(declare-fun res!523122 () Bool)

(assert (=> b!773325 (=> (not res!523122) (not e!430495))))

(declare-fun lt!344381 () SeekEntryResult!7906)

(assert (=> b!773325 (= res!523122 (= (seekEntryOrOpen!0 (select (arr!20299 a!3186) j!159) a!3186 mask!3328) lt!344381))))

(assert (=> b!773325 (= lt!344381 (Found!7906 j!159))))

(declare-fun b!773326 () Bool)

(assert (=> b!773326 (= e!430495 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20299 a!3186) j!159) a!3186 mask!3328) lt!344381))))

(declare-fun b!773327 () Bool)

(declare-fun res!523127 () Bool)

(assert (=> b!773327 (=> (not res!523127) (not e!430497))))

(assert (=> b!773327 (= res!523127 (validKeyInArray!0 k0!2102))))

(declare-fun b!773328 () Bool)

(assert (=> b!773328 (= e!430498 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20299 a!3186) j!159) a!3186 mask!3328) lt!344380))))

(assert (= (and start!67032 res!523128) b!773310))

(assert (= (and b!773310 res!523118) b!773311))

(assert (= (and b!773311 res!523124) b!773327))

(assert (= (and b!773327 res!523127) b!773319))

(assert (= (and b!773319 res!523121) b!773318))

(assert (= (and b!773318 res!523126) b!773322))

(assert (= (and b!773322 res!523119) b!773312))

(assert (= (and b!773312 res!523116) b!773321))

(assert (= (and b!773321 res!523115) b!773309))

(assert (= (and b!773309 res!523129) b!773317))

(assert (= (and b!773317 res!523123) b!773314))

(assert (= (and b!773314 c!85496) b!773328))

(assert (= (and b!773314 (not c!85496)) b!773320))

(assert (= (and b!773314 res!523114) b!773323))

(assert (= (and b!773323 res!523120) b!773313))

(assert (= (and b!773313 res!523125) b!773325))

(assert (= (and b!773325 res!523122) b!773326))

(assert (= (and b!773313 (not res!523117)) b!773324))

(assert (= (and b!773324 c!85497) b!773315))

(assert (= (and b!773324 (not c!85497)) b!773316))

(declare-fun m!718115 () Bool)

(assert (=> b!773328 m!718115))

(assert (=> b!773328 m!718115))

(declare-fun m!718117 () Bool)

(assert (=> b!773328 m!718117))

(declare-fun m!718119 () Bool)

(assert (=> b!773322 m!718119))

(assert (=> b!773311 m!718115))

(assert (=> b!773311 m!718115))

(declare-fun m!718121 () Bool)

(assert (=> b!773311 m!718121))

(declare-fun m!718123 () Bool)

(assert (=> start!67032 m!718123))

(declare-fun m!718125 () Bool)

(assert (=> start!67032 m!718125))

(declare-fun m!718127 () Bool)

(assert (=> b!773319 m!718127))

(assert (=> b!773309 m!718115))

(assert (=> b!773309 m!718115))

(declare-fun m!718129 () Bool)

(assert (=> b!773309 m!718129))

(assert (=> b!773309 m!718129))

(assert (=> b!773309 m!718115))

(declare-fun m!718131 () Bool)

(assert (=> b!773309 m!718131))

(declare-fun m!718133 () Bool)

(assert (=> b!773318 m!718133))

(declare-fun m!718135 () Bool)

(assert (=> b!773324 m!718135))

(assert (=> b!773315 m!718115))

(assert (=> b!773315 m!718115))

(declare-fun m!718137 () Bool)

(assert (=> b!773315 m!718137))

(assert (=> b!773316 m!718115))

(assert (=> b!773316 m!718115))

(declare-fun m!718139 () Bool)

(assert (=> b!773316 m!718139))

(assert (=> b!773316 m!718115))

(declare-fun m!718141 () Bool)

(assert (=> b!773316 m!718141))

(assert (=> b!773320 m!718115))

(assert (=> b!773320 m!718115))

(assert (=> b!773320 m!718139))

(assert (=> b!773326 m!718115))

(assert (=> b!773326 m!718115))

(declare-fun m!718143 () Bool)

(assert (=> b!773326 m!718143))

(declare-fun m!718145 () Bool)

(assert (=> b!773323 m!718145))

(declare-fun m!718147 () Bool)

(assert (=> b!773323 m!718147))

(declare-fun m!718149 () Bool)

(assert (=> b!773323 m!718149))

(declare-fun m!718151 () Bool)

(assert (=> b!773323 m!718151))

(assert (=> b!773323 m!718149))

(declare-fun m!718153 () Bool)

(assert (=> b!773323 m!718153))

(declare-fun m!718155 () Bool)

(assert (=> b!773313 m!718155))

(declare-fun m!718157 () Bool)

(assert (=> b!773313 m!718157))

(declare-fun m!718159 () Bool)

(assert (=> b!773327 m!718159))

(declare-fun m!718161 () Bool)

(assert (=> b!773312 m!718161))

(declare-fun m!718163 () Bool)

(assert (=> b!773317 m!718163))

(assert (=> b!773325 m!718115))

(assert (=> b!773325 m!718115))

(declare-fun m!718165 () Bool)

(assert (=> b!773325 m!718165))

(check-sat (not b!773316) (not b!773320) (not b!773313) (not b!773309) (not b!773319) (not b!773315) (not b!773325) (not b!773311) (not b!773318) (not b!773327) (not b!773328) (not b!773312) (not b!773323) (not b!773322) (not b!773324) (not start!67032) (not b!773326))
(check-sat)
