; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65354 () Bool)

(assert start!65354)

(declare-fun b!742239 () Bool)

(declare-fun e!414845 () Bool)

(declare-fun e!414847 () Bool)

(assert (=> b!742239 (= e!414845 e!414847)))

(declare-fun res!499585 () Bool)

(assert (=> b!742239 (=> (not res!499585) (not e!414847))))

(declare-datatypes ((SeekEntryResult!7457 0))(
  ( (MissingZero!7457 (index!32195 (_ BitVec 32))) (Found!7457 (index!32196 (_ BitVec 32))) (Intermediate!7457 (undefined!8269 Bool) (index!32197 (_ BitVec 32)) (x!63192 (_ BitVec 32))) (Undefined!7457) (MissingVacant!7457 (index!32198 (_ BitVec 32))) )
))
(declare-fun lt!329754 () SeekEntryResult!7457)

(declare-fun lt!329755 () SeekEntryResult!7457)

(assert (=> b!742239 (= res!499585 (= lt!329754 lt!329755))))

(declare-fun lt!329757 () (_ BitVec 64))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((array!41480 0))(
  ( (array!41481 (arr!19850 (Array (_ BitVec 32) (_ BitVec 64))) (size!20271 (_ BitVec 32))) )
))
(declare-fun lt!329752 () array!41480)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41480 (_ BitVec 32)) SeekEntryResult!7457)

(assert (=> b!742239 (= lt!329755 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!329757 lt!329752 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!742239 (= lt!329754 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!329757 mask!3328) lt!329757 lt!329752 mask!3328))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun a!3186 () array!41480)

(assert (=> b!742239 (= lt!329757 (select (store (arr!19850 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!742239 (= lt!329752 (array!41481 (store (arr!19850 a!3186) i!1173 k!2102) (size!20271 a!3186)))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun b!742240 () Bool)

(declare-fun e!414843 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41480 (_ BitVec 32)) SeekEntryResult!7457)

(assert (=> b!742240 (= e!414843 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19850 a!3186) j!159) a!3186 mask!3328) (Found!7457 j!159)))))

(declare-fun b!742241 () Bool)

(declare-fun e!414842 () Bool)

(declare-fun e!414848 () Bool)

(assert (=> b!742241 (= e!414842 e!414848)))

(declare-fun res!499582 () Bool)

(assert (=> b!742241 (=> (not res!499582) (not e!414848))))

(declare-fun lt!329751 () SeekEntryResult!7457)

