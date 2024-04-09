; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67132 () Bool)

(assert start!67132)

(declare-fun b!774801 () Bool)

(declare-datatypes ((Unit!26716 0))(
  ( (Unit!26717) )
))
(declare-fun e!431287 () Unit!26716)

(declare-fun Unit!26718 () Unit!26716)

(assert (=> b!774801 (= e!431287 Unit!26718)))

(declare-fun lt!345121 () (_ BitVec 32))

(declare-datatypes ((array!42442 0))(
  ( (array!42443 (arr!20313 (Array (_ BitVec 32) (_ BitVec 64))) (size!20734 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42442)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7920 0))(
  ( (MissingZero!7920 (index!34047 (_ BitVec 32))) (Found!7920 (index!34048 (_ BitVec 32))) (Intermediate!7920 (undefined!8732 Bool) (index!34049 (_ BitVec 32)) (x!65024 (_ BitVec 32))) (Undefined!7920) (MissingVacant!7920 (index!34050 (_ BitVec 32))) )
))
(declare-fun lt!345118 () SeekEntryResult!7920)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42442 (_ BitVec 32)) SeekEntryResult!7920)

(assert (=> b!774801 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!345121 (select (arr!20313 a!3186) j!159) a!3186 mask!3328) lt!345118)))

(declare-fun b!774802 () Bool)

(declare-fun res!524027 () Bool)

(declare-fun e!431284 () Bool)

(assert (=> b!774802 (=> (not res!524027) (not e!431284))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!774802 (= res!524027 (and (= (size!20734 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20734 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20734 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!774803 () Bool)

(declare-fun res!524028 () Bool)

(assert (=> b!774803 (=> (not res!524028) (not e!431284))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!774803 (= res!524028 (validKeyInArray!0 (select (arr!20313 a!3186) j!159)))))

(declare-fun b!774804 () Bool)

(declare-fun Unit!26719 () Unit!26716)

(assert (=> b!774804 (= e!431287 Unit!26719)))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!345123 () SeekEntryResult!7920)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42442 (_ BitVec 32)) SeekEntryResult!7920)

(assert (=> b!774804 (= lt!345123 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20313 a!3186) j!159) a!3186 mask!3328))))

(declare-fun lt!345130 () SeekEntryResult!7920)

(assert (=> b!774804 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!345121 resIntermediateIndex!5 (select (arr!20313 a!3186) j!159) a!3186 mask!3328) lt!345130)))

(declare-fun b!774805 () Bool)

(declare-fun res!524017 () Bool)

