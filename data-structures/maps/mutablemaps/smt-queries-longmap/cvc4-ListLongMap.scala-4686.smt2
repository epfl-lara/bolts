; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65198 () Bool)

(assert start!65198)

(declare-fun b!737130 () Bool)

(declare-fun res!495563 () Bool)

(declare-fun e!412337 () Bool)

(assert (=> b!737130 (=> (not res!495563) (not e!412337))))

(declare-datatypes ((array!41324 0))(
  ( (array!41325 (arr!19772 (Array (_ BitVec 32) (_ BitVec 64))) (size!20193 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41324)

(declare-datatypes ((List!13827 0))(
  ( (Nil!13824) (Cons!13823 (h!14895 (_ BitVec 64)) (t!20150 List!13827)) )
))
(declare-fun arrayNoDuplicates!0 (array!41324 (_ BitVec 32) List!13827) Bool)

(assert (=> b!737130 (= res!495563 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13824))))

(declare-fun b!737131 () Bool)

(declare-fun res!495566 () Bool)

(declare-fun e!412346 () Bool)

(assert (=> b!737131 (=> (not res!495566) (not e!412346))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!737131 (= res!495566 (validKeyInArray!0 k!2102))))

(declare-fun b!737132 () Bool)

(declare-fun res!495559 () Bool)

(assert (=> b!737132 (=> (not res!495559) (not e!412346))))

(declare-fun arrayContainsKey!0 (array!41324 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!737132 (= res!495559 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!737133 () Bool)

(assert (=> b!737133 (= e!412346 e!412337)))

(declare-fun res!495562 () Bool)

(assert (=> b!737133 (=> (not res!495562) (not e!412337))))

(declare-datatypes ((SeekEntryResult!7379 0))(
  ( (MissingZero!7379 (index!31883 (_ BitVec 32))) (Found!7379 (index!31884 (_ BitVec 32))) (Intermediate!7379 (undefined!8191 Bool) (index!31885 (_ BitVec 32)) (x!62906 (_ BitVec 32))) (Undefined!7379) (MissingVacant!7379 (index!31886 (_ BitVec 32))) )
))
(declare-fun lt!327038 () SeekEntryResult!7379)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!737133 (= res!495562 (or (= lt!327038 (MissingZero!7379 i!1173)) (= lt!327038 (MissingVacant!7379 i!1173))))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41324 (_ BitVec 32)) SeekEntryResult!7379)

(assert (=> b!737133 (= lt!327038 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!737134 () Bool)

(declare-fun res!495553 () Bool)

(assert (=> b!737134 (=> (not res!495553) (not e!412337))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!737134 (= res!495553 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20193 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20193 a!3186))))))

(declare-fun b!737135 () Bool)

(declare-fun e!412345 () Bool)

(declare-fun e!412342 () Bool)

(assert (=> b!737135 (= e!412345 (not e!412342))))

(declare-fun res!495556 () Bool)

(assert (=> b!737135 (=> res!495556 e!412342)))

(declare-fun lt!327043 () SeekEntryResult!7379)

(assert (=> b!737135 (= res!495556 (or (not (is-Intermediate!7379 lt!327043)) (bvsge x!1131 (x!62906 lt!327043))))))

(declare-fun lt!327042 () SeekEntryResult!7379)

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!737135 (= lt!327042 (Found!7379 j!159))))

(declare-fun e!412343 () Bool)

(assert (=> b!737135 e!412343))

(declare-fun res!495567 () Bool)

(assert (=> b!737135 (=> (not res!495567) (not e!412343))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41324 (_ BitVec 32)) Bool)

(assert (=> b!737135 (= res!495567 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25134 0))(
  ( (Unit!25135) )
))
(declare-fun lt!327039 () Unit!25134)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41324 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25134)

