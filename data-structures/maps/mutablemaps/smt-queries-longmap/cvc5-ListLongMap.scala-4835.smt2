; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66500 () Bool)

(assert start!66500)

(declare-fun b!766104 () Bool)

(declare-fun e!426643 () Bool)

(declare-fun e!426645 () Bool)

(assert (=> b!766104 (= e!426643 e!426645)))

(declare-fun res!518425 () Bool)

(assert (=> b!766104 (=> (not res!518425) (not e!426645))))

(declare-datatypes ((array!42232 0))(
  ( (array!42233 (arr!20217 (Array (_ BitVec 32) (_ BitVec 64))) (size!20638 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42232)

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7824 0))(
  ( (MissingZero!7824 (index!33663 (_ BitVec 32))) (Found!7824 (index!33664 (_ BitVec 32))) (Intermediate!7824 (undefined!8636 Bool) (index!33665 (_ BitVec 32)) (x!64599 (_ BitVec 32))) (Undefined!7824) (MissingVacant!7824 (index!33666 (_ BitVec 32))) )
))
(declare-fun lt!340809 () SeekEntryResult!7824)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42232 (_ BitVec 32)) SeekEntryResult!7824)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!766104 (= res!518425 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20217 a!3186) j!159) mask!3328) (select (arr!20217 a!3186) j!159) a!3186 mask!3328) lt!340809))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!766104 (= lt!340809 (Intermediate!7824 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!766105 () Bool)

(declare-fun res!518431 () Bool)

(declare-fun e!426650 () Bool)

(assert (=> b!766105 (=> (not res!518431) (not e!426650))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!766105 (= res!518431 (and (= (size!20638 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20638 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20638 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!766106 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun e!426648 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!766106 (= e!426648 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20217 a!3186) j!159) a!3186 mask!3328) lt!340809))))

(declare-fun b!766107 () Bool)

(declare-fun res!518424 () Bool)

(assert (=> b!766107 (=> (not res!518424) (not e!426643))))

(assert (=> b!766107 (= res!518424 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20638 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20638 a!3186))))))

(declare-fun b!766108 () Bool)

(declare-fun res!518434 () Bool)

(assert (=> b!766108 (=> (not res!518434) (not e!426645))))

(assert (=> b!766108 (= res!518434 e!426648)))

(declare-fun c!84231 () Bool)

