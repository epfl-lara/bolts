; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67792 () Bool)

(assert start!67792)

(declare-fun b!787313 () Bool)

(declare-fun res!533352 () Bool)

(declare-fun e!437653 () Bool)

(assert (=> b!787313 (=> (not res!533352) (not e!437653))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((array!42787 0))(
  ( (array!42788 (arr!20478 (Array (_ BitVec 32) (_ BitVec 64))) (size!20899 (_ BitVec 32))) )
))
(declare-fun lt!351222 () array!42787)

(declare-fun lt!351221 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8085 0))(
  ( (MissingZero!8085 (index!34707 (_ BitVec 32))) (Found!8085 (index!34708 (_ BitVec 32))) (Intermediate!8085 (undefined!8897 Bool) (index!34709 (_ BitVec 32)) (x!65674 (_ BitVec 32))) (Undefined!8085) (MissingVacant!8085 (index!34710 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42787 (_ BitVec 32)) SeekEntryResult!8085)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42787 (_ BitVec 32)) SeekEntryResult!8085)

(assert (=> b!787313 (= res!533352 (= (seekEntryOrOpen!0 lt!351221 lt!351222 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!351221 lt!351222 mask!3328)))))

(declare-fun b!787314 () Bool)

(declare-datatypes ((Unit!27250 0))(
  ( (Unit!27251) )
))
(declare-fun e!437656 () Unit!27250)

(declare-fun Unit!27252 () Unit!27250)

(assert (=> b!787314 (= e!437656 Unit!27252)))

(declare-fun b!787315 () Bool)

(declare-fun res!533356 () Bool)

(declare-fun e!437660 () Bool)

(assert (=> b!787315 (=> (not res!533356) (not e!437660))))

(declare-fun a!3186 () array!42787)

(declare-datatypes ((List!14533 0))(
  ( (Nil!14530) (Cons!14529 (h!15652 (_ BitVec 64)) (t!20856 List!14533)) )
))
(declare-fun arrayNoDuplicates!0 (array!42787 (_ BitVec 32) List!14533) Bool)

(assert (=> b!787315 (= res!533356 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14530))))

(declare-fun lt!351226 () SeekEntryResult!8085)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun e!437654 () Bool)

(declare-fun b!787316 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42787 (_ BitVec 32)) SeekEntryResult!8085)

(assert (=> b!787316 (= e!437654 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20478 a!3186) j!159) a!3186 mask!3328) lt!351226))))

(declare-fun res!533359 () Bool)

(declare-fun e!437655 () Bool)

(assert (=> start!67792 (=> (not res!533359) (not e!437655))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67792 (= res!533359 (validMask!0 mask!3328))))

(assert (=> start!67792 e!437655))

(assert (=> start!67792 true))

(declare-fun array_inv!16252 (array!42787) Bool)

(assert (=> start!67792 (array_inv!16252 a!3186)))

(declare-fun b!787317 () Bool)

(declare-fun e!437657 () Bool)

(assert (=> b!787317 (= e!437660 e!437657)))

(declare-fun res!533350 () Bool)

