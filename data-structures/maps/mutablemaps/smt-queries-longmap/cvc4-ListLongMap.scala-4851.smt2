; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66824 () Bool)

(assert start!66824)

(declare-fun b!770465 () Bool)

(declare-fun res!521322 () Bool)

(declare-fun e!428983 () Bool)

(assert (=> b!770465 (=> (not res!521322) (not e!428983))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!42341 0))(
  ( (array!42342 (arr!20267 (Array (_ BitVec 32) (_ BitVec 64))) (size!20688 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42341)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!770465 (= res!521322 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20267 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!770466 () Bool)

(declare-datatypes ((Unit!26532 0))(
  ( (Unit!26533) )
))
(declare-fun e!428982 () Unit!26532)

(declare-fun Unit!26534 () Unit!26532)

(assert (=> b!770466 (= e!428982 Unit!26534)))

(declare-datatypes ((SeekEntryResult!7874 0))(
  ( (MissingZero!7874 (index!33863 (_ BitVec 32))) (Found!7874 (index!33864 (_ BitVec 32))) (Intermediate!7874 (undefined!8686 Bool) (index!33865 (_ BitVec 32)) (x!64814 (_ BitVec 32))) (Undefined!7874) (MissingVacant!7874 (index!33866 (_ BitVec 32))) )
))
(declare-fun lt!342954 () SeekEntryResult!7874)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun lt!342956 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42341 (_ BitVec 32)) SeekEntryResult!7874)

(assert (=> b!770466 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!342956 (select (arr!20267 a!3186) j!159) a!3186 mask!3328) lt!342954)))

(declare-fun e!428988 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!770468 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42341 (_ BitVec 32)) SeekEntryResult!7874)

(assert (=> b!770468 (= e!428988 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20267 a!3186) j!159) a!3186 mask!3328) (Found!7874 j!159)))))

(declare-fun b!770469 () Bool)

(declare-fun Unit!26535 () Unit!26532)

(assert (=> b!770469 (= e!428982 Unit!26535)))

(declare-fun lt!342953 () SeekEntryResult!7874)

(assert (=> b!770469 (= lt!342953 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20267 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!770469 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!342956 resIntermediateIndex!5 (select (arr!20267 a!3186) j!159) a!3186 mask!3328) (Found!7874 j!159))))

(declare-fun b!770470 () Bool)

(declare-fun res!521323 () Bool)

(declare-fun e!428981 () Bool)

(assert (=> b!770470 (=> (not res!521323) (not e!428981))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42341 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!770470 (= res!521323 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!770471 () Bool)

(declare-fun e!428986 () Bool)

(declare-fun e!428984 () Bool)

(assert (=> b!770471 (= e!428986 e!428984)))

(declare-fun res!521321 () Bool)

(assert (=> b!770471 (=> (not res!521321) (not e!428984))))

(declare-fun lt!342948 () SeekEntryResult!7874)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42341 (_ BitVec 32)) SeekEntryResult!7874)

(assert (=> b!770471 (= res!521321 (= (seekEntryOrOpen!0 (select (arr!20267 a!3186) j!159) a!3186 mask!3328) lt!342948))))

(assert (=> b!770471 (= lt!342948 (Found!7874 j!159))))

(declare-fun b!770472 () Bool)

(declare-fun e!428989 () Bool)

(assert (=> b!770472 (= e!428981 e!428989)))

(declare-fun res!521320 () Bool)

(assert (=> b!770472 (=> (not res!521320) (not e!428989))))

(declare-fun lt!342950 () SeekEntryResult!7874)

(assert (=> b!770472 (= res!521320 (or (= lt!342950 (MissingZero!7874 i!1173)) (= lt!342950 (MissingVacant!7874 i!1173))))))

