; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47558 () Bool)

(assert start!47558)

(declare-fun res!320733 () Bool)

(declare-fun e!305144 () Bool)

(assert (=> start!47558 (=> (not res!320733) (not e!305144))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47558 (= res!320733 (validMask!0 mask!3524))))

(assert (=> start!47558 e!305144))

(assert (=> start!47558 true))

(declare-datatypes ((array!33281 0))(
  ( (array!33282 (arr!15992 (Array (_ BitVec 32) (_ BitVec 64))) (size!16356 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33281)

(declare-fun array_inv!11766 (array!33281) Bool)

(assert (=> start!47558 (array_inv!11766 a!3235)))

(declare-fun b!523222 () Bool)

(declare-fun res!320743 () Bool)

(declare-fun e!305143 () Bool)

(assert (=> b!523222 (=> (not res!320743) (not e!305143))))

(declare-datatypes ((List!10203 0))(
  ( (Nil!10200) (Cons!10199 (h!11124 (_ BitVec 64)) (t!16439 List!10203)) )
))
(declare-fun arrayNoDuplicates!0 (array!33281 (_ BitVec 32) List!10203) Bool)

(assert (=> b!523222 (= res!320743 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10200))))

(declare-fun b!523223 () Bool)

(declare-fun e!305149 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4466 0))(
  ( (MissingZero!4466 (index!20070 (_ BitVec 32))) (Found!4466 (index!20071 (_ BitVec 32))) (Intermediate!4466 (undefined!5278 Bool) (index!20072 (_ BitVec 32)) (x!49072 (_ BitVec 32))) (Undefined!4466) (MissingVacant!4466 (index!20073 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33281 (_ BitVec 32)) SeekEntryResult!4466)

(assert (=> b!523223 (= e!305149 (= (seekEntryOrOpen!0 (select (arr!15992 a!3235) j!176) a!3235 mask!3524) (Found!4466 j!176)))))

(declare-fun b!523224 () Bool)

(declare-datatypes ((Unit!16330 0))(
  ( (Unit!16331) )
))
(declare-fun e!305146 () Unit!16330)

(declare-fun Unit!16332 () Unit!16330)

(assert (=> b!523224 (= e!305146 Unit!16332)))

(declare-fun b!523225 () Bool)

(declare-fun Unit!16333 () Unit!16330)

(assert (=> b!523225 (= e!305146 Unit!16333)))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun lt!240132 () Unit!16330)

(declare-fun lt!240128 () (_ BitVec 32))

(declare-fun lt!240133 () SeekEntryResult!4466)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33281 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16330)

(assert (=> b!523225 (= lt!240132 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!240128 #b00000000000000000000000000000000 (index!20072 lt!240133) (x!49072 lt!240133) mask!3524))))

(declare-fun lt!240126 () array!33281)

(declare-fun lt!240131 () (_ BitVec 64))

(declare-fun res!320741 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33281 (_ BitVec 32)) SeekEntryResult!4466)

(assert (=> b!523225 (= res!320741 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!240128 lt!240131 lt!240126 mask!3524) (Intermediate!4466 false (index!20072 lt!240133) (x!49072 lt!240133))))))

(declare-fun e!305148 () Bool)

(assert (=> b!523225 (=> (not res!320741) (not e!305148))))

(assert (=> b!523225 e!305148))

(declare-fun e!305147 () Bool)

(declare-fun b!523226 () Bool)

(assert (=> b!523226 (= e!305147 (or (bvsgt #b00000000000000000000000000000000 (x!49072 lt!240133)) (bvsgt (x!49072 lt!240133) #b01111111111111111111111111111110) (and (bvsge lt!240128 #b00000000000000000000000000000000) (bvslt lt!240128 (size!16356 a!3235)))))))

(assert (=> b!523226 (and (or (= (select (arr!15992 a!3235) (index!20072 lt!240133)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15992 a!3235) (index!20072 lt!240133)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15992 a!3235) (index!20072 lt!240133)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15992 a!3235) (index!20072 lt!240133)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!240130 () Unit!16330)

(assert (=> b!523226 (= lt!240130 e!305146)))

(declare-fun c!61547 () Bool)

(assert (=> b!523226 (= c!61547 (= (select (arr!15992 a!3235) (index!20072 lt!240133)) (select (arr!15992 a!3235) j!176)))))

(assert (=> b!523226 (and (bvslt (x!49072 lt!240133) #b01111111111111111111111111111110) (or (= (select (arr!15992 a!3235) (index!20072 lt!240133)) (select (arr!15992 a!3235) j!176)) (= (select (arr!15992 a!3235) (index!20072 lt!240133)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15992 a!3235) (index!20072 lt!240133)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!523227 () Bool)

(assert (=> b!523227 (= e!305143 (not e!305147))))

(declare-fun res!320735 () Bool)

(assert (=> b!523227 (=> res!320735 e!305147)))

(declare-fun lt!240127 () (_ BitVec 32))

(assert (=> b!523227 (= res!320735 (= lt!240133 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!240127 lt!240131 lt!240126 mask!3524)))))

(assert (=> b!523227 (= lt!240133 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!240128 (select (arr!15992 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!523227 (= lt!240127 (toIndex!0 lt!240131 mask!3524))))

(assert (=> b!523227 (= lt!240131 (select (store (arr!15992 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!523227 (= lt!240128 (toIndex!0 (select (arr!15992 a!3235) j!176) mask!3524))))

(assert (=> b!523227 (= lt!240126 (array!33282 (store (arr!15992 a!3235) i!1204 k!2280) (size!16356 a!3235)))))

(assert (=> b!523227 e!305149))

(declare-fun res!320740 () Bool)

(assert (=> b!523227 (=> (not res!320740) (not e!305149))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33281 (_ BitVec 32)) Bool)

(assert (=> b!523227 (= res!320740 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!240134 () Unit!16330)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33281 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16330)

(assert (=> b!523227 (= lt!240134 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!523228 () Bool)

(declare-fun res!320736 () Bool)

(assert (=> b!523228 (=> res!320736 e!305147)))

(assert (=> b!523228 (= res!320736 (or (undefined!5278 lt!240133) (not (is-Intermediate!4466 lt!240133))))))

(declare-fun b!523229 () Bool)

(declare-fun res!320739 () Bool)

(assert (=> b!523229 (=> (not res!320739) (not e!305144))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!523229 (= res!320739 (validKeyInArray!0 k!2280))))

(declare-fun b!523230 () Bool)

(assert (=> b!523230 (= e!305148 false)))

(declare-fun b!523231 () Bool)

(assert (=> b!523231 (= e!305144 e!305143)))

(declare-fun res!320734 () Bool)

(assert (=> b!523231 (=> (not res!320734) (not e!305143))))

(declare-fun lt!240129 () SeekEntryResult!4466)

(assert (=> b!523231 (= res!320734 (or (= lt!240129 (MissingZero!4466 i!1204)) (= lt!240129 (MissingVacant!4466 i!1204))))))

(assert (=> b!523231 (= lt!240129 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!523232 () Bool)

(declare-fun res!320742 () Bool)

(assert (=> b!523232 (=> (not res!320742) (not e!305144))))

(assert (=> b!523232 (= res!320742 (validKeyInArray!0 (select (arr!15992 a!3235) j!176)))))

(declare-fun b!523233 () Bool)

(declare-fun res!320738 () Bool)

(assert (=> b!523233 (=> (not res!320738) (not e!305143))))

(assert (=> b!523233 (= res!320738 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!523234 () Bool)

(declare-fun res!320744 () Bool)

(assert (=> b!523234 (=> (not res!320744) (not e!305144))))

(assert (=> b!523234 (= res!320744 (and (= (size!16356 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16356 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16356 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!523235 () Bool)

(declare-fun res!320737 () Bool)

(assert (=> b!523235 (=> (not res!320737) (not e!305144))))

(declare-fun arrayContainsKey!0 (array!33281 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!523235 (= res!320737 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(assert (= (and start!47558 res!320733) b!523234))

(assert (= (and b!523234 res!320744) b!523232))

(assert (= (and b!523232 res!320742) b!523229))

(assert (= (and b!523229 res!320739) b!523235))

(assert (= (and b!523235 res!320737) b!523231))

(assert (= (and b!523231 res!320734) b!523233))

(assert (= (and b!523233 res!320738) b!523222))

(assert (= (and b!523222 res!320743) b!523227))

(assert (= (and b!523227 res!320740) b!523223))

(assert (= (and b!523227 (not res!320735)) b!523228))

(assert (= (and b!523228 (not res!320736)) b!523226))

(assert (= (and b!523226 c!61547) b!523225))

(assert (= (and b!523226 (not c!61547)) b!523224))

(assert (= (and b!523225 res!320741) b!523230))

(declare-fun m!504079 () Bool)

(assert (=> b!523226 m!504079))

(declare-fun m!504081 () Bool)

(assert (=> b!523226 m!504081))

(declare-fun m!504083 () Bool)

(assert (=> b!523233 m!504083))

(declare-fun m!504085 () Bool)

(assert (=> b!523225 m!504085))

(declare-fun m!504087 () Bool)

(assert (=> b!523225 m!504087))

(declare-fun m!504089 () Bool)

(assert (=> b!523227 m!504089))

(declare-fun m!504091 () Bool)

(assert (=> b!523227 m!504091))

(declare-fun m!504093 () Bool)

(assert (=> b!523227 m!504093))

(assert (=> b!523227 m!504081))

(declare-fun m!504095 () Bool)

(assert (=> b!523227 m!504095))

(assert (=> b!523227 m!504081))

(declare-fun m!504097 () Bool)

(assert (=> b!523227 m!504097))

(assert (=> b!523227 m!504081))

(declare-fun m!504099 () Bool)

(assert (=> b!523227 m!504099))

(declare-fun m!504101 () Bool)

(assert (=> b!523227 m!504101))

(declare-fun m!504103 () Bool)

(assert (=> b!523227 m!504103))

(declare-fun m!504105 () Bool)

(assert (=> b!523231 m!504105))

(declare-fun m!504107 () Bool)

(assert (=> start!47558 m!504107))

(declare-fun m!504109 () Bool)

(assert (=> start!47558 m!504109))

(declare-fun m!504111 () Bool)

(assert (=> b!523235 m!504111))

(assert (=> b!523232 m!504081))

(assert (=> b!523232 m!504081))

(declare-fun m!504113 () Bool)

(assert (=> b!523232 m!504113))

(assert (=> b!523223 m!504081))

(assert (=> b!523223 m!504081))

(declare-fun m!504115 () Bool)

(assert (=> b!523223 m!504115))

(declare-fun m!504117 () Bool)

(assert (=> b!523229 m!504117))

(declare-fun m!504119 () Bool)

(assert (=> b!523222 m!504119))

(push 1)

(assert (not b!523227))

(assert (not b!523229))

(assert (not b!523231))

(assert (not start!47558))

(assert (not b!523233))

(assert (not b!523222))

(assert (not b!523225))

(assert (not b!523232))

(assert (not b!523223))

(assert (not b!523235))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!523329 () Bool)

(declare-fun c!61588 () Bool)

(declare-fun lt!240182 () (_ BitVec 64))

(assert (=> b!523329 (= c!61588 (= lt!240182 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!305203 () SeekEntryResult!4466)

(declare-fun e!305202 () SeekEntryResult!4466)

(assert (=> b!523329 (= e!305203 e!305202)))

(declare-fun b!523331 () Bool)

(declare-fun lt!240184 () SeekEntryResult!4466)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33281 (_ BitVec 32)) SeekEntryResult!4466)

(assert (=> b!523331 (= e!305202 (seekKeyOrZeroReturnVacant!0 (x!49072 lt!240184) (index!20072 lt!240184) (index!20072 lt!240184) (select (arr!15992 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!523332 () Bool)

(assert (=> b!523332 (= e!305202 (MissingZero!4466 (index!20072 lt!240184)))))

(declare-fun b!523333 () Bool)

(declare-fun e!305201 () SeekEntryResult!4466)

(assert (=> b!523333 (= e!305201 Undefined!4466)))

(declare-fun b!523334 () Bool)

(assert (=> b!523334 (= e!305201 e!305203)))

(assert (=> b!523334 (= lt!240182 (select (arr!15992 a!3235) (index!20072 lt!240184)))))

(declare-fun c!61589 () Bool)

(assert (=> b!523334 (= c!61589 (= lt!240182 (select (arr!15992 a!3235) j!176)))))

(declare-fun b!523330 () Bool)

(assert (=> b!523330 (= e!305203 (Found!4466 (index!20072 lt!240184)))))

(declare-fun d!80415 () Bool)

(declare-fun lt!240183 () SeekEntryResult!4466)

(assert (=> d!80415 (and (or (is-Undefined!4466 lt!240183) (not (is-Found!4466 lt!240183)) (and (bvsge (index!20071 lt!240183) #b00000000000000000000000000000000) (bvslt (index!20071 lt!240183) (size!16356 a!3235)))) (or (is-Undefined!4466 lt!240183) (is-Found!4466 lt!240183) (not (is-MissingZero!4466 lt!240183)) (and (bvsge (index!20070 lt!240183) #b00000000000000000000000000000000) (bvslt (index!20070 lt!240183) (size!16356 a!3235)))) (or (is-Undefined!4466 lt!240183) (is-Found!4466 lt!240183) (is-MissingZero!4466 lt!240183) (not (is-MissingVacant!4466 lt!240183)) (and (bvsge (index!20073 lt!240183) #b00000000000000000000000000000000) (bvslt (index!20073 lt!240183) (size!16356 a!3235)))) (or (is-Undefined!4466 lt!240183) (ite (is-Found!4466 lt!240183) (= (select (arr!15992 a!3235) (index!20071 lt!240183)) (select (arr!15992 a!3235) j!176)) (ite (is-MissingZero!4466 lt!240183) (= (select (arr!15992 a!3235) (index!20070 lt!240183)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!4466 lt!240183) (= (select (arr!15992 a!3235) (index!20073 lt!240183)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!80415 (= lt!240183 e!305201)))

(declare-fun c!61587 () Bool)

(assert (=> d!80415 (= c!61587 (and (is-Intermediate!4466 lt!240184) (undefined!5278 lt!240184)))))

(assert (=> d!80415 (= lt!240184 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15992 a!3235) j!176) mask!3524) (select (arr!15992 a!3235) j!176) a!3235 mask!3524))))

(assert (=> d!80415 (validMask!0 mask!3524)))

(assert (=> d!80415 (= (seekEntryOrOpen!0 (select (arr!15992 a!3235) j!176) a!3235 mask!3524) lt!240183)))

(assert (= (and d!80415 c!61587) b!523333))

(assert (= (and d!80415 (not c!61587)) b!523334))

(assert (= (and b!523334 c!61589) b!523330))

(assert (= (and b!523334 (not c!61589)) b!523329))

(assert (= (and b!523329 c!61588) b!523332))

(assert (= (and b!523329 (not c!61588)) b!523331))

(assert (=> b!523331 m!504081))

(declare-fun m!504187 () Bool)

(assert (=> b!523331 m!504187))

(declare-fun m!504189 () Bool)

(assert (=> b!523334 m!504189))

(assert (=> d!80415 m!504097))

(assert (=> d!80415 m!504081))

(declare-fun m!504191 () Bool)

(assert (=> d!80415 m!504191))

(declare-fun m!504193 () Bool)

(assert (=> d!80415 m!504193))

(assert (=> d!80415 m!504107))

(declare-fun m!504195 () Bool)

(assert (=> d!80415 m!504195))

(declare-fun m!504197 () Bool)

(assert (=> d!80415 m!504197))

(assert (=> d!80415 m!504081))

(assert (=> d!80415 m!504097))

(assert (=> b!523223 d!80415))

(declare-fun b!523364 () Bool)

(declare-fun e!305224 () Bool)

(declare-fun e!305226 () Bool)

(assert (=> b!523364 (= e!305224 e!305226)))

(declare-fun lt!240203 () (_ BitVec 64))

(assert (=> b!523364 (= lt!240203 (select (arr!15992 a!3235) #b00000000000000000000000000000000))))

(declare-fun lt!240204 () Unit!16330)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!33281 (_ BitVec 64) (_ BitVec 32)) Unit!16330)

(assert (=> b!523364 (= lt!240204 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!240203 #b00000000000000000000000000000000))))

(assert (=> b!523364 (arrayContainsKey!0 a!3235 lt!240203 #b00000000000000000000000000000000)))

(declare-fun lt!240202 () Unit!16330)

(assert (=> b!523364 (= lt!240202 lt!240204)))

(declare-fun res!320775 () Bool)

(assert (=> b!523364 (= res!320775 (= (seekEntryOrOpen!0 (select (arr!15992 a!3235) #b00000000000000000000000000000000) a!3235 mask!3524) (Found!4466 #b00000000000000000000000000000000)))))

(assert (=> b!523364 (=> (not res!320775) (not e!305226))))

(declare-fun b!523365 () Bool)

(declare-fun e!305225 () Bool)

(assert (=> b!523365 (= e!305225 e!305224)))

(declare-fun c!61598 () Bool)

(assert (=> b!523365 (= c!61598 (validKeyInArray!0 (select (arr!15992 a!3235) #b00000000000000000000000000000000)))))

(declare-fun bm!31829 () Bool)

(declare-fun call!31832 () Bool)

(assert (=> bm!31829 (= call!31832 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!523366 () Bool)

(assert (=> b!523366 (= e!305224 call!31832)))

(declare-fun b!523367 () Bool)

(assert (=> b!523367 (= e!305226 call!31832)))

(declare-fun d!80423 () Bool)

(declare-fun res!320774 () Bool)

(assert (=> d!80423 (=> res!320774 e!305225)))

(assert (=> d!80423 (= res!320774 (bvsge #b00000000000000000000000000000000 (size!16356 a!3235)))))

(assert (=> d!80423 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524) e!305225)))

(assert (= (and d!80423 (not res!320774)) b!523365))

(assert (= (and b!523365 c!61598) b!523364))

(assert (= (and b!523365 (not c!61598)) b!523366))

(assert (= (and b!523364 res!320775) b!523367))

(assert (= (or b!523367 b!523366) bm!31829))

(declare-fun m!504213 () Bool)

(assert (=> b!523364 m!504213))

(declare-fun m!504215 () Bool)

(assert (=> b!523364 m!504215))

(declare-fun m!504217 () Bool)

(assert (=> b!523364 m!504217))

(assert (=> b!523364 m!504213))

(declare-fun m!504219 () Bool)

(assert (=> b!523364 m!504219))

(assert (=> b!523365 m!504213))

(assert (=> b!523365 m!504213))

(declare-fun m!504221 () Bool)

(assert (=> b!523365 m!504221))

(declare-fun m!504223 () Bool)

(assert (=> bm!31829 m!504223))

(assert (=> b!523233 d!80423))

(declare-fun d!80431 () Bool)

(assert (=> d!80431 (= (validMask!0 mask!3524) (and (or (= mask!3524 #b00000000000000000000000000000111) (= mask!3524 #b00000000000000000000000000001111) (= mask!3524 #b00000000000000000000000000011111) (= mask!3524 #b00000000000000000000000000111111) (= mask!3524 #b00000000000000000000000001111111) (= mask!3524 #b00000000000000000000000011111111) (= mask!3524 #b00000000000000000000000111111111) (= mask!3524 #b00000000000000000000001111111111) (= mask!3524 #b00000000000000000000011111111111) (= mask!3524 #b00000000000000000000111111111111) (= mask!3524 #b00000000000000000001111111111111) (= mask!3524 #b00000000000000000011111111111111) (= mask!3524 #b00000000000000000111111111111111) (= mask!3524 #b00000000000000001111111111111111) (= mask!3524 #b00000000000000011111111111111111) (= mask!3524 #b00000000000000111111111111111111) (= mask!3524 #b00000000000001111111111111111111) (= mask!3524 #b00000000000011111111111111111111) (= mask!3524 #b00000000000111111111111111111111) (= mask!3524 #b00000000001111111111111111111111) (= mask!3524 #b00000000011111111111111111111111) (= mask!3524 #b00000000111111111111111111111111) (= mask!3524 #b00000001111111111111111111111111) (= mask!3524 #b00000011111111111111111111111111) (= mask!3524 #b00000111111111111111111111111111) (= mask!3524 #b00001111111111111111111111111111) (= mask!3524 #b00011111111111111111111111111111) (= mask!3524 #b00111111111111111111111111111111)) (bvsle mask!3524 #b00111111111111111111111111111111)))))

(assert (=> start!47558 d!80431))

(declare-fun d!80441 () Bool)

(assert (=> d!80441 (= (array_inv!11766 a!3235) (bvsge (size!16356 a!3235) #b00000000000000000000000000000000))))

(assert (=> start!47558 d!80441))

(declare-fun b!523400 () Bool)

(declare-fun e!305253 () Bool)

(declare-fun call!31839 () Bool)

(assert (=> b!523400 (= e!305253 call!31839)))

(declare-fun d!80443 () Bool)

(declare-fun res!320797 () Bool)

(declare-fun e!305255 () Bool)

(assert (=> d!80443 (=> res!320797 e!305255)))

(assert (=> d!80443 (= res!320797 (bvsge #b00000000000000000000000000000000 (size!16356 a!3235)))))

(assert (=> d!80443 (= (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10200) e!305255)))

(declare-fun b!523401 () Bool)

(declare-fun e!305256 () Bool)

(assert (=> b!523401 (= e!305256 e!305253)))

(declare-fun c!61605 () Bool)

(assert (=> b!523401 (= c!61605 (validKeyInArray!0 (select (arr!15992 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!523402 () Bool)

(declare-fun e!305254 () Bool)

(declare-fun contains!2773 (List!10203 (_ BitVec 64)) Bool)

(assert (=> b!523402 (= e!305254 (contains!2773 Nil!10200 (select (arr!15992 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!523403 () Bool)

(assert (=> b!523403 (= e!305253 call!31839)))

(declare-fun bm!31836 () Bool)

(assert (=> bm!31836 (= call!31839 (arrayNoDuplicates!0 a!3235 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!61605 (Cons!10199 (select (arr!15992 a!3235) #b00000000000000000000000000000000) Nil!10200) Nil!10200)))))

(declare-fun b!523404 () Bool)

(assert (=> b!523404 (= e!305255 e!305256)))

(declare-fun res!320796 () Bool)

(assert (=> b!523404 (=> (not res!320796) (not e!305256))))

(assert (=> b!523404 (= res!320796 (not e!305254))))

(declare-fun res!320798 () Bool)

(assert (=> b!523404 (=> (not res!320798) (not e!305254))))

(assert (=> b!523404 (= res!320798 (validKeyInArray!0 (select (arr!15992 a!3235) #b00000000000000000000000000000000)))))

(assert (= (and d!80443 (not res!320797)) b!523404))

(assert (= (and b!523404 res!320798) b!523402))

(assert (= (and b!523404 res!320796) b!523401))

(assert (= (and b!523401 c!61605) b!523403))

(assert (= (and b!523401 (not c!61605)) b!523400))

(assert (= (or b!523403 b!523400) bm!31836))

(assert (=> b!523401 m!504213))

(assert (=> b!523401 m!504213))

(assert (=> b!523401 m!504221))

(assert (=> b!523402 m!504213))

(assert (=> b!523402 m!504213))

(declare-fun m!504243 () Bool)

(assert (=> b!523402 m!504243))

(assert (=> bm!31836 m!504213))

(declare-fun m!504245 () Bool)

(assert (=> bm!31836 m!504245))

(assert (=> b!523404 m!504213))

(assert (=> b!523404 m!504213))

(assert (=> b!523404 m!504221))

(assert (=> b!523222 d!80443))

(declare-fun d!80451 () Bool)

(declare-fun res!320803 () Bool)

(declare-fun e!305261 () Bool)

(assert (=> d!80451 (=> res!320803 e!305261)))

(assert (=> d!80451 (= res!320803 (= (select (arr!15992 a!3235) #b00000000000000000000000000000000) k!2280))))

(assert (=> d!80451 (= (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000) e!305261)))

(declare-fun b!523409 () Bool)

(declare-fun e!305262 () Bool)

(assert (=> b!523409 (= e!305261 e!305262)))

(declare-fun res!320804 () Bool)

(assert (=> b!523409 (=> (not res!320804) (not e!305262))))

(assert (=> b!523409 (= res!320804 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16356 a!3235)))))

(declare-fun b!523410 () Bool)

(assert (=> b!523410 (= e!305262 (arrayContainsKey!0 a!3235 k!2280 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!80451 (not res!320803)) b!523409))

(assert (= (and b!523409 res!320804) b!523410))

(assert (=> d!80451 m!504213))

(declare-fun m!504247 () Bool)

(assert (=> b!523410 m!504247))

(assert (=> b!523235 d!80451))

(declare-fun d!80453 () Bool)

(assert (=> d!80453 (= (validKeyInArray!0 k!2280) (and (not (= k!2280 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2280 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!523229 d!80453))

(declare-fun b!523411 () Bool)

(declare-fun c!61607 () Bool)

(declare-fun lt!240211 () (_ BitVec 64))

(assert (=> b!523411 (= c!61607 (= lt!240211 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!305265 () SeekEntryResult!4466)

(declare-fun e!305264 () SeekEntryResult!4466)

(assert (=> b!523411 (= e!305265 e!305264)))

(declare-fun b!523413 () Bool)

(declare-fun lt!240213 () SeekEntryResult!4466)

(assert (=> b!523413 (= e!305264 (seekKeyOrZeroReturnVacant!0 (x!49072 lt!240213) (index!20072 lt!240213) (index!20072 lt!240213) k!2280 a!3235 mask!3524))))

(declare-fun b!523414 () Bool)

(assert (=> b!523414 (= e!305264 (MissingZero!4466 (index!20072 lt!240213)))))

(declare-fun b!523415 () Bool)

(declare-fun e!305263 () SeekEntryResult!4466)

(assert (=> b!523415 (= e!305263 Undefined!4466)))

(declare-fun b!523416 () Bool)

(assert (=> b!523416 (= e!305263 e!305265)))

(assert (=> b!523416 (= lt!240211 (select (arr!15992 a!3235) (index!20072 lt!240213)))))

(declare-fun c!61608 () Bool)

(assert (=> b!523416 (= c!61608 (= lt!240211 k!2280))))

(declare-fun b!523412 () Bool)

(assert (=> b!523412 (= e!305265 (Found!4466 (index!20072 lt!240213)))))

(declare-fun d!80455 () Bool)

(declare-fun lt!240212 () SeekEntryResult!4466)

(assert (=> d!80455 (and (or (is-Undefined!4466 lt!240212) (not (is-Found!4466 lt!240212)) (and (bvsge (index!20071 lt!240212) #b00000000000000000000000000000000) (bvslt (index!20071 lt!240212) (size!16356 a!3235)))) (or (is-Undefined!4466 lt!240212) (is-Found!4466 lt!240212) (not (is-MissingZero!4466 lt!240212)) (and (bvsge (index!20070 lt!240212) #b00000000000000000000000000000000) (bvslt (index!20070 lt!240212) (size!16356 a!3235)))) (or (is-Undefined!4466 lt!240212) (is-Found!4466 lt!240212) (is-MissingZero!4466 lt!240212) (not (is-MissingVacant!4466 lt!240212)) (and (bvsge (index!20073 lt!240212) #b00000000000000000000000000000000) (bvslt (index!20073 lt!240212) (size!16356 a!3235)))) (or (is-Undefined!4466 lt!240212) (ite (is-Found!4466 lt!240212) (= (select (arr!15992 a!3235) (index!20071 lt!240212)) k!2280) (ite (is-MissingZero!4466 lt!240212) (= (select (arr!15992 a!3235) (index!20070 lt!240212)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!4466 lt!240212) (= (select (arr!15992 a!3235) (index!20073 lt!240212)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!80455 (= lt!240212 e!305263)))

(declare-fun c!61606 () Bool)

(assert (=> d!80455 (= c!61606 (and (is-Intermediate!4466 lt!240213) (undefined!5278 lt!240213)))))

(assert (=> d!80455 (= lt!240213 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2280 mask!3524) k!2280 a!3235 mask!3524))))

(assert (=> d!80455 (validMask!0 mask!3524)))

(assert (=> d!80455 (= (seekEntryOrOpen!0 k!2280 a!3235 mask!3524) lt!240212)))

(assert (= (and d!80455 c!61606) b!523415))

(assert (= (and d!80455 (not c!61606)) b!523416))

(assert (= (and b!523416 c!61608) b!523412))

(assert (= (and b!523416 (not c!61608)) b!523411))

(assert (= (and b!523411 c!61607) b!523414))

(assert (= (and b!523411 (not c!61607)) b!523413))

(declare-fun m!504249 () Bool)

(assert (=> b!523413 m!504249))

(declare-fun m!504251 () Bool)

(assert (=> b!523416 m!504251))

(declare-fun m!504253 () Bool)

(assert (=> d!80455 m!504253))

(declare-fun m!504255 () Bool)

(assert (=> d!80455 m!504255))

(declare-fun m!504257 () Bool)

(assert (=> d!80455 m!504257))

(assert (=> d!80455 m!504107))

(declare-fun m!504259 () Bool)

(assert (=> d!80455 m!504259))

(declare-fun m!504261 () Bool)

(assert (=> d!80455 m!504261))

(assert (=> d!80455 m!504253))

(assert (=> b!523231 d!80455))

(declare-fun d!80457 () Bool)

(declare-fun e!305291 () Bool)

(assert (=> d!80457 e!305291))

(declare-fun res!320822 () Bool)

(assert (=> d!80457 (=> (not res!320822) (not e!305291))))

(assert (=> d!80457 (= res!320822 (and (or (bvslt i!1204 #b00000000000000000000000000000000) (bvsge i!1204 (size!16356 a!3235)) (and (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16356 a!3235)))) (or (bvslt i!1204 #b00000000000000000000000000000000) (bvsge i!1204 (size!16356 a!3235)) (and (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16356 a!3235)))) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16356 a!3235))))))

(declare-fun lt!240227 () Unit!16330)

(declare-fun choose!47 (array!33281 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16330)

(assert (=> d!80457 (= lt!240227 (choose!47 a!3235 i!1204 k!2280 j!176 lt!240128 #b00000000000000000000000000000000 (index!20072 lt!240133) (x!49072 lt!240133) mask!3524))))

(assert (=> d!80457 (validMask!0 mask!3524)))

(assert (=> d!80457 (= (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!240128 #b00000000000000000000000000000000 (index!20072 lt!240133) (x!49072 lt!240133) mask!3524) lt!240227)))

(declare-fun b!523458 () Bool)

(assert (=> b!523458 (= e!305291 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!240128 (select (store (arr!15992 a!3235) i!1204 k!2280) j!176) (array!33282 (store (arr!15992 a!3235) i!1204 k!2280) (size!16356 a!3235)) mask!3524) (Intermediate!4466 false (index!20072 lt!240133) (x!49072 lt!240133))))))

(assert (= (and d!80457 res!320822) b!523458))

(declare-fun m!504279 () Bool)

(assert (=> d!80457 m!504279))

(assert (=> d!80457 m!504107))

(assert (=> b!523458 m!504091))

(assert (=> b!523458 m!504093))

(assert (=> b!523458 m!504093))

(declare-fun m!504283 () Bool)

(assert (=> b!523458 m!504283))

(assert (=> b!523225 d!80457))

(declare-fun b!523506 () Bool)

(declare-fun lt!240238 () SeekEntryResult!4466)

(assert (=> b!523506 (and (bvsge (index!20072 lt!240238) #b00000000000000000000000000000000) (bvslt (index!20072 lt!240238) (size!16356 lt!240126)))))

(declare-fun res!320849 () Bool)

(assert (=> b!523506 (= res!320849 (= (select (arr!15992 lt!240126) (index!20072 lt!240238)) lt!240131))))

(declare-fun e!305327 () Bool)

(assert (=> b!523506 (=> res!320849 e!305327)))

(declare-fun e!305330 () Bool)

(assert (=> b!523506 (= e!305330 e!305327)))

(declare-fun b!523507 () Bool)

(declare-fun e!305326 () SeekEntryResult!4466)

(assert (=> b!523507 (= e!305326 (Intermediate!4466 true lt!240128 #b00000000000000000000000000000000))))

(declare-fun b!523508 () Bool)

(declare-fun e!305328 () SeekEntryResult!4466)

(assert (=> b!523508 (= e!305326 e!305328)))

(declare-fun c!61633 () Bool)

(declare-fun lt!240239 () (_ BitVec 64))

(assert (=> b!523508 (= c!61633 (or (= lt!240239 lt!240131) (= (bvadd lt!240239 lt!240239) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!80463 () Bool)

(declare-fun e!305329 () Bool)

(assert (=> d!80463 e!305329))

(declare-fun c!61634 () Bool)

(assert (=> d!80463 (= c!61634 (and (is-Intermediate!4466 lt!240238) (undefined!5278 lt!240238)))))

(assert (=> d!80463 (= lt!240238 e!305326)))

(declare-fun c!61632 () Bool)

(assert (=> d!80463 (= c!61632 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!80463 (= lt!240239 (select (arr!15992 lt!240126) lt!240128))))

(assert (=> d!80463 (validMask!0 mask!3524)))

(assert (=> d!80463 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!240128 lt!240131 lt!240126 mask!3524) lt!240238)))

(declare-fun b!523509 () Bool)

(assert (=> b!523509 (and (bvsge (index!20072 lt!240238) #b00000000000000000000000000000000) (bvslt (index!20072 lt!240238) (size!16356 lt!240126)))))

(declare-fun res!320850 () Bool)

(assert (=> b!523509 (= res!320850 (= (select (arr!15992 lt!240126) (index!20072 lt!240238)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!523509 (=> res!320850 e!305327)))

(declare-fun b!523510 () Bool)

(assert (=> b!523510 (= e!305328 (Intermediate!4466 false lt!240128 #b00000000000000000000000000000000))))

(declare-fun b!523511 () Bool)

(assert (=> b!523511 (= e!305329 e!305330)))

(declare-fun res!320848 () Bool)

(assert (=> b!523511 (= res!320848 (and (is-Intermediate!4466 lt!240238) (not (undefined!5278 lt!240238)) (bvslt (x!49072 lt!240238) #b01111111111111111111111111111110) (bvsge (x!49072 lt!240238) #b00000000000000000000000000000000) (bvsge (x!49072 lt!240238) #b00000000000000000000000000000000)))))

(assert (=> b!523511 (=> (not res!320848) (not e!305330))))

(declare-fun b!523512 () Bool)

(assert (=> b!523512 (= e!305329 (bvsge (x!49072 lt!240238) #b01111111111111111111111111111110))))

(declare-fun b!523513 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!523513 (= e!305328 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!240128 #b00000000000000000000000000000000 mask!3524) lt!240131 lt!240126 mask!3524))))

(declare-fun b!523514 () Bool)

(assert (=> b!523514 (and (bvsge (index!20072 lt!240238) #b00000000000000000000000000000000) (bvslt (index!20072 lt!240238) (size!16356 lt!240126)))))

(assert (=> b!523514 (= e!305327 (= (select (arr!15992 lt!240126) (index!20072 lt!240238)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!80463 c!61632) b!523507))

(assert (= (and d!80463 (not c!61632)) b!523508))

(assert (= (and b!523508 c!61633) b!523510))

(assert (= (and b!523508 (not c!61633)) b!523513))

(assert (= (and d!80463 c!61634) b!523512))

(assert (= (and d!80463 (not c!61634)) b!523511))

(assert (= (and b!523511 res!320848) b!523506))

(assert (= (and b!523506 (not res!320849)) b!523509))

(assert (= (and b!523509 (not res!320850)) b!523514))

(declare-fun m!504295 () Bool)

(assert (=> b!523514 m!504295))

(assert (=> b!523506 m!504295))

(declare-fun m!504297 () Bool)

(assert (=> d!80463 m!504297))

(assert (=> d!80463 m!504107))

(declare-fun m!504299 () Bool)

(assert (=> b!523513 m!504299))

(assert (=> b!523513 m!504299))

(declare-fun m!504301 () Bool)

(assert (=> b!523513 m!504301))

(assert (=> b!523509 m!504295))

(assert (=> b!523225 d!80463))

(declare-fun b!523515 () Bool)

(declare-fun lt!240240 () SeekEntryResult!4466)

(assert (=> b!523515 (and (bvsge (index!20072 lt!240240) #b00000000000000000000000000000000) (bvslt (index!20072 lt!240240) (size!16356 a!3235)))))

(declare-fun res!320852 () Bool)

(assert (=> b!523515 (= res!320852 (= (select (arr!15992 a!3235) (index!20072 lt!240240)) (select (arr!15992 a!3235) j!176)))))

(declare-fun e!305332 () Bool)

(assert (=> b!523515 (=> res!320852 e!305332)))

(declare-fun e!305335 () Bool)

(assert (=> b!523515 (= e!305335 e!305332)))

(declare-fun b!523516 () Bool)

(declare-fun e!305331 () SeekEntryResult!4466)

(assert (=> b!523516 (= e!305331 (Intermediate!4466 true lt!240128 #b00000000000000000000000000000000))))

(declare-fun b!523517 () Bool)

(declare-fun e!305333 () SeekEntryResult!4466)

(assert (=> b!523517 (= e!305331 e!305333)))

(declare-fun lt!240241 () (_ BitVec 64))

(declare-fun c!61636 () Bool)

(assert (=> b!523517 (= c!61636 (or (= lt!240241 (select (arr!15992 a!3235) j!176)) (= (bvadd lt!240241 lt!240241) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!80473 () Bool)

(declare-fun e!305334 () Bool)

(assert (=> d!80473 e!305334))

(declare-fun c!61637 () Bool)

(assert (=> d!80473 (= c!61637 (and (is-Intermediate!4466 lt!240240) (undefined!5278 lt!240240)))))

(assert (=> d!80473 (= lt!240240 e!305331)))

(declare-fun c!61635 () Bool)

(assert (=> d!80473 (= c!61635 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!80473 (= lt!240241 (select (arr!15992 a!3235) lt!240128))))

(assert (=> d!80473 (validMask!0 mask!3524)))

(assert (=> d!80473 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!240128 (select (arr!15992 a!3235) j!176) a!3235 mask!3524) lt!240240)))

(declare-fun b!523518 () Bool)

(assert (=> b!523518 (and (bvsge (index!20072 lt!240240) #b00000000000000000000000000000000) (bvslt (index!20072 lt!240240) (size!16356 a!3235)))))

(declare-fun res!320853 () Bool)

(assert (=> b!523518 (= res!320853 (= (select (arr!15992 a!3235) (index!20072 lt!240240)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!523518 (=> res!320853 e!305332)))

(declare-fun b!523519 () Bool)

(assert (=> b!523519 (= e!305333 (Intermediate!4466 false lt!240128 #b00000000000000000000000000000000))))

(declare-fun b!523520 () Bool)

(assert (=> b!523520 (= e!305334 e!305335)))

(declare-fun res!320851 () Bool)

(assert (=> b!523520 (= res!320851 (and (is-Intermediate!4466 lt!240240) (not (undefined!5278 lt!240240)) (bvslt (x!49072 lt!240240) #b01111111111111111111111111111110) (bvsge (x!49072 lt!240240) #b00000000000000000000000000000000) (bvsge (x!49072 lt!240240) #b00000000000000000000000000000000)))))

(assert (=> b!523520 (=> (not res!320851) (not e!305335))))

(declare-fun b!523521 () Bool)

(assert (=> b!523521 (= e!305334 (bvsge (x!49072 lt!240240) #b01111111111111111111111111111110))))

(declare-fun b!523522 () Bool)

(assert (=> b!523522 (= e!305333 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!240128 #b00000000000000000000000000000000 mask!3524) (select (arr!15992 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!523523 () Bool)

(assert (=> b!523523 (and (bvsge (index!20072 lt!240240) #b00000000000000000000000000000000) (bvslt (index!20072 lt!240240) (size!16356 a!3235)))))

(assert (=> b!523523 (= e!305332 (= (select (arr!15992 a!3235) (index!20072 lt!240240)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!80473 c!61635) b!523516))

(assert (= (and d!80473 (not c!61635)) b!523517))

(assert (= (and b!523517 c!61636) b!523519))

(assert (= (and b!523517 (not c!61636)) b!523522))

(assert (= (and d!80473 c!61637) b!523521))

(assert (= (and d!80473 (not c!61637)) b!523520))

(assert (= (and b!523520 res!320851) b!523515))

(assert (= (and b!523515 (not res!320852)) b!523518))

(assert (= (and b!523518 (not res!320853)) b!523523))

(declare-fun m!504303 () Bool)

(assert (=> b!523523 m!504303))

(assert (=> b!523515 m!504303))

(declare-fun m!504305 () Bool)

(assert (=> d!80473 m!504305))

(assert (=> d!80473 m!504107))

(assert (=> b!523522 m!504299))

(assert (=> b!523522 m!504299))

(assert (=> b!523522 m!504081))

(declare-fun m!504307 () Bool)

(assert (=> b!523522 m!504307))

(assert (=> b!523518 m!504303))

(assert (=> b!523227 d!80473))

(declare-fun d!80475 () Bool)

(declare-fun lt!240250 () (_ BitVec 32))

(declare-fun lt!240249 () (_ BitVec 32))

(assert (=> d!80475 (= lt!240250 (bvmul (bvxor lt!240249 (bvlshr lt!240249 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!80475 (= lt!240249 ((_ extract 31 0) (bvand (bvxor (select (arr!15992 a!3235) j!176) (bvlshr (select (arr!15992 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!80475 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!320854 (let ((h!11126 ((_ extract 31 0) (bvand (bvxor (select (arr!15992 a!3235) j!176) (bvlshr (select (arr!15992 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!49080 (bvmul (bvxor h!11126 (bvlshr h!11126 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!49080 (bvlshr x!49080 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!320854 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!320854 #b00000000000000000000000000000000))))))

(assert (=> d!80475 (= (toIndex!0 (select (arr!15992 a!3235) j!176) mask!3524) (bvand (bvxor lt!240250 (bvlshr lt!240250 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!523227 d!80475))

(declare-fun b!523528 () Bool)

(declare-fun lt!240251 () SeekEntryResult!4466)

(assert (=> b!523528 (and (bvsge (index!20072 lt!240251) #b00000000000000000000000000000000) (bvslt (index!20072 lt!240251) (size!16356 lt!240126)))))

(declare-fun res!320859 () Bool)

(assert (=> b!523528 (= res!320859 (= (select (arr!15992 lt!240126) (index!20072 lt!240251)) lt!240131))))

(declare-fun e!305340 () Bool)

(assert (=> b!523528 (=> res!320859 e!305340)))

(declare-fun e!305343 () Bool)

(assert (=> b!523528 (= e!305343 e!305340)))

(declare-fun b!523529 () Bool)

(declare-fun e!305339 () SeekEntryResult!4466)

(assert (=> b!523529 (= e!305339 (Intermediate!4466 true lt!240127 #b00000000000000000000000000000000))))

(declare-fun b!523530 () Bool)

(declare-fun e!305341 () SeekEntryResult!4466)

(assert (=> b!523530 (= e!305339 e!305341)))

(declare-fun c!61640 () Bool)

(declare-fun lt!240252 () (_ BitVec 64))

(assert (=> b!523530 (= c!61640 (or (= lt!240252 lt!240131) (= (bvadd lt!240252 lt!240252) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!80479 () Bool)

(declare-fun e!305342 () Bool)

(assert (=> d!80479 e!305342))

(declare-fun c!61641 () Bool)

(assert (=> d!80479 (= c!61641 (and (is-Intermediate!4466 lt!240251) (undefined!5278 lt!240251)))))

(assert (=> d!80479 (= lt!240251 e!305339)))

(declare-fun c!61639 () Bool)

(assert (=> d!80479 (= c!61639 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!80479 (= lt!240252 (select (arr!15992 lt!240126) lt!240127))))

(assert (=> d!80479 (validMask!0 mask!3524)))

(assert (=> d!80479 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!240127 lt!240131 lt!240126 mask!3524) lt!240251)))

(declare-fun b!523531 () Bool)

(assert (=> b!523531 (and (bvsge (index!20072 lt!240251) #b00000000000000000000000000000000) (bvslt (index!20072 lt!240251) (size!16356 lt!240126)))))

(declare-fun res!320860 () Bool)

(assert (=> b!523531 (= res!320860 (= (select (arr!15992 lt!240126) (index!20072 lt!240251)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!523531 (=> res!320860 e!305340)))

(declare-fun b!523532 () Bool)

(assert (=> b!523532 (= e!305341 (Intermediate!4466 false lt!240127 #b00000000000000000000000000000000))))

(declare-fun b!523533 () Bool)

(assert (=> b!523533 (= e!305342 e!305343)))

(declare-fun res!320858 () Bool)

(assert (=> b!523533 (= res!320858 (and (is-Intermediate!4466 lt!240251) (not (undefined!5278 lt!240251)) (bvslt (x!49072 lt!240251) #b01111111111111111111111111111110) (bvsge (x!49072 lt!240251) #b00000000000000000000000000000000) (bvsge (x!49072 lt!240251) #b00000000000000000000000000000000)))))

(assert (=> b!523533 (=> (not res!320858) (not e!305343))))

(declare-fun b!523534 () Bool)

(assert (=> b!523534 (= e!305342 (bvsge (x!49072 lt!240251) #b01111111111111111111111111111110))))

(declare-fun b!523535 () Bool)

(assert (=> b!523535 (= e!305341 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!240127 #b00000000000000000000000000000000 mask!3524) lt!240131 lt!240126 mask!3524))))

(declare-fun b!523536 () Bool)

(assert (=> b!523536 (and (bvsge (index!20072 lt!240251) #b00000000000000000000000000000000) (bvslt (index!20072 lt!240251) (size!16356 lt!240126)))))

(assert (=> b!523536 (= e!305340 (= (select (arr!15992 lt!240126) (index!20072 lt!240251)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!80479 c!61639) b!523529))

(assert (= (and d!80479 (not c!61639)) b!523530))

(assert (= (and b!523530 c!61640) b!523532))

(assert (= (and b!523530 (not c!61640)) b!523535))

(assert (= (and d!80479 c!61641) b!523534))

(assert (= (and d!80479 (not c!61641)) b!523533))

(assert (= (and b!523533 res!320858) b!523528))

(assert (= (and b!523528 (not res!320859)) b!523531))

(assert (= (and b!523531 (not res!320860)) b!523536))

(declare-fun m!504317 () Bool)

(assert (=> b!523536 m!504317))

(assert (=> b!523528 m!504317))

(declare-fun m!504319 () Bool)

(assert (=> d!80479 m!504319))

(assert (=> d!80479 m!504107))

(declare-fun m!504321 () Bool)

(assert (=> b!523535 m!504321))

(assert (=> b!523535 m!504321))

(declare-fun m!504323 () Bool)

(assert (=> b!523535 m!504323))

(assert (=> b!523531 m!504317))

(assert (=> b!523227 d!80479))

(declare-fun b!523537 () Bool)

(declare-fun e!305344 () Bool)

(declare-fun e!305346 () Bool)

(assert (=> b!523537 (= e!305344 e!305346)))

(declare-fun lt!240258 () (_ BitVec 64))

(assert (=> b!523537 (= lt!240258 (select (arr!15992 a!3235) j!176))))

(declare-fun lt!240259 () Unit!16330)

(assert (=> b!523537 (= lt!240259 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!240258 j!176))))

(assert (=> b!523537 (arrayContainsKey!0 a!3235 lt!240258 #b00000000000000000000000000000000)))

(declare-fun lt!240257 () Unit!16330)

(assert (=> b!523537 (= lt!240257 lt!240259)))

(declare-fun res!320862 () Bool)

(assert (=> b!523537 (= res!320862 (= (seekEntryOrOpen!0 (select (arr!15992 a!3235) j!176) a!3235 mask!3524) (Found!4466 j!176)))))

(assert (=> b!523537 (=> (not res!320862) (not e!305346))))

(declare-fun b!523538 () Bool)

(declare-fun e!305345 () Bool)

(assert (=> b!523538 (= e!305345 e!305344)))

(declare-fun c!61642 () Bool)

(assert (=> b!523538 (= c!61642 (validKeyInArray!0 (select (arr!15992 a!3235) j!176)))))

(declare-fun call!31846 () Bool)

(declare-fun bm!31843 () Bool)

(assert (=> bm!31843 (= call!31846 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!176 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!523539 () Bool)

(assert (=> b!523539 (= e!305344 call!31846)))

(declare-fun b!523540 () Bool)

(assert (=> b!523540 (= e!305346 call!31846)))

(declare-fun d!80481 () Bool)

(declare-fun res!320861 () Bool)

(assert (=> d!80481 (=> res!320861 e!305345)))

(assert (=> d!80481 (= res!320861 (bvsge j!176 (size!16356 a!3235)))))

(assert (=> d!80481 (= (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524) e!305345)))

(assert (= (and d!80481 (not res!320861)) b!523538))

(assert (= (and b!523538 c!61642) b!523537))

(assert (= (and b!523538 (not c!61642)) b!523539))

(assert (= (and b!523537 res!320862) b!523540))

(assert (= (or b!523540 b!523539) bm!31843))

(assert (=> b!523537 m!504081))

(declare-fun m!504325 () Bool)

(assert (=> b!523537 m!504325))

(declare-fun m!504327 () Bool)

(assert (=> b!523537 m!504327))

(assert (=> b!523537 m!504081))

(assert (=> b!523537 m!504115))

(assert (=> b!523538 m!504081))

(assert (=> b!523538 m!504081))

(assert (=> b!523538 m!504113))

(declare-fun m!504329 () Bool)

(assert (=> bm!31843 m!504329))

(assert (=> b!523227 d!80481))

(declare-fun d!80483 () Bool)

(declare-fun lt!240263 () (_ BitVec 32))

(declare-fun lt!240262 () (_ BitVec 32))

(assert (=> d!80483 (= lt!240263 (bvmul (bvxor lt!240262 (bvlshr lt!240262 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!80483 (= lt!240262 ((_ extract 31 0) (bvand (bvxor lt!240131 (bvlshr lt!240131 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!80483 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!320854 (let ((h!11126 ((_ extract 31 0) (bvand (bvxor lt!240131 (bvlshr lt!240131 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!49080 (bvmul (bvxor h!11126 (bvlshr h!11126 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!49080 (bvlshr x!49080 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!320854 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!320854 #b00000000000000000000000000000000))))))

(assert (=> d!80483 (= (toIndex!0 lt!240131 mask!3524) (bvand (bvxor lt!240263 (bvlshr lt!240263 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!523227 d!80483))

(declare-fun d!80485 () Bool)

(assert (=> d!80485 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!240271 () Unit!16330)

(declare-fun choose!38 (array!33281 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16330)

(assert (=> d!80485 (= lt!240271 (choose!38 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (=> d!80485 (validMask!0 mask!3524)))

(assert (=> d!80485 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176) lt!240271)))

(declare-fun bs!16447 () Bool)

(assert (= bs!16447 d!80485))

(assert (=> bs!16447 m!504099))

(declare-fun m!504345 () Bool)

(assert (=> bs!16447 m!504345))

(assert (=> bs!16447 m!504107))

(assert (=> b!523227 d!80485))

(declare-fun d!80493 () Bool)

(assert (=> d!80493 (= (validKeyInArray!0 (select (arr!15992 a!3235) j!176)) (and (not (= (select (arr!15992 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15992 a!3235) j!176) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!523232 d!80493))

(push 1)

