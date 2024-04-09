; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65604 () Bool)

(assert start!65604)

(declare-fun b!749585 () Bool)

(declare-fun e!418285 () Bool)

(declare-fun e!418288 () Bool)

(assert (=> b!749585 (= e!418285 e!418288)))

(declare-fun res!505929 () Bool)

(assert (=> b!749585 (=> (not res!505929) (not e!418288))))

(declare-datatypes ((SeekEntryResult!7582 0))(
  ( (MissingZero!7582 (index!32695 (_ BitVec 32))) (Found!7582 (index!32696 (_ BitVec 32))) (Intermediate!7582 (undefined!8394 Bool) (index!32697 (_ BitVec 32)) (x!63653 (_ BitVec 32))) (Undefined!7582) (MissingVacant!7582 (index!32698 (_ BitVec 32))) )
))
(declare-fun lt!333283 () SeekEntryResult!7582)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!749585 (= res!505929 (or (= lt!333283 (MissingZero!7582 i!1173)) (= lt!333283 (MissingVacant!7582 i!1173))))))

(declare-datatypes ((array!41730 0))(
  ( (array!41731 (arr!19975 (Array (_ BitVec 32) (_ BitVec 64))) (size!20396 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41730)

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41730 (_ BitVec 32)) SeekEntryResult!7582)

(assert (=> b!749585 (= lt!333283 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!749586 () Bool)

(declare-fun res!505926 () Bool)

(assert (=> b!749586 (=> (not res!505926) (not e!418288))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41730 (_ BitVec 32)) Bool)

(assert (=> b!749586 (= res!505926 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!749587 () Bool)

(declare-datatypes ((Unit!25730 0))(
  ( (Unit!25731) )
))
(declare-fun e!418283 () Unit!25730)

(declare-fun Unit!25732 () Unit!25730)

(assert (=> b!749587 (= e!418283 Unit!25732)))

(assert (=> b!749587 false))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!749588 () Bool)

(declare-fun e!418290 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41730 (_ BitVec 32)) SeekEntryResult!7582)

(assert (=> b!749588 (= e!418290 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19975 a!3186) j!159) a!3186 mask!3328) (Found!7582 j!159)))))

(declare-fun b!749589 () Bool)

(declare-fun res!505914 () Bool)

(declare-fun e!418286 () Bool)

(assert (=> b!749589 (=> (not res!505914) (not e!418286))))

(assert (=> b!749589 (= res!505914 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19975 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!749590 () Bool)

(assert (=> b!749590 (= e!418288 e!418286)))

(declare-fun res!505924 () Bool)

(assert (=> b!749590 (=> (not res!505924) (not e!418286))))

(declare-fun lt!333286 () SeekEntryResult!7582)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41730 (_ BitVec 32)) SeekEntryResult!7582)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!749590 (= res!505924 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19975 a!3186) j!159) mask!3328) (select (arr!19975 a!3186) j!159) a!3186 mask!3328) lt!333286))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!749590 (= lt!333286 (Intermediate!7582 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!749591 () Bool)

(declare-fun e!418282 () Bool)

(assert (=> b!749591 (= e!418282 true)))

(declare-fun e!418280 () Bool)

(assert (=> b!749591 e!418280))

(declare-fun res!505927 () Bool)

(assert (=> b!749591 (=> (not res!505927) (not e!418280))))

(declare-fun lt!333289 () (_ BitVec 64))

(assert (=> b!749591 (= res!505927 (= lt!333289 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!333280 () Unit!25730)

(assert (=> b!749591 (= lt!333280 e!418283)))

(declare-fun c!82218 () Bool)

(assert (=> b!749591 (= c!82218 (= lt!333289 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!749593 () Bool)

(declare-fun lt!333290 () SeekEntryResult!7582)

(declare-fun e!418287 () Bool)

(assert (=> b!749593 (= e!418287 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19975 a!3186) j!159) a!3186 mask!3328) lt!333290))))

(declare-fun b!749594 () Bool)

(declare-fun res!505928 () Bool)

(assert (=> b!749594 (=> (not res!505928) (not e!418285))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!749594 (= res!505928 (validKeyInArray!0 k0!2102))))

(declare-fun b!749595 () Bool)

(declare-fun res!505921 () Bool)

(assert (=> b!749595 (=> (not res!505921) (not e!418288))))

(assert (=> b!749595 (= res!505921 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20396 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20396 a!3186))))))

(declare-fun lt!333284 () (_ BitVec 64))

(declare-fun lt!333282 () array!41730)

(declare-fun b!749596 () Bool)

(assert (=> b!749596 (= e!418280 (= (seekEntryOrOpen!0 lt!333284 lt!333282 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!333284 lt!333282 mask!3328)))))

(declare-fun b!749597 () Bool)

(declare-fun res!505915 () Bool)

