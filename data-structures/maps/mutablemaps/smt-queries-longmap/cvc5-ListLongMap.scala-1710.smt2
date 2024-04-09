; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31446 () Bool)

(assert start!31446)

(declare-fun b!314704 () Bool)

(declare-fun res!170477 () Bool)

(declare-fun e!195958 () Bool)

(assert (=> b!314704 (=> (not res!170477) (not e!195958))))

(declare-datatypes ((array!16070 0))(
  ( (array!16071 (arr!7606 (Array (_ BitVec 32) (_ BitVec 64))) (size!7958 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16070)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!16070 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!314704 (= res!170477 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!314705 () Bool)

(declare-fun e!195960 () Bool)

(assert (=> b!314705 (= e!195958 e!195960)))

(declare-fun res!170476 () Bool)

(assert (=> b!314705 (=> (not res!170476) (not e!195960))))

(declare-datatypes ((SeekEntryResult!2757 0))(
  ( (MissingZero!2757 (index!13204 (_ BitVec 32))) (Found!2757 (index!13205 (_ BitVec 32))) (Intermediate!2757 (undefined!3569 Bool) (index!13206 (_ BitVec 32)) (x!31404 (_ BitVec 32))) (Undefined!2757) (MissingVacant!2757 (index!13207 (_ BitVec 32))) )
))
(declare-fun lt!154012 () SeekEntryResult!2757)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16070 (_ BitVec 32)) SeekEntryResult!2757)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!314705 (= res!170476 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!154012))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!314705 (= lt!154012 (Intermediate!2757 false resIndex!52 resX!52))))

(declare-fun res!170471 () Bool)

(assert (=> start!31446 (=> (not res!170471) (not e!195958))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31446 (= res!170471 (validMask!0 mask!3709))))

(assert (=> start!31446 e!195958))

(declare-fun array_inv!5560 (array!16070) Bool)

(assert (=> start!31446 (array_inv!5560 a!3293)))

(assert (=> start!31446 true))

(declare-fun b!314706 () Bool)

(declare-fun res!170475 () Bool)

(assert (=> b!314706 (=> (not res!170475) (not e!195958))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!314706 (= res!170475 (and (= (size!7958 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7958 a!3293))))))

(declare-fun b!314707 () Bool)

(declare-fun res!170478 () Bool)

(assert (=> b!314707 (=> (not res!170478) (not e!195958))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16070 (_ BitVec 32)) SeekEntryResult!2757)

(assert (=> b!314707 (= res!170478 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2757 i!1240)))))

(declare-fun b!314708 () Bool)

(declare-fun res!170474 () Bool)

(assert (=> b!314708 (=> (not res!170474) (not e!195960))))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!314708 (= res!170474 (and (= (select (arr!7606 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7958 a!3293))))))

(declare-fun e!195959 () Bool)

(declare-fun b!314709 () Bool)

(declare-fun lt!154013 () SeekEntryResult!2757)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!314709 (= e!195959 (not (= lt!154013 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))))

(declare-fun b!314710 () Bool)

(declare-fun res!170470 () Bool)

(assert (=> b!314710 (=> (not res!170470) (not e!195958))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16070 (_ BitVec 32)) Bool)