(assert (=> b!742241 (= res!499582 (or (= lt!329751 (MissingZero!7457 i!1173)) (= lt!329751 (MissingVacant!7457 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41480 (_ BitVec 32)) SeekEntryResult!7457)

(assert (=> b!742241 (= lt!329751 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!742242 () Bool)

(declare-fun res!499584 () Bool)

(assert (=> b!742242 (=> (not res!499584) (not e!414848))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!742242 (= res!499584 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20271 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20271 a!3186))))))

(declare-fun b!742244 () Bool)

(declare-fun res!499583 () Bool)

(assert (=> b!742244 (=> (not res!499583) (not e!414848))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41480 (_ BitVec 32)) Bool)

(assert (=> b!742244 (= res!499583 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!742245 () Bool)

(declare-fun res!499593 () Bool)

(assert (=> b!742245 (=> (not res!499593) (not e!414842))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!742245 (= res!499593 (validKeyInArray!0 k!2102))))

(declare-fun b!742246 () Bool)

(declare-fun res!499579 () Bool)

(assert (=> b!742246 (=> (not res!499579) (not e!414845))))

(assert (=> b!742246 (= res!499579 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19850 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!742247 () Bool)

(declare-fun res!499587 () Bool)

(assert (=> b!742247 (=> (not res!499587) (not e!414842))))

(assert (=> b!742247 (= res!499587 (validKeyInArray!0 (select (arr!19850 a!3186) j!159)))))

(declare-fun b!742248 () Bool)

(declare-fun res!499589 () Bool)

(assert (=> b!742248 (=> (not res!499589) (not e!414845))))

(assert (=> b!742248 (= res!499589 e!414843)))

(declare-fun c!81711 () Bool)

(assert (=> b!742248 (= c!81711 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!742249 () Bool)

(declare-fun e!414846 () Bool)

(assert (=> b!742249 (= e!414846 true)))

(declare-fun lt!329753 () SeekEntryResult!7457)

(assert (=> b!742249 (= lt!329753 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19850 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!742250 () Bool)

(declare-fun res!499586 () Bool)

(assert (=> b!742250 (=> (not res!499586) (not e!414842))))

(assert (=> b!742250 (= res!499586 (and (= (size!20271 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20271 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20271 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!742251 () Bool)

(assert (=> b!742251 (= e!414847 (not e!414846))))

(declare-fun res!499578 () Bool)

(assert (=> b!742251 (=> res!499578 e!414846)))

(assert (=> b!742251 (= res!499578 (or (not (is-Intermediate!7457 lt!329755)) (bvslt x!1131 (x!63192 lt!329755)) (not (= x!1131 (x!63192 lt!329755))) (not (= index!1321 (index!32197 lt!329755)))))))

(declare-fun e!414849 () Bool)

(assert (=> b!742251 e!414849))

(declare-fun res!499581 () Bool)

(assert (=> b!742251 (=> (not res!499581) (not e!414849))))

(assert (=> b!742251 (= res!499581 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25394 0))(
  ( (Unit!25395) )
))
(declare-fun lt!329759 () Unit!25394)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41480 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25394)

(assert (=> b!742251 (= lt!329759 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!742252 () Bool)

(declare-fun e!414844 () Bool)

(assert (=> b!742252 (= e!414849 e!414844)))

(declare-fun res!499592 () Bool)

(assert (=> b!742252 (=> (not res!499592) (not e!414844))))

(declare-fun lt!329758 () SeekEntryResult!7457)

(assert (=> b!742252 (= res!499592 (= (seekEntryOrOpen!0 (select (arr!19850 a!3186) j!159) a!3186 mask!3328) lt!329758))))

(assert (=> b!742252 (= lt!329758 (Found!7457 j!159))))

(declare-fun b!742253 () Bool)

(declare-fun lt!329756 () SeekEntryResult!7457)

(assert (=> b!742253 (= e!414843 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19850 a!3186) j!159) a!3186 mask!3328) lt!329756))))

(declare-fun b!742243 () Bool)

(declare-fun res!499591 () Bool)

(assert (=> b!742243 (=> (not res!499591) (not e!414848))))

(declare-datatypes ((List!13905 0))(
  ( (Nil!13902) (Cons!13901 (h!14973 (_ BitVec 64)) (t!20228 List!13905)) )
))
(declare-fun arrayNoDuplicates!0 (array!41480 (_ BitVec 32) List!13905) Bool)

(assert (=> b!742243 (= res!499591 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13902))))

(declare-fun res!499580 () Bool)

(assert (=> start!65354 (=> (not res!499580) (not e!414842))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65354 (= res!499580 (validMask!0 mask!3328))))

(assert (=> start!65354 e!414842))

(assert (=> start!65354 true))

(declare-fun array_inv!15624 (array!41480) Bool)

(assert (=> start!65354 (array_inv!15624 a!3186)))

(declare-fun b!742254 () Bool)

(assert (=> b!742254 (= e!414844 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19850 a!3186) j!159) a!3186 mask!3328) lt!329758))))

(declare-fun b!742255 () Bool)

(assert (=> b!742255 (= e!414848 e!414845)))

(declare-fun res!499590 () Bool)

(assert (=> b!742255 (=> (not res!499590) (not e!414845))))

(assert (=> b!742255 (= res!499590 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19850 a!3186) j!159) mask!3328) (select (arr!19850 a!3186) j!159) a!3186 mask!3328) lt!329756))))

(assert (=> b!742255 (= lt!329756 (Intermediate!7457 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!742256 () Bool)

(declare-fun res!499588 () Bool)

(assert (=> b!742256 (=> (not res!499588) (not e!414842))))

(declare-fun arrayContainsKey!0 (array!41480 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!742256 (= res!499588 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(assert (= (and start!65354 res!499580) b!742250))

(assert (= (and b!742250 res!499586) b!742247))

(assert (= (and b!742247 res!499587) b!742245))

(assert (= (and b!742245 res!499593) b!742256))

(assert (= (and b!742256 res!499588) b!742241))

(assert (= (and b!742241 res!499582) b!742244))

(assert (= (and b!742244 res!499583) b!742243))

(assert (= (and b!742243 res!499591) b!742242))

(assert (= (and b!742242 res!499584) b!742255))

(assert (= (and b!742255 res!499590) b!742246))

(assert (= (and b!742246 res!499579) b!742248))

(assert (= (and b!742248 c!81711) b!742253))

(assert (= (and b!742248 (not c!81711)) b!742240))

(assert (= (and b!742248 res!499589) b!742239))

(assert (= (and b!742239 res!499585) b!742251))

(assert (= (and b!742251 res!499581) b!742252))

(assert (= (and b!742252 res!499592) b!742254))

(assert (= (and b!742251 (not res!499578)) b!742249))

(declare-fun m!693213 () Bool)

(assert (=> b!742249 m!693213))

(assert (=> b!742249 m!693213))

(declare-fun m!693215 () Bool)

(assert (=> b!742249 m!693215))

(declare-fun m!693217 () Bool)

(assert (=> start!65354 m!693217))

(declare-fun m!693219 () Bool)

(assert (=> start!65354 m!693219))

(declare-fun m!693221 () Bool)

(assert (=> b!742256 m!693221))

(declare-fun m!693223 () Bool)

(assert (=> b!742239 m!693223))

(declare-fun m!693225 () Bool)

(assert (=> b!742239 m!693225))

(declare-fun m!693227 () Bool)

(assert (=> b!742239 m!693227))

(assert (=> b!742239 m!693225))

(declare-fun m!693229 () Bool)

(assert (=> b!742239 m!693229))

(declare-fun m!693231 () Bool)

(assert (=> b!742239 m!693231))

(assert (=> b!742247 m!693213))

(assert (=> b!742247 m!693213))

(declare-fun m!693233 () Bool)

(assert (=> b!742247 m!693233))

(declare-fun m!693235 () Bool)

(assert (=> b!742246 m!693235))

(assert (=> b!742253 m!693213))

(assert (=> b!742253 m!693213))

(declare-fun m!693237 () Bool)

(assert (=> b!742253 m!693237))

(declare-fun m!693239 () Bool)

(assert (=> b!742241 m!693239))

(declare-fun m!693241 () Bool)

(assert (=> b!742251 m!693241))

(declare-fun m!693243 () Bool)

(assert (=> b!742251 m!693243))

(declare-fun m!693245 () Bool)

(assert (=> b!742245 m!693245))

(assert (=> b!742240 m!693213))

(assert (=> b!742240 m!693213))

(assert (=> b!742240 m!693215))

(declare-fun m!693247 () Bool)

(assert (=> b!742243 m!693247))

(declare-fun m!693249 () Bool)

(assert (=> b!742244 m!693249))

(assert (=> b!742254 m!693213))

(assert (=> b!742254 m!693213))

(declare-fun m!693251 () Bool)

(assert (=> b!742254 m!693251))

(assert (=> b!742252 m!693213))

(assert (=> b!742252 m!693213))

(declare-fun m!693253 () Bool)

(assert (=> b!742252 m!693253))

(assert (=> b!742255 m!693213))

(assert (=> b!742255 m!693213))

(declare-fun m!693255 () Bool)

(assert (=> b!742255 m!693255))

(assert (=> b!742255 m!693255))

(assert (=> b!742255 m!693213))

(declare-fun m!693257 () Bool)

(assert (=> b!742255 m!693257))

(push 1)

