; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64678 () Bool)

(assert start!64678)

(declare-fun b!728448 () Bool)

(declare-fun res!489102 () Bool)

(declare-fun e!407785 () Bool)

(assert (=> b!728448 (=> (not res!489102) (not e!407785))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-datatypes ((array!41080 0))(
  ( (array!41081 (arr!19656 (Array (_ BitVec 32) (_ BitVec 64))) (size!20077 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41080)

(assert (=> b!728448 (= res!489102 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19656 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!728449 () Bool)

(declare-fun res!489088 () Bool)

(declare-fun e!407793 () Bool)

(assert (=> b!728449 (=> (not res!489088) (not e!407793))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!728449 (= res!489088 (validKeyInArray!0 k!2102))))

(declare-fun res!489093 () Bool)

(assert (=> start!64678 (=> (not res!489093) (not e!407793))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64678 (= res!489093 (validMask!0 mask!3328))))

(assert (=> start!64678 e!407793))

(assert (=> start!64678 true))

(declare-fun array_inv!15430 (array!41080) Bool)

(assert (=> start!64678 (array_inv!15430 a!3186)))

(declare-fun b!728450 () Bool)

(declare-fun res!489094 () Bool)

(assert (=> b!728450 (=> (not res!489094) (not e!407793))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!728450 (= res!489094 (and (= (size!20077 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20077 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20077 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!728451 () Bool)

(declare-fun res!489101 () Bool)

(assert (=> b!728451 (=> (not res!489101) (not e!407785))))

(declare-fun e!407788 () Bool)

(assert (=> b!728451 (= res!489101 e!407788)))

(declare-fun c!80055 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!728451 (= c!80055 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!728452 () Bool)

(declare-fun res!489099 () Bool)

(declare-fun e!407786 () Bool)

(assert (=> b!728452 (=> (not res!489099) (not e!407786))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41080 (_ BitVec 32)) Bool)

(assert (=> b!728452 (= res!489099 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-datatypes ((SeekEntryResult!7263 0))(
  ( (MissingZero!7263 (index!31419 (_ BitVec 32))) (Found!7263 (index!31420 (_ BitVec 32))) (Intermediate!7263 (undefined!8075 Bool) (index!31421 (_ BitVec 32)) (x!62438 (_ BitVec 32))) (Undefined!7263) (MissingVacant!7263 (index!31422 (_ BitVec 32))) )
))
(declare-fun lt!322697 () SeekEntryResult!7263)

(declare-fun b!728453 () Bool)

(declare-fun e!407790 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41080 (_ BitVec 32)) SeekEntryResult!7263)

(assert (=> b!728453 (= e!407790 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19656 a!3186) j!159) a!3186 mask!3328) lt!322697))))

(declare-fun b!728454 () Bool)

(declare-fun e!407792 () Bool)

(assert (=> b!728454 (= e!407792 e!407790)))

(declare-fun res!489098 () Bool)

(assert (=> b!728454 (=> (not res!489098) (not e!407790))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41080 (_ BitVec 32)) SeekEntryResult!7263)

(assert (=> b!728454 (= res!489098 (= (seekEntryOrOpen!0 (select (arr!19656 a!3186) j!159) a!3186 mask!3328) lt!322697))))

(assert (=> b!728454 (= lt!322697 (Found!7263 j!159))))

(declare-fun b!728455 () Bool)

(declare-fun res!489092 () Bool)

(assert (=> b!728455 (=> (not res!489092) (not e!407786))))

(declare-datatypes ((List!13711 0))(
  ( (Nil!13708) (Cons!13707 (h!14767 (_ BitVec 64)) (t!20034 List!13711)) )
))
(declare-fun arrayNoDuplicates!0 (array!41080 (_ BitVec 32) List!13711) Bool)

(assert (=> b!728455 (= res!489092 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13708))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!728456 () Bool)

(assert (=> b!728456 (= e!407788 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19656 a!3186) j!159) a!3186 mask!3328) (Found!7263 j!159)))))

(declare-fun b!728457 () Bool)

(declare-fun e!407789 () Bool)

(assert (=> b!728457 (= e!407789 true)))

(declare-fun lt!322695 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!728457 (= lt!322695 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!728458 () Bool)

(declare-fun res!489087 () Bool)

(assert (=> b!728458 (=> (not res!489087) (not e!407793))))

(declare-fun arrayContainsKey!0 (array!41080 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!728458 (= res!489087 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!728459 () Bool)

(declare-fun res!489095 () Bool)

(assert (=> b!728459 (=> (not res!489095) (not e!407786))))

(assert (=> b!728459 (= res!489095 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20077 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20077 a!3186))))))

(declare-fun b!728460 () Bool)

(declare-fun e!407787 () Bool)

(assert (=> b!728460 (= e!407785 e!407787)))

(declare-fun res!489097 () Bool)

(assert (=> b!728460 (=> (not res!489097) (not e!407787))))

(declare-fun lt!322699 () SeekEntryResult!7263)

(declare-fun lt!322700 () SeekEntryResult!7263)

(assert (=> b!728460 (= res!489097 (= lt!322699 lt!322700))))

(declare-fun lt!322698 () (_ BitVec 64))

(declare-fun lt!322693 () array!41080)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41080 (_ BitVec 32)) SeekEntryResult!7263)

(assert (=> b!728460 (= lt!322700 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!322698 lt!322693 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!728460 (= lt!322699 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!322698 mask!3328) lt!322698 lt!322693 mask!3328))))

(assert (=> b!728460 (= lt!322698 (select (store (arr!19656 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!728460 (= lt!322693 (array!41081 (store (arr!19656 a!3186) i!1173 k!2102) (size!20077 a!3186)))))

(declare-fun b!728461 () Bool)

(declare-fun lt!322694 () SeekEntryResult!7263)

(assert (=> b!728461 (= e!407788 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19656 a!3186) j!159) a!3186 mask!3328) lt!322694))))

(declare-fun b!728462 () Bool)

(assert (=> b!728462 (= e!407786 e!407785)))

(declare-fun res!489091 () Bool)

(assert (=> b!728462 (=> (not res!489091) (not e!407785))))

(assert (=> b!728462 (= res!489091 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19656 a!3186) j!159) mask!3328) (select (arr!19656 a!3186) j!159) a!3186 mask!3328) lt!322694))))

