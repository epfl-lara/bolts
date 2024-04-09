; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30352 () Bool)

(assert start!30352)

(declare-fun b!303804 () Bool)

(declare-fun res!161457 () Bool)

(declare-fun e!191024 () Bool)

(assert (=> b!303804 (=> (not res!161457) (not e!191024))))

(declare-datatypes ((array!15456 0))(
  ( (array!15457 (arr!7314 (Array (_ BitVec 32) (_ BitVec 64))) (size!7666 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15456)

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!303804 (= res!161457 (and (= (select (arr!7314 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7666 a!3293))))))

(declare-fun b!303805 () Bool)

(declare-fun res!161452 () Bool)

(assert (=> b!303805 (=> (not res!161452) (not e!191024))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2465 0))(
  ( (MissingZero!2465 (index!12036 (_ BitVec 32))) (Found!2465 (index!12037 (_ BitVec 32))) (Intermediate!2465 (undefined!3277 Bool) (index!12038 (_ BitVec 32)) (x!30253 (_ BitVec 32))) (Undefined!2465) (MissingVacant!2465 (index!12039 (_ BitVec 32))) )
))
(declare-fun lt!150263 () SeekEntryResult!2465)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15456 (_ BitVec 32)) SeekEntryResult!2465)

(assert (=> b!303805 (= res!161452 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!150263))))

(declare-fun b!303806 () Bool)

(declare-fun res!161448 () Bool)

(declare-fun e!191026 () Bool)

(assert (=> b!303806 (=> (not res!161448) (not e!191026))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15456 (_ BitVec 32)) Bool)