(assert (=> b!749597 (=> (not res!505915) (not e!418285))))

(assert (=> b!749597 (= res!505915 (validKeyInArray!0 (select (arr!19975 a!3186) j!159)))))

(declare-fun b!749598 () Bool)

(declare-fun e!418281 () Bool)

(assert (=> b!749598 (= e!418286 e!418281)))

(declare-fun res!505917 () Bool)

(assert (=> b!749598 (=> (not res!505917) (not e!418281))))

(declare-fun lt!333288 () SeekEntryResult!7582)

(declare-fun lt!333281 () SeekEntryResult!7582)

(assert (=> b!749598 (= res!505917 (= lt!333288 lt!333281))))

(assert (=> b!749598 (= lt!333281 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!333284 lt!333282 mask!3328))))

(assert (=> b!749598 (= lt!333288 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!333284 mask!3328) lt!333284 lt!333282 mask!3328))))

(assert (=> b!749598 (= lt!333284 (select (store (arr!19975 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!749598 (= lt!333282 (array!41731 (store (arr!19975 a!3186) i!1173 k0!2102) (size!20396 a!3186)))))

(declare-fun b!749599 () Bool)

(assert (=> b!749599 (= e!418290 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19975 a!3186) j!159) a!3186 mask!3328) lt!333286))))

(declare-fun b!749592 () Bool)

(declare-fun e!418289 () Bool)

(assert (=> b!749592 (= e!418281 (not e!418289))))

(declare-fun res!505925 () Bool)

(assert (=> b!749592 (=> res!505925 e!418289)))

(get-info :version)

(assert (=> b!749592 (= res!505925 (or (not ((_ is Intermediate!7582) lt!333281)) (bvslt x!1131 (x!63653 lt!333281)) (not (= x!1131 (x!63653 lt!333281))) (not (= index!1321 (index!32697 lt!333281)))))))

(assert (=> b!749592 e!418287))

(declare-fun res!505920 () Bool)

(assert (=> b!749592 (=> (not res!505920) (not e!418287))))

(declare-fun lt!333287 () SeekEntryResult!7582)

(assert (=> b!749592 (= res!505920 (= lt!333287 lt!333290))))

(assert (=> b!749592 (= lt!333290 (Found!7582 j!159))))

(assert (=> b!749592 (= lt!333287 (seekEntryOrOpen!0 (select (arr!19975 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!749592 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!333285 () Unit!25730)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41730 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25730)

(assert (=> b!749592 (= lt!333285 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun res!505916 () Bool)

(assert (=> start!65604 (=> (not res!505916) (not e!418285))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65604 (= res!505916 (validMask!0 mask!3328))))

(assert (=> start!65604 e!418285))

(assert (=> start!65604 true))

(declare-fun array_inv!15749 (array!41730) Bool)

(assert (=> start!65604 (array_inv!15749 a!3186)))

(declare-fun b!749600 () Bool)

(declare-fun res!505922 () Bool)

(assert (=> b!749600 (=> (not res!505922) (not e!418288))))

(declare-datatypes ((List!14030 0))(
  ( (Nil!14027) (Cons!14026 (h!15098 (_ BitVec 64)) (t!20353 List!14030)) )
))
(declare-fun arrayNoDuplicates!0 (array!41730 (_ BitVec 32) List!14030) Bool)

(assert (=> b!749600 (= res!505922 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14027))))

(declare-fun b!749601 () Bool)

(assert (=> b!749601 (= e!418289 e!418282)))

(declare-fun res!505919 () Bool)

(assert (=> b!749601 (=> res!505919 e!418282)))

(assert (=> b!749601 (= res!505919 (= lt!333289 lt!333284))))

(assert (=> b!749601 (= lt!333289 (select (store (arr!19975 a!3186) i!1173 k0!2102) index!1321))))

(declare-fun b!749602 () Bool)

(declare-fun res!505912 () Bool)

(assert (=> b!749602 (=> res!505912 e!418289)))

(assert (=> b!749602 (= res!505912 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19975 a!3186) j!159) a!3186 mask!3328) lt!333290)))))

(declare-fun b!749603 () Bool)

(declare-fun res!505918 () Bool)

(assert (=> b!749603 (=> (not res!505918) (not e!418285))))