(assert (=> b!774805 (=> (not res!524017) (not e!431284))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42442 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!774805 (= res!524017 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!774806 () Bool)

(declare-fun res!524021 () Bool)

(declare-fun e!431282 () Bool)

(assert (=> b!774806 (=> (not res!524021) (not e!431282))))

(assert (=> b!774806 (= res!524021 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20313 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!524032 () Bool)

(assert (=> start!67132 (=> (not res!524032) (not e!431284))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67132 (= res!524032 (validMask!0 mask!3328))))

(assert (=> start!67132 e!431284))

(assert (=> start!67132 true))

(declare-fun array_inv!16087 (array!42442) Bool)

(assert (=> start!67132 (array_inv!16087 a!3186)))

(declare-fun b!774807 () Bool)

(declare-fun res!524020 () Bool)

(assert (=> b!774807 (=> (not res!524020) (not e!431284))))

(assert (=> b!774807 (= res!524020 (validKeyInArray!0 k!2102))))

(declare-fun b!774808 () Bool)

(declare-fun e!431286 () Bool)

(declare-fun e!431289 () Bool)

(assert (=> b!774808 (= e!431286 (not e!431289))))

(declare-fun res!524030 () Bool)

(assert (=> b!774808 (=> res!524030 e!431289)))

(declare-fun lt!345127 () SeekEntryResult!7920)

(assert (=> b!774808 (= res!524030 (or (not (is-Intermediate!7920 lt!345127)) (bvsge x!1131 (x!65024 lt!345127))))))

(assert (=> b!774808 (= lt!345130 (Found!7920 j!159))))

(declare-fun e!431283 () Bool)

(assert (=> b!774808 e!431283))

(declare-fun res!524029 () Bool)

(assert (=> b!774808 (=> (not res!524029) (not e!431283))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42442 (_ BitVec 32)) Bool)

(assert (=> b!774808 (= res!524029 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!345129 () Unit!26716)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42442 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26716)

(assert (=> b!774808 (= lt!345129 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!774809 () Bool)

(declare-fun e!431279 () Bool)

(assert (=> b!774809 (= e!431279 true)))

(declare-fun lt!345120 () array!42442)

(declare-fun lt!345117 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42442 (_ BitVec 32)) SeekEntryResult!7920)

(assert (=> b!774809 (= (seekEntryOrOpen!0 lt!345117 lt!345120 mask!3328) lt!345130)))

(declare-fun lt!345119 () Unit!26716)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun lemmaPutValidKeyPreservesVacantIsAtI!0 (array!42442 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26716)

(assert (=> b!774809 (= lt!345119 (lemmaPutValidKeyPreservesVacantIsAtI!0 a!3186 i!1173 k!2102 j!159 lt!345121 (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateIndex!5 resIntermediateX!5 mask!3328))))

(declare-fun b!774810 () Bool)

(declare-fun res!524033 () Bool)

(declare-fun e!431281 () Bool)

(assert (=> b!774810 (=> (not res!524033) (not e!431281))))

(assert (=> b!774810 (= res!524033 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!774811 () Bool)

(declare-fun e!431290 () Bool)

(assert (=> b!774811 (= e!431290 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20313 a!3186) j!159) a!3186 mask!3328) lt!345118))))

(declare-fun b!774812 () Bool)

(declare-fun res!524019 () Bool)

(assert (=> b!774812 (=> res!524019 e!431279)))

(declare-fun e!431285 () Bool)

(assert (=> b!774812 (= res!524019 e!431285)))

(declare-fun c!85793 () Bool)

(declare-fun lt!345122 () Bool)

(assert (=> b!774812 (= c!85793 lt!345122)))

(declare-fun b!774813 () Bool)

(assert (=> b!774813 (= e!431289 e!431279)))

(declare-fun res!524022 () Bool)

(assert (=> b!774813 (=> res!524022 e!431279)))

(assert (=> b!774813 (= res!524022 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt lt!345121 #b00000000000000000000000000000000) (bvsge lt!345121 (size!20734 a!3186))))))

(declare-fun lt!345126 () Unit!26716)

(assert (=> b!774813 (= lt!345126 e!431287)))

(declare-fun c!85792 () Bool)

(assert (=> b!774813 (= c!85792 lt!345122)))

(assert (=> b!774813 (= lt!345122 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!774813 (= lt!345121 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!774814 () Bool)

(assert (=> b!774814 (= e!431285 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!345121 (select (arr!20313 a!3186) j!159) a!3186 mask!3328) lt!345118)))))

(declare-fun b!774815 () Bool)

(assert (=> b!774815 (= e!431284 e!431281)))

(declare-fun res!524035 () Bool)

(assert (=> b!774815 (=> (not res!524035) (not e!431281))))

(declare-fun lt!345128 () SeekEntryResult!7920)

(assert (=> b!774815 (= res!524035 (or (= lt!345128 (MissingZero!7920 i!1173)) (= lt!345128 (MissingVacant!7920 i!1173))))))

(assert (=> b!774815 (= lt!345128 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!774816 () Bool)

(declare-fun res!524025 () Bool)

(assert (=> b!774816 (=> (not res!524025) (not e!431281))))

(declare-datatypes ((List!14368 0))(
  ( (Nil!14365) (Cons!14364 (h!15472 (_ BitVec 64)) (t!20691 List!14368)) )
))
(declare-fun arrayNoDuplicates!0 (array!42442 (_ BitVec 32) List!14368) Bool)

(assert (=> b!774816 (= res!524025 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14365))))

(declare-fun lt!345125 () SeekEntryResult!7920)

(declare-fun e!431280 () Bool)

(declare-fun b!774817 () Bool)

(assert (=> b!774817 (= e!431280 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20313 a!3186) j!159) a!3186 mask!3328) lt!345125))))

(declare-fun b!774818 () Bool)

(assert (=> b!774818 (= e!431281 e!431282)))

(declare-fun res!524031 () Bool)

(assert (=> b!774818 (=> (not res!524031) (not e!431282))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!774818 (= res!524031 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20313 a!3186) j!159) mask!3328) (select (arr!20313 a!3186) j!159) a!3186 mask!3328) lt!345118))))