(assert (=> b!728462 (= lt!322694 (Intermediate!7263 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!728463 () Bool)

(assert (=> b!728463 (= e!407793 e!407786)))

(declare-fun res!489089 () Bool)

(assert (=> b!728463 (=> (not res!489089) (not e!407786))))

(declare-fun lt!322692 () SeekEntryResult!7263)

(assert (=> b!728463 (= res!489089 (or (= lt!322692 (MissingZero!7263 i!1173)) (= lt!322692 (MissingVacant!7263 i!1173))))))

(assert (=> b!728463 (= lt!322692 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!728464 () Bool)

(declare-fun res!489090 () Bool)

(assert (=> b!728464 (=> (not res!489090) (not e!407793))))

(assert (=> b!728464 (= res!489090 (validKeyInArray!0 (select (arr!19656 a!3186) j!159)))))

(declare-fun b!728465 () Bool)

(assert (=> b!728465 (= e!407787 (not e!407789))))

(declare-fun res!489100 () Bool)

(assert (=> b!728465 (=> res!489100 e!407789)))

(assert (=> b!728465 (= res!489100 (or (not (is-Intermediate!7263 lt!322700)) (bvsge x!1131 (x!62438 lt!322700))))))

(assert (=> b!728465 e!407792))

(declare-fun res!489096 () Bool)

(assert (=> b!728465 (=> (not res!489096) (not e!407792))))

(assert (=> b!728465 (= res!489096 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24844 0))(
  ( (Unit!24845) )
))
(declare-fun lt!322696 () Unit!24844)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41080 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24844)

(assert (=> b!728465 (= lt!322696 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (= (and start!64678 res!489093) b!728450))

(assert (= (and b!728450 res!489094) b!728464))

(assert (= (and b!728464 res!489090) b!728449))

(assert (= (and b!728449 res!489088) b!728458))

(assert (= (and b!728458 res!489087) b!728463))

(assert (= (and b!728463 res!489089) b!728452))

(assert (= (and b!728452 res!489099) b!728455))

(assert (= (and b!728455 res!489092) b!728459))

(assert (= (and b!728459 res!489095) b!728462))

(assert (= (and b!728462 res!489091) b!728448))

(assert (= (and b!728448 res!489102) b!728451))

(assert (= (and b!728451 c!80055) b!728461))

(assert (= (and b!728451 (not c!80055)) b!728456))

(assert (= (and b!728451 res!489101) b!728460))

(assert (= (and b!728460 res!489097) b!728465))

(assert (= (and b!728465 res!489096) b!728454))

(assert (= (and b!728454 res!489098) b!728453))

(assert (= (and b!728465 (not res!489100)) b!728457))

(declare-fun m!682285 () Bool)

(assert (=> b!728461 m!682285))

(assert (=> b!728461 m!682285))

(declare-fun m!682287 () Bool)

(assert (=> b!728461 m!682287))

(declare-fun m!682289 () Bool)

(assert (=> b!728457 m!682289))

(assert (=> b!728462 m!682285))

(assert (=> b!728462 m!682285))

(declare-fun m!682291 () Bool)

(assert (=> b!728462 m!682291))

(assert (=> b!728462 m!682291))

(assert (=> b!728462 m!682285))

(declare-fun m!682293 () Bool)

(assert (=> b!728462 m!682293))

(declare-fun m!682295 () Bool)

(assert (=> b!728465 m!682295))

(declare-fun m!682297 () Bool)

(assert (=> b!728465 m!682297))

(declare-fun m!682299 () Bool)

(assert (=> b!728458 m!682299))

(assert (=> b!728456 m!682285))

(assert (=> b!728456 m!682285))

(declare-fun m!682301 () Bool)

(assert (=> b!728456 m!682301))

(declare-fun m!682303 () Bool)

(assert (=> start!64678 m!682303))

(declare-fun m!682305 () Bool)

(assert (=> start!64678 m!682305))

(assert (=> b!728464 m!682285))

(assert (=> b!728464 m!682285))

(declare-fun m!682307 () Bool)

(assert (=> b!728464 m!682307))

(declare-fun m!682309 () Bool)

(assert (=> b!728455 m!682309))

(declare-fun m!682311 () Bool)

(assert (=> b!728463 m!682311))

(assert (=> b!728454 m!682285))

(assert (=> b!728454 m!682285))

(declare-fun m!682313 () Bool)

(assert (=> b!728454 m!682313))

(declare-fun m!682315 () Bool)

(assert (=> b!728449 m!682315))

(declare-fun m!682317 () Bool)

(assert (=> b!728460 m!682317))

(declare-fun m!682319 () Bool)

(assert (=> b!728460 m!682319))

(assert (=> b!728460 m!682317))

(declare-fun m!682321 () Bool)

(assert (=> b!728460 m!682321))

(declare-fun m!682323 () Bool)

(assert (=> b!728460 m!682323))

(declare-fun m!682325 () Bool)

(assert (=> b!728460 m!682325))

(declare-fun m!682327 () Bool)

(assert (=> b!728448 m!682327))

(declare-fun m!682329 () Bool)

(assert (=> b!728452 m!682329))

(assert (=> b!728453 m!682285))

(assert (=> b!728453 m!682285))

(declare-fun m!682331 () Bool)

(assert (=> b!728453 m!682331))

(push 1)