(assert (=> b!303806 (= res!161448 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!303808 () Bool)

(declare-fun res!161456 () Bool)

(assert (=> b!303808 (=> (not res!161456) (not e!191024))))

(assert (=> b!303808 (= res!161456 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7314 a!3293) index!1781) k!2441)) (= x!1427 resX!52) (not (= resIndex!52 index!1781)) (not (= (select (arr!7314 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7314 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!303809 () Bool)

(assert (=> b!303809 (= e!191026 e!191024)))

(declare-fun res!161450 () Bool)

(assert (=> b!303809 (=> (not res!161450) (not e!191024))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!303809 (= res!161450 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!150263))))

(assert (=> b!303809 (= lt!150263 (Intermediate!2465 false resIndex!52 resX!52))))

(declare-fun b!303810 () Bool)

(declare-fun lt!150262 () (_ BitVec 32))

(assert (=> b!303810 (= e!191024 (and (bvsge mask!3709 #b00000000000000000000000000000000) (or (bvslt lt!150262 #b00000000000000000000000000000000) (bvsge lt!150262 (bvadd #b00000000000000000000000000000001 mask!3709)))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!303810 (= lt!150262 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!303811 () Bool)

(declare-fun res!161453 () Bool)

(assert (=> b!303811 (=> (not res!161453) (not e!191026))))

(declare-fun arrayContainsKey!0 (array!15456 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!303811 (= res!161453 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun res!161451 () Bool)

(assert (=> start!30352 (=> (not res!161451) (not e!191026))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30352 (= res!161451 (validMask!0 mask!3709))))

(assert (=> start!30352 e!191026))

(declare-fun array_inv!5268 (array!15456) Bool)

(assert (=> start!30352 (array_inv!5268 a!3293)))

(assert (=> start!30352 true))

(declare-fun b!303807 () Bool)

(declare-fun res!161455 () Bool)

(assert (=> b!303807 (=> (not res!161455) (not e!191026))))

(assert (=> b!303807 (= res!161455 (and (= (size!7666 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7666 a!3293))))))

(declare-fun b!303812 () Bool)

(declare-fun res!161449 () Bool)

(assert (=> b!303812 (=> (not res!161449) (not e!191026))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!303812 (= res!161449 (validKeyInArray!0 k!2441))))

(declare-fun b!303813 () Bool)

(declare-fun res!161454 () Bool)

(assert (=> b!303813 (=> (not res!161454) (not e!191026))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15456 (_ BitVec 32)) SeekEntryResult!2465)

(assert (=> b!303813 (= res!161454 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2465 i!1240)))))

(assert (= (and start!30352 res!161451) b!303807))

(assert (= (and b!303807 res!161455) b!303812))

(assert (= (and b!303812 res!161449) b!303811))

(assert (= (and b!303811 res!161453) b!303813))

(assert (= (and b!303813 res!161454) b!303806))

(assert (= (and b!303806 res!161448) b!303809))

(assert (= (and b!303809 res!161450) b!303804))

(assert (= (and b!303804 res!161457) b!303805))

(assert (= (and b!303805 res!161452) b!303808))

(assert (= (and b!303808 res!161456) b!303810))

(declare-fun m!315085 () Bool)

(assert (=> b!303806 m!315085))

(declare-fun m!315087 () Bool)

(assert (=> b!303813 m!315087))

(declare-fun m!315089 () Bool)

(assert (=> b!303811 m!315089))

(declare-fun m!315091 () Bool)

(assert (=> b!303805 m!315091))

(declare-fun m!315093 () Bool)

(assert (=> b!303810 m!315093))

(declare-fun m!315095 () Bool)

(assert (=> start!30352 m!315095))

(declare-fun m!315097 () Bool)

(assert (=> start!30352 m!315097))

(declare-fun m!315099 () Bool)

(assert (=> b!303809 m!315099))

(assert (=> b!303809 m!315099))

(declare-fun m!315101 () Bool)

(assert (=> b!303809 m!315101))

(declare-fun m!315103 () Bool)

(assert (=> b!303808 m!315103))

(declare-fun m!315105 () Bool)

(assert (=> b!303812 m!315105))

(declare-fun m!315107 () Bool)

(assert (=> b!303804 m!315107))

(push 1)

(assert (not b!303805))

(assert (not b!303812))

(assert (not b!303810))

(assert (not b!303806))

(assert (not b!303813))

(assert (not b!303809))

(assert (not b!303811))

(assert (not start!30352))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!67925 () Bool)

(declare-fun lt!150278 () (_ BitVec 32))

(assert (=> d!67925 (and (bvsge lt!150278 #b00000000000000000000000000000000) (bvslt lt!150278 (bvadd mask!3709 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!67925 (= lt!150278 (choose!52 index!1781 x!1427 mask!3709))))

(assert (=> d!67925 (validMask!0 mask!3709)))

(assert (=> d!67925 (= (nextIndex!0 index!1781 x!1427 mask!3709) lt!150278)))

(declare-fun bs!10707 () Bool)

(assert (= bs!10707 d!67925))

(declare-fun m!315117 () Bool)

(assert (=> bs!10707 m!315117))

(assert (=> bs!10707 m!315095))

(assert (=> b!303810 d!67925))

(declare-fun b!303919 () Bool)

(declare-fun e!191089 () Bool)

(declare-fun e!191090 () Bool)

(assert (=> b!303919 (= e!191089 e!191090)))

(declare-fun res!161494 () Bool)

(declare-fun lt!150306 () SeekEntryResult!2465)

(assert (=> b!303919 (= res!161494 (and (is-Intermediate!2465 lt!150306) (not (undefined!3277 lt!150306)) (bvslt (x!30253 lt!150306) #b01111111111111111111111111111110) (bvsge (x!30253 lt!150306) #b00000000000000000000000000000000) (bvsge (x!30253 lt!150306) x!1427)))))

(assert (=> b!303919 (=> (not res!161494) (not e!191090))))

(declare-fun b!303920 () Bool)

(declare-fun e!191091 () SeekEntryResult!2465)

(declare-fun e!191087 () SeekEntryResult!2465)

(assert (=> b!303920 (= e!191091 e!191087)))

(declare-fun c!48813 () Bool)

(declare-fun lt!150307 () (_ BitVec 64))

(assert (=> b!303920 (= c!48813 (or (= lt!150307 k!2441) (= (bvadd lt!150307 lt!150307) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!303921 () Bool)

(assert (=> b!303921 (and (bvsge (index!12038 lt!150306) #b00000000000000000000000000000000) (bvslt (index!12038 lt!150306) (size!7666 a!3293)))))

(declare-fun e!191088 () Bool)

(assert (=> b!303921 (= e!191088 (= (select (arr!7314 a!3293) (index!12038 lt!150306)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!303922 () Bool)

(assert (=> b!303922 (= e!191087 (Intermediate!2465 false index!1781 x!1427))))

(declare-fun d!67927 () Bool)

(assert (=> d!67927 e!191089))

(declare-fun c!48814 () Bool)

(assert (=> d!67927 (= c!48814 (and (is-Intermediate!2465 lt!150306) (undefined!3277 lt!150306)))))

(assert (=> d!67927 (= lt!150306 e!191091)))

(declare-fun c!48815 () Bool)

(assert (=> d!67927 (= c!48815 (bvsge x!1427 #b01111111111111111111111111111110))))

(assert (=> d!67927 (= lt!150307 (select (arr!7314 a!3293) index!1781))))

(assert (=> d!67927 (validMask!0 mask!3709)))

(assert (=> d!67927 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!150306)))

(declare-fun b!303923 () Bool)

(assert (=> b!303923 (= e!191087 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1427 #b00000000000000000000000000000001) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun b!303924 () Bool)

(assert (=> b!303924 (= e!191091 (Intermediate!2465 true index!1781 x!1427))))

(declare-fun b!303925 () Bool)

(assert (=> b!303925 (and (bvsge (index!12038 lt!150306) #b00000000000000000000000000000000) (bvslt (index!12038 lt!150306) (size!7666 a!3293)))))

(declare-fun res!161493 () Bool)

(assert (=> b!303925 (= res!161493 (= (select (arr!7314 a!3293) (index!12038 lt!150306)) k!2441))))

(assert (=> b!303925 (=> res!161493 e!191088)))

(assert (=> b!303925 (= e!191090 e!191088)))

(declare-fun b!303926 () Bool)

(assert (=> b!303926 (and (bvsge (index!12038 lt!150306) #b00000000000000000000000000000000) (bvslt (index!12038 lt!150306) (size!7666 a!3293)))))

(declare-fun res!161492 () Bool)

(assert (=> b!303926 (= res!161492 (= (select (arr!7314 a!3293) (index!12038 lt!150306)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!303926 (=> res!161492 e!191088)))

(declare-fun b!303927 () Bool)

(assert (=> b!303927 (= e!191089 (bvsge (x!30253 lt!150306) #b01111111111111111111111111111110))))

(assert (= (and d!67927 c!48815) b!303924))

(assert (= (and d!67927 (not c!48815)) b!303920))

(assert (= (and b!303920 c!48813) b!303922))

(assert (= (and b!303920 (not c!48813)) b!303923))

(assert (= (and d!67927 c!48814) b!303927))

(assert (= (and d!67927 (not c!48814)) b!303919))

(assert (= (and b!303919 res!161494) b!303925))

(assert (= (and b!303925 (not res!161493)) b!303926))

(assert (= (and b!303926 (not res!161492)) b!303921))

(assert (=> b!303923 m!315093))

(assert (=> b!303923 m!315093))

(declare-fun m!315145 () Bool)

(assert (=> b!303923 m!315145))

(declare-fun m!315147 () Bool)

(assert (=> b!303926 m!315147))

(assert (=> b!303921 m!315147))

(assert (=> d!67927 m!315103))

(assert (=> d!67927 m!315095))

(assert (=> b!303925 m!315147))

(assert (=> b!303805 d!67927))

(declare-fun d!67941 () Bool)

(declare-fun res!161503 () Bool)

(declare-fun e!191102 () Bool)

(assert (=> d!67941 (=> res!161503 e!191102)))

(assert (=> d!67941 (= res!161503 (= (select (arr!7314 a!3293) #b00000000000000000000000000000000) k!2441))))

(assert (=> d!67941 (= (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000) e!191102)))

(declare-fun b!303940 () Bool)

(declare-fun e!191103 () Bool)

(assert (=> b!303940 (= e!191102 e!191103)))

(declare-fun res!161504 () Bool)

(assert (=> b!303940 (=> (not res!161504) (not e!191103))))

(assert (=> b!303940 (= res!161504 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7666 a!3293)))))

(declare-fun b!303941 () Bool)

(assert (=> b!303941 (= e!191103 (arrayContainsKey!0 a!3293 k!2441 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!67941 (not res!161503)) b!303940))

(assert (= (and b!303940 res!161504) b!303941))

(declare-fun m!315149 () Bool)

(assert (=> d!67941 m!315149))

(declare-fun m!315151 () Bool)

(assert (=> b!303941 m!315151))

(assert (=> b!303811 d!67941))

(declare-fun b!303942 () Bool)

(declare-fun e!191106 () Bool)

(declare-fun e!191107 () Bool)

(assert (=> b!303942 (= e!191106 e!191107)))

(declare-fun res!161507 () Bool)

(declare-fun lt!150314 () SeekEntryResult!2465)

(assert (=> b!303942 (= res!161507 (and (is-Intermediate!2465 lt!150314) (not (undefined!3277 lt!150314)) (bvslt (x!30253 lt!150314) #b01111111111111111111111111111110) (bvsge (x!30253 lt!150314) #b00000000000000000000000000000000) (bvsge (x!30253 lt!150314) #b00000000000000000000000000000000)))))

(assert (=> b!303942 (=> (not res!161507) (not e!191107))))

(declare-fun b!303943 () Bool)

(declare-fun e!191108 () SeekEntryResult!2465)

(declare-fun e!191104 () SeekEntryResult!2465)

(assert (=> b!303943 (= e!191108 e!191104)))

(declare-fun c!48818 () Bool)

(declare-fun lt!150315 () (_ BitVec 64))

(assert (=> b!303943 (= c!48818 (or (= lt!150315 k!2441) (= (bvadd lt!150315 lt!150315) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!303944 () Bool)

(assert (=> b!303944 (and (bvsge (index!12038 lt!150314) #b00000000000000000000000000000000) (bvslt (index!12038 lt!150314) (size!7666 a!3293)))))

(declare-fun e!191105 () Bool)

(assert (=> b!303944 (= e!191105 (= (select (arr!7314 a!3293) (index!12038 lt!150314)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!303945 () Bool)

(assert (=> b!303945 (= e!191104 (Intermediate!2465 false (toIndex!0 k!2441 mask!3709) #b00000000000000000000000000000000))))

(declare-fun d!67943 () Bool)

(assert (=> d!67943 e!191106))

(declare-fun c!48819 () Bool)

(assert (=> d!67943 (= c!48819 (and (is-Intermediate!2465 lt!150314) (undefined!3277 lt!150314)))))

(assert (=> d!67943 (= lt!150314 e!191108)))

(declare-fun c!48820 () Bool)

(assert (=> d!67943 (= c!48820 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!67943 (= lt!150315 (select (arr!7314 a!3293) (toIndex!0 k!2441 mask!3709)))))

(assert (=> d!67943 (validMask!0 mask!3709)))

(assert (=> d!67943 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!150314)))

(declare-fun b!303946 () Bool)

(assert (=> b!303946 (= e!191104 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!2441 mask!3709) #b00000000000000000000000000000000 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun b!303947 () Bool)

(assert (=> b!303947 (= e!191108 (Intermediate!2465 true (toIndex!0 k!2441 mask!3709) #b00000000000000000000000000000000))))

(declare-fun b!303948 () Bool)

(assert (=> b!303948 (and (bvsge (index!12038 lt!150314) #b00000000000000000000000000000000) (bvslt (index!12038 lt!150314) (size!7666 a!3293)))))

(declare-fun res!161506 () Bool)

(assert (=> b!303948 (= res!161506 (= (select (arr!7314 a!3293) (index!12038 lt!150314)) k!2441))))

(assert (=> b!303948 (=> res!161506 e!191105)))

(assert (=> b!303948 (= e!191107 e!191105)))

(declare-fun b!303949 () Bool)

(assert (=> b!303949 (and (bvsge (index!12038 lt!150314) #b00000000000000000000000000000000) (bvslt (index!12038 lt!150314) (size!7666 a!3293)))))

(declare-fun res!161505 () Bool)

(assert (=> b!303949 (= res!161505 (= (select (arr!7314 a!3293) (index!12038 lt!150314)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!303949 (=> res!161505 e!191105)))

(declare-fun b!303950 () Bool)

(assert (=> b!303950 (= e!191106 (bvsge (x!30253 lt!150314) #b01111111111111111111111111111110))))

(assert (= (and d!67943 c!48820) b!303947))

(assert (= (and d!67943 (not c!48820)) b!303943))

(assert (= (and b!303943 c!48818) b!303945))

(assert (= (and b!303943 (not c!48818)) b!303946))

(assert (= (and d!67943 c!48819) b!303950))

(assert (= (and d!67943 (not c!48819)) b!303942))

(assert (= (and b!303942 res!161507) b!303948))

(assert (= (and b!303948 (not res!161506)) b!303949))

(assert (= (and b!303949 (not res!161505)) b!303944))

(assert (=> b!303946 m!315099))

(declare-fun m!315153 () Bool)

(assert (=> b!303946 m!315153))

(assert (=> b!303946 m!315153))

(declare-fun m!315155 () Bool)

(assert (=> b!303946 m!315155))

(declare-fun m!315157 () Bool)

(assert (=> b!303949 m!315157))

(assert (=> b!303944 m!315157))

(assert (=> d!67943 m!315099))

(declare-fun m!315159 () Bool)

(assert (=> d!67943 m!315159))

(assert (=> d!67943 m!315095))

(assert (=> b!303948 m!315157))

(assert (=> b!303809 d!67943))

(declare-fun d!67945 () Bool)

(declare-fun lt!150324 () (_ BitVec 32))

(declare-fun lt!150323 () (_ BitVec 32))

(assert (=> d!67945 (= lt!150324 (bvmul (bvxor lt!150323 (bvlshr lt!150323 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!67945 (= lt!150323 ((_ extract 31 0) (bvand (bvxor k!2441 (bvlshr k!2441 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!67945 (and (bvsge mask!3709 #b00000000000000000000000000000000) (let ((res!161508 (let ((h!5355 ((_ extract 31 0) (bvand (bvxor k!2441 (bvlshr k!2441 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!30261 (bvmul (bvxor h!5355 (bvlshr h!5355 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!30261 (bvlshr x!30261 #b00000000000000000000000000001101)) mask!3709))))) (and (bvslt res!161508 (bvadd mask!3709 #b00000000000000000000000000000001)) (bvsge res!161508 #b00000000000000000000000000000000))))))

(assert (=> d!67945 (= (toIndex!0 k!2441 mask!3709) (bvand (bvxor lt!150324 (bvlshr lt!150324 #b00000000000000000000000000001101)) mask!3709))))

(assert (=> b!303809 d!67945))

(declare-fun d!67951 () Bool)

(assert (=> d!67951 (= (validMask!0 mask!3709) (and (or (= mask!3709 #b00000000000000000000000000000111) (= mask!3709 #b00000000000000000000000000001111) (= mask!3709 #b00000000000000000000000000011111) (= mask!3709 #b00000000000000000000000000111111) (= mask!3709 #b00000000000000000000000001111111) (= mask!3709 #b00000000000000000000000011111111) (= mask!3709 #b00000000000000000000000111111111) (= mask!3709 #b00000000000000000000001111111111) (= mask!3709 #b00000000000000000000011111111111) (= mask!3709 #b00000000000000000000111111111111) (= mask!3709 #b00000000000000000001111111111111) (= mask!3709 #b00000000000000000011111111111111) (= mask!3709 #b00000000000000000111111111111111) (= mask!3709 #b00000000000000001111111111111111) (= mask!3709 #b00000000000000011111111111111111) (= mask!3709 #b00000000000000111111111111111111) (= mask!3709 #b00000000000001111111111111111111) (= mask!3709 #b00000000000011111111111111111111) (= mask!3709 #b00000000000111111111111111111111) (= mask!3709 #b00000000001111111111111111111111) (= mask!3709 #b00000000011111111111111111111111) (= mask!3709 #b00000000111111111111111111111111) (= mask!3709 #b00000001111111111111111111111111) (= mask!3709 #b00000011111111111111111111111111) (= mask!3709 #b00000111111111111111111111111111) (= mask!3709 #b00001111111111111111111111111111) (= mask!3709 #b00011111111111111111111111111111) (= mask!3709 #b00111111111111111111111111111111)) (bvsle mask!3709 #b00111111111111111111111111111111)))))

(assert (=> start!30352 d!67951))

(declare-fun d!67959 () Bool)

(assert (=> d!67959 (= (array_inv!5268 a!3293) (bvsge (size!7666 a!3293) #b00000000000000000000000000000000))))

(assert (=> start!30352 d!67959))

(declare-fun b!304000 () Bool)

(declare-fun e!191138 () SeekEntryResult!2465)

(declare-fun lt!150348 () SeekEntryResult!2465)

(assert (=> b!304000 (= e!191138 (MissingZero!2465 (index!12038 lt!150348)))))

(declare-fun b!304001 () Bool)

(declare-fun e!191139 () SeekEntryResult!2465)

(assert (=> b!304001 (= e!191139 Undefined!2465)))

(declare-fun b!304002 () Bool)

(declare-fun e!191140 () SeekEntryResult!2465)

(assert (=> b!304002 (= e!191140 (Found!2465 (index!12038 lt!150348)))))

(declare-fun d!67961 () Bool)

(declare-fun lt!150350 () SeekEntryResult!2465)

(assert (=> d!67961 (and (or (is-Undefined!2465 lt!150350) (not (is-Found!2465 lt!150350)) (and (bvsge (index!12037 lt!150350) #b00000000000000000000000000000000) (bvslt (index!12037 lt!150350) (size!7666 a!3293)))) (or (is-Undefined!2465 lt!150350) (is-Found!2465 lt!150350) (not (is-MissingZero!2465 lt!150350)) (and (bvsge (index!12036 lt!150350) #b00000000000000000000000000000000) (bvslt (index!12036 lt!150350) (size!7666 a!3293)))) (or (is-Undefined!2465 lt!150350) (is-Found!2465 lt!150350) (is-MissingZero!2465 lt!150350) (not (is-MissingVacant!2465 lt!150350)) (and (bvsge (index!12039 lt!150350) #b00000000000000000000000000000000) (bvslt (index!12039 lt!150350) (size!7666 a!3293)))) (or (is-Undefined!2465 lt!150350) (ite (is-Found!2465 lt!150350) (= (select (arr!7314 a!3293) (index!12037 lt!150350)) k!2441) (ite (is-MissingZero!2465 lt!150350) (= (select (arr!7314 a!3293) (index!12036 lt!150350)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!2465 lt!150350) (= (select (arr!7314 a!3293) (index!12039 lt!150350)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!67961 (= lt!150350 e!191139)))

(declare-fun c!48842 () Bool)

(assert (=> d!67961 (= c!48842 (and (is-Intermediate!2465 lt!150348) (undefined!3277 lt!150348)))))

(assert (=> d!67961 (= lt!150348 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709))))

(assert (=> d!67961 (validMask!0 mask!3709)))

(assert (=> d!67961 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) lt!150350)))

(declare-fun b!304003 () Bool)

(assert (=> b!304003 (= e!191139 e!191140)))

(declare-fun lt!150349 () (_ BitVec 64))

(assert (=> b!304003 (= lt!150349 (select (arr!7314 a!3293) (index!12038 lt!150348)))))

(declare-fun c!48840 () Bool)

(assert (=> b!304003 (= c!48840 (= lt!150349 k!2441))))

(declare-fun b!304004 () Bool)

(declare-fun c!48841 () Bool)

(assert (=> b!304004 (= c!48841 (= lt!150349 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!304004 (= e!191140 e!191138)))

(declare-fun b!304005 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15456 (_ BitVec 32)) SeekEntryResult!2465)

(assert (=> b!304005 (= e!191138 (seekKeyOrZeroReturnVacant!0 (x!30253 lt!150348) (index!12038 lt!150348) (index!12038 lt!150348) k!2441 a!3293 mask!3709))))

(assert (= (and d!67961 c!48842) b!304001))

(assert (= (and d!67961 (not c!48842)) b!304003))

(assert (= (and b!304003 c!48840) b!304002))

(assert (= (and b!304003 (not c!48840)) b!304004))

(assert (= (and b!304004 c!48841) b!304000))

(assert (= (and b!304004 (not c!48841)) b!304005))

(declare-fun m!315185 () Bool)

(assert (=> d!67961 m!315185))

(assert (=> d!67961 m!315099))

(assert (=> d!67961 m!315095))

(assert (=> d!67961 m!315099))

(assert (=> d!67961 m!315101))

(declare-fun m!315189 () Bool)

(assert (=> d!67961 m!315189))

(declare-fun m!315191 () Bool)

(assert (=> d!67961 m!315191))

(declare-fun m!315193 () Bool)

(assert (=> b!304003 m!315193))

(declare-fun m!315197 () Bool)

(assert (=> b!304005 m!315197))

(assert (=> b!303813 d!67961))

(declare-fun b!304020 () Bool)

(declare-fun e!191154 () Bool)

(declare-fun e!191155 () Bool)

(assert (=> b!304020 (= e!191154 e!191155)))

(declare-fun lt!150364 () (_ BitVec 64))

(assert (=> b!304020 (= lt!150364 (select (arr!7314 a!3293) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9382 0))(
  ( (Unit!9383) )
))
(declare-fun lt!150365 () Unit!9382)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!15456 (_ BitVec 64) (_ BitVec 32)) Unit!9382)

(assert (=> b!304020 (= lt!150365 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3293 lt!150364 #b00000000000000000000000000000000))))

(assert (=> b!304020 (arrayContainsKey!0 a!3293 lt!150364 #b00000000000000000000000000000000)))

(declare-fun lt!150363 () Unit!9382)

(assert (=> b!304020 (= lt!150363 lt!150365)))

(declare-fun res!161530 () Bool)

(assert (=> b!304020 (= res!161530 (= (seekEntryOrOpen!0 (select (arr!7314 a!3293) #b00000000000000000000000000000000) a!3293 mask!3709) (Found!2465 #b00000000000000000000000000000000)))))

(assert (=> b!304020 (=> (not res!161530) (not e!191155))))

(declare-fun b!304021 () Bool)

(declare-fun call!25892 () Bool)

(assert (=> b!304021 (= e!191154 call!25892)))

(declare-fun bm!25889 () Bool)

(assert (=> bm!25889 (= call!25892 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3293 mask!3709))))

(declare-fun b!304022 () Bool)

(declare-fun e!191153 () Bool)

(assert (=> b!304022 (= e!191153 e!191154)))

(declare-fun c!48847 () Bool)

(assert (=> b!304022 (= c!48847 (validKeyInArray!0 (select (arr!7314 a!3293) #b00000000000000000000000000000000)))))

(declare-fun b!304023 () Bool)

(assert (=> b!304023 (= e!191155 call!25892)))

(declare-fun d!67969 () Bool)

(declare-fun res!161529 () Bool)

(assert (=> d!67969 (=> res!161529 e!191153)))

(assert (=> d!67969 (= res!161529 (bvsge #b00000000000000000000000000000000 (size!7666 a!3293)))))

(assert (=> d!67969 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709) e!191153)))

(assert (= (and d!67969 (not res!161529)) b!304022))

(assert (= (and b!304022 c!48847) b!304020))

(assert (= (and b!304022 (not c!48847)) b!304021))

(assert (= (and b!304020 res!161530) b!304023))

(assert (= (or b!304023 b!304021) bm!25889))

(assert (=> b!304020 m!315149))

(declare-fun m!315203 () Bool)

(assert (=> b!304020 m!315203))

(declare-fun m!315205 () Bool)

(assert (=> b!304020 m!315205))

(assert (=> b!304020 m!315149))

(declare-fun m!315207 () Bool)