(assert (=> b!737135 (= lt!327039 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!737136 () Bool)

(declare-fun e!412341 () Bool)

(assert (=> b!737136 (= e!412337 e!412341)))

(declare-fun res!495557 () Bool)

(assert (=> b!737136 (=> (not res!495557) (not e!412341))))

(declare-fun lt!327046 () SeekEntryResult!7379)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41324 (_ BitVec 32)) SeekEntryResult!7379)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!737136 (= res!495557 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19772 a!3186) j!159) mask!3328) (select (arr!19772 a!3186) j!159) a!3186 mask!3328) lt!327046))))

(assert (=> b!737136 (= lt!327046 (Intermediate!7379 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!737137 () Bool)

(assert (=> b!737137 (= e!412341 e!412345)))

(declare-fun res!495558 () Bool)

(assert (=> b!737137 (=> (not res!495558) (not e!412345))))

(declare-fun lt!327049 () SeekEntryResult!7379)

(assert (=> b!737137 (= res!495558 (= lt!327049 lt!327043))))

(declare-fun lt!327050 () (_ BitVec 64))

(declare-fun lt!327045 () array!41324)

(assert (=> b!737137 (= lt!327043 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!327050 lt!327045 mask!3328))))

(assert (=> b!737137 (= lt!327049 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!327050 mask!3328) lt!327050 lt!327045 mask!3328))))

(assert (=> b!737137 (= lt!327050 (select (store (arr!19772 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!737137 (= lt!327045 (array!41325 (store (arr!19772 a!3186) i!1173 k!2102) (size!20193 a!3186)))))

(declare-fun lt!327047 () (_ BitVec 32))

(declare-fun e!412336 () Bool)

(declare-fun b!737139 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41324 (_ BitVec 32)) SeekEntryResult!7379)

(assert (=> b!737139 (= e!412336 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327047 resIntermediateIndex!5 (select (arr!19772 a!3186) j!159) a!3186 mask!3328) lt!327042)))))

(declare-fun b!737140 () Bool)

(declare-fun res!495568 () Bool)

(assert (=> b!737140 (=> (not res!495568) (not e!412346))))

(assert (=> b!737140 (= res!495568 (validKeyInArray!0 (select (arr!19772 a!3186) j!159)))))

(declare-fun b!737141 () Bool)

(declare-fun e!412340 () Bool)

(assert (=> b!737141 (= e!412340 true)))

(declare-fun lt!327037 () SeekEntryResult!7379)

(assert (=> b!737141 (= lt!327037 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327047 lt!327050 lt!327045 mask!3328))))

(declare-fun b!737142 () Bool)

(declare-fun res!495560 () Bool)

(assert (=> b!737142 (=> res!495560 e!412340)))

(assert (=> b!737142 (= res!495560 e!412336)))

(declare-fun c!81170 () Bool)

(declare-fun lt!327044 () Bool)

(assert (=> b!737142 (= c!81170 lt!327044)))

(declare-fun b!737143 () Bool)

(assert (=> b!737143 (= e!412342 e!412340)))

(declare-fun res!495565 () Bool)

(assert (=> b!737143 (=> res!495565 e!412340)))