(assert (=> b!787317 (=> (not res!533350) (not e!437657))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!787317 (= res!533350 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20478 a!3186) j!159) mask!3328) (select (arr!20478 a!3186) j!159) a!3186 mask!3328) lt!351226))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!787317 (= lt!351226 (Intermediate!8085 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!787318 () Bool)

(declare-fun res!533367 () Bool)

(assert (=> b!787318 (=> (not res!533367) (not e!437655))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!787318 (= res!533367 (validKeyInArray!0 (select (arr!20478 a!3186) j!159)))))

(declare-fun b!787319 () Bool)

(declare-fun e!437661 () Bool)

(assert (=> b!787319 (= e!437661 true)))

(assert (=> b!787319 e!437653))

(declare-fun res!533365 () Bool)

(assert (=> b!787319 (=> (not res!533365) (not e!437653))))

(declare-fun lt!351228 () (_ BitVec 64))

(assert (=> b!787319 (= res!533365 (= lt!351228 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!351220 () Unit!27250)

(assert (=> b!787319 (= lt!351220 e!437656)))

(declare-fun c!87390 () Bool)

(assert (=> b!787319 (= c!87390 (= lt!351228 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!787320 () Bool)

(declare-fun res!533366 () Bool)

(assert (=> b!787320 (=> (not res!533366) (not e!437655))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42787 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!787320 (= res!533366 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!787321 () Bool)

(declare-fun res!533357 () Bool)

(assert (=> b!787321 (=> (not res!533357) (not e!437655))))

(assert (=> b!787321 (= res!533357 (validKeyInArray!0 k!2102))))

(declare-fun b!787322 () Bool)

(declare-fun res!533353 () Bool)

(assert (=> b!787322 (=> (not res!533353) (not e!437657))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!787322 (= res!533353 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20478 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!787323 () Bool)

(declare-fun e!437652 () Bool)

(declare-fun e!437651 () Bool)

(assert (=> b!787323 (= e!437652 e!437651)))

(declare-fun res!533368 () Bool)

(assert (=> b!787323 (=> res!533368 e!437651)))

(declare-fun lt!351224 () SeekEntryResult!8085)

(declare-fun lt!351219 () SeekEntryResult!8085)

(assert (=> b!787323 (= res!533368 (not (= lt!351224 lt!351219)))))

(assert (=> b!787323 (= lt!351224 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20478 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!787324 () Bool)

(declare-fun e!437658 () Bool)

(assert (=> b!787324 (= e!437658 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20478 a!3186) j!159) a!3186 mask!3328) lt!351219))))

(declare-fun b!787325 () Bool)

(declare-fun res!533351 () Bool)

(assert (=> b!787325 (=> (not res!533351) (not e!437657))))

(assert (=> b!787325 (= res!533351 e!437654)))

(declare-fun c!87389 () Bool)

(assert (=> b!787325 (= c!87389 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!787326 () Bool)

(assert (=> b!787326 (= e!437655 e!437660)))

(declare-fun res!533361 () Bool)

(assert (=> b!787326 (=> (not res!533361) (not e!437660))))

(declare-fun lt!351225 () SeekEntryResult!8085)

(assert (=> b!787326 (= res!533361 (or (= lt!351225 (MissingZero!8085 i!1173)) (= lt!351225 (MissingVacant!8085 i!1173))))))

(assert (=> b!787326 (= lt!351225 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!787327 () Bool)

(declare-fun lt!351223 () SeekEntryResult!8085)

(assert (=> b!787327 (= e!437653 (= lt!351223 lt!351224))))

(declare-fun b!787328 () Bool)

(declare-fun Unit!27253 () Unit!27250)

(assert (=> b!787328 (= e!437656 Unit!27253)))

(assert (=> b!787328 false))

(declare-fun b!787329 () Bool)

(declare-fun res!533362 () Bool)

(assert (=> b!787329 (=> (not res!533362) (not e!437660))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42787 (_ BitVec 32)) Bool)

(assert (=> b!787329 (= res!533362 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!787330 () Bool)

(assert (=> b!787330 (= e!437654 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20478 a!3186) j!159) a!3186 mask!3328) (Found!8085 j!159)))))

(declare-fun b!787331 () Bool)

(declare-fun e!437662 () Bool)

(assert (=> b!787331 (= e!437662 (not e!437652))))

(declare-fun res!533354 () Bool)

(assert (=> b!787331 (=> res!533354 e!437652)))

(declare-fun lt!351229 () SeekEntryResult!8085)

(assert (=> b!787331 (= res!533354 (or (not (is-Intermediate!8085 lt!351229)) (bvslt x!1131 (x!65674 lt!351229)) (not (= x!1131 (x!65674 lt!351229))) (not (= index!1321 (index!34709 lt!351229)))))))

(assert (=> b!787331 e!437658))

(declare-fun res!533360 () Bool)

(assert (=> b!787331 (=> (not res!533360) (not e!437658))))

(assert (=> b!787331 (= res!533360 (= lt!351223 lt!351219))))

(assert (=> b!787331 (= lt!351219 (Found!8085 j!159))))

(assert (=> b!787331 (= lt!351223 (seekEntryOrOpen!0 (select (arr!20478 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!787331 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!351218 () Unit!27250)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42787 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27250)

(assert (=> b!787331 (= lt!351218 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!787332 () Bool)

(assert (=> b!787332 (= e!437651 e!437661)))

(declare-fun res!533355 () Bool)

(assert (=> b!787332 (=> res!533355 e!437661)))

(assert (=> b!787332 (= res!533355 (= lt!351228 lt!351221))))

(assert (=> b!787332 (= lt!351228 (select (store (arr!20478 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!787333 () Bool)

(declare-fun res!533364 () Bool)

(assert (=> b!787333 (=> (not res!533364) (not e!437655))))

(assert (=> b!787333 (= res!533364 (and (= (size!20899 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20899 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20899 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!787334 () Bool)

(declare-fun res!533358 () Bool)

(assert (=> b!787334 (=> (not res!533358) (not e!437660))))

(assert (=> b!787334 (= res!533358 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20899 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20899 a!3186))))))

(declare-fun b!787335 () Bool)

(assert (=> b!787335 (= e!437657 e!437662)))

(declare-fun res!533363 () Bool)

(assert (=> b!787335 (=> (not res!533363) (not e!437662))))

(declare-fun lt!351227 () SeekEntryResult!8085)

(assert (=> b!787335 (= res!533363 (= lt!351227 lt!351229))))

(assert (=> b!787335 (= lt!351229 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!351221 lt!351222 mask!3328))))

(assert (=> b!787335 (= lt!351227 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!351221 mask!3328) lt!351221 lt!351222 mask!3328))))

(assert (=> b!787335 (= lt!351221 (select (store (arr!20478 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!787335 (= lt!351222 (array!42788 (store (arr!20478 a!3186) i!1173 k!2102) (size!20899 a!3186)))))

(assert (= (and start!67792 res!533359) b!787333))

(assert (= (and b!787333 res!533364) b!787318))

(assert (= (and b!787318 res!533367) b!787321))

(assert (= (and b!787321 res!533357) b!787320))

(assert (= (and b!787320 res!533366) b!787326))

(assert (= (and b!787326 res!533361) b!787329))

(assert (= (and b!787329 res!533362) b!787315))

(assert (= (and b!787315 res!533356) b!787334))

(assert (= (and b!787334 res!533358) b!787317))

(assert (= (and b!787317 res!533350) b!787322))

(assert (= (and b!787322 res!533353) b!787325))

(assert (= (and b!787325 c!87389) b!787316))

(assert (= (and b!787325 (not c!87389)) b!787330))

(assert (= (and b!787325 res!533351) b!787335))

(assert (= (and b!787335 res!533363) b!787331))

(assert (= (and b!787331 res!533360) b!787324))

(assert (= (and b!787331 (not res!533354)) b!787323))

(assert (= (and b!787323 (not res!533368)) b!787332))

(assert (= (and b!787332 (not res!533355)) b!787319))

(assert (= (and b!787319 c!87390) b!787328))

(assert (= (and b!787319 (not c!87390)) b!787314))

(assert (= (and b!787319 res!533365) b!787313))

(assert (= (and b!787313 res!533352) b!787327))

(declare-fun m!728965 () Bool)

(assert (=> b!787324 m!728965))

(assert (=> b!787324 m!728965))

(declare-fun m!728967 () Bool)

(assert (=> b!787324 m!728967))

(declare-fun m!728969 () Bool)

(assert (=> b!787332 m!728969))

(declare-fun m!728971 () Bool)

(assert (=> b!787332 m!728971))

(assert (=> b!787316 m!728965))

(assert (=> b!787316 m!728965))

(declare-fun m!728973 () Bool)

(assert (=> b!787316 m!728973))

(declare-fun m!728975 () Bool)

(assert (=> b!787313 m!728975))

(declare-fun m!728977 () Bool)

(assert (=> b!787313 m!728977))

(assert (=> b!787323 m!728965))

(assert (=> b!787323 m!728965))

(declare-fun m!728979 () Bool)

(assert (=> b!787323 m!728979))

(assert (=> b!787318 m!728965))

(assert (=> b!787318 m!728965))

(declare-fun m!728981 () Bool)

(assert (=> b!787318 m!728981))

(assert (=> b!787331 m!728965))

(assert (=> b!787331 m!728965))

(declare-fun m!728983 () Bool)

(assert (=> b!787331 m!728983))

(declare-fun m!728985 () Bool)

(assert (=> b!787331 m!728985))

(declare-fun m!728987 () Bool)

(assert (=> b!787331 m!728987))

(declare-fun m!728989 () Bool)

(assert (=> b!787320 m!728989))

(assert (=> b!787317 m!728965))

(assert (=> b!787317 m!728965))

(declare-fun m!728991 () Bool)

(assert (=> b!787317 m!728991))

(assert (=> b!787317 m!728991))

(assert (=> b!787317 m!728965))

(declare-fun m!728993 () Bool)

(assert (=> b!787317 m!728993))

(declare-fun m!728995 () Bool)

(assert (=> b!787335 m!728995))

(declare-fun m!728997 () Bool)

(assert (=> b!787335 m!728997))

(declare-fun m!728999 () Bool)

(assert (=> b!787335 m!728999))

(assert (=> b!787335 m!728969))

(declare-fun m!729001 () Bool)

(assert (=> b!787335 m!729001))

(assert (=> b!787335 m!728997))

(declare-fun m!729003 () Bool)

(assert (=> b!787322 m!729003))

(declare-fun m!729005 () Bool)

(assert (=> b!787315 m!729005))

(declare-fun m!729007 () Bool)

(assert (=> b!787326 m!729007))

(declare-fun m!729009 () Bool)

(assert (=> b!787329 m!729009))

(declare-fun m!729011 () Bool)

(assert (=> start!67792 m!729011))

(declare-fun m!729013 () Bool)

(assert (=> start!67792 m!729013))

(declare-fun m!729015 () Bool)

(assert (=> b!787321 m!729015))

(assert (=> b!787330 m!728965))

(assert (=> b!787330 m!728965))

(assert (=> b!787330 m!728979))

(push 1)

