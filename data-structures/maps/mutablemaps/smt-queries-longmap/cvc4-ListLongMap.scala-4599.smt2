; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64130 () Bool)

(assert start!64130)

(declare-fun b!720130 () Bool)

(declare-fun res!482635 () Bool)

(declare-fun e!403926 () Bool)

(assert (=> b!720130 (=> (not res!482635) (not e!403926))))

(declare-datatypes ((array!40778 0))(
  ( (array!40779 (arr!19511 (Array (_ BitVec 32) (_ BitVec 64))) (size!19932 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40778)

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!40778 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!720130 (= res!482635 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!720131 () Bool)

(declare-fun res!482639 () Bool)

(assert (=> b!720131 (=> (not res!482639) (not e!403926))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!720131 (= res!482639 (and (= (size!19932 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19932 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19932 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!720132 () Bool)

(declare-fun res!482632 () Bool)

(declare-fun e!403929 () Bool)

(assert (=> b!720132 (=> (not res!482632) (not e!403929))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!720132 (= res!482632 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19932 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19932 a!3186))))))

(declare-fun b!720133 () Bool)

(declare-fun res!482633 () Bool)

(declare-fun e!403927 () Bool)

(assert (=> b!720133 (=> (not res!482633) (not e!403927))))

(declare-fun e!403925 () Bool)

(assert (=> b!720133 (= res!482633 e!403925)))

(declare-fun c!79119 () Bool)

(assert (=> b!720133 (= c!79119 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!720134 () Bool)

(assert (=> b!720134 (= e!403927 (and (bvsge mask!3328 #b00000000000000000000000000000000) (bvsgt mask!3328 #b00111111111111111111111111111111)))))

(declare-fun b!720135 () Bool)

(declare-datatypes ((SeekEntryResult!7118 0))(
  ( (MissingZero!7118 (index!30839 (_ BitVec 32))) (Found!7118 (index!30840 (_ BitVec 32))) (Intermediate!7118 (undefined!7930 Bool) (index!30841 (_ BitVec 32)) (x!61862 (_ BitVec 32))) (Undefined!7118) (MissingVacant!7118 (index!30842 (_ BitVec 32))) )
))
(declare-fun lt!319694 () SeekEntryResult!7118)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40778 (_ BitVec 32)) SeekEntryResult!7118)

(assert (=> b!720135 (= e!403925 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19511 a!3186) j!159) a!3186 mask!3328) lt!319694))))

(declare-fun b!720136 () Bool)

(assert (=> b!720136 (= e!403929 e!403927)))

(declare-fun res!482640 () Bool)

(assert (=> b!720136 (=> (not res!482640) (not e!403927))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!720136 (= res!482640 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19511 a!3186) j!159) mask!3328) (select (arr!19511 a!3186) j!159) a!3186 mask!3328) lt!319694))))

(assert (=> b!720136 (= lt!319694 (Intermediate!7118 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun res!482637 () Bool)

(assert (=> start!64130 (=> (not res!482637) (not e!403926))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64130 (= res!482637 (validMask!0 mask!3328))))

(assert (=> start!64130 e!403926))

(assert (=> start!64130 true))

(declare-fun array_inv!15285 (array!40778) Bool)

(assert (=> start!64130 (array_inv!15285 a!3186)))

(declare-fun b!720137 () Bool)

(declare-fun res!482634 () Bool)

(assert (=> b!720137 (=> (not res!482634) (not e!403929))))

(declare-datatypes ((List!13566 0))(
  ( (Nil!13563) (Cons!13562 (h!14610 (_ BitVec 64)) (t!19889 List!13566)) )
))
(declare-fun arrayNoDuplicates!0 (array!40778 (_ BitVec 32) List!13566) Bool)

(assert (=> b!720137 (= res!482634 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13563))))

(declare-fun b!720138 () Bool)

(declare-fun res!482631 () Bool)

(assert (=> b!720138 (=> (not res!482631) (not e!403926))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!720138 (= res!482631 (validKeyInArray!0 k!2102))))

(declare-fun b!720139 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40778 (_ BitVec 32)) SeekEntryResult!7118)

(assert (=> b!720139 (= e!403925 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19511 a!3186) j!159) a!3186 mask!3328) (Found!7118 j!159)))))

