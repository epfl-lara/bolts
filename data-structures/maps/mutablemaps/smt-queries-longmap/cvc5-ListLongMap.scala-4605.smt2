; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64282 () Bool)

(assert start!64282)

(declare-fun b!721434 () Bool)

(declare-fun res!483423 () Bool)

(declare-fun e!404561 () Bool)

(assert (=> b!721434 (=> (not res!483423) (not e!404561))))

(declare-datatypes ((array!40816 0))(
  ( (array!40817 (arr!19527 (Array (_ BitVec 32) (_ BitVec 64))) (size!19948 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40816)

(declare-datatypes ((List!13582 0))(
  ( (Nil!13579) (Cons!13578 (h!14632 (_ BitVec 64)) (t!19905 List!13582)) )
))
(declare-fun arrayNoDuplicates!0 (array!40816 (_ BitVec 32) List!13582) Bool)

(assert (=> b!721434 (= res!483423 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13579))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun e!404557 () Bool)

(declare-fun b!721435 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!721435 (= e!404557 (not (validKeyInArray!0 (select (store (arr!19527 a!3186) i!1173 k!2102) j!159))))))

(declare-fun b!721436 () Bool)

(declare-fun res!483418 () Bool)

(declare-fun e!404562 () Bool)

(assert (=> b!721436 (=> (not res!483418) (not e!404562))))

(declare-fun arrayContainsKey!0 (array!40816 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!721436 (= res!483418 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!721437 () Bool)

(declare-fun res!483417 () Bool)

(declare-fun e!404558 () Bool)

(assert (=> b!721437 (=> (not res!483417) (not e!404558))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!721437 (= res!483417 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19527 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!404559 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!721438 () Bool)

(declare-datatypes ((SeekEntryResult!7134 0))(
  ( (MissingZero!7134 (index!30903 (_ BitVec 32))) (Found!7134 (index!30904 (_ BitVec 32))) (Intermediate!7134 (undefined!7946 Bool) (index!30905 (_ BitVec 32)) (x!61944 (_ BitVec 32))) (Undefined!7134) (MissingVacant!7134 (index!30906 (_ BitVec 32))) )
))
(declare-fun lt!320070 () SeekEntryResult!7134)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40816 (_ BitVec 32)) SeekEntryResult!7134)

(assert (=> b!721438 (= e!404559 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19527 a!3186) j!159) a!3186 mask!3328) lt!320070))))

(declare-fun b!721439 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40816 (_ BitVec 32)) SeekEntryResult!7134)

(assert (=> b!721439 (= e!404559 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19527 a!3186) j!159) a!3186 mask!3328) (Found!7134 j!159)))))

(declare-fun b!721440 () Bool)

(assert (=> b!721440 (= e!404558 e!404557)))

(declare-fun res!483422 () Bool)

(assert (=> b!721440 (=> (not res!483422) (not e!404557))))

(declare-fun lt!320072 () (_ BitVec 32))

