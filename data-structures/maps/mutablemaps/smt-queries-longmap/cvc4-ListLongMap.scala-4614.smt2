; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64340 () Bool)

(assert start!64340)

(declare-fun b!722641 () Bool)

(declare-fun res!484452 () Bool)

(declare-fun e!404999 () Bool)

(assert (=> b!722641 (=> (not res!484452) (not e!404999))))

(declare-fun e!405003 () Bool)

(assert (=> b!722641 (= res!484452 e!405003)))

(declare-fun c!79470 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!722641 (= c!79470 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!722642 () Bool)

(assert (=> b!722642 (= e!404999 false)))

(declare-datatypes ((array!40874 0))(
  ( (array!40875 (arr!19556 (Array (_ BitVec 32) (_ BitVec 64))) (size!19977 (_ BitVec 32))) )
))
(declare-fun lt!320386 () array!40874)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!320384 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7163 0))(
  ( (MissingZero!7163 (index!31019 (_ BitVec 32))) (Found!7163 (index!31020 (_ BitVec 32))) (Intermediate!7163 (undefined!7975 Bool) (index!31021 (_ BitVec 32)) (x!62045 (_ BitVec 32))) (Undefined!7163) (MissingVacant!7163 (index!31022 (_ BitVec 32))) )
))
(declare-fun lt!320382 () SeekEntryResult!7163)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40874 (_ BitVec 32)) SeekEntryResult!7163)

(assert (=> b!722642 (= lt!320382 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!320384 lt!320386 mask!3328))))

(declare-fun lt!320383 () SeekEntryResult!7163)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!722642 (= lt!320383 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!320384 mask!3328) lt!320384 lt!320386 mask!3328))))