(assert (=> b!314710 (= res!170470 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!314711 () Bool)

(assert (=> b!314711 (= e!195960 e!195959)))

(declare-fun res!170473 () Bool)

(assert (=> b!314711 (=> (not res!170473) (not e!195959))))

(assert (=> b!314711 (= res!170473 (and (= lt!154013 lt!154012) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7606 a!3293) index!1781) k!2441)) (= x!1427 resX!52) (not (= resIndex!52 index!1781)) (not (= (select (arr!7606 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7606 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!314711 (= lt!154013 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!314712 () Bool)

(declare-fun res!170472 () Bool)

(assert (=> b!314712 (=> (not res!170472) (not e!195958))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!314712 (= res!170472 (validKeyInArray!0 k!2441))))

(assert (= (and start!31446 res!170471) b!314706))

(assert (= (and b!314706 res!170475) b!314712))

(assert (= (and b!314712 res!170472) b!314704))

(assert (= (and b!314704 res!170477) b!314707))

(assert (= (and b!314707 res!170478) b!314710))

(assert (= (and b!314710 res!170470) b!314705))

(assert (= (and b!314705 res!170476) b!314708))

(assert (= (and b!314708 res!170474) b!314711))

(assert (= (and b!314711 res!170473) b!314709))

(declare-fun m!324163 () Bool)

(assert (=> b!314708 m!324163))

(declare-fun m!324165 () Bool)

(assert (=> b!314707 m!324165))

(declare-fun m!324167 () Bool)

(assert (=> b!314710 m!324167))

(declare-fun m!324169 () Bool)

(assert (=> b!314711 m!324169))

(declare-fun m!324171 () Bool)

(assert (=> b!314711 m!324171))

(declare-fun m!324173 () Bool)

(assert (=> start!31446 m!324173))

(declare-fun m!324175 () Bool)

(assert (=> start!31446 m!324175))

(declare-fun m!324177 () Bool)

(assert (=> b!314704 m!324177))

(declare-fun m!324179 () Bool)

(assert (=> b!314709 m!324179))

(assert (=> b!314709 m!324179))

(declare-fun m!324181 () Bool)

(assert (=> b!314709 m!324181))

(declare-fun m!324183 () Bool)

(assert (=> b!314705 m!324183))

(assert (=> b!314705 m!324183))

(declare-fun m!324185 () Bool)

(assert (=> b!314705 m!324185))

(declare-fun m!324187 () Bool)

(assert (=> b!314712 m!324187))

(push 1)

(assert (not b!314711))

(assert (not b!314705))

(assert (not b!314707))

(assert (not b!314709))

(assert (not b!314710))

(assert (not start!31446))

(assert (not b!314712))

(assert (not b!314704))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!68697 () Bool)

(declare-fun res!170537 () Bool)

(declare-fun e!195990 () Bool)

(assert (=> d!68697 (=> res!170537 e!195990)))

(assert (=> d!68697 (= res!170537 (= (select (arr!7606 a!3293) #b00000000000000000000000000000000) k!2441))))

(assert (=> d!68697 (= (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000) e!195990)))

(declare-fun b!314771 () Bool)

(declare-fun e!195991 () Bool)

(assert (=> b!314771 (= e!195990 e!195991)))

(declare-fun res!170538 () Bool)

(assert (=> b!314771 (=> (not res!170538) (not e!195991))))

(assert (=> b!314771 (= res!170538 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7958 a!3293)))))

(declare-fun b!314772 () Bool)

(assert (=> b!314772 (= e!195991 (arrayContainsKey!0 a!3293 k!2441 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!68697 (not res!170537)) b!314771))

(assert (= (and b!314771 res!170538) b!314772))

(declare-fun m!324241 () Bool)

(assert (=> d!68697 m!324241))

(declare-fun m!324243 () Bool)

(assert (=> b!314772 m!324243))

(assert (=> b!314704 d!68697))

(declare-fun d!68699 () Bool)

(assert (=> d!68699 (= (validMask!0 mask!3709) (and (or (= mask!3709 #b00000000000000000000000000000111) (= mask!3709 #b00000000000000000000000000001111) (= mask!3709 #b00000000000000000000000000011111) (= mask!3709 #b00000000000000000000000000111111) (= mask!3709 #b00000000000000000000000001111111) (= mask!3709 #b00000000000000000000000011111111) (= mask!3709 #b00000000000000000000000111111111) (= mask!3709 #b00000000000000000000001111111111) (= mask!3709 #b00000000000000000000011111111111) (= mask!3709 #b00000000000000000000111111111111) (= mask!3709 #b00000000000000000001111111111111) (= mask!3709 #b00000000000000000011111111111111) (= mask!3709 #b00000000000000000111111111111111) (= mask!3709 #b00000000000000001111111111111111) (= mask!3709 #b00000000000000011111111111111111) (= mask!3709 #b00000000000000111111111111111111) (= mask!3709 #b00000000000001111111111111111111) (= mask!3709 #b00000000000011111111111111111111) (= mask!3709 #b00000000000111111111111111111111) (= mask!3709 #b00000000001111111111111111111111) (= mask!3709 #b00000000011111111111111111111111) (= mask!3709 #b00000000111111111111111111111111) (= mask!3709 #b00000001111111111111111111111111) (= mask!3709 #b00000011111111111111111111111111) (= mask!3709 #b00000111111111111111111111111111) (= mask!3709 #b00001111111111111111111111111111) (= mask!3709 #b00011111111111111111111111111111) (= mask!3709 #b00111111111111111111111111111111)) (bvsle mask!3709 #b00111111111111111111111111111111)))))

(assert (=> start!31446 d!68699))

(declare-fun d!68707 () Bool)

(assert (=> d!68707 (= (array_inv!5560 a!3293) (bvsge (size!7958 a!3293) #b00000000000000000000000000000000))))

(assert (=> start!31446 d!68707))

(declare-fun b!314808 () Bool)

(declare-fun e!196015 () Bool)

(declare-fun call!25979 () Bool)

(assert (=> b!314808 (= e!196015 call!25979)))

(declare-fun b!314809 () Bool)

(declare-fun e!196014 () Bool)

(declare-fun e!196013 () Bool)

(assert (=> b!314809 (= e!196014 e!196013)))

(declare-fun c!49742 () Bool)

(assert (=> b!314809 (= c!49742 (validKeyInArray!0 (select (arr!7606 a!3293) #b00000000000000000000000000000000)))))

(declare-fun d!68709 () Bool)

(declare-fun res!170552 () Bool)

(assert (=> d!68709 (=> res!170552 e!196014)))

(assert (=> d!68709 (= res!170552 (bvsge #b00000000000000000000000000000000 (size!7958 a!3293)))))

(assert (=> d!68709 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709) e!196014)))

(declare-fun bm!25976 () Bool)

(assert (=> bm!25976 (= call!25979 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3293 mask!3709))))

(declare-fun b!314810 () Bool)

(assert (=> b!314810 (= e!196013 e!196015)))

(declare-fun lt!154042 () (_ BitVec 64))

(assert (=> b!314810 (= lt!154042 (select (arr!7606 a!3293) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9688 0))(
  ( (Unit!9689) )
))
(declare-fun lt!154041 () Unit!9688)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!16070 (_ BitVec 64) (_ BitVec 32)) Unit!9688)

(assert (=> b!314810 (= lt!154041 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3293 lt!154042 #b00000000000000000000000000000000))))

(assert (=> b!314810 (arrayContainsKey!0 a!3293 lt!154042 #b00000000000000000000000000000000)))

(declare-fun lt!154043 () Unit!9688)

(assert (=> b!314810 (= lt!154043 lt!154041)))

(declare-fun res!170553 () Bool)

(assert (=> b!314810 (= res!170553 (= (seekEntryOrOpen!0 (select (arr!7606 a!3293) #b00000000000000000000000000000000) a!3293 mask!3709) (Found!2757 #b00000000000000000000000000000000)))))

(assert (=> b!314810 (=> (not res!170553) (not e!196015))))

(declare-fun b!314811 () Bool)

(assert (=> b!314811 (= e!196013 call!25979)))

(assert (= (and d!68709 (not res!170552)) b!314809))

(assert (= (and b!314809 c!49742) b!314810))

(assert (= (and b!314809 (not c!49742)) b!314811))

(assert (= (and b!314810 res!170553) b!314808))

(assert (= (or b!314808 b!314811) bm!25976))

(assert (=> b!314809 m!324241))

(assert (=> b!314809 m!324241))

(declare-fun m!324255 () Bool)

(assert (=> b!314809 m!324255))

(declare-fun m!324257 () Bool)

(assert (=> bm!25976 m!324257))

(assert (=> b!314810 m!324241))

(declare-fun m!324259 () Bool)

(assert (=> b!314810 m!324259))

(declare-fun m!324261 () Bool)

(assert (=> b!314810 m!324261))

(assert (=> b!314810 m!324241))

(declare-fun m!324263 () Bool)

(assert (=> b!314810 m!324263))

(assert (=> b!314710 d!68709))

(declare-fun b!314869 () Bool)

(declare-fun lt!154074 () SeekEntryResult!2757)

(assert (=> b!314869 (and (bvsge (index!13206 lt!154074) #b00000000000000000000000000000000) (bvslt (index!13206 lt!154074) (size!7958 a!3293)))))

(declare-fun e!196055 () Bool)

(assert (=> b!314869 (= e!196055 (= (select (arr!7606 a!3293) (index!13206 lt!154074)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!314870 () Bool)

(declare-fun e!196058 () Bool)

(declare-fun e!196057 () Bool)

(assert (=> b!314870 (= e!196058 e!196057)))

(declare-fun res!170582 () Bool)

(assert (=> b!314870 (= res!170582 (and (is-Intermediate!2757 lt!154074) (not (undefined!3569 lt!154074)) (bvslt (x!31404 lt!154074) #b01111111111111111111111111111110) (bvsge (x!31404 lt!154074) #b00000000000000000000000000000000) (bvsge (x!31404 lt!154074) #b00000000000000000000000000000000)))))

(assert (=> b!314870 (=> (not res!170582) (not e!196057))))

(declare-fun b!314871 () Bool)

(assert (=> b!314871 (= e!196058 (bvsge (x!31404 lt!154074) #b01111111111111111111111111111110))))

(declare-fun b!314872 () Bool)

(declare-fun e!196059 () SeekEntryResult!2757)

(declare-fun e!196056 () SeekEntryResult!2757)

(assert (=> b!314872 (= e!196059 e!196056)))

(declare-fun c!49758 () Bool)

(declare-fun lt!154075 () (_ BitVec 64))

(assert (=> b!314872 (= c!49758 (or (= lt!154075 k!2441) (= (bvadd lt!154075 lt!154075) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!68719 () Bool)

(assert (=> d!68719 e!196058))

(declare-fun c!49759 () Bool)

(assert (=> d!68719 (= c!49759 (and (is-Intermediate!2757 lt!154074) (undefined!3569 lt!154074)))))

(assert (=> d!68719 (= lt!154074 e!196059)))

(declare-fun c!49760 () Bool)

(assert (=> d!68719 (= c!49760 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!68719 (= lt!154075 (select (arr!7606 a!3293) (toIndex!0 k!2441 mask!3709)))))

(assert (=> d!68719 (validMask!0 mask!3709)))

(assert (=> d!68719 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!154074)))

(declare-fun b!314873 () Bool)

(assert (=> b!314873 (= e!196059 (Intermediate!2757 true (toIndex!0 k!2441 mask!3709) #b00000000000000000000000000000000))))

(declare-fun b!314874 () Bool)

(assert (=> b!314874 (= e!196056 (Intermediate!2757 false (toIndex!0 k!2441 mask!3709) #b00000000000000000000000000000000))))

(declare-fun b!314875 () Bool)

(assert (=> b!314875 (= e!196056 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!2441 mask!3709) #b00000000000000000000000000000000 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun b!314876 () Bool)

(assert (=> b!314876 (and (bvsge (index!13206 lt!154074) #b00000000000000000000000000000000) (bvslt (index!13206 lt!154074) (size!7958 a!3293)))))

(declare-fun res!170583 () Bool)

(assert (=> b!314876 (= res!170583 (= (select (arr!7606 a!3293) (index!13206 lt!154074)) k!2441))))

(assert (=> b!314876 (=> res!170583 e!196055)))

(assert (=> b!314876 (= e!196057 e!196055)))

(declare-fun b!314877 () Bool)

(assert (=> b!314877 (and (bvsge (index!13206 lt!154074) #b00000000000000000000000000000000) (bvslt (index!13206 lt!154074) (size!7958 a!3293)))))

(declare-fun res!170584 () Bool)

(assert (=> b!314877 (= res!170584 (= (select (arr!7606 a!3293) (index!13206 lt!154074)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!314877 (=> res!170584 e!196055)))

(assert (= (and d!68719 c!49760) b!314873))

(assert (= (and d!68719 (not c!49760)) b!314872))

(assert (= (and b!314872 c!49758) b!314874))

(assert (= (and b!314872 (not c!49758)) b!314875))

(assert (= (and d!68719 c!49759) b!314871))

(assert (= (and d!68719 (not c!49759)) b!314870))

(assert (= (and b!314870 res!170582) b!314876))

(assert (= (and b!314876 (not res!170583)) b!314877))

(assert (= (and b!314877 (not res!170584)) b!314869))

(declare-fun m!324299 () Bool)

(assert (=> b!314877 m!324299))

(assert (=> b!314875 m!324183))

(declare-fun m!324301 () Bool)

(assert (=> b!314875 m!324301))

(assert (=> b!314875 m!324301))

(declare-fun m!324303 () Bool)

(assert (=> b!314875 m!324303))

(assert (=> b!314876 m!324299))

(assert (=> d!68719 m!324183))

(declare-fun m!324305 () Bool)

(assert (=> d!68719 m!324305))

(assert (=> d!68719 m!324173))

(assert (=> b!314869 m!324299))

(assert (=> b!314705 d!68719))

(declare-fun d!68731 () Bool)

(declare-fun lt!154085 () (_ BitVec 32))

(declare-fun lt!154084 () (_ BitVec 32))

(assert (=> d!68731 (= lt!154085 (bvmul (bvxor lt!154084 (bvlshr lt!154084 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!68731 (= lt!154084 ((_ extract 31 0) (bvand (bvxor k!2441 (bvlshr k!2441 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!68731 (and (bvsge mask!3709 #b00000000000000000000000000000000) (let ((res!170585 (let ((h!5385 ((_ extract 31 0) (bvand (bvxor k!2441 (bvlshr k!2441 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!31412 (bvmul (bvxor h!5385 (bvlshr h!5385 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!31412 (bvlshr x!31412 #b00000000000000000000000000001101)) mask!3709))))) (and (bvslt res!170585 (bvadd mask!3709 #b00000000000000000000000000000001)) (bvsge res!170585 #b00000000000000000000000000000000))))))

(assert (=> d!68731 (= (toIndex!0 k!2441 mask!3709) (bvand (bvxor lt!154085 (bvlshr lt!154085 #b00000000000000000000000000001101)) mask!3709))))

(assert (=> b!314705 d!68731))

(declare-fun b!314905 () Bool)

(declare-fun lt!154088 () SeekEntryResult!2757)

(assert (=> b!314905 (and (bvsge (index!13206 lt!154088) #b00000000000000000000000000000000) (bvslt (index!13206 lt!154088) (size!7958 a!3293)))))

(declare-fun e!196075 () Bool)

(assert (=> b!314905 (= e!196075 (= (select (arr!7606 a!3293) (index!13206 lt!154088)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!314906 () Bool)

(declare-fun e!196078 () Bool)

(declare-fun e!196077 () Bool)

(assert (=> b!314906 (= e!196078 e!196077)))

(declare-fun res!170595 () Bool)

(assert (=> b!314906 (= res!170595 (and (is-Intermediate!2757 lt!154088) (not (undefined!3569 lt!154088)) (bvslt (x!31404 lt!154088) #b01111111111111111111111111111110) (bvsge (x!31404 lt!154088) #b00000000000000000000000000000000) (bvsge (x!31404 lt!154088) (bvadd #b00000000000000000000000000000001 x!1427))))))

(assert (=> b!314906 (=> (not res!170595) (not e!196077))))

(declare-fun b!314907 () Bool)

(assert (=> b!314907 (= e!196078 (bvsge (x!31404 lt!154088) #b01111111111111111111111111111110))))

(declare-fun b!314908 () Bool)

(declare-fun e!196079 () SeekEntryResult!2757)

(declare-fun e!196076 () SeekEntryResult!2757)

(assert (=> b!314908 (= e!196079 e!196076)))

(declare-fun c!49770 () Bool)

(declare-fun lt!154089 () (_ BitVec 64))

(assert (=> b!314908 (= c!49770 (or (= lt!154089 k!2441) (= (bvadd lt!154089 lt!154089) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!68733 () Bool)

(assert (=> d!68733 e!196078))

(declare-fun c!49771 () Bool)

(assert (=> d!68733 (= c!49771 (and (is-Intermediate!2757 lt!154088) (undefined!3569 lt!154088)))))

(assert (=> d!68733 (= lt!154088 e!196079)))

(declare-fun c!49772 () Bool)

(assert (=> d!68733 (= c!49772 (bvsge (bvadd #b00000000000000000000000000000001 x!1427) #b01111111111111111111111111111110))))

(assert (=> d!68733 (= lt!154089 (select (arr!7606 a!3293) (nextIndex!0 index!1781 x!1427 mask!3709)))))

(assert (=> d!68733 (validMask!0 mask!3709)))

(assert (=> d!68733 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709) lt!154088)))

(declare-fun b!314909 () Bool)

(assert (=> b!314909 (= e!196079 (Intermediate!2757 true (nextIndex!0 index!1781 x!1427 mask!3709) (bvadd #b00000000000000000000000000000001 x!1427)))))

(declare-fun b!314910 () Bool)

(assert (=> b!314910 (= e!196076 (Intermediate!2757 false (nextIndex!0 index!1781 x!1427 mask!3709) (bvadd #b00000000000000000000000000000001 x!1427)))))

(declare-fun b!314911 () Bool)

(assert (=> b!314911 (= e!196076 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 index!1781 x!1427 mask!3709) (bvadd #b00000000000000000000000000000001 x!1427) mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun b!314912 () Bool)

(assert (=> b!314912 (and (bvsge (index!13206 lt!154088) #b00000000000000000000000000000000) (bvslt (index!13206 lt!154088) (size!7958 a!3293)))))

(declare-fun res!170596 () Bool)

(assert (=> b!314912 (= res!170596 (= (select (arr!7606 a!3293) (index!13206 lt!154088)) k!2441))))

(assert (=> b!314912 (=> res!170596 e!196075)))

(assert (=> b!314912 (= e!196077 e!196075)))

(declare-fun b!314913 () Bool)

(assert (=> b!314913 (and (bvsge (index!13206 lt!154088) #b00000000000000000000000000000000) (bvslt (index!13206 lt!154088) (size!7958 a!3293)))))

(declare-fun res!170597 () Bool)

(assert (=> b!314913 (= res!170597 (= (select (arr!7606 a!3293) (index!13206 lt!154088)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!314913 (=> res!170597 e!196075)))

(assert (= (and d!68733 c!49772) b!314909))

(assert (= (and d!68733 (not c!49772)) b!314908))

(assert (= (and b!314908 c!49770) b!314910))

(assert (= (and b!314908 (not c!49770)) b!314911))

(assert (= (and d!68733 c!49771) b!314907))

(assert (= (and d!68733 (not c!49771)) b!314906))

(assert (= (and b!314906 res!170595) b!314912))

(assert (= (and b!314912 (not res!170596)) b!314913))

(assert (= (and b!314913 (not res!170597)) b!314905))

(declare-fun m!324315 () Bool)

(assert (=> b!314913 m!324315))

(assert (=> b!314911 m!324179))

(declare-fun m!324317 () Bool)

(assert (=> b!314911 m!324317))

(assert (=> b!314911 m!324317))

(declare-fun m!324319 () Bool)

(assert (=> b!314911 m!324319))

(assert (=> b!314912 m!324315))

(assert (=> d!68733 m!324179))

(declare-fun m!324321 () Bool)

(assert (=> d!68733 m!324321))

(assert (=> d!68733 m!324173))

(assert (=> b!314905 m!324315))

(assert (=> b!314709 d!68733))

(declare-fun d!68737 () Bool)

(declare-fun lt!154092 () (_ BitVec 32))

(assert (=> d!68737 (and (bvsge lt!154092 #b00000000000000000000000000000000) (bvslt lt!154092 (bvadd mask!3709 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!68737 (= lt!154092 (choose!52 index!1781 x!1427 mask!3709))))

(assert (=> d!68737 (validMask!0 mask!3709)))

(assert (=> d!68737 (= (nextIndex!0 index!1781 x!1427 mask!3709) lt!154092)))

(declare-fun bs!11015 () Bool)

(assert (= bs!11015 d!68737))

(declare-fun m!324323 () Bool)

(assert (=> bs!11015 m!324323))

(assert (=> bs!11015 m!324173))

(assert (=> b!314709 d!68737))

(declare-fun d!68739 () Bool)

(assert (=> d!68739 (= (validKeyInArray!0 k!2441) (and (not (= k!2441 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2441 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!314712 d!68739))

(declare-fun e!196117 () SeekEntryResult!2757)

(declare-fun lt!154123 () SeekEntryResult!2757)

(declare-fun b!314977 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16070 (_ BitVec 32)) SeekEntryResult!2757)

(assert (=> b!314977 (= e!196117 (seekKeyOrZeroReturnVacant!0 (x!31404 lt!154123) (index!13206 lt!154123) (index!13206 lt!154123) k!2441 a!3293 mask!3709))))

(declare-fun b!314978 () Bool)

(declare-fun c!49797 () Bool)

(declare-fun lt!154125 () (_ BitVec 64))

(assert (=> b!314978 (= c!49797 (= lt!154125 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!196116 () SeekEntryResult!2757)

(assert (=> b!314978 (= e!196116 e!196117)))

(declare-fun b!314979 () Bool)

(declare-fun e!196118 () SeekEntryResult!2757)

(assert (=> b!314979 (= e!196118 Undefined!2757)))

(declare-fun b!314980 () Bool)

(assert (=> b!314980 (= e!196116 (Found!2757 (index!13206 lt!154123)))))

(declare-fun b!314982 () Bool)

(assert (=> b!314982 (= e!196117 (MissingZero!2757 (index!13206 lt!154123)))))

(declare-fun b!314981 () Bool)

(assert (=> b!314981 (= e!196118 e!196116)))

(assert (=> b!314981 (= lt!154125 (select (arr!7606 a!3293) (index!13206 lt!154123)))))

(declare-fun c!49799 () Bool)

(assert (=> b!314981 (= c!49799 (= lt!154125 k!2441))))

(declare-fun d!68741 () Bool)

(declare-fun lt!154124 () SeekEntryResult!2757)

(assert (=> d!68741 (and (or (is-Undefined!2757 lt!154124) (not (is-Found!2757 lt!154124)) (and (bvsge (index!13205 lt!154124) #b00000000000000000000000000000000) (bvslt (index!13205 lt!154124) (size!7958 a!3293)))) (or (is-Undefined!2757 lt!154124) (is-Found!2757 lt!154124) (not (is-MissingZero!2757 lt!154124)) (and (bvsge (index!13204 lt!154124) #b00000000000000000000000000000000) (bvslt (index!13204 lt!154124) (size!7958 a!3293)))) (or (is-Undefined!2757 lt!154124) (is-Found!2757 lt!154124) (is-MissingZero!2757 lt!154124) (not (is-MissingVacant!2757 lt!154124)) (and (bvsge (index!13207 lt!154124) #b00000000000000000000000000000000) (bvslt (index!13207 lt!154124) (size!7958 a!3293)))) (or (is-Undefined!2757 lt!154124) (ite (is-Found!2757 lt!154124) (= (select (arr!7606 a!3293) (index!13205 lt!154124)) k!2441) (ite (is-MissingZero!2757 lt!154124) (= (select (arr!7606 a!3293) (index!13204 lt!154124)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!2757 lt!154124) (= (select (arr!7606 a!3293) (index!13207 lt!154124)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!68741 (= lt!154124 e!196118)))

(declare-fun c!49798 () Bool)

(assert (=> d!68741 (= c!49798 (and (is-Intermediate!2757 lt!154123) (undefined!3569 lt!154123)))))

(assert (=> d!68741 (= lt!154123 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709))))

(assert (=> d!68741 (validMask!0 mask!3709)))

(assert (=> d!68741 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) lt!154124)))

(assert (= (and d!68741 c!49798) b!314979))

(assert (= (and d!68741 (not c!49798)) b!314981))

(assert (= (and b!314981 c!49799) b!314980))

(assert (= (and b!314981 (not c!49799)) b!314978))

(assert (= (and b!314978 c!49797) b!314982))

(assert (= (and b!314978 (not c!49797)) b!314977))

(declare-fun m!324355 () Bool)

(assert (=> b!314977 m!324355))

(declare-fun m!324357 () Bool)

(assert (=> b!314981 m!324357))

(assert (=> d!68741 m!324183))

(declare-fun m!324359 () Bool)

(assert (=> d!68741 m!324359))

(declare-fun m!324361 () Bool)

(assert (=> d!68741 m!324361))

(assert (=> d!68741 m!324183))

(assert (=> d!68741 m!324185))

(assert (=> d!68741 m!324173))

(declare-fun m!324363 () Bool)

(assert (=> d!68741 m!324363))

(assert (=> b!314707 d!68741))

(declare-fun b!314983 () Bool)

(declare-fun lt!154126 () SeekEntryResult!2757)

(assert (=> b!314983 (and (bvsge (index!13206 lt!154126) #b00000000000000000000000000000000) (bvslt (index!13206 lt!154126) (size!7958 a!3293)))))

(declare-fun e!196119 () Bool)

(assert (=> b!314983 (= e!196119 (= (select (arr!7606 a!3293) (index!13206 lt!154126)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!314984 () Bool)

(declare-fun e!196122 () Bool)

(declare-fun e!196121 () Bool)

(assert (=> b!314984 (= e!196122 e!196121)))

(declare-fun res!170614 () Bool)

(assert (=> b!314984 (= res!170614 (and (is-Intermediate!2757 lt!154126) (not (undefined!3569 lt!154126)) (bvslt (x!31404 lt!154126) #b01111111111111111111111111111110) (bvsge (x!31404 lt!154126) #b00000000000000000000000000000000) (bvsge (x!31404 lt!154126) x!1427)))))

(assert (=> b!314984 (=> (not res!170614) (not e!196121))))

(declare-fun b!314985 () Bool)

(assert (=> b!314985 (= e!196122 (bvsge (x!31404 lt!154126) #b01111111111111111111111111111110))))

(declare-fun b!314986 () Bool)

(declare-fun e!196123 () SeekEntryResult!2757)

(declare-fun e!196120 () SeekEntryResult!2757)

(assert (=> b!314986 (= e!196123 e!196120)))

(declare-fun c!49800 () Bool)

(declare-fun lt!154127 () (_ BitVec 64))

(assert (=> b!314986 (= c!49800 (or (= lt!154127 k!2441) (= (bvadd lt!154127 lt!154127) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!68757 () Bool)

(assert (=> d!68757 e!196122))

(declare-fun c!49801 () Bool)

(assert (=> d!68757 (= c!49801 (and (is-Intermediate!2757 lt!154126) (undefined!3569 lt!154126)))))

(assert (=> d!68757 (= lt!154126 e!196123)))

(declare-fun c!49802 () Bool)

(assert (=> d!68757 (= c!49802 (bvsge x!1427 #b01111111111111111111111111111110))))

(assert (=> d!68757 (= lt!154127 (select (arr!7606 a!3293) index!1781))))

(assert (=> d!68757 (validMask!0 mask!3709)))

(assert (=> d!68757 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!154126)))

(declare-fun b!314987 () Bool)

(assert (=> b!314987 (= e!196123 (Intermediate!2757 true index!1781 x!1427))))

(declare-fun b!314988 () Bool)

(assert (=> b!314988 (= e!196120 (Intermediate!2757 false index!1781 x!1427))))

(declare-fun b!314989 () Bool)

(assert (=> b!314989 (= e!196120 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1427 #b00000000000000000000000000000001) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun b!314990 () Bool)

(assert (=> b!314990 (and (bvsge (index!13206 lt!154126) #b00000000000000000000000000000000) (bvslt (index!13206 lt!154126) (size!7958 a!3293)))))

(declare-fun res!170615 () Bool)

(assert (=> b!314990 (= res!170615 (= (select (arr!7606 a!3293) (index!13206 lt!154126)) k!2441))))

(assert (=> b!314990 (=> res!170615 e!196119)))

(assert (=> b!314990 (= e!196121 e!196119)))

(declare-fun b!314991 () Bool)

(assert (=> b!314991 (and (bvsge (index!13206 lt!154126) #b00000000000000000000000000000000) (bvslt (index!13206 lt!154126) (size!7958 a!3293)))))

(declare-fun res!170616 () Bool)

(assert (=> b!314991 (= res!170616 (= (select (arr!7606 a!3293) (index!13206 lt!154126)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!314991 (=> res!170616 e!196119)))

(assert (= (and d!68757 c!49802) b!314987))

(assert (= (and d!68757 (not c!49802)) b!314986))

(assert (= (and b!314986 c!49800) b!314988))

(assert (= (and b!314986 (not c!49800)) b!314989))

(assert (= (and d!68757 c!49801) b!314985))

(assert (= (and d!68757 (not c!49801)) b!314984))

(assert (= (and b!314984 res!170614) b!314990))

(assert (= (and b!314990 (not res!170615)) b!314991))

(assert (= (and b!314991 (not res!170616)) b!314983))

(declare-fun m!324365 () Bool)

(assert (=> b!314991 m!324365))

(assert (=> b!314989 m!324179))

(assert (=> b!314989 m!324179))

(declare-fun m!324367 () Bool)

(assert (=> b!314989 m!324367))

(assert (=> b!314990 m!324365))

(assert (=> d!68757 m!324169))

(assert (=> d!68757 m!324173))

(assert (=> b!314983 m!324365))

(assert (=> b!314711 d!68757))

(push 1)

