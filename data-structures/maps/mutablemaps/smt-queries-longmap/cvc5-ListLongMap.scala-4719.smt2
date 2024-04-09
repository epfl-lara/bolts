; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65392 () Bool)

(assert start!65392)

(declare-fun b!743363 () Bool)

(declare-fun e!415354 () Bool)

(declare-fun lt!330237 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!743363 (= e!415354 (validKeyInArray!0 lt!330237))))

(declare-fun b!743364 () Bool)

(declare-fun res!500600 () Bool)

(declare-fun e!415360 () Bool)

(assert (=> b!743364 (=> (not res!500600) (not e!415360))))

(declare-datatypes ((array!41518 0))(
  ( (array!41519 (arr!19869 (Array (_ BitVec 32) (_ BitVec 64))) (size!20290 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41518)

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!743364 (= res!500600 (validKeyInArray!0 (select (arr!19869 a!3186) j!159)))))

(declare-fun b!743365 () Bool)

(declare-fun e!415355 () Bool)

(declare-fun e!415356 () Bool)

(assert (=> b!743365 (= e!415355 e!415356)))

(declare-fun res!500605 () Bool)

(assert (=> b!743365 (=> (not res!500605) (not e!415356))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7476 0))(
  ( (MissingZero!7476 (index!32271 (_ BitVec 32))) (Found!7476 (index!32272 (_ BitVec 32))) (Intermediate!7476 (undefined!8288 Bool) (index!32273 (_ BitVec 32)) (x!63267 (_ BitVec 32))) (Undefined!7476) (MissingVacant!7476 (index!32274 (_ BitVec 32))) )
))
(declare-fun lt!330239 () SeekEntryResult!7476)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41518 (_ BitVec 32)) SeekEntryResult!7476)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!743365 (= res!500605 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19869 a!3186) j!159) mask!3328) (select (arr!19869 a!3186) j!159) a!3186 mask!3328) lt!330239))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!743365 (= lt!330239 (Intermediate!7476 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun e!415358 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!743366 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!743366 (= e!415358 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19869 a!3186) j!159) a!3186 mask!3328) lt!330239))))

(declare-fun b!743367 () Bool)

(declare-fun res!500590 () Bool)

(assert (=> b!743367 (=> (not res!500590) (not e!415355))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41518 (_ BitVec 32)) Bool)

(assert (=> b!743367 (= res!500590 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!743368 () Bool)

(declare-fun res!500589 () Bool)

(assert (=> b!743368 (=> (not res!500589) (not e!415360))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!41518 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!743368 (= res!500589 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun lt!330238 () SeekEntryResult!7476)

(declare-fun b!743369 () Bool)

(declare-fun e!415359 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41518 (_ BitVec 32)) SeekEntryResult!7476)

(assert (=> b!743369 (= e!415359 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19869 a!3186) j!159) a!3186 mask!3328) lt!330238))))

(declare-fun b!743370 () Bool)

(assert (=> b!743370 (= e!415358 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19869 a!3186) j!159) a!3186 mask!3328) (Found!7476 j!159)))))

(declare-fun b!743371 () Bool)

(declare-fun e!415362 () Bool)

(assert (=> b!743371 (= e!415362 e!415359)))

(declare-fun res!500604 () Bool)

(assert (=> b!743371 (=> (not res!500604) (not e!415359))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41518 (_ BitVec 32)) SeekEntryResult!7476)

(assert (=> b!743371 (= res!500604 (= (seekEntryOrOpen!0 (select (arr!19869 a!3186) j!159) a!3186 mask!3328) lt!330238))))

(assert (=> b!743371 (= lt!330238 (Found!7476 j!159))))

(declare-fun b!743372 () Bool)

(declare-fun res!500593 () Bool)

(assert (=> b!743372 (=> res!500593 e!415354)))

(declare-fun lt!330241 () array!41518)

(assert (=> b!743372 (= res!500593 (not (= (seekEntryOrOpen!0 lt!330237 lt!330241 mask!3328) (Found!7476 index!1321))))))

(declare-fun b!743373 () Bool)

(declare-fun res!500597 () Bool)

(assert (=> b!743373 (=> res!500597 e!415354)))

(assert (=> b!743373 (= res!500597 (bvslt mask!3328 #b00000000000000000000000000000000))))

(declare-fun b!743374 () Bool)

(declare-fun res!500598 () Bool)

(assert (=> b!743374 (=> (not res!500598) (not e!415355))))

(assert (=> b!743374 (= res!500598 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20290 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20290 a!3186))))))

(declare-fun b!743375 () Bool)

(declare-fun res!500594 () Bool)

(assert (=> b!743375 (=> res!500594 e!415354)))

(assert (=> b!743375 (= res!500594 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19869 a!3186) j!159) a!3186 mask!3328) (Found!7476 j!159))))))

