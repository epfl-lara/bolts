; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32736 () Bool)

(assert start!32736)

(declare-fun b!327016 () Bool)

(declare-fun e!201149 () Bool)

(declare-fun e!201150 () Bool)

(assert (=> b!327016 (= e!201149 e!201150)))

(declare-fun res!180209 () Bool)

(assert (=> b!327016 (=> (not res!180209) (not e!201150))))

(declare-datatypes ((array!16769 0))(
  ( (array!16770 (arr!7936 (Array (_ BitVec 32) (_ BitVec 64))) (size!8288 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16769)

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3078 0))(
  ( (MissingZero!3078 (index!14488 (_ BitVec 32))) (Found!3078 (index!14489 (_ BitVec 32))) (Intermediate!3078 (undefined!3890 Bool) (index!14490 (_ BitVec 32)) (x!32695 (_ BitVec 32))) (Undefined!3078) (MissingVacant!3078 (index!14491 (_ BitVec 32))) )
))
(declare-fun lt!157439 () SeekEntryResult!3078)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16769 (_ BitVec 32)) SeekEntryResult!3078)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!327016 (= res!180209 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!157439))))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(assert (=> b!327016 (= lt!157439 (Intermediate!3078 false resIndex!58 resX!58))))

(declare-fun b!327017 () Bool)

(declare-fun res!180211 () Bool)

(assert (=> b!327017 (=> (not res!180211) (not e!201149))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!327017 (= res!180211 (validKeyInArray!0 k!2497))))

(declare-fun res!180212 () Bool)

(assert (=> start!32736 (=> (not res!180212) (not e!201149))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32736 (= res!180212 (validMask!0 mask!3777))))

(assert (=> start!32736 e!201149))

(declare-fun array_inv!5890 (array!16769) Bool)

(assert (=> start!32736 (array_inv!5890 a!3305)))

(assert (=> start!32736 true))

(declare-fun b!327018 () Bool)

(declare-fun res!180207 () Bool)

(assert (=> b!327018 (=> (not res!180207) (not e!201149))))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!327018 (= res!180207 (and (= (size!8288 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8288 a!3305))))))

(declare-fun b!327019 () Bool)

(declare-fun res!180208 () Bool)

(assert (=> b!327019 (=> (not res!180208) (not e!201150))))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(assert (=> b!327019 (= res!180208 (and (= (select (arr!7936 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8288 a!3305))))))

(declare-fun b!327020 () Bool)

(declare-fun res!180210 () Bool)

(assert (=> b!327020 (=> (not res!180210) (not e!201150))))

(assert (=> b!327020 (= res!180210 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!157439))))

(declare-fun b!327021 () Bool)

(declare-fun res!180206 () Bool)

(assert (=> b!327021 (=> (not res!180206) (not e!201149))))

(declare-fun arrayContainsKey!0 (array!16769 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!327021 (= res!180206 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!327022 () Bool)

(declare-fun res!180205 () Bool)

(assert (=> b!327022 (=> (not res!180205) (not e!201149))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16769 (_ BitVec 32)) SeekEntryResult!3078)

(assert (=> b!327022 (= res!180205 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!3078 i!1250)))))

(declare-fun b!327023 () Bool)

(declare-fun res!180213 () Bool)

(assert (=> b!327023 (=> (not res!180213) (not e!201149))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16769 (_ BitVec 32)) Bool)

