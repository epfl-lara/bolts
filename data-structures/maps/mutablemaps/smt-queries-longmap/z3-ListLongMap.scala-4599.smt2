; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64128 () Bool)

(assert start!64128)

(declare-fun b!720088 () Bool)

(declare-fun e!403914 () Bool)

(declare-fun e!403912 () Bool)

(assert (=> b!720088 (= e!403914 e!403912)))

(declare-fun res!482598 () Bool)

(assert (=> b!720088 (=> (not res!482598) (not e!403912))))

(declare-datatypes ((array!40776 0))(
  ( (array!40777 (arr!19510 (Array (_ BitVec 32) (_ BitVec 64))) (size!19931 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40776)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7117 0))(
  ( (MissingZero!7117 (index!30835 (_ BitVec 32))) (Found!7117 (index!30836 (_ BitVec 32))) (Intermediate!7117 (undefined!7929 Bool) (index!30837 (_ BitVec 32)) (x!61861 (_ BitVec 32))) (Undefined!7117) (MissingVacant!7117 (index!30838 (_ BitVec 32))) )
))
(declare-fun lt!319688 () SeekEntryResult!7117)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40776 (_ BitVec 32)) SeekEntryResult!7117)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!720088 (= res!482598 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19510 a!3186) j!159) mask!3328) (select (arr!19510 a!3186) j!159) a!3186 mask!3328) lt!319688))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!720088 (= lt!319688 (Intermediate!7117 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!720089 () Bool)

(declare-fun res!482597 () Bool)

(declare-fun e!403910 () Bool)

(assert (=> b!720089 (=> (not res!482597) (not e!403910))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!720089 (= res!482597 (validKeyInArray!0 (select (arr!19510 a!3186) j!159)))))

(declare-fun res!482594 () Bool)

(assert (=> start!64128 (=> (not res!482594) (not e!403910))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64128 (= res!482594 (validMask!0 mask!3328))))

(assert (=> start!64128 e!403910))

(assert (=> start!64128 true))

(declare-fun array_inv!15284 (array!40776) Bool)

(assert (=> start!64128 (array_inv!15284 a!3186)))

(declare-fun b!720090 () Bool)

(declare-fun res!482595 () Bool)

(assert (=> b!720090 (=> (not res!482595) (not e!403914))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!720090 (= res!482595 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19931 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19931 a!3186))))))

(declare-fun b!720091 () Bool)

(declare-fun res!482603 () Bool)

(assert (=> b!720091 (=> (not res!482603) (not e!403912))))

(declare-fun e!403913 () Bool)

(assert (=> b!720091 (= res!482603 e!403913)))

(declare-fun c!79116 () Bool)

