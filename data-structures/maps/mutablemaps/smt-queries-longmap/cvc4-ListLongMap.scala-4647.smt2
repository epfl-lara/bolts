; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64676 () Bool)

(assert start!64676)

(declare-fun b!728394 () Bool)

(declare-fun res!489039 () Bool)

(declare-fun e!407761 () Bool)

(assert (=> b!728394 (=> (not res!489039) (not e!407761))))

(declare-datatypes ((array!41078 0))(
  ( (array!41079 (arr!19655 (Array (_ BitVec 32) (_ BitVec 64))) (size!20076 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41078)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!728394 (= res!489039 (validKeyInArray!0 (select (arr!19655 a!3186) j!159)))))

(declare-fun b!728395 () Bool)

(declare-fun e!407759 () Bool)

(assert (=> b!728395 (= e!407759 true)))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!322669 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!728395 (= lt!322669 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!728396 () Bool)

(declare-fun e!407762 () Bool)

(declare-fun e!407766 () Bool)

(assert (=> b!728396 (= e!407762 e!407766)))

(declare-fun res!489049 () Bool)

(assert (=> b!728396 (=> (not res!489049) (not e!407766))))

(declare-datatypes ((SeekEntryResult!7262 0))(
  ( (MissingZero!7262 (index!31415 (_ BitVec 32))) (Found!7262 (index!31416 (_ BitVec 32))) (Intermediate!7262 (undefined!8074 Bool) (index!31417 (_ BitVec 32)) (x!62429 (_ BitVec 32))) (Undefined!7262) (MissingVacant!7262 (index!31418 (_ BitVec 32))) )
))
(declare-fun lt!322665 () SeekEntryResult!7262)

(declare-fun lt!322668 () SeekEntryResult!7262)

(assert (=> b!728396 (= res!489049 (= lt!322665 lt!322668))))

(declare-fun lt!322671 () (_ BitVec 64))

(declare-fun lt!322672 () array!41078)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41078 (_ BitVec 32)) SeekEntryResult!7262)

(assert (=> b!728396 (= lt!322668 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!322671 lt!322672 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!728396 (= lt!322665 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!322671 mask!3328) lt!322671 lt!322672 mask!3328))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!728396 (= lt!322671 (select (store (arr!19655 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!728396 (= lt!322672 (array!41079 (store (arr!19655 a!3186) i!1173 k!2102) (size!20076 a!3186)))))

(declare-fun b!728397 () Bool)

(declare-fun e!407760 () Bool)

(declare-fun e!407764 () Bool)

(assert (=> b!728397 (= e!407760 e!407764)))

(declare-fun res!489054 () Bool)

(assert (=> b!728397 (=> (not res!489054) (not e!407764))))

(declare-fun lt!322667 () SeekEntryResult!7262)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41078 (_ BitVec 32)) SeekEntryResult!7262)

(assert (=> b!728397 (= res!489054 (= (seekEntryOrOpen!0 (select (arr!19655 a!3186) j!159) a!3186 mask!3328) lt!322667))))

(assert (=> b!728397 (= lt!322667 (Found!7262 j!159))))

(declare-fun b!728398 () Bool)

(declare-fun e!407758 () Bool)

(assert (=> b!728398 (= e!407758 e!407762)))

(declare-fun res!489043 () Bool)

(assert (=> b!728398 (=> (not res!489043) (not e!407762))))

(declare-fun lt!322673 () SeekEntryResult!7262)

(assert (=> b!728398 (= res!489043 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19655 a!3186) j!159) mask!3328) (select (arr!19655 a!3186) j!159) a!3186 mask!3328) lt!322673))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!728398 (= lt!322673 (Intermediate!7262 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!728399 () Bool)

(assert (=> b!728399 (= e!407766 (not e!407759))))

(declare-fun res!489040 () Bool)

(assert (=> b!728399 (=> res!489040 e!407759)))

(assert (=> b!728399 (= res!489040 (or (not (is-Intermediate!7262 lt!322668)) (bvsge x!1131 (x!62429 lt!322668))))))

(assert (=> b!728399 e!407760))

(declare-fun res!489044 () Bool)

(assert (=> b!728399 (=> (not res!489044) (not e!407760))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41078 (_ BitVec 32)) Bool)

(assert (=> b!728399 (= res!489044 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24842 0))(
  ( (Unit!24843) )
))
(declare-fun lt!322666 () Unit!24842)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41078 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24842)

