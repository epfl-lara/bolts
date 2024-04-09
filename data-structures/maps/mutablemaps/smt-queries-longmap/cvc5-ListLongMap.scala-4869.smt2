; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67144 () Bool)

(assert start!67144)

(declare-fun b!775251 () Bool)

(declare-fun e!431500 () Bool)

(declare-fun e!431504 () Bool)

(assert (=> b!775251 (= e!431500 e!431504)))

(declare-fun res!524360 () Bool)

(assert (=> b!775251 (=> (not res!524360) (not e!431504))))

(declare-datatypes ((array!42454 0))(
  ( (array!42455 (arr!20319 (Array (_ BitVec 32) (_ BitVec 64))) (size!20740 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42454)

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7926 0))(
  ( (MissingZero!7926 (index!34071 (_ BitVec 32))) (Found!7926 (index!34072 (_ BitVec 32))) (Intermediate!7926 (undefined!8738 Bool) (index!34073 (_ BitVec 32)) (x!65046 (_ BitVec 32))) (Undefined!7926) (MissingVacant!7926 (index!34074 (_ BitVec 32))) )
))
(declare-fun lt!345373 () SeekEntryResult!7926)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42454 (_ BitVec 32)) SeekEntryResult!7926)

(assert (=> b!775251 (= res!524360 (= (seekEntryOrOpen!0 (select (arr!20319 a!3186) j!159) a!3186 mask!3328) lt!345373))))

(assert (=> b!775251 (= lt!345373 (Found!7926 j!159))))

(declare-fun lt!345379 () SeekEntryResult!7926)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!775252 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun e!431505 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42454 (_ BitVec 32)) SeekEntryResult!7926)

(assert (=> b!775252 (= e!431505 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20319 a!3186) j!159) a!3186 mask!3328) lt!345379))))

(declare-fun b!775253 () Bool)

(declare-fun e!431506 () Bool)

(declare-fun e!431498 () Bool)

(assert (=> b!775253 (= e!431506 e!431498)))

(declare-fun res!524377 () Bool)

(assert (=> b!775253 (=> (not res!524377) (not e!431498))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!775253 (= res!524377 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20319 a!3186) j!159) mask!3328) (select (arr!20319 a!3186) j!159) a!3186 mask!3328) lt!345379))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!775253 (= lt!345379 (Intermediate!7926 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!775254 () Bool)

(declare-fun res!524376 () Bool)

(assert (=> b!775254 (=> (not res!524376) (not e!431506))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42454 (_ BitVec 32)) Bool)

(assert (=> b!775254 (= res!524376 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!775255 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42454 (_ BitVec 32)) SeekEntryResult!7926)

(assert (=> b!775255 (= e!431505 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20319 a!3186) j!159) a!3186 mask!3328) (Found!7926 j!159)))))

(declare-fun lt!345382 () SeekEntryResult!7926)

(declare-fun lt!345370 () (_ BitVec 32))

(declare-fun e!431503 () Bool)

(declare-fun b!775256 () Bool)

(assert (=> b!775256 (= e!431503 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!345370 resIntermediateIndex!5 (select (arr!20319 a!3186) j!159) a!3186 mask!3328) lt!345382)))))

(declare-fun b!775257 () Bool)

(declare-fun res!524371 () Bool)

(assert (=> b!775257 (=> (not res!524371) (not e!431498))))

(assert (=> b!775257 (= res!524371 e!431505)))

(declare-fun c!85847 () Bool)

(assert (=> b!775257 (= c!85847 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!775258 () Bool)

(declare-fun res!524365 () Bool)

(declare-fun e!431501 () Bool)

(assert (=> b!775258 (=> (not res!524365) (not e!431501))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42454 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!775258 (= res!524365 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!775259 () Bool)

(declare-fun res!524370 () Bool)

(declare-fun e!431496 () Bool)

(assert (=> b!775259 (=> res!524370 e!431496)))

(declare-fun lt!345372 () array!42454)

(declare-fun lt!345369 () SeekEntryResult!7926)

(declare-fun lt!345375 () (_ BitVec 64))

(assert (=> b!775259 (= res!524370 (not (= lt!345369 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!345370 lt!345375 lt!345372 mask!3328))))))

(declare-fun b!775260 () Bool)

(declare-fun res!524362 () Bool)

(assert (=> b!775260 (=> (not res!524362) (not e!431501))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!775260 (= res!524362 (validKeyInArray!0 (select (arr!20319 a!3186) j!159)))))

(declare-fun b!775261 () Bool)

(assert (=> b!775261 (= e!431504 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20319 a!3186) j!159) a!3186 mask!3328) lt!345373))))

