; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30688 () Bool)

(assert start!30688)

(declare-fun b!307899 () Bool)

(declare-fun res!164811 () Bool)

(declare-fun e!192600 () Bool)

(assert (=> b!307899 (=> (not res!164811) (not e!192600))))

(declare-datatypes ((array!15690 0))(
  ( (array!15691 (arr!7428 (Array (_ BitVec 32) (_ BitVec 64))) (size!7780 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15690)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!307899 (= res!164811 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7428 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(declare-fun b!307900 () Bool)

(declare-fun res!164813 () Bool)

(assert (=> b!307900 (=> (not res!164813) (not e!192600))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2579 0))(
  ( (MissingZero!2579 (index!12492 (_ BitVec 32))) (Found!2579 (index!12493 (_ BitVec 32))) (Intermediate!2579 (undefined!3391 Bool) (index!12494 (_ BitVec 32)) (x!30689 (_ BitVec 32))) (Undefined!2579) (MissingVacant!2579 (index!12495 (_ BitVec 32))) )
))
(declare-fun lt!151199 () SeekEntryResult!2579)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15690 (_ BitVec 32)) SeekEntryResult!2579)

(assert (=> b!307900 (= res!164813 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!151199))))

(declare-fun b!307901 () Bool)

(declare-fun res!164815 () Bool)

(declare-fun e!192599 () Bool)

(assert (=> b!307901 (=> (not res!164815) (not e!192599))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!307901 (= res!164815 (validKeyInArray!0 k!2441))))

(declare-fun b!307902 () Bool)

(declare-fun res!164812 () Bool)

(assert (=> b!307902 (=> (not res!164812) (not e!192599))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!307902 (= res!164812 (and (= (size!7780 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7780 a!3293))))))

(declare-fun res!164820 () Bool)

(assert (=> start!30688 (=> (not res!164820) (not e!192599))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30688 (= res!164820 (validMask!0 mask!3709))))

(assert (=> start!30688 e!192599))

(declare-fun array_inv!5382 (array!15690) Bool)

(assert (=> start!30688 (array_inv!5382 a!3293)))

(assert (=> start!30688 true))

(declare-fun b!307903 () Bool)

(assert (=> b!307903 (= e!192599 e!192600)))

(declare-fun res!164814 () Bool)

(assert (=> b!307903 (=> (not res!164814) (not e!192600))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!307903 (= res!164814 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!151199))))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!307903 (= lt!151199 (Intermediate!2579 false resIndex!52 resX!52))))

(declare-fun b!307904 () Bool)

(declare-fun lt!151198 () (_ BitVec 32))