(assert (=> b!728399 (= lt!322666 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!728400 () Bool)

(assert (=> b!728400 (= e!407761 e!407758)))

(declare-fun res!489047 () Bool)

(assert (=> b!728400 (=> (not res!489047) (not e!407758))))

(declare-fun lt!322670 () SeekEntryResult!7262)

(assert (=> b!728400 (= res!489047 (or (= lt!322670 (MissingZero!7262 i!1173)) (= lt!322670 (MissingVacant!7262 i!1173))))))

(assert (=> b!728400 (= lt!322670 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!728401 () Bool)

(declare-fun res!489045 () Bool)

(assert (=> b!728401 (=> (not res!489045) (not e!407761))))

(declare-fun arrayContainsKey!0 (array!41078 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!728401 (= res!489045 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!728402 () Bool)

(declare-fun res!489041 () Bool)

(assert (=> b!728402 (=> (not res!489041) (not e!407761))))

(assert (=> b!728402 (= res!489041 (validKeyInArray!0 k!2102))))

(declare-fun b!728403 () Bool)

(declare-fun e!407765 () Bool)

(assert (=> b!728403 (= e!407765 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19655 a!3186) j!159) a!3186 mask!3328) lt!322673))))

(declare-fun b!728404 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41078 (_ BitVec 32)) SeekEntryResult!7262)

(assert (=> b!728404 (= e!407764 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19655 a!3186) j!159) a!3186 mask!3328) lt!322667))))

(declare-fun b!728405 () Bool)

(declare-fun res!489053 () Bool)

(assert (=> b!728405 (=> (not res!489053) (not e!407758))))

(declare-datatypes ((List!13710 0))(
  ( (Nil!13707) (Cons!13706 (h!14766 (_ BitVec 64)) (t!20033 List!13710)) )
))
(declare-fun arrayNoDuplicates!0 (array!41078 (_ BitVec 32) List!13710) Bool)

(assert (=> b!728405 (= res!489053 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13707))))

(declare-fun b!728406 () Bool)

(declare-fun res!489052 () Bool)

(assert (=> b!728406 (=> (not res!489052) (not e!407758))))

(assert (=> b!728406 (= res!489052 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20076 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20076 a!3186))))))

(declare-fun b!728407 () Bool)

(declare-fun res!489042 () Bool)

(assert (=> b!728407 (=> (not res!489042) (not e!407758))))

