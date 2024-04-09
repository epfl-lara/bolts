; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65564 () Bool)

(assert start!65564)

(declare-fun b!748293 () Bool)

(declare-fun res!504868 () Bool)

(declare-fun e!417690 () Bool)

(assert (=> b!748293 (=> (not res!504868) (not e!417690))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41690 0))(
  ( (array!41691 (arr!19955 (Array (_ BitVec 32) (_ BitVec 64))) (size!20376 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41690)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!748293 (= res!504868 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20376 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20376 a!3186))))))

(declare-fun b!748294 () Bool)

(declare-fun res!504870 () Bool)

(declare-fun e!417687 () Bool)

(assert (=> b!748294 (=> (not res!504870) (not e!417687))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!748294 (= res!504870 (and (= (size!20376 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20376 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20376 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!748295 () Bool)

(declare-fun res!504871 () Bool)

(declare-fun e!417685 () Bool)

(assert (=> b!748295 (=> res!504871 e!417685)))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun lt!332666 () (_ BitVec 64))

(assert (=> b!748295 (= res!504871 (= (select (store (arr!19955 a!3186) i!1173 k!2102) index!1321) lt!332666))))

(declare-fun b!748296 () Bool)

(assert (=> b!748296 (= e!417685 (or (bvslt mask!3328 #b00000000000000000000000000000000) (bvslt index!1321 (bvadd #b00000000000000000000000000000001 mask!3328))))))

(assert (=> b!748296 (= (select (store (arr!19955 a!3186) i!1173 k!2102) index!1321) #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-datatypes ((Unit!25650 0))(
  ( (Unit!25651) )
))
(declare-fun lt!332658 () Unit!25650)

(declare-fun e!417693 () Unit!25650)

(assert (=> b!748296 (= lt!332658 e!417693)))

(declare-fun c!82098 () Bool)

(assert (=> b!748296 (= c!82098 (= (select (store (arr!19955 a!3186) i!1173 k!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!748297 () Bool)

(declare-fun res!504867 () Bool)

(declare-fun e!417689 () Bool)

(assert (=> b!748297 (=> (not res!504867) (not e!417689))))

(assert (=> b!748297 (= res!504867 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19955 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!748298 () Bool)

(declare-fun res!504874 () Bool)

(assert (=> b!748298 (=> (not res!504874) (not e!417687))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!748298 (= res!504874 (validKeyInArray!0 (select (arr!19955 a!3186) j!159)))))

(declare-fun b!748299 () Bool)

(declare-fun res!504873 () Bool)

(assert (=> b!748299 (=> (not res!504873) (not e!417687))))

(assert (=> b!748299 (= res!504873 (validKeyInArray!0 k!2102))))

(declare-fun b!748300 () Bool)

(declare-fun res!504869 () Bool)

(assert (=> b!748300 (=> (not res!504869) (not e!417687))))

(declare-fun arrayContainsKey!0 (array!41690 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!748300 (= res!504869 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun res!504865 () Bool)

(assert (=> start!65564 (=> (not res!504865) (not e!417687))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65564 (= res!504865 (validMask!0 mask!3328))))

(assert (=> start!65564 e!417687))

(assert (=> start!65564 true))

(declare-fun array_inv!15729 (array!41690) Bool)

(assert (=> start!65564 (array_inv!15729 a!3186)))

(declare-fun b!748301 () Bool)

(assert (=> b!748301 (= e!417687 e!417690)))

(declare-fun res!504872 () Bool)

(assert (=> b!748301 (=> (not res!504872) (not e!417690))))

(declare-datatypes ((SeekEntryResult!7562 0))(
  ( (MissingZero!7562 (index!32615 (_ BitVec 32))) (Found!7562 (index!32616 (_ BitVec 32))) (Intermediate!7562 (undefined!8374 Bool) (index!32617 (_ BitVec 32)) (x!63577 (_ BitVec 32))) (Undefined!7562) (MissingVacant!7562 (index!32618 (_ BitVec 32))) )
))
(declare-fun lt!332659 () SeekEntryResult!7562)

(assert (=> b!748301 (= res!504872 (or (= lt!332659 (MissingZero!7562 i!1173)) (= lt!332659 (MissingVacant!7562 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41690 (_ BitVec 32)) SeekEntryResult!7562)

(assert (=> b!748301 (= lt!332659 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun lt!332663 () SeekEntryResult!7562)

(declare-fun b!748302 () Bool)

(declare-fun e!417688 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41690 (_ BitVec 32)) SeekEntryResult!7562)

(assert (=> b!748302 (= e!417688 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19955 a!3186) j!159) a!3186 mask!3328) lt!332663))))

(declare-fun b!748303 () Bool)

(declare-fun Unit!25652 () Unit!25650)

(assert (=> b!748303 (= e!417693 Unit!25652)))

(declare-fun b!748304 () Bool)

(assert (=> b!748304 (= e!417690 e!417689)))

(declare-fun res!504876 () Bool)

(assert (=> b!748304 (=> (not res!504876) (not e!417689))))

(declare-fun lt!332657 () SeekEntryResult!7562)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41690 (_ BitVec 32)) SeekEntryResult!7562)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!748304 (= res!504876 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19955 a!3186) j!159) mask!3328) (select (arr!19955 a!3186) j!159) a!3186 mask!3328) lt!332657))))

(assert (=> b!748304 (= lt!332657 (Intermediate!7562 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!748305 () Bool)

(declare-fun res!504860 () Bool)

(assert (=> b!748305 (=> res!504860 e!417685)))

(assert (=> b!748305 (= res!504860 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19955 a!3186) j!159) a!3186 mask!3328) lt!332663)))))

(declare-fun b!748306 () Bool)

(declare-fun res!504861 () Bool)

(assert (=> b!748306 (=> (not res!504861) (not e!417689))))

(declare-fun e!417686 () Bool)

(assert (=> b!748306 (= res!504861 e!417686)))

(declare-fun c!82097 () Bool)

(assert (=> b!748306 (= c!82097 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!748307 () Bool)

(declare-fun e!417691 () Bool)

(assert (=> b!748307 (= e!417689 e!417691)))

(declare-fun res!504862 () Bool)

(assert (=> b!748307 (=> (not res!504862) (not e!417691))))

(declare-fun lt!332661 () SeekEntryResult!7562)

(declare-fun lt!332664 () SeekEntryResult!7562)

(assert (=> b!748307 (= res!504862 (= lt!332661 lt!332664))))

(declare-fun lt!332665 () array!41690)

(assert (=> b!748307 (= lt!332664 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!332666 lt!332665 mask!3328))))

(assert (=> b!748307 (= lt!332661 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!332666 mask!3328) lt!332666 lt!332665 mask!3328))))

(assert (=> b!748307 (= lt!332666 (select (store (arr!19955 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!748307 (= lt!332665 (array!41691 (store (arr!19955 a!3186) i!1173 k!2102) (size!20376 a!3186)))))

(declare-fun b!748308 () Bool)

(assert (=> b!748308 (= e!417691 (not e!417685))))

(declare-fun res!504875 () Bool)

(assert (=> b!748308 (=> res!504875 e!417685)))

(assert (=> b!748308 (= res!504875 (or (not (is-Intermediate!7562 lt!332664)) (bvslt x!1131 (x!63577 lt!332664)) (not (= x!1131 (x!63577 lt!332664))) (not (= index!1321 (index!32617 lt!332664)))))))

(assert (=> b!748308 e!417688))

(declare-fun res!504864 () Bool)

(assert (=> b!748308 (=> (not res!504864) (not e!417688))))

(declare-fun lt!332662 () SeekEntryResult!7562)

(assert (=> b!748308 (= res!504864 (= lt!332662 lt!332663))))

(assert (=> b!748308 (= lt!332663 (Found!7562 j!159))))

(assert (=> b!748308 (= lt!332662 (seekEntryOrOpen!0 (select (arr!19955 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41690 (_ BitVec 32)) Bool)

(assert (=> b!748308 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!332660 () Unit!25650)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41690 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25650)

(assert (=> b!748308 (= lt!332660 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!748309 () Bool)

(declare-fun res!504866 () Bool)

(assert (=> b!748309 (=> (not res!504866) (not e!417690))))

(assert (=> b!748309 (= res!504866 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!748310 () Bool)

(assert (=> b!748310 (= e!417686 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19955 a!3186) j!159) a!3186 mask!3328) (Found!7562 j!159)))))

(declare-fun b!748311 () Bool)

(declare-fun Unit!25653 () Unit!25650)

(assert (=> b!748311 (= e!417693 Unit!25653)))

(assert (=> b!748311 false))

(declare-fun b!748312 () Bool)

(declare-fun res!504863 () Bool)

(assert (=> b!748312 (=> (not res!504863) (not e!417690))))

(declare-datatypes ((List!14010 0))(
  ( (Nil!14007) (Cons!14006 (h!15078 (_ BitVec 64)) (t!20333 List!14010)) )
))
(declare-fun arrayNoDuplicates!0 (array!41690 (_ BitVec 32) List!14010) Bool)

(assert (=> b!748312 (= res!504863 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14007))))

(declare-fun b!748313 () Bool)

(assert (=> b!748313 (= e!417686 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19955 a!3186) j!159) a!3186 mask!3328) lt!332657))))

(assert (= (and start!65564 res!504865) b!748294))

(assert (= (and b!748294 res!504870) b!748298))

(assert (= (and b!748298 res!504874) b!748299))

(assert (= (and b!748299 res!504873) b!748300))

(assert (= (and b!748300 res!504869) b!748301))

(assert (= (and b!748301 res!504872) b!748309))

(assert (= (and b!748309 res!504866) b!748312))

(assert (= (and b!748312 res!504863) b!748293))

(assert (= (and b!748293 res!504868) b!748304))

(assert (= (and b!748304 res!504876) b!748297))

(assert (= (and b!748297 res!504867) b!748306))

(assert (= (and b!748306 c!82097) b!748313))

(assert (= (and b!748306 (not c!82097)) b!748310))

(assert (= (and b!748306 res!504861) b!748307))

(assert (= (and b!748307 res!504862) b!748308))

(assert (= (and b!748308 res!504864) b!748302))

(assert (= (and b!748308 (not res!504875)) b!748305))

(assert (= (and b!748305 (not res!504860)) b!748295))

(assert (= (and b!748295 (not res!504871)) b!748296))

(assert (= (and b!748296 c!82098) b!748311))

(assert (= (and b!748296 (not c!82098)) b!748303))

(declare-fun m!698239 () Bool)

(assert (=> b!748312 m!698239))

(declare-fun m!698241 () Bool)

(assert (=> b!748299 m!698241))

(declare-fun m!698243 () Bool)

(assert (=> b!748300 m!698243))

(declare-fun m!698245 () Bool)

(assert (=> b!748305 m!698245))

(assert (=> b!748305 m!698245))

(declare-fun m!698247 () Bool)

(assert (=> b!748305 m!698247))

(declare-fun m!698249 () Bool)

(assert (=> b!748301 m!698249))

(assert (=> b!748302 m!698245))

(assert (=> b!748302 m!698245))

(declare-fun m!698251 () Bool)

(assert (=> b!748302 m!698251))

(assert (=> b!748298 m!698245))

(assert (=> b!748298 m!698245))

(declare-fun m!698253 () Bool)

(assert (=> b!748298 m!698253))

(declare-fun m!698255 () Bool)

(assert (=> start!65564 m!698255))

(declare-fun m!698257 () Bool)

(assert (=> start!65564 m!698257))

(declare-fun m!698259 () Bool)

(assert (=> b!748297 m!698259))

(declare-fun m!698261 () Bool)

(assert (=> b!748307 m!698261))

(declare-fun m!698263 () Bool)

(assert (=> b!748307 m!698263))

(assert (=> b!748307 m!698261))

(declare-fun m!698265 () Bool)

(assert (=> b!748307 m!698265))

(declare-fun m!698267 () Bool)

(assert (=> b!748307 m!698267))

(declare-fun m!698269 () Bool)

(assert (=> b!748307 m!698269))

(assert (=> b!748304 m!698245))

(assert (=> b!748304 m!698245))

(declare-fun m!698271 () Bool)

(assert (=> b!748304 m!698271))

(assert (=> b!748304 m!698271))

(assert (=> b!748304 m!698245))

(declare-fun m!698273 () Bool)

(assert (=> b!748304 m!698273))

(assert (=> b!748296 m!698267))

(declare-fun m!698275 () Bool)

(assert (=> b!748296 m!698275))

(assert (=> b!748313 m!698245))

(assert (=> b!748313 m!698245))

(declare-fun m!698277 () Bool)

(assert (=> b!748313 m!698277))

(assert (=> b!748308 m!698245))

(assert (=> b!748308 m!698245))

(declare-fun m!698279 () Bool)

(assert (=> b!748308 m!698279))

(declare-fun m!698281 () Bool)

(assert (=> b!748308 m!698281))

(declare-fun m!698283 () Bool)

(assert (=> b!748308 m!698283))

(assert (=> b!748310 m!698245))

(assert (=> b!748310 m!698245))

(assert (=> b!748310 m!698247))

(declare-fun m!698285 () Bool)

(assert (=> b!748309 m!698285))

(assert (=> b!748295 m!698267))

(assert (=> b!748295 m!698275))

(push 1)

(assert (not b!748307))

(assert (not b!748312))

(assert (not b!748308))

(assert (not b!748300))

(assert (not b!748313))

(assert (not b!748304))

(assert (not start!65564))

(assert (not b!748298))

(assert (not b!748309))

(assert (not b!748299))

(assert (not b!748301))

(assert (not b!748305))

(assert (not b!748302))

(assert (not b!748310))

(check-sat)

(pop 1)

(push 1)

(check-sat)