(assert (=> b!766108 (= c!84231 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!766109 () Bool)

(declare-fun e!426649 () Bool)

(declare-fun e!426647 () Bool)

(assert (=> b!766109 (= e!426649 (not e!426647))))

(declare-fun res!518423 () Bool)

(assert (=> b!766109 (=> res!518423 e!426647)))

(declare-fun lt!340804 () SeekEntryResult!7824)

(assert (=> b!766109 (= res!518423 (or (not (is-Intermediate!7824 lt!340804)) (bvsge x!1131 (x!64599 lt!340804))))))

(declare-fun e!426646 () Bool)

(assert (=> b!766109 e!426646))

(declare-fun res!518433 () Bool)

(assert (=> b!766109 (=> (not res!518433) (not e!426646))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42232 (_ BitVec 32)) Bool)

(assert (=> b!766109 (= res!518433 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26374 0))(
  ( (Unit!26375) )
))
(declare-fun lt!340802 () Unit!26374)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42232 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26374)

(assert (=> b!766109 (= lt!340802 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!766110 () Bool)

(declare-fun res!518427 () Bool)

(assert (=> b!766110 (=> (not res!518427) (not e!426645))))

(assert (=> b!766110 (= res!518427 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20217 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!766111 () Bool)

(declare-fun res!518436 () Bool)

(assert (=> b!766111 (=> (not res!518436) (not e!426643))))

(assert (=> b!766111 (= res!518436 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!766113 () Bool)

(declare-fun res!518430 () Bool)

(assert (=> b!766113 (=> (not res!518430) (not e!426650))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!766113 (= res!518430 (validKeyInArray!0 (select (arr!20217 a!3186) j!159)))))

(declare-fun b!766114 () Bool)

(declare-fun res!518428 () Bool)

(assert (=> b!766114 (=> (not res!518428) (not e!426650))))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!766114 (= res!518428 (validKeyInArray!0 k!2102))))

(declare-fun b!766115 () Bool)

(assert (=> b!766115 (= e!426647 true)))

(declare-fun lt!340808 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!766115 (= lt!340808 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!766116 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42232 (_ BitVec 32)) SeekEntryResult!7824)

(assert (=> b!766116 (= e!426648 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20217 a!3186) j!159) a!3186 mask!3328) (Found!7824 j!159)))))

(declare-fun b!766117 () Bool)

(assert (=> b!766117 (= e!426650 e!426643)))

(declare-fun res!518435 () Bool)

(assert (=> b!766117 (=> (not res!518435) (not e!426643))))

(declare-fun lt!340803 () SeekEntryResult!7824)

(assert (=> b!766117 (= res!518435 (or (= lt!340803 (MissingZero!7824 i!1173)) (= lt!340803 (MissingVacant!7824 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42232 (_ BitVec 32)) SeekEntryResult!7824)

(assert (=> b!766117 (= lt!340803 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!766118 () Bool)

(declare-fun res!518429 () Bool)

(assert (=> b!766118 (=> (not res!518429) (not e!426650))))

(declare-fun arrayContainsKey!0 (array!42232 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!766118 (= res!518429 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!766119 () Bool)

(assert (=> b!766119 (= e!426645 e!426649)))

(declare-fun res!518422 () Bool)

(assert (=> b!766119 (=> (not res!518422) (not e!426649))))

(declare-fun lt!340805 () SeekEntryResult!7824)

(assert (=> b!766119 (= res!518422 (= lt!340805 lt!340804))))

(declare-fun lt!340807 () array!42232)

(declare-fun lt!340810 () (_ BitVec 64))

(assert (=> b!766119 (= lt!340804 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!340810 lt!340807 mask!3328))))

(assert (=> b!766119 (= lt!340805 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!340810 mask!3328) lt!340810 lt!340807 mask!3328))))

(assert (=> b!766119 (= lt!340810 (select (store (arr!20217 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!766119 (= lt!340807 (array!42233 (store (arr!20217 a!3186) i!1173 k!2102) (size!20638 a!3186)))))

(declare-fun b!766120 () Bool)

(declare-fun res!518426 () Bool)

(assert (=> b!766120 (=> (not res!518426) (not e!426643))))

(declare-datatypes ((List!14272 0))(
  ( (Nil!14269) (Cons!14268 (h!15358 (_ BitVec 64)) (t!20595 List!14272)) )
))
(declare-fun arrayNoDuplicates!0 (array!42232 (_ BitVec 32) List!14272) Bool)

(assert (=> b!766120 (= res!518426 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14269))))

(declare-fun b!766121 () Bool)

(declare-fun e!426644 () Bool)

(assert (=> b!766121 (= e!426646 e!426644)))

(declare-fun res!518432 () Bool)

(assert (=> b!766121 (=> (not res!518432) (not e!426644))))

(declare-fun lt!340806 () SeekEntryResult!7824)

(assert (=> b!766121 (= res!518432 (= (seekEntryOrOpen!0 (select (arr!20217 a!3186) j!159) a!3186 mask!3328) lt!340806))))

(assert (=> b!766121 (= lt!340806 (Found!7824 j!159))))

(declare-fun res!518421 () Bool)

(assert (=> start!66500 (=> (not res!518421) (not e!426650))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66500 (= res!518421 (validMask!0 mask!3328))))

(assert (=> start!66500 e!426650))

(assert (=> start!66500 true))

(declare-fun array_inv!15991 (array!42232) Bool)

(assert (=> start!66500 (array_inv!15991 a!3186)))

(declare-fun b!766112 () Bool)

(assert (=> b!766112 (= e!426644 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20217 a!3186) j!159) a!3186 mask!3328) lt!340806))))

(assert (= (and start!66500 res!518421) b!766105))

(assert (= (and b!766105 res!518431) b!766113))

(assert (= (and b!766113 res!518430) b!766114))

(assert (= (and b!766114 res!518428) b!766118))

(assert (= (and b!766118 res!518429) b!766117))

(assert (= (and b!766117 res!518435) b!766111))

(assert (= (and b!766111 res!518436) b!766120))

(assert (= (and b!766120 res!518426) b!766107))

(assert (= (and b!766107 res!518424) b!766104))

(assert (= (and b!766104 res!518425) b!766110))

(assert (= (and b!766110 res!518427) b!766108))

(assert (= (and b!766108 c!84231) b!766106))

(assert (= (and b!766108 (not c!84231)) b!766116))

(assert (= (and b!766108 res!518434) b!766119))

(assert (= (and b!766119 res!518422) b!766109))

(assert (= (and b!766109 res!518433) b!766121))

(assert (= (and b!766121 res!518432) b!766112))

(assert (= (and b!766109 (not res!518423)) b!766115))

(declare-fun m!712193 () Bool)

(assert (=> b!766106 m!712193))

(assert (=> b!766106 m!712193))

(declare-fun m!712195 () Bool)

(assert (=> b!766106 m!712195))

(declare-fun m!712197 () Bool)

(assert (=> b!766115 m!712197))

(declare-fun m!712199 () Bool)

(assert (=> b!766118 m!712199))

(declare-fun m!712201 () Bool)

(assert (=> b!766111 m!712201))

(declare-fun m!712203 () Bool)

(assert (=> b!766109 m!712203))

(declare-fun m!712205 () Bool)

(assert (=> b!766109 m!712205))

(assert (=> b!766116 m!712193))

(assert (=> b!766116 m!712193))

(declare-fun m!712207 () Bool)

(assert (=> b!766116 m!712207))

(declare-fun m!712209 () Bool)

(assert (=> b!766117 m!712209))

(assert (=> b!766104 m!712193))

(assert (=> b!766104 m!712193))

(declare-fun m!712211 () Bool)

(assert (=> b!766104 m!712211))

(assert (=> b!766104 m!712211))

(assert (=> b!766104 m!712193))

(declare-fun m!712213 () Bool)

(assert (=> b!766104 m!712213))

(declare-fun m!712215 () Bool)

(assert (=> b!766119 m!712215))

(declare-fun m!712217 () Bool)

(assert (=> b!766119 m!712217))

(declare-fun m!712219 () Bool)

(assert (=> b!766119 m!712219))

(declare-fun m!712221 () Bool)

(assert (=> b!766119 m!712221))

(assert (=> b!766119 m!712221))

(declare-fun m!712223 () Bool)

(assert (=> b!766119 m!712223))

(assert (=> b!766113 m!712193))

(assert (=> b!766113 m!712193))

(declare-fun m!712225 () Bool)

(assert (=> b!766113 m!712225))

(declare-fun m!712227 () Bool)

(assert (=> start!66500 m!712227))

(declare-fun m!712229 () Bool)

(assert (=> start!66500 m!712229))

(declare-fun m!712231 () Bool)

(assert (=> b!766120 m!712231))

(declare-fun m!712233 () Bool)

(assert (=> b!766114 m!712233))

(assert (=> b!766121 m!712193))

(assert (=> b!766121 m!712193))

(declare-fun m!712235 () Bool)

(assert (=> b!766121 m!712235))

(assert (=> b!766112 m!712193))

(assert (=> b!766112 m!712193))

(declare-fun m!712237 () Bool)

(assert (=> b!766112 m!712237))

(declare-fun m!712239 () Bool)

(assert (=> b!766110 m!712239))

(push 1)