(declare-fun b!775262 () Bool)

(declare-fun e!431502 () Bool)

(assert (=> b!775262 (= e!431498 e!431502)))

(declare-fun res!524367 () Bool)

(assert (=> b!775262 (=> (not res!524367) (not e!431502))))

(declare-fun lt!345376 () SeekEntryResult!7926)

(assert (=> b!775262 (= res!524367 (= lt!345369 lt!345376))))

(assert (=> b!775262 (= lt!345376 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!345375 lt!345372 mask!3328))))

(assert (=> b!775262 (= lt!345369 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!345375 mask!3328) lt!345375 lt!345372 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!775262 (= lt!345375 (select (store (arr!20319 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!775262 (= lt!345372 (array!42455 (store (arr!20319 a!3186) i!1173 k!2102) (size!20740 a!3186)))))

(declare-fun b!775263 () Bool)

(assert (=> b!775263 (= e!431503 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!345370 (select (arr!20319 a!3186) j!159) a!3186 mask!3328) lt!345379)))))

(declare-fun b!775264 () Bool)

(declare-datatypes ((Unit!26740 0))(
  ( (Unit!26741) )
))
(declare-fun e!431499 () Unit!26740)

(declare-fun Unit!26742 () Unit!26740)

(assert (=> b!775264 (= e!431499 Unit!26742)))

(declare-fun lt!345381 () SeekEntryResult!7926)

(assert (=> b!775264 (= lt!345381 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20319 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!775264 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!345370 resIntermediateIndex!5 (select (arr!20319 a!3186) j!159) a!3186 mask!3328) lt!345382)))

(declare-fun b!775265 () Bool)

(declare-fun res!524373 () Bool)

(assert (=> b!775265 (=> res!524373 e!431496)))

(assert (=> b!775265 (= res!524373 e!431503)))

(declare-fun c!85846 () Bool)

(declare-fun lt!345374 () Bool)

(assert (=> b!775265 (= c!85846 lt!345374)))

(declare-fun b!775266 () Bool)

(declare-fun res!524375 () Bool)

(assert (=> b!775266 (=> (not res!524375) (not e!431498))))

