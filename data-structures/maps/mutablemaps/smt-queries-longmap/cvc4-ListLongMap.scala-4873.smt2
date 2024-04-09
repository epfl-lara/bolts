; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67172 () Bool)

(assert start!67172)

(declare-fun b!776047 () Bool)

(declare-fun res!525050 () Bool)

(declare-fun e!431885 () Bool)

(assert (=> b!776047 (=> (not res!525050) (not e!431885))))

(declare-datatypes ((array!42482 0))(
  ( (array!42483 (arr!20333 (Array (_ BitVec 32) (_ BitVec 64))) (size!20754 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42482)

(declare-datatypes ((List!14388 0))(
  ( (Nil!14385) (Cons!14384 (h!15492 (_ BitVec 64)) (t!20711 List!14388)) )
))
(declare-fun arrayNoDuplicates!0 (array!42482 (_ BitVec 32) List!14388) Bool)

(assert (=> b!776047 (= res!525050 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14385))))

(declare-fun b!776048 () Bool)

(declare-fun res!525054 () Bool)

(declare-fun e!431891 () Bool)

(assert (=> b!776048 (=> (not res!525054) (not e!431891))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!776048 (= res!525054 (validKeyInArray!0 k!2102))))

(declare-datatypes ((SeekEntryResult!7940 0))(
  ( (MissingZero!7940 (index!34127 (_ BitVec 32))) (Found!7940 (index!34128 (_ BitVec 32))) (Intermediate!7940 (undefined!8752 Bool) (index!34129 (_ BitVec 32)) (x!65092 (_ BitVec 32))) (Undefined!7940) (MissingVacant!7940 (index!34130 (_ BitVec 32))) )
))
(declare-fun lt!345756 () SeekEntryResult!7940)

(declare-fun e!431893 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun b!776049 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42482 (_ BitVec 32)) SeekEntryResult!7940)

(assert (=> b!776049 (= e!431893 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20333 a!3186) j!159) a!3186 mask!3328) lt!345756))))

(declare-fun b!776050 () Bool)

(declare-fun res!525058 () Bool)

(assert (=> b!776050 (=> (not res!525058) (not e!431891))))

(assert (=> b!776050 (= res!525058 (validKeyInArray!0 (select (arr!20333 a!3186) j!159)))))

(declare-fun b!776051 () Bool)

(declare-fun e!431890 () Bool)

(assert (=> b!776051 (= e!431890 true)))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun lt!345761 () SeekEntryResult!7940)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42482 (_ BitVec 32)) SeekEntryResult!7940)