(assert (=> b!721440 (= res!483422 (and (bvsge mask!3328 #b00000000000000000000000000000000) (bvsge lt!320072 #b00000000000000000000000000000000) (bvslt lt!320072 (bvadd #b00000000000000000000000000000001 mask!3328))))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!721440 (= lt!320072 (toIndex!0 (select (store (arr!19527 a!3186) i!1173 k!2102) j!159) mask!3328))))

(declare-fun b!721441 () Bool)

(declare-fun res!483420 () Bool)

(assert (=> b!721441 (=> (not res!483420) (not e!404562))))

(assert (=> b!721441 (= res!483420 (validKeyInArray!0 k!2102))))

(declare-fun b!721442 () Bool)

(declare-fun res!483411 () Bool)

(assert (=> b!721442 (=> (not res!483411) (not e!404561))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40816 (_ BitVec 32)) Bool)

(assert (=> b!721442 (= res!483411 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!721444 () Bool)

(declare-fun res!483419 () Bool)

(assert (=> b!721444 (=> (not res!483419) (not e!404558))))

(assert (=> b!721444 (= res!483419 e!404559)))

(declare-fun c!79383 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!721444 (= c!79383 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!721445 () Bool)

(declare-fun res!483413 () Bool)

(assert (=> b!721445 (=> (not res!483413) (not e!404562))))

(assert (=> b!721445 (= res!483413 (validKeyInArray!0 (select (arr!19527 a!3186) j!159)))))

(declare-fun b!721446 () Bool)

(declare-fun res!483412 () Bool)

(assert (=> b!721446 (=> (not res!483412) (not e!404561))))

(assert (=> b!721446 (= res!483412 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19948 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19948 a!3186))))))

(declare-fun b!721447 () Bool)

(declare-fun res!483415 () Bool)

(assert (=> b!721447 (=> (not res!483415) (not e!404562))))

(assert (=> b!721447 (= res!483415 (and (= (size!19948 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19948 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19948 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!721448 () Bool)

(assert (=> b!721448 (= e!404561 e!404558)))

(declare-fun res!483414 () Bool)

(assert (=> b!721448 (=> (not res!483414) (not e!404558))))

(assert (=> b!721448 (= res!483414 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19527 a!3186) j!159) mask!3328) (select (arr!19527 a!3186) j!159) a!3186 mask!3328) lt!320070))))

(assert (=> b!721448 (= lt!320070 (Intermediate!7134 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun res!483416 () Bool)

(assert (=> start!64282 (=> (not res!483416) (not e!404562))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64282 (= res!483416 (validMask!0 mask!3328))))

(assert (=> start!64282 e!404562))

(assert (=> start!64282 true))

(declare-fun array_inv!15301 (array!40816) Bool)

(assert (=> start!64282 (array_inv!15301 a!3186)))

(declare-fun b!721443 () Bool)

(assert (=> b!721443 (= e!404562 e!404561)))

(declare-fun res!483421 () Bool)

(assert (=> b!721443 (=> (not res!483421) (not e!404561))))

(declare-fun lt!320071 () SeekEntryResult!7134)

(assert (=> b!721443 (= res!483421 (or (= lt!320071 (MissingZero!7134 i!1173)) (= lt!320071 (MissingVacant!7134 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40816 (_ BitVec 32)) SeekEntryResult!7134)

(assert (=> b!721443 (= lt!320071 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(assert (= (and start!64282 res!483416) b!721447))

(assert (= (and b!721447 res!483415) b!721445))

(assert (= (and b!721445 res!483413) b!721441))

(assert (= (and b!721441 res!483420) b!721436))

(assert (= (and b!721436 res!483418) b!721443))

(assert (= (and b!721443 res!483421) b!721442))

(assert (= (and b!721442 res!483411) b!721434))

(assert (= (and b!721434 res!483423) b!721446))

(assert (= (and b!721446 res!483412) b!721448))

(assert (= (and b!721448 res!483414) b!721437))

(assert (= (and b!721437 res!483417) b!721444))

(assert (= (and b!721444 c!79383) b!721438))

(assert (= (and b!721444 (not c!79383)) b!721439))

(assert (= (and b!721444 res!483419) b!721440))

(assert (= (and b!721440 res!483422) b!721435))

(declare-fun m!676303 () Bool)

(assert (=> b!721445 m!676303))

(assert (=> b!721445 m!676303))

(declare-fun m!676305 () Bool)

(assert (=> b!721445 m!676305))

(declare-fun m!676307 () Bool)

(assert (=> b!721434 m!676307))

(declare-fun m!676309 () Bool)

(assert (=> start!64282 m!676309))

(declare-fun m!676311 () Bool)

(assert (=> start!64282 m!676311))

(assert (=> b!721448 m!676303))

(assert (=> b!721448 m!676303))

(declare-fun m!676313 () Bool)

(assert (=> b!721448 m!676313))

(assert (=> b!721448 m!676313))

(assert (=> b!721448 m!676303))

(declare-fun m!676315 () Bool)

(assert (=> b!721448 m!676315))

(declare-fun m!676317 () Bool)

(assert (=> b!721436 m!676317))

(declare-fun m!676319 () Bool)

(assert (=> b!721440 m!676319))

(declare-fun m!676321 () Bool)

(assert (=> b!721440 m!676321))

(assert (=> b!721440 m!676321))

(declare-fun m!676323 () Bool)

(assert (=> b!721440 m!676323))

(declare-fun m!676325 () Bool)

(assert (=> b!721443 m!676325))

(assert (=> b!721439 m!676303))

(assert (=> b!721439 m!676303))

(declare-fun m!676327 () Bool)

(assert (=> b!721439 m!676327))

(assert (=> b!721438 m!676303))

(assert (=> b!721438 m!676303))

(declare-fun m!676329 () Bool)

(assert (=> b!721438 m!676329))

(assert (=> b!721435 m!676319))

(assert (=> b!721435 m!676321))

(assert (=> b!721435 m!676321))

(declare-fun m!676331 () Bool)

(assert (=> b!721435 m!676331))

(declare-fun m!676333 () Bool)

(assert (=> b!721437 m!676333))

(declare-fun m!676335 () Bool)

(assert (=> b!721441 m!676335))

(declare-fun m!676337 () Bool)

(assert (=> b!721442 m!676337))

(push 1)