(assert (=> b!774818 (= lt!345118 (Intermediate!7920 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!774819 () Bool)

(assert (=> b!774819 (= e!431283 e!431280)))

(declare-fun res!524024 () Bool)

(assert (=> b!774819 (=> (not res!524024) (not e!431280))))

(assert (=> b!774819 (= res!524024 (= (seekEntryOrOpen!0 (select (arr!20313 a!3186) j!159) a!3186 mask!3328) lt!345125))))

(assert (=> b!774819 (= lt!345125 (Found!7920 j!159))))

(declare-fun b!774820 () Bool)

(declare-fun res!524018 () Bool)

(assert (=> b!774820 (=> (not res!524018) (not e!431282))))

(assert (=> b!774820 (= res!524018 e!431290)))

(declare-fun c!85794 () Bool)

(assert (=> b!774820 (= c!85794 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!774821 () Bool)

(assert (=> b!774821 (= e!431285 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!345121 resIntermediateIndex!5 (select (arr!20313 a!3186) j!159) a!3186 mask!3328) lt!345130)))))

(declare-fun b!774822 () Bool)

(declare-fun res!524026 () Bool)

(assert (=> b!774822 (=> res!524026 e!431279)))

(declare-fun lt!345124 () SeekEntryResult!7920)

(assert (=> b!774822 (= res!524026 (not (= lt!345124 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!345121 lt!345117 lt!345120 mask!3328))))))

(declare-fun b!774823 () Bool)

(assert (=> b!774823 (= e!431282 e!431286)))

(declare-fun res!524034 () Bool)

(assert (=> b!774823 (=> (not res!524034) (not e!431286))))

(assert (=> b!774823 (= res!524034 (= lt!345124 lt!345127))))

(assert (=> b!774823 (= lt!345127 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!345117 lt!345120 mask!3328))))

(assert (=> b!774823 (= lt!345124 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!345117 mask!3328) lt!345117 lt!345120 mask!3328))))

(assert (=> b!774823 (= lt!345117 (select (store (arr!20313 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!774823 (= lt!345120 (array!42443 (store (arr!20313 a!3186) i!1173 k!2102) (size!20734 a!3186)))))

(declare-fun b!774824 () Bool)

(declare-fun res!524023 () Bool)

(assert (=> b!774824 (=> (not res!524023) (not e!431281))))

(assert (=> b!774824 (= res!524023 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20734 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20734 a!3186))))))

(declare-fun b!774825 () Bool)

(assert (=> b!774825 (= e!431290 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20313 a!3186) j!159) a!3186 mask!3328) (Found!7920 j!159)))))

(assert (= (and start!67132 res!524032) b!774802))

(assert (= (and b!774802 res!524027) b!774803))

(assert (= (and b!774803 res!524028) b!774807))

(assert (= (and b!774807 res!524020) b!774805))

(assert (= (and b!774805 res!524017) b!774815))

(assert (= (and b!774815 res!524035) b!774810))

(assert (= (and b!774810 res!524033) b!774816))

(assert (= (and b!774816 res!524025) b!774824))

(assert (= (and b!774824 res!524023) b!774818))

(assert (= (and b!774818 res!524031) b!774806))

(assert (= (and b!774806 res!524021) b!774820))

(assert (= (and b!774820 c!85794) b!774811))

(assert (= (and b!774820 (not c!85794)) b!774825))

(assert (= (and b!774820 res!524018) b!774823))

(assert (= (and b!774823 res!524034) b!774808))

(assert (= (and b!774808 res!524029) b!774819))

(assert (= (and b!774819 res!524024) b!774817))