(assert (=> b!776051 (= lt!345761 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20333 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!776052 () Bool)

(declare-fun e!431892 () Bool)

(declare-fun e!431888 () Bool)

(assert (=> b!776052 (= e!431892 e!431888)))

(declare-fun res!525056 () Bool)

(assert (=> b!776052 (=> (not res!525056) (not e!431888))))

(declare-fun lt!345763 () SeekEntryResult!7940)

(declare-fun lt!345755 () SeekEntryResult!7940)

(assert (=> b!776052 (= res!525056 (= lt!345763 lt!345755))))

(declare-fun lt!345760 () (_ BitVec 64))

(declare-fun lt!345759 () array!42482)

(assert (=> b!776052 (= lt!345755 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!345760 lt!345759 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!776052 (= lt!345763 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!345760 mask!3328) lt!345760 lt!345759 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!776052 (= lt!345760 (select (store (arr!20333 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!776052 (= lt!345759 (array!42483 (store (arr!20333 a!3186) i!1173 k!2102) (size!20754 a!3186)))))

(declare-fun b!776053 () Bool)

(declare-fun res!525045 () Bool)

(assert (=> b!776053 (=> (not res!525045) (not e!431885))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!776053 (= res!525045 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20754 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20754 a!3186))))))

(declare-fun b!776054 () Bool)

(declare-fun res!525049 () Bool)

(assert (=> b!776054 (=> (not res!525049) (not e!431891))))

(assert (=> b!776054 (= res!525049 (and (= (size!20754 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20754 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20754 a!3186)) (not (= i!1173 j!159))))))

(declare-fun res!525052 () Bool)

(assert (=> start!67172 (=> (not res!525052) (not e!431891))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67172 (= res!525052 (validMask!0 mask!3328))))

(assert (=> start!67172 e!431891))

(assert (=> start!67172 true))

(declare-fun array_inv!16107 (array!42482) Bool)

(assert (=> start!67172 (array_inv!16107 a!3186)))

(declare-fun b!776055 () Bool)

(declare-fun res!525055 () Bool)

(assert (=> b!776055 (=> (not res!525055) (not e!431891))))

(declare-fun arrayContainsKey!0 (array!42482 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!776055 (= res!525055 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!776056 () Bool)

(declare-fun e!431886 () Bool)

(declare-fun e!431889 () Bool)

(assert (=> b!776056 (= e!431886 e!431889)))

(declare-fun res!525044 () Bool)

(assert (=> b!776056 (=> (not res!525044) (not e!431889))))

(declare-fun lt!345758 () SeekEntryResult!7940)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42482 (_ BitVec 32)) SeekEntryResult!7940)

(assert (=> b!776056 (= res!525044 (= (seekEntryOrOpen!0 (select (arr!20333 a!3186) j!159) a!3186 mask!3328) lt!345758))))

(assert (=> b!776056 (= lt!345758 (Found!7940 j!159))))

(declare-fun b!776057 () Bool)

(assert (=> b!776057 (= e!431885 e!431892)))

(declare-fun res!525046 () Bool)

(assert (=> b!776057 (=> (not res!525046) (not e!431892))))

(assert (=> b!776057 (= res!525046 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20333 a!3186) j!159) mask!3328) (select (arr!20333 a!3186) j!159) a!3186 mask!3328) lt!345756))))

(assert (=> b!776057 (= lt!345756 (Intermediate!7940 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!776058 () Bool)

(assert (=> b!776058 (= e!431889 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20333 a!3186) j!159) a!3186 mask!3328) lt!345758))))

(declare-fun b!776059 () Bool)

(declare-fun res!525057 () Bool)

(assert (=> b!776059 (=> (not res!525057) (not e!431885))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42482 (_ BitVec 32)) Bool)

(assert (=> b!776059 (= res!525057 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!776060 () Bool)

(assert (=> b!776060 (= e!431893 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20333 a!3186) j!159) a!3186 mask!3328) (Found!7940 j!159)))))

(declare-fun b!776061 () Bool)

(assert (=> b!776061 (= e!431888 (not e!431890))))

(declare-fun res!525047 () Bool)

(assert (=> b!776061 (=> res!525047 e!431890)))

(assert (=> b!776061 (= res!525047 (or (not (is-Intermediate!7940 lt!345755)) (bvslt x!1131 (x!65092 lt!345755)) (not (= x!1131 (x!65092 lt!345755))) (not (= index!1321 (index!34129 lt!345755)))))))

(assert (=> b!776061 e!431886))

(declare-fun res!525051 () Bool)

(assert (=> b!776061 (=> (not res!525051) (not e!431886))))

(assert (=> b!776061 (= res!525051 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26774 0))(
  ( (Unit!26775) )
))
(declare-fun lt!345762 () Unit!26774)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42482 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26774)

