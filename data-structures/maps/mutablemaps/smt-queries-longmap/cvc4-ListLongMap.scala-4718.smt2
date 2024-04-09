; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65390 () Bool)

(assert start!65390)

(declare-fun b!743299 () Bool)

(declare-fun e!415329 () Bool)

(declare-fun e!415333 () Bool)

(assert (=> b!743299 (= e!415329 e!415333)))

(declare-fun res!500534 () Bool)

(assert (=> b!743299 (=> (not res!500534) (not e!415333))))

(declare-datatypes ((SeekEntryResult!7475 0))(
  ( (MissingZero!7475 (index!32267 (_ BitVec 32))) (Found!7475 (index!32268 (_ BitVec 32))) (Intermediate!7475 (undefined!8287 Bool) (index!32269 (_ BitVec 32)) (x!63258 (_ BitVec 32))) (Undefined!7475) (MissingVacant!7475 (index!32270 (_ BitVec 32))) )
))
(declare-fun lt!330211 () SeekEntryResult!7475)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!743299 (= res!500534 (or (= lt!330211 (MissingZero!7475 i!1173)) (= lt!330211 (MissingVacant!7475 i!1173))))))

(declare-datatypes ((array!41516 0))(
  ( (array!41517 (arr!19868 (Array (_ BitVec 32) (_ BitVec 64))) (size!20289 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41516)

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41516 (_ BitVec 32)) SeekEntryResult!7475)

(assert (=> b!743299 (= lt!330211 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!743300 () Bool)

(declare-fun e!415330 () Bool)

(declare-fun e!415327 () Bool)

(assert (=> b!743300 (= e!415330 e!415327)))

(declare-fun res!500543 () Bool)

(assert (=> b!743300 (=> (not res!500543) (not e!415327))))

(declare-fun lt!330214 () SeekEntryResult!7475)

(declare-fun lt!330216 () SeekEntryResult!7475)

(assert (=> b!743300 (= res!500543 (= lt!330214 lt!330216))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!330210 () array!41516)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!330212 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41516 (_ BitVec 32)) SeekEntryResult!7475)

(assert (=> b!743300 (= lt!330216 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!330212 lt!330210 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!743300 (= lt!330214 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!330212 mask!3328) lt!330212 lt!330210 mask!3328))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!743300 (= lt!330212 (select (store (arr!19868 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!743300 (= lt!330210 (array!41517 (store (arr!19868 a!3186) i!1173 k!2102) (size!20289 a!3186)))))

(declare-fun b!743301 () Bool)

(declare-fun res!500531 () Bool)

(assert (=> b!743301 (=> (not res!500531) (not e!415330))))

(declare-fun e!415328 () Bool)

(assert (=> b!743301 (= res!500531 e!415328)))

(declare-fun c!81765 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!743301 (= c!81765 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!743303 () Bool)

(declare-fun res!500545 () Bool)

(assert (=> b!743303 (=> (not res!500545) (not e!415333))))

(declare-datatypes ((List!13923 0))(
  ( (Nil!13920) (Cons!13919 (h!14991 (_ BitVec 64)) (t!20246 List!13923)) )
))
(declare-fun arrayNoDuplicates!0 (array!41516 (_ BitVec 32) List!13923) Bool)

(assert (=> b!743303 (= res!500545 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13920))))

(declare-fun b!743304 () Bool)

(declare-fun res!500539 () Bool)

(assert (=> b!743304 (=> (not res!500539) (not e!415329))))

(declare-fun arrayContainsKey!0 (array!41516 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!743304 (= res!500539 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!743305 () Bool)

(declare-fun e!415334 () Bool)

(declare-fun e!415332 () Bool)

(assert (=> b!743305 (= e!415334 e!415332)))

(declare-fun res!500537 () Bool)

(assert (=> b!743305 (=> (not res!500537) (not e!415332))))

(declare-fun lt!330215 () SeekEntryResult!7475)

(assert (=> b!743305 (= res!500537 (= (seekEntryOrOpen!0 (select (arr!19868 a!3186) j!159) a!3186 mask!3328) lt!330215))))

(assert (=> b!743305 (= lt!330215 (Found!7475 j!159))))

(declare-fun b!743306 () Bool)

(declare-fun res!500538 () Bool)

(assert (=> b!743306 (=> (not res!500538) (not e!415329))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!743306 (= res!500538 (validKeyInArray!0 k!2102))))

(declare-fun b!743307 () Bool)

(declare-fun res!500546 () Bool)

(declare-fun e!415331 () Bool)

(assert (=> b!743307 (=> res!500546 e!415331)))

(assert (=> b!743307 (= res!500546 (or (not (= (select (store (arr!19868 a!3186) i!1173 k!2102) index!1321) lt!330212)) (undefined!8287 lt!330216)))))

(declare-fun b!743308 () Bool)

(assert (=> b!743308 (= e!415333 e!415330)))

(declare-fun res!500535 () Bool)

(assert (=> b!743308 (=> (not res!500535) (not e!415330))))

(declare-fun lt!330213 () SeekEntryResult!7475)

(assert (=> b!743308 (= res!500535 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19868 a!3186) j!159) mask!3328) (select (arr!19868 a!3186) j!159) a!3186 mask!3328) lt!330213))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!743308 (= lt!330213 (Intermediate!7475 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!743309 () Bool)

(declare-fun res!500547 () Bool)

(assert (=> b!743309 (=> (not res!500547) (not e!415330))))

(assert (=> b!743309 (= res!500547 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19868 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!743310 () Bool)

(declare-fun res!500533 () Bool)

(assert (=> b!743310 (=> (not res!500533) (not e!415329))))

(assert (=> b!743310 (= res!500533 (validKeyInArray!0 (select (arr!19868 a!3186) j!159)))))

(declare-fun b!743311 () Bool)

(assert (=> b!743311 (= e!415331 true)))

(declare-fun lt!330217 () SeekEntryResult!7475)

(assert (=> b!743311 (= lt!330217 (seekEntryOrOpen!0 lt!330212 lt!330210 mask!3328))))

(declare-fun res!500542 () Bool)

(assert (=> start!65390 (=> (not res!500542) (not e!415329))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65390 (= res!500542 (validMask!0 mask!3328))))

(assert (=> start!65390 e!415329))

(assert (=> start!65390 true))

(declare-fun array_inv!15642 (array!41516) Bool)

(assert (=> start!65390 (array_inv!15642 a!3186)))

(declare-fun b!743302 () Bool)

(declare-fun res!500530 () Bool)

(assert (=> b!743302 (=> (not res!500530) (not e!415333))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41516 (_ BitVec 32)) Bool)

(assert (=> b!743302 (= res!500530 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!743312 () Bool)

(assert (=> b!743312 (= e!415328 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19868 a!3186) j!159) a!3186 mask!3328) lt!330213))))

(declare-fun b!743313 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41516 (_ BitVec 32)) SeekEntryResult!7475)

(assert (=> b!743313 (= e!415328 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19868 a!3186) j!159) a!3186 mask!3328) (Found!7475 j!159)))))

(declare-fun b!743314 () Bool)

(declare-fun res!500541 () Bool)

(assert (=> b!743314 (=> (not res!500541) (not e!415333))))

(assert (=> b!743314 (= res!500541 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20289 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20289 a!3186))))))

