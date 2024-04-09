; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65308 () Bool)

(assert start!65308)

(declare-fun b!741058 () Bool)

(declare-fun e!414285 () Bool)

(declare-fun e!414281 () Bool)

(assert (=> b!741058 (= e!414285 e!414281)))

(declare-fun res!498536 () Bool)

(assert (=> b!741058 (=> (not res!498536) (not e!414281))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((array!41434 0))(
  ( (array!41435 (arr!19827 (Array (_ BitVec 32) (_ BitVec 64))) (size!20248 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41434)

(declare-datatypes ((SeekEntryResult!7434 0))(
  ( (MissingZero!7434 (index!32103 (_ BitVec 32))) (Found!7434 (index!32104 (_ BitVec 32))) (Intermediate!7434 (undefined!8246 Bool) (index!32105 (_ BitVec 32)) (x!63113 (_ BitVec 32))) (Undefined!7434) (MissingVacant!7434 (index!32106 (_ BitVec 32))) )
))
(declare-fun lt!329264 () SeekEntryResult!7434)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41434 (_ BitVec 32)) SeekEntryResult!7434)

(assert (=> b!741058 (= res!498536 (= (seekEntryOrOpen!0 (select (arr!19827 a!3186) j!159) a!3186 mask!3328) lt!329264))))

(assert (=> b!741058 (= lt!329264 (Found!7434 j!159))))

(declare-fun b!741059 () Bool)

(declare-fun e!414282 () Bool)

(declare-fun e!414286 () Bool)

(assert (=> b!741059 (= e!414282 e!414286)))

(declare-fun res!498547 () Bool)

(assert (=> b!741059 (=> (not res!498547) (not e!414286))))

(declare-fun lt!329267 () SeekEntryResult!7434)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!741059 (= res!498547 (or (= lt!329267 (MissingZero!7434 i!1173)) (= lt!329267 (MissingVacant!7434 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!741059 (= lt!329267 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!741060 () Bool)

(declare-fun res!498539 () Bool)

(assert (=> b!741060 (=> (not res!498539) (not e!414286))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!741060 (= res!498539 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20248 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20248 a!3186))))))

(declare-fun b!741062 () Bool)

(declare-fun res!498544 () Bool)

(declare-fun e!414283 () Bool)

(assert (=> b!741062 (=> (not res!498544) (not e!414283))))

(declare-fun e!414288 () Bool)

(assert (=> b!741062 (= res!498544 e!414288)))

(declare-fun c!81642 () Bool)

(assert (=> b!741062 (= c!81642 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!741063 () Bool)

(declare-fun res!498545 () Bool)

(assert (=> b!741063 (=> (not res!498545) (not e!414282))))

(assert (=> b!741063 (= res!498545 (and (= (size!20248 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20248 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20248 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!741064 () Bool)

(declare-fun res!498540 () Bool)

(assert (=> b!741064 (=> (not res!498540) (not e!414282))))

(declare-fun arrayContainsKey!0 (array!41434 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!741064 (= res!498540 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!741065 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41434 (_ BitVec 32)) SeekEntryResult!7434)

(assert (=> b!741065 (= e!414281 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19827 a!3186) j!159) a!3186 mask!3328) lt!329264))))

(declare-fun b!741066 () Bool)

(declare-fun e!414284 () Bool)

(assert (=> b!741066 (= e!414283 e!414284)))

(declare-fun res!498541 () Bool)

(assert (=> b!741066 (=> (not res!498541) (not e!414284))))

(declare-fun lt!329266 () SeekEntryResult!7434)

(declare-fun lt!329269 () SeekEntryResult!7434)

(assert (=> b!741066 (= res!498541 (= lt!329266 lt!329269))))

(declare-fun lt!329270 () array!41434)

(declare-fun lt!329265 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41434 (_ BitVec 32)) SeekEntryResult!7434)

(assert (=> b!741066 (= lt!329269 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!329265 lt!329270 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!741066 (= lt!329266 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!329265 mask!3328) lt!329265 lt!329270 mask!3328))))

(assert (=> b!741066 (= lt!329265 (select (store (arr!19827 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!741066 (= lt!329270 (array!41435 (store (arr!19827 a!3186) i!1173 k!2102) (size!20248 a!3186)))))

(declare-fun b!741067 () Bool)

(assert (=> b!741067 (= e!414286 e!414283)))

(declare-fun res!498548 () Bool)

(assert (=> b!741067 (=> (not res!498548) (not e!414283))))

(declare-fun lt!329263 () SeekEntryResult!7434)

(assert (=> b!741067 (= res!498548 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19827 a!3186) j!159) mask!3328) (select (arr!19827 a!3186) j!159) a!3186 mask!3328) lt!329263))))

(assert (=> b!741067 (= lt!329263 (Intermediate!7434 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!741061 () Bool)

(assert (=> b!741061 (= e!414288 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19827 a!3186) j!159) a!3186 mask!3328) (Found!7434 j!159)))))

(declare-fun res!498549 () Bool)

(assert (=> start!65308 (=> (not res!498549) (not e!414282))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65308 (= res!498549 (validMask!0 mask!3328))))

(assert (=> start!65308 e!414282))

(assert (=> start!65308 true))

(declare-fun array_inv!15601 (array!41434) Bool)

(assert (=> start!65308 (array_inv!15601 a!3186)))

(declare-fun b!741068 () Bool)

(declare-fun res!498543 () Bool)

(assert (=> b!741068 (=> (not res!498543) (not e!414282))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!741068 (= res!498543 (validKeyInArray!0 k!2102))))

(declare-fun b!741069 () Bool)

(declare-fun res!498538 () Bool)

(assert (=> b!741069 (=> (not res!498538) (not e!414283))))

(assert (=> b!741069 (= res!498538 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19827 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!741070 () Bool)

(assert (=> b!741070 (= e!414284 (not (or (not (is-Intermediate!7434 lt!329269)) (not (= x!1131 (x!63113 lt!329269))) (not (= index!1321 (index!32105 lt!329269))) (bvsge mask!3328 #b00000000000000000000000000000000))))))

(assert (=> b!741070 e!414285))

(declare-fun res!498542 () Bool)

(assert (=> b!741070 (=> (not res!498542) (not e!414285))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41434 (_ BitVec 32)) Bool)

(assert (=> b!741070 (= res!498542 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25348 0))(
  ( (Unit!25349) )
))
(declare-fun lt!329268 () Unit!25348)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41434 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25348)

(assert (=> b!741070 (= lt!329268 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!741071 () Bool)

(declare-fun res!498546 () Bool)

(assert (=> b!741071 (=> (not res!498546) (not e!414286))))

(assert (=> b!741071 (= res!498546 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!741072 () Bool)

(assert (=> b!741072 (= e!414288 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19827 a!3186) j!159) a!3186 mask!3328) lt!329263))))

(declare-fun b!741073 () Bool)

(declare-fun res!498537 () Bool)

(assert (=> b!741073 (=> (not res!498537) (not e!414286))))

(declare-datatypes ((List!13882 0))(
  ( (Nil!13879) (Cons!13878 (h!14950 (_ BitVec 64)) (t!20205 List!13882)) )
))
(declare-fun arrayNoDuplicates!0 (array!41434 (_ BitVec 32) List!13882) Bool)

(assert (=> b!741073 (= res!498537 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13879))))

(declare-fun b!741074 () Bool)

(declare-fun res!498535 () Bool)

(assert (=> b!741074 (=> (not res!498535) (not e!414282))))

(assert (=> b!741074 (= res!498535 (validKeyInArray!0 (select (arr!19827 a!3186) j!159)))))

(assert (= (and start!65308 res!498549) b!741063))

(assert (= (and b!741063 res!498545) b!741074))

(assert (= (and b!741074 res!498535) b!741068))

(assert (= (and b!741068 res!498543) b!741064))

(assert (= (and b!741064 res!498540) b!741059))

(assert (= (and b!741059 res!498547) b!741071))

(assert (= (and b!741071 res!498546) b!741073))

(assert (= (and b!741073 res!498537) b!741060))

(assert (= (and b!741060 res!498539) b!741067))

(assert (= (and b!741067 res!498548) b!741069))

(assert (= (and b!741069 res!498538) b!741062))

(assert (= (and b!741062 c!81642) b!741072))

(assert (= (and b!741062 (not c!81642)) b!741061))

(assert (= (and b!741062 res!498544) b!741066))

(assert (= (and b!741066 res!498541) b!741070))

(assert (= (and b!741070 res!498542) b!741058))

(assert (= (and b!741058 res!498536) b!741065))

(declare-fun m!692155 () Bool)

(assert (=> b!741071 m!692155))

(declare-fun m!692157 () Bool)

(assert (=> b!741067 m!692157))

(assert (=> b!741067 m!692157))

(declare-fun m!692159 () Bool)

(assert (=> b!741067 m!692159))

(assert (=> b!741067 m!692159))

(assert (=> b!741067 m!692157))

(declare-fun m!692161 () Bool)

(assert (=> b!741067 m!692161))

(assert (=> b!741061 m!692157))

(assert (=> b!741061 m!692157))

(declare-fun m!692163 () Bool)

(assert (=> b!741061 m!692163))

(declare-fun m!692165 () Bool)

(assert (=> b!741073 m!692165))

(declare-fun m!692167 () Bool)

(assert (=> b!741070 m!692167))

(declare-fun m!692169 () Bool)

(assert (=> b!741070 m!692169))

(assert (=> b!741072 m!692157))

(assert (=> b!741072 m!692157))

(declare-fun m!692171 () Bool)

(assert (=> b!741072 m!692171))

(declare-fun m!692173 () Bool)

(assert (=> b!741059 m!692173))

(assert (=> b!741065 m!692157))

(assert (=> b!741065 m!692157))

(declare-fun m!692175 () Bool)

(assert (=> b!741065 m!692175))

(declare-fun m!692177 () Bool)

(assert (=> start!65308 m!692177))

(declare-fun m!692179 () Bool)

(assert (=> start!65308 m!692179))

(declare-fun m!692181 () Bool)

(assert (=> b!741069 m!692181))

(assert (=> b!741058 m!692157))

(assert (=> b!741058 m!692157))

(declare-fun m!692183 () Bool)

(assert (=> b!741058 m!692183))

(assert (=> b!741074 m!692157))

(assert (=> b!741074 m!692157))

(declare-fun m!692185 () Bool)

(assert (=> b!741074 m!692185))

(declare-fun m!692187 () Bool)

(assert (=> b!741064 m!692187))

(declare-fun m!692189 () Bool)

(assert (=> b!741068 m!692189))

(declare-fun m!692191 () Bool)

(assert (=> b!741066 m!692191))

(declare-fun m!692193 () Bool)

(assert (=> b!741066 m!692193))

(declare-fun m!692195 () Bool)

(assert (=> b!741066 m!692195))

(declare-fun m!692197 () Bool)

(assert (=> b!741066 m!692197))

(assert (=> b!741066 m!692191))

(declare-fun m!692199 () Bool)

(assert (=> b!741066 m!692199))

(push 1)

