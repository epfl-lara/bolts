; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31516 () Bool)

(assert start!31516)

(declare-fun b!315163 () Bool)

(declare-fun e!196201 () Bool)

(declare-fun e!196202 () Bool)

(assert (=> b!315163 (= e!196201 e!196202)))

(declare-fun res!170771 () Bool)

(assert (=> b!315163 (=> (not res!170771) (not e!196202))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun k!2441 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!2765 0))(
  ( (MissingZero!2765 (index!13236 (_ BitVec 32))) (Found!2765 (index!13237 (_ BitVec 32))) (Intermediate!2765 (undefined!3577 Bool) (index!13238 (_ BitVec 32)) (x!31437 (_ BitVec 32))) (Undefined!2765) (MissingVacant!2765 (index!13239 (_ BitVec 32))) )
))
(declare-fun lt!154190 () SeekEntryResult!2765)

(declare-datatypes ((array!16089 0))(
  ( (array!16090 (arr!7614 (Array (_ BitVec 32) (_ BitVec 64))) (size!7966 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16089)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16089 (_ BitVec 32)) SeekEntryResult!2765)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!315163 (= res!170771 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!154190))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!315163 (= lt!154190 (Intermediate!2765 false resIndex!52 resX!52))))

(declare-fun b!315164 () Bool)

(declare-fun res!170777 () Bool)

(assert (=> b!315164 (=> (not res!170777) (not e!196201))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!315164 (= res!170777 (validKeyInArray!0 k!2441))))

(declare-fun b!315165 () Bool)

(declare-fun e!196204 () Bool)

(assert (=> b!315165 (= e!196204 (not false))))

(declare-fun lt!154188 () SeekEntryResult!2765)

(declare-fun lt!154189 () SeekEntryResult!2765)

(assert (=> b!315165 (and (= lt!154188 lt!154189) (is-Intermediate!2765 lt!154189))))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!315165 (= lt!154189 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun b!315166 () Bool)

(assert (=> b!315166 (= e!196202 e!196204)))

(declare-fun res!170776 () Bool)

(assert (=> b!315166 (=> (not res!170776) (not e!196204))))