(declare-fun b!743315 () Bool)

(declare-fun res!500544 () Bool)

(assert (=> b!743315 (=> res!500544 e!415331)))

(assert (=> b!743315 (= res!500544 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19868 a!3186) j!159) a!3186 mask!3328) (Found!7475 j!159))))))

(declare-fun b!743316 () Bool)

(assert (=> b!743316 (= e!415332 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19868 a!3186) j!159) a!3186 mask!3328) lt!330215))))

(declare-fun b!743317 () Bool)

(assert (=> b!743317 (= e!415327 (not e!415331))))

(declare-fun res!500540 () Bool)

(assert (=> b!743317 (=> res!500540 e!415331)))

(assert (=> b!743317 (= res!500540 (or (not (is-Intermediate!7475 lt!330216)) (bvslt x!1131 (x!63258 lt!330216)) (not (= x!1131 (x!63258 lt!330216))) (not (= index!1321 (index!32269 lt!330216)))))))

(assert (=> b!743317 e!415334))

(declare-fun res!500536 () Bool)

(assert (=> b!743317 (=> (not res!500536) (not e!415334))))

(assert (=> b!743317 (= res!500536 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25430 0))(
  ( (Unit!25431) )
))
(declare-fun lt!330218 () Unit!25430)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41516 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25430)

