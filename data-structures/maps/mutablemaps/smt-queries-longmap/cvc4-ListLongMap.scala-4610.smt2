; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64316 () Bool)

(assert start!64316)

(declare-fun b!722129 () Bool)

(declare-fun res!484005 () Bool)

(declare-fun e!404819 () Bool)

(assert (=> b!722129 (=> (not res!484005) (not e!404819))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!40850 0))(
  ( (array!40851 (arr!19544 (Array (_ BitVec 32) (_ BitVec 64))) (size!19965 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40850)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!722129 (= res!484005 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19965 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19965 a!3186))))))

(declare-fun b!722130 () Bool)

(declare-datatypes ((SeekEntryResult!7151 0))(
  ( (MissingZero!7151 (index!30971 (_ BitVec 32))) (Found!7151 (index!30972 (_ BitVec 32))) (Intermediate!7151 (undefined!7963 Bool) (index!30973 (_ BitVec 32)) (x!62001 (_ BitVec 32))) (Undefined!7151) (MissingVacant!7151 (index!30974 (_ BitVec 32))) )
))
(declare-fun lt!320205 () SeekEntryResult!7151)

(declare-fun e!404821 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40850 (_ BitVec 32)) SeekEntryResult!7151)

(assert (=> b!722130 (= e!404821 (not (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19544 a!3186) j!159) a!3186 mask!3328) lt!320205)))))

(declare-fun b!722132 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40850 (_ BitVec 32)) SeekEntryResult!7151)

(assert (=> b!722132 (= e!404821 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19544 a!3186) j!159) a!3186 mask!3328) (Found!7151 j!159))))))

(declare-fun b!722133 () Bool)

(declare-fun res!484007 () Bool)

(declare-fun e!404823 () Bool)

(assert (=> b!722133 (=> (not res!484007) (not e!404823))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!40850 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!722133 (= res!484007 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!722134 () Bool)

(declare-fun res!484010 () Bool)

(assert (=> b!722134 (=> (not res!484010) (not e!404823))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!722134 (= res!484010 (and (= (size!19965 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19965 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19965 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!722135 () Bool)

(declare-fun e!404822 () Bool)

(assert (=> b!722135 (= e!404819 e!404822)))

(declare-fun res!484012 () Bool)

(assert (=> b!722135 (=> (not res!484012) (not e!404822))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!722135 (= res!484012 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19544 a!3186) j!159) mask!3328) (select (arr!19544 a!3186) j!159) a!3186 mask!3328) lt!320205))))

(assert (=> b!722135 (= lt!320205 (Intermediate!7151 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun res!484008 () Bool)

(assert (=> start!64316 (=> (not res!484008) (not e!404823))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64316 (= res!484008 (validMask!0 mask!3328))))

(assert (=> start!64316 e!404823))

(assert (=> start!64316 true))

(declare-fun array_inv!15318 (array!40850) Bool)

(assert (=> start!64316 (array_inv!15318 a!3186)))

(declare-fun b!722131 () Bool)

(declare-fun res!484009 () Bool)

(assert (=> b!722131 (=> (not res!484009) (not e!404823))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!722131 (= res!484009 (validKeyInArray!0 k!2102))))

(declare-fun b!722136 () Bool)

(declare-fun res!484014 () Bool)

(assert (=> b!722136 (=> (not res!484014) (not e!404819))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40850 (_ BitVec 32)) Bool)

(assert (=> b!722136 (= res!484014 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!722137 () Bool)

(declare-fun res!484011 () Bool)

(assert (=> b!722137 (=> (not res!484011) (not e!404819))))

(declare-datatypes ((List!13599 0))(
  ( (Nil!13596) (Cons!13595 (h!14649 (_ BitVec 64)) (t!19922 List!13599)) )
))
(declare-fun arrayNoDuplicates!0 (array!40850 (_ BitVec 32) List!13599) Bool)

(assert (=> b!722137 (= res!484011 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13596))))

(declare-fun b!722138 () Bool)

(assert (=> b!722138 (= e!404822 false)))

(declare-fun lt!320206 () Bool)

(assert (=> b!722138 (= lt!320206 e!404821)))

(declare-fun c!79434 () Bool)

(assert (=> b!722138 (= c!79434 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!722139 () Bool)

(declare-fun res!484006 () Bool)

(assert (=> b!722139 (=> (not res!484006) (not e!404822))))

(assert (=> b!722139 (= res!484006 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19544 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!722140 () Bool)

(assert (=> b!722140 (= e!404823 e!404819)))

(declare-fun res!484004 () Bool)

(assert (=> b!722140 (=> (not res!484004) (not e!404819))))

(declare-fun lt!320207 () SeekEntryResult!7151)

(assert (=> b!722140 (= res!484004 (or (= lt!320207 (MissingZero!7151 i!1173)) (= lt!320207 (MissingVacant!7151 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40850 (_ BitVec 32)) SeekEntryResult!7151)

(assert (=> b!722140 (= lt!320207 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!722141 () Bool)

(declare-fun res!484013 () Bool)

(assert (=> b!722141 (=> (not res!484013) (not e!404823))))

(assert (=> b!722141 (= res!484013 (validKeyInArray!0 (select (arr!19544 a!3186) j!159)))))

(assert (= (and start!64316 res!484008) b!722134))

(assert (= (and b!722134 res!484010) b!722141))

(assert (= (and b!722141 res!484013) b!722131))

(assert (= (and b!722131 res!484009) b!722133))

(assert (= (and b!722133 res!484007) b!722140))

(assert (= (and b!722140 res!484004) b!722136))

(assert (= (and b!722136 res!484014) b!722137))

(assert (= (and b!722137 res!484011) b!722129))

(assert (= (and b!722129 res!484005) b!722135))

(assert (= (and b!722135 res!484012) b!722139))

(assert (= (and b!722139 res!484006) b!722138))

(assert (= (and b!722138 c!79434) b!722130))

(assert (= (and b!722138 (not c!79434)) b!722132))

(declare-fun m!676803 () Bool)

(assert (=> b!722132 m!676803))

(assert (=> b!722132 m!676803))

(declare-fun m!676805 () Bool)

(assert (=> b!722132 m!676805))

(assert (=> b!722135 m!676803))

(assert (=> b!722135 m!676803))

(declare-fun m!676807 () Bool)

(assert (=> b!722135 m!676807))

(assert (=> b!722135 m!676807))

(assert (=> b!722135 m!676803))

(declare-fun m!676809 () Bool)

(assert (=> b!722135 m!676809))

(assert (=> b!722130 m!676803))

(assert (=> b!722130 m!676803))

(declare-fun m!676811 () Bool)

(assert (=> b!722130 m!676811))

(declare-fun m!676813 () Bool)

(assert (=> b!722139 m!676813))

(declare-fun m!676815 () Bool)

(assert (=> b!722137 m!676815))

(declare-fun m!676817 () Bool)

(assert (=> b!722136 m!676817))

(declare-fun m!676819 () Bool)

(assert (=> b!722133 m!676819))

(declare-fun m!676821 () Bool)

(assert (=> b!722131 m!676821))

(declare-fun m!676823 () Bool)

(assert (=> b!722140 m!676823))

(assert (=> b!722141 m!676803))

(assert (=> b!722141 m!676803))

(declare-fun m!676825 () Bool)

(assert (=> b!722141 m!676825))

(declare-fun m!676827 () Bool)

(assert (=> start!64316 m!676827))

(declare-fun m!676829 () Bool)

(assert (=> start!64316 m!676829))

(push 1)