(assert (=> b!737143 (= res!495565 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt lt!327047 #b00000000000000000000000000000000) (bvsge lt!327047 (size!20193 a!3186))))))

(declare-fun lt!327041 () Unit!25134)

(declare-fun e!412347 () Unit!25134)

(assert (=> b!737143 (= lt!327041 e!412347)))

(declare-fun c!81171 () Bool)

(assert (=> b!737143 (= c!81171 lt!327044)))

(assert (=> b!737143 (= lt!327044 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!737143 (= lt!327047 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!737144 () Bool)

(declare-fun res!495569 () Bool)

(assert (=> b!737144 (=> (not res!495569) (not e!412341))))

(assert (=> b!737144 (= res!495569 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19772 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!412338 () Bool)

(declare-fun b!737145 () Bool)

(assert (=> b!737145 (= e!412338 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19772 a!3186) j!159) a!3186 mask!3328) (Found!7379 j!159)))))

(declare-fun b!737146 () Bool)

(declare-fun res!495555 () Bool)

(assert (=> b!737146 (=> (not res!495555) (not e!412341))))

(assert (=> b!737146 (= res!495555 e!412338)))

(declare-fun c!81169 () Bool)

(assert (=> b!737146 (= c!81169 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!737147 () Bool)

(declare-fun res!495564 () Bool)

(assert (=> b!737147 (=> (not res!495564) (not e!412337))))

(assert (=> b!737147 (= res!495564 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!737148 () Bool)

(declare-fun e!412344 () Bool)

(assert (=> b!737148 (= e!412343 e!412344)))

(declare-fun res!495554 () Bool)

(assert (=> b!737148 (=> (not res!495554) (not e!412344))))

(declare-fun lt!327048 () SeekEntryResult!7379)

(assert (=> b!737148 (= res!495554 (= (seekEntryOrOpen!0 (select (arr!19772 a!3186) j!159) a!3186 mask!3328) lt!327048))))

(assert (=> b!737148 (= lt!327048 (Found!7379 j!159))))

(declare-fun b!737149 () Bool)

(assert (=> b!737149 (= e!412338 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19772 a!3186) j!159) a!3186 mask!3328) lt!327046))))

(declare-fun b!737150 () Bool)

(assert (=> b!737150 (= e!412336 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327047 (select (arr!19772 a!3186) j!159) a!3186 mask!3328) lt!327046)))))

(declare-fun b!737138 () Bool)

(assert (=> b!737138 (= e!412344 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19772 a!3186) j!159) a!3186 mask!3328) lt!327048))))

(declare-fun res!495570 () Bool)

(assert (=> start!65198 (=> (not res!495570) (not e!412346))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65198 (= res!495570 (validMask!0 mask!3328))))

(assert (=> start!65198 e!412346))

(assert (=> start!65198 true))

(declare-fun array_inv!15546 (array!41324) Bool)

(assert (=> start!65198 (array_inv!15546 a!3186)))

(declare-fun b!737151 () Bool)

(declare-fun res!495561 () Bool)

(assert (=> b!737151 (=> (not res!495561) (not e!412346))))