(declare-fun b!743376 () Bool)

(declare-fun res!500592 () Bool)

(assert (=> b!743376 (=> (not res!500592) (not e!415360))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!743376 (= res!500592 (and (= (size!20290 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20290 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20290 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!743377 () Bool)

(declare-fun e!415361 () Bool)

(assert (=> b!743377 (= e!415356 e!415361)))

(declare-fun res!500606 () Bool)

(assert (=> b!743377 (=> (not res!500606) (not e!415361))))

(declare-fun lt!330240 () SeekEntryResult!7476)

(declare-fun lt!330236 () SeekEntryResult!7476)

(assert (=> b!743377 (= res!500606 (= lt!330240 lt!330236))))

(assert (=> b!743377 (= lt!330236 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!330237 lt!330241 mask!3328))))

(assert (=> b!743377 (= lt!330240 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!330237 mask!3328) lt!330237 lt!330241 mask!3328))))

(assert (=> b!743377 (= lt!330237 (select (store (arr!19869 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!743377 (= lt!330241 (array!41519 (store (arr!19869 a!3186) i!1173 k!2102) (size!20290 a!3186)))))

(declare-fun b!743378 () Bool)

(declare-fun res!500607 () Bool)

(assert (=> b!743378 (=> res!500607 e!415354)))

(assert (=> b!743378 (= res!500607 (or (not (= (select (store (arr!19869 a!3186) i!1173 k!2102) index!1321) lt!330237)) (undefined!8288 lt!330236)))))

(declare-fun b!743379 () Bool)

(assert (=> b!743379 (= e!415360 e!415355)))

(declare-fun res!500588 () Bool)

(assert (=> b!743379 (=> (not res!500588) (not e!415355))))

(declare-fun lt!330242 () SeekEntryResult!7476)

(assert (=> b!743379 (= res!500588 (or (= lt!330242 (MissingZero!7476 i!1173)) (= lt!330242 (MissingVacant!7476 i!1173))))))

(assert (=> b!743379 (= lt!330242 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!743380 () Bool)

(assert (=> b!743380 (= e!415361 (not e!415354))))

(declare-fun res!500601 () Bool)

(assert (=> b!743380 (=> res!500601 e!415354)))

(assert (=> b!743380 (= res!500601 (or (not (is-Intermediate!7476 lt!330236)) (bvslt x!1131 (x!63267 lt!330236)) (not (= x!1131 (x!63267 lt!330236))) (not (= index!1321 (index!32273 lt!330236)))))))

(assert (=> b!743380 e!415362))

(declare-fun res!500602 () Bool)

(assert (=> b!743380 (=> (not res!500602) (not e!415362))))

(assert (=> b!743380 (= res!500602 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25432 0))(
  ( (Unit!25433) )
))
(declare-fun lt!330235 () Unit!25432)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41518 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25432)

(assert (=> b!743380 (= lt!330235 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!743381 () Bool)

(declare-fun res!500596 () Bool)

(assert (=> b!743381 (=> (not res!500596) (not e!415355))))

(declare-datatypes ((List!13924 0))(
  ( (Nil!13921) (Cons!13920 (h!14992 (_ BitVec 64)) (t!20247 List!13924)) )
))
(declare-fun arrayNoDuplicates!0 (array!41518 (_ BitVec 32) List!13924) Bool)

(assert (=> b!743381 (= res!500596 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13921))))

(declare-fun b!743382 () Bool)

(declare-fun res!500591 () Bool)

(assert (=> b!743382 (=> (not res!500591) (not e!415356))))

(assert (=> b!743382 (= res!500591 e!415358)))

(declare-fun c!81768 () Bool)

(assert (=> b!743382 (= c!81768 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!743383 () Bool)

(declare-fun res!500603 () Bool)

(assert (=> b!743383 (=> (not res!500603) (not e!415356))))

(assert (=> b!743383 (= res!500603 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19869 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!743384 () Bool)

(declare-fun res!500599 () Bool)

(assert (=> b!743384 (=> (not res!500599) (not e!415360))))

(assert (=> b!743384 (= res!500599 (validKeyInArray!0 k!2102))))

(declare-fun res!500595 () Bool)

(assert (=> start!65392 (=> (not res!500595) (not e!415360))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65392 (= res!500595 (validMask!0 mask!3328))))

(assert (=> start!65392 e!415360))

(assert (=> start!65392 true))

(declare-fun array_inv!15643 (array!41518) Bool)

(assert (=> start!65392 (array_inv!15643 a!3186)))

(assert (= (and start!65392 res!500595) b!743376))

(assert (= (and b!743376 res!500592) b!743364))

(assert (= (and b!743364 res!500600) b!743384))

(assert (= (and b!743384 res!500599) b!743368))

(assert (= (and b!743368 res!500589) b!743379))

(assert (= (and b!743379 res!500588) b!743367))

(assert (= (and b!743367 res!500590) b!743381))

(assert (= (and b!743381 res!500596) b!743374))

(assert (= (and b!743374 res!500598) b!743365))

(assert (= (and b!743365 res!500605) b!743383))

(assert (= (and b!743383 res!500603) b!743382))

(assert (= (and b!743382 c!81768) b!743366))

(assert (= (and b!743382 (not c!81768)) b!743370))

(assert (= (and b!743382 res!500591) b!743377))

(assert (= (and b!743377 res!500606) b!743380))

(assert (= (and b!743380 res!500602) b!743371))

(assert (= (and b!743371 res!500604) b!743369))

(assert (= (and b!743380 (not res!500601)) b!743375))

(assert (= (and b!743375 (not res!500594)) b!743378))

(assert (= (and b!743378 (not res!500607)) b!743372))

(assert (= (and b!743372 (not res!500593)) b!743373))

(assert (= (and b!743373 (not res!500597)) b!743363))

(declare-fun m!694141 () Bool)

(assert (=> b!743380 m!694141))

(declare-fun m!694143 () Bool)

(assert (=> b!743380 m!694143))

(declare-fun m!694145 () Bool)

(assert (=> b!743367 m!694145))

(declare-fun m!694147 () Bool)

(assert (=> b!743369 m!694147))

(assert (=> b!743369 m!694147))

(declare-fun m!694149 () Bool)

(assert (=> b!743369 m!694149))

(assert (=> b!743375 m!694147))

(assert (=> b!743375 m!694147))

(declare-fun m!694151 () Bool)

(assert (=> b!743375 m!694151))

(declare-fun m!694153 () Bool)

(assert (=> b!743383 m!694153))

(declare-fun m!694155 () Bool)

(assert (=> start!65392 m!694155))

(declare-fun m!694157 () Bool)

(assert (=> start!65392 m!694157))

(assert (=> b!743364 m!694147))

(assert (=> b!743364 m!694147))

(declare-fun m!694159 () Bool)

(assert (=> b!743364 m!694159))

(declare-fun m!694161 () Bool)

(assert (=> b!743368 m!694161))

(declare-fun m!694163 () Bool)

(assert (=> b!743384 m!694163))

(assert (=> b!743371 m!694147))

(assert (=> b!743371 m!694147))

(declare-fun m!694165 () Bool)

(assert (=> b!743371 m!694165))

(assert (=> b!743370 m!694147))

(assert (=> b!743370 m!694147))

(assert (=> b!743370 m!694151))

(assert (=> b!743365 m!694147))

(assert (=> b!743365 m!694147))

(declare-fun m!694167 () Bool)

(assert (=> b!743365 m!694167))

(assert (=> b!743365 m!694167))

(assert (=> b!743365 m!694147))

(declare-fun m!694169 () Bool)

(assert (=> b!743365 m!694169))

(declare-fun m!694171 () Bool)

(assert (=> b!743378 m!694171))

(declare-fun m!694173 () Bool)

(assert (=> b!743378 m!694173))

(assert (=> b!743366 m!694147))

(assert (=> b!743366 m!694147))

(declare-fun m!694175 () Bool)

(assert (=> b!743366 m!694175))

(declare-fun m!694177 () Bool)

(assert (=> b!743381 m!694177))

(declare-fun m!694179 () Bool)

(assert (=> b!743377 m!694179))

(declare-fun m!694181 () Bool)

(assert (=> b!743377 m!694181))

(declare-fun m!694183 () Bool)

(assert (=> b!743377 m!694183))

(assert (=> b!743377 m!694171))

(assert (=> b!743377 m!694181))

(declare-fun m!694185 () Bool)

(assert (=> b!743377 m!694185))

(declare-fun m!694187 () Bool)

(assert (=> b!743363 m!694187))

(declare-fun m!694189 () Bool)

(assert (=> b!743372 m!694189))

(declare-fun m!694191 () Bool)

(assert (=> b!743379 m!694191))

(push 1)