(declare-fun b!720140 () Bool)

(declare-fun res!482638 () Bool)

(assert (=> b!720140 (=> (not res!482638) (not e!403929))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40778 (_ BitVec 32)) Bool)

(assert (=> b!720140 (= res!482638 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!720141 () Bool)

(declare-fun res!482630 () Bool)

(assert (=> b!720141 (=> (not res!482630) (not e!403927))))

(assert (=> b!720141 (= res!482630 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19511 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!720142 () Bool)

(declare-fun res!482629 () Bool)

(assert (=> b!720142 (=> (not res!482629) (not e!403926))))

(assert (=> b!720142 (= res!482629 (validKeyInArray!0 (select (arr!19511 a!3186) j!159)))))

(declare-fun b!720143 () Bool)

(assert (=> b!720143 (= e!403926 e!403929)))

(declare-fun res!482636 () Bool)

(assert (=> b!720143 (=> (not res!482636) (not e!403929))))

(declare-fun lt!319693 () SeekEntryResult!7118)

(assert (=> b!720143 (= res!482636 (or (= lt!319693 (MissingZero!7118 i!1173)) (= lt!319693 (MissingVacant!7118 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40778 (_ BitVec 32)) SeekEntryResult!7118)

(assert (=> b!720143 (= lt!319693 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(assert (= (and start!64130 res!482637) b!720131))

(assert (= (and b!720131 res!482639) b!720142))

(assert (= (and b!720142 res!482629) b!720138))

(assert (= (and b!720138 res!482631) b!720130))

(assert (= (and b!720130 res!482635) b!720143))

(assert (= (and b!720143 res!482636) b!720140))

(assert (= (and b!720140 res!482638) b!720137))

(assert (= (and b!720137 res!482634) b!720132))

(assert (= (and b!720132 res!482632) b!720136))

(assert (= (and b!720136 res!482640) b!720141))

(assert (= (and b!720141 res!482630) b!720133))

(assert (= (and b!720133 c!79119) b!720135))

(assert (= (and b!720133 (not c!79119)) b!720139))

(assert (= (and b!720133 res!482633) b!720134))

(declare-fun m!675441 () Bool)

(assert (=> b!720136 m!675441))

(assert (=> b!720136 m!675441))

(declare-fun m!675443 () Bool)

(assert (=> b!720136 m!675443))

(assert (=> b!720136 m!675443))

(assert (=> b!720136 m!675441))

(declare-fun m!675445 () Bool)

(assert (=> b!720136 m!675445))

(assert (=> b!720135 m!675441))

(assert (=> b!720135 m!675441))

(declare-fun m!675447 () Bool)

(assert (=> b!720135 m!675447))

(declare-fun m!675449 () Bool)

(assert (=> b!720130 m!675449))

(declare-fun m!675451 () Bool)

(assert (=> b!720138 m!675451))

(declare-fun m!675453 () Bool)

(assert (=> start!64130 m!675453))

(declare-fun m!675455 () Bool)

(assert (=> start!64130 m!675455))

(assert (=> b!720142 m!675441))

(assert (=> b!720142 m!675441))

(declare-fun m!675457 () Bool)

(assert (=> b!720142 m!675457))

(declare-fun m!675459 () Bool)

(assert (=> b!720140 m!675459))

(assert (=> b!720139 m!675441))

(assert (=> b!720139 m!675441))

(declare-fun m!675461 () Bool)

(assert (=> b!720139 m!675461))

(declare-fun m!675463 () Bool)

(assert (=> b!720143 m!675463))

(declare-fun m!675465 () Bool)

(assert (=> b!720141 m!675465))

(declare-fun m!675467 () Bool)

(assert (=> b!720137 m!675467))

(push 1)

(assert (not b!720142))

(assert (not b!720130))

(assert (not b!720140))

(assert (not b!720138))

(assert (not b!720135))

(assert (not start!64130))

(assert (not b!720136))

(assert (not b!720137))

(assert (not b!720139))

(assert (not b!720143))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun lt!319713 () SeekEntryResult!7118)

(declare-fun d!99047 () Bool)

(assert (=> d!99047 (and (or (is-Undefined!7118 lt!319713) (not (is-Found!7118 lt!319713)) (and (bvsge (index!30840 lt!319713) #b00000000000000000000000000000000) (bvslt (index!30840 lt!319713) (size!19932 a!3186)))) (or (is-Undefined!7118 lt!319713) (is-Found!7118 lt!319713) (not (is-MissingVacant!7118 lt!319713)) (not (= (index!30842 lt!319713) resIntermediateIndex!5)) (and (bvsge (index!30842 lt!319713) #b00000000000000000000000000000000) (bvslt (index!30842 lt!319713) (size!19932 a!3186)))) (or (is-Undefined!7118 lt!319713) (ite (is-Found!7118 lt!319713) (= (select (arr!19511 a!3186) (index!30840 lt!319713)) (select (arr!19511 a!3186) j!159)) (and (is-MissingVacant!7118 lt!319713) (= (index!30842 lt!319713) resIntermediateIndex!5) (= (select (arr!19511 a!3186) (index!30842 lt!319713)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!403961 () SeekEntryResult!7118)

(assert (=> d!99047 (= lt!319713 e!403961)))

(declare-fun c!79141 () Bool)

(assert (=> d!99047 (= c!79141 (bvsge x!1131 #b01111111111111111111111111111110))))

(declare-fun lt!319712 () (_ BitVec 64))

(assert (=> d!99047 (= lt!319712 (select (arr!19511 a!3186) index!1321))))

(assert (=> d!99047 (validMask!0 mask!3328)))

(assert (=> d!99047 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19511 a!3186) j!159) a!3186 mask!3328) lt!319713)))

(declare-fun b!720198 () Bool)

(declare-fun c!79142 () Bool)

(assert (=> b!720198 (= c!79142 (= lt!319712 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!403963 () SeekEntryResult!7118)

(declare-fun e!403962 () SeekEntryResult!7118)

(assert (=> b!720198 (= e!403963 e!403962)))

(declare-fun b!720199 () Bool)

(assert (=> b!720199 (= e!403961 Undefined!7118)))

(declare-fun b!720200 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!720200 (= e!403962 (seekKeyOrZeroReturnVacant!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) resIntermediateIndex!5 (select (arr!19511 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!720201 () Bool)

(assert (=> b!720201 (= e!403963 (Found!7118 index!1321))))

(declare-fun b!720202 () Bool)

(assert (=> b!720202 (= e!403962 (MissingVacant!7118 resIntermediateIndex!5))))

(declare-fun b!720203 () Bool)

(assert (=> b!720203 (= e!403961 e!403963)))

(declare-fun c!79143 () Bool)

(assert (=> b!720203 (= c!79143 (= lt!319712 (select (arr!19511 a!3186) j!159)))))

(assert (= (and d!99047 c!79141) b!720199))

(assert (= (and d!99047 (not c!79141)) b!720203))

(assert (= (and b!720203 c!79143) b!720201))

(assert (= (and b!720203 (not c!79143)) b!720198))

(assert (= (and b!720198 c!79142) b!720202))

(assert (= (and b!720198 (not c!79142)) b!720200))

(declare-fun m!675487 () Bool)

(assert (=> d!99047 m!675487))

(declare-fun m!675489 () Bool)

(assert (=> d!99047 m!675489))

(declare-fun m!675491 () Bool)

(assert (=> d!99047 m!675491))

(assert (=> d!99047 m!675453))

(declare-fun m!675493 () Bool)

(assert (=> b!720200 m!675493))

(assert (=> b!720200 m!675493))

(assert (=> b!720200 m!675441))

(declare-fun m!675495 () Bool)

(assert (=> b!720200 m!675495))

(assert (=> b!720139 d!99047))

(declare-fun d!99051 () Bool)

(assert (=> d!99051 (= (validKeyInArray!0 k!2102) (and (not (= k!2102 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2102 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!720138 d!99051))

(declare-fun b!720282 () Bool)

(declare-fun e!404014 () SeekEntryResult!7118)

(declare-fun e!404015 () SeekEntryResult!7118)

(assert (=> b!720282 (= e!404014 e!404015)))

(declare-fun lt!319736 () (_ BitVec 64))

(declare-fun lt!319737 () SeekEntryResult!7118)

(assert (=> b!720282 (= lt!319736 (select (arr!19511 a!3186) (index!30841 lt!319737)))))

(declare-fun c!79169 () Bool)

(assert (=> b!720282 (= c!79169 (= lt!319736 k!2102))))

(declare-fun b!720283 () Bool)

(declare-fun e!404013 () SeekEntryResult!7118)

(assert (=> b!720283 (= e!404013 (seekKeyOrZeroReturnVacant!0 (x!61862 lt!319737) (index!30841 lt!319737) (index!30841 lt!319737) k!2102 a!3186 mask!3328))))

(declare-fun b!720284 () Bool)

(declare-fun c!79168 () Bool)

(assert (=> b!720284 (= c!79168 (= lt!319736 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!720284 (= e!404015 e!404013)))

(declare-fun b!720285 () Bool)

(assert (=> b!720285 (= e!404015 (Found!7118 (index!30841 lt!319737)))))

(declare-fun d!99053 () Bool)

(declare-fun lt!319738 () SeekEntryResult!7118)

(assert (=> d!99053 (and (or (is-Undefined!7118 lt!319738) (not (is-Found!7118 lt!319738)) (and (bvsge (index!30840 lt!319738) #b00000000000000000000000000000000) (bvslt (index!30840 lt!319738) (size!19932 a!3186)))) (or (is-Undefined!7118 lt!319738) (is-Found!7118 lt!319738) (not (is-MissingZero!7118 lt!319738)) (and (bvsge (index!30839 lt!319738) #b00000000000000000000000000000000) (bvslt (index!30839 lt!319738) (size!19932 a!3186)))) (or (is-Undefined!7118 lt!319738) (is-Found!7118 lt!319738) (is-MissingZero!7118 lt!319738) (not (is-MissingVacant!7118 lt!319738)) (and (bvsge (index!30842 lt!319738) #b00000000000000000000000000000000) (bvslt (index!30842 lt!319738) (size!19932 a!3186)))) (or (is-Undefined!7118 lt!319738) (ite (is-Found!7118 lt!319738) (= (select (arr!19511 a!3186) (index!30840 lt!319738)) k!2102) (ite (is-MissingZero!7118 lt!319738) (= (select (arr!19511 a!3186) (index!30839 lt!319738)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!7118 lt!319738) (= (select (arr!19511 a!3186) (index!30842 lt!319738)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!99053 (= lt!319738 e!404014)))

(declare-fun c!79170 () Bool)

(assert (=> d!99053 (= c!79170 (and (is-Intermediate!7118 lt!319737) (undefined!7930 lt!319737)))))

(assert (=> d!99053 (= lt!319737 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2102 mask!3328) k!2102 a!3186 mask!3328))))

(assert (=> d!99053 (validMask!0 mask!3328)))

(assert (=> d!99053 (= (seekEntryOrOpen!0 k!2102 a!3186 mask!3328) lt!319738)))

(declare-fun b!720286 () Bool)

(assert (=> b!720286 (= e!404013 (MissingZero!7118 (index!30841 lt!319737)))))

(declare-fun b!720287 () Bool)

(assert (=> b!720287 (= e!404014 Undefined!7118)))

(assert (= (and d!99053 c!79170) b!720287))

(assert (= (and d!99053 (not c!79170)) b!720282))

(assert (= (and b!720282 c!79169) b!720285))

(assert (= (and b!720282 (not c!79169)) b!720284))

(assert (= (and b!720284 c!79168) b!720286))

(assert (= (and b!720284 (not c!79168)) b!720283))

(declare-fun m!675531 () Bool)

(assert (=> b!720282 m!675531))

(declare-fun m!675533 () Bool)

(assert (=> b!720283 m!675533))

(declare-fun m!675535 () Bool)

(assert (=> d!99053 m!675535))

(declare-fun m!675537 () Bool)

(assert (=> d!99053 m!675537))

(declare-fun m!675539 () Bool)

(assert (=> d!99053 m!675539))

(assert (=> d!99053 m!675453))

(assert (=> d!99053 m!675537))

(declare-fun m!675541 () Bool)

(assert (=> d!99053 m!675541))

(declare-fun m!675543 () Bool)

(assert (=> d!99053 m!675543))

(assert (=> b!720143 d!99053))

(declare-fun d!99073 () Bool)

(assert (=> d!99073 (= (validKeyInArray!0 (select (arr!19511 a!3186) j!159)) (and (not (= (select (arr!19511 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!19511 a!3186) j!159) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!720142 d!99073))

(declare-fun b!720313 () Bool)

(declare-fun e!404039 () Bool)

(declare-fun e!404037 () Bool)

(assert (=> b!720313 (= e!404039 e!404037)))

(declare-fun res!482699 () Bool)

(assert (=> b!720313 (=> (not res!482699) (not e!404037))))

(declare-fun e!404038 () Bool)

(assert (=> b!720313 (= res!482699 (not e!404038))))

(declare-fun res!482701 () Bool)

(assert (=> b!720313 (=> (not res!482701) (not e!404038))))

(assert (=> b!720313 (= res!482701 (validKeyInArray!0 (select (arr!19511 a!3186) #b00000000000000000000000000000000)))))

(declare-fun d!99075 () Bool)

(declare-fun res!482700 () Bool)

(assert (=> d!99075 (=> res!482700 e!404039)))

(assert (=> d!99075 (= res!482700 (bvsge #b00000000000000000000000000000000 (size!19932 a!3186)))))

(assert (=> d!99075 (= (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13563) e!404039)))

(declare-fun b!720314 () Bool)

(declare-fun e!404036 () Bool)

(assert (=> b!720314 (= e!404037 e!404036)))

(declare-fun c!79176 () Bool)

(assert (=> b!720314 (= c!79176 (validKeyInArray!0 (select (arr!19511 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!720315 () Bool)

(declare-fun call!34758 () Bool)

(assert (=> b!720315 (= e!404036 call!34758)))

(declare-fun b!720316 () Bool)

(declare-fun contains!4043 (List!13566 (_ BitVec 64)) Bool)

(assert (=> b!720316 (= e!404038 (contains!4043 Nil!13563 (select (arr!19511 a!3186) #b00000000000000000000000000000000)))))

(declare-fun bm!34755 () Bool)

(assert (=> bm!34755 (= call!34758 (arrayNoDuplicates!0 a!3186 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!79176 (Cons!13562 (select (arr!19511 a!3186) #b00000000000000000000000000000000) Nil!13563) Nil!13563)))))

(declare-fun b!720317 () Bool)

(assert (=> b!720317 (= e!404036 call!34758)))

(assert (= (and d!99075 (not res!482700)) b!720313))

(assert (= (and b!720313 res!482701) b!720316))

(assert (= (and b!720313 res!482699) b!720314))

(assert (= (and b!720314 c!79176) b!720315))

(assert (= (and b!720314 (not c!79176)) b!720317))

(assert (= (or b!720315 b!720317) bm!34755))

(declare-fun m!675551 () Bool)

(assert (=> b!720313 m!675551))

(assert (=> b!720313 m!675551))

(declare-fun m!675553 () Bool)

(assert (=> b!720313 m!675553))

(assert (=> b!720314 m!675551))

(assert (=> b!720314 m!675551))

(assert (=> b!720314 m!675553))

(assert (=> b!720316 m!675551))

(assert (=> b!720316 m!675551))

(declare-fun m!675555 () Bool)

(assert (=> b!720316 m!675555))

(assert (=> bm!34755 m!675551))

(declare-fun m!675557 () Bool)

(assert (=> bm!34755 m!675557))

(assert (=> b!720137 d!99075))

(declare-fun d!99083 () Bool)

(assert (=> d!99083 (= (validMask!0 mask!3328) (and (or (= mask!3328 #b00000000000000000000000000000111) (= mask!3328 #b00000000000000000000000000001111) (= mask!3328 #b00000000000000000000000000011111) (= mask!3328 #b00000000000000000000000000111111) (= mask!3328 #b00000000000000000000000001111111) (= mask!3328 #b00000000000000000000000011111111) (= mask!3328 #b00000000000000000000000111111111) (= mask!3328 #b00000000000000000000001111111111) (= mask!3328 #b00000000000000000000011111111111) (= mask!3328 #b00000000000000000000111111111111) (= mask!3328 #b00000000000000000001111111111111) (= mask!3328 #b00000000000000000011111111111111) (= mask!3328 #b00000000000000000111111111111111) (= mask!3328 #b00000000000000001111111111111111) (= mask!3328 #b00000000000000011111111111111111) (= mask!3328 #b00000000000000111111111111111111) (= mask!3328 #b00000000000001111111111111111111) (= mask!3328 #b00000000000011111111111111111111) (= mask!3328 #b00000000000111111111111111111111) (= mask!3328 #b00000000001111111111111111111111) (= mask!3328 #b00000000011111111111111111111111) (= mask!3328 #b00000000111111111111111111111111) (= mask!3328 #b00000001111111111111111111111111) (= mask!3328 #b00000011111111111111111111111111) (= mask!3328 #b00000111111111111111111111111111) (= mask!3328 #b00001111111111111111111111111111) (= mask!3328 #b00011111111111111111111111111111) (= mask!3328 #b00111111111111111111111111111111)) (bvsle mask!3328 #b00111111111111111111111111111111)))))

(assert (=> start!64130 d!99083))

(declare-fun d!99085 () Bool)

(assert (=> d!99085 (= (array_inv!15285 a!3186) (bvsge (size!19932 a!3186) #b00000000000000000000000000000000))))

(assert (=> start!64130 d!99085))

(declare-fun d!99087 () Bool)

(declare-fun e!404094 () Bool)

(assert (=> d!99087 e!404094))

(declare-fun c!79211 () Bool)

(declare-fun lt!319781 () SeekEntryResult!7118)

(assert (=> d!99087 (= c!79211 (and (is-Intermediate!7118 lt!319781) (undefined!7930 lt!319781)))))

(declare-fun e!404091 () SeekEntryResult!7118)

(assert (=> d!99087 (= lt!319781 e!404091)))

(declare-fun c!79212 () Bool)

(assert (=> d!99087 (= c!79212 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!319782 () (_ BitVec 64))

(assert (=> d!99087 (= lt!319782 (select (arr!19511 a!3186) (toIndex!0 (select (arr!19511 a!3186) j!159) mask!3328)))))

(assert (=> d!99087 (validMask!0 mask!3328)))

(assert (=> d!99087 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19511 a!3186) j!159) mask!3328) (select (arr!19511 a!3186) j!159) a!3186 mask!3328) lt!319781)))

(declare-fun b!720405 () Bool)

(assert (=> b!720405 (and (bvsge (index!30841 lt!319781) #b00000000000000000000000000000000) (bvslt (index!30841 lt!319781) (size!19932 a!3186)))))

(declare-fun e!404095 () Bool)

(assert (=> b!720405 (= e!404095 (= (select (arr!19511 a!3186) (index!30841 lt!319781)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!404092 () SeekEntryResult!7118)

(declare-fun b!720406 () Bool)

(assert (=> b!720406 (= e!404092 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!19511 a!3186) j!159) mask!3328) #b00000000000000000000000000000000 mask!3328) (select (arr!19511 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!720407 () Bool)

(assert (=> b!720407 (= e!404092 (Intermediate!7118 false (toIndex!0 (select (arr!19511 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!720408 () Bool)

(declare-fun e!404093 () Bool)

(assert (=> b!720408 (= e!404094 e!404093)))

(declare-fun res!482726 () Bool)

(assert (=> b!720408 (= res!482726 (and (is-Intermediate!7118 lt!319781) (not (undefined!7930 lt!319781)) (bvslt (x!61862 lt!319781) #b01111111111111111111111111111110) (bvsge (x!61862 lt!319781) #b00000000000000000000000000000000) (bvsge (x!61862 lt!319781) #b00000000000000000000000000000000)))))

(assert (=> b!720408 (=> (not res!482726) (not e!404093))))

(declare-fun b!720409 () Bool)

(assert (=> b!720409 (and (bvsge (index!30841 lt!319781) #b00000000000000000000000000000000) (bvslt (index!30841 lt!319781) (size!19932 a!3186)))))

(declare-fun res!482724 () Bool)

(assert (=> b!720409 (= res!482724 (= (select (arr!19511 a!3186) (index!30841 lt!319781)) (select (arr!19511 a!3186) j!159)))))

(assert (=> b!720409 (=> res!482724 e!404095)))

(assert (=> b!720409 (= e!404093 e!404095)))

(declare-fun b!720410 () Bool)

(assert (=> b!720410 (= e!404094 (bvsge (x!61862 lt!319781) #b01111111111111111111111111111110))))

(declare-fun b!720411 () Bool)

(assert (=> b!720411 (= e!404091 (Intermediate!7118 true (toIndex!0 (select (arr!19511 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!720412 () Bool)

(assert (=> b!720412 (and (bvsge (index!30841 lt!319781) #b00000000000000000000000000000000) (bvslt (index!30841 lt!319781) (size!19932 a!3186)))))

(declare-fun res!482725 () Bool)

(assert (=> b!720412 (= res!482725 (= (select (arr!19511 a!3186) (index!30841 lt!319781)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!720412 (=> res!482725 e!404095)))

(declare-fun b!720413 () Bool)

(assert (=> b!720413 (= e!404091 e!404092)))

(declare-fun c!79210 () Bool)

(assert (=> b!720413 (= c!79210 (or (= lt!319782 (select (arr!19511 a!3186) j!159)) (= (bvadd lt!319782 lt!319782) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!99087 c!79212) b!720411))

(assert (= (and d!99087 (not c!79212)) b!720413))

(assert (= (and b!720413 c!79210) b!720407))

(assert (= (and b!720413 (not c!79210)) b!720406))

(assert (= (and d!99087 c!79211) b!720410))

(assert (= (and d!99087 (not c!79211)) b!720408))

(assert (= (and b!720408 res!482726) b!720409))

(assert (= (and b!720409 (not res!482724)) b!720412))

(assert (= (and b!720412 (not res!482725)) b!720405))

(assert (=> b!720406 m!675443))

(declare-fun m!675595 () Bool)

(assert (=> b!720406 m!675595))

(assert (=> b!720406 m!675595))

(assert (=> b!720406 m!675441))

(declare-fun m!675597 () Bool)

(assert (=> b!720406 m!675597))

(declare-fun m!675599 () Bool)

(assert (=> b!720409 m!675599))

(assert (=> b!720412 m!675599))

(assert (=> d!99087 m!675443))

(declare-fun m!675601 () Bool)

(assert (=> d!99087 m!675601))

(assert (=> d!99087 m!675453))

(assert (=> b!720405 m!675599))

(assert (=> b!720136 d!99087))

(declare-fun d!99101 () Bool)

(declare-fun lt!319788 () (_ BitVec 32))

(declare-fun lt!319787 () (_ BitVec 32))

(assert (=> d!99101 (= lt!319788 (bvmul (bvxor lt!319787 (bvlshr lt!319787 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!99101 (= lt!319787 ((_ extract 31 0) (bvand (bvxor (select (arr!19511 a!3186) j!159) (bvlshr (select (arr!19511 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!99101 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!482727 (let ((h!14613 ((_ extract 31 0) (bvand (bvxor (select (arr!19511 a!3186) j!159) (bvlshr (select (arr!19511 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!61871 (bvmul (bvxor h!14613 (bvlshr h!14613 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!61871 (bvlshr x!61871 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!482727 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!482727 #b00000000000000000000000000000000))))))

(assert (=> d!99101 (= (toIndex!0 (select (arr!19511 a!3186) j!159) mask!3328) (bvand (bvxor lt!319788 (bvlshr lt!319788 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!720136 d!99101))

(declare-fun d!99103 () Bool)

(declare-fun res!482732 () Bool)

(declare-fun e!404100 () Bool)

(assert (=> d!99103 (=> res!482732 e!404100)))

(assert (=> d!99103 (= res!482732 (= (select (arr!19511 a!3186) #b00000000000000000000000000000000) k!2102))))

(assert (=> d!99103 (= (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000) e!404100)))

(declare-fun b!720418 () Bool)

(declare-fun e!404101 () Bool)

(assert (=> b!720418 (= e!404100 e!404101)))

(declare-fun res!482733 () Bool)

(assert (=> b!720418 (=> (not res!482733) (not e!404101))))

(assert (=> b!720418 (= res!482733 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!19932 a!3186)))))

(declare-fun b!720419 () Bool)

(assert (=> b!720419 (= e!404101 (arrayContainsKey!0 a!3186 k!2102 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!99103 (not res!482732)) b!720418))

(assert (= (and b!720418 res!482733) b!720419))

(assert (=> d!99103 m!675551))

(declare-fun m!675603 () Bool)

(assert (=> b!720419 m!675603))

(assert (=> b!720130 d!99103))

(declare-fun b!720446 () Bool)

(declare-fun e!404119 () Bool)

(declare-fun call!34767 () Bool)

(assert (=> b!720446 (= e!404119 call!34767)))

(declare-fun b!720447 () Bool)

(declare-fun e!404117 () Bool)

(assert (=> b!720447 (= e!404117 call!34767)))

(declare-fun bm!34764 () Bool)

(assert (=> bm!34764 (= call!34767 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun b!720449 () Bool)

(declare-fun e!404118 () Bool)

(assert (=> b!720449 (= e!404118 e!404117)))

(declare-fun c!79224 () Bool)

(assert (=> b!720449 (= c!79224 (validKeyInArray!0 (select (arr!19511 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!720448 () Bool)

(assert (=> b!720448 (= e!404117 e!404119)))

(declare-fun lt!319805 () (_ BitVec 64))

(assert (=> b!720448 (= lt!319805 (select (arr!19511 a!3186) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!24650 0))(
  ( (Unit!24651) )
))
(declare-fun lt!319806 () Unit!24650)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!40778 (_ BitVec 64) (_ BitVec 32)) Unit!24650)

(assert (=> b!720448 (= lt!319806 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!319805 #b00000000000000000000000000000000))))

(assert (=> b!720448 (arrayContainsKey!0 a!3186 lt!319805 #b00000000000000000000000000000000)))