(assert (=> b!737151 (= res!495561 (and (= (size!20193 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20193 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20193 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!737152 () Bool)

(declare-fun Unit!25136 () Unit!25134)

(assert (=> b!737152 (= e!412347 Unit!25136)))

(declare-fun lt!327040 () SeekEntryResult!7379)

(assert (=> b!737152 (= lt!327040 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19772 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!737152 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327047 resIntermediateIndex!5 (select (arr!19772 a!3186) j!159) a!3186 mask!3328) lt!327042)))

(declare-fun b!737153 () Bool)

(declare-fun Unit!25137 () Unit!25134)

(assert (=> b!737153 (= e!412347 Unit!25137)))

(assert (=> b!737153 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327047 (select (arr!19772 a!3186) j!159) a!3186 mask!3328) lt!327046)))

(assert (= (and start!65198 res!495570) b!737151))

(assert (= (and b!737151 res!495561) b!737140))

(assert (= (and b!737140 res!495568) b!737131))

(assert (= (and b!737131 res!495566) b!737132))

(assert (= (and b!737132 res!495559) b!737133))

(assert (= (and b!737133 res!495562) b!737147))

(assert (= (and b!737147 res!495564) b!737130))

(assert (= (and b!737130 res!495563) b!737134))

(assert (= (and b!737134 res!495553) b!737136))

(assert (= (and b!737136 res!495557) b!737144))

(assert (= (and b!737144 res!495569) b!737146))

(assert (= (and b!737146 c!81169) b!737149))

(assert (= (and b!737146 (not c!81169)) b!737145))

(assert (= (and b!737146 res!495555) b!737137))

(assert (= (and b!737137 res!495558) b!737135))

(assert (= (and b!737135 res!495567) b!737148))

(assert (= (and b!737148 res!495554) b!737138))

(assert (= (and b!737135 (not res!495556)) b!737143))

(assert (= (and b!737143 c!81171) b!737153))

(assert (= (and b!737143 (not c!81171)) b!737152))

(assert (= (and b!737143 (not res!495565)) b!737142))

(assert (= (and b!737142 c!81170) b!737150))

(assert (= (and b!737142 (not c!81170)) b!737139))

(assert (= (and b!737142 (not res!495560)) b!737141))

(declare-fun m!689155 () Bool)

(assert (=> b!737137 m!689155))

(assert (=> b!737137 m!689155))

(declare-fun m!689157 () Bool)

(assert (=> b!737137 m!689157))

(declare-fun m!689159 () Bool)

(assert (=> b!737137 m!689159))

(declare-fun m!689161 () Bool)

(assert (=> b!737137 m!689161))

(declare-fun m!689163 () Bool)

(assert (=> b!737137 m!689163))

(declare-fun m!689165 () Bool)

(assert (=> b!737131 m!689165))

(declare-fun m!689167 () Bool)

(assert (=> b!737132 m!689167))

(declare-fun m!689169 () Bool)

(assert (=> b!737140 m!689169))

(assert (=> b!737140 m!689169))

(declare-fun m!689171 () Bool)

(assert (=> b!737140 m!689171))

(assert (=> b!737152 m!689169))

(assert (=> b!737152 m!689169))

(declare-fun m!689173 () Bool)

(assert (=> b!737152 m!689173))

(assert (=> b!737152 m!689169))

(declare-fun m!689175 () Bool)

(assert (=> b!737152 m!689175))

(assert (=> b!737149 m!689169))

(assert (=> b!737149 m!689169))

(declare-fun m!689177 () Bool)

(assert (=> b!737149 m!689177))

(declare-fun m!689179 () Bool)

(assert (=> b!737141 m!689179))

(assert (=> b!737138 m!689169))

(assert (=> b!737138 m!689169))

(declare-fun m!689181 () Bool)

(assert (=> b!737138 m!689181))

(assert (=> b!737136 m!689169))

(assert (=> b!737136 m!689169))

(declare-fun m!689183 () Bool)

(assert (=> b!737136 m!689183))

(assert (=> b!737136 m!689183))

(assert (=> b!737136 m!689169))

(declare-fun m!689185 () Bool)

(assert (=> b!737136 m!689185))

(declare-fun m!689187 () Bool)

(assert (=> b!737147 m!689187))

(declare-fun m!689189 () Bool)

(assert (=> b!737133 m!689189))

(assert (=> b!737153 m!689169))

(assert (=> b!737153 m!689169))

(declare-fun m!689191 () Bool)

(assert (=> b!737153 m!689191))

(declare-fun m!689193 () Bool)

(assert (=> b!737130 m!689193))

(declare-fun m!689195 () Bool)

(assert (=> b!737135 m!689195))

(declare-fun m!689197 () Bool)

(assert (=> b!737135 m!689197))

(declare-fun m!689199 () Bool)

(assert (=> start!65198 m!689199))

(declare-fun m!689201 () Bool)

(assert (=> start!65198 m!689201))

(assert (=> b!737139 m!689169))

(assert (=> b!737139 m!689169))

(assert (=> b!737139 m!689175))

(assert (=> b!737148 m!689169))

(assert (=> b!737148 m!689169))

(declare-fun m!689203 () Bool)

(assert (=> b!737148 m!689203))

(assert (=> b!737145 m!689169))

(assert (=> b!737145 m!689169))

(assert (=> b!737145 m!689173))

(declare-fun m!689205 () Bool)

(assert (=> b!737143 m!689205))

(assert (=> b!737150 m!689169))

(assert (=> b!737150 m!689169))

(assert (=> b!737150 m!689191))

(declare-fun m!689207 () Bool)

(assert (=> b!737144 m!689207))

(push 1)