(assert (=> b!776061 (= lt!345762 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!776062 () Bool)

(assert (=> b!776062 (= e!431891 e!431885)))

(declare-fun res!525053 () Bool)

(assert (=> b!776062 (=> (not res!525053) (not e!431885))))

(declare-fun lt!345757 () SeekEntryResult!7940)

(assert (=> b!776062 (= res!525053 (or (= lt!345757 (MissingZero!7940 i!1173)) (= lt!345757 (MissingVacant!7940 i!1173))))))

(assert (=> b!776062 (= lt!345757 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!776063 () Bool)

(declare-fun res!525043 () Bool)

(assert (=> b!776063 (=> (not res!525043) (not e!431892))))

(assert (=> b!776063 (= res!525043 e!431893)))

(declare-fun c!85902 () Bool)

(assert (=> b!776063 (= c!85902 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!776064 () Bool)

(declare-fun res!525048 () Bool)

(assert (=> b!776064 (=> (not res!525048) (not e!431892))))

(assert (=> b!776064 (= res!525048 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20333 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!67172 res!525052) b!776054))

(assert (= (and b!776054 res!525049) b!776050))

(assert (= (and b!776050 res!525058) b!776048))

(assert (= (and b!776048 res!525054) b!776055))

(assert (= (and b!776055 res!525055) b!776062))

(assert (= (and b!776062 res!525053) b!776059))

(assert (= (and b!776059 res!525057) b!776047))

(assert (= (and b!776047 res!525050) b!776053))

(assert (= (and b!776053 res!525045) b!776057))

(assert (= (and b!776057 res!525046) b!776064))

(assert (= (and b!776064 res!525048) b!776063))

(assert (= (and b!776063 c!85902) b!776049))

(assert (= (and b!776063 (not c!85902)) b!776060))

(assert (= (and b!776063 res!525043) b!776052))

(assert (= (and b!776052 res!525056) b!776061))

(assert (= (and b!776061 res!525051) b!776056))

(assert (= (and b!776056 res!525044) b!776058))

(assert (= (and b!776061 (not res!525047)) b!776051))

(declare-fun m!720243 () Bool)

(assert (=> b!776062 m!720243))

(declare-fun m!720245 () Bool)

(assert (=> b!776059 m!720245))

(declare-fun m!720247 () Bool)

(assert (=> b!776051 m!720247))

(assert (=> b!776051 m!720247))

(declare-fun m!720249 () Bool)

(assert (=> b!776051 m!720249))

(declare-fun m!720251 () Bool)

(assert (=> b!776047 m!720251))

(declare-fun m!720253 () Bool)

(assert (=> b!776064 m!720253))

(assert (=> b!776057 m!720247))

(assert (=> b!776057 m!720247))

(declare-fun m!720255 () Bool)

(assert (=> b!776057 m!720255))

(assert (=> b!776057 m!720255))

(assert (=> b!776057 m!720247))

(declare-fun m!720257 () Bool)

(assert (=> b!776057 m!720257))

(assert (=> b!776050 m!720247))

(assert (=> b!776050 m!720247))

(declare-fun m!720259 () Bool)

(assert (=> b!776050 m!720259))

(assert (=> b!776049 m!720247))

(assert (=> b!776049 m!720247))

(declare-fun m!720261 () Bool)

(assert (=> b!776049 m!720261))

(declare-fun m!720263 () Bool)

(assert (=> b!776061 m!720263))

(declare-fun m!720265 () Bool)

(assert (=> b!776061 m!720265))

(assert (=> b!776060 m!720247))

(assert (=> b!776060 m!720247))

(assert (=> b!776060 m!720249))

(assert (=> b!776056 m!720247))

(assert (=> b!776056 m!720247))

(declare-fun m!720267 () Bool)

(assert (=> b!776056 m!720267))

(declare-fun m!720269 () Bool)

(assert (=> b!776048 m!720269))

(assert (=> b!776058 m!720247))

(assert (=> b!776058 m!720247))

(declare-fun m!720271 () Bool)

(assert (=> b!776058 m!720271))

(declare-fun m!720273 () Bool)

(assert (=> b!776055 m!720273))

(declare-fun m!720275 () Bool)

(assert (=> b!776052 m!720275))

(declare-fun m!720277 () Bool)

(assert (=> b!776052 m!720277))

(declare-fun m!720279 () Bool)

(assert (=> b!776052 m!720279))

(declare-fun m!720281 () Bool)

(assert (=> b!776052 m!720281))

(declare-fun m!720283 () Bool)

(assert (=> b!776052 m!720283))

(assert (=> b!776052 m!720281))

(declare-fun m!720285 () Bool)

(assert (=> start!67172 m!720285))

(declare-fun m!720287 () Bool)

(assert (=> start!67172 m!720287))

(push 1)