(assert (=> b!770472 (= lt!342950 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!770473 () Bool)

(declare-fun res!521313 () Bool)

(assert (=> b!770473 (=> (not res!521313) (not e!428981))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!770473 (= res!521313 (validKeyInArray!0 (select (arr!20267 a!3186) j!159)))))

(declare-fun b!770474 () Bool)

(declare-fun e!428987 () Bool)

(assert (=> b!770474 (= e!428983 e!428987)))

(declare-fun res!521310 () Bool)

(assert (=> b!770474 (=> (not res!521310) (not e!428987))))

(declare-fun lt!342952 () SeekEntryResult!7874)

(declare-fun lt!342958 () SeekEntryResult!7874)

(assert (=> b!770474 (= res!521310 (= lt!342952 lt!342958))))

(declare-fun lt!342955 () (_ BitVec 64))

(declare-fun lt!342957 () array!42341)

(assert (=> b!770474 (= lt!342958 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!342955 lt!342957 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!770474 (= lt!342952 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!342955 mask!3328) lt!342955 lt!342957 mask!3328))))

(assert (=> b!770474 (= lt!342955 (select (store (arr!20267 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!770474 (= lt!342957 (array!42342 (store (arr!20267 a!3186) i!1173 k!2102) (size!20688 a!3186)))))

(declare-fun b!770467 () Bool)

(declare-fun res!521314 () Bool)

(assert (=> b!770467 (=> (not res!521314) (not e!428981))))

(assert (=> b!770467 (= res!521314 (and (= (size!20688 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20688 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20688 a!3186)) (not (= i!1173 j!159))))))

(declare-fun res!521315 () Bool)

(assert (=> start!66824 (=> (not res!521315) (not e!428981))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66824 (= res!521315 (validMask!0 mask!3328))))

(assert (=> start!66824 e!428981))

(assert (=> start!66824 true))

(declare-fun array_inv!16041 (array!42341) Bool)

(assert (=> start!66824 (array_inv!16041 a!3186)))

(declare-fun b!770475 () Bool)

(declare-fun res!521312 () Bool)

(assert (=> b!770475 (=> (not res!521312) (not e!428989))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42341 (_ BitVec 32)) Bool)

(assert (=> b!770475 (= res!521312 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!770476 () Bool)

(assert (=> b!770476 (= e!428989 e!428983)))

(declare-fun res!521317 () Bool)

(assert (=> b!770476 (=> (not res!521317) (not e!428983))))

(assert (=> b!770476 (= res!521317 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20267 a!3186) j!159) mask!3328) (select (arr!20267 a!3186) j!159) a!3186 mask!3328) lt!342954))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!770476 (= lt!342954 (Intermediate!7874 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!770477 () Bool)

(declare-fun e!428985 () Bool)

(assert (=> b!770477 (= e!428985 true)))

(declare-fun lt!342949 () Unit!26532)

(assert (=> b!770477 (= lt!342949 e!428982)))

(declare-fun c!84975 () Bool)

(assert (=> b!770477 (= c!84975 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!770477 (= lt!342956 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!770478 () Bool)

(declare-fun res!521319 () Bool)

(assert (=> b!770478 (=> (not res!521319) (not e!428983))))

(assert (=> b!770478 (= res!521319 e!428988)))

(declare-fun c!84974 () Bool)

(assert (=> b!770478 (= c!84974 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!770479 () Bool)

(declare-fun res!521318 () Bool)

(assert (=> b!770479 (=> (not res!521318) (not e!428989))))

(assert (=> b!770479 (= res!521318 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20688 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20688 a!3186))))))

(declare-fun b!770480 () Bool)

(assert (=> b!770480 (= e!428984 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20267 a!3186) j!159) a!3186 mask!3328) lt!342948))))

(declare-fun b!770481 () Bool)

(assert (=> b!770481 (= e!428988 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20267 a!3186) j!159) a!3186 mask!3328) lt!342954))))

(declare-fun b!770482 () Bool)

(assert (=> b!770482 (= e!428987 (not e!428985))))

(declare-fun res!521308 () Bool)

(assert (=> b!770482 (=> res!521308 e!428985)))

(assert (=> b!770482 (= res!521308 (or (not (is-Intermediate!7874 lt!342958)) (bvsge x!1131 (x!64814 lt!342958))))))

(assert (=> b!770482 e!428986))

(declare-fun res!521309 () Bool)

(assert (=> b!770482 (=> (not res!521309) (not e!428986))))

