; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64368 () Bool)

(assert start!64368)

(declare-fun b!723252 () Bool)

(declare-fun res!484979 () Bool)

(declare-fun e!405236 () Bool)

(assert (=> b!723252 (=> (not res!484979) (not e!405236))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!40902 0))(
  ( (array!40903 (arr!19570 (Array (_ BitVec 32) (_ BitVec 64))) (size!19991 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40902)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!723252 (= res!484979 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19991 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19991 a!3186))))))

(declare-fun b!723253 () Bool)

(declare-fun e!405233 () Bool)

(assert (=> b!723253 (= e!405233 (not true))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40902 (_ BitVec 32)) Bool)

(assert (=> b!723253 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!24672 0))(
  ( (Unit!24673) )
))
(declare-fun lt!320614 () Unit!24672)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!40902 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24672)

(assert (=> b!723253 (= lt!320614 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!723254 () Bool)

(declare-fun e!405234 () Bool)

(assert (=> b!723254 (= e!405234 e!405236)))

(declare-fun res!484971 () Bool)

(assert (=> b!723254 (=> (not res!484971) (not e!405236))))

(declare-datatypes ((SeekEntryResult!7177 0))(
  ( (MissingZero!7177 (index!31075 (_ BitVec 32))) (Found!7177 (index!31076 (_ BitVec 32))) (Intermediate!7177 (undefined!7989 Bool) (index!31077 (_ BitVec 32)) (x!62099 (_ BitVec 32))) (Undefined!7177) (MissingVacant!7177 (index!31078 (_ BitVec 32))) )
))
(declare-fun lt!320613 () SeekEntryResult!7177)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!723254 (= res!484971 (or (= lt!320613 (MissingZero!7177 i!1173)) (= lt!320613 (MissingVacant!7177 i!1173))))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40902 (_ BitVec 32)) SeekEntryResult!7177)

(assert (=> b!723254 (= lt!320613 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!723255 () Bool)

(declare-fun res!484976 () Bool)

(declare-fun e!405235 () Bool)

(assert (=> b!723255 (=> (not res!484976) (not e!405235))))

(assert (=> b!723255 (= res!484976 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19570 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!723256 () Bool)

(declare-fun e!405232 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40902 (_ BitVec 32)) SeekEntryResult!7177)

(assert (=> b!723256 (= e!405232 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19570 a!3186) j!159) a!3186 mask!3328) (Found!7177 j!159)))))

(declare-fun b!723257 () Bool)

(declare-fun res!484973 () Bool)

(assert (=> b!723257 (=> (not res!484973) (not e!405234))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!723257 (= res!484973 (validKeyInArray!0 (select (arr!19570 a!3186) j!159)))))

(declare-fun lt!320612 () SeekEntryResult!7177)

(declare-fun b!723258 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40902 (_ BitVec 32)) SeekEntryResult!7177)

(assert (=> b!723258 (= e!405232 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19570 a!3186) j!159) a!3186 mask!3328) lt!320612))))

(declare-fun res!484982 () Bool)

(assert (=> start!64368 (=> (not res!484982) (not e!405234))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64368 (= res!484982 (validMask!0 mask!3328))))

(assert (=> start!64368 e!405234))

(assert (=> start!64368 true))

(declare-fun array_inv!15344 (array!40902) Bool)

(assert (=> start!64368 (array_inv!15344 a!3186)))

(declare-fun b!723259 () Bool)

(declare-fun res!484975 () Bool)

(assert (=> b!723259 (=> (not res!484975) (not e!405236))))