(assert (=> b!327023 (= res!180213 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!327024 () Bool)

(assert (=> b!327024 (= e!201150 (bvsge resX!58 #b01111111111111111111111111111110))))

(assert (= (and start!32736 res!180212) b!327018))

(assert (= (and b!327018 res!180207) b!327017))

(assert (= (and b!327017 res!180211) b!327021))

(assert (= (and b!327021 res!180206) b!327022))

(assert (= (and b!327022 res!180205) b!327023))

(assert (= (and b!327023 res!180213) b!327016))

(assert (= (and b!327016 res!180209) b!327019))

(assert (= (and b!327019 res!180208) b!327020))

(assert (= (and b!327020 res!180210) b!327024))

(declare-fun m!333505 () Bool)

(assert (=> b!327019 m!333505))

(declare-fun m!333507 () Bool)

(assert (=> b!327016 m!333507))

(assert (=> b!327016 m!333507))

(declare-fun m!333509 () Bool)

(assert (=> b!327016 m!333509))

(declare-fun m!333511 () Bool)

(assert (=> b!327021 m!333511))

(declare-fun m!333513 () Bool)

(assert (=> b!327020 m!333513))

(declare-fun m!333515 () Bool)

(assert (=> start!32736 m!333515))

(declare-fun m!333517 () Bool)

(assert (=> start!32736 m!333517))

(declare-fun m!333519 () Bool)

(assert (=> b!327023 m!333519))

(declare-fun m!333521 () Bool)

(assert (=> b!327017 m!333521))

(declare-fun m!333523 () Bool)

(assert (=> b!327022 m!333523))

(push 1)

(assert (not b!327017))

(assert (not b!327020))

(assert (not b!327021))

(assert (not b!327023))

(assert (not start!32736))

(assert (not b!327016))

(assert (not b!327022))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!69673 () Bool)

(assert (=> d!69673 (= (validMask!0 mask!3777) (and (or (= mask!3777 #b00000000000000000000000000000111) (= mask!3777 #b00000000000000000000000000001111) (= mask!3777 #b00000000000000000000000000011111) (= mask!3777 #b00000000000000000000000000111111) (= mask!3777 #b00000000000000000000000001111111) (= mask!3777 #b00000000000000000000000011111111) (= mask!3777 #b00000000000000000000000111111111) (= mask!3777 #b00000000000000000000001111111111) (= mask!3777 #b00000000000000000000011111111111) (= mask!3777 #b00000000000000000000111111111111) (= mask!3777 #b00000000000000000001111111111111) (= mask!3777 #b00000000000000000011111111111111) (= mask!3777 #b00000000000000000111111111111111) (= mask!3777 #b00000000000000001111111111111111) (= mask!3777 #b00000000000000011111111111111111) (= mask!3777 #b00000000000000111111111111111111) (= mask!3777 #b00000000000001111111111111111111) (= mask!3777 #b00000000000011111111111111111111) (= mask!3777 #b00000000000111111111111111111111) (= mask!3777 #b00000000001111111111111111111111) (= mask!3777 #b00000000011111111111111111111111) (= mask!3777 #b00000000111111111111111111111111) (= mask!3777 #b00000001111111111111111111111111) (= mask!3777 #b00000011111111111111111111111111) (= mask!3777 #b00000111111111111111111111111111) (= mask!3777 #b00001111111111111111111111111111) (= mask!3777 #b00011111111111111111111111111111) (= mask!3777 #b00111111111111111111111111111111)) (bvsle mask!3777 #b00111111111111111111111111111111)))))

(assert (=> start!32736 d!69673))

(declare-fun d!69681 () Bool)

(assert (=> d!69681 (= (array_inv!5890 a!3305) (bvsge (size!8288 a!3305) #b00000000000000000000000000000000))))

(assert (=> start!32736 d!69681))

(declare-fun b!327121 () Bool)

(declare-fun e!201192 () SeekEntryResult!3078)

(declare-fun lt!157463 () SeekEntryResult!3078)

(assert (=> b!327121 (= e!201192 (Found!3078 (index!14490 lt!157463)))))

(declare-fun b!327122 () Bool)

(declare-fun e!201193 () SeekEntryResult!3078)

(assert (=> b!327122 (= e!201193 e!201192)))

(declare-fun lt!157462 () (_ BitVec 64))

(assert (=> b!327122 (= lt!157462 (select (arr!7936 a!3305) (index!14490 lt!157463)))))

(declare-fun c!51054 () Bool)

(assert (=> b!327122 (= c!51054 (= lt!157462 k!2497))))

(declare-fun d!69683 () Bool)

(declare-fun lt!157464 () SeekEntryResult!3078)

(assert (=> d!69683 (and (or (is-Undefined!3078 lt!157464) (not (is-Found!3078 lt!157464)) (and (bvsge (index!14489 lt!157464) #b00000000000000000000000000000000) (bvslt (index!14489 lt!157464) (size!8288 a!3305)))) (or (is-Undefined!3078 lt!157464) (is-Found!3078 lt!157464) (not (is-MissingZero!3078 lt!157464)) (and (bvsge (index!14488 lt!157464) #b00000000000000000000000000000000) (bvslt (index!14488 lt!157464) (size!8288 a!3305)))) (or (is-Undefined!3078 lt!157464) (is-Found!3078 lt!157464) (is-MissingZero!3078 lt!157464) (not (is-MissingVacant!3078 lt!157464)) (and (bvsge (index!14491 lt!157464) #b00000000000000000000000000000000) (bvslt (index!14491 lt!157464) (size!8288 a!3305)))) (or (is-Undefined!3078 lt!157464) (ite (is-Found!3078 lt!157464) (= (select (arr!7936 a!3305) (index!14489 lt!157464)) k!2497) (ite (is-MissingZero!3078 lt!157464) (= (select (arr!7936 a!3305) (index!14488 lt!157464)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!3078 lt!157464) (= (select (arr!7936 a!3305) (index!14491 lt!157464)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!69683 (= lt!157464 e!201193)))

(declare-fun c!51056 () Bool)

(assert (=> d!69683 (= c!51056 (and (is-Intermediate!3078 lt!157463) (undefined!3890 lt!157463)))))

(assert (=> d!69683 (= lt!157463 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777))))

(assert (=> d!69683 (validMask!0 mask!3777)))

(assert (=> d!69683 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) lt!157464)))

(declare-fun b!327123 () Bool)

(declare-fun e!201194 () SeekEntryResult!3078)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16769 (_ BitVec 32)) SeekEntryResult!3078)

(assert (=> b!327123 (= e!201194 (seekKeyOrZeroReturnVacant!0 (x!32695 lt!157463) (index!14490 lt!157463) (index!14490 lt!157463) k!2497 a!3305 mask!3777))))

(declare-fun b!327124 () Bool)

(assert (=> b!327124 (= e!201193 Undefined!3078)))

(declare-fun b!327125 () Bool)

(declare-fun c!51055 () Bool)

(assert (=> b!327125 (= c!51055 (= lt!157462 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!327125 (= e!201192 e!201194)))

(declare-fun b!327126 () Bool)

(assert (=> b!327126 (= e!201194 (MissingZero!3078 (index!14490 lt!157463)))))

(assert (= (and d!69683 c!51056) b!327124))

(assert (= (and d!69683 (not c!51056)) b!327122))

(assert (= (and b!327122 c!51054) b!327121))

(assert (= (and b!327122 (not c!51054)) b!327125))

(assert (= (and b!327125 c!51055) b!327126))

(assert (= (and b!327125 (not c!51055)) b!327123))

(declare-fun m!333565 () Bool)

(assert (=> b!327122 m!333565))

(assert (=> d!69683 m!333515))

(declare-fun m!333567 () Bool)

(assert (=> d!69683 m!333567))

(declare-fun m!333569 () Bool)

(assert (=> d!69683 m!333569))

(assert (=> d!69683 m!333507))

(declare-fun m!333571 () Bool)

(assert (=> d!69683 m!333571))

(assert (=> d!69683 m!333507))

(assert (=> d!69683 m!333509))

(declare-fun m!333573 () Bool)

(assert (=> b!327123 m!333573))

(assert (=> b!327022 d!69683))

(declare-fun d!69685 () Bool)

(declare-fun res!180278 () Bool)

(declare-fun e!201199 () Bool)

(assert (=> d!69685 (=> res!180278 e!201199)))

(assert (=> d!69685 (= res!180278 (= (select (arr!7936 a!3305) #b00000000000000000000000000000000) k!2497))))

(assert (=> d!69685 (= (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000) e!201199)))

(declare-fun b!327131 () Bool)

(declare-fun e!201200 () Bool)

(assert (=> b!327131 (= e!201199 e!201200)))

(declare-fun res!180279 () Bool)

(assert (=> b!327131 (=> (not res!180279) (not e!201200))))

(assert (=> b!327131 (= res!180279 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!8288 a!3305)))))

(declare-fun b!327132 () Bool)

(assert (=> b!327132 (= e!201200 (arrayContainsKey!0 a!3305 k!2497 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!69685 (not res!180278)) b!327131))

(assert (= (and b!327131 res!180279) b!327132))

(declare-fun m!333575 () Bool)

(assert (=> d!69685 m!333575))

(declare-fun m!333577 () Bool)

(assert (=> b!327132 m!333577))

(assert (=> b!327021 d!69685))

(declare-fun b!327166 () Bool)

(declare-fun e!201223 () Bool)

(declare-fun e!201222 () Bool)

(assert (=> b!327166 (= e!201223 e!201222)))

(declare-fun res!180291 () Bool)

(declare-fun lt!157480 () SeekEntryResult!3078)

(assert (=> b!327166 (= res!180291 (and (is-Intermediate!3078 lt!157480) (not (undefined!3890 lt!157480)) (bvslt (x!32695 lt!157480) #b01111111111111111111111111111110) (bvsge (x!32695 lt!157480) #b00000000000000000000000000000000) (bvsge (x!32695 lt!157480) #b00000000000000000000000000000000)))))

(assert (=> b!327166 (=> (not res!180291) (not e!201222))))

(declare-fun b!327167 () Bool)

(declare-fun e!201219 () SeekEntryResult!3078)

(assert (=> b!327167 (= e!201219 (Intermediate!3078 true (toIndex!0 k!2497 mask!3777) #b00000000000000000000000000000000))))

(declare-fun b!327168 () Bool)

(declare-fun e!201220 () SeekEntryResult!3078)

(assert (=> b!327168 (= e!201219 e!201220)))

(declare-fun c!51069 () Bool)

(declare-fun lt!157481 () (_ BitVec 64))

(assert (=> b!327168 (= c!51069 (or (= lt!157481 k!2497) (= (bvadd lt!157481 lt!157481) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!327169 () Bool)

(assert (=> b!327169 (= e!201223 (bvsge (x!32695 lt!157480) #b01111111111111111111111111111110))))

(declare-fun b!327170 () Bool)

(assert (=> b!327170 (= e!201220 (Intermediate!3078 false (toIndex!0 k!2497 mask!3777) #b00000000000000000000000000000000))))

(declare-fun d!69687 () Bool)

(assert (=> d!69687 e!201223))

(declare-fun c!51071 () Bool)

(assert (=> d!69687 (= c!51071 (and (is-Intermediate!3078 lt!157480) (undefined!3890 lt!157480)))))

(assert (=> d!69687 (= lt!157480 e!201219)))

(declare-fun c!51070 () Bool)

(assert (=> d!69687 (= c!51070 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!69687 (= lt!157481 (select (arr!7936 a!3305) (toIndex!0 k!2497 mask!3777)))))

(assert (=> d!69687 (validMask!0 mask!3777)))

(assert (=> d!69687 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!157480)))

(declare-fun b!327171 () Bool)

(assert (=> b!327171 (and (bvsge (index!14490 lt!157480) #b00000000000000000000000000000000) (bvslt (index!14490 lt!157480) (size!8288 a!3305)))))

(declare-fun res!180290 () Bool)

(assert (=> b!327171 (= res!180290 (= (select (arr!7936 a!3305) (index!14490 lt!157480)) k!2497))))

(declare-fun e!201221 () Bool)

(assert (=> b!327171 (=> res!180290 e!201221)))

(assert (=> b!327171 (= e!201222 e!201221)))

(declare-fun b!327172 () Bool)

(assert (=> b!327172 (and (bvsge (index!14490 lt!157480) #b00000000000000000000000000000000) (bvslt (index!14490 lt!157480) (size!8288 a!3305)))))

(assert (=> b!327172 (= e!201221 (= (select (arr!7936 a!3305) (index!14490 lt!157480)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!327173 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!327173 (= e!201220 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!2497 mask!3777) #b00000000000000000000000000000000 mask!3777) k!2497 a!3305 mask!3777))))

(declare-fun b!327174 () Bool)

(assert (=> b!327174 (and (bvsge (index!14490 lt!157480) #b00000000000000000000000000000000) (bvslt (index!14490 lt!157480) (size!8288 a!3305)))))

(declare-fun res!180292 () Bool)

(assert (=> b!327174 (= res!180292 (= (select (arr!7936 a!3305) (index!14490 lt!157480)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!327174 (=> res!180292 e!201221)))

(assert (= (and d!69687 c!51070) b!327167))

(assert (= (and d!69687 (not c!51070)) b!327168))

(assert (= (and b!327168 c!51069) b!327170))

(assert (= (and b!327168 (not c!51069)) b!327173))

(assert (= (and d!69687 c!51071) b!327169))

(assert (= (and d!69687 (not c!51071)) b!327166))

(assert (= (and b!327166 res!180291) b!327171))

(assert (= (and b!327171 (not res!180290)) b!327174))

(assert (= (and b!327174 (not res!180292)) b!327172))

(assert (=> d!69687 m!333507))

(declare-fun m!333597 () Bool)

(assert (=> d!69687 m!333597))

(assert (=> d!69687 m!333515))

(declare-fun m!333599 () Bool)

(assert (=> b!327174 m!333599))

(assert (=> b!327172 m!333599))

(assert (=> b!327173 m!333507))

(declare-fun m!333601 () Bool)

(assert (=> b!327173 m!333601))

(assert (=> b!327173 m!333601))

(declare-fun m!333603 () Bool)

(assert (=> b!327173 m!333603))

(assert (=> b!327171 m!333599))

(assert (=> b!327016 d!69687))

(declare-fun d!69695 () Bool)

(declare-fun lt!157496 () (_ BitVec 32))

(declare-fun lt!157495 () (_ BitVec 32))

(assert (=> d!69695 (= lt!157496 (bvmul (bvxor lt!157495 (bvlshr lt!157495 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!69695 (= lt!157495 ((_ extract 31 0) (bvand (bvxor k!2497 (bvlshr k!2497 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!69695 (and (bvsge mask!3777 #b00000000000000000000000000000000) (let ((res!180297 (let ((h!5418 ((_ extract 31 0) (bvand (bvxor k!2497 (bvlshr k!2497 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!32701 (bvmul (bvxor h!5418 (bvlshr h!5418 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!32701 (bvlshr x!32701 #b00000000000000000000000000001101)) mask!3777))))) (and (bvslt res!180297 (bvadd mask!3777 #b00000000000000000000000000000001)) (bvsge res!180297 #b00000000000000000000000000000000))))))

(assert (=> d!69695 (= (toIndex!0 k!2497 mask!3777) (bvand (bvxor lt!157496 (bvlshr lt!157496 #b00000000000000000000000000001101)) mask!3777))))

(assert (=> b!327016 d!69695))

(declare-fun b!327189 () Bool)

(declare-fun e!201237 () Bool)

(declare-fun e!201236 () Bool)

(assert (=> b!327189 (= e!201237 e!201236)))

(declare-fun res!180301 () Bool)

(declare-fun lt!157501 () SeekEntryResult!3078)

(assert (=> b!327189 (= res!180301 (and (is-Intermediate!3078 lt!157501) (not (undefined!3890 lt!157501)) (bvslt (x!32695 lt!157501) #b01111111111111111111111111111110) (bvsge (x!32695 lt!157501) #b00000000000000000000000000000000) (bvsge (x!32695 lt!157501) x!1490)))))

(assert (=> b!327189 (=> (not res!180301) (not e!201236))))

(declare-fun b!327190 () Bool)

(declare-fun e!201233 () SeekEntryResult!3078)

(assert (=> b!327190 (= e!201233 (Intermediate!3078 true index!1840 x!1490))))

(declare-fun b!327191 () Bool)

(declare-fun e!201234 () SeekEntryResult!3078)

(assert (=> b!327191 (= e!201233 e!201234)))

(declare-fun c!51075 () Bool)

(declare-fun lt!157502 () (_ BitVec 64))

(assert (=> b!327191 (= c!51075 (or (= lt!157502 k!2497) (= (bvadd lt!157502 lt!157502) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!327192 () Bool)

(assert (=> b!327192 (= e!201237 (bvsge (x!32695 lt!157501) #b01111111111111111111111111111110))))

(declare-fun b!327193 () Bool)

(assert (=> b!327193 (= e!201234 (Intermediate!3078 false index!1840 x!1490))))

(declare-fun d!69697 () Bool)

(assert (=> d!69697 e!201237))

(declare-fun c!51077 () Bool)

(assert (=> d!69697 (= c!51077 (and (is-Intermediate!3078 lt!157501) (undefined!3890 lt!157501)))))

(assert (=> d!69697 (= lt!157501 e!201233)))

(declare-fun c!51076 () Bool)

(assert (=> d!69697 (= c!51076 (bvsge x!1490 #b01111111111111111111111111111110))))

(assert (=> d!69697 (= lt!157502 (select (arr!7936 a!3305) index!1840))))

(assert (=> d!69697 (validMask!0 mask!3777)))

(assert (=> d!69697 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!157501)))

(declare-fun b!327194 () Bool)

(assert (=> b!327194 (and (bvsge (index!14490 lt!157501) #b00000000000000000000000000000000) (bvslt (index!14490 lt!157501) (size!8288 a!3305)))))

(declare-fun res!180300 () Bool)

(assert (=> b!327194 (= res!180300 (= (select (arr!7936 a!3305) (index!14490 lt!157501)) k!2497))))

(declare-fun e!201235 () Bool)

(assert (=> b!327194 (=> res!180300 e!201235)))

(assert (=> b!327194 (= e!201236 e!201235)))

(declare-fun b!327195 () Bool)

(assert (=> b!327195 (and (bvsge (index!14490 lt!157501) #b00000000000000000000000000000000) (bvslt (index!14490 lt!157501) (size!8288 a!3305)))))

(assert (=> b!327195 (= e!201235 (= (select (arr!7936 a!3305) (index!14490 lt!157501)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!327196 () Bool)

(assert (=> b!327196 (= e!201234 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1490 #b00000000000000000000000000000001) (nextIndex!0 index!1840 x!1490 mask!3777) k!2497 a!3305 mask!3777))))

(declare-fun b!327197 () Bool)

(assert (=> b!327197 (and (bvsge (index!14490 lt!157501) #b00000000000000000000000000000000) (bvslt (index!14490 lt!157501) (size!8288 a!3305)))))

(declare-fun res!180302 () Bool)

(assert (=> b!327197 (= res!180302 (= (select (arr!7936 a!3305) (index!14490 lt!157501)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!327197 (=> res!180302 e!201235)))

(assert (= (and d!69697 c!51076) b!327190))

(assert (= (and d!69697 (not c!51076)) b!327191))

(assert (= (and b!327191 c!51075) b!327193))

(assert (= (and b!327191 (not c!51075)) b!327196))

(assert (= (and d!69697 c!51077) b!327192))

(assert (= (and d!69697 (not c!51077)) b!327189))

(assert (= (and b!327189 res!180301) b!327194))

(assert (= (and b!327194 (not res!180300)) b!327197))

(assert (= (and b!327197 (not res!180302)) b!327195))

(declare-fun m!333617 () Bool)

(assert (=> d!69697 m!333617))

(assert (=> d!69697 m!333515))

(declare-fun m!333619 () Bool)

(assert (=> b!327197 m!333619))

(assert (=> b!327195 m!333619))

(declare-fun m!333621 () Bool)

(assert (=> b!327196 m!333621))

(assert (=> b!327196 m!333621))

(declare-fun m!333623 () Bool)

(assert (=> b!327196 m!333623))

(assert (=> b!327194 m!333619))

(assert (=> b!327020 d!69697))

(declare-fun bm!26087 () Bool)

(declare-fun call!26090 () Bool)

(assert (=> bm!26087 (= call!26090 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3305 mask!3777))))

(declare-fun b!327237 () Bool)

(declare-fun e!201266 () Bool)

(declare-fun e!201267 () Bool)

(assert (=> b!327237 (= e!201266 e!201267)))

(declare-fun c!51089 () Bool)

(assert (=> b!327237 (= c!51089 (validKeyInArray!0 (select (arr!7936 a!3305) #b00000000000000000000000000000000)))))

(declare-fun b!327239 () Bool)

(declare-fun e!201265 () Bool)

(assert (=> b!327239 (= e!201267 e!201265)))

(declare-fun lt!157512 () (_ BitVec 64))

(assert (=> b!327239 (= lt!157512 (select (arr!7936 a!3305) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!10165 0))(
  ( (Unit!10166) )
))
(declare-fun lt!157513 () Unit!10165)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!16769 (_ BitVec 64) (_ BitVec 32)) Unit!10165)

(assert (=> b!327239 (= lt!157513 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3305 lt!157512 #b00000000000000000000000000000000))))

(assert (=> b!327239 (arrayContainsKey!0 a!3305 lt!157512 #b00000000000000000000000000000000)))

(declare-fun lt!157511 () Unit!10165)

(assert (=> b!327239 (= lt!157511 lt!157513)))

(declare-fun res!180323 () Bool)

(assert (=> b!327239 (= res!180323 (= (seekEntryOrOpen!0 (select (arr!7936 a!3305) #b00000000000000000000000000000000) a!3305 mask!3777) (Found!3078 #b00000000000000000000000000000000)))))

(assert (=> b!327239 (=> (not res!180323) (not e!201265))))

(declare-fun b!327240 () Bool)

(assert (=> b!327240 (= e!201267 call!26090)))

(declare-fun b!327238 () Bool)

(assert (=> b!327238 (= e!201265 call!26090)))

(declare-fun d!69701 () Bool)

(declare-fun res!180322 () Bool)

(assert (=> d!69701 (=> res!180322 e!201266)))

(assert (=> d!69701 (= res!180322 (bvsge #b00000000000000000000000000000000 (size!8288 a!3305)))))

(assert (=> d!69701 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777) e!201266)))

(assert (= (and d!69701 (not res!180322)) b!327237))

(assert (= (and b!327237 c!51089) b!327239))

(assert (= (and b!327237 (not c!51089)) b!327240))

(assert (= (and b!327239 res!180323) b!327238))

(assert (= (or b!327238 b!327240) bm!26087))

(declare-fun m!333629 () Bool)

(assert (=> bm!26087 m!333629))

(assert (=> b!327237 m!333575))

(assert (=> b!327237 m!333575))

(declare-fun m!333633 () Bool)

(assert (=> b!327237 m!333633))

(assert (=> b!327239 m!333575))

(declare-fun m!333637 () Bool)

(assert (=> b!327239 m!333637))

(declare-fun m!333639 () Bool)

(assert (=> b!327239 m!333639))

(assert (=> b!327239 m!333575))

(declare-fun m!333641 () Bool)

(assert (=> b!327239 m!333641))

(assert (=> b!327023 d!69701))

(declare-fun d!69705 () Bool)

(assert (=> d!69705 (= (validKeyInArray!0 k!2497) (and (not (= k!2497 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2497 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!327017 d!69705))

(push 1)

(assert (not b!327123))

(assert (not b!327196))

(assert (not bm!26087))

(assert (not d!69687))

(assert (not b!327173))

(assert (not b!327237))

(assert (not b!327132))

(assert (not d!69697))

(assert (not d!69683))

(assert (not b!327239))

(check-sat)

(pop 1)

(push 1)

(check-sat)