(assert (=> b!315166 (= res!170776 (and (= lt!154188 lt!154190) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7614 a!3293) index!1781) k!2441)) (= x!1427 resX!52) (not (= resIndex!52 index!1781)) (not (= (select (arr!7614 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7614 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!315166 (= lt!154188 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!315167 () Bool)

(declare-fun res!170774 () Bool)

(assert (=> b!315167 (=> (not res!170774) (not e!196202))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!315167 (= res!170774 (and (= (select (arr!7614 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7966 a!3293))))))

(declare-fun b!315168 () Bool)

(declare-fun res!170773 () Bool)

(assert (=> b!315168 (=> (not res!170773) (not e!196201))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16089 (_ BitVec 32)) Bool)

(assert (=> b!315168 (= res!170773 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!315169 () Bool)

(declare-fun res!170772 () Bool)

(assert (=> b!315169 (=> (not res!170772) (not e!196201))))

(assert (=> b!315169 (= res!170772 (and (= (size!7966 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7966 a!3293))))))

(declare-fun res!170778 () Bool)

(assert (=> start!31516 (=> (not res!170778) (not e!196201))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31516 (= res!170778 (validMask!0 mask!3709))))

(assert (=> start!31516 e!196201))

(declare-fun array_inv!5568 (array!16089) Bool)

(assert (=> start!31516 (array_inv!5568 a!3293)))

(assert (=> start!31516 true))

(declare-fun b!315170 () Bool)

(declare-fun res!170775 () Bool)

(assert (=> b!315170 (=> (not res!170775) (not e!196201))))

(declare-fun arrayContainsKey!0 (array!16089 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!315170 (= res!170775 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!315171 () Bool)

(declare-fun res!170770 () Bool)

(assert (=> b!315171 (=> (not res!170770) (not e!196201))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16089 (_ BitVec 32)) SeekEntryResult!2765)

(assert (=> b!315171 (= res!170770 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2765 i!1240)))))

(assert (= (and start!31516 res!170778) b!315169))

(assert (= (and b!315169 res!170772) b!315164))

(assert (= (and b!315164 res!170777) b!315170))

(assert (= (and b!315170 res!170775) b!315171))

(assert (= (and b!315171 res!170770) b!315168))

(assert (= (and b!315168 res!170773) b!315163))

(assert (= (and b!315163 res!170771) b!315167))

(assert (= (and b!315167 res!170774) b!315166))

(assert (= (and b!315166 res!170776) b!315165))

(declare-fun m!324509 () Bool)

(assert (=> start!31516 m!324509))

(declare-fun m!324511 () Bool)

(assert (=> start!31516 m!324511))

(declare-fun m!324513 () Bool)

(assert (=> b!315167 m!324513))

(declare-fun m!324515 () Bool)

(assert (=> b!315163 m!324515))

(assert (=> b!315163 m!324515))

(declare-fun m!324517 () Bool)

(assert (=> b!315163 m!324517))

(declare-fun m!324519 () Bool)

(assert (=> b!315165 m!324519))

(assert (=> b!315165 m!324519))

(declare-fun m!324521 () Bool)

(assert (=> b!315165 m!324521))

(declare-fun m!324523 () Bool)

(assert (=> b!315166 m!324523))

(declare-fun m!324525 () Bool)

(assert (=> b!315166 m!324525))

(declare-fun m!324527 () Bool)

(assert (=> b!315170 m!324527))

(declare-fun m!324529 () Bool)

(assert (=> b!315164 m!324529))

(declare-fun m!324531 () Bool)

(assert (=> b!315168 m!324531))

(declare-fun m!324533 () Bool)

(assert (=> b!315171 m!324533))

(push 1)

(assert (not b!315168))

(assert (not start!31516))

(assert (not b!315166))

(assert (not b!315171))

(assert (not b!315170))

(assert (not b!315164))

(assert (not b!315165))

(assert (not b!315163))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!68771 () Bool)

(declare-fun res!170789 () Bool)

(declare-fun e!196226 () Bool)

(assert (=> d!68771 (=> res!170789 e!196226)))

(assert (=> d!68771 (= res!170789 (bvsge #b00000000000000000000000000000000 (size!7966 a!3293)))))

(assert (=> d!68771 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709) e!196226)))

(declare-fun b!315200 () Bool)

(declare-fun e!196224 () Bool)

(declare-fun call!25991 () Bool)

(assert (=> b!315200 (= e!196224 call!25991)))

(declare-fun b!315201 () Bool)

(declare-fun e!196225 () Bool)

(assert (=> b!315201 (= e!196225 e!196224)))

(declare-fun lt!154210 () (_ BitVec 64))

(assert (=> b!315201 (= lt!154210 (select (arr!7614 a!3293) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9696 0))(
  ( (Unit!9697) )
))
(declare-fun lt!154211 () Unit!9696)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!16089 (_ BitVec 64) (_ BitVec 32)) Unit!9696)

(assert (=> b!315201 (= lt!154211 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3293 lt!154210 #b00000000000000000000000000000000))))

(assert (=> b!315201 (arrayContainsKey!0 a!3293 lt!154210 #b00000000000000000000000000000000)))

(declare-fun lt!154212 () Unit!9696)

(assert (=> b!315201 (= lt!154212 lt!154211)))

(declare-fun res!170790 () Bool)

(assert (=> b!315201 (= res!170790 (= (seekEntryOrOpen!0 (select (arr!7614 a!3293) #b00000000000000000000000000000000) a!3293 mask!3709) (Found!2765 #b00000000000000000000000000000000)))))

(assert (=> b!315201 (=> (not res!170790) (not e!196224))))

(declare-fun b!315202 () Bool)

(assert (=> b!315202 (= e!196225 call!25991)))

(declare-fun bm!25988 () Bool)

(assert (=> bm!25988 (= call!25991 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3293 mask!3709))))

(declare-fun b!315203 () Bool)

(assert (=> b!315203 (= e!196226 e!196225)))

(declare-fun c!49821 () Bool)

(assert (=> b!315203 (= c!49821 (validKeyInArray!0 (select (arr!7614 a!3293) #b00000000000000000000000000000000)))))

(assert (= (and d!68771 (not res!170789)) b!315203))

(assert (= (and b!315203 c!49821) b!315201))

(assert (= (and b!315203 (not c!49821)) b!315202))

(assert (= (and b!315201 res!170790) b!315200))

(assert (= (or b!315200 b!315202) bm!25988))

(declare-fun m!324547 () Bool)

(assert (=> b!315201 m!324547))

(declare-fun m!324549 () Bool)

(assert (=> b!315201 m!324549))

(declare-fun m!324551 () Bool)

(assert (=> b!315201 m!324551))

(assert (=> b!315201 m!324547))

(declare-fun m!324553 () Bool)

(assert (=> b!315201 m!324553))

(declare-fun m!324555 () Bool)

(assert (=> bm!25988 m!324555))

(assert (=> b!315203 m!324547))

(assert (=> b!315203 m!324547))

(declare-fun m!324557 () Bool)

(assert (=> b!315203 m!324557))

(assert (=> b!315168 d!68771))

(declare-fun e!196298 () SeekEntryResult!2765)

(declare-fun b!315313 () Bool)

(assert (=> b!315313 (= e!196298 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!2441 mask!3709) #b00000000000000000000000000000000 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun b!315314 () Bool)

(declare-fun lt!154249 () SeekEntryResult!2765)

(assert (=> b!315314 (and (bvsge (index!13238 lt!154249) #b00000000000000000000000000000000) (bvslt (index!13238 lt!154249) (size!7966 a!3293)))))

(declare-fun res!170840 () Bool)

(assert (=> b!315314 (= res!170840 (= (select (arr!7614 a!3293) (index!13238 lt!154249)) k!2441))))

(declare-fun e!196295 () Bool)

(assert (=> b!315314 (=> res!170840 e!196295)))

(declare-fun e!196297 () Bool)

(assert (=> b!315314 (= e!196297 e!196295)))

(declare-fun b!315315 () Bool)

(assert (=> b!315315 (= e!196298 (Intermediate!2765 false (toIndex!0 k!2441 mask!3709) #b00000000000000000000000000000000))))

(declare-fun b!315316 () Bool)

(declare-fun e!196294 () SeekEntryResult!2765)

(assert (=> b!315316 (= e!196294 e!196298)))

(declare-fun c!49855 () Bool)

(declare-fun lt!154250 () (_ BitVec 64))

(assert (=> b!315316 (= c!49855 (or (= lt!154250 k!2441) (= (bvadd lt!154250 lt!154250) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!315317 () Bool)

(declare-fun e!196296 () Bool)

(assert (=> b!315317 (= e!196296 e!196297)))

(declare-fun res!170841 () Bool)

(assert (=> b!315317 (= res!170841 (and (is-Intermediate!2765 lt!154249) (not (undefined!3577 lt!154249)) (bvslt (x!31437 lt!154249) #b01111111111111111111111111111110) (bvsge (x!31437 lt!154249) #b00000000000000000000000000000000) (bvsge (x!31437 lt!154249) #b00000000000000000000000000000000)))))

(assert (=> b!315317 (=> (not res!170841) (not e!196297))))

(declare-fun b!315318 () Bool)

(assert (=> b!315318 (= e!196294 (Intermediate!2765 true (toIndex!0 k!2441 mask!3709) #b00000000000000000000000000000000))))

(declare-fun b!315319 () Bool)

(assert (=> b!315319 (= e!196296 (bvsge (x!31437 lt!154249) #b01111111111111111111111111111110))))

(declare-fun d!68773 () Bool)

(assert (=> d!68773 e!196296))

(declare-fun c!49854 () Bool)

(assert (=> d!68773 (= c!49854 (and (is-Intermediate!2765 lt!154249) (undefined!3577 lt!154249)))))

(assert (=> d!68773 (= lt!154249 e!196294)))

(declare-fun c!49853 () Bool)

(assert (=> d!68773 (= c!49853 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!68773 (= lt!154250 (select (arr!7614 a!3293) (toIndex!0 k!2441 mask!3709)))))

(assert (=> d!68773 (validMask!0 mask!3709)))

(assert (=> d!68773 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!154249)))

(declare-fun b!315320 () Bool)

(assert (=> b!315320 (and (bvsge (index!13238 lt!154249) #b00000000000000000000000000000000) (bvslt (index!13238 lt!154249) (size!7966 a!3293)))))

(declare-fun res!170839 () Bool)

(assert (=> b!315320 (= res!170839 (= (select (arr!7614 a!3293) (index!13238 lt!154249)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!315320 (=> res!170839 e!196295)))

(declare-fun b!315321 () Bool)

(assert (=> b!315321 (and (bvsge (index!13238 lt!154249) #b00000000000000000000000000000000) (bvslt (index!13238 lt!154249) (size!7966 a!3293)))))

(assert (=> b!315321 (= e!196295 (= (select (arr!7614 a!3293) (index!13238 lt!154249)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!68773 c!49853) b!315318))

(assert (= (and d!68773 (not c!49853)) b!315316))

(assert (= (and b!315316 c!49855) b!315315))

(assert (= (and b!315316 (not c!49855)) b!315313))

(assert (= (and d!68773 c!49854) b!315319))

(assert (= (and d!68773 (not c!49854)) b!315317))

(assert (= (and b!315317 res!170841) b!315314))

(assert (= (and b!315314 (not res!170840)) b!315320))

(assert (= (and b!315320 (not res!170839)) b!315321))

(assert (=> b!315313 m!324515))

(declare-fun m!324601 () Bool)

(assert (=> b!315313 m!324601))

(assert (=> b!315313 m!324601))

(declare-fun m!324603 () Bool)

(assert (=> b!315313 m!324603))

(declare-fun m!324605 () Bool)

(assert (=> b!315314 m!324605))

(assert (=> b!315320 m!324605))

(assert (=> b!315321 m!324605))

(assert (=> d!68773 m!324515))

(declare-fun m!324607 () Bool)

(assert (=> d!68773 m!324607))

(assert (=> d!68773 m!324509))

(assert (=> b!315163 d!68773))

(declare-fun d!68797 () Bool)

(declare-fun lt!154259 () (_ BitVec 32))

(declare-fun lt!154258 () (_ BitVec 32))

(assert (=> d!68797 (= lt!154259 (bvmul (bvxor lt!154258 (bvlshr lt!154258 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!68797 (= lt!154258 ((_ extract 31 0) (bvand (bvxor k!2441 (bvlshr k!2441 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!68797 (and (bvsge mask!3709 #b00000000000000000000000000000000) (let ((res!170844 (let ((h!5388 ((_ extract 31 0) (bvand (bvxor k!2441 (bvlshr k!2441 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!31444 (bvmul (bvxor h!5388 (bvlshr h!5388 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!31444 (bvlshr x!31444 #b00000000000000000000000000001101)) mask!3709))))) (and (bvslt res!170844 (bvadd mask!3709 #b00000000000000000000000000000001)) (bvsge res!170844 #b00000000000000000000000000000000))))))

(assert (=> d!68797 (= (toIndex!0 k!2441 mask!3709) (bvand (bvxor lt!154259 (bvlshr lt!154259 #b00000000000000000000000000001101)) mask!3709))))

(assert (=> b!315163 d!68797))

(declare-fun d!68801 () Bool)

(assert (=> d!68801 (= (validMask!0 mask!3709) (and (or (= mask!3709 #b00000000000000000000000000000111) (= mask!3709 #b00000000000000000000000000001111) (= mask!3709 #b00000000000000000000000000011111) (= mask!3709 #b00000000000000000000000000111111) (= mask!3709 #b00000000000000000000000001111111) (= mask!3709 #b00000000000000000000000011111111) (= mask!3709 #b00000000000000000000000111111111) (= mask!3709 #b00000000000000000000001111111111) (= mask!3709 #b00000000000000000000011111111111) (= mask!3709 #b00000000000000000000111111111111) (= mask!3709 #b00000000000000000001111111111111) (= mask!3709 #b00000000000000000011111111111111) (= mask!3709 #b00000000000000000111111111111111) (= mask!3709 #b00000000000000001111111111111111) (= mask!3709 #b00000000000000011111111111111111) (= mask!3709 #b00000000000000111111111111111111) (= mask!3709 #b00000000000001111111111111111111) (= mask!3709 #b00000000000011111111111111111111) (= mask!3709 #b00000000000111111111111111111111) (= mask!3709 #b00000000001111111111111111111111) (= mask!3709 #b00000000011111111111111111111111) (= mask!3709 #b00000000111111111111111111111111) (= mask!3709 #b00000001111111111111111111111111) (= mask!3709 #b00000011111111111111111111111111) (= mask!3709 #b00000111111111111111111111111111) (= mask!3709 #b00001111111111111111111111111111) (= mask!3709 #b00011111111111111111111111111111) (= mask!3709 #b00111111111111111111111111111111)) (bvsle mask!3709 #b00111111111111111111111111111111)))))

(assert (=> start!31516 d!68801))

(declare-fun d!68811 () Bool)

(assert (=> d!68811 (= (array_inv!5568 a!3293) (bvsge (size!7966 a!3293) #b00000000000000000000000000000000))))

(assert (=> start!31516 d!68811))

(declare-fun d!68813 () Bool)

(assert (=> d!68813 (= (validKeyInArray!0 k!2441) (and (not (= k!2441 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2441 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!315164 d!68813))

(declare-fun d!68815 () Bool)

(declare-fun res!170851 () Bool)

(declare-fun e!196308 () Bool)

(assert (=> d!68815 (=> res!170851 e!196308)))

(assert (=> d!68815 (= res!170851 (= (select (arr!7614 a!3293) #b00000000000000000000000000000000) k!2441))))

(assert (=> d!68815 (= (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000) e!196308)))

(declare-fun b!315332 () Bool)

(declare-fun e!196309 () Bool)

(assert (=> b!315332 (= e!196308 e!196309)))

(declare-fun res!170852 () Bool)

(assert (=> b!315332 (=> (not res!170852) (not e!196309))))

(assert (=> b!315332 (= res!170852 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7966 a!3293)))))

(declare-fun b!315333 () Bool)

(assert (=> b!315333 (= e!196309 (arrayContainsKey!0 a!3293 k!2441 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!68815 (not res!170851)) b!315332))

(assert (= (and b!315332 res!170852) b!315333))

(assert (=> d!68815 m!324547))

(declare-fun m!324619 () Bool)

(assert (=> b!315333 m!324619))

(assert (=> b!315170 d!68815))

(declare-fun e!196314 () SeekEntryResult!2765)

(declare-fun b!315334 () Bool)

(assert (=> b!315334 (= e!196314 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 index!1781 x!1427 mask!3709) (bvadd #b00000000000000000000000000000001 x!1427) mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun b!315335 () Bool)

(declare-fun lt!154260 () SeekEntryResult!2765)

(assert (=> b!315335 (and (bvsge (index!13238 lt!154260) #b00000000000000000000000000000000) (bvslt (index!13238 lt!154260) (size!7966 a!3293)))))

(declare-fun res!170854 () Bool)

(assert (=> b!315335 (= res!170854 (= (select (arr!7614 a!3293) (index!13238 lt!154260)) k!2441))))

(declare-fun e!196311 () Bool)

(assert (=> b!315335 (=> res!170854 e!196311)))

(declare-fun e!196313 () Bool)

(assert (=> b!315335 (= e!196313 e!196311)))

(declare-fun b!315336 () Bool)

(assert (=> b!315336 (= e!196314 (Intermediate!2765 false (nextIndex!0 index!1781 x!1427 mask!3709) (bvadd #b00000000000000000000000000000001 x!1427)))))

(declare-fun b!315337 () Bool)

(declare-fun e!196310 () SeekEntryResult!2765)

(assert (=> b!315337 (= e!196310 e!196314)))

(declare-fun c!49859 () Bool)

(declare-fun lt!154261 () (_ BitVec 64))

(assert (=> b!315337 (= c!49859 (or (= lt!154261 k!2441) (= (bvadd lt!154261 lt!154261) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!315338 () Bool)

(declare-fun e!196312 () Bool)

(assert (=> b!315338 (= e!196312 e!196313)))

(declare-fun res!170855 () Bool)

(assert (=> b!315338 (= res!170855 (and (is-Intermediate!2765 lt!154260) (not (undefined!3577 lt!154260)) (bvslt (x!31437 lt!154260) #b01111111111111111111111111111110) (bvsge (x!31437 lt!154260) #b00000000000000000000000000000000) (bvsge (x!31437 lt!154260) (bvadd #b00000000000000000000000000000001 x!1427))))))

(assert (=> b!315338 (=> (not res!170855) (not e!196313))))

(declare-fun b!315339 () Bool)

(assert (=> b!315339 (= e!196310 (Intermediate!2765 true (nextIndex!0 index!1781 x!1427 mask!3709) (bvadd #b00000000000000000000000000000001 x!1427)))))

(declare-fun b!315340 () Bool)

(assert (=> b!315340 (= e!196312 (bvsge (x!31437 lt!154260) #b01111111111111111111111111111110))))

(declare-fun d!68817 () Bool)

(assert (=> d!68817 e!196312))

(declare-fun c!49858 () Bool)

(assert (=> d!68817 (= c!49858 (and (is-Intermediate!2765 lt!154260) (undefined!3577 lt!154260)))))

(assert (=> d!68817 (= lt!154260 e!196310)))

(declare-fun c!49857 () Bool)

(assert (=> d!68817 (= c!49857 (bvsge (bvadd #b00000000000000000000000000000001 x!1427) #b01111111111111111111111111111110))))

(assert (=> d!68817 (= lt!154261 (select (arr!7614 a!3293) (nextIndex!0 index!1781 x!1427 mask!3709)))))

(assert (=> d!68817 (validMask!0 mask!3709)))

(assert (=> d!68817 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709) lt!154260)))

(declare-fun b!315341 () Bool)

(assert (=> b!315341 (and (bvsge (index!13238 lt!154260) #b00000000000000000000000000000000) (bvslt (index!13238 lt!154260) (size!7966 a!3293)))))

(declare-fun res!170853 () Bool)

(assert (=> b!315341 (= res!170853 (= (select (arr!7614 a!3293) (index!13238 lt!154260)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!315341 (=> res!170853 e!196311)))

(declare-fun b!315342 () Bool)

(assert (=> b!315342 (and (bvsge (index!13238 lt!154260) #b00000000000000000000000000000000) (bvslt (index!13238 lt!154260) (size!7966 a!3293)))))

(assert (=> b!315342 (= e!196311 (= (select (arr!7614 a!3293) (index!13238 lt!154260)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!68817 c!49857) b!315339))

(assert (= (and d!68817 (not c!49857)) b!315337))

(assert (= (and b!315337 c!49859) b!315336))

(assert (= (and b!315337 (not c!49859)) b!315334))

(assert (= (and d!68817 c!49858) b!315340))

(assert (= (and d!68817 (not c!49858)) b!315338))

(assert (= (and b!315338 res!170855) b!315335))

(assert (= (and b!315335 (not res!170854)) b!315341))

(assert (= (and b!315341 (not res!170853)) b!315342))

(assert (=> b!315334 m!324519))

(declare-fun m!324621 () Bool)

(assert (=> b!315334 m!324621))

(assert (=> b!315334 m!324621))

(declare-fun m!324623 () Bool)

(assert (=> b!315334 m!324623))

(declare-fun m!324625 () Bool)

(assert (=> b!315335 m!324625))

(assert (=> b!315341 m!324625))

(assert (=> b!315342 m!324625))

(assert (=> d!68817 m!324519))

(declare-fun m!324627 () Bool)

(assert (=> d!68817 m!324627))

(assert (=> d!68817 m!324509))

(assert (=> b!315165 d!68817))

(declare-fun d!68819 () Bool)

(declare-fun lt!154264 () (_ BitVec 32))

(assert (=> d!68819 (and (bvsge lt!154264 #b00000000000000000000000000000000) (bvslt lt!154264 (bvadd mask!3709 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!68819 (= lt!154264 (choose!52 index!1781 x!1427 mask!3709))))

(assert (=> d!68819 (validMask!0 mask!3709)))

(assert (=> d!68819 (= (nextIndex!0 index!1781 x!1427 mask!3709) lt!154264)))

(declare-fun bs!11025 () Bool)

(assert (= bs!11025 d!68819))

(declare-fun m!324629 () Bool)

(assert (=> bs!11025 m!324629))

(assert (=> bs!11025 m!324509))

(assert (=> b!315165 d!68819))

(declare-fun e!196319 () SeekEntryResult!2765)

(declare-fun b!315343 () Bool)

(assert (=> b!315343 (= e!196319 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1427 #b00000000000000000000000000000001) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun b!315344 () Bool)

(declare-fun lt!154265 () SeekEntryResult!2765)

(assert (=> b!315344 (and (bvsge (index!13238 lt!154265) #b00000000000000000000000000000000) (bvslt (index!13238 lt!154265) (size!7966 a!3293)))))

(declare-fun res!170857 () Bool)

(assert (=> b!315344 (= res!170857 (= (select (arr!7614 a!3293) (index!13238 lt!154265)) k!2441))))

(declare-fun e!196316 () Bool)

(assert (=> b!315344 (=> res!170857 e!196316)))

(declare-fun e!196318 () Bool)

(assert (=> b!315344 (= e!196318 e!196316)))

(declare-fun b!315345 () Bool)

(assert (=> b!315345 (= e!196319 (Intermediate!2765 false index!1781 x!1427))))

(declare-fun b!315346 () Bool)

(declare-fun e!196315 () SeekEntryResult!2765)

(assert (=> b!315346 (= e!196315 e!196319)))

(declare-fun c!49862 () Bool)

(declare-fun lt!154266 () (_ BitVec 64))

(assert (=> b!315346 (= c!49862 (or (= lt!154266 k!2441) (= (bvadd lt!154266 lt!154266) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!315347 () Bool)

(declare-fun e!196317 () Bool)

(assert (=> b!315347 (= e!196317 e!196318)))

(declare-fun res!170858 () Bool)

(assert (=> b!315347 (= res!170858 (and (is-Intermediate!2765 lt!154265) (not (undefined!3577 lt!154265)) (bvslt (x!31437 lt!154265) #b01111111111111111111111111111110) (bvsge (x!31437 lt!154265) #b00000000000000000000000000000000) (bvsge (x!31437 lt!154265) x!1427)))))

(assert (=> b!315347 (=> (not res!170858) (not e!196318))))

(declare-fun b!315348 () Bool)

(assert (=> b!315348 (= e!196315 (Intermediate!2765 true index!1781 x!1427))))

(declare-fun b!315349 () Bool)

(assert (=> b!315349 (= e!196317 (bvsge (x!31437 lt!154265) #b01111111111111111111111111111110))))

(declare-fun d!68821 () Bool)

(assert (=> d!68821 e!196317))

(declare-fun c!49861 () Bool)

(assert (=> d!68821 (= c!49861 (and (is-Intermediate!2765 lt!154265) (undefined!3577 lt!154265)))))

(assert (=> d!68821 (= lt!154265 e!196315)))

(declare-fun c!49860 () Bool)

(assert (=> d!68821 (= c!49860 (bvsge x!1427 #b01111111111111111111111111111110))))

(assert (=> d!68821 (= lt!154266 (select (arr!7614 a!3293) index!1781))))

(assert (=> d!68821 (validMask!0 mask!3709)))

(assert (=> d!68821 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!154265)))

(declare-fun b!315350 () Bool)

(assert (=> b!315350 (and (bvsge (index!13238 lt!154265) #b00000000000000000000000000000000) (bvslt (index!13238 lt!154265) (size!7966 a!3293)))))

(declare-fun res!170856 () Bool)

(assert (=> b!315350 (= res!170856 (= (select (arr!7614 a!3293) (index!13238 lt!154265)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!315350 (=> res!170856 e!196316)))

(declare-fun b!315351 () Bool)

(assert (=> b!315351 (and (bvsge (index!13238 lt!154265) #b00000000000000000000000000000000) (bvslt (index!13238 lt!154265) (size!7966 a!3293)))))

(assert (=> b!315351 (= e!196316 (= (select (arr!7614 a!3293) (index!13238 lt!154265)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!68821 c!49860) b!315348))

(assert (= (and d!68821 (not c!49860)) b!315346))

(assert (= (and b!315346 c!49862) b!315345))

(assert (= (and b!315346 (not c!49862)) b!315343))

(assert (= (and d!68821 c!49861) b!315349))

(assert (= (and d!68821 (not c!49861)) b!315347))

(assert (= (and b!315347 res!170858) b!315344))

(assert (= (and b!315344 (not res!170857)) b!315350))

(assert (= (and b!315350 (not res!170856)) b!315351))

(assert (=> b!315343 m!324519))

(assert (=> b!315343 m!324519))

(declare-fun m!324631 () Bool)

(assert (=> b!315343 m!324631))

(declare-fun m!324633 () Bool)

(assert (=> b!315344 m!324633))

(assert (=> b!315350 m!324633))

(assert (=> b!315351 m!324633))

(assert (=> d!68821 m!324523))

(assert (=> d!68821 m!324509))

(assert (=> b!315166 d!68821))

(declare-fun b!315409 () Bool)

(declare-fun e!196351 () SeekEntryResult!2765)

(declare-fun e!196349 () SeekEntryResult!2765)

(assert (=> b!315409 (= e!196351 e!196349)))

(declare-fun lt!154295 () (_ BitVec 64))

(declare-fun lt!154293 () SeekEntryResult!2765)

(assert (=> b!315409 (= lt!154295 (select (arr!7614 a!3293) (index!13238 lt!154293)))))

(declare-fun c!49892 () Bool)

(assert (=> b!315409 (= c!49892 (= lt!154295 k!2441))))

(declare-fun b!315410 () Bool)

(assert (=> b!315410 (= e!196349 (Found!2765 (index!13238 lt!154293)))))

(declare-fun d!68823 () Bool)

(declare-fun lt!154294 () SeekEntryResult!2765)

(assert (=> d!68823 (and (or (is-Undefined!2765 lt!154294) (not (is-Found!2765 lt!154294)) (and (bvsge (index!13237 lt!154294) #b00000000000000000000000000000000) (bvslt (index!13237 lt!154294) (size!7966 a!3293)))) (or (is-Undefined!2765 lt!154294) (is-Found!2765 lt!154294) (not (is-MissingZero!2765 lt!154294)) (and (bvsge (index!13236 lt!154294) #b00000000000000000000000000000000) (bvslt (index!13236 lt!154294) (size!7966 a!3293)))) (or (is-Undefined!2765 lt!154294) (is-Found!2765 lt!154294) (is-MissingZero!2765 lt!154294) (not (is-MissingVacant!2765 lt!154294)) (and (bvsge (index!13239 lt!154294) #b00000000000000000000000000000000) (bvslt (index!13239 lt!154294) (size!7966 a!3293)))) (or (is-Undefined!2765 lt!154294) (ite (is-Found!2765 lt!154294) (= (select (arr!7614 a!3293) (index!13237 lt!154294)) k!2441) (ite (is-MissingZero!2765 lt!154294) (= (select (arr!7614 a!3293) (index!13236 lt!154294)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!2765 lt!154294) (= (select (arr!7614 a!3293) (index!13239 lt!154294)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!68823 (= lt!154294 e!196351)))

(declare-fun c!49891 () Bool)

(assert (=> d!68823 (= c!49891 (and (is-Intermediate!2765 lt!154293) (undefined!3577 lt!154293)))))

(assert (=> d!68823 (= lt!154293 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709))))

(assert (=> d!68823 (validMask!0 mask!3709)))

(assert (=> d!68823 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) lt!154294)))

(declare-fun b!315411 () Bool)

(assert (=> b!315411 (= e!196351 Undefined!2765)))

(declare-fun b!315412 () Bool)

(declare-fun e!196350 () SeekEntryResult!2765)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16089 (_ BitVec 32)) SeekEntryResult!2765)

(assert (=> b!315412 (= e!196350 (seekKeyOrZeroReturnVacant!0 (x!31437 lt!154293) (index!13238 lt!154293) (index!13238 lt!154293) k!2441 a!3293 mask!3709))))

(declare-fun b!315413 () Bool)

(declare-fun c!49890 () Bool)

(assert (=> b!315413 (= c!49890 (= lt!154295 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!315413 (= e!196349 e!196350)))

(declare-fun b!315414 () Bool)

(assert (=> b!315414 (= e!196350 (MissingZero!2765 (index!13238 lt!154293)))))

(assert (= (and d!68823 c!49891) b!315411))

(assert (= (and d!68823 (not c!49891)) b!315409))

(assert (= (and b!315409 c!49892) b!315410))

(assert (= (and b!315409 (not c!49892)) b!315413))

(assert (= (and b!315413 c!49890) b!315414))

(assert (= (and b!315413 (not c!49890)) b!315412))

(declare-fun m!324663 () Bool)

(assert (=> b!315409 m!324663))

(declare-fun m!324665 () Bool)

(assert (=> d!68823 m!324665))

(assert (=> d!68823 m!324515))

(assert (=> d!68823 m!324517))

(declare-fun m!324667 () Bool)

(assert (=> d!68823 m!324667))

(assert (=> d!68823 m!324509))

(declare-fun m!324669 () Bool)

(assert (=> d!68823 m!324669))

(assert (=> d!68823 m!324515))

(declare-fun m!324671 () Bool)

(assert (=> b!315412 m!324671))

(assert (=> b!315171 d!68823))

(push 1)

