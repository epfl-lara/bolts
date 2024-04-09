; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30466 () Bool)

(assert start!30466)

(declare-fun res!162355 () Bool)

(declare-fun e!191499 () Bool)

(assert (=> start!30466 (=> (not res!162355) (not e!191499))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30466 (= res!162355 (validMask!0 mask!3709))))

(assert (=> start!30466 e!191499))

(declare-datatypes ((array!15519 0))(
  ( (array!15520 (arr!7344 (Array (_ BitVec 32) (_ BitVec 64))) (size!7696 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15519)

(declare-fun array_inv!5298 (array!15519) Bool)

(assert (=> start!30466 (array_inv!5298 a!3293)))

(assert (=> start!30466 true))

(declare-fun b!304849 () Bool)

(declare-fun res!162357 () Bool)

(assert (=> b!304849 (=> (not res!162357) (not e!191499))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun i!1240 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2495 0))(
  ( (MissingZero!2495 (index!12156 (_ BitVec 32))) (Found!2495 (index!12157 (_ BitVec 32))) (Intermediate!2495 (undefined!3307 Bool) (index!12158 (_ BitVec 32)) (x!30372 (_ BitVec 32))) (Undefined!2495) (MissingVacant!2495 (index!12159 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15519 (_ BitVec 32)) SeekEntryResult!2495)

(assert (=> b!304849 (= res!162357 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2495 i!1240)))))

(declare-fun b!304850 () Bool)

(declare-fun e!191497 () Bool)

(declare-fun e!191500 () Bool)

(assert (=> b!304850 (= e!191497 e!191500)))

(declare-fun res!162353 () Bool)

(assert (=> b!304850 (=> (not res!162353) (not e!191500))))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun lt!150557 () SeekEntryResult!2495)

(declare-fun lt!150556 () SeekEntryResult!2495)

(assert (=> b!304850 (= res!162353 (and (= lt!150557 lt!150556) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7344 a!3293) index!1781) k!2441)) (= x!1427 resX!52) (not (= resIndex!52 index!1781)) (not (= (select (arr!7344 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7344 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15519 (_ BitVec 32)) SeekEntryResult!2495)

(assert (=> b!304850 (= lt!150557 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!304851 () Bool)

(assert (=> b!304851 (= e!191499 e!191497)))

(declare-fun res!162354 () Bool)

(assert (=> b!304851 (=> (not res!162354) (not e!191497))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!304851 (= res!162354 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!150556))))

(assert (=> b!304851 (= lt!150556 (Intermediate!2495 false resIndex!52 resX!52))))

(declare-fun b!304852 () Bool)

(declare-fun res!162359 () Bool)

(assert (=> b!304852 (=> (not res!162359) (not e!191499))))

(declare-fun arrayContainsKey!0 (array!15519 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!304852 (= res!162359 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!304853 () Bool)

(declare-fun res!162360 () Bool)

(assert (=> b!304853 (=> (not res!162360) (not e!191497))))

(assert (=> b!304853 (= res!162360 (and (= (select (arr!7344 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7696 a!3293))))))

(declare-fun b!304854 () Bool)

(declare-fun res!162352 () Bool)

(assert (=> b!304854 (=> (not res!162352) (not e!191499))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15519 (_ BitVec 32)) Bool)

(assert (=> b!304854 (= res!162352 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!304855 () Bool)

(declare-fun res!162356 () Bool)

(assert (=> b!304855 (=> (not res!162356) (not e!191499))))

(assert (=> b!304855 (= res!162356 (and (= (size!7696 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7696 a!3293))))))

(declare-fun b!304856 () Bool)

(declare-fun res!162358 () Bool)

(assert (=> b!304856 (=> (not res!162358) (not e!191499))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!304856 (= res!162358 (validKeyInArray!0 k!2441))))

(declare-fun b!304857 () Bool)

(declare-fun lt!150555 () (_ BitVec 32))

(assert (=> b!304857 (= e!191500 (not (or (bvslt mask!3709 #b00000000000000000000000000000000) (and (bvsge lt!150555 #b00000000000000000000000000000000) (bvslt lt!150555 (bvadd #b00000000000000000000000000000001 mask!3709))))))))

(assert (=> b!304857 (= lt!150557 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!150555 k!2441 a!3293 mask!3709))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!304857 (= lt!150555 (nextIndex!0 index!1781 x!1427 mask!3709))))

(assert (= (and start!30466 res!162355) b!304855))

(assert (= (and b!304855 res!162356) b!304856))

(assert (= (and b!304856 res!162358) b!304852))

(assert (= (and b!304852 res!162359) b!304849))

(assert (= (and b!304849 res!162357) b!304854))

(assert (= (and b!304854 res!162352) b!304851))

(assert (= (and b!304851 res!162354) b!304853))

(assert (= (and b!304853 res!162360) b!304850))

(assert (= (and b!304850 res!162353) b!304857))

(declare-fun m!315965 () Bool)

(assert (=> b!304856 m!315965))

(declare-fun m!315967 () Bool)

(assert (=> b!304857 m!315967))

(declare-fun m!315969 () Bool)

(assert (=> b!304857 m!315969))

(declare-fun m!315971 () Bool)

(assert (=> b!304853 m!315971))

(declare-fun m!315973 () Bool)

(assert (=> b!304852 m!315973))

(declare-fun m!315975 () Bool)

(assert (=> b!304850 m!315975))

(declare-fun m!315977 () Bool)

(assert (=> b!304850 m!315977))

(declare-fun m!315979 () Bool)

(assert (=> b!304849 m!315979))

(declare-fun m!315981 () Bool)

(assert (=> b!304854 m!315981))

(declare-fun m!315983 () Bool)

(assert (=> start!30466 m!315983))

(declare-fun m!315985 () Bool)

(assert (=> start!30466 m!315985))

(declare-fun m!315987 () Bool)

(assert (=> b!304851 m!315987))

(assert (=> b!304851 m!315987))

(declare-fun m!315989 () Bool)

(assert (=> b!304851 m!315989))

(push 1)

(assert (not b!304849))

(assert (not b!304851))

(assert (not b!304856))

(assert (not b!304857))

(assert (not b!304852))

(assert (not b!304854))

(assert (not b!304850))

(assert (not start!30466))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!68001 () Bool)

(declare-fun res!162381 () Bool)

(declare-fun e!191529 () Bool)

(assert (=> d!68001 (=> res!162381 e!191529)))

(assert (=> d!68001 (= res!162381 (= (select (arr!7344 a!3293) #b00000000000000000000000000000000) k!2441))))

(assert (=> d!68001 (= (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000) e!191529)))

(declare-fun b!304901 () Bool)

(declare-fun e!191530 () Bool)

(assert (=> b!304901 (= e!191529 e!191530)))

(declare-fun res!162382 () Bool)

(assert (=> b!304901 (=> (not res!162382) (not e!191530))))

(assert (=> b!304901 (= res!162382 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7696 a!3293)))))

(declare-fun b!304902 () Bool)

(assert (=> b!304902 (= e!191530 (arrayContainsKey!0 a!3293 k!2441 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!68001 (not res!162381)) b!304901))

(assert (= (and b!304901 res!162382) b!304902))

(declare-fun m!316001 () Bool)

(assert (=> d!68001 m!316001))

(declare-fun m!316003 () Bool)

(assert (=> b!304902 m!316003))

(assert (=> b!304852 d!68001))

(declare-fun b!304972 () Bool)

(declare-fun e!191571 () Bool)

(declare-fun lt!150609 () SeekEntryResult!2495)

(assert (=> b!304972 (= e!191571 (bvsge (x!30372 lt!150609) #b01111111111111111111111111111110))))

(declare-fun d!68003 () Bool)

(assert (=> d!68003 e!191571))

(declare-fun c!48890 () Bool)

(assert (=> d!68003 (= c!48890 (and (is-Intermediate!2495 lt!150609) (undefined!3307 lt!150609)))))

(declare-fun e!191570 () SeekEntryResult!2495)

(assert (=> d!68003 (= lt!150609 e!191570)))

(declare-fun c!48889 () Bool)

(assert (=> d!68003 (= c!48889 (bvsge (bvadd #b00000000000000000000000000000001 x!1427) #b01111111111111111111111111111110))))

(declare-fun lt!150610 () (_ BitVec 64))

(assert (=> d!68003 (= lt!150610 (select (arr!7344 a!3293) lt!150555))))

(assert (=> d!68003 (validMask!0 mask!3709)))

(assert (=> d!68003 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!150555 k!2441 a!3293 mask!3709) lt!150609)))

(declare-fun b!304973 () Bool)

(assert (=> b!304973 (and (bvsge (index!12158 lt!150609) #b00000000000000000000000000000000) (bvslt (index!12158 lt!150609) (size!7696 a!3293)))))

(declare-fun res!162398 () Bool)

(assert (=> b!304973 (= res!162398 (= (select (arr!7344 a!3293) (index!12158 lt!150609)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!191573 () Bool)

(assert (=> b!304973 (=> res!162398 e!191573)))

(declare-fun b!304974 () Bool)

(assert (=> b!304974 (and (bvsge (index!12158 lt!150609) #b00000000000000000000000000000000) (bvslt (index!12158 lt!150609) (size!7696 a!3293)))))

(declare-fun res!162400 () Bool)

(assert (=> b!304974 (= res!162400 (= (select (arr!7344 a!3293) (index!12158 lt!150609)) k!2441))))

(assert (=> b!304974 (=> res!162400 e!191573)))

(declare-fun e!191572 () Bool)

(assert (=> b!304974 (= e!191572 e!191573)))

(declare-fun b!304975 () Bool)

(assert (=> b!304975 (= e!191570 (Intermediate!2495 true lt!150555 (bvadd #b00000000000000000000000000000001 x!1427)))))

(declare-fun b!304976 () Bool)

(declare-fun e!191574 () SeekEntryResult!2495)

(assert (=> b!304976 (= e!191574 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427 #b00000000000000000000000000000001) (nextIndex!0 lt!150555 (bvadd #b00000000000000000000000000000001 x!1427) mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun b!304977 () Bool)

(assert (=> b!304977 (and (bvsge (index!12158 lt!150609) #b00000000000000000000000000000000) (bvslt (index!12158 lt!150609) (size!7696 a!3293)))))

(assert (=> b!304977 (= e!191573 (= (select (arr!7344 a!3293) (index!12158 lt!150609)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!304978 () Bool)

(assert (=> b!304978 (= e!191574 (Intermediate!2495 false lt!150555 (bvadd #b00000000000000000000000000000001 x!1427)))))

(declare-fun b!304979 () Bool)

(assert (=> b!304979 (= e!191571 e!191572)))

(declare-fun res!162399 () Bool)

(assert (=> b!304979 (= res!162399 (and (is-Intermediate!2495 lt!150609) (not (undefined!3307 lt!150609)) (bvslt (x!30372 lt!150609) #b01111111111111111111111111111110) (bvsge (x!30372 lt!150609) #b00000000000000000000000000000000) (bvsge (x!30372 lt!150609) (bvadd #b00000000000000000000000000000001 x!1427))))))

(assert (=> b!304979 (=> (not res!162399) (not e!191572))))

(declare-fun b!304980 () Bool)

(assert (=> b!304980 (= e!191570 e!191574)))

(declare-fun c!48888 () Bool)

(assert (=> b!304980 (= c!48888 (or (= lt!150610 k!2441) (= (bvadd lt!150610 lt!150610) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!68003 c!48889) b!304975))

(assert (= (and d!68003 (not c!48889)) b!304980))

(assert (= (and b!304980 c!48888) b!304978))

(assert (= (and b!304980 (not c!48888)) b!304976))

(assert (= (and d!68003 c!48890) b!304972))

(assert (= (and d!68003 (not c!48890)) b!304979))

(assert (= (and b!304979 res!162399) b!304974))

(assert (= (and b!304974 (not res!162400)) b!304973))

(assert (= (and b!304973 (not res!162398)) b!304977))

(declare-fun m!316043 () Bool)

(assert (=> b!304977 m!316043))

(assert (=> b!304974 m!316043))

(declare-fun m!316045 () Bool)

(assert (=> b!304976 m!316045))

(assert (=> b!304976 m!316045))

(declare-fun m!316049 () Bool)

(assert (=> b!304976 m!316049))

(assert (=> b!304973 m!316043))

(declare-fun m!316054 () Bool)

(assert (=> d!68003 m!316054))

(assert (=> d!68003 m!315983))

(assert (=> b!304857 d!68003))

(declare-fun d!68015 () Bool)

(declare-fun lt!150618 () (_ BitVec 32))

(assert (=> d!68015 (and (bvsge lt!150618 #b00000000000000000000000000000000) (bvslt lt!150618 (bvadd mask!3709 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!68015 (= lt!150618 (choose!52 index!1781 x!1427 mask!3709))))

(assert (=> d!68015 (validMask!0 mask!3709)))

(assert (=> d!68015 (= (nextIndex!0 index!1781 x!1427 mask!3709) lt!150618)))

(declare-fun bs!10738 () Bool)

(assert (= bs!10738 d!68015))

(declare-fun m!316061 () Bool)

(assert (=> bs!10738 m!316061))

(assert (=> bs!10738 m!315983))

(assert (=> b!304857 d!68015))

(declare-fun d!68023 () Bool)

(assert (=> d!68023 (= (validMask!0 mask!3709) (and (or (= mask!3709 #b00000000000000000000000000000111) (= mask!3709 #b00000000000000000000000000001111) (= mask!3709 #b00000000000000000000000000011111) (= mask!3709 #b00000000000000000000000000111111) (= mask!3709 #b00000000000000000000000001111111) (= mask!3709 #b00000000000000000000000011111111) (= mask!3709 #b00000000000000000000000111111111) (= mask!3709 #b00000000000000000000001111111111) (= mask!3709 #b00000000000000000000011111111111) (= mask!3709 #b00000000000000000000111111111111) (= mask!3709 #b00000000000000000001111111111111) (= mask!3709 #b00000000000000000011111111111111) (= mask!3709 #b00000000000000000111111111111111) (= mask!3709 #b00000000000000001111111111111111) (= mask!3709 #b00000000000000011111111111111111) (= mask!3709 #b00000000000000111111111111111111) (= mask!3709 #b00000000000001111111111111111111) (= mask!3709 #b00000000000011111111111111111111) (= mask!3709 #b00000000000111111111111111111111) (= mask!3709 #b00000000001111111111111111111111) (= mask!3709 #b00000000011111111111111111111111) (= mask!3709 #b00000000111111111111111111111111) (= mask!3709 #b00000001111111111111111111111111) (= mask!3709 #b00000011111111111111111111111111) (= mask!3709 #b00000111111111111111111111111111) (= mask!3709 #b00001111111111111111111111111111) (= mask!3709 #b00011111111111111111111111111111) (= mask!3709 #b00111111111111111111111111111111)) (bvsle mask!3709 #b00111111111111111111111111111111)))))

(assert (=> start!30466 d!68023))

(declare-fun d!68035 () Bool)

(assert (=> d!68035 (= (array_inv!5298 a!3293) (bvsge (size!7696 a!3293) #b00000000000000000000000000000000))))

(assert (=> start!30466 d!68035))

(declare-fun b!305002 () Bool)

(declare-fun e!191590 () Bool)

(declare-fun lt!150622 () SeekEntryResult!2495)

(assert (=> b!305002 (= e!191590 (bvsge (x!30372 lt!150622) #b01111111111111111111111111111110))))

(declare-fun d!68037 () Bool)

(assert (=> d!68037 e!191590))

(declare-fun c!48899 () Bool)

(assert (=> d!68037 (= c!48899 (and (is-Intermediate!2495 lt!150622) (undefined!3307 lt!150622)))))

(declare-fun e!191589 () SeekEntryResult!2495)

(assert (=> d!68037 (= lt!150622 e!191589)))

(declare-fun c!48898 () Bool)

(assert (=> d!68037 (= c!48898 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!150623 () (_ BitVec 64))

