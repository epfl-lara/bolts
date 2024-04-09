; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64538 () Bool)

(assert start!64538)

(declare-fun b!726214 () Bool)

(declare-fun res!487356 () Bool)

(declare-fun e!406638 () Bool)

(assert (=> b!726214 (=> (not res!487356) (not e!406638))))

(declare-datatypes ((array!41009 0))(
  ( (array!41010 (arr!19622 (Array (_ BitVec 32) (_ BitVec 64))) (size!20043 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41009)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!726214 (= res!487356 (validKeyInArray!0 (select (arr!19622 a!3186) j!159)))))

(declare-fun b!726215 () Bool)

(declare-fun res!487351 () Bool)

(declare-fun e!406634 () Bool)

(assert (=> b!726215 (=> (not res!487351) (not e!406634))))

(declare-fun e!406635 () Bool)

(assert (=> b!726215 (= res!487351 e!406635)))

(declare-fun c!79806 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!726215 (= c!79806 (bvsle x!1131 resIntermediateX!5))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7229 0))(
  ( (MissingZero!7229 (index!31283 (_ BitVec 32))) (Found!7229 (index!31284 (_ BitVec 32))) (Intermediate!7229 (undefined!8041 Bool) (index!31285 (_ BitVec 32)) (x!62296 (_ BitVec 32))) (Undefined!7229) (MissingVacant!7229 (index!31286 (_ BitVec 32))) )
))
(declare-fun lt!321641 () SeekEntryResult!7229)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun b!726216 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41009 (_ BitVec 32)) SeekEntryResult!7229)

(assert (=> b!726216 (= e!406635 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19622 a!3186) j!159) a!3186 mask!3328) lt!321641))))

(declare-fun b!726217 () Bool)

(declare-fun res!487361 () Bool)

