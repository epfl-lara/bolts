; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64314 () Bool)

(assert start!64314)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!40848 0))(
  ( (array!40849 (arr!19543 (Array (_ BitVec 32) (_ BitVec 64))) (size!19964 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40848)

(declare-fun e!404806 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!722090 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7150 0))(
  ( (MissingZero!7150 (index!30967 (_ BitVec 32))) (Found!7150 (index!30968 (_ BitVec 32))) (Intermediate!7150 (undefined!7962 Bool) (index!30969 (_ BitVec 32)) (x!62000 (_ BitVec 32))) (Undefined!7150) (MissingVacant!7150 (index!30970 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40848 (_ BitVec 32)) SeekEntryResult!7150)

(assert (=> b!722090 (= e!404806 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19543 a!3186) j!159) a!3186 mask!3328) (Found!7150 j!159))))))

(declare-fun b!722091 () Bool)

(declare-fun res!483979 () Bool)

(declare-fun e!404805 () Bool)

(assert (=> b!722091 (=> (not res!483979) (not e!404805))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!722091 (= res!483979 (validKeyInArray!0 (select (arr!19543 a!3186) j!159)))))

(declare-fun b!722092 () Bool)

(declare-fun res!483974 () Bool)

(declare-fun e!404804 () Bool)

(assert (=> b!722092 (=> (not res!483974) (not e!404804))))

(declare-datatypes ((List!13598 0))(
  ( (Nil!13595) (Cons!13594 (h!14648 (_ BitVec 64)) (t!19921 List!13598)) )
))
(declare-fun arrayNoDuplicates!0 (array!40848 (_ BitVec 32) List!13598) Bool)

(assert (=> b!722092 (= res!483974 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13595))))

(declare-fun b!722093 () Bool)

(declare-fun res!483976 () Bool)

(assert (=> b!722093 (=> (not res!483976) (not e!404805))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!40848 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!722093 (= res!483976 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!722094 () Bool)

(declare-fun res!483975 () Bool)

(assert (=> b!722094 (=> (not res!483975) (not e!404804))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40848 (_ BitVec 32)) Bool)

(assert (=> b!722094 (= res!483975 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!722095 () Bool)

(assert (=> b!722095 (= e!404805 e!404804)))

(declare-fun res!483971 () Bool)

(assert (=> b!722095 (=> (not res!483971) (not e!404804))))

(declare-fun lt!320198 () SeekEntryResult!7150)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!722095 (= res!483971 (or (= lt!320198 (MissingZero!7150 i!1173)) (= lt!320198 (MissingVacant!7150 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40848 (_ BitVec 32)) SeekEntryResult!7150)

(assert (=> b!722095 (= lt!320198 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!722096 () Bool)

(declare-fun res!483978 () Bool)

(assert (=> b!722096 (=> (not res!483978) (not e!404804))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!722096 (= res!483978 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19964 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19964 a!3186))))))

(declare-fun b!722097 () Bool)

(declare-fun res!483981 () Bool)

(assert (=> b!722097 (=> (not res!483981) (not e!404805))))

(assert (=> b!722097 (= res!483981 (and (= (size!19964 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19964 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19964 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!722098 () Bool)

(declare-fun e!404807 () Bool)

(assert (=> b!722098 (= e!404804 e!404807)))

(declare-fun res!483972 () Bool)

(assert (=> b!722098 (=> (not res!483972) (not e!404807))))

(declare-fun lt!320197 () SeekEntryResult!7150)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40848 (_ BitVec 32)) SeekEntryResult!7150)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!722098 (= res!483972 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19543 a!3186) j!159) mask!3328) (select (arr!19543 a!3186) j!159) a!3186 mask!3328) lt!320197))))

(assert (=> b!722098 (= lt!320197 (Intermediate!7150 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun res!483977 () Bool)

(assert (=> start!64314 (=> (not res!483977) (not e!404805))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64314 (= res!483977 (validMask!0 mask!3328))))

(assert (=> start!64314 e!404805))

(assert (=> start!64314 true))

(declare-fun array_inv!15317 (array!40848) Bool)

(assert (=> start!64314 (array_inv!15317 a!3186)))

(declare-fun b!722099 () Bool)

(assert (=> b!722099 (= e!404806 (not (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19543 a!3186) j!159) a!3186 mask!3328) lt!320197)))))

(declare-fun b!722100 () Bool)

(assert (=> b!722100 (= e!404807 false)))

(declare-fun lt!320196 () Bool)

(assert (=> b!722100 (= lt!320196 e!404806)))

(declare-fun c!79431 () Bool)

(assert (=> b!722100 (= c!79431 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!722101 () Bool)

(declare-fun res!483973 () Bool)

(assert (=> b!722101 (=> (not res!483973) (not e!404805))))

(assert (=> b!722101 (= res!483973 (validKeyInArray!0 k0!2102))))

(declare-fun b!722102 () Bool)

(declare-fun res!483980 () Bool)

(assert (=> b!722102 (=> (not res!483980) (not e!404807))))

(assert (=> b!722102 (= res!483980 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19543 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!64314 res!483977) b!722097))

(assert (= (and b!722097 res!483981) b!722091))

(assert (= (and b!722091 res!483979) b!722101))

(assert (= (and b!722101 res!483973) b!722093))

(assert (= (and b!722093 res!483976) b!722095))

(assert (= (and b!722095 res!483971) b!722094))

(assert (= (and b!722094 res!483975) b!722092))

(assert (= (and b!722092 res!483974) b!722096))

(assert (= (and b!722096 res!483978) b!722098))

(assert (= (and b!722098 res!483972) b!722102))

(assert (= (and b!722102 res!483980) b!722100))

(assert (= (and b!722100 c!79431) b!722099))

(assert (= (and b!722100 (not c!79431)) b!722090))

(declare-fun m!676775 () Bool)

(assert (=> start!64314 m!676775))

(declare-fun m!676777 () Bool)

(assert (=> start!64314 m!676777))

(declare-fun m!676779 () Bool)

(assert (=> b!722101 m!676779))

(declare-fun m!676781 () Bool)

(assert (=> b!722094 m!676781))

(declare-fun m!676783 () Bool)

(assert (=> b!722090 m!676783))

(assert (=> b!722090 m!676783))

(declare-fun m!676785 () Bool)

(assert (=> b!722090 m!676785))

(declare-fun m!676787 () Bool)

(assert (=> b!722092 m!676787))

(assert (=> b!722098 m!676783))

(assert (=> b!722098 m!676783))

(declare-fun m!676789 () Bool)

(assert (=> b!722098 m!676789))

(assert (=> b!722098 m!676789))

(assert (=> b!722098 m!676783))

(declare-fun m!676791 () Bool)

(assert (=> b!722098 m!676791))

(assert (=> b!722099 m!676783))

(assert (=> b!722099 m!676783))

(declare-fun m!676793 () Bool)

(assert (=> b!722099 m!676793))

(declare-fun m!676795 () Bool)

(assert (=> b!722102 m!676795))

(assert (=> b!722091 m!676783))

(assert (=> b!722091 m!676783))

(declare-fun m!676797 () Bool)

(assert (=> b!722091 m!676797))

(declare-fun m!676799 () Bool)

(assert (=> b!722095 m!676799))

(declare-fun m!676801 () Bool)

(assert (=> b!722093 m!676801))

(check-sat (not b!722101) (not b!722092) (not b!722093) (not b!722099) (not b!722095) (not b!722091) (not start!64314) (not b!722090) (not b!722098) (not b!722094))
(check-sat)
