; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65312 () Bool)

(assert start!65312)

(declare-fun b!741160 () Bool)

(declare-fun res!498634 () Bool)

(declare-fun e!414334 () Bool)

(assert (=> b!741160 (=> (not res!498634) (not e!414334))))

(declare-datatypes ((array!41438 0))(
  ( (array!41439 (arr!19829 (Array (_ BitVec 32) (_ BitVec 64))) (size!20250 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41438)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!741160 (= res!498634 (and (= (size!20250 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20250 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20250 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!741161 () Bool)

(declare-fun res!498629 () Bool)

(declare-fun e!414330 () Bool)

(assert (=> b!741161 (=> (not res!498629) (not e!414330))))

(declare-fun e!414332 () Bool)

(assert (=> b!741161 (= res!498629 e!414332)))

(declare-fun c!81648 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!741161 (= c!81648 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!741162 () Bool)

(declare-fun res!498627 () Bool)

(assert (=> b!741162 (=> (not res!498627) (not e!414330))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!741162 (= res!498627 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19829 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!741163 () Bool)

(declare-fun e!414329 () Bool)

(assert (=> b!741163 (= e!414329 e!414330)))

(declare-fun res!498635 () Bool)

(assert (=> b!741163 (=> (not res!498635) (not e!414330))))

(declare-datatypes ((SeekEntryResult!7436 0))(
  ( (MissingZero!7436 (index!32111 (_ BitVec 32))) (Found!7436 (index!32112 (_ BitVec 32))) (Intermediate!7436 (undefined!8248 Bool) (index!32113 (_ BitVec 32)) (x!63115 (_ BitVec 32))) (Undefined!7436) (MissingVacant!7436 (index!32114 (_ BitVec 32))) )
))
(declare-fun lt!329314 () SeekEntryResult!7436)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41438 (_ BitVec 32)) SeekEntryResult!7436)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!741163 (= res!498635 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19829 a!3186) j!159) mask!3328) (select (arr!19829 a!3186) j!159) a!3186 mask!3328) lt!329314))))

(assert (=> b!741163 (= lt!329314 (Intermediate!7436 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun res!498631 () Bool)

(assert (=> start!65312 (=> (not res!498631) (not e!414334))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65312 (= res!498631 (validMask!0 mask!3328))))

(assert (=> start!65312 e!414334))

(assert (=> start!65312 true))

(declare-fun array_inv!15603 (array!41438) Bool)

(assert (=> start!65312 (array_inv!15603 a!3186)))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!329313 () SeekEntryResult!7436)

(declare-fun e!414336 () Bool)

(declare-fun b!741164 () Bool)

(assert (=> b!741164 (= e!414336 (not (or (not (is-Intermediate!7436 lt!329313)) (not (= x!1131 (x!63115 lt!329313))) (not (= index!1321 (index!32113 lt!329313))) (bvsge mask!3328 #b00000000000000000000000000000000))))))

(declare-fun e!414331 () Bool)

(assert (=> b!741164 e!414331))

(declare-fun res!498626 () Bool)

(assert (=> b!741164 (=> (not res!498626) (not e!414331))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41438 (_ BitVec 32)) Bool)

(assert (=> b!741164 (= res!498626 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25352 0))(
  ( (Unit!25353) )
))
(declare-fun lt!329318 () Unit!25352)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41438 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25352)

(assert (=> b!741164 (= lt!329318 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!741165 () Bool)

(assert (=> b!741165 (= e!414330 e!414336)))

(declare-fun res!498639 () Bool)

(assert (=> b!741165 (=> (not res!498639) (not e!414336))))

(declare-fun lt!329317 () SeekEntryResult!7436)

(assert (=> b!741165 (= res!498639 (= lt!329317 lt!329313))))

(declare-fun lt!329312 () (_ BitVec 64))

(declare-fun lt!329311 () array!41438)

(assert (=> b!741165 (= lt!329313 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!329312 lt!329311 mask!3328))))

(assert (=> b!741165 (= lt!329317 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!329312 mask!3328) lt!329312 lt!329311 mask!3328))))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!741165 (= lt!329312 (select (store (arr!19829 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!741165 (= lt!329311 (array!41439 (store (arr!19829 a!3186) i!1173 k!2102) (size!20250 a!3186)))))

(declare-fun b!741166 () Bool)

(declare-fun res!498625 () Bool)

(assert (=> b!741166 (=> (not res!498625) (not e!414329))))

(declare-datatypes ((List!13884 0))(
  ( (Nil!13881) (Cons!13880 (h!14952 (_ BitVec 64)) (t!20207 List!13884)) )
))
(declare-fun arrayNoDuplicates!0 (array!41438 (_ BitVec 32) List!13884) Bool)

(assert (=> b!741166 (= res!498625 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13881))))

(declare-fun b!741167 () Bool)

(assert (=> b!741167 (= e!414334 e!414329)))

(declare-fun res!498632 () Bool)

(assert (=> b!741167 (=> (not res!498632) (not e!414329))))

(declare-fun lt!329316 () SeekEntryResult!7436)

(assert (=> b!741167 (= res!498632 (or (= lt!329316 (MissingZero!7436 i!1173)) (= lt!329316 (MissingVacant!7436 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41438 (_ BitVec 32)) SeekEntryResult!7436)

(assert (=> b!741167 (= lt!329316 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!741168 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41438 (_ BitVec 32)) SeekEntryResult!7436)

(assert (=> b!741168 (= e!414332 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19829 a!3186) j!159) a!3186 mask!3328) (Found!7436 j!159)))))

(declare-fun b!741169 () Bool)

(declare-fun res!498638 () Bool)

(assert (=> b!741169 (=> (not res!498638) (not e!414329))))

(assert (=> b!741169 (= res!498638 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20250 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20250 a!3186))))))

(declare-fun e!414333 () Bool)

(declare-fun lt!329315 () SeekEntryResult!7436)

(declare-fun b!741170 () Bool)

(assert (=> b!741170 (= e!414333 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19829 a!3186) j!159) a!3186 mask!3328) lt!329315))))

(declare-fun b!741171 () Bool)

(declare-fun res!498630 () Bool)

(assert (=> b!741171 (=> (not res!498630) (not e!414334))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!741171 (= res!498630 (validKeyInArray!0 (select (arr!19829 a!3186) j!159)))))

(declare-fun b!741172 () Bool)

(assert (=> b!741172 (= e!414331 e!414333)))

(declare-fun res!498636 () Bool)

(assert (=> b!741172 (=> (not res!498636) (not e!414333))))

(assert (=> b!741172 (= res!498636 (= (seekEntryOrOpen!0 (select (arr!19829 a!3186) j!159) a!3186 mask!3328) lt!329315))))

(assert (=> b!741172 (= lt!329315 (Found!7436 j!159))))

(declare-fun b!741173 () Bool)

(assert (=> b!741173 (= e!414332 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19829 a!3186) j!159) a!3186 mask!3328) lt!329314))))