(assert (=> b!728407 (= res!489042 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!728408 () Bool)

(declare-fun res!489051 () Bool)

(assert (=> b!728408 (=> (not res!489051) (not e!407761))))

(assert (=> b!728408 (= res!489051 (and (= (size!20076 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20076 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20076 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!728409 () Bool)

(declare-fun res!489046 () Bool)

(assert (=> b!728409 (=> (not res!489046) (not e!407762))))

(assert (=> b!728409 (= res!489046 e!407765)))

(declare-fun c!80052 () Bool)

(assert (=> b!728409 (= c!80052 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!728410 () Bool)

(assert (=> b!728410 (= e!407765 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19655 a!3186) j!159) a!3186 mask!3328) (Found!7262 j!159)))))

(declare-fun b!728411 () Bool)

(declare-fun res!489048 () Bool)

(assert (=> b!728411 (=> (not res!489048) (not e!407762))))

(assert (=> b!728411 (= res!489048 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19655 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!489050 () Bool)

(assert (=> start!64676 (=> (not res!489050) (not e!407761))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64676 (= res!489050 (validMask!0 mask!3328))))

(assert (=> start!64676 e!407761))

(assert (=> start!64676 true))

(declare-fun array_inv!15429 (array!41078) Bool)

(assert (=> start!64676 (array_inv!15429 a!3186)))

(assert (= (and start!64676 res!489050) b!728408))

(assert (= (and b!728408 res!489051) b!728394))

(assert (= (and b!728394 res!489039) b!728402))

(assert (= (and b!728402 res!489041) b!728401))

(assert (= (and b!728401 res!489045) b!728400))

(assert (= (and b!728400 res!489047) b!728407))

(assert (= (and b!728407 res!489042) b!728405))

(assert (= (and b!728405 res!489053) b!728406))

(assert (= (and b!728406 res!489052) b!728398))

(assert (= (and b!728398 res!489043) b!728411))

(assert (= (and b!728411 res!489048) b!728409))

(assert (= (and b!728409 c!80052) b!728403))

(assert (= (and b!728409 (not c!80052)) b!728410))

(assert (= (and b!728409 res!489046) b!728396))

(assert (= (and b!728396 res!489049) b!728399))

(assert (= (and b!728399 res!489044) b!728397))

(assert (= (and b!728397 res!489054) b!728404))

(assert (= (and b!728399 (not res!489040)) b!728395))

(declare-fun m!682237 () Bool)

(assert (=> b!728410 m!682237))

(assert (=> b!728410 m!682237))

(declare-fun m!682239 () Bool)

(assert (=> b!728410 m!682239))

(assert (=> b!728397 m!682237))

(assert (=> b!728397 m!682237))

(declare-fun m!682241 () Bool)

(assert (=> b!728397 m!682241))

(declare-fun m!682243 () Bool)

(assert (=> b!728401 m!682243))

(declare-fun m!682245 () Bool)

(assert (=> start!64676 m!682245))

(declare-fun m!682247 () Bool)

(assert (=> start!64676 m!682247))

(declare-fun m!682249 () Bool)

(assert (=> b!728402 m!682249))

(declare-fun m!682251 () Bool)

(assert (=> b!728399 m!682251))

(declare-fun m!682253 () Bool)

(assert (=> b!728399 m!682253))

(declare-fun m!682255 () Bool)

(assert (=> b!728396 m!682255))

(declare-fun m!682257 () Bool)

(assert (=> b!728396 m!682257))

(declare-fun m!682259 () Bool)

(assert (=> b!728396 m!682259))

(assert (=> b!728396 m!682255))

(declare-fun m!682261 () Bool)

(assert (=> b!728396 m!682261))

(declare-fun m!682263 () Bool)

(assert (=> b!728396 m!682263))

(assert (=> b!728404 m!682237))

(assert (=> b!728404 m!682237))

(declare-fun m!682265 () Bool)

(assert (=> b!728404 m!682265))

(assert (=> b!728398 m!682237))

(assert (=> b!728398 m!682237))

(declare-fun m!682267 () Bool)

(assert (=> b!728398 m!682267))

(assert (=> b!728398 m!682267))

(assert (=> b!728398 m!682237))

(declare-fun m!682269 () Bool)

(assert (=> b!728398 m!682269))

(declare-fun m!682271 () Bool)

(assert (=> b!728405 m!682271))

(declare-fun m!682273 () Bool)

(assert (=> b!728400 m!682273))

(declare-fun m!682275 () Bool)

(assert (=> b!728411 m!682275))

(declare-fun m!682277 () Bool)

(assert (=> b!728395 m!682277))

(declare-fun m!682279 () Bool)

(assert (=> b!728407 m!682279))

(assert (=> b!728403 m!682237))

(assert (=> b!728403 m!682237))

(declare-fun m!682281 () Bool)

(assert (=> b!728403 m!682281))

(assert (=> b!728394 m!682237))

(assert (=> b!728394 m!682237))

(declare-fun m!682283 () Bool)

(assert (=> b!728394 m!682283))

(push 1)

