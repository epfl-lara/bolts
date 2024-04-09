; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64280 () Bool)

(assert start!64280)

(declare-fun b!721390 () Bool)

(declare-fun res!483374 () Bool)

(declare-fun e!404540 () Bool)

(assert (=> b!721390 (=> (not res!483374) (not e!404540))))

(declare-fun e!404542 () Bool)

(assert (=> b!721390 (= res!483374 e!404542)))

(declare-fun c!79380 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!721390 (= c!79380 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!721391 () Bool)

(declare-fun res!483373 () Bool)

(declare-fun e!404541 () Bool)

(assert (=> b!721391 (=> (not res!483373) (not e!404541))))

(declare-datatypes ((array!40814 0))(
  ( (array!40815 (arr!19526 (Array (_ BitVec 32) (_ BitVec 64))) (size!19947 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40814)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!721391 (= res!483373 (and (= (size!19947 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19947 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19947 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!721392 () Bool)

(declare-fun res!483375 () Bool)

(assert (=> b!721392 (=> (not res!483375) (not e!404541))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!721392 (= res!483375 (validKeyInArray!0 (select (arr!19526 a!3186) j!159)))))

(declare-fun b!721393 () Bool)

(declare-fun res!483383 () Bool)

(assert (=> b!721393 (=> (not res!483383) (not e!404541))))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!721393 (= res!483383 (validKeyInArray!0 k!2102))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!721394 () Bool)

(declare-datatypes ((SeekEntryResult!7133 0))(
  ( (MissingZero!7133 (index!30899 (_ BitVec 32))) (Found!7133 (index!30900 (_ BitVec 32))) (Intermediate!7133 (undefined!7945 Bool) (index!30901 (_ BitVec 32)) (x!61935 (_ BitVec 32))) (Undefined!7133) (MissingVacant!7133 (index!30902 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40814 (_ BitVec 32)) SeekEntryResult!7133)

(assert (=> b!721394 (= e!404542 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19526 a!3186) j!159) a!3186 mask!3328) (Found!7133 j!159)))))

(declare-fun res!483384 () Bool)

(assert (=> start!64280 (=> (not res!483384) (not e!404541))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64280 (= res!483384 (validMask!0 mask!3328))))

(assert (=> start!64280 e!404541))

(assert (=> start!64280 true))

(declare-fun array_inv!15300 (array!40814) Bool)

(assert (=> start!64280 (array_inv!15300 a!3186)))

(declare-fun b!721395 () Bool)

(declare-fun res!483380 () Bool)

(declare-fun e!404543 () Bool)

(assert (=> b!721395 (=> (not res!483380) (not e!404543))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40814 (_ BitVec 32)) Bool)

(assert (=> b!721395 (= res!483380 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!721396 () Bool)

(assert (=> b!721396 (= e!404540 false)))

(declare-fun lt!320061 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!721396 (= lt!320061 (toIndex!0 (select (store (arr!19526 a!3186) i!1173 k!2102) j!159) mask!3328))))

(declare-fun b!721397 () Bool)

(declare-fun res!483382 () Bool)

(assert (=> b!721397 (=> (not res!483382) (not e!404540))))

(assert (=> b!721397 (= res!483382 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19526 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!721398 () Bool)

(assert (=> b!721398 (= e!404543 e!404540)))

(declare-fun res!483378 () Bool)

(assert (=> b!721398 (=> (not res!483378) (not e!404540))))

(declare-fun lt!320062 () SeekEntryResult!7133)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40814 (_ BitVec 32)) SeekEntryResult!7133)

(assert (=> b!721398 (= res!483378 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19526 a!3186) j!159) mask!3328) (select (arr!19526 a!3186) j!159) a!3186 mask!3328) lt!320062))))

(assert (=> b!721398 (= lt!320062 (Intermediate!7133 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!721399 () Bool)

(assert (=> b!721399 (= e!404541 e!404543)))

(declare-fun res!483379 () Bool)

(assert (=> b!721399 (=> (not res!483379) (not e!404543))))

(declare-fun lt!320063 () SeekEntryResult!7133)

(assert (=> b!721399 (= res!483379 (or (= lt!320063 (MissingZero!7133 i!1173)) (= lt!320063 (MissingVacant!7133 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40814 (_ BitVec 32)) SeekEntryResult!7133)

(assert (=> b!721399 (= lt!320063 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!721400 () Bool)

(declare-fun res!483376 () Bool)

(assert (=> b!721400 (=> (not res!483376) (not e!404543))))

(declare-datatypes ((List!13581 0))(
  ( (Nil!13578) (Cons!13577 (h!14631 (_ BitVec 64)) (t!19904 List!13581)) )
))
(declare-fun arrayNoDuplicates!0 (array!40814 (_ BitVec 32) List!13581) Bool)

(assert (=> b!721400 (= res!483376 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13578))))

(declare-fun b!721401 () Bool)

(assert (=> b!721401 (= e!404542 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19526 a!3186) j!159) a!3186 mask!3328) lt!320062))))

(declare-fun b!721402 () Bool)

(declare-fun res!483381 () Bool)

(assert (=> b!721402 (=> (not res!483381) (not e!404541))))

(declare-fun arrayContainsKey!0 (array!40814 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!721402 (= res!483381 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!721403 () Bool)

(declare-fun res!483377 () Bool)

(assert (=> b!721403 (=> (not res!483377) (not e!404543))))

(assert (=> b!721403 (= res!483377 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19947 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19947 a!3186))))))

(assert (= (and start!64280 res!483384) b!721391))

(assert (= (and b!721391 res!483373) b!721392))

(assert (= (and b!721392 res!483375) b!721393))

(assert (= (and b!721393 res!483383) b!721402))

(assert (= (and b!721402 res!483381) b!721399))

(assert (= (and b!721399 res!483379) b!721395))

(assert (= (and b!721395 res!483380) b!721400))

(assert (= (and b!721400 res!483376) b!721403))

(assert (= (and b!721403 res!483377) b!721398))

(assert (= (and b!721398 res!483378) b!721397))

(assert (= (and b!721397 res!483382) b!721390))

(assert (= (and b!721390 c!79380) b!721401))

(assert (= (and b!721390 (not c!79380)) b!721394))

(assert (= (and b!721390 res!483374) b!721396))

(declare-fun m!676269 () Bool)

(assert (=> b!721398 m!676269))

(assert (=> b!721398 m!676269))

(declare-fun m!676271 () Bool)

(assert (=> b!721398 m!676271))

(assert (=> b!721398 m!676271))

(assert (=> b!721398 m!676269))

(declare-fun m!676273 () Bool)

(assert (=> b!721398 m!676273))

(assert (=> b!721392 m!676269))

(assert (=> b!721392 m!676269))

(declare-fun m!676275 () Bool)

(assert (=> b!721392 m!676275))

(declare-fun m!676277 () Bool)

(assert (=> b!721395 m!676277))

(assert (=> b!721401 m!676269))

(assert (=> b!721401 m!676269))

(declare-fun m!676279 () Bool)

(assert (=> b!721401 m!676279))

(declare-fun m!676281 () Bool)

(assert (=> b!721397 m!676281))

(declare-fun m!676283 () Bool)

(assert (=> b!721396 m!676283))

(declare-fun m!676285 () Bool)

(assert (=> b!721396 m!676285))

(assert (=> b!721396 m!676285))

(declare-fun m!676287 () Bool)

(assert (=> b!721396 m!676287))

(declare-fun m!676289 () Bool)

(assert (=> b!721402 m!676289))

(declare-fun m!676291 () Bool)

(assert (=> b!721400 m!676291))

(declare-fun m!676293 () Bool)

(assert (=> b!721393 m!676293))

(declare-fun m!676295 () Bool)

(assert (=> start!64280 m!676295))

(declare-fun m!676297 () Bool)

(assert (=> start!64280 m!676297))

(declare-fun m!676299 () Bool)

(assert (=> b!721399 m!676299))

(assert (=> b!721394 m!676269))

(assert (=> b!721394 m!676269))

(declare-fun m!676301 () Bool)

(assert (=> b!721394 m!676301))

(push 1)

(assert (not b!721400))