(assert (=> b!775266 (= res!524375 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20319 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!775267 () Bool)

(assert (=> b!775267 (= e!431496 true)))

(assert (=> b!775267 (= (seekEntryOrOpen!0 lt!345375 lt!345372 mask!3328) lt!345382)))

(declare-fun lt!345377 () Unit!26740)

(declare-fun lemmaPutValidKeyPreservesVacantIsAtI!0 (array!42454 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26740)

(assert (=> b!775267 (= lt!345377 (lemmaPutValidKeyPreservesVacantIsAtI!0 a!3186 i!1173 k!2102 j!159 lt!345370 (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateIndex!5 resIntermediateX!5 mask!3328))))

(declare-fun b!775268 () Bool)

(assert (=> b!775268 (= e!431501 e!431506)))

(declare-fun res!524374 () Bool)

(assert (=> b!775268 (=> (not res!524374) (not e!431506))))

(declare-fun lt!345371 () SeekEntryResult!7926)

(assert (=> b!775268 (= res!524374 (or (= lt!345371 (MissingZero!7926 i!1173)) (= lt!345371 (MissingVacant!7926 i!1173))))))

(assert (=> b!775268 (= lt!345371 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!775269 () Bool)

(declare-fun e!431495 () Bool)

(assert (=> b!775269 (= e!431495 e!431496)))

(declare-fun res!524361 () Bool)

(assert (=> b!775269 (=> res!524361 e!431496)))

(assert (=> b!775269 (= res!524361 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt lt!345370 #b00000000000000000000000000000000) (bvsge lt!345370 (size!20740 a!3186))))))

(declare-fun lt!345380 () Unit!26740)

(assert (=> b!775269 (= lt!345380 e!431499)))

(declare-fun c!85848 () Bool)

(assert (=> b!775269 (= c!85848 lt!345374)))

(assert (=> b!775269 (= lt!345374 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!775269 (= lt!345370 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!775270 () Bool)

(declare-fun res!524359 () Bool)

(assert (=> b!775270 (=> (not res!524359) (not e!431506))))

(declare-datatypes ((List!14374 0))(
  ( (Nil!14371) (Cons!14370 (h!15478 (_ BitVec 64)) (t!20697 List!14374)) )
))
(declare-fun arrayNoDuplicates!0 (array!42454 (_ BitVec 32) List!14374) Bool)

(assert (=> b!775270 (= res!524359 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14371))))

(declare-fun b!775271 () Bool)

(declare-fun res!524364 () Bool)

(assert (=> b!775271 (=> (not res!524364) (not e!431506))))

(assert (=> b!775271 (= res!524364 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20740 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20740 a!3186))))))

(declare-fun b!775272 () Bool)

(assert (=> b!775272 (= e!431502 (not e!431495))))

(declare-fun res!524368 () Bool)

(assert (=> b!775272 (=> res!524368 e!431495)))

(assert (=> b!775272 (= res!524368 (or (not (is-Intermediate!7926 lt!345376)) (bvsge x!1131 (x!65046 lt!345376))))))

(assert (=> b!775272 (= lt!345382 (Found!7926 j!159))))

(assert (=> b!775272 e!431500))

(declare-fun res!524372 () Bool)

(assert (=> b!775272 (=> (not res!524372) (not e!431500))))

(assert (=> b!775272 (= res!524372 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!345378 () Unit!26740)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42454 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26740)

(assert (=> b!775272 (= lt!345378 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!775273 () Bool)

(declare-fun res!524363 () Bool)

(assert (=> b!775273 (=> (not res!524363) (not e!431501))))

(assert (=> b!775273 (= res!524363 (and (= (size!20740 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20740 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20740 a!3186)) (not (= i!1173 j!159))))))

(declare-fun res!524366 () Bool)

(assert (=> start!67144 (=> (not res!524366) (not e!431501))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67144 (= res!524366 (validMask!0 mask!3328))))

(assert (=> start!67144 e!431501))

(assert (=> start!67144 true))

(declare-fun array_inv!16093 (array!42454) Bool)

(assert (=> start!67144 (array_inv!16093 a!3186)))

(declare-fun b!775274 () Bool)

(declare-fun res!524369 () Bool)

(assert (=> b!775274 (=> (not res!524369) (not e!431501))))

(assert (=> b!775274 (= res!524369 (validKeyInArray!0 k!2102))))

(declare-fun b!775275 () Bool)

(declare-fun Unit!26743 () Unit!26740)

(assert (=> b!775275 (= e!431499 Unit!26743)))

(assert (=> b!775275 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!345370 (select (arr!20319 a!3186) j!159) a!3186 mask!3328) lt!345379)))

(assert (= (and start!67144 res!524366) b!775273))

(assert (= (and b!775273 res!524363) b!775260))

(assert (= (and b!775260 res!524362) b!775274))

(assert (= (and b!775274 res!524369) b!775258))

(assert (= (and b!775258 res!524365) b!775268))

(assert (= (and b!775268 res!524374) b!775254))

(assert (= (and b!775254 res!524376) b!775270))

(assert (= (and b!775270 res!524359) b!775271))

(assert (= (and b!775271 res!524364) b!775253))

(assert (= (and b!775253 res!524377) b!775266))

(assert (= (and b!775266 res!524375) b!775257))

(assert (= (and b!775257 c!85847) b!775252))

(assert (= (and b!775257 (not c!85847)) b!775255))

(assert (= (and b!775257 res!524371) b!775262))

(assert (= (and b!775262 res!524367) b!775272))

(assert (= (and b!775272 res!524372) b!775251))

(assert (= (and b!775251 res!524360) b!775261))

(assert (= (and b!775272 (not res!524368)) b!775269))

(assert (= (and b!775269 c!85848) b!775275))

(assert (= (and b!775269 (not c!85848)) b!775264))

(assert (= (and b!775269 (not res!524361)) b!775265))

(assert (= (and b!775265 c!85846) b!775263))

(assert (= (and b!775265 (not c!85846)) b!775256))

(assert (= (and b!775265 (not res!524373)) b!775259))

(assert (= (and b!775259 (not res!524370)) b!775267))

(declare-fun m!719563 () Bool)

(assert (=> b!775275 m!719563))

(assert (=> b!775275 m!719563))

(declare-fun m!719565 () Bool)

(assert (=> b!775275 m!719565))

(assert (=> b!775260 m!719563))

(assert (=> b!775260 m!719563))

(declare-fun m!719567 () Bool)

(assert (=> b!775260 m!719567))

(declare-fun m!719569 () Bool)

(assert (=> b!775254 m!719569))

(declare-fun m!719571 () Bool)

(assert (=> b!775270 m!719571))

(declare-fun m!719573 () Bool)

(assert (=> b!775269 m!719573))

(assert (=> b!775256 m!719563))

(assert (=> b!775256 m!719563))

(declare-fun m!719575 () Bool)

(assert (=> b!775256 m!719575))

(assert (=> b!775264 m!719563))

(assert (=> b!775264 m!719563))

(declare-fun m!719577 () Bool)

(assert (=> b!775264 m!719577))

(assert (=> b!775264 m!719563))

(assert (=> b!775264 m!719575))

(declare-fun m!719579 () Bool)

(assert (=> start!67144 m!719579))

(declare-fun m!719581 () Bool)

(assert (=> start!67144 m!719581))

(declare-fun m!719583 () Bool)

(assert (=> b!775258 m!719583))

(assert (=> b!775253 m!719563))

(assert (=> b!775253 m!719563))

(declare-fun m!719585 () Bool)

(assert (=> b!775253 m!719585))

(assert (=> b!775253 m!719585))

(assert (=> b!775253 m!719563))

(declare-fun m!719587 () Bool)

(assert (=> b!775253 m!719587))

(assert (=> b!775255 m!719563))

(assert (=> b!775255 m!719563))

(assert (=> b!775255 m!719577))

(declare-fun m!719589 () Bool)

(assert (=> b!775266 m!719589))

(declare-fun m!719591 () Bool)

(assert (=> b!775272 m!719591))

(declare-fun m!719593 () Bool)

(assert (=> b!775272 m!719593))

(assert (=> b!775261 m!719563))

(assert (=> b!775261 m!719563))

(declare-fun m!719595 () Bool)

(assert (=> b!775261 m!719595))

(declare-fun m!719597 () Bool)

(assert (=> b!775274 m!719597))

(declare-fun m!719599 () Bool)

(assert (=> b!775268 m!719599))

(declare-fun m!719601 () Bool)

(assert (=> b!775259 m!719601))

(declare-fun m!719603 () Bool)

(assert (=> b!775267 m!719603))

(declare-fun m!719605 () Bool)

(assert (=> b!775267 m!719605))

(assert (=> b!775251 m!719563))

(assert (=> b!775251 m!719563))

(declare-fun m!719607 () Bool)

(assert (=> b!775251 m!719607))

(assert (=> b!775252 m!719563))

(assert (=> b!775252 m!719563))

(declare-fun m!719609 () Bool)

(assert (=> b!775252 m!719609))

(assert (=> b!775263 m!719563))

(assert (=> b!775263 m!719563))

(assert (=> b!775263 m!719565))

(declare-fun m!719611 () Bool)

(assert (=> b!775262 m!719611))

(declare-fun m!719613 () Bool)

(assert (=> b!775262 m!719613))

(declare-fun m!719615 () Bool)

(assert (=> b!775262 m!719615))

(declare-fun m!719617 () Bool)

(assert (=> b!775262 m!719617))

(assert (=> b!775262 m!719611))

(declare-fun m!719619 () Bool)

(assert (=> b!775262 m!719619))

(push 1)