(assert (=> b!723259 (= res!484975 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!723260 () Bool)

(declare-fun res!484972 () Bool)

(assert (=> b!723260 (=> (not res!484972) (not e!405235))))

(assert (=> b!723260 (= res!484972 e!405232)))

(declare-fun c!79512 () Bool)

(assert (=> b!723260 (= c!79512 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!723261 () Bool)

(declare-fun res!484978 () Bool)

(assert (=> b!723261 (=> (not res!484978) (not e!405234))))

(assert (=> b!723261 (= res!484978 (validKeyInArray!0 k0!2102))))

(declare-fun b!723262 () Bool)

(declare-fun res!484980 () Bool)

(assert (=> b!723262 (=> (not res!484980) (not e!405234))))

(declare-fun arrayContainsKey!0 (array!40902 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!723262 (= res!484980 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!723263 () Bool)

(assert (=> b!723263 (= e!405236 e!405235)))

(declare-fun res!484981 () Bool)

(assert (=> b!723263 (=> (not res!484981) (not e!405235))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!723263 (= res!484981 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19570 a!3186) j!159) mask!3328) (select (arr!19570 a!3186) j!159) a!3186 mask!3328) lt!320612))))

(assert (=> b!723263 (= lt!320612 (Intermediate!7177 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!723264 () Bool)

(assert (=> b!723264 (= e!405235 e!405233)))

(declare-fun res!484983 () Bool)

(assert (=> b!723264 (=> (not res!484983) (not e!405233))))

(declare-fun lt!320615 () (_ BitVec 64))

(declare-fun lt!320611 () array!40902)

(assert (=> b!723264 (= res!484983 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!320615 mask!3328) lt!320615 lt!320611 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!320615 lt!320611 mask!3328)))))

(assert (=> b!723264 (= lt!320615 (select (store (arr!19570 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!723264 (= lt!320611 (array!40903 (store (arr!19570 a!3186) i!1173 k0!2102) (size!19991 a!3186)))))

(declare-fun b!723265 () Bool)

(declare-fun res!484974 () Bool)

(assert (=> b!723265 (=> (not res!484974) (not e!405236))))

(declare-datatypes ((List!13625 0))(
  ( (Nil!13622) (Cons!13621 (h!14675 (_ BitVec 64)) (t!19948 List!13625)) )
))
(declare-fun arrayNoDuplicates!0 (array!40902 (_ BitVec 32) List!13625) Bool)

(assert (=> b!723265 (= res!484974 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13622))))

(declare-fun b!723266 () Bool)

(declare-fun res!484977 () Bool)

(assert (=> b!723266 (=> (not res!484977) (not e!405234))))

(assert (=> b!723266 (= res!484977 (and (= (size!19991 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19991 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19991 a!3186)) (not (= i!1173 j!159))))))

(assert (= (and start!64368 res!484982) b!723266))

(assert (= (and b!723266 res!484977) b!723257))

(assert (= (and b!723257 res!484973) b!723261))

(assert (= (and b!723261 res!484978) b!723262))

(assert (= (and b!723262 res!484980) b!723254))

(assert (= (and b!723254 res!484971) b!723259))

(assert (= (and b!723259 res!484975) b!723265))

(assert (= (and b!723265 res!484974) b!723252))

(assert (= (and b!723252 res!484979) b!723263))

(assert (= (and b!723263 res!484981) b!723255))

(assert (= (and b!723255 res!484976) b!723260))

(assert (= (and b!723260 c!79512) b!723258))

(assert (= (and b!723260 (not c!79512)) b!723256))

(assert (= (and b!723260 res!484972) b!723264))

(assert (= (and b!723264 res!484983) b!723253))

(declare-fun m!677797 () Bool)

(assert (=> b!723255 m!677797))

(declare-fun m!677799 () Bool)

(assert (=> b!723259 m!677799))

(declare-fun m!677801 () Bool)

(assert (=> b!723253 m!677801))

(declare-fun m!677803 () Bool)

(assert (=> b!723253 m!677803))

(declare-fun m!677805 () Bool)

(assert (=> b!723262 m!677805))

(declare-fun m!677807 () Bool)

(assert (=> b!723263 m!677807))

(assert (=> b!723263 m!677807))

(declare-fun m!677809 () Bool)

(assert (=> b!723263 m!677809))

(assert (=> b!723263 m!677809))

(assert (=> b!723263 m!677807))

(declare-fun m!677811 () Bool)

(assert (=> b!723263 m!677811))

(declare-fun m!677813 () Bool)

(assert (=> start!64368 m!677813))

(declare-fun m!677815 () Bool)

(assert (=> start!64368 m!677815))

(declare-fun m!677817 () Bool)

(assert (=> b!723265 m!677817))

(declare-fun m!677819 () Bool)

(assert (=> b!723254 m!677819))

(assert (=> b!723258 m!677807))

(assert (=> b!723258 m!677807))

(declare-fun m!677821 () Bool)

(assert (=> b!723258 m!677821))

(declare-fun m!677823 () Bool)

(assert (=> b!723261 m!677823))

(assert (=> b!723256 m!677807))

(assert (=> b!723256 m!677807))

(declare-fun m!677825 () Bool)

(assert (=> b!723256 m!677825))

(declare-fun m!677827 () Bool)

(assert (=> b!723264 m!677827))

(declare-fun m!677829 () Bool)

(assert (=> b!723264 m!677829))

(declare-fun m!677831 () Bool)

(assert (=> b!723264 m!677831))

(assert (=> b!723264 m!677827))

(declare-fun m!677833 () Bool)

(assert (=> b!723264 m!677833))

(declare-fun m!677835 () Bool)

(assert (=> b!723264 m!677835))

(assert (=> b!723257 m!677807))

(assert (=> b!723257 m!677807))

(declare-fun m!677837 () Bool)

(assert (=> b!723257 m!677837))

(check-sat (not start!64368) (not b!723265) (not b!723259) (not b!723256) (not b!723262) (not b!723257) (not b!723254) (not b!723264) (not b!723261) (not b!723258) (not b!723253) (not b!723263))
(check-sat)