(assert (=> b!726217 (=> (not res!487361) (not e!406638))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!726217 (= res!487361 (and (= (size!20043 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20043 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20043 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!726218 () Bool)

(declare-fun e!406636 () Bool)

(assert (=> b!726218 (= e!406638 e!406636)))

(declare-fun res!487350 () Bool)

(assert (=> b!726218 (=> (not res!487350) (not e!406636))))

(declare-fun lt!321644 () SeekEntryResult!7229)

(assert (=> b!726218 (= res!487350 (or (= lt!321644 (MissingZero!7229 i!1173)) (= lt!321644 (MissingVacant!7229 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41009 (_ BitVec 32)) SeekEntryResult!7229)

(assert (=> b!726218 (= lt!321644 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!726219 () Bool)

(declare-fun e!406641 () Bool)

(declare-fun e!406637 () Bool)

(assert (=> b!726219 (= e!406641 e!406637)))

(declare-fun res!487355 () Bool)

(assert (=> b!726219 (=> (not res!487355) (not e!406637))))

(declare-fun lt!321643 () SeekEntryResult!7229)

(assert (=> b!726219 (= res!487355 (= (seekEntryOrOpen!0 (select (arr!19622 a!3186) j!159) a!3186 mask!3328) lt!321643))))

(assert (=> b!726219 (= lt!321643 (Found!7229 j!159))))

(declare-fun b!726220 () Bool)

(declare-fun e!406639 () Bool)

(assert (=> b!726220 (= e!406634 e!406639)))

(declare-fun res!487359 () Bool)

(assert (=> b!726220 (=> (not res!487359) (not e!406639))))

(declare-fun lt!321642 () SeekEntryResult!7229)

(declare-fun lt!321639 () SeekEntryResult!7229)

(assert (=> b!726220 (= res!487359 (= lt!321642 lt!321639))))

(declare-fun lt!321640 () (_ BitVec 64))

(declare-fun lt!321638 () array!41009)

(assert (=> b!726220 (= lt!321639 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!321640 lt!321638 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!726220 (= lt!321642 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!321640 mask!3328) lt!321640 lt!321638 mask!3328))))

(assert (=> b!726220 (= lt!321640 (select (store (arr!19622 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!726220 (= lt!321638 (array!41010 (store (arr!19622 a!3186) i!1173 k!2102) (size!20043 a!3186)))))

(declare-fun b!726221 () Bool)

(declare-fun res!487358 () Bool)

(assert (=> b!726221 (=> (not res!487358) (not e!406636))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41009 (_ BitVec 32)) Bool)

(assert (=> b!726221 (= res!487358 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!726222 () Bool)

(declare-fun res!487362 () Bool)

(assert (=> b!726222 (=> (not res!487362) (not e!406634))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!726222 (= res!487362 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19622 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!726223 () Bool)

(assert (=> b!726223 (= e!406639 (not (or (not (is-Intermediate!7229 lt!321639)) (bvsge x!1131 (x!62296 lt!321639)) (bvsge mask!3328 #b00000000000000000000000000000000))))))

(assert (=> b!726223 e!406641))

(declare-fun res!487360 () Bool)

(assert (=> b!726223 (=> (not res!487360) (not e!406641))))

(assert (=> b!726223 (= res!487360 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24776 0))(
  ( (Unit!24777) )
))
(declare-fun lt!321637 () Unit!24776)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41009 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24776)

(assert (=> b!726223 (= lt!321637 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!726224 () Bool)

(declare-fun res!487352 () Bool)

(assert (=> b!726224 (=> (not res!487352) (not e!406638))))

(declare-fun arrayContainsKey!0 (array!41009 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!726224 (= res!487352 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!726225 () Bool)

(assert (=> b!726225 (= e!406636 e!406634)))

(declare-fun res!487354 () Bool)

(assert (=> b!726225 (=> (not res!487354) (not e!406634))))

(assert (=> b!726225 (= res!487354 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19622 a!3186) j!159) mask!3328) (select (arr!19622 a!3186) j!159) a!3186 mask!3328) lt!321641))))

(assert (=> b!726225 (= lt!321641 (Intermediate!7229 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!726226 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41009 (_ BitVec 32)) SeekEntryResult!7229)

(assert (=> b!726226 (= e!406637 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19622 a!3186) j!159) a!3186 mask!3328) lt!321643))))

(declare-fun b!726227 () Bool)

(declare-fun res!487353 () Bool)

(assert (=> b!726227 (=> (not res!487353) (not e!406636))))

(declare-datatypes ((List!13677 0))(
  ( (Nil!13674) (Cons!13673 (h!14730 (_ BitVec 64)) (t!20000 List!13677)) )
))
(declare-fun arrayNoDuplicates!0 (array!41009 (_ BitVec 32) List!13677) Bool)

(assert (=> b!726227 (= res!487353 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13674))))

(declare-fun b!726228 () Bool)

(assert (=> b!726228 (= e!406635 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19622 a!3186) j!159) a!3186 mask!3328) (Found!7229 j!159)))))

(declare-fun res!487349 () Bool)

(assert (=> start!64538 (=> (not res!487349) (not e!406638))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64538 (= res!487349 (validMask!0 mask!3328))))

(assert (=> start!64538 e!406638))

(assert (=> start!64538 true))

(declare-fun array_inv!15396 (array!41009) Bool)

(assert (=> start!64538 (array_inv!15396 a!3186)))

(declare-fun b!726229 () Bool)

(declare-fun res!487357 () Bool)

(assert (=> b!726229 (=> (not res!487357) (not e!406636))))

(assert (=> b!726229 (= res!487357 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20043 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20043 a!3186))))))

(declare-fun b!726230 () Bool)

(declare-fun res!487348 () Bool)

(assert (=> b!726230 (=> (not res!487348) (not e!406638))))

(assert (=> b!726230 (= res!487348 (validKeyInArray!0 k!2102))))

(assert (= (and start!64538 res!487349) b!726217))

(assert (= (and b!726217 res!487361) b!726214))

(assert (= (and b!726214 res!487356) b!726230))

(assert (= (and b!726230 res!487348) b!726224))

(assert (= (and b!726224 res!487352) b!726218))

(assert (= (and b!726218 res!487350) b!726221))

(assert (= (and b!726221 res!487358) b!726227))

(assert (= (and b!726227 res!487353) b!726229))

(assert (= (and b!726229 res!487357) b!726225))

(assert (= (and b!726225 res!487354) b!726222))

(assert (= (and b!726222 res!487362) b!726215))

(assert (= (and b!726215 c!79806) b!726216))

(assert (= (and b!726215 (not c!79806)) b!726228))

(assert (= (and b!726215 res!487351) b!726220))

(assert (= (and b!726220 res!487359) b!726223))

(assert (= (and b!726223 res!487360) b!726219))

(assert (= (and b!726219 res!487355) b!726226))

(declare-fun m!680385 () Bool)

(assert (=> b!726220 m!680385))

(declare-fun m!680387 () Bool)

(assert (=> b!726220 m!680387))

(declare-fun m!680389 () Bool)

(assert (=> b!726220 m!680389))

(assert (=> b!726220 m!680385))

(declare-fun m!680391 () Bool)

(assert (=> b!726220 m!680391))

(declare-fun m!680393 () Bool)

(assert (=> b!726220 m!680393))

(declare-fun m!680395 () Bool)

(assert (=> b!726222 m!680395))

(declare-fun m!680397 () Bool)

(assert (=> b!726218 m!680397))

(declare-fun m!680399 () Bool)

(assert (=> b!726216 m!680399))

(assert (=> b!726216 m!680399))

(declare-fun m!680401 () Bool)

(assert (=> b!726216 m!680401))

(declare-fun m!680403 () Bool)

(assert (=> b!726224 m!680403))

(declare-fun m!680405 () Bool)

(assert (=> b!726230 m!680405))

(declare-fun m!680407 () Bool)

(assert (=> b!726223 m!680407))

(declare-fun m!680409 () Bool)

(assert (=> b!726223 m!680409))

(assert (=> b!726228 m!680399))

(assert (=> b!726228 m!680399))

(declare-fun m!680411 () Bool)

(assert (=> b!726228 m!680411))

(declare-fun m!680413 () Bool)

(assert (=> start!64538 m!680413))

(declare-fun m!680415 () Bool)

(assert (=> start!64538 m!680415))

(declare-fun m!680417 () Bool)

(assert (=> b!726227 m!680417))

(declare-fun m!680419 () Bool)

(assert (=> b!726221 m!680419))

(assert (=> b!726225 m!680399))

(assert (=> b!726225 m!680399))

(declare-fun m!680421 () Bool)

(assert (=> b!726225 m!680421))

(assert (=> b!726225 m!680421))

(assert (=> b!726225 m!680399))

(declare-fun m!680423 () Bool)

(assert (=> b!726225 m!680423))

(assert (=> b!726219 m!680399))

(assert (=> b!726219 m!680399))

(declare-fun m!680425 () Bool)

(assert (=> b!726219 m!680425))

(assert (=> b!726214 m!680399))

(assert (=> b!726214 m!680399))

(declare-fun m!680427 () Bool)

(assert (=> b!726214 m!680427))

(assert (=> b!726226 m!680399))

(assert (=> b!726226 m!680399))

(declare-fun m!680429 () Bool)

(assert (=> b!726226 m!680429))

(push 1)

(assert (not start!64538))