(declare-fun b!741174 () Bool)

(declare-fun res!498633 () Bool)

(assert (=> b!741174 (=> (not res!498633) (not e!414334))))

(assert (=> b!741174 (= res!498633 (validKeyInArray!0 k!2102))))

(declare-fun b!741175 () Bool)

(declare-fun res!498628 () Bool)

(assert (=> b!741175 (=> (not res!498628) (not e!414334))))

(declare-fun arrayContainsKey!0 (array!41438 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!741175 (= res!498628 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!741176 () Bool)

(declare-fun res!498637 () Bool)

(assert (=> b!741176 (=> (not res!498637) (not e!414329))))

(assert (=> b!741176 (= res!498637 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(assert (= (and start!65312 res!498631) b!741160))

(assert (= (and b!741160 res!498634) b!741171))

(assert (= (and b!741171 res!498630) b!741174))

(assert (= (and b!741174 res!498633) b!741175))

(assert (= (and b!741175 res!498628) b!741167))

(assert (= (and b!741167 res!498632) b!741176))

(assert (= (and b!741176 res!498637) b!741166))

(assert (= (and b!741166 res!498625) b!741169))

(assert (= (and b!741169 res!498638) b!741163))

(assert (= (and b!741163 res!498635) b!741162))

(assert (= (and b!741162 res!498627) b!741161))

(assert (= (and b!741161 c!81648) b!741173))

(assert (= (and b!741161 (not c!81648)) b!741168))

(assert (= (and b!741161 res!498629) b!741165))

(assert (= (and b!741165 res!498639) b!741164))

(assert (= (and b!741164 res!498626) b!741172))

(assert (= (and b!741172 res!498636) b!741170))

(declare-fun m!692247 () Bool)

(assert (=> b!741172 m!692247))

(assert (=> b!741172 m!692247))

(declare-fun m!692249 () Bool)

(assert (=> b!741172 m!692249))

(assert (=> b!741168 m!692247))

(assert (=> b!741168 m!692247))

(declare-fun m!692251 () Bool)

(assert (=> b!741168 m!692251))

(assert (=> b!741173 m!692247))

(assert (=> b!741173 m!692247))

(declare-fun m!692253 () Bool)

(assert (=> b!741173 m!692253))

(declare-fun m!692255 () Bool)

(assert (=> b!741165 m!692255))

(declare-fun m!692257 () Bool)

(assert (=> b!741165 m!692257))

(declare-fun m!692259 () Bool)

(assert (=> b!741165 m!692259))

(declare-fun m!692261 () Bool)

(assert (=> b!741165 m!692261))

(assert (=> b!741165 m!692255))

(declare-fun m!692263 () Bool)

(assert (=> b!741165 m!692263))

(declare-fun m!692265 () Bool)

(assert (=> b!741164 m!692265))

(declare-fun m!692267 () Bool)

(assert (=> b!741164 m!692267))

(declare-fun m!692269 () Bool)

(assert (=> b!741166 m!692269))

(declare-fun m!692271 () Bool)

(assert (=> b!741167 m!692271))

(declare-fun m!692273 () Bool)

(assert (=> b!741176 m!692273))

(declare-fun m!692275 () Bool)

(assert (=> b!741175 m!692275))

(assert (=> b!741171 m!692247))

(assert (=> b!741171 m!692247))

(declare-fun m!692277 () Bool)

(assert (=> b!741171 m!692277))

(declare-fun m!692279 () Bool)

(assert (=> b!741162 m!692279))

(declare-fun m!692281 () Bool)

(assert (=> b!741174 m!692281))

(declare-fun m!692283 () Bool)

(assert (=> start!65312 m!692283))

(declare-fun m!692285 () Bool)

(assert (=> start!65312 m!692285))

(assert (=> b!741163 m!692247))

(assert (=> b!741163 m!692247))

(declare-fun m!692287 () Bool)

(assert (=> b!741163 m!692287))

(assert (=> b!741163 m!692287))

(assert (=> b!741163 m!692247))

(declare-fun m!692289 () Bool)

(assert (=> b!741163 m!692289))

(assert (=> b!741170 m!692247))

(assert (=> b!741170 m!692247))

(declare-fun m!692291 () Bool)

(assert (=> b!741170 m!692291))

(push 1)