(assert (=> b!743317 (= lt!330218 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!743318 () Bool)

(declare-fun res!500532 () Bool)

(assert (=> b!743318 (=> (not res!500532) (not e!415329))))

(assert (=> b!743318 (= res!500532 (and (= (size!20289 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20289 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20289 a!3186)) (not (= i!1173 j!159))))))

(assert (= (and start!65390 res!500542) b!743318))

(assert (= (and b!743318 res!500532) b!743310))

(assert (= (and b!743310 res!500533) b!743306))

(assert (= (and b!743306 res!500538) b!743304))

(assert (= (and b!743304 res!500539) b!743299))

(assert (= (and b!743299 res!500534) b!743302))

(assert (= (and b!743302 res!500530) b!743303))

(assert (= (and b!743303 res!500545) b!743314))

(assert (= (and b!743314 res!500541) b!743308))

(assert (= (and b!743308 res!500535) b!743309))

(assert (= (and b!743309 res!500547) b!743301))

(assert (= (and b!743301 c!81765) b!743312))

(assert (= (and b!743301 (not c!81765)) b!743313))

(assert (= (and b!743301 res!500531) b!743300))

(assert (= (and b!743300 res!500543) b!743317))

(assert (= (and b!743317 res!500536) b!743305))

(assert (= (and b!743305 res!500537) b!743316))

(assert (= (and b!743317 (not res!500540)) b!743315))

(assert (= (and b!743315 (not res!500544)) b!743307))

(assert (= (and b!743307 (not res!500546)) b!743311))

(declare-fun m!694091 () Bool)

(assert (=> b!743312 m!694091))

(assert (=> b!743312 m!694091))

(declare-fun m!694093 () Bool)

(assert (=> b!743312 m!694093))

(declare-fun m!694095 () Bool)

(assert (=> b!743307 m!694095))

(declare-fun m!694097 () Bool)

(assert (=> b!743307 m!694097))

(assert (=> b!743313 m!694091))

(assert (=> b!743313 m!694091))

(declare-fun m!694099 () Bool)

(assert (=> b!743313 m!694099))

(assert (=> b!743305 m!694091))

(assert (=> b!743305 m!694091))

(declare-fun m!694101 () Bool)

(assert (=> b!743305 m!694101))

(assert (=> b!743310 m!694091))

(assert (=> b!743310 m!694091))

(declare-fun m!694103 () Bool)

(assert (=> b!743310 m!694103))

(declare-fun m!694105 () Bool)

(assert (=> start!65390 m!694105))

(declare-fun m!694107 () Bool)

(assert (=> start!65390 m!694107))

(assert (=> b!743315 m!694091))

(assert (=> b!743315 m!694091))

(assert (=> b!743315 m!694099))

(declare-fun m!694109 () Bool)

(assert (=> b!743317 m!694109))

(declare-fun m!694111 () Bool)

(assert (=> b!743317 m!694111))

(assert (=> b!743308 m!694091))

(assert (=> b!743308 m!694091))

(declare-fun m!694113 () Bool)

(assert (=> b!743308 m!694113))

(assert (=> b!743308 m!694113))

(assert (=> b!743308 m!694091))

(declare-fun m!694115 () Bool)

(assert (=> b!743308 m!694115))

(declare-fun m!694117 () Bool)

(assert (=> b!743303 m!694117))

(declare-fun m!694119 () Bool)

(assert (=> b!743304 m!694119))

(declare-fun m!694121 () Bool)

(assert (=> b!743299 m!694121))

(declare-fun m!694123 () Bool)

(assert (=> b!743309 m!694123))

(declare-fun m!694125 () Bool)

(assert (=> b!743300 m!694125))

(declare-fun m!694127 () Bool)

(assert (=> b!743300 m!694127))

(declare-fun m!694129 () Bool)

(assert (=> b!743300 m!694129))

(assert (=> b!743300 m!694125))

(assert (=> b!743300 m!694095))

(declare-fun m!694131 () Bool)

(assert (=> b!743300 m!694131))

(declare-fun m!694133 () Bool)

(assert (=> b!743302 m!694133))

(declare-fun m!694135 () Bool)

(assert (=> b!743306 m!694135))

(assert (=> b!743316 m!694091))

(assert (=> b!743316 m!694091))

(declare-fun m!694137 () Bool)

(assert (=> b!743316 m!694137))

(declare-fun m!694139 () Bool)

(assert (=> b!743311 m!694139))

(push 1)