(assert (=> b!749603 (= res!505918 (and (= (size!20396 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20396 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20396 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!749604 () Bool)

(declare-fun res!505923 () Bool)

(assert (=> b!749604 (=> (not res!505923) (not e!418286))))

(assert (=> b!749604 (= res!505923 e!418290)))

(declare-fun c!82217 () Bool)

(assert (=> b!749604 (= c!82217 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!749605 () Bool)

(declare-fun Unit!25733 () Unit!25730)

(assert (=> b!749605 (= e!418283 Unit!25733)))

(declare-fun b!749606 () Bool)

(declare-fun res!505913 () Bool)

(assert (=> b!749606 (=> (not res!505913) (not e!418285))))

(declare-fun arrayContainsKey!0 (array!41730 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!749606 (= res!505913 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(assert (= (and start!65604 res!505916) b!749603))

(assert (= (and b!749603 res!505918) b!749597))

(assert (= (and b!749597 res!505915) b!749594))

(assert (= (and b!749594 res!505928) b!749606))

(assert (= (and b!749606 res!505913) b!749585))

(assert (= (and b!749585 res!505929) b!749586))

(assert (= (and b!749586 res!505926) b!749600))

(assert (= (and b!749600 res!505922) b!749595))

(assert (= (and b!749595 res!505921) b!749590))

(assert (= (and b!749590 res!505924) b!749589))

(assert (= (and b!749589 res!505914) b!749604))

(assert (= (and b!749604 c!82217) b!749599))

(assert (= (and b!749604 (not c!82217)) b!749588))

(assert (= (and b!749604 res!505923) b!749598))

(assert (= (and b!749598 res!505917) b!749592))

(assert (= (and b!749592 res!505920) b!749593))

(assert (= (and b!749592 (not res!505925)) b!749602))

(assert (= (and b!749602 (not res!505912)) b!749601))

(assert (= (and b!749601 (not res!505919)) b!749591))

(assert (= (and b!749591 c!82218) b!749587))

(assert (= (and b!749591 (not c!82218)) b!749605))

(assert (= (and b!749591 res!505927) b!749596))

(declare-fun m!699233 () Bool)

(assert (=> b!749600 m!699233))

(declare-fun m!699235 () Bool)

(assert (=> b!749606 m!699235))

(declare-fun m!699237 () Bool)

(assert (=> b!749586 m!699237))

(declare-fun m!699239 () Bool)

(assert (=> b!749601 m!699239))

(declare-fun m!699241 () Bool)

(assert (=> b!749601 m!699241))

(assert (=> b!749598 m!699239))

(declare-fun m!699243 () Bool)

(assert (=> b!749598 m!699243))

(declare-fun m!699245 () Bool)

(assert (=> b!749598 m!699245))

(declare-fun m!699247 () Bool)

(assert (=> b!749598 m!699247))

(assert (=> b!749598 m!699245))

(declare-fun m!699249 () Bool)

(assert (=> b!749598 m!699249))

(declare-fun m!699251 () Bool)

(assert (=> b!749602 m!699251))

(assert (=> b!749602 m!699251))

(declare-fun m!699253 () Bool)

(assert (=> b!749602 m!699253))

(assert (=> b!749599 m!699251))

(assert (=> b!749599 m!699251))

(declare-fun m!699255 () Bool)

(assert (=> b!749599 m!699255))

(assert (=> b!749588 m!699251))

(assert (=> b!749588 m!699251))

(assert (=> b!749588 m!699253))

(assert (=> b!749593 m!699251))

(assert (=> b!749593 m!699251))

(declare-fun m!699257 () Bool)

(assert (=> b!749593 m!699257))

(declare-fun m!699259 () Bool)

(assert (=> b!749594 m!699259))

(declare-fun m!699261 () Bool)

(assert (=> start!65604 m!699261))

(declare-fun m!699263 () Bool)

(assert (=> start!65604 m!699263))

(assert (=> b!749590 m!699251))

(assert (=> b!749590 m!699251))

(declare-fun m!699265 () Bool)

(assert (=> b!749590 m!699265))

(assert (=> b!749590 m!699265))

(assert (=> b!749590 m!699251))

(declare-fun m!699267 () Bool)

(assert (=> b!749590 m!699267))

(declare-fun m!699269 () Bool)

(assert (=> b!749585 m!699269))

(assert (=> b!749597 m!699251))

(assert (=> b!749597 m!699251))

(declare-fun m!699271 () Bool)

(assert (=> b!749597 m!699271))

(declare-fun m!699273 () Bool)

(assert (=> b!749596 m!699273))

(declare-fun m!699275 () Bool)

(assert (=> b!749596 m!699275))

(declare-fun m!699277 () Bool)

(assert (=> b!749589 m!699277))

(assert (=> b!749592 m!699251))

(assert (=> b!749592 m!699251))

(declare-fun m!699279 () Bool)

(assert (=> b!749592 m!699279))

(declare-fun m!699281 () Bool)

(assert (=> b!749592 m!699281))

(declare-fun m!699283 () Bool)

(assert (=> b!749592 m!699283))

(check-sat (not b!749588) (not b!749590) (not b!749597) (not b!749593) (not b!749596) (not b!749592) (not b!749585) (not start!65604) (not b!749602) (not b!749606) (not b!749599) (not b!749594) (not b!749586) (not b!749598) (not b!749600))
(check-sat)