(assert (=> b!307904 (= e!192600 (and (bvsge mask!3709 #b00000000000000000000000000000000) (or (bvslt lt!151198 #b00000000000000000000000000000000) (bvsge lt!151198 (bvadd #b00000000000000000000000000000001 mask!3709)))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!307904 (= lt!151198 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!307905 () Bool)

(declare-fun res!164816 () Bool)

(assert (=> b!307905 (=> (not res!164816) (not e!192599))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15690 (_ BitVec 32)) Bool)

(assert (=> b!307905 (= res!164816 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!307906 () Bool)

(declare-fun res!164818 () Bool)

(assert (=> b!307906 (=> (not res!164818) (not e!192599))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15690 (_ BitVec 32)) SeekEntryResult!2579)

(assert (=> b!307906 (= res!164818 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2579 i!1240)))))

(declare-fun b!307907 () Bool)

(declare-fun res!164819 () Bool)

(assert (=> b!307907 (=> (not res!164819) (not e!192599))))

(declare-fun arrayContainsKey!0 (array!15690 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!307907 (= res!164819 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!307908 () Bool)

(declare-fun res!164817 () Bool)

(assert (=> b!307908 (=> (not res!164817) (not e!192600))))

(assert (=> b!307908 (= res!164817 (and (= (select (arr!7428 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7780 a!3293))))))

(assert (= (and start!30688 res!164820) b!307902))

(assert (= (and b!307902 res!164812) b!307901))

(assert (= (and b!307901 res!164815) b!307907))

(assert (= (and b!307907 res!164819) b!307906))

(assert (= (and b!307906 res!164818) b!307905))

(assert (= (and b!307905 res!164816) b!307903))

(assert (= (and b!307903 res!164814) b!307908))

(assert (= (and b!307908 res!164817) b!307900))

(assert (= (and b!307900 res!164813) b!307899))

(assert (= (and b!307899 res!164811) b!307904))

(declare-fun m!318121 () Bool)

(assert (=> b!307904 m!318121))

(declare-fun m!318123 () Bool)

(assert (=> b!307900 m!318123))

(declare-fun m!318125 () Bool)

(assert (=> b!307905 m!318125))

(declare-fun m!318127 () Bool)

(assert (=> b!307899 m!318127))

(declare-fun m!318129 () Bool)

(assert (=> b!307903 m!318129))

(assert (=> b!307903 m!318129))

(declare-fun m!318131 () Bool)

(assert (=> b!307903 m!318131))

(declare-fun m!318133 () Bool)

(assert (=> b!307907 m!318133))

(declare-fun m!318135 () Bool)

(assert (=> b!307906 m!318135))

(declare-fun m!318137 () Bool)

(assert (=> start!30688 m!318137))

(declare-fun m!318139 () Bool)

(assert (=> start!30688 m!318139))

(declare-fun m!318141 () Bool)

(assert (=> b!307908 m!318141))

(declare-fun m!318143 () Bool)

(assert (=> b!307901 m!318143))

(push 1)

(assert (not start!30688))

(assert (not b!307900))

(assert (not b!307903))

(assert (not b!307906))

(assert (not b!307905))

(assert (not b!307901))

(assert (not b!307907))

(assert (not b!307904))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!68125 () Bool)

(declare-fun lt!151220 () (_ BitVec 32))

(assert (=> d!68125 (and (bvsge lt!151220 #b00000000000000000000000000000000) (bvslt lt!151220 (bvadd mask!3709 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!68125 (= lt!151220 (choose!52 index!1781 x!1427 mask!3709))))

(assert (=> d!68125 (validMask!0 mask!3709)))

(assert (=> d!68125 (= (nextIndex!0 index!1781 x!1427 mask!3709) lt!151220)))

(declare-fun bs!10826 () Bool)

(assert (= bs!10826 d!68125))

(declare-fun m!318159 () Bool)

(assert (=> bs!10826 m!318159))

(assert (=> bs!10826 m!318137))

(assert (=> b!307904 d!68125))

(declare-fun bm!25907 () Bool)

(declare-fun call!25910 () Bool)

(assert (=> bm!25907 (= call!25910 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3293 mask!3709))))

(declare-fun b!307969 () Bool)

(declare-fun e!192641 () Bool)

(declare-fun e!192640 () Bool)

(assert (=> b!307969 (= e!192641 e!192640)))

(declare-fun lt!151242 () (_ BitVec 64))

(assert (=> b!307969 (= lt!151242 (select (arr!7428 a!3293) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9570 0))(
  ( (Unit!9571) )
))
(declare-fun lt!151244 () Unit!9570)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!15690 (_ BitVec 64) (_ BitVec 32)) Unit!9570)

(assert (=> b!307969 (= lt!151244 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3293 lt!151242 #b00000000000000000000000000000000))))

(assert (=> b!307969 (arrayContainsKey!0 a!3293 lt!151242 #b00000000000000000000000000000000)))

(declare-fun lt!151243 () Unit!9570)

(assert (=> b!307969 (= lt!151243 lt!151244)))

(declare-fun res!164835 () Bool)

(assert (=> b!307969 (= res!164835 (= (seekEntryOrOpen!0 (select (arr!7428 a!3293) #b00000000000000000000000000000000) a!3293 mask!3709) (Found!2579 #b00000000000000000000000000000000)))))

(assert (=> b!307969 (=> (not res!164835) (not e!192640))))

(declare-fun b!307971 () Bool)

(assert (=> b!307971 (= e!192641 call!25910)))

(declare-fun b!307972 () Bool)

(assert (=> b!307972 (= e!192640 call!25910)))

(declare-fun d!68127 () Bool)

(declare-fun res!164836 () Bool)

(declare-fun e!192639 () Bool)

(assert (=> d!68127 (=> res!164836 e!192639)))

(assert (=> d!68127 (= res!164836 (bvsge #b00000000000000000000000000000000 (size!7780 a!3293)))))

(assert (=> d!68127 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709) e!192639)))

(declare-fun b!307970 () Bool)

(assert (=> b!307970 (= e!192639 e!192641)))

(declare-fun c!49169 () Bool)

(assert (=> b!307970 (= c!49169 (validKeyInArray!0 (select (arr!7428 a!3293) #b00000000000000000000000000000000)))))

(assert (= (and d!68127 (not res!164836)) b!307970))

(assert (= (and b!307970 c!49169) b!307969))

(assert (= (and b!307970 (not c!49169)) b!307971))

(assert (= (and b!307969 res!164835) b!307972))

(assert (= (or b!307972 b!307971) bm!25907))

(declare-fun m!318183 () Bool)

(assert (=> bm!25907 m!318183))

(declare-fun m!318185 () Bool)

(assert (=> b!307969 m!318185))

(declare-fun m!318187 () Bool)

(assert (=> b!307969 m!318187))

(declare-fun m!318189 () Bool)

(assert (=> b!307969 m!318189))

(assert (=> b!307969 m!318185))

(declare-fun m!318191 () Bool)

(assert (=> b!307969 m!318191))

(assert (=> b!307970 m!318185))

(assert (=> b!307970 m!318185))

(declare-fun m!318193 () Bool)

(assert (=> b!307970 m!318193))

(assert (=> b!307905 d!68127))

(declare-fun b!308038 () Bool)

(declare-fun lt!151260 () SeekEntryResult!2579)

(assert (=> b!308038 (and (bvsge (index!12494 lt!151260) #b00000000000000000000000000000000) (bvslt (index!12494 lt!151260) (size!7780 a!3293)))))

(declare-fun e!192679 () Bool)

(assert (=> b!308038 (= e!192679 (= (select (arr!7428 a!3293) (index!12494 lt!151260)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!308039 () Bool)

(declare-fun e!192683 () SeekEntryResult!2579)

(assert (=> b!308039 (= e!192683 (Intermediate!2579 false index!1781 x!1427))))

(declare-fun b!308040 () Bool)

(assert (=> b!308040 (and (bvsge (index!12494 lt!151260) #b00000000000000000000000000000000) (bvslt (index!12494 lt!151260) (size!7780 a!3293)))))

(declare-fun res!164862 () Bool)

(assert (=> b!308040 (= res!164862 (= (select (arr!7428 a!3293) (index!12494 lt!151260)) k!2441))))

(assert (=> b!308040 (=> res!164862 e!192679)))

(declare-fun e!192682 () Bool)

(assert (=> b!308040 (= e!192682 e!192679)))

(declare-fun b!308041 () Bool)

(declare-fun e!192681 () SeekEntryResult!2579)

(assert (=> b!308041 (= e!192681 (Intermediate!2579 true index!1781 x!1427))))

(declare-fun b!308042 () Bool)

(assert (=> b!308042 (= e!192681 e!192683)))

(declare-fun c!49192 () Bool)

(declare-fun lt!151259 () (_ BitVec 64))

(assert (=> b!308042 (= c!49192 (or (= lt!151259 k!2441) (= (bvadd lt!151259 lt!151259) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!308043 () Bool)

(declare-fun e!192680 () Bool)

(assert (=> b!308043 (= e!192680 e!192682)))

(declare-fun res!164861 () Bool)

(assert (=> b!308043 (= res!164861 (and (is-Intermediate!2579 lt!151260) (not (undefined!3391 lt!151260)) (bvslt (x!30689 lt!151260) #b01111111111111111111111111111110) (bvsge (x!30689 lt!151260) #b00000000000000000000000000000000) (bvsge (x!30689 lt!151260) x!1427)))))

(assert (=> b!308043 (=> (not res!164861) (not e!192682))))

(declare-fun b!308044 () Bool)

(assert (=> b!308044 (and (bvsge (index!12494 lt!151260) #b00000000000000000000000000000000) (bvslt (index!12494 lt!151260) (size!7780 a!3293)))))

(declare-fun res!164863 () Bool)

(assert (=> b!308044 (= res!164863 (= (select (arr!7428 a!3293) (index!12494 lt!151260)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!308044 (=> res!164863 e!192679)))

(declare-fun d!68135 () Bool)

(assert (=> d!68135 e!192680))

(declare-fun c!49193 () Bool)

(assert (=> d!68135 (= c!49193 (and (is-Intermediate!2579 lt!151260) (undefined!3391 lt!151260)))))

(assert (=> d!68135 (= lt!151260 e!192681)))

(declare-fun c!49191 () Bool)

(assert (=> d!68135 (= c!49191 (bvsge x!1427 #b01111111111111111111111111111110))))

(assert (=> d!68135 (= lt!151259 (select (arr!7428 a!3293) index!1781))))

(assert (=> d!68135 (validMask!0 mask!3709)))

(assert (=> d!68135 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!151260)))

(declare-fun b!308045 () Bool)

(assert (=> b!308045 (= e!192683 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1427 #b00000000000000000000000000000001) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun b!308046 () Bool)

(assert (=> b!308046 (= e!192680 (bvsge (x!30689 lt!151260) #b01111111111111111111111111111110))))

(assert (= (and d!68135 c!49191) b!308041))

(assert (= (and d!68135 (not c!49191)) b!308042))

(assert (= (and b!308042 c!49192) b!308039))

(assert (= (and b!308042 (not c!49192)) b!308045))

(assert (= (and d!68135 c!49193) b!308046))

(assert (= (and d!68135 (not c!49193)) b!308043))

(assert (= (and b!308043 res!164861) b!308040))

(assert (= (and b!308040 (not res!164862)) b!308044))

(assert (= (and b!308044 (not res!164863)) b!308038))

(assert (=> b!308045 m!318121))

(assert (=> b!308045 m!318121))

(declare-fun m!318205 () Bool)

(assert (=> b!308045 m!318205))

(declare-fun m!318207 () Bool)

(assert (=> b!308038 m!318207))

(assert (=> b!308044 m!318207))

(assert (=> b!308040 m!318207))

(assert (=> d!68135 m!318127))

(assert (=> d!68135 m!318137))

(assert (=> b!307900 d!68135))

(declare-fun b!308092 () Bool)

(declare-fun c!49209 () Bool)

(declare-fun lt!151286 () (_ BitVec 64))

(assert (=> b!308092 (= c!49209 (= lt!151286 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!192713 () SeekEntryResult!2579)

(declare-fun e!192711 () SeekEntryResult!2579)

(assert (=> b!308092 (= e!192713 e!192711)))

(declare-fun b!308093 () Bool)

(declare-fun e!192712 () SeekEntryResult!2579)

(assert (=> b!308093 (= e!192712 e!192713)))

(declare-fun lt!151287 () SeekEntryResult!2579)

(assert (=> b!308093 (= lt!151286 (select (arr!7428 a!3293) (index!12494 lt!151287)))))

(declare-fun c!49210 () Bool)

(assert (=> b!308093 (= c!49210 (= lt!151286 k!2441))))

(declare-fun b!308094 () Bool)

(assert (=> b!308094 (= e!192712 Undefined!2579)))

(declare-fun d!68143 () Bool)

(declare-fun lt!151285 () SeekEntryResult!2579)

(assert (=> d!68143 (and (or (is-Undefined!2579 lt!151285) (not (is-Found!2579 lt!151285)) (and (bvsge (index!12493 lt!151285) #b00000000000000000000000000000000) (bvslt (index!12493 lt!151285) (size!7780 a!3293)))) (or (is-Undefined!2579 lt!151285) (is-Found!2579 lt!151285) (not (is-MissingZero!2579 lt!151285)) (and (bvsge (index!12492 lt!151285) #b00000000000000000000000000000000) (bvslt (index!12492 lt!151285) (size!7780 a!3293)))) (or (is-Undefined!2579 lt!151285) (is-Found!2579 lt!151285) (is-MissingZero!2579 lt!151285) (not (is-MissingVacant!2579 lt!151285)) (and (bvsge (index!12495 lt!151285) #b00000000000000000000000000000000) (bvslt (index!12495 lt!151285) (size!7780 a!3293)))) (or (is-Undefined!2579 lt!151285) (ite (is-Found!2579 lt!151285) (= (select (arr!7428 a!3293) (index!12493 lt!151285)) k!2441) (ite (is-MissingZero!2579 lt!151285) (= (select (arr!7428 a!3293) (index!12492 lt!151285)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!2579 lt!151285) (= (select (arr!7428 a!3293) (index!12495 lt!151285)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!68143 (= lt!151285 e!192712)))

(declare-fun c!49211 () Bool)

(assert (=> d!68143 (= c!49211 (and (is-Intermediate!2579 lt!151287) (undefined!3391 lt!151287)))))

(assert (=> d!68143 (= lt!151287 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709))))

(assert (=> d!68143 (validMask!0 mask!3709)))

(assert (=> d!68143 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) lt!151285)))

(declare-fun b!308095 () Bool)

(assert (=> b!308095 (= e!192713 (Found!2579 (index!12494 lt!151287)))))

(declare-fun b!308096 () Bool)

(assert (=> b!308096 (= e!192711 (MissingZero!2579 (index!12494 lt!151287)))))

(declare-fun b!308097 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15690 (_ BitVec 32)) SeekEntryResult!2579)

(assert (=> b!308097 (= e!192711 (seekKeyOrZeroReturnVacant!0 (x!30689 lt!151287) (index!12494 lt!151287) (index!12494 lt!151287) k!2441 a!3293 mask!3709))))

(assert (= (and d!68143 c!49211) b!308094))

(assert (= (and d!68143 (not c!49211)) b!308093))

(assert (= (and b!308093 c!49210) b!308095))

(assert (= (and b!308093 (not c!49210)) b!308092))

(assert (= (and b!308092 c!49209) b!308096))

(assert (= (and b!308092 (not c!49209)) b!308097))

(declare-fun m!318229 () Bool)

(assert (=> b!308093 m!318229))

(declare-fun m!318231 () Bool)

(assert (=> d!68143 m!318231))

(assert (=> d!68143 m!318137))

(assert (=> d!68143 m!318129))

(declare-fun m!318233 () Bool)

(assert (=> d!68143 m!318233))

(declare-fun m!318235 () Bool)

(assert (=> d!68143 m!318235))

(assert (=> d!68143 m!318129))

(assert (=> d!68143 m!318131))

(declare-fun m!318237 () Bool)

(assert (=> b!308097 m!318237))

(assert (=> b!307906 d!68143))

(declare-fun d!68163 () Bool)

(assert (=> d!68163 (= (validKeyInArray!0 k!2441) (and (not (= k!2441 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2441 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!307901 d!68163))

(declare-fun d!68165 () Bool)

(declare-fun res!164888 () Bool)

(declare-fun e!192724 () Bool)

(assert (=> d!68165 (=> res!164888 e!192724)))

(assert (=> d!68165 (= res!164888 (= (select (arr!7428 a!3293) #b00000000000000000000000000000000) k!2441))))

(assert (=> d!68165 (= (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000) e!192724)))

(declare-fun b!308110 () Bool)

(declare-fun e!192725 () Bool)

(assert (=> b!308110 (= e!192724 e!192725)))

(declare-fun res!164889 () Bool)

(assert (=> b!308110 (=> (not res!164889) (not e!192725))))

(assert (=> b!308110 (= res!164889 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7780 a!3293)))))

(declare-fun b!308111 () Bool)

(assert (=> b!308111 (= e!192725 (arrayContainsKey!0 a!3293 k!2441 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!68165 (not res!164888)) b!308110))

(assert (= (and b!308110 res!164889) b!308111))

(assert (=> d!68165 m!318185))

(declare-fun m!318239 () Bool)

(assert (=> b!308111 m!318239))

(assert (=> b!307907 d!68165))

(declare-fun d!68167 () Bool)

(assert (=> d!68167 (= (validMask!0 mask!3709) (and (or (= mask!3709 #b00000000000000000000000000000111) (= mask!3709 #b00000000000000000000000000001111) (= mask!3709 #b00000000000000000000000000011111) (= mask!3709 #b00000000000000000000000000111111) (= mask!3709 #b00000000000000000000000001111111) (= mask!3709 #b00000000000000000000000011111111) (= mask!3709 #b00000000000000000000000111111111) (= mask!3709 #b00000000000000000000001111111111) (= mask!3709 #b00000000000000000000011111111111) (= mask!3709 #b00000000000000000000111111111111) (= mask!3709 #b00000000000000000001111111111111) (= mask!3709 #b00000000000000000011111111111111) (= mask!3709 #b00000000000000000111111111111111) (= mask!3709 #b00000000000000001111111111111111) (= mask!3709 #b00000000000000011111111111111111) (= mask!3709 #b00000000000000111111111111111111) (= mask!3709 #b00000000000001111111111111111111) (= mask!3709 #b00000000000011111111111111111111) (= mask!3709 #b00000000000111111111111111111111) (= mask!3709 #b00000000001111111111111111111111) (= mask!3709 #b00000000011111111111111111111111) (= mask!3709 #b00000000111111111111111111111111) (= mask!3709 #b00000001111111111111111111111111) (= mask!3709 #b00000011111111111111111111111111) (= mask!3709 #b00000111111111111111111111111111) (= mask!3709 #b00001111111111111111111111111111) (= mask!3709 #b00011111111111111111111111111111) (= mask!3709 #b00111111111111111111111111111111)) (bvsle mask!3709 #b00111111111111111111111111111111)))))

(assert (=> start!30688 d!68167))

(declare-fun d!68171 () Bool)

(assert (=> d!68171 (= (array_inv!5382 a!3293) (bvsge (size!7780 a!3293) #b00000000000000000000000000000000))))

(assert (=> start!30688 d!68171))

(declare-fun b!308116 () Bool)

(declare-fun lt!151298 () SeekEntryResult!2579)

(assert (=> b!308116 (and (bvsge (index!12494 lt!151298) #b00000000000000000000000000000000) (bvslt (index!12494 lt!151298) (size!7780 a!3293)))))

(declare-fun e!192729 () Bool)

(assert (=> b!308116 (= e!192729 (= (select (arr!7428 a!3293) (index!12494 lt!151298)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!308117 () Bool)

(declare-fun e!192733 () SeekEntryResult!2579)

(assert (=> b!308117 (= e!192733 (Intermediate!2579 false (toIndex!0 k!2441 mask!3709) #b00000000000000000000000000000000))))

(declare-fun b!308118 () Bool)

(assert (=> b!308118 (and (bvsge (index!12494 lt!151298) #b00000000000000000000000000000000) (bvslt (index!12494 lt!151298) (size!7780 a!3293)))))

(declare-fun res!164893 () Bool)

(assert (=> b!308118 (= res!164893 (= (select (arr!7428 a!3293) (index!12494 lt!151298)) k!2441))))

(assert (=> b!308118 (=> res!164893 e!192729)))

(declare-fun e!192732 () Bool)

(assert (=> b!308118 (= e!192732 e!192729)))

(declare-fun b!308119 () Bool)

(declare-fun e!192731 () SeekEntryResult!2579)

(assert (=> b!308119 (= e!192731 (Intermediate!2579 true (toIndex!0 k!2441 mask!3709) #b00000000000000000000000000000000))))

(declare-fun b!308120 () Bool)

(assert (=> b!308120 (= e!192731 e!192733)))

(declare-fun c!49216 () Bool)

(declare-fun lt!151297 () (_ BitVec 64))

(assert (=> b!308120 (= c!49216 (or (= lt!151297 k!2441) (= (bvadd lt!151297 lt!151297) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!308121 () Bool)

(declare-fun e!192730 () Bool)

(assert (=> b!308121 (= e!192730 e!192732)))

(declare-fun res!164892 () Bool)

(assert (=> b!308121 (= res!164892 (and (is-Intermediate!2579 lt!151298) (not (undefined!3391 lt!151298)) (bvslt (x!30689 lt!151298) #b01111111111111111111111111111110) (bvsge (x!30689 lt!151298) #b00000000000000000000000000000000) (bvsge (x!30689 lt!151298) #b00000000000000000000000000000000)))))

(assert (=> b!308121 (=> (not res!164892) (not e!192732))))

(declare-fun b!308122 () Bool)

(assert (=> b!308122 (and (bvsge (index!12494 lt!151298) #b00000000000000000000000000000000) (bvslt (index!12494 lt!151298) (size!7780 a!3293)))))

(declare-fun res!164894 () Bool)

(assert (=> b!308122 (= res!164894 (= (select (arr!7428 a!3293) (index!12494 lt!151298)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!308122 (=> res!164894 e!192729)))

(declare-fun d!68173 () Bool)

(assert (=> d!68173 e!192730))

(declare-fun c!49217 () Bool)

(assert (=> d!68173 (= c!49217 (and (is-Intermediate!2579 lt!151298) (undefined!3391 lt!151298)))))

(assert (=> d!68173 (= lt!151298 e!192731)))

(declare-fun c!49215 () Bool)

(assert (=> d!68173 (= c!49215 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!68173 (= lt!151297 (select (arr!7428 a!3293) (toIndex!0 k!2441 mask!3709)))))

(assert (=> d!68173 (validMask!0 mask!3709)))

(assert (=> d!68173 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!151298)))

(declare-fun b!308123 () Bool)

(assert (=> b!308123 (= e!192733 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!2441 mask!3709) #b00000000000000000000000000000000 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun b!308124 () Bool)

(assert (=> b!308124 (= e!192730 (bvsge (x!30689 lt!151298) #b01111111111111111111111111111110))))

(assert (= (and d!68173 c!49215) b!308119))

(assert (= (and d!68173 (not c!49215)) b!308120))

(assert (= (and b!308120 c!49216) b!308117))

(assert (= (and b!308120 (not c!49216)) b!308123))

(assert (= (and d!68173 c!49217) b!308124))

(assert (= (and d!68173 (not c!49217)) b!308121))

(assert (= (and b!308121 res!164892) b!308118))

(assert (= (and b!308118 (not res!164893)) b!308122))

(assert (= (and b!308122 (not res!164894)) b!308116))

(assert (=> b!308123 m!318129))

(declare-fun m!318251 () Bool)

(assert (=> b!308123 m!318251))

(assert (=> b!308123 m!318251))

(declare-fun m!318253 () Bool)

(assert (=> b!308123 m!318253))

(declare-fun m!318255 () Bool)

(assert (=> b!308116 m!318255))

(assert (=> b!308122 m!318255))

(assert (=> b!308118 m!318255))

(assert (=> d!68173 m!318129))

(declare-fun m!318257 () Bool)

(assert (=> d!68173 m!318257))

(assert (=> d!68173 m!318137))

(assert (=> b!307903 d!68173))

(declare-fun d!68175 () Bool)

(declare-fun lt!151304 () (_ BitVec 32))

(declare-fun lt!151303 () (_ BitVec 32))

(assert (=> d!68175 (= lt!151304 (bvmul (bvxor lt!151303 (bvlshr lt!151303 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!68175 (= lt!151303 ((_ extract 31 0) (bvand (bvxor k!2441 (bvlshr k!2441 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!68175 (and (bvsge mask!3709 #b00000000000000000000000000000000) (let ((res!164895 (let ((h!5362 ((_ extract 31 0) (bvand (bvxor k!2441 (bvlshr k!2441 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!30698 (bvmul (bvxor h!5362 (bvlshr h!5362 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!30698 (bvlshr x!30698 #b00000000000000000000000000001101)) mask!3709))))) (and (bvslt res!164895 (bvadd mask!3709 #b00000000000000000000000000000001)) (bvsge res!164895 #b00000000000000000000000000000000))))))

(assert (=> d!68175 (= (toIndex!0 k!2441 mask!3709) (bvand (bvxor lt!151304 (bvlshr lt!151304 #b00000000000000000000000000001101)) mask!3709))))

(assert (=> b!307903 d!68175))

(push 1)

(assert (not d!68135))

(assert (not b!307970))

(assert (not bm!25907))

(assert (not d!68173))

(assert (not d!68143))

(assert (not b!308045))

(assert (not d!68125))

(assert (not b!308111))

(assert (not b!308123))

(assert (not b!308097))

(assert (not b!307969))

(check-sat)

(pop 1)

(push 1)

(check-sat)