(assert (= (and b!774808 (not res!524030)) b!774813))

(assert (= (and b!774813 c!85792) b!774801))

(assert (= (and b!774813 (not c!85792)) b!774804))

(assert (= (and b!774813 (not res!524022)) b!774812))

(assert (= (and b!774812 c!85793) b!774814))

(assert (= (and b!774812 (not c!85793)) b!774821))

(assert (= (and b!774812 (not res!524019)) b!774822))

(assert (= (and b!774822 (not res!524026)) b!774809))

(declare-fun m!719215 () Bool)

(assert (=> b!774817 m!719215))

(assert (=> b!774817 m!719215))

(declare-fun m!719217 () Bool)

(assert (=> b!774817 m!719217))

(assert (=> b!774819 m!719215))

(assert (=> b!774819 m!719215))

(declare-fun m!719219 () Bool)

(assert (=> b!774819 m!719219))

(declare-fun m!719221 () Bool)

(assert (=> b!774816 m!719221))

(assert (=> b!774803 m!719215))

(assert (=> b!774803 m!719215))

(declare-fun m!719223 () Bool)

(assert (=> b!774803 m!719223))

(declare-fun m!719225 () Bool)

(assert (=> b!774823 m!719225))

(declare-fun m!719227 () Bool)

(assert (=> b!774823 m!719227))

(declare-fun m!719229 () Bool)

(assert (=> b!774823 m!719229))

(assert (=> b!774823 m!719227))

(declare-fun m!719231 () Bool)

(assert (=> b!774823 m!719231))

(declare-fun m!719233 () Bool)

(assert (=> b!774823 m!719233))

(assert (=> b!774804 m!719215))

(assert (=> b!774804 m!719215))

(declare-fun m!719235 () Bool)

(assert (=> b!774804 m!719235))

(assert (=> b!774804 m!719215))

(declare-fun m!719237 () Bool)

(assert (=> b!774804 m!719237))

(declare-fun m!719239 () Bool)

(assert (=> b!774815 m!719239))

(assert (=> b!774811 m!719215))

(assert (=> b!774811 m!719215))

(declare-fun m!719241 () Bool)

(assert (=> b!774811 m!719241))

(declare-fun m!719243 () Bool)

(assert (=> b!774807 m!719243))

(declare-fun m!719245 () Bool)

(assert (=> b!774813 m!719245))

(assert (=> b!774814 m!719215))

(assert (=> b!774814 m!719215))

(declare-fun m!719247 () Bool)

(assert (=> b!774814 m!719247))

(assert (=> b!774818 m!719215))

(assert (=> b!774818 m!719215))

(declare-fun m!719249 () Bool)

(assert (=> b!774818 m!719249))

(assert (=> b!774818 m!719249))

(assert (=> b!774818 m!719215))

(declare-fun m!719251 () Bool)

(assert (=> b!774818 m!719251))

(assert (=> b!774825 m!719215))

(assert (=> b!774825 m!719215))

(assert (=> b!774825 m!719235))

(declare-fun m!719253 () Bool)

(assert (=> b!774808 m!719253))

(declare-fun m!719255 () Bool)

(assert (=> b!774808 m!719255))

(declare-fun m!719257 () Bool)

(assert (=> start!67132 m!719257))

(declare-fun m!719259 () Bool)

(assert (=> start!67132 m!719259))

(declare-fun m!719261 () Bool)

(assert (=> b!774810 m!719261))

(assert (=> b!774801 m!719215))

(assert (=> b!774801 m!719215))

(assert (=> b!774801 m!719247))

(declare-fun m!719263 () Bool)

(assert (=> b!774809 m!719263))

(declare-fun m!719265 () Bool)

(assert (=> b!774809 m!719265))

(declare-fun m!719267 () Bool)

(assert (=> b!774806 m!719267))

(declare-fun m!719269 () Bool)

(assert (=> b!774822 m!719269))

(declare-fun m!719271 () Bool)

(assert (=> b!774805 m!719271))

(assert (=> b!774821 m!719215))

(assert (=> b!774821 m!719215))

(assert (=> b!774821 m!719237))

(push 1)

