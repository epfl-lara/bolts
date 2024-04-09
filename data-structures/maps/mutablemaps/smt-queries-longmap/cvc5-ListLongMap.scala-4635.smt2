; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64528 () Bool)

(assert start!64528)

(declare-fun b!725959 () Bool)

(declare-fun res!487133 () Bool)

(declare-fun e!406521 () Bool)

(assert (=> b!725959 (=> (not res!487133) (not e!406521))))

(declare-datatypes ((array!40999 0))(
  ( (array!41000 (arr!19617 (Array (_ BitVec 32) (_ BitVec 64))) (size!20038 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40999)

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!40999 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!725959 (= res!487133 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!725960 () Bool)

(declare-fun res!487132 () Bool)

(declare-fun e!406519 () Bool)

(assert (=> b!725960 (=> (not res!487132) (not e!406519))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!725960 (= res!487132 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19617 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!725961 () Bool)

(declare-fun res!487126 () Bool)

(assert (=> b!725961 (=> (not res!487126) (not e!406521))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!725961 (= res!487126 (validKeyInArray!0 (select (arr!19617 a!3186) j!159)))))

(declare-fun b!725962 () Bool)

(declare-fun res!487136 () Bool)

(declare-fun e!406518 () Bool)

(assert (=> b!725962 (=> (not res!487136) (not e!406518))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!725962 (= res!487136 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20038 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20038 a!3186))))))

(declare-fun res!487129 () Bool)

(assert (=> start!64528 (=> (not res!487129) (not e!406521))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64528 (= res!487129 (validMask!0 mask!3328))))

(assert (=> start!64528 e!406521))

(assert (=> start!64528 true))

(declare-fun array_inv!15391 (array!40999) Bool)

(assert (=> start!64528 (array_inv!15391 a!3186)))

(declare-fun b!725963 () Bool)

(declare-fun res!487127 () Bool)

(assert (=> b!725963 (=> (not res!487127) (not e!406518))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40999 (_ BitVec 32)) Bool)

(assert (=> b!725963 (= res!487127 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!725964 () Bool)

(assert (=> b!725964 (= e!406518 e!406519)))

(declare-fun res!487123 () Bool)

(assert (=> b!725964 (=> (not res!487123) (not e!406519))))

(declare-datatypes ((SeekEntryResult!7224 0))(
  ( (MissingZero!7224 (index!31263 (_ BitVec 32))) (Found!7224 (index!31264 (_ BitVec 32))) (Intermediate!7224 (undefined!8036 Bool) (index!31265 (_ BitVec 32)) (x!62283 (_ BitVec 32))) (Undefined!7224) (MissingVacant!7224 (index!31266 (_ BitVec 32))) )
))
(declare-fun lt!321536 () SeekEntryResult!7224)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40999 (_ BitVec 32)) SeekEntryResult!7224)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!725964 (= res!487123 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19617 a!3186) j!159) mask!3328) (select (arr!19617 a!3186) j!159) a!3186 mask!3328) lt!321536))))