(assert (=> b!770482 (= res!521309 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!342951 () Unit!26532)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42341 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26532)

(assert (=> b!770482 (= lt!342951 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!770483 () Bool)

(declare-fun res!521311 () Bool)

(assert (=> b!770483 (=> (not res!521311) (not e!428981))))

(assert (=> b!770483 (= res!521311 (validKeyInArray!0 k!2102))))

(declare-fun b!770484 () Bool)

(declare-fun res!521316 () Bool)

(assert (=> b!770484 (=> (not res!521316) (not e!428989))))

(declare-datatypes ((List!14322 0))(
  ( (Nil!14319) (Cons!14318 (h!15417 (_ BitVec 64)) (t!20645 List!14322)) )
))
(declare-fun arrayNoDuplicates!0 (array!42341 (_ BitVec 32) List!14322) Bool)

(assert (=> b!770484 (= res!521316 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14319))))

(assert (= (and start!66824 res!521315) b!770467))

(assert (= (and b!770467 res!521314) b!770473))

(assert (= (and b!770473 res!521313) b!770483))

(assert (= (and b!770483 res!521311) b!770470))

(assert (= (and b!770470 res!521323) b!770472))

(assert (= (and b!770472 res!521320) b!770475))

(assert (= (and b!770475 res!521312) b!770484))

(assert (= (and b!770484 res!521316) b!770479))

(assert (= (and b!770479 res!521318) b!770476))

(assert (= (and b!770476 res!521317) b!770465))

(assert (= (and b!770465 res!521322) b!770478))

(assert (= (and b!770478 c!84974) b!770481))

(assert (= (and b!770478 (not c!84974)) b!770468))

(assert (= (and b!770478 res!521319) b!770474))

(assert (= (and b!770474 res!521310) b!770482))

(assert (= (and b!770482 res!521309) b!770471))

(assert (= (and b!770471 res!521321) b!770480))

(assert (= (and b!770482 (not res!521308)) b!770477))

(assert (= (and b!770477 c!84975) b!770466))

(assert (= (and b!770477 (not c!84975)) b!770469))

(declare-fun m!715803 () Bool)

(assert (=> b!770471 m!715803))

(assert (=> b!770471 m!715803))

(declare-fun m!715805 () Bool)

(assert (=> b!770471 m!715805))

(declare-fun m!715807 () Bool)

(assert (=> b!770477 m!715807))

(declare-fun m!715809 () Bool)

(assert (=> b!770465 m!715809))

(assert (=> b!770466 m!715803))

(assert (=> b!770466 m!715803))

(declare-fun m!715811 () Bool)

(assert (=> b!770466 m!715811))

(declare-fun m!715813 () Bool)

(assert (=> b!770482 m!715813))

(declare-fun m!715815 () Bool)

(assert (=> b!770482 m!715815))

(declare-fun m!715817 () Bool)

(assert (=> b!770484 m!715817))

(declare-fun m!715819 () Bool)

(assert (=> b!770470 m!715819))

(declare-fun m!715821 () Bool)

(assert (=> b!770483 m!715821))

(assert (=> b!770473 m!715803))

(assert (=> b!770473 m!715803))

(declare-fun m!715823 () Bool)

(assert (=> b!770473 m!715823))

(assert (=> b!770481 m!715803))

(assert (=> b!770481 m!715803))

(declare-fun m!715825 () Bool)

(assert (=> b!770481 m!715825))

(assert (=> b!770468 m!715803))

(assert (=> b!770468 m!715803))

(declare-fun m!715827 () Bool)

(assert (=> b!770468 m!715827))

(assert (=> b!770480 m!715803))

(assert (=> b!770480 m!715803))

(declare-fun m!715829 () Bool)

(assert (=> b!770480 m!715829))

(declare-fun m!715831 () Bool)

(assert (=> b!770472 m!715831))

(assert (=> b!770469 m!715803))

(assert (=> b!770469 m!715803))

(assert (=> b!770469 m!715827))

(assert (=> b!770469 m!715803))

(declare-fun m!715833 () Bool)

(assert (=> b!770469 m!715833))

(declare-fun m!715835 () Bool)

(assert (=> b!770475 m!715835))

(declare-fun m!715837 () Bool)

(assert (=> b!770474 m!715837))

(declare-fun m!715839 () Bool)

(assert (=> b!770474 m!715839))

(declare-fun m!715841 () Bool)

(assert (=> b!770474 m!715841))

(declare-fun m!715843 () Bool)

(assert (=> b!770474 m!715843))

(assert (=> b!770474 m!715841))

(declare-fun m!715845 () Bool)

(assert (=> b!770474 m!715845))

(assert (=> b!770476 m!715803))

(assert (=> b!770476 m!715803))

(declare-fun m!715847 () Bool)

(assert (=> b!770476 m!715847))

(assert (=> b!770476 m!715847))

(assert (=> b!770476 m!715803))

(declare-fun m!715849 () Bool)

(assert (=> b!770476 m!715849))

(declare-fun m!715851 () Bool)

(assert (=> start!66824 m!715851))

(declare-fun m!715853 () Bool)

(assert (=> start!66824 m!715853))

(push 1)