(declare-fun a!3186 () array!40874)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!722642 (= lt!320384 (select (store (arr!19556 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!722642 (= lt!320386 (array!40875 (store (arr!19556 a!3186) i!1173 k!2102) (size!19977 a!3186)))))

(declare-fun b!722643 () Bool)

(declare-fun res!484451 () Bool)

(declare-fun e!405002 () Bool)

(assert (=> b!722643 (=> (not res!484451) (not e!405002))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!722643 (= res!484451 (validKeyInArray!0 k!2102))))

(declare-fun b!722644 () Bool)

(declare-fun e!405000 () Bool)

(assert (=> b!722644 (= e!405000 e!404999)))

(declare-fun res!484445 () Bool)

(assert (=> b!722644 (=> (not res!484445) (not e!404999))))

(declare-fun lt!320387 () SeekEntryResult!7163)

(assert (=> b!722644 (= res!484445 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19556 a!3186) j!159) mask!3328) (select (arr!19556 a!3186) j!159) a!3186 mask!3328) lt!320387))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!722644 (= lt!320387 (Intermediate!7163 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!722645 () Bool)

(declare-fun res!484448 () Bool)

(assert (=> b!722645 (=> (not res!484448) (not e!405002))))

(assert (=> b!722645 (= res!484448 (validKeyInArray!0 (select (arr!19556 a!3186) j!159)))))

(declare-fun b!722646 () Bool)

(declare-fun res!484449 () Bool)

(assert (=> b!722646 (=> (not res!484449) (not e!405000))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40874 (_ BitVec 32)) Bool)

(assert (=> b!722646 (= res!484449 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!722647 () Bool)

(declare-fun res!484444 () Bool)

(assert (=> b!722647 (=> (not res!484444) (not e!405000))))

(declare-datatypes ((List!13611 0))(
  ( (Nil!13608) (Cons!13607 (h!14661 (_ BitVec 64)) (t!19934 List!13611)) )
))
(declare-fun arrayNoDuplicates!0 (array!40874 (_ BitVec 32) List!13611) Bool)

(assert (=> b!722647 (= res!484444 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13608))))

(declare-fun res!484453 () Bool)

(assert (=> start!64340 (=> (not res!484453) (not e!405002))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64340 (= res!484453 (validMask!0 mask!3328))))

(assert (=> start!64340 e!405002))

(assert (=> start!64340 true))

(declare-fun array_inv!15330 (array!40874) Bool)

(assert (=> start!64340 (array_inv!15330 a!3186)))

(declare-fun b!722648 () Bool)

(declare-fun res!484450 () Bool)

(assert (=> b!722648 (=> (not res!484450) (not e!405002))))

(declare-fun arrayContainsKey!0 (array!40874 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!722648 (= res!484450 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!722649 () Bool)

(declare-fun res!484446 () Bool)

(assert (=> b!722649 (=> (not res!484446) (not e!404999))))

(assert (=> b!722649 (= res!484446 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19556 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!722650 () Bool)

(assert (=> b!722650 (= e!405002 e!405000)))

(declare-fun res!484455 () Bool)

(assert (=> b!722650 (=> (not res!484455) (not e!405000))))

(declare-fun lt!320385 () SeekEntryResult!7163)

(assert (=> b!722650 (= res!484455 (or (= lt!320385 (MissingZero!7163 i!1173)) (= lt!320385 (MissingVacant!7163 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40874 (_ BitVec 32)) SeekEntryResult!7163)

(assert (=> b!722650 (= lt!320385 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!722651 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40874 (_ BitVec 32)) SeekEntryResult!7163)

(assert (=> b!722651 (= e!405003 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19556 a!3186) j!159) a!3186 mask!3328) (Found!7163 j!159)))))

(declare-fun b!722652 () Bool)

(declare-fun res!484454 () Bool)

(assert (=> b!722652 (=> (not res!484454) (not e!405002))))

(assert (=> b!722652 (= res!484454 (and (= (size!19977 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19977 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19977 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!722653 () Bool)

(declare-fun res!484447 () Bool)

(assert (=> b!722653 (=> (not res!484447) (not e!405000))))

(assert (=> b!722653 (= res!484447 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19977 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19977 a!3186))))))

(declare-fun b!722654 () Bool)

(assert (=> b!722654 (= e!405003 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19556 a!3186) j!159) a!3186 mask!3328) lt!320387))))

(assert (= (and start!64340 res!484453) b!722652))

(assert (= (and b!722652 res!484454) b!722645))

(assert (= (and b!722645 res!484448) b!722643))

(assert (= (and b!722643 res!484451) b!722648))

(assert (= (and b!722648 res!484450) b!722650))

(assert (= (and b!722650 res!484455) b!722646))

(assert (= (and b!722646 res!484449) b!722647))

(assert (= (and b!722647 res!484444) b!722653))

(assert (= (and b!722653 res!484447) b!722644))

(assert (= (and b!722644 res!484445) b!722649))

(assert (= (and b!722649 res!484446) b!722641))

(assert (= (and b!722641 c!79470) b!722654))

(assert (= (and b!722641 (not c!79470)) b!722651))

(assert (= (and b!722641 res!484452) b!722642))

(declare-fun m!677237 () Bool)

(assert (=> b!722651 m!677237))

(assert (=> b!722651 m!677237))

(declare-fun m!677239 () Bool)

(assert (=> b!722651 m!677239))

(declare-fun m!677241 () Bool)

(assert (=> b!722642 m!677241))

(declare-fun m!677243 () Bool)

(assert (=> b!722642 m!677243))

(assert (=> b!722642 m!677241))

(declare-fun m!677245 () Bool)

(assert (=> b!722642 m!677245))

(declare-fun m!677247 () Bool)

(assert (=> b!722642 m!677247))

(declare-fun m!677249 () Bool)

(assert (=> b!722642 m!677249))

(declare-fun m!677251 () Bool)

(assert (=> b!722649 m!677251))

(declare-fun m!677253 () Bool)

(assert (=> b!722647 m!677253))

(assert (=> b!722654 m!677237))

(assert (=> b!722654 m!677237))

(declare-fun m!677255 () Bool)

(assert (=> b!722654 m!677255))

(declare-fun m!677257 () Bool)

(assert (=> b!722650 m!677257))

(declare-fun m!677259 () Bool)

(assert (=> b!722643 m!677259))

(assert (=> b!722645 m!677237))

(assert (=> b!722645 m!677237))

(declare-fun m!677261 () Bool)

(assert (=> b!722645 m!677261))

(declare-fun m!677263 () Bool)

(assert (=> b!722648 m!677263))

(declare-fun m!677265 () Bool)

(assert (=> b!722646 m!677265))

(declare-fun m!677267 () Bool)

(assert (=> start!64340 m!677267))

(declare-fun m!677269 () Bool)

(assert (=> start!64340 m!677269))

(assert (=> b!722644 m!677237))

(assert (=> b!722644 m!677237))

(declare-fun m!677271 () Bool)

(assert (=> b!722644 m!677271))

(assert (=> b!722644 m!677271))

(assert (=> b!722644 m!677237))

(declare-fun m!677273 () Bool)

(assert (=> b!722644 m!677273))

(push 1)

(assert (not start!64340))