(assert (=> b!725964 (= lt!321536 (Intermediate!7224 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!725965 () Bool)

(assert (=> b!725965 (= e!406521 e!406518)))

(declare-fun res!487130 () Bool)

(assert (=> b!725965 (=> (not res!487130) (not e!406518))))

(declare-fun lt!321535 () SeekEntryResult!7224)

(assert (=> b!725965 (= res!487130 (or (= lt!321535 (MissingZero!7224 i!1173)) (= lt!321535 (MissingVacant!7224 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40999 (_ BitVec 32)) SeekEntryResult!7224)

(assert (=> b!725965 (= lt!321535 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun e!406517 () Bool)

(declare-fun b!725966 () Bool)

(assert (=> b!725966 (= e!406517 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19617 a!3186) j!159) a!3186 mask!3328) lt!321536))))

(declare-fun b!725967 () Bool)

(declare-fun res!487134 () Bool)

(assert (=> b!725967 (=> (not res!487134) (not e!406518))))

(declare-datatypes ((List!13672 0))(
  ( (Nil!13669) (Cons!13668 (h!14725 (_ BitVec 64)) (t!19995 List!13672)) )
))
(declare-fun arrayNoDuplicates!0 (array!40999 (_ BitVec 32) List!13672) Bool)

(assert (=> b!725967 (= res!487134 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13669))))

(declare-fun b!725968 () Bool)

(declare-fun res!487131 () Bool)

(assert (=> b!725968 (=> (not res!487131) (not e!406521))))

(assert (=> b!725968 (= res!487131 (and (= (size!20038 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20038 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20038 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!725969 () Bool)

(declare-fun e!406515 () Bool)

(declare-fun e!406514 () Bool)

(assert (=> b!725969 (= e!406515 e!406514)))

(declare-fun res!487137 () Bool)

(assert (=> b!725969 (=> (not res!487137) (not e!406514))))

(declare-fun lt!321531 () SeekEntryResult!7224)

(assert (=> b!725969 (= res!487137 (= (seekEntryOrOpen!0 (select (arr!19617 a!3186) j!159) a!3186 mask!3328) lt!321531))))

(assert (=> b!725969 (= lt!321531 (Found!7224 j!159))))

(declare-fun b!725970 () Bool)

(declare-fun e!406520 () Bool)

(assert (=> b!725970 (= e!406519 e!406520)))

(declare-fun res!487128 () Bool)

(assert (=> b!725970 (=> (not res!487128) (not e!406520))))

(declare-fun lt!321534 () array!40999)

(declare-fun lt!321532 () (_ BitVec 64))

(assert (=> b!725970 (= res!487128 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!321532 mask!3328) lt!321532 lt!321534 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!321532 lt!321534 mask!3328)))))

(assert (=> b!725970 (= lt!321532 (select (store (arr!19617 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!725970 (= lt!321534 (array!41000 (store (arr!19617 a!3186) i!1173 k!2102) (size!20038 a!3186)))))

(declare-fun b!725971 () Bool)

(assert (=> b!725971 (= e!406520 (not true))))

(assert (=> b!725971 e!406515))

(declare-fun res!487124 () Bool)

(assert (=> b!725971 (=> (not res!487124) (not e!406515))))

(assert (=> b!725971 (= res!487124 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24766 0))(
  ( (Unit!24767) )
))
(declare-fun lt!321533 () Unit!24766)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!40999 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24766)

(assert (=> b!725971 (= lt!321533 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!725972 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40999 (_ BitVec 32)) SeekEntryResult!7224)

(assert (=> b!725972 (= e!406514 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19617 a!3186) j!159) a!3186 mask!3328) lt!321531))))

(declare-fun b!725973 () Bool)

(declare-fun res!487135 () Bool)

(assert (=> b!725973 (=> (not res!487135) (not e!406521))))

(assert (=> b!725973 (= res!487135 (validKeyInArray!0 k!2102))))

(declare-fun b!725974 () Bool)

(assert (=> b!725974 (= e!406517 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19617 a!3186) j!159) a!3186 mask!3328) (Found!7224 j!159)))))

(declare-fun b!725975 () Bool)

(declare-fun res!487125 () Bool)

(assert (=> b!725975 (=> (not res!487125) (not e!406519))))

(assert (=> b!725975 (= res!487125 e!406517)))

(declare-fun c!79791 () Bool)

(assert (=> b!725975 (= c!79791 (bvsle x!1131 resIntermediateX!5))))

(assert (= (and start!64528 res!487129) b!725968))

(assert (= (and b!725968 res!487131) b!725961))

(assert (= (and b!725961 res!487126) b!725973))

(assert (= (and b!725973 res!487135) b!725959))

(assert (= (and b!725959 res!487133) b!725965))

(assert (= (and b!725965 res!487130) b!725963))

(assert (= (and b!725963 res!487127) b!725967))

(assert (= (and b!725967 res!487134) b!725962))

(assert (= (and b!725962 res!487136) b!725964))

(assert (= (and b!725964 res!487123) b!725960))

(assert (= (and b!725960 res!487132) b!725975))

(assert (= (and b!725975 c!79791) b!725966))

(assert (= (and b!725975 (not c!79791)) b!725974))

(assert (= (and b!725975 res!487125) b!725970))

(assert (= (and b!725970 res!487128) b!725971))

(assert (= (and b!725971 res!487124) b!725969))

(assert (= (and b!725969 res!487137) b!725972))

(declare-fun m!680155 () Bool)

(assert (=> b!725971 m!680155))

(declare-fun m!680157 () Bool)

(assert (=> b!725971 m!680157))

(declare-fun m!680159 () Bool)

(assert (=> b!725969 m!680159))

(assert (=> b!725969 m!680159))

(declare-fun m!680161 () Bool)

(assert (=> b!725969 m!680161))

(assert (=> b!725972 m!680159))

(assert (=> b!725972 m!680159))

(declare-fun m!680163 () Bool)

(assert (=> b!725972 m!680163))

(declare-fun m!680165 () Bool)

(assert (=> b!725965 m!680165))

(declare-fun m!680167 () Bool)

(assert (=> start!64528 m!680167))

(declare-fun m!680169 () Bool)

(assert (=> start!64528 m!680169))

(assert (=> b!725966 m!680159))

(assert (=> b!725966 m!680159))

(declare-fun m!680171 () Bool)

(assert (=> b!725966 m!680171))

(assert (=> b!725964 m!680159))

(assert (=> b!725964 m!680159))

(declare-fun m!680173 () Bool)

(assert (=> b!725964 m!680173))

(assert (=> b!725964 m!680173))

(assert (=> b!725964 m!680159))

(declare-fun m!680175 () Bool)

(assert (=> b!725964 m!680175))

(assert (=> b!725961 m!680159))

(assert (=> b!725961 m!680159))

(declare-fun m!680177 () Bool)

(assert (=> b!725961 m!680177))

(declare-fun m!680179 () Bool)

(assert (=> b!725963 m!680179))

(declare-fun m!680181 () Bool)

(assert (=> b!725973 m!680181))

(declare-fun m!680183 () Bool)

(assert (=> b!725967 m!680183))

(declare-fun m!680185 () Bool)

(assert (=> b!725970 m!680185))

(declare-fun m!680187 () Bool)

(assert (=> b!725970 m!680187))

(declare-fun m!680189 () Bool)

(assert (=> b!725970 m!680189))

(declare-fun m!680191 () Bool)

(assert (=> b!725970 m!680191))

(declare-fun m!680193 () Bool)

(assert (=> b!725970 m!680193))

(assert (=> b!725970 m!680185))

(assert (=> b!725974 m!680159))

(assert (=> b!725974 m!680159))

(declare-fun m!680195 () Bool)

(assert (=> b!725974 m!680195))

(declare-fun m!680197 () Bool)

(assert (=> b!725960 m!680197))

(declare-fun m!680199 () Bool)

(assert (=> b!725959 m!680199))

(push 1)

