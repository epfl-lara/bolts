; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64094 () Bool)

(assert start!64094)

(declare-fun b!719549 () Bool)

(declare-fun e!403731 () Bool)

(declare-fun e!403730 () Bool)

(assert (=> b!719549 (= e!403731 e!403730)))

(declare-fun res!482088 () Bool)

(assert (=> b!719549 (=> (not res!482088) (not e!403730))))

(declare-datatypes ((SeekEntryResult!7100 0))(
  ( (MissingZero!7100 (index!30767 (_ BitVec 32))) (Found!7100 (index!30768 (_ BitVec 32))) (Intermediate!7100 (undefined!7912 Bool) (index!30769 (_ BitVec 32)) (x!61796 (_ BitVec 32))) (Undefined!7100) (MissingVacant!7100 (index!30770 (_ BitVec 32))) )
))
(declare-fun lt!319595 () SeekEntryResult!7100)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!719549 (= res!482088 (or (= lt!319595 (MissingZero!7100 i!1173)) (= lt!319595 (MissingVacant!7100 i!1173))))))

(declare-datatypes ((array!40742 0))(
  ( (array!40743 (arr!19493 (Array (_ BitVec 32) (_ BitVec 64))) (size!19914 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40742)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40742 (_ BitVec 32)) SeekEntryResult!7100)

(assert (=> b!719549 (= lt!319595 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!719550 () Bool)

(declare-fun res!482086 () Bool)

(assert (=> b!719550 (=> (not res!482086) (not e!403730))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40742 (_ BitVec 32)) Bool)

(assert (=> b!719550 (= res!482086 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!719551 () Bool)

(declare-fun res!482087 () Bool)

(assert (=> b!719551 (=> (not res!482087) (not e!403731))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!719551 (= res!482087 (validKeyInArray!0 k!2102))))

(declare-fun b!719552 () Bool)

(declare-fun res!482083 () Bool)

(assert (=> b!719552 (=> (not res!482083) (not e!403730))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!719552 (= res!482083 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19914 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19914 a!3186))))))

(declare-fun b!719553 () Bool)

(declare-fun res!482085 () Bool)

(assert (=> b!719553 (=> (not res!482085) (not e!403730))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40742 (_ BitVec 32)) SeekEntryResult!7100)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!719553 (= res!482085 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19493 a!3186) j!159) mask!3328) (select (arr!19493 a!3186) j!159) a!3186 mask!3328) (Intermediate!7100 false resIntermediateIndex!5 resIntermediateX!5)))))

(declare-fun b!719555 () Bool)

(assert (=> b!719555 (= e!403730 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19493 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsgt x!1131 resIntermediateX!5) (bvsge mask!3328 #b00000000000000000000000000000000) (bvsge index!1321 (bvadd #b00000000000000000000000000000001 mask!3328))))))

(declare-fun b!719556 () Bool)

(declare-fun res!482091 () Bool)

(assert (=> b!719556 (=> (not res!482091) (not e!403731))))

(assert (=> b!719556 (= res!482091 (validKeyInArray!0 (select (arr!19493 a!3186) j!159)))))

(declare-fun b!719557 () Bool)

(declare-fun res!482090 () Bool)

(assert (=> b!719557 (=> (not res!482090) (not e!403730))))

(declare-datatypes ((List!13548 0))(
  ( (Nil!13545) (Cons!13544 (h!14592 (_ BitVec 64)) (t!19871 List!13548)) )
))
(declare-fun arrayNoDuplicates!0 (array!40742 (_ BitVec 32) List!13548) Bool)

(assert (=> b!719557 (= res!482090 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13545))))

(declare-fun b!719558 () Bool)

(declare-fun res!482082 () Bool)

(assert (=> b!719558 (=> (not res!482082) (not e!403731))))

(declare-fun arrayContainsKey!0 (array!40742 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!719558 (= res!482082 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun res!482089 () Bool)

(assert (=> start!64094 (=> (not res!482089) (not e!403731))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64094 (= res!482089 (validMask!0 mask!3328))))

(assert (=> start!64094 e!403731))

(assert (=> start!64094 true))

(declare-fun array_inv!15267 (array!40742) Bool)

(assert (=> start!64094 (array_inv!15267 a!3186)))

(declare-fun b!719554 () Bool)

(declare-fun res!482084 () Bool)

(assert (=> b!719554 (=> (not res!482084) (not e!403731))))

(assert (=> b!719554 (= res!482084 (and (= (size!19914 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19914 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19914 a!3186)) (not (= i!1173 j!159))))))

(assert (= (and start!64094 res!482089) b!719554))

(assert (= (and b!719554 res!482084) b!719556))

(assert (= (and b!719556 res!482091) b!719551))

(assert (= (and b!719551 res!482087) b!719558))

(assert (= (and b!719558 res!482082) b!719549))

(assert (= (and b!719549 res!482088) b!719550))

(assert (= (and b!719550 res!482086) b!719557))

(assert (= (and b!719557 res!482090) b!719552))

(assert (= (and b!719552 res!482083) b!719553))

(assert (= (and b!719553 res!482085) b!719555))

(declare-fun m!675007 () Bool)

(assert (=> b!719549 m!675007))

(declare-fun m!675009 () Bool)

(assert (=> b!719551 m!675009))

(declare-fun m!675011 () Bool)

(assert (=> b!719556 m!675011))

(assert (=> b!719556 m!675011))

(declare-fun m!675013 () Bool)

(assert (=> b!719556 m!675013))

(declare-fun m!675015 () Bool)

(assert (=> b!719555 m!675015))

(declare-fun m!675017 () Bool)

(assert (=> start!64094 m!675017))

(declare-fun m!675019 () Bool)

(assert (=> start!64094 m!675019))

(assert (=> b!719553 m!675011))

(assert (=> b!719553 m!675011))

(declare-fun m!675021 () Bool)

(assert (=> b!719553 m!675021))

(assert (=> b!719553 m!675021))

(assert (=> b!719553 m!675011))

(declare-fun m!675023 () Bool)

(assert (=> b!719553 m!675023))

(declare-fun m!675025 () Bool)

(assert (=> b!719557 m!675025))

(declare-fun m!675027 () Bool)

(assert (=> b!719550 m!675027))

(declare-fun m!675029 () Bool)

(assert (=> b!719558 m!675029))

(push 1)

(assert (not start!64094))

(assert (not b!719557))

(assert (not b!719558))

(assert (not b!719551))

(assert (not b!719553))

(assert (not b!719550))

(assert (not b!719556))

(assert (not b!719549))

(check-sat)

(pop 1)

(push 1)

(check-sat)