(assert (=> b!720091 (= c!79116 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!720092 () Bool)

(declare-fun res!482601 () Bool)

(assert (=> b!720092 (=> (not res!482601) (not e!403914))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40776 (_ BitVec 32)) Bool)

(assert (=> b!720092 (= res!482601 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!720093 () Bool)

(declare-fun res!482602 () Bool)

(assert (=> b!720093 (=> (not res!482602) (not e!403910))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!720093 (= res!482602 (and (= (size!19931 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19931 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19931 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!720094 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40776 (_ BitVec 32)) SeekEntryResult!7117)

(assert (=> b!720094 (= e!403913 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19510 a!3186) j!159) a!3186 mask!3328) (Found!7117 j!159)))))

(declare-fun b!720095 () Bool)

(declare-fun res!482593 () Bool)

(assert (=> b!720095 (=> (not res!482593) (not e!403910))))

(declare-fun k0!2102 () (_ BitVec 64))

(assert (=> b!720095 (= res!482593 (validKeyInArray!0 k0!2102))))

(declare-fun b!720096 () Bool)

(declare-fun res!482599 () Bool)

(assert (=> b!720096 (=> (not res!482599) (not e!403910))))

(declare-fun arrayContainsKey!0 (array!40776 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!720096 (= res!482599 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!720097 () Bool)

(assert (=> b!720097 (= e!403910 e!403914)))

(declare-fun res!482604 () Bool)

(assert (=> b!720097 (=> (not res!482604) (not e!403914))))

(declare-fun lt!319687 () SeekEntryResult!7117)

(assert (=> b!720097 (= res!482604 (or (= lt!319687 (MissingZero!7117 i!1173)) (= lt!319687 (MissingVacant!7117 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40776 (_ BitVec 32)) SeekEntryResult!7117)

(assert (=> b!720097 (= lt!319687 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!720098 () Bool)

(declare-fun res!482596 () Bool)

(assert (=> b!720098 (=> (not res!482596) (not e!403912))))

(assert (=> b!720098 (= res!482596 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19510 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!720099 () Bool)

(assert (=> b!720099 (= e!403912 (and (bvsge mask!3328 #b00000000000000000000000000000000) (bvsgt mask!3328 #b00111111111111111111111111111111)))))

(declare-fun b!720100 () Bool)

(declare-fun res!482600 () Bool)

(assert (=> b!720100 (=> (not res!482600) (not e!403914))))

(declare-datatypes ((List!13565 0))(
  ( (Nil!13562) (Cons!13561 (h!14609 (_ BitVec 64)) (t!19888 List!13565)) )
))
(declare-fun arrayNoDuplicates!0 (array!40776 (_ BitVec 32) List!13565) Bool)

(assert (=> b!720100 (= res!482600 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13562))))

(declare-fun b!720101 () Bool)

(assert (=> b!720101 (= e!403913 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19510 a!3186) j!159) a!3186 mask!3328) lt!319688))))

(assert (= (and start!64128 res!482594) b!720093))

(assert (= (and b!720093 res!482602) b!720089))

(assert (= (and b!720089 res!482597) b!720095))

(assert (= (and b!720095 res!482593) b!720096))

(assert (= (and b!720096 res!482599) b!720097))

(assert (= (and b!720097 res!482604) b!720092))

(assert (= (and b!720092 res!482601) b!720100))

(assert (= (and b!720100 res!482600) b!720090))

(assert (= (and b!720090 res!482595) b!720088))

(assert (= (and b!720088 res!482598) b!720098))

(assert (= (and b!720098 res!482596) b!720091))

(assert (= (and b!720091 c!79116) b!720101))

(assert (= (and b!720091 (not c!79116)) b!720094))

(assert (= (and b!720091 res!482603) b!720099))

(declare-fun m!675413 () Bool)

(assert (=> b!720096 m!675413))

(declare-fun m!675415 () Bool)

(assert (=> b!720092 m!675415))

(declare-fun m!675417 () Bool)

(assert (=> start!64128 m!675417))

(declare-fun m!675419 () Bool)

(assert (=> start!64128 m!675419))

(declare-fun m!675421 () Bool)

(assert (=> b!720097 m!675421))

(declare-fun m!675423 () Bool)

(assert (=> b!720088 m!675423))

(assert (=> b!720088 m!675423))

(declare-fun m!675425 () Bool)

(assert (=> b!720088 m!675425))

(assert (=> b!720088 m!675425))

(assert (=> b!720088 m!675423))

(declare-fun m!675427 () Bool)

(assert (=> b!720088 m!675427))

(assert (=> b!720101 m!675423))

(assert (=> b!720101 m!675423))

(declare-fun m!675429 () Bool)

(assert (=> b!720101 m!675429))

(declare-fun m!675431 () Bool)

(assert (=> b!720098 m!675431))

(assert (=> b!720094 m!675423))

(assert (=> b!720094 m!675423))

(declare-fun m!675433 () Bool)

(assert (=> b!720094 m!675433))

(declare-fun m!675435 () Bool)

(assert (=> b!720095 m!675435))

(declare-fun m!675437 () Bool)

(assert (=> b!720100 m!675437))

(assert (=> b!720089 m!675423))

(assert (=> b!720089 m!675423))

(declare-fun m!675439 () Bool)

(assert (=> b!720089 m!675439))

(check-sat (not b!720089) (not b!720096) (not b!720094) (not start!64128) (not b!720088) (not b!720101) (not b!720097) (not b!720095) (not b!720092) (not b!720100))
(check-sat)
(get-model)

(declare-fun b!720156 () Bool)

(declare-fun e!403938 () SeekEntryResult!7117)

(declare-fun e!403937 () SeekEntryResult!7117)

(assert (=> b!720156 (= e!403938 e!403937)))

(declare-fun lt!319703 () (_ BitVec 64))

(declare-fun lt!319702 () SeekEntryResult!7117)

(assert (=> b!720156 (= lt!319703 (select (arr!19510 a!3186) (index!30837 lt!319702)))))

(declare-fun c!79126 () Bool)

(assert (=> b!720156 (= c!79126 (= lt!319703 k0!2102))))

(declare-fun b!720157 () Bool)

(declare-fun e!403936 () SeekEntryResult!7117)

(assert (=> b!720157 (= e!403936 (MissingZero!7117 (index!30837 lt!319702)))))

(declare-fun d!99039 () Bool)

(declare-fun lt!319701 () SeekEntryResult!7117)

(get-info :version)

(assert (=> d!99039 (and (or ((_ is Undefined!7117) lt!319701) (not ((_ is Found!7117) lt!319701)) (and (bvsge (index!30836 lt!319701) #b00000000000000000000000000000000) (bvslt (index!30836 lt!319701) (size!19931 a!3186)))) (or ((_ is Undefined!7117) lt!319701) ((_ is Found!7117) lt!319701) (not ((_ is MissingZero!7117) lt!319701)) (and (bvsge (index!30835 lt!319701) #b00000000000000000000000000000000) (bvslt (index!30835 lt!319701) (size!19931 a!3186)))) (or ((_ is Undefined!7117) lt!319701) ((_ is Found!7117) lt!319701) ((_ is MissingZero!7117) lt!319701) (not ((_ is MissingVacant!7117) lt!319701)) (and (bvsge (index!30838 lt!319701) #b00000000000000000000000000000000) (bvslt (index!30838 lt!319701) (size!19931 a!3186)))) (or ((_ is Undefined!7117) lt!319701) (ite ((_ is Found!7117) lt!319701) (= (select (arr!19510 a!3186) (index!30836 lt!319701)) k0!2102) (ite ((_ is MissingZero!7117) lt!319701) (= (select (arr!19510 a!3186) (index!30835 lt!319701)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!7117) lt!319701) (= (select (arr!19510 a!3186) (index!30838 lt!319701)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!99039 (= lt!319701 e!403938)))

(declare-fun c!79128 () Bool)

(assert (=> d!99039 (= c!79128 (and ((_ is Intermediate!7117) lt!319702) (undefined!7929 lt!319702)))))

(assert (=> d!99039 (= lt!319702 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2102 mask!3328) k0!2102 a!3186 mask!3328))))

(assert (=> d!99039 (validMask!0 mask!3328)))

(assert (=> d!99039 (= (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328) lt!319701)))

(declare-fun b!720158 () Bool)

(assert (=> b!720158 (= e!403936 (seekKeyOrZeroReturnVacant!0 (x!61861 lt!319702) (index!30837 lt!319702) (index!30837 lt!319702) k0!2102 a!3186 mask!3328))))

(declare-fun b!720159 () Bool)

(assert (=> b!720159 (= e!403938 Undefined!7117)))

(declare-fun b!720160 () Bool)

(declare-fun c!79127 () Bool)

(assert (=> b!720160 (= c!79127 (= lt!319703 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!720160 (= e!403937 e!403936)))

(declare-fun b!720161 () Bool)

(assert (=> b!720161 (= e!403937 (Found!7117 (index!30837 lt!319702)))))

(assert (= (and d!99039 c!79128) b!720159))

(assert (= (and d!99039 (not c!79128)) b!720156))

(assert (= (and b!720156 c!79126) b!720161))

(assert (= (and b!720156 (not c!79126)) b!720160))

(assert (= (and b!720160 c!79127) b!720157))

(assert (= (and b!720160 (not c!79127)) b!720158))

(declare-fun m!675469 () Bool)

(assert (=> b!720156 m!675469))

(declare-fun m!675471 () Bool)

(assert (=> d!99039 m!675471))

(assert (=> d!99039 m!675417))

(declare-fun m!675473 () Bool)

(assert (=> d!99039 m!675473))

(declare-fun m!675475 () Bool)

(assert (=> d!99039 m!675475))

(assert (=> d!99039 m!675471))

(declare-fun m!675477 () Bool)

(assert (=> d!99039 m!675477))

(declare-fun m!675479 () Bool)

(assert (=> d!99039 m!675479))

(declare-fun m!675481 () Bool)

(assert (=> b!720158 m!675481))

(assert (=> b!720097 d!99039))

(declare-fun d!99045 () Bool)

(declare-fun res!482645 () Bool)

(declare-fun e!403943 () Bool)

(assert (=> d!99045 (=> res!482645 e!403943)))

(assert (=> d!99045 (= res!482645 (= (select (arr!19510 a!3186) #b00000000000000000000000000000000) k0!2102))))

(assert (=> d!99045 (= (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000) e!403943)))

(declare-fun b!720166 () Bool)

(declare-fun e!403944 () Bool)

(assert (=> b!720166 (= e!403943 e!403944)))

(declare-fun res!482646 () Bool)

(assert (=> b!720166 (=> (not res!482646) (not e!403944))))

(assert (=> b!720166 (= res!482646 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!19931 a!3186)))))

(declare-fun b!720167 () Bool)

(assert (=> b!720167 (= e!403944 (arrayContainsKey!0 a!3186 k0!2102 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!99045 (not res!482645)) b!720166))

(assert (= (and b!720166 res!482646) b!720167))

(declare-fun m!675483 () Bool)

(assert (=> d!99045 m!675483))

(declare-fun m!675485 () Bool)

(assert (=> b!720167 m!675485))

(assert (=> b!720096 d!99045))

(declare-fun b!720240 () Bool)

(declare-fun e!403987 () Bool)

(declare-fun e!403984 () Bool)

(assert (=> b!720240 (= e!403987 e!403984)))

(declare-fun res!482666 () Bool)

(declare-fun lt!319723 () SeekEntryResult!7117)

(assert (=> b!720240 (= res!482666 (and ((_ is Intermediate!7117) lt!319723) (not (undefined!7929 lt!319723)) (bvslt (x!61861 lt!319723) #b01111111111111111111111111111110) (bvsge (x!61861 lt!319723) #b00000000000000000000000000000000) (bvsge (x!61861 lt!319723) x!1131)))))

(assert (=> b!720240 (=> (not res!482666) (not e!403984))))

(declare-fun b!720241 () Bool)

(assert (=> b!720241 (and (bvsge (index!30837 lt!319723) #b00000000000000000000000000000000) (bvslt (index!30837 lt!319723) (size!19931 a!3186)))))

(declare-fun res!482668 () Bool)

(assert (=> b!720241 (= res!482668 (= (select (arr!19510 a!3186) (index!30837 lt!319723)) (select (arr!19510 a!3186) j!159)))))

(declare-fun e!403985 () Bool)

(assert (=> b!720241 (=> res!482668 e!403985)))

(assert (=> b!720241 (= e!403984 e!403985)))

(declare-fun b!720242 () Bool)

(declare-fun e!403988 () SeekEntryResult!7117)

(declare-fun e!403986 () SeekEntryResult!7117)

(assert (=> b!720242 (= e!403988 e!403986)))

(declare-fun c!79157 () Bool)

(declare-fun lt!319722 () (_ BitVec 64))

(assert (=> b!720242 (= c!79157 (or (= lt!319722 (select (arr!19510 a!3186) j!159)) (= (bvadd lt!319722 lt!319722) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!720243 () Bool)

(assert (=> b!720243 (and (bvsge (index!30837 lt!319723) #b00000000000000000000000000000000) (bvslt (index!30837 lt!319723) (size!19931 a!3186)))))

(declare-fun res!482667 () Bool)

(assert (=> b!720243 (= res!482667 (= (select (arr!19510 a!3186) (index!30837 lt!319723)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!720243 (=> res!482667 e!403985)))

(declare-fun b!720244 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!720244 (= e!403986 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) (select (arr!19510 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!720245 () Bool)

(assert (=> b!720245 (= e!403988 (Intermediate!7117 true index!1321 x!1131))))

(declare-fun d!99049 () Bool)

(assert (=> d!99049 e!403987))

(declare-fun c!79158 () Bool)

(assert (=> d!99049 (= c!79158 (and ((_ is Intermediate!7117) lt!319723) (undefined!7929 lt!319723)))))

(assert (=> d!99049 (= lt!319723 e!403988)))

(declare-fun c!79156 () Bool)

(assert (=> d!99049 (= c!79156 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!99049 (= lt!319722 (select (arr!19510 a!3186) index!1321))))

(assert (=> d!99049 (validMask!0 mask!3328)))

(assert (=> d!99049 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19510 a!3186) j!159) a!3186 mask!3328) lt!319723)))

(declare-fun b!720246 () Bool)

(assert (=> b!720246 (and (bvsge (index!30837 lt!319723) #b00000000000000000000000000000000) (bvslt (index!30837 lt!319723) (size!19931 a!3186)))))

(assert (=> b!720246 (= e!403985 (= (select (arr!19510 a!3186) (index!30837 lt!319723)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!720247 () Bool)

(assert (=> b!720247 (= e!403987 (bvsge (x!61861 lt!319723) #b01111111111111111111111111111110))))

(declare-fun b!720248 () Bool)

(assert (=> b!720248 (= e!403986 (Intermediate!7117 false index!1321 x!1131))))

(assert (= (and d!99049 c!79156) b!720245))

(assert (= (and d!99049 (not c!79156)) b!720242))

(assert (= (and b!720242 c!79157) b!720248))

(assert (= (and b!720242 (not c!79157)) b!720244))

(assert (= (and d!99049 c!79158) b!720247))

(assert (= (and d!99049 (not c!79158)) b!720240))

(assert (= (and b!720240 res!482666) b!720241))

(assert (= (and b!720241 (not res!482668)) b!720243))

(assert (= (and b!720243 (not res!482667)) b!720246))

(declare-fun m!675513 () Bool)

(assert (=> b!720244 m!675513))

(assert (=> b!720244 m!675513))

(assert (=> b!720244 m!675423))

(declare-fun m!675515 () Bool)

(assert (=> b!720244 m!675515))

(declare-fun m!675517 () Bool)

(assert (=> b!720243 m!675517))

(declare-fun m!675519 () Bool)

(assert (=> d!99049 m!675519))

(assert (=> d!99049 m!675417))

(assert (=> b!720241 m!675517))

(assert (=> b!720246 m!675517))

(assert (=> b!720101 d!99049))

(declare-fun d!99059 () Bool)

(declare-fun res!482683 () Bool)

(declare-fun e!404003 () Bool)

(assert (=> d!99059 (=> res!482683 e!404003)))

(assert (=> d!99059 (= res!482683 (bvsge #b00000000000000000000000000000000 (size!19931 a!3186)))))

(assert (=> d!99059 (= (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13562) e!404003)))

(declare-fun b!720265 () Bool)

(declare-fun e!404006 () Bool)

(declare-fun call!34752 () Bool)

(assert (=> b!720265 (= e!404006 call!34752)))

(declare-fun bm!34749 () Bool)

(declare-fun c!79161 () Bool)

(assert (=> bm!34749 (= call!34752 (arrayNoDuplicates!0 a!3186 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!79161 (Cons!13561 (select (arr!19510 a!3186) #b00000000000000000000000000000000) Nil!13562) Nil!13562)))))

(declare-fun b!720266 () Bool)

(declare-fun e!404004 () Bool)

(assert (=> b!720266 (= e!404003 e!404004)))

(declare-fun res!482682 () Bool)

(assert (=> b!720266 (=> (not res!482682) (not e!404004))))

(declare-fun e!404005 () Bool)

(assert (=> b!720266 (= res!482682 (not e!404005))))

(declare-fun res!482681 () Bool)

(assert (=> b!720266 (=> (not res!482681) (not e!404005))))

(assert (=> b!720266 (= res!482681 (validKeyInArray!0 (select (arr!19510 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!720267 () Bool)

(declare-fun contains!4042 (List!13565 (_ BitVec 64)) Bool)

(assert (=> b!720267 (= e!404005 (contains!4042 Nil!13562 (select (arr!19510 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!720268 () Bool)

(assert (=> b!720268 (= e!404006 call!34752)))

(declare-fun b!720269 () Bool)

(assert (=> b!720269 (= e!404004 e!404006)))

(assert (=> b!720269 (= c!79161 (validKeyInArray!0 (select (arr!19510 a!3186) #b00000000000000000000000000000000)))))

(assert (= (and d!99059 (not res!482683)) b!720266))

(assert (= (and b!720266 res!482681) b!720267))

(assert (= (and b!720266 res!482682) b!720269))

(assert (= (and b!720269 c!79161) b!720265))

(assert (= (and b!720269 (not c!79161)) b!720268))

(assert (= (or b!720265 b!720268) bm!34749))

(assert (=> bm!34749 m!675483))

(declare-fun m!675525 () Bool)

(assert (=> bm!34749 m!675525))

(assert (=> b!720266 m!675483))

(assert (=> b!720266 m!675483))

(declare-fun m!675527 () Bool)

(assert (=> b!720266 m!675527))

(assert (=> b!720267 m!675483))

(assert (=> b!720267 m!675483))

(declare-fun m!675529 () Bool)

(assert (=> b!720267 m!675529))

(assert (=> b!720269 m!675483))

(assert (=> b!720269 m!675483))

(assert (=> b!720269 m!675527))

(assert (=> b!720100 d!99059))

(declare-fun d!99065 () Bool)

(assert (=> d!99065 (= (validKeyInArray!0 k0!2102) (and (not (= k0!2102 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2102 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!720095 d!99065))

(declare-fun d!99067 () Bool)

(assert (=> d!99067 (= (validMask!0 mask!3328) (and (or (= mask!3328 #b00000000000000000000000000000111) (= mask!3328 #b00000000000000000000000000001111) (= mask!3328 #b00000000000000000000000000011111) (= mask!3328 #b00000000000000000000000000111111) (= mask!3328 #b00000000000000000000000001111111) (= mask!3328 #b00000000000000000000000011111111) (= mask!3328 #b00000000000000000000000111111111) (= mask!3328 #b00000000000000000000001111111111) (= mask!3328 #b00000000000000000000011111111111) (= mask!3328 #b00000000000000000000111111111111) (= mask!3328 #b00000000000000000001111111111111) (= mask!3328 #b00000000000000000011111111111111) (= mask!3328 #b00000000000000000111111111111111) (= mask!3328 #b00000000000000001111111111111111) (= mask!3328 #b00000000000000011111111111111111) (= mask!3328 #b00000000000000111111111111111111) (= mask!3328 #b00000000000001111111111111111111) (= mask!3328 #b00000000000011111111111111111111) (= mask!3328 #b00000000000111111111111111111111) (= mask!3328 #b00000000001111111111111111111111) (= mask!3328 #b00000000011111111111111111111111) (= mask!3328 #b00000000111111111111111111111111) (= mask!3328 #b00000001111111111111111111111111) (= mask!3328 #b00000011111111111111111111111111) (= mask!3328 #b00000111111111111111111111111111) (= mask!3328 #b00001111111111111111111111111111) (= mask!3328 #b00011111111111111111111111111111) (= mask!3328 #b00111111111111111111111111111111)) (bvsle mask!3328 #b00111111111111111111111111111111)))))

(assert (=> start!64128 d!99067))

(declare-fun d!99077 () Bool)

(assert (=> d!99077 (= (array_inv!15284 a!3186) (bvsge (size!19931 a!3186) #b00000000000000000000000000000000))))

(assert (=> start!64128 d!99077))

(declare-fun b!720342 () Bool)

(declare-fun e!404052 () SeekEntryResult!7117)

(assert (=> b!720342 (= e!404052 Undefined!7117)))

(declare-fun b!720343 () Bool)

(declare-fun e!404054 () SeekEntryResult!7117)

(assert (=> b!720343 (= e!404054 (MissingVacant!7117 resIntermediateIndex!5))))

(declare-fun b!720344 () Bool)

(assert (=> b!720344 (= e!404054 (seekKeyOrZeroReturnVacant!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) resIntermediateIndex!5 (select (arr!19510 a!3186) j!159) a!3186 mask!3328))))

(declare-fun d!99079 () Bool)

(declare-fun lt!319748 () SeekEntryResult!7117)

(assert (=> d!99079 (and (or ((_ is Undefined!7117) lt!319748) (not ((_ is Found!7117) lt!319748)) (and (bvsge (index!30836 lt!319748) #b00000000000000000000000000000000) (bvslt (index!30836 lt!319748) (size!19931 a!3186)))) (or ((_ is Undefined!7117) lt!319748) ((_ is Found!7117) lt!319748) (not ((_ is MissingVacant!7117) lt!319748)) (not (= (index!30838 lt!319748) resIntermediateIndex!5)) (and (bvsge (index!30838 lt!319748) #b00000000000000000000000000000000) (bvslt (index!30838 lt!319748) (size!19931 a!3186)))) (or ((_ is Undefined!7117) lt!319748) (ite ((_ is Found!7117) lt!319748) (= (select (arr!19510 a!3186) (index!30836 lt!319748)) (select (arr!19510 a!3186) j!159)) (and ((_ is MissingVacant!7117) lt!319748) (= (index!30838 lt!319748) resIntermediateIndex!5) (= (select (arr!19510 a!3186) (index!30838 lt!319748)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!99079 (= lt!319748 e!404052)))

(declare-fun c!79191 () Bool)

(assert (=> d!99079 (= c!79191 (bvsge x!1131 #b01111111111111111111111111111110))))

(declare-fun lt!319747 () (_ BitVec 64))

(assert (=> d!99079 (= lt!319747 (select (arr!19510 a!3186) index!1321))))

(assert (=> d!99079 (validMask!0 mask!3328)))

(assert (=> d!99079 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19510 a!3186) j!159) a!3186 mask!3328) lt!319748)))

(declare-fun b!720345 () Bool)

(declare-fun e!404053 () SeekEntryResult!7117)

(assert (=> b!720345 (= e!404052 e!404053)))

(declare-fun c!79189 () Bool)

(assert (=> b!720345 (= c!79189 (= lt!319747 (select (arr!19510 a!3186) j!159)))))

(declare-fun b!720346 () Bool)

(declare-fun c!79190 () Bool)

(assert (=> b!720346 (= c!79190 (= lt!319747 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!720346 (= e!404053 e!404054)))

(declare-fun b!720347 () Bool)

(assert (=> b!720347 (= e!404053 (Found!7117 index!1321))))

(assert (= (and d!99079 c!79191) b!720342))

(assert (= (and d!99079 (not c!79191)) b!720345))

(assert (= (and b!720345 c!79189) b!720347))

(assert (= (and b!720345 (not c!79189)) b!720346))

(assert (= (and b!720346 c!79190) b!720343))

(assert (= (and b!720346 (not c!79190)) b!720344))

(assert (=> b!720344 m!675513))

(assert (=> b!720344 m!675513))

(assert (=> b!720344 m!675423))

(declare-fun m!675559 () Bool)

(assert (=> b!720344 m!675559))

(declare-fun m!675561 () Bool)

(assert (=> d!99079 m!675561))

(declare-fun m!675563 () Bool)

(assert (=> d!99079 m!675563))

(assert (=> d!99079 m!675519))

(assert (=> d!99079 m!675417))

(assert (=> b!720094 d!99079))

(declare-fun d!99089 () Bool)

(assert (=> d!99089 (= (validKeyInArray!0 (select (arr!19510 a!3186) j!159)) (and (not (= (select (arr!19510 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!19510 a!3186) j!159) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!720089 d!99089))

(declare-fun b!720348 () Bool)

(declare-fun e!404058 () Bool)

(declare-fun e!404055 () Bool)

(assert (=> b!720348 (= e!404058 e!404055)))

(declare-fun res!482702 () Bool)

(declare-fun lt!319750 () SeekEntryResult!7117)

(assert (=> b!720348 (= res!482702 (and ((_ is Intermediate!7117) lt!319750) (not (undefined!7929 lt!319750)) (bvslt (x!61861 lt!319750) #b01111111111111111111111111111110) (bvsge (x!61861 lt!319750) #b00000000000000000000000000000000) (bvsge (x!61861 lt!319750) #b00000000000000000000000000000000)))))

(assert (=> b!720348 (=> (not res!482702) (not e!404055))))

(declare-fun b!720349 () Bool)

(assert (=> b!720349 (and (bvsge (index!30837 lt!319750) #b00000000000000000000000000000000) (bvslt (index!30837 lt!319750) (size!19931 a!3186)))))

(declare-fun res!482704 () Bool)

(assert (=> b!720349 (= res!482704 (= (select (arr!19510 a!3186) (index!30837 lt!319750)) (select (arr!19510 a!3186) j!159)))))

(declare-fun e!404056 () Bool)

(assert (=> b!720349 (=> res!482704 e!404056)))

(assert (=> b!720349 (= e!404055 e!404056)))

(declare-fun b!720350 () Bool)

(declare-fun e!404059 () SeekEntryResult!7117)

(declare-fun e!404057 () SeekEntryResult!7117)

(assert (=> b!720350 (= e!404059 e!404057)))

(declare-fun c!79193 () Bool)

(declare-fun lt!319749 () (_ BitVec 64))

(assert (=> b!720350 (= c!79193 (or (= lt!319749 (select (arr!19510 a!3186) j!159)) (= (bvadd lt!319749 lt!319749) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!720351 () Bool)

(assert (=> b!720351 (and (bvsge (index!30837 lt!319750) #b00000000000000000000000000000000) (bvslt (index!30837 lt!319750) (size!19931 a!3186)))))

(declare-fun res!482703 () Bool)

(assert (=> b!720351 (= res!482703 (= (select (arr!19510 a!3186) (index!30837 lt!319750)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!720351 (=> res!482703 e!404056)))

(declare-fun b!720352 () Bool)

(assert (=> b!720352 (= e!404057 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!19510 a!3186) j!159) mask!3328) #b00000000000000000000000000000000 mask!3328) (select (arr!19510 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!720353 () Bool)

(assert (=> b!720353 (= e!404059 (Intermediate!7117 true (toIndex!0 (select (arr!19510 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun d!99091 () Bool)

(assert (=> d!99091 e!404058))

(declare-fun c!79194 () Bool)

(assert (=> d!99091 (= c!79194 (and ((_ is Intermediate!7117) lt!319750) (undefined!7929 lt!319750)))))

(assert (=> d!99091 (= lt!319750 e!404059)))

(declare-fun c!79192 () Bool)

(assert (=> d!99091 (= c!79192 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!99091 (= lt!319749 (select (arr!19510 a!3186) (toIndex!0 (select (arr!19510 a!3186) j!159) mask!3328)))))

(assert (=> d!99091 (validMask!0 mask!3328)))

(assert (=> d!99091 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19510 a!3186) j!159) mask!3328) (select (arr!19510 a!3186) j!159) a!3186 mask!3328) lt!319750)))

(declare-fun b!720354 () Bool)

(assert (=> b!720354 (and (bvsge (index!30837 lt!319750) #b00000000000000000000000000000000) (bvslt (index!30837 lt!319750) (size!19931 a!3186)))))

(assert (=> b!720354 (= e!404056 (= (select (arr!19510 a!3186) (index!30837 lt!319750)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!720355 () Bool)

(assert (=> b!720355 (= e!404058 (bvsge (x!61861 lt!319750) #b01111111111111111111111111111110))))

(declare-fun b!720356 () Bool)

(assert (=> b!720356 (= e!404057 (Intermediate!7117 false (toIndex!0 (select (arr!19510 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(assert (= (and d!99091 c!79192) b!720353))

(assert (= (and d!99091 (not c!79192)) b!720350))

(assert (= (and b!720350 c!79193) b!720356))

(assert (= (and b!720350 (not c!79193)) b!720352))

(assert (= (and d!99091 c!79194) b!720355))

(assert (= (and d!99091 (not c!79194)) b!720348))

(assert (= (and b!720348 res!482702) b!720349))

(assert (= (and b!720349 (not res!482704)) b!720351))

(assert (= (and b!720351 (not res!482703)) b!720354))

(assert (=> b!720352 m!675425))

(declare-fun m!675565 () Bool)

(assert (=> b!720352 m!675565))

(assert (=> b!720352 m!675565))

(assert (=> b!720352 m!675423))

(declare-fun m!675567 () Bool)

(assert (=> b!720352 m!675567))

(declare-fun m!675569 () Bool)

(assert (=> b!720351 m!675569))

(assert (=> d!99091 m!675425))

(declare-fun m!675571 () Bool)

(assert (=> d!99091 m!675571))

(assert (=> d!99091 m!675417))

(assert (=> b!720349 m!675569))

(assert (=> b!720354 m!675569))

(assert (=> b!720088 d!99091))

(declare-fun d!99093 () Bool)

(declare-fun lt!319758 () (_ BitVec 32))

(declare-fun lt!319757 () (_ BitVec 32))

(assert (=> d!99093 (= lt!319758 (bvmul (bvxor lt!319757 (bvlshr lt!319757 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!99093 (= lt!319757 ((_ extract 31 0) (bvand (bvxor (select (arr!19510 a!3186) j!159) (bvlshr (select (arr!19510 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!99093 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!482705 (let ((h!14612 ((_ extract 31 0) (bvand (bvxor (select (arr!19510 a!3186) j!159) (bvlshr (select (arr!19510 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!61869 (bvmul (bvxor h!14612 (bvlshr h!14612 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!61869 (bvlshr x!61869 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!482705 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!482705 #b00000000000000000000000000000000))))))

(assert (=> d!99093 (= (toIndex!0 (select (arr!19510 a!3186) j!159) mask!3328) (bvand (bvxor lt!319758 (bvlshr lt!319758 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!720088 d!99093))

(declare-fun b!720399 () Bool)

(declare-fun e!404089 () Bool)

(declare-fun call!34764 () Bool)

(assert (=> b!720399 (= e!404089 call!34764)))

(declare-fun d!99097 () Bool)

(declare-fun res!482721 () Bool)

(declare-fun e!404090 () Bool)

(assert (=> d!99097 (=> res!482721 e!404090)))

(assert (=> d!99097 (= res!482721 (bvsge #b00000000000000000000000000000000 (size!19931 a!3186)))))

(assert (=> d!99097 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328) e!404090)))

(declare-fun b!720400 () Bool)

(declare-fun e!404088 () Bool)

(assert (=> b!720400 (= e!404089 e!404088)))

(declare-fun lt!319780 () (_ BitVec 64))

(assert (=> b!720400 (= lt!319780 (select (arr!19510 a!3186) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!24646 0))(
  ( (Unit!24647) )
))
(declare-fun lt!319779 () Unit!24646)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!40776 (_ BitVec 64) (_ BitVec 32)) Unit!24646)

(assert (=> b!720400 (= lt!319779 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!319780 #b00000000000000000000000000000000))))

(assert (=> b!720400 (arrayContainsKey!0 a!3186 lt!319780 #b00000000000000000000000000000000)))

(declare-fun lt!319778 () Unit!24646)

(assert (=> b!720400 (= lt!319778 lt!319779)))

(declare-fun res!482720 () Bool)

(assert (=> b!720400 (= res!482720 (= (seekEntryOrOpen!0 (select (arr!19510 a!3186) #b00000000000000000000000000000000) a!3186 mask!3328) (Found!7117 #b00000000000000000000000000000000)))))

(assert (=> b!720400 (=> (not res!482720) (not e!404088))))

(declare-fun bm!34761 () Bool)

(assert (=> bm!34761 (= call!34764 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun b!720401 () Bool)

(assert (=> b!720401 (= e!404088 call!34764)))

(declare-fun b!720402 () Bool)

(assert (=> b!720402 (= e!404090 e!404089)))

(declare-fun c!79209 () Bool)

(assert (=> b!720402 (= c!79209 (validKeyInArray!0 (select (arr!19510 a!3186) #b00000000000000000000000000000000)))))

(assert (= (and d!99097 (not res!482721)) b!720402))

(assert (= (and b!720402 c!79209) b!720400))

(assert (= (and b!720402 (not c!79209)) b!720399))

(assert (= (and b!720400 res!482720) b!720401))

(assert (= (or b!720401 b!720399) bm!34761))

(assert (=> b!720400 m!675483))

(declare-fun m!675587 () Bool)

(assert (=> b!720400 m!675587))

(declare-fun m!675589 () Bool)

(assert (=> b!720400 m!675589))

(assert (=> b!720400 m!675483))

(declare-fun m!675591 () Bool)

(assert (=> b!720400 m!675591))

(declare-fun m!675593 () Bool)

(assert (=> bm!34761 m!675593))

(assert (=> b!720402 m!675483))

(assert (=> b!720402 m!675483))

(assert (=> b!720402 m!675527))

(assert (=> b!720092 d!99097))

(check-sat (not d!99049) (not d!99039) (not b!720266) (not b!720167) (not b!720344) (not b!720267) (not d!99079) (not b!720402) (not b!720158) (not b!720352) (not b!720400) (not b!720244) (not d!99091) (not b!720269) (not bm!34749) (not bm!34761))
(check-sat)
