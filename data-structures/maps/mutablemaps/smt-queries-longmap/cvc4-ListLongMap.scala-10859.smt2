; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127244 () Bool)

(assert start!127244)

(declare-fun b!1495054 () Bool)

(declare-fun res!1017218 () Bool)

(declare-fun e!837443 () Bool)

(assert (=> b!1495054 (=> (not res!1017218) (not e!837443))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1495054 (= res!1017218 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1495055 () Bool)

(declare-fun res!1017217 () Bool)

(declare-fun e!837435 () Bool)

(assert (=> b!1495055 (=> (not res!1017217) (not e!837435))))

(declare-datatypes ((array!99745 0))(
  ( (array!99746 (arr!48135 (Array (_ BitVec 32) (_ BitVec 64))) (size!48686 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99745)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1495055 (= res!1017217 (validKeyInArray!0 (select (arr!48135 a!2862) j!93)))))

(declare-fun b!1495056 () Bool)

(declare-fun res!1017211 () Bool)

(assert (=> b!1495056 (=> (not res!1017211) (not e!837435))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1495056 (= res!1017211 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48686 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48686 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48686 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1495057 () Bool)

(declare-fun e!837441 () Bool)

(declare-fun e!837440 () Bool)

(assert (=> b!1495057 (= e!837441 e!837440)))

(declare-fun res!1017216 () Bool)

(assert (=> b!1495057 (=> (not res!1017216) (not e!837440))))

(declare-datatypes ((SeekEntryResult!12398 0))(
  ( (MissingZero!12398 (index!51983 (_ BitVec 32))) (Found!12398 (index!51984 (_ BitVec 32))) (Intermediate!12398 (undefined!13210 Bool) (index!51985 (_ BitVec 32)) (x!133589 (_ BitVec 32))) (Undefined!12398) (MissingVacant!12398 (index!51986 (_ BitVec 32))) )
))
(declare-fun lt!651563 () SeekEntryResult!12398)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99745 (_ BitVec 32)) SeekEntryResult!12398)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1495057 (= res!1017216 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48135 a!2862) j!93) mask!2687) (select (arr!48135 a!2862) j!93) a!2862 mask!2687) lt!651563))))

(assert (=> b!1495057 (= lt!651563 (Intermediate!12398 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1495058 () Bool)

(declare-fun res!1017209 () Bool)

(assert (=> b!1495058 (=> (not res!1017209) (not e!837443))))

(declare-fun e!837437 () Bool)

(assert (=> b!1495058 (= res!1017209 e!837437)))

(declare-fun c!138460 () Bool)

(assert (=> b!1495058 (= c!138460 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1495059 () Bool)

(declare-fun res!1017203 () Bool)

(assert (=> b!1495059 (=> (not res!1017203) (not e!837435))))

(declare-datatypes ((List!34816 0))(
  ( (Nil!34813) (Cons!34812 (h!36204 (_ BitVec 64)) (t!49517 List!34816)) )
))
(declare-fun arrayNoDuplicates!0 (array!99745 (_ BitVec 32) List!34816) Bool)

(assert (=> b!1495059 (= res!1017203 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34813))))

(declare-fun b!1495060 () Bool)

(declare-fun e!837434 () Bool)

(assert (=> b!1495060 (= e!837443 (not e!837434))))

(declare-fun res!1017213 () Bool)

(assert (=> b!1495060 (=> res!1017213 e!837434)))

(assert (=> b!1495060 (= res!1017213 (or (and (= (select (arr!48135 a!2862) index!646) (select (store (arr!48135 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48135 a!2862) index!646) (select (arr!48135 a!2862) j!93))) (= (select (arr!48135 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(declare-fun e!837439 () Bool)

(assert (=> b!1495060 e!837439))

(declare-fun res!1017208 () Bool)

(assert (=> b!1495060 (=> (not res!1017208) (not e!837439))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99745 (_ BitVec 32)) Bool)

(assert (=> b!1495060 (= res!1017208 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!50084 0))(
  ( (Unit!50085) )
))
(declare-fun lt!651564 () Unit!50084)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99745 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50084)

(assert (=> b!1495060 (= lt!651564 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1495061 () Bool)

(assert (=> b!1495061 (= e!837440 e!837443)))

(declare-fun res!1017206 () Bool)

(assert (=> b!1495061 (=> (not res!1017206) (not e!837443))))

(declare-fun lt!651561 () SeekEntryResult!12398)

(assert (=> b!1495061 (= res!1017206 (= lt!651561 (Intermediate!12398 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!651560 () array!99745)

(declare-fun lt!651562 () (_ BitVec 64))

(assert (=> b!1495061 (= lt!651561 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!651562 mask!2687) lt!651562 lt!651560 mask!2687))))

(assert (=> b!1495061 (= lt!651562 (select (store (arr!48135 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1495062 () Bool)

(declare-fun res!1017210 () Bool)

(assert (=> b!1495062 (=> (not res!1017210) (not e!837435))))

(assert (=> b!1495062 (= res!1017210 (and (= (size!48686 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48686 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48686 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1495063 () Bool)

(declare-fun res!1017215 () Bool)

(assert (=> b!1495063 (=> (not res!1017215) (not e!837440))))

(assert (=> b!1495063 (= res!1017215 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48135 a!2862) j!93) a!2862 mask!2687) lt!651563))))

(declare-fun b!1495064 () Bool)

(assert (=> b!1495064 (= e!837435 e!837441)))

(declare-fun res!1017212 () Bool)

(assert (=> b!1495064 (=> (not res!1017212) (not e!837441))))

(assert (=> b!1495064 (= res!1017212 (= (select (store (arr!48135 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1495064 (= lt!651560 (array!99746 (store (arr!48135 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48686 a!2862)))))

(declare-fun b!1495065 () Bool)

(declare-fun res!1017207 () Bool)

(assert (=> b!1495065 (=> (not res!1017207) (not e!837435))))

(assert (=> b!1495065 (= res!1017207 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1495066 () Bool)

(declare-fun e!837438 () Bool)

(declare-fun e!837442 () Bool)

(assert (=> b!1495066 (= e!837438 e!837442)))

(declare-fun c!138461 () Bool)

(assert (=> b!1495066 (= c!138461 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1495067 () Bool)

(declare-fun res!1017202 () Bool)

(assert (=> b!1495067 (=> (not res!1017202) (not e!837435))))

(assert (=> b!1495067 (= res!1017202 (validKeyInArray!0 (select (arr!48135 a!2862) i!1006)))))

(declare-fun b!1495068 () Bool)

(declare-fun res!1017214 () Bool)

(assert (=> b!1495068 (=> (not res!1017214) (not e!837439))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99745 (_ BitVec 32)) SeekEntryResult!12398)

(assert (=> b!1495068 (= res!1017214 (= (seekEntryOrOpen!0 (select (arr!48135 a!2862) j!93) a!2862 mask!2687) (Found!12398 j!93)))))

(declare-fun b!1495069 () Bool)

(assert (=> b!1495069 (= e!837434 e!837438)))

(declare-fun res!1017205 () Bool)

(assert (=> b!1495069 (=> res!1017205 e!837438)))

(declare-fun lt!651565 () (_ BitVec 32))

(assert (=> b!1495069 (= res!1017205 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!651565 #b00000000000000000000000000000000) (bvsge lt!651565 (size!48686 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1495069 (= lt!651565 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1495070 () Bool)

(assert (=> b!1495070 (= e!837437 (= lt!651561 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!651562 lt!651560 mask!2687)))))

(declare-fun b!1495071 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99745 (_ BitVec 32)) SeekEntryResult!12398)

(assert (=> b!1495071 (= e!837442 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!651565 intermediateAfterIndex!19 lt!651562 lt!651560 mask!2687) (seekEntryOrOpen!0 lt!651562 lt!651560 mask!2687)))))

(declare-fun b!1495072 () Bool)

(assert (=> b!1495072 (= e!837442 (= lt!651561 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!651565 lt!651562 lt!651560 mask!2687)))))

(declare-fun res!1017219 () Bool)

(assert (=> start!127244 (=> (not res!1017219) (not e!837435))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127244 (= res!1017219 (validMask!0 mask!2687))))

(assert (=> start!127244 e!837435))

(assert (=> start!127244 true))

(declare-fun array_inv!37080 (array!99745) Bool)

(assert (=> start!127244 (array_inv!37080 a!2862)))

(declare-fun b!1495073 () Bool)

(assert (=> b!1495073 (= e!837437 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!651562 lt!651560 mask!2687) (seekEntryOrOpen!0 lt!651562 lt!651560 mask!2687)))))

(declare-fun b!1495074 () Bool)

(assert (=> b!1495074 (= e!837439 (or (= (select (arr!48135 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48135 a!2862) intermediateBeforeIndex!19) (select (arr!48135 a!2862) j!93))))))

(declare-fun b!1495075 () Bool)

(declare-fun res!1017204 () Bool)

(assert (=> b!1495075 (=> res!1017204 e!837438)))

(assert (=> b!1495075 (= res!1017204 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!651565 (select (arr!48135 a!2862) j!93) a!2862 mask!2687) lt!651563)))))

(assert (= (and start!127244 res!1017219) b!1495062))

(assert (= (and b!1495062 res!1017210) b!1495067))

(assert (= (and b!1495067 res!1017202) b!1495055))

(assert (= (and b!1495055 res!1017217) b!1495065))

(assert (= (and b!1495065 res!1017207) b!1495059))

(assert (= (and b!1495059 res!1017203) b!1495056))

(assert (= (and b!1495056 res!1017211) b!1495064))

(assert (= (and b!1495064 res!1017212) b!1495057))

(assert (= (and b!1495057 res!1017216) b!1495063))

(assert (= (and b!1495063 res!1017215) b!1495061))

(assert (= (and b!1495061 res!1017206) b!1495058))

(assert (= (and b!1495058 c!138460) b!1495070))

(assert (= (and b!1495058 (not c!138460)) b!1495073))

(assert (= (and b!1495058 res!1017209) b!1495054))

(assert (= (and b!1495054 res!1017218) b!1495060))

(assert (= (and b!1495060 res!1017208) b!1495068))

(assert (= (and b!1495068 res!1017214) b!1495074))

(assert (= (and b!1495060 (not res!1017213)) b!1495069))

(assert (= (and b!1495069 (not res!1017205)) b!1495075))

(assert (= (and b!1495075 (not res!1017204)) b!1495066))

(assert (= (and b!1495066 c!138461) b!1495072))

(assert (= (and b!1495066 (not c!138461)) b!1495071))

(declare-fun m!1378673 () Bool)

(assert (=> b!1495070 m!1378673))

(declare-fun m!1378675 () Bool)

(assert (=> b!1495071 m!1378675))

(declare-fun m!1378677 () Bool)

(assert (=> b!1495071 m!1378677))

(declare-fun m!1378679 () Bool)

(assert (=> b!1495072 m!1378679))

(declare-fun m!1378681 () Bool)

(assert (=> b!1495067 m!1378681))

(assert (=> b!1495067 m!1378681))

(declare-fun m!1378683 () Bool)

(assert (=> b!1495067 m!1378683))

(declare-fun m!1378685 () Bool)

(assert (=> b!1495063 m!1378685))

(assert (=> b!1495063 m!1378685))

(declare-fun m!1378687 () Bool)

(assert (=> b!1495063 m!1378687))

(declare-fun m!1378689 () Bool)

(assert (=> b!1495060 m!1378689))

(declare-fun m!1378691 () Bool)

(assert (=> b!1495060 m!1378691))

(declare-fun m!1378693 () Bool)

(assert (=> b!1495060 m!1378693))

(declare-fun m!1378695 () Bool)

(assert (=> b!1495060 m!1378695))

(declare-fun m!1378697 () Bool)

(assert (=> b!1495060 m!1378697))

(assert (=> b!1495060 m!1378685))

(declare-fun m!1378699 () Bool)

(assert (=> b!1495059 m!1378699))

(assert (=> b!1495057 m!1378685))

(assert (=> b!1495057 m!1378685))

(declare-fun m!1378701 () Bool)

(assert (=> b!1495057 m!1378701))

(assert (=> b!1495057 m!1378701))

(assert (=> b!1495057 m!1378685))

(declare-fun m!1378703 () Bool)

(assert (=> b!1495057 m!1378703))

(declare-fun m!1378705 () Bool)

(assert (=> b!1495073 m!1378705))

(assert (=> b!1495073 m!1378677))

(declare-fun m!1378707 () Bool)

(assert (=> b!1495074 m!1378707))

(assert (=> b!1495074 m!1378685))

(assert (=> b!1495055 m!1378685))

(assert (=> b!1495055 m!1378685))

(declare-fun m!1378709 () Bool)

(assert (=> b!1495055 m!1378709))

(assert (=> b!1495068 m!1378685))

(assert (=> b!1495068 m!1378685))

(declare-fun m!1378711 () Bool)

(assert (=> b!1495068 m!1378711))

(declare-fun m!1378713 () Bool)

(assert (=> b!1495065 m!1378713))

(declare-fun m!1378715 () Bool)

(assert (=> b!1495069 m!1378715))

(declare-fun m!1378717 () Bool)

(assert (=> start!127244 m!1378717))

(declare-fun m!1378719 () Bool)

(assert (=> start!127244 m!1378719))

(assert (=> b!1495064 m!1378691))

(declare-fun m!1378721 () Bool)

(assert (=> b!1495064 m!1378721))

(declare-fun m!1378723 () Bool)

(assert (=> b!1495061 m!1378723))

(assert (=> b!1495061 m!1378723))

(declare-fun m!1378725 () Bool)

(assert (=> b!1495061 m!1378725))

(assert (=> b!1495061 m!1378691))

(declare-fun m!1378727 () Bool)

(assert (=> b!1495061 m!1378727))

(assert (=> b!1495075 m!1378685))

(assert (=> b!1495075 m!1378685))

(declare-fun m!1378729 () Bool)

(assert (=> b!1495075 m!1378729))

(push 1)

(assert (not b!1495069))

(assert (not b!1495061))

(assert (not b!1495071))

(assert (not b!1495063))

(assert (not b!1495055))

(assert (not b!1495067))

(assert (not b!1495068))

(assert (not b!1495075))

(assert (not b!1495073))

(assert (not b!1495065))

(assert (not b!1495060))

(assert (not b!1495072))

(assert (not b!1495059))

(assert (not b!1495070))

(assert (not b!1495057))

(assert (not start!127244))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1495230 () Bool)

(declare-fun e!837533 () SeekEntryResult!12398)

(assert (=> b!1495230 (= e!837533 (Intermediate!12398 false lt!651565 (bvadd #b00000000000000000000000000000001 x!665)))))

(declare-fun b!1495231 () Bool)

(declare-fun lt!651622 () SeekEntryResult!12398)

(assert (=> b!1495231 (and (bvsge (index!51985 lt!651622) #b00000000000000000000000000000000) (bvslt (index!51985 lt!651622) (size!48686 a!2862)))))

(declare-fun res!1017258 () Bool)

(assert (=> b!1495231 (= res!1017258 (= (select (arr!48135 a!2862) (index!51985 lt!651622)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!837537 () Bool)

(assert (=> b!1495231 (=> res!1017258 e!837537)))

(declare-fun b!1495232 () Bool)

(declare-fun e!837534 () SeekEntryResult!12398)

(assert (=> b!1495232 (= e!837534 (Intermediate!12398 true lt!651565 (bvadd #b00000000000000000000000000000001 x!665)))))

(declare-fun d!157119 () Bool)

(declare-fun e!837536 () Bool)

(assert (=> d!157119 e!837536))

(declare-fun c!138521 () Bool)

(assert (=> d!157119 (= c!138521 (and (is-Intermediate!12398 lt!651622) (undefined!13210 lt!651622)))))

(assert (=> d!157119 (= lt!651622 e!837534)))

(declare-fun c!138520 () Bool)

(assert (=> d!157119 (= c!138520 (bvsge (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110))))

(declare-fun lt!651621 () (_ BitVec 64))

(assert (=> d!157119 (= lt!651621 (select (arr!48135 a!2862) lt!651565))))

(assert (=> d!157119 (validMask!0 mask!2687)))

(assert (=> d!157119 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!651565 (select (arr!48135 a!2862) j!93) a!2862 mask!2687) lt!651622)))

(declare-fun b!1495233 () Bool)

(assert (=> b!1495233 (= e!837536 (bvsge (x!133589 lt!651622) #b01111111111111111111111111111110))))

(declare-fun b!1495234 () Bool)

(declare-fun e!837535 () Bool)

(assert (=> b!1495234 (= e!837536 e!837535)))

(declare-fun res!1017260 () Bool)

(assert (=> b!1495234 (= res!1017260 (and (is-Intermediate!12398 lt!651622) (not (undefined!13210 lt!651622)) (bvslt (x!133589 lt!651622) #b01111111111111111111111111111110) (bvsge (x!133589 lt!651622) #b00000000000000000000000000000000) (bvsge (x!133589 lt!651622) (bvadd #b00000000000000000000000000000001 x!665))))))

(assert (=> b!1495234 (=> (not res!1017260) (not e!837535))))

(declare-fun b!1495235 () Bool)

(assert (=> b!1495235 (= e!837534 e!837533)))

(declare-fun c!138522 () Bool)

(assert (=> b!1495235 (= c!138522 (or (= lt!651621 (select (arr!48135 a!2862) j!93)) (= (bvadd lt!651621 lt!651621) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1495236 () Bool)

(assert (=> b!1495236 (and (bvsge (index!51985 lt!651622) #b00000000000000000000000000000000) (bvslt (index!51985 lt!651622) (size!48686 a!2862)))))

(assert (=> b!1495236 (= e!837537 (= (select (arr!48135 a!2862) (index!51985 lt!651622)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1495237 () Bool)

(assert (=> b!1495237 (and (bvsge (index!51985 lt!651622) #b00000000000000000000000000000000) (bvslt (index!51985 lt!651622) (size!48686 a!2862)))))

(declare-fun res!1017259 () Bool)

(assert (=> b!1495237 (= res!1017259 (= (select (arr!48135 a!2862) (index!51985 lt!651622)) (select (arr!48135 a!2862) j!93)))))

(assert (=> b!1495237 (=> res!1017259 e!837537)))

(assert (=> b!1495237 (= e!837535 e!837537)))

(declare-fun b!1495238 () Bool)

(assert (=> b!1495238 (= e!837533 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665 #b00000000000000000000000000000001) (nextIndex!0 lt!651565 (bvadd #b00000000000000000000000000000001 x!665) mask!2687) (select (arr!48135 a!2862) j!93) a!2862 mask!2687))))

(assert (= (and d!157119 c!138520) b!1495232))

(assert (= (and d!157119 (not c!138520)) b!1495235))

(assert (= (and b!1495235 c!138522) b!1495230))

(assert (= (and b!1495235 (not c!138522)) b!1495238))

(assert (= (and d!157119 c!138521) b!1495233))

(assert (= (and d!157119 (not c!138521)) b!1495234))

(assert (= (and b!1495234 res!1017260) b!1495237))

(assert (= (and b!1495237 (not res!1017259)) b!1495231))

(assert (= (and b!1495231 (not res!1017258)) b!1495236))

(declare-fun m!1378807 () Bool)

(assert (=> d!157119 m!1378807))

(assert (=> d!157119 m!1378717))

(declare-fun m!1378809 () Bool)

(assert (=> b!1495236 m!1378809))

(assert (=> b!1495231 m!1378809))

(assert (=> b!1495237 m!1378809))

(declare-fun m!1378811 () Bool)

(assert (=> b!1495238 m!1378811))

(assert (=> b!1495238 m!1378811))

(assert (=> b!1495238 m!1378685))

(declare-fun m!1378813 () Bool)

(assert (=> b!1495238 m!1378813))

(assert (=> b!1495075 d!157119))

(declare-fun lt!651643 () SeekEntryResult!12398)

(declare-fun d!157141 () Bool)

(assert (=> d!157141 (and (or (is-Undefined!12398 lt!651643) (not (is-Found!12398 lt!651643)) (and (bvsge (index!51984 lt!651643) #b00000000000000000000000000000000) (bvslt (index!51984 lt!651643) (size!48686 lt!651560)))) (or (is-Undefined!12398 lt!651643) (is-Found!12398 lt!651643) (not (is-MissingVacant!12398 lt!651643)) (not (= (index!51986 lt!651643) intermediateAfterIndex!19)) (and (bvsge (index!51986 lt!651643) #b00000000000000000000000000000000) (bvslt (index!51986 lt!651643) (size!48686 lt!651560)))) (or (is-Undefined!12398 lt!651643) (ite (is-Found!12398 lt!651643) (= (select (arr!48135 lt!651560) (index!51984 lt!651643)) lt!651562) (and (is-MissingVacant!12398 lt!651643) (= (index!51986 lt!651643) intermediateAfterIndex!19) (= (select (arr!48135 lt!651560) (index!51986 lt!651643)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!837554 () SeekEntryResult!12398)

(assert (=> d!157141 (= lt!651643 e!837554)))

(declare-fun c!138538 () Bool)

(assert (=> d!157141 (= c!138538 (bvsge x!665 #b01111111111111111111111111111110))))

(declare-fun lt!651642 () (_ BitVec 64))

(assert (=> d!157141 (= lt!651642 (select (arr!48135 lt!651560) index!646))))

(assert (=> d!157141 (validMask!0 mask!2687)))

(assert (=> d!157141 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!651562 lt!651560 mask!2687) lt!651643)))

(declare-fun b!1495272 () Bool)

(declare-fun e!837555 () SeekEntryResult!12398)

(assert (=> b!1495272 (= e!837555 (seekKeyOrZeroReturnVacant!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) intermediateAfterIndex!19 lt!651562 lt!651560 mask!2687))))

(declare-fun b!1495273 () Bool)

(assert (=> b!1495273 (= e!837555 (MissingVacant!12398 intermediateAfterIndex!19))))

(declare-fun b!1495274 () Bool)

(declare-fun e!837556 () SeekEntryResult!12398)

(assert (=> b!1495274 (= e!837556 (Found!12398 index!646))))

(declare-fun b!1495276 () Bool)

(assert (=> b!1495276 (= e!837554 e!837556)))

(declare-fun c!138539 () Bool)

(assert (=> b!1495276 (= c!138539 (= lt!651642 lt!651562))))

(declare-fun b!1495277 () Bool)

(assert (=> b!1495277 (= e!837554 Undefined!12398)))

(declare-fun b!1495279 () Bool)

(declare-fun c!138537 () Bool)

(assert (=> b!1495279 (= c!138537 (= lt!651642 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1495279 (= e!837556 e!837555)))

(assert (= (and d!157141 c!138538) b!1495277))

(assert (= (and d!157141 (not c!138538)) b!1495276))

(assert (= (and b!1495276 c!138539) b!1495274))

(assert (= (and b!1495276 (not c!138539)) b!1495279))

(assert (= (and b!1495279 c!138537) b!1495273))

(assert (= (and b!1495279 (not c!138537)) b!1495272))

(declare-fun m!1378833 () Bool)

(assert (=> d!157141 m!1378833))

(declare-fun m!1378835 () Bool)

(assert (=> d!157141 m!1378835))

(declare-fun m!1378837 () Bool)

(assert (=> d!157141 m!1378837))

(assert (=> d!157141 m!1378717))

(assert (=> b!1495272 m!1378715))

(assert (=> b!1495272 m!1378715))

(declare-fun m!1378839 () Bool)

(assert (=> b!1495272 m!1378839))

(assert (=> b!1495073 d!157141))

(declare-fun b!1495359 () Bool)

(declare-fun c!138568 () Bool)

(declare-fun lt!651674 () (_ BitVec 64))

(assert (=> b!1495359 (= c!138568 (= lt!651674 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!837605 () SeekEntryResult!12398)

(declare-fun e!837607 () SeekEntryResult!12398)

(assert (=> b!1495359 (= e!837605 e!837607)))

(declare-fun b!1495360 () Bool)

(declare-fun lt!651675 () SeekEntryResult!12398)

(assert (=> b!1495360 (= e!837605 (Found!12398 (index!51985 lt!651675)))))

(declare-fun b!1495361 () Bool)

(declare-fun e!837606 () SeekEntryResult!12398)

(assert (=> b!1495361 (= e!837606 e!837605)))

(assert (=> b!1495361 (= lt!651674 (select (arr!48135 lt!651560) (index!51985 lt!651675)))))

(declare-fun c!138569 () Bool)

(assert (=> b!1495361 (= c!138569 (= lt!651674 lt!651562))))

(declare-fun b!1495363 () Bool)

(assert (=> b!1495363 (= e!837606 Undefined!12398)))

(declare-fun b!1495364 () Bool)

(assert (=> b!1495364 (= e!837607 (seekKeyOrZeroReturnVacant!0 (x!133589 lt!651675) (index!51985 lt!651675) (index!51985 lt!651675) lt!651562 lt!651560 mask!2687))))

(declare-fun b!1495362 () Bool)

(assert (=> b!1495362 (= e!837607 (MissingZero!12398 (index!51985 lt!651675)))))

(declare-fun d!157153 () Bool)

(declare-fun lt!651676 () SeekEntryResult!12398)

(assert (=> d!157153 (and (or (is-Undefined!12398 lt!651676) (not (is-Found!12398 lt!651676)) (and (bvsge (index!51984 lt!651676) #b00000000000000000000000000000000) (bvslt (index!51984 lt!651676) (size!48686 lt!651560)))) (or (is-Undefined!12398 lt!651676) (is-Found!12398 lt!651676) (not (is-MissingZero!12398 lt!651676)) (and (bvsge (index!51983 lt!651676) #b00000000000000000000000000000000) (bvslt (index!51983 lt!651676) (size!48686 lt!651560)))) (or (is-Undefined!12398 lt!651676) (is-Found!12398 lt!651676) (is-MissingZero!12398 lt!651676) (not (is-MissingVacant!12398 lt!651676)) (and (bvsge (index!51986 lt!651676) #b00000000000000000000000000000000) (bvslt (index!51986 lt!651676) (size!48686 lt!651560)))) (or (is-Undefined!12398 lt!651676) (ite (is-Found!12398 lt!651676) (= (select (arr!48135 lt!651560) (index!51984 lt!651676)) lt!651562) (ite (is-MissingZero!12398 lt!651676) (= (select (arr!48135 lt!651560) (index!51983 lt!651676)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!12398 lt!651676) (= (select (arr!48135 lt!651560) (index!51986 lt!651676)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!157153 (= lt!651676 e!837606)))

(declare-fun c!138570 () Bool)

(assert (=> d!157153 (= c!138570 (and (is-Intermediate!12398 lt!651675) (undefined!13210 lt!651675)))))

(assert (=> d!157153 (= lt!651675 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!651562 mask!2687) lt!651562 lt!651560 mask!2687))))

(assert (=> d!157153 (validMask!0 mask!2687)))

(assert (=> d!157153 (= (seekEntryOrOpen!0 lt!651562 lt!651560 mask!2687) lt!651676)))

(assert (= (and d!157153 c!138570) b!1495363))

(assert (= (and d!157153 (not c!138570)) b!1495361))

(assert (= (and b!1495361 c!138569) b!1495360))

(assert (= (and b!1495361 (not c!138569)) b!1495359))

(assert (= (and b!1495359 c!138568) b!1495362))

(assert (= (and b!1495359 (not c!138568)) b!1495364))

(declare-fun m!1378887 () Bool)

(assert (=> b!1495361 m!1378887))

(declare-fun m!1378889 () Bool)

(assert (=> b!1495364 m!1378889))

(assert (=> d!157153 m!1378723))

(assert (=> d!157153 m!1378723))

(assert (=> d!157153 m!1378725))

(declare-fun m!1378891 () Bool)

(assert (=> d!157153 m!1378891))

(declare-fun m!1378893 () Bool)

(assert (=> d!157153 m!1378893))

(declare-fun m!1378895 () Bool)

(assert (=> d!157153 m!1378895))

(assert (=> d!157153 m!1378717))

(assert (=> b!1495073 d!157153))

(declare-fun b!1495365 () Bool)

(declare-fun e!837608 () SeekEntryResult!12398)

(assert (=> b!1495365 (= e!837608 (Intermediate!12398 false index!646 x!665))))

(declare-fun b!1495366 () Bool)

(declare-fun lt!651678 () SeekEntryResult!12398)

(assert (=> b!1495366 (and (bvsge (index!51985 lt!651678) #b00000000000000000000000000000000) (bvslt (index!51985 lt!651678) (size!48686 a!2862)))))

(declare-fun res!1017292 () Bool)

(assert (=> b!1495366 (= res!1017292 (= (select (arr!48135 a!2862) (index!51985 lt!651678)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!837612 () Bool)

(assert (=> b!1495366 (=> res!1017292 e!837612)))

(declare-fun b!1495367 () Bool)

(declare-fun e!837609 () SeekEntryResult!12398)

(assert (=> b!1495367 (= e!837609 (Intermediate!12398 true index!646 x!665))))

(declare-fun d!157171 () Bool)

(declare-fun e!837611 () Bool)

(assert (=> d!157171 e!837611))

(declare-fun c!138572 () Bool)

(assert (=> d!157171 (= c!138572 (and (is-Intermediate!12398 lt!651678) (undefined!13210 lt!651678)))))

(assert (=> d!157171 (= lt!651678 e!837609)))

(declare-fun c!138571 () Bool)

(assert (=> d!157171 (= c!138571 (bvsge x!665 #b01111111111111111111111111111110))))

(declare-fun lt!651677 () (_ BitVec 64))

(assert (=> d!157171 (= lt!651677 (select (arr!48135 a!2862) index!646))))

(assert (=> d!157171 (validMask!0 mask!2687)))

(assert (=> d!157171 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48135 a!2862) j!93) a!2862 mask!2687) lt!651678)))

(declare-fun b!1495368 () Bool)

(assert (=> b!1495368 (= e!837611 (bvsge (x!133589 lt!651678) #b01111111111111111111111111111110))))

(declare-fun b!1495369 () Bool)

(declare-fun e!837610 () Bool)

(assert (=> b!1495369 (= e!837611 e!837610)))

(declare-fun res!1017294 () Bool)

(assert (=> b!1495369 (= res!1017294 (and (is-Intermediate!12398 lt!651678) (not (undefined!13210 lt!651678)) (bvslt (x!133589 lt!651678) #b01111111111111111111111111111110) (bvsge (x!133589 lt!651678) #b00000000000000000000000000000000) (bvsge (x!133589 lt!651678) x!665)))))

(assert (=> b!1495369 (=> (not res!1017294) (not e!837610))))

(declare-fun b!1495370 () Bool)

(assert (=> b!1495370 (= e!837609 e!837608)))

(declare-fun c!138573 () Bool)

(assert (=> b!1495370 (= c!138573 (or (= lt!651677 (select (arr!48135 a!2862) j!93)) (= (bvadd lt!651677 lt!651677) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1495371 () Bool)

(assert (=> b!1495371 (and (bvsge (index!51985 lt!651678) #b00000000000000000000000000000000) (bvslt (index!51985 lt!651678) (size!48686 a!2862)))))

(assert (=> b!1495371 (= e!837612 (= (select (arr!48135 a!2862) (index!51985 lt!651678)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1495372 () Bool)

(assert (=> b!1495372 (and (bvsge (index!51985 lt!651678) #b00000000000000000000000000000000) (bvslt (index!51985 lt!651678) (size!48686 a!2862)))))

(declare-fun res!1017293 () Bool)

(assert (=> b!1495372 (= res!1017293 (= (select (arr!48135 a!2862) (index!51985 lt!651678)) (select (arr!48135 a!2862) j!93)))))

(assert (=> b!1495372 (=> res!1017293 e!837612)))

(assert (=> b!1495372 (= e!837610 e!837612)))

(declare-fun b!1495373 () Bool)

(assert (=> b!1495373 (= e!837608 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) (select (arr!48135 a!2862) j!93) a!2862 mask!2687))))

(assert (= (and d!157171 c!138571) b!1495367))

(assert (= (and d!157171 (not c!138571)) b!1495370))

(assert (= (and b!1495370 c!138573) b!1495365))

(assert (= (and b!1495370 (not c!138573)) b!1495373))

(assert (= (and d!157171 c!138572) b!1495368))

(assert (= (and d!157171 (not c!138572)) b!1495369))

(assert (= (and b!1495369 res!1017294) b!1495372))

(assert (= (and b!1495372 (not res!1017293)) b!1495366))

(assert (= (and b!1495366 (not res!1017292)) b!1495371))

(assert (=> d!157171 m!1378695))

(assert (=> d!157171 m!1378717))

(declare-fun m!1378897 () Bool)

(assert (=> b!1495371 m!1378897))

(assert (=> b!1495366 m!1378897))

(assert (=> b!1495372 m!1378897))

(assert (=> b!1495373 m!1378715))

(assert (=> b!1495373 m!1378715))

(assert (=> b!1495373 m!1378685))

(declare-fun m!1378899 () Bool)

(assert (=> b!1495373 m!1378899))

(assert (=> b!1495063 d!157171))

(declare-fun d!157173 () Bool)

(assert (=> d!157173 (= (validKeyInArray!0 (select (arr!48135 a!2862) i!1006)) (and (not (= (select (arr!48135 a!2862) i!1006) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48135 a!2862) i!1006) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1495067 d!157173))

(declare-fun bm!68008 () Bool)

(declare-fun call!68011 () Bool)

(assert (=> bm!68008 (= call!68011 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2862 mask!2687))))

(declare-fun b!1495395 () Bool)

(declare-fun e!837625 () Bool)

(declare-fun e!837626 () Bool)

(assert (=> b!1495395 (= e!837625 e!837626)))

(declare-fun lt!651689 () (_ BitVec 64))

(assert (=> b!1495395 (= lt!651689 (select (arr!48135 a!2862) #b00000000000000000000000000000000))))

(declare-fun lt!651691 () Unit!50084)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!99745 (_ BitVec 64) (_ BitVec 32)) Unit!50084)

(assert (=> b!1495395 (= lt!651691 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!651689 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!99745 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1495395 (arrayContainsKey!0 a!2862 lt!651689 #b00000000000000000000000000000000)))

(declare-fun lt!651690 () Unit!50084)

(assert (=> b!1495395 (= lt!651690 lt!651691)))

(declare-fun res!1017300 () Bool)

(assert (=> b!1495395 (= res!1017300 (= (seekEntryOrOpen!0 (select (arr!48135 a!2862) #b00000000000000000000000000000000) a!2862 mask!2687) (Found!12398 #b00000000000000000000000000000000)))))

(assert (=> b!1495395 (=> (not res!1017300) (not e!837626))))

(declare-fun b!1495396 () Bool)

(assert (=> b!1495396 (= e!837626 call!68011)))

(declare-fun b!1495397 () Bool)

(declare-fun e!837627 () Bool)

(assert (=> b!1495397 (= e!837627 e!837625)))

(declare-fun c!138582 () Bool)

(assert (=> b!1495397 (= c!138582 (validKeyInArray!0 (select (arr!48135 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1495394 () Bool)

(assert (=> b!1495394 (= e!837625 call!68011)))

(declare-fun d!157175 () Bool)

(declare-fun res!1017299 () Bool)

(assert (=> d!157175 (=> res!1017299 e!837627)))

(assert (=> d!157175 (= res!1017299 (bvsge #b00000000000000000000000000000000 (size!48686 a!2862)))))

(assert (=> d!157175 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687) e!837627)))

(assert (= (and d!157175 (not res!1017299)) b!1495397))

(assert (= (and b!1495397 c!138582) b!1495395))

(assert (= (and b!1495397 (not c!138582)) b!1495394))

(assert (= (and b!1495395 res!1017300) b!1495396))

(assert (= (or b!1495396 b!1495394) bm!68008))

(declare-fun m!1378901 () Bool)

(assert (=> bm!68008 m!1378901))

(declare-fun m!1378903 () Bool)

(assert (=> b!1495395 m!1378903))

(declare-fun m!1378905 () Bool)

(assert (=> b!1495395 m!1378905))

(declare-fun m!1378907 () Bool)

(assert (=> b!1495395 m!1378907))

(assert (=> b!1495395 m!1378903))

(declare-fun m!1378909 () Bool)

(assert (=> b!1495395 m!1378909))

(assert (=> b!1495397 m!1378903))

(assert (=> b!1495397 m!1378903))

(declare-fun m!1378911 () Bool)

(assert (=> b!1495397 m!1378911))

(assert (=> b!1495065 d!157175))

(declare-fun d!157177 () Bool)

(assert (=> d!157177 (= (validKeyInArray!0 (select (arr!48135 a!2862) j!93)) (and (not (= (select (arr!48135 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48135 a!2862) j!93) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1495055 d!157177))

(declare-fun d!157179 () Bool)

(declare-fun lt!651701 () (_ BitVec 32))

(assert (=> d!157179 (and (bvsge lt!651701 #b00000000000000000000000000000000) (bvslt lt!651701 (bvadd mask!2687 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!157179 (= lt!651701 (choose!52 index!646 x!665 mask!2687))))

(assert (=> d!157179 (validMask!0 mask!2687)))

(assert (=> d!157179 (= (nextIndex!0 index!646 x!665 mask!2687) lt!651701)))

(declare-fun bs!42907 () Bool)

(assert (= bs!42907 d!157179))

(declare-fun m!1378929 () Bool)

(assert (=> bs!42907 m!1378929))

(assert (=> bs!42907 m!1378717))

(assert (=> b!1495069 d!157179))

(declare-fun b!1495429 () Bool)

(declare-fun e!837650 () Bool)

(declare-fun contains!9943 (List!34816 (_ BitVec 64)) Bool)

(assert (=> b!1495429 (= e!837650 (contains!9943 Nil!34813 (select (arr!48135 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1495431 () Bool)

(declare-fun e!837648 () Bool)

(declare-fun e!837649 () Bool)

(assert (=> b!1495431 (= e!837648 e!837649)))

(declare-fun res!1017311 () Bool)

(assert (=> b!1495431 (=> (not res!1017311) (not e!837649))))

(assert (=> b!1495431 (= res!1017311 (not e!837650))))

(declare-fun res!1017312 () Bool)

(assert (=> b!1495431 (=> (not res!1017312) (not e!837650))))

(assert (=> b!1495431 (= res!1017312 (validKeyInArray!0 (select (arr!48135 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1495432 () Bool)

(declare-fun e!837647 () Bool)

(assert (=> b!1495432 (= e!837649 e!837647)))

(declare-fun c!138594 () Bool)

(assert (=> b!1495432 (= c!138594 (validKeyInArray!0 (select (arr!48135 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1495433 () Bool)

(declare-fun call!68014 () Bool)

(assert (=> b!1495433 (= e!837647 call!68014)))

(declare-fun bm!68011 () Bool)

(assert (=> bm!68011 (= call!68014 (arrayNoDuplicates!0 a!2862 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!138594 (Cons!34812 (select (arr!48135 a!2862) #b00000000000000000000000000000000) Nil!34813) Nil!34813)))))

(declare-fun d!157185 () Bool)

(declare-fun res!1017313 () Bool)

(assert (=> d!157185 (=> res!1017313 e!837648)))

(assert (=> d!157185 (= res!1017313 (bvsge #b00000000000000000000000000000000 (size!48686 a!2862)))))

(assert (=> d!157185 (= (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34813) e!837648)))

(declare-fun b!1495430 () Bool)

(assert (=> b!1495430 (= e!837647 call!68014)))

(assert (= (and d!157185 (not res!1017313)) b!1495431))

(assert (= (and b!1495431 res!1017312) b!1495429))

(assert (= (and b!1495431 res!1017311) b!1495432))

(assert (= (and b!1495432 c!138594) b!1495433))

(assert (= (and b!1495432 (not c!138594)) b!1495430))

(assert (= (or b!1495433 b!1495430) bm!68011))

(assert (=> b!1495429 m!1378903))

(assert (=> b!1495429 m!1378903))

(declare-fun m!1378939 () Bool)

(assert (=> b!1495429 m!1378939))

(assert (=> b!1495431 m!1378903))

(assert (=> b!1495431 m!1378903))

(assert (=> b!1495431 m!1378911))

(assert (=> b!1495432 m!1378903))

(assert (=> b!1495432 m!1378903))

(assert (=> b!1495432 m!1378911))

(assert (=> bm!68011 m!1378903))

(declare-fun m!1378943 () Bool)

(assert (=> bm!68011 m!1378943))

(assert (=> b!1495059 d!157185))

(declare-fun b!1495438 () Bool)

(declare-fun e!837654 () SeekEntryResult!12398)

(assert (=> b!1495438 (= e!837654 (Intermediate!12398 false (toIndex!0 (select (arr!48135 a!2862) j!93) mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1495439 () Bool)

(declare-fun lt!651712 () SeekEntryResult!12398)

(assert (=> b!1495439 (and (bvsge (index!51985 lt!651712) #b00000000000000000000000000000000) (bvslt (index!51985 lt!651712) (size!48686 a!2862)))))

(declare-fun res!1017316 () Bool)

(assert (=> b!1495439 (= res!1017316 (= (select (arr!48135 a!2862) (index!51985 lt!651712)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!837658 () Bool)

(assert (=> b!1495439 (=> res!1017316 e!837658)))

(declare-fun b!1495440 () Bool)

(declare-fun e!837655 () SeekEntryResult!12398)

(assert (=> b!1495440 (= e!837655 (Intermediate!12398 true (toIndex!0 (select (arr!48135 a!2862) j!93) mask!2687) #b00000000000000000000000000000000))))

(declare-fun d!157193 () Bool)

(declare-fun e!837657 () Bool)

(assert (=> d!157193 e!837657))

(declare-fun c!138597 () Bool)

(assert (=> d!157193 (= c!138597 (and (is-Intermediate!12398 lt!651712) (undefined!13210 lt!651712)))))

(assert (=> d!157193 (= lt!651712 e!837655)))

(declare-fun c!138596 () Bool)

(assert (=> d!157193 (= c!138596 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!651711 () (_ BitVec 64))

(assert (=> d!157193 (= lt!651711 (select (arr!48135 a!2862) (toIndex!0 (select (arr!48135 a!2862) j!93) mask!2687)))))

(assert (=> d!157193 (validMask!0 mask!2687)))

(assert (=> d!157193 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48135 a!2862) j!93) mask!2687) (select (arr!48135 a!2862) j!93) a!2862 mask!2687) lt!651712)))

(declare-fun b!1495441 () Bool)

(assert (=> b!1495441 (= e!837657 (bvsge (x!133589 lt!651712) #b01111111111111111111111111111110))))

(declare-fun b!1495442 () Bool)

(declare-fun e!837656 () Bool)

(assert (=> b!1495442 (= e!837657 e!837656)))

(declare-fun res!1017318 () Bool)

(assert (=> b!1495442 (= res!1017318 (and (is-Intermediate!12398 lt!651712) (not (undefined!13210 lt!651712)) (bvslt (x!133589 lt!651712) #b01111111111111111111111111111110) (bvsge (x!133589 lt!651712) #b00000000000000000000000000000000) (bvsge (x!133589 lt!651712) #b00000000000000000000000000000000)))))

(assert (=> b!1495442 (=> (not res!1017318) (not e!837656))))

(declare-fun b!1495443 () Bool)

(assert (=> b!1495443 (= e!837655 e!837654)))

(declare-fun c!138598 () Bool)

(assert (=> b!1495443 (= c!138598 (or (= lt!651711 (select (arr!48135 a!2862) j!93)) (= (bvadd lt!651711 lt!651711) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1495444 () Bool)

(assert (=> b!1495444 (and (bvsge (index!51985 lt!651712) #b00000000000000000000000000000000) (bvslt (index!51985 lt!651712) (size!48686 a!2862)))))

(assert (=> b!1495444 (= e!837658 (= (select (arr!48135 a!2862) (index!51985 lt!651712)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1495445 () Bool)

(assert (=> b!1495445 (and (bvsge (index!51985 lt!651712) #b00000000000000000000000000000000) (bvslt (index!51985 lt!651712) (size!48686 a!2862)))))

(declare-fun res!1017317 () Bool)

(assert (=> b!1495445 (= res!1017317 (= (select (arr!48135 a!2862) (index!51985 lt!651712)) (select (arr!48135 a!2862) j!93)))))

(assert (=> b!1495445 (=> res!1017317 e!837658)))

(assert (=> b!1495445 (= e!837656 e!837658)))

(declare-fun b!1495446 () Bool)

(assert (=> b!1495446 (= e!837654 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!48135 a!2862) j!93) mask!2687) #b00000000000000000000000000000000 mask!2687) (select (arr!48135 a!2862) j!93) a!2862 mask!2687))))

(assert (= (and d!157193 c!138596) b!1495440))

(assert (= (and d!157193 (not c!138596)) b!1495443))

(assert (= (and b!1495443 c!138598) b!1495438))

(assert (= (and b!1495443 (not c!138598)) b!1495446))

(assert (= (and d!157193 c!138597) b!1495441))

(assert (= (and d!157193 (not c!138597)) b!1495442))

(assert (= (and b!1495442 res!1017318) b!1495445))

(assert (= (and b!1495445 (not res!1017317)) b!1495439))

(assert (= (and b!1495439 (not res!1017316)) b!1495444))

(assert (=> d!157193 m!1378701))

(declare-fun m!1378949 () Bool)

(assert (=> d!157193 m!1378949))

(assert (=> d!157193 m!1378717))

(declare-fun m!1378951 () Bool)

(assert (=> b!1495444 m!1378951))

(assert (=> b!1495439 m!1378951))

(assert (=> b!1495445 m!1378951))

(assert (=> b!1495446 m!1378701))

(declare-fun m!1378953 () Bool)

(assert (=> b!1495446 m!1378953))

(assert (=> b!1495446 m!1378953))

(assert (=> b!1495446 m!1378685))

(declare-fun m!1378955 () Bool)

(assert (=> b!1495446 m!1378955))

(assert (=> b!1495057 d!157193))

(declare-fun d!157197 () Bool)

(declare-fun lt!651721 () (_ BitVec 32))

(declare-fun lt!651720 () (_ BitVec 32))

(assert (=> d!157197 (= lt!651721 (bvmul (bvxor lt!651720 (bvlshr lt!651720 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!157197 (= lt!651720 ((_ extract 31 0) (bvand (bvxor (select (arr!48135 a!2862) j!93) (bvlshr (select (arr!48135 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!157197 (and (bvsge mask!2687 #b00000000000000000000000000000000) (let ((res!1017319 (let ((h!36207 ((_ extract 31 0) (bvand (bvxor (select (arr!48135 a!2862) j!93) (bvlshr (select (arr!48135 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!133600 (bvmul (bvxor h!36207 (bvlshr h!36207 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!133600 (bvlshr x!133600 #b00000000000000000000000000001101)) mask!2687))))) (and (bvslt res!1017319 (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge res!1017319 #b00000000000000000000000000000000))))))

(assert (=> d!157197 (= (toIndex!0 (select (arr!48135 a!2862) j!93) mask!2687) (bvand (bvxor lt!651721 (bvlshr lt!651721 #b00000000000000000000000000001101)) mask!2687))))

(assert (=> b!1495057 d!157197))

(declare-fun b!1495447 () Bool)

(declare-fun c!138599 () Bool)

(declare-fun lt!651722 () (_ BitVec 64))

(assert (=> b!1495447 (= c!138599 (= lt!651722 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!837659 () SeekEntryResult!12398)

(declare-fun e!837661 () SeekEntryResult!12398)

(assert (=> b!1495447 (= e!837659 e!837661)))

(declare-fun b!1495448 () Bool)

(declare-fun lt!651723 () SeekEntryResult!12398)

(assert (=> b!1495448 (= e!837659 (Found!12398 (index!51985 lt!651723)))))

(declare-fun b!1495449 () Bool)

(declare-fun e!837660 () SeekEntryResult!12398)

(assert (=> b!1495449 (= e!837660 e!837659)))

(assert (=> b!1495449 (= lt!651722 (select (arr!48135 a!2862) (index!51985 lt!651723)))))

(declare-fun c!138600 () Bool)

(assert (=> b!1495449 (= c!138600 (= lt!651722 (select (arr!48135 a!2862) j!93)))))

(declare-fun b!1495451 () Bool)

(assert (=> b!1495451 (= e!837660 Undefined!12398)))

(declare-fun b!1495452 () Bool)

(assert (=> b!1495452 (= e!837661 (seekKeyOrZeroReturnVacant!0 (x!133589 lt!651723) (index!51985 lt!651723) (index!51985 lt!651723) (select (arr!48135 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1495450 () Bool)

(assert (=> b!1495450 (= e!837661 (MissingZero!12398 (index!51985 lt!651723)))))

(declare-fun d!157201 () Bool)

(declare-fun lt!651724 () SeekEntryResult!12398)

(assert (=> d!157201 (and (or (is-Undefined!12398 lt!651724) (not (is-Found!12398 lt!651724)) (and (bvsge (index!51984 lt!651724) #b00000000000000000000000000000000) (bvslt (index!51984 lt!651724) (size!48686 a!2862)))) (or (is-Undefined!12398 lt!651724) (is-Found!12398 lt!651724) (not (is-MissingZero!12398 lt!651724)) (and (bvsge (index!51983 lt!651724) #b00000000000000000000000000000000) (bvslt (index!51983 lt!651724) (size!48686 a!2862)))) (or (is-Undefined!12398 lt!651724) (is-Found!12398 lt!651724) (is-MissingZero!12398 lt!651724) (not (is-MissingVacant!12398 lt!651724)) (and (bvsge (index!51986 lt!651724) #b00000000000000000000000000000000) (bvslt (index!51986 lt!651724) (size!48686 a!2862)))) (or (is-Undefined!12398 lt!651724) (ite (is-Found!12398 lt!651724) (= (select (arr!48135 a!2862) (index!51984 lt!651724)) (select (arr!48135 a!2862) j!93)) (ite (is-MissingZero!12398 lt!651724) (= (select (arr!48135 a!2862) (index!51983 lt!651724)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!12398 lt!651724) (= (select (arr!48135 a!2862) (index!51986 lt!651724)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!157201 (= lt!651724 e!837660)))

(declare-fun c!138601 () Bool)

(assert (=> d!157201 (= c!138601 (and (is-Intermediate!12398 lt!651723) (undefined!13210 lt!651723)))))

(assert (=> d!157201 (= lt!651723 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48135 a!2862) j!93) mask!2687) (select (arr!48135 a!2862) j!93) a!2862 mask!2687))))

(assert (=> d!157201 (validMask!0 mask!2687)))

(assert (=> d!157201 (= (seekEntryOrOpen!0 (select (arr!48135 a!2862) j!93) a!2862 mask!2687) lt!651724)))

(assert (= (and d!157201 c!138601) b!1495451))

(assert (= (and d!157201 (not c!138601)) b!1495449))

(assert (= (and b!1495449 c!138600) b!1495448))

(assert (= (and b!1495449 (not c!138600)) b!1495447))

(assert (= (and b!1495447 c!138599) b!1495450))

(assert (= (and b!1495447 (not c!138599)) b!1495452))

(declare-fun m!1378959 () Bool)

(assert (=> b!1495449 m!1378959))

(assert (=> b!1495452 m!1378685))

(declare-fun m!1378961 () Bool)

(assert (=> b!1495452 m!1378961))

(assert (=> d!157201 m!1378685))

(assert (=> d!157201 m!1378701))

(assert (=> d!157201 m!1378701))

(assert (=> d!157201 m!1378685))

(assert (=> d!157201 m!1378703))

(declare-fun m!1378963 () Bool)

(assert (=> d!157201 m!1378963))

(declare-fun m!1378965 () Bool)

(assert (=> d!157201 m!1378965))

(declare-fun m!1378967 () Bool)

(assert (=> d!157201 m!1378967))

(assert (=> d!157201 m!1378717))

(assert (=> b!1495068 d!157201))

(declare-fun d!157203 () Bool)

(assert (=> d!157203 (= (validMask!0 mask!2687) (and (or (= mask!2687 #b00000000000000000000000000000111) (= mask!2687 #b00000000000000000000000000001111) (= mask!2687 #b00000000000000000000000000011111) (= mask!2687 #b00000000000000000000000000111111) (= mask!2687 #b00000000000000000000000001111111) (= mask!2687 #b00000000000000000000000011111111) (= mask!2687 #b00000000000000000000000111111111) (= mask!2687 #b00000000000000000000001111111111) (= mask!2687 #b00000000000000000000011111111111) (= mask!2687 #b00000000000000000000111111111111) (= mask!2687 #b00000000000000000001111111111111) (= mask!2687 #b00000000000000000011111111111111) (= mask!2687 #b00000000000000000111111111111111) (= mask!2687 #b00000000000000001111111111111111) (= mask!2687 #b00000000000000011111111111111111) (= mask!2687 #b00000000000000111111111111111111) (= mask!2687 #b00000000000001111111111111111111) (= mask!2687 #b00000000000011111111111111111111) (= mask!2687 #b00000000000111111111111111111111) (= mask!2687 #b00000000001111111111111111111111) (= mask!2687 #b00000000011111111111111111111111) (= mask!2687 #b00000000111111111111111111111111) (= mask!2687 #b00000001111111111111111111111111) (= mask!2687 #b00000011111111111111111111111111) (= mask!2687 #b00000111111111111111111111111111) (= mask!2687 #b00001111111111111111111111111111) (= mask!2687 #b00011111111111111111111111111111) (= mask!2687 #b00111111111111111111111111111111)) (bvsle mask!2687 #b00111111111111111111111111111111)))))

(assert (=> start!127244 d!157203))

(declare-fun d!157213 () Bool)

(assert (=> d!157213 (= (array_inv!37080 a!2862) (bvsge (size!48686 a!2862) #b00000000000000000000000000000000))))

(assert (=> start!127244 d!157213))

(declare-fun b!1495471 () Bool)

(declare-fun e!837672 () SeekEntryResult!12398)

(assert (=> b!1495471 (= e!837672 (Intermediate!12398 false (toIndex!0 lt!651562 mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1495472 () Bool)

(declare-fun lt!651732 () SeekEntryResult!12398)

(assert (=> b!1495472 (and (bvsge (index!51985 lt!651732) #b00000000000000000000000000000000) (bvslt (index!51985 lt!651732) (size!48686 lt!651560)))))

(declare-fun res!1017326 () Bool)

(assert (=> b!1495472 (= res!1017326 (= (select (arr!48135 lt!651560) (index!51985 lt!651732)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!837676 () Bool)

(assert (=> b!1495472 (=> res!1017326 e!837676)))

(declare-fun b!1495473 () Bool)

(declare-fun e!837673 () SeekEntryResult!12398)

(assert (=> b!1495473 (= e!837673 (Intermediate!12398 true (toIndex!0 lt!651562 mask!2687) #b00000000000000000000000000000000))))

(declare-fun d!157217 () Bool)

(declare-fun e!837675 () Bool)

(assert (=> d!157217 e!837675))

(declare-fun c!138609 () Bool)

(assert (=> d!157217 (= c!138609 (and (is-Intermediate!12398 lt!651732) (undefined!13210 lt!651732)))))

(assert (=> d!157217 (= lt!651732 e!837673)))

(declare-fun c!138608 () Bool)

(assert (=> d!157217 (= c!138608 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!651731 () (_ BitVec 64))

(assert (=> d!157217 (= lt!651731 (select (arr!48135 lt!651560) (toIndex!0 lt!651562 mask!2687)))))

(assert (=> d!157217 (validMask!0 mask!2687)))

(assert (=> d!157217 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!651562 mask!2687) lt!651562 lt!651560 mask!2687) lt!651732)))

(declare-fun b!1495474 () Bool)

(assert (=> b!1495474 (= e!837675 (bvsge (x!133589 lt!651732) #b01111111111111111111111111111110))))

(declare-fun b!1495475 () Bool)

(declare-fun e!837674 () Bool)

(assert (=> b!1495475 (= e!837675 e!837674)))

(declare-fun res!1017328 () Bool)

(assert (=> b!1495475 (= res!1017328 (and (is-Intermediate!12398 lt!651732) (not (undefined!13210 lt!651732)) (bvslt (x!133589 lt!651732) #b01111111111111111111111111111110) (bvsge (x!133589 lt!651732) #b00000000000000000000000000000000) (bvsge (x!133589 lt!651732) #b00000000000000000000000000000000)))))

(assert (=> b!1495475 (=> (not res!1017328) (not e!837674))))

(declare-fun b!1495476 () Bool)

(assert (=> b!1495476 (= e!837673 e!837672)))

(declare-fun c!138610 () Bool)

(assert (=> b!1495476 (= c!138610 (or (= lt!651731 lt!651562) (= (bvadd lt!651731 lt!651731) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1495477 () Bool)

(assert (=> b!1495477 (and (bvsge (index!51985 lt!651732) #b00000000000000000000000000000000) (bvslt (index!51985 lt!651732) (size!48686 lt!651560)))))

(assert (=> b!1495477 (= e!837676 (= (select (arr!48135 lt!651560) (index!51985 lt!651732)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1495478 () Bool)

(assert (=> b!1495478 (and (bvsge (index!51985 lt!651732) #b00000000000000000000000000000000) (bvslt (index!51985 lt!651732) (size!48686 lt!651560)))))

(declare-fun res!1017327 () Bool)

(assert (=> b!1495478 (= res!1017327 (= (select (arr!48135 lt!651560) (index!51985 lt!651732)) lt!651562))))

(assert (=> b!1495478 (=> res!1017327 e!837676)))

(assert (=> b!1495478 (= e!837674 e!837676)))

(declare-fun b!1495479 () Bool)

(assert (=> b!1495479 (= e!837672 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!651562 mask!2687) #b00000000000000000000000000000000 mask!2687) lt!651562 lt!651560 mask!2687))))

(assert (= (and d!157217 c!138608) b!1495473))

(assert (= (and d!157217 (not c!138608)) b!1495476))

(assert (= (and b!1495476 c!138610) b!1495471))

(assert (= (and b!1495476 (not c!138610)) b!1495479))

(assert (= (and d!157217 c!138609) b!1495474))

(assert (= (and d!157217 (not c!138609)) b!1495475))

(assert (= (and b!1495475 res!1017328) b!1495478))

(assert (= (and b!1495478 (not res!1017327)) b!1495472))

(assert (= (and b!1495472 (not res!1017326)) b!1495477))

(assert (=> d!157217 m!1378723))

(declare-fun m!1378981 () Bool)

(assert (=> d!157217 m!1378981))

(assert (=> d!157217 m!1378717))

(declare-fun m!1378983 () Bool)

(assert (=> b!1495477 m!1378983))

(assert (=> b!1495472 m!1378983))

(assert (=> b!1495478 m!1378983))

(assert (=> b!1495479 m!1378723))

(declare-fun m!1378985 () Bool)

(assert (=> b!1495479 m!1378985))

(assert (=> b!1495479 m!1378985))

(declare-fun m!1378987 () Bool)

(assert (=> b!1495479 m!1378987))

(assert (=> b!1495061 d!157217))

(declare-fun d!157221 () Bool)

(declare-fun lt!651734 () (_ BitVec 32))

(declare-fun lt!651733 () (_ BitVec 32))

(assert (=> d!157221 (= lt!651734 (bvmul (bvxor lt!651733 (bvlshr lt!651733 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!157221 (= lt!651733 ((_ extract 31 0) (bvand (bvxor lt!651562 (bvlshr lt!651562 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!157221 (and (bvsge mask!2687 #b00000000000000000000000000000000) (let ((res!1017319 (let ((h!36207 ((_ extract 31 0) (bvand (bvxor lt!651562 (bvlshr lt!651562 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!133600 (bvmul (bvxor h!36207 (bvlshr h!36207 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!133600 (bvlshr x!133600 #b00000000000000000000000000001101)) mask!2687))))) (and (bvslt res!1017319 (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge res!1017319 #b00000000000000000000000000000000))))))

(assert (=> d!157221 (= (toIndex!0 lt!651562 mask!2687) (bvand (bvxor lt!651734 (bvlshr lt!651734 #b00000000000000000000000000001101)) mask!2687))))

(assert (=> b!1495061 d!157221))

(declare-fun b!1495480 () Bool)

(declare-fun e!837677 () SeekEntryResult!12398)

(assert (=> b!1495480 (= e!837677 (Intermediate!12398 false lt!651565 (bvadd #b00000000000000000000000000000001 x!665)))))

(declare-fun b!1495481 () Bool)

(declare-fun lt!651736 () SeekEntryResult!12398)

(assert (=> b!1495481 (and (bvsge (index!51985 lt!651736) #b00000000000000000000000000000000) (bvslt (index!51985 lt!651736) (size!48686 lt!651560)))))

(declare-fun res!1017329 () Bool)

(assert (=> b!1495481 (= res!1017329 (= (select (arr!48135 lt!651560) (index!51985 lt!651736)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!837681 () Bool)

(assert (=> b!1495481 (=> res!1017329 e!837681)))

(declare-fun b!1495482 () Bool)

(declare-fun e!837678 () SeekEntryResult!12398)

(assert (=> b!1495482 (= e!837678 (Intermediate!12398 true lt!651565 (bvadd #b00000000000000000000000000000001 x!665)))))

(declare-fun d!157223 () Bool)

(declare-fun e!837680 () Bool)

(assert (=> d!157223 e!837680))

(declare-fun c!138612 () Bool)

(assert (=> d!157223 (= c!138612 (and (is-Intermediate!12398 lt!651736) (undefined!13210 lt!651736)))))

(assert (=> d!157223 (= lt!651736 e!837678)))

(declare-fun c!138611 () Bool)

(assert (=> d!157223 (= c!138611 (bvsge (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110))))

(declare-fun lt!651735 () (_ BitVec 64))

(assert (=> d!157223 (= lt!651735 (select (arr!48135 lt!651560) lt!651565))))

(assert (=> d!157223 (validMask!0 mask!2687)))

(assert (=> d!157223 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!651565 lt!651562 lt!651560 mask!2687) lt!651736)))

(declare-fun b!1495483 () Bool)

(assert (=> b!1495483 (= e!837680 (bvsge (x!133589 lt!651736) #b01111111111111111111111111111110))))

(declare-fun b!1495484 () Bool)

(declare-fun e!837679 () Bool)

(assert (=> b!1495484 (= e!837680 e!837679)))

(declare-fun res!1017331 () Bool)

(assert (=> b!1495484 (= res!1017331 (and (is-Intermediate!12398 lt!651736) (not (undefined!13210 lt!651736)) (bvslt (x!133589 lt!651736) #b01111111111111111111111111111110) (bvsge (x!133589 lt!651736) #b00000000000000000000000000000000) (bvsge (x!133589 lt!651736) (bvadd #b00000000000000000000000000000001 x!665))))))

(assert (=> b!1495484 (=> (not res!1017331) (not e!837679))))

(declare-fun b!1495485 () Bool)

(assert (=> b!1495485 (= e!837678 e!837677)))

(declare-fun c!138613 () Bool)

(assert (=> b!1495485 (= c!138613 (or (= lt!651735 lt!651562) (= (bvadd lt!651735 lt!651735) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1495486 () Bool)

(assert (=> b!1495486 (and (bvsge (index!51985 lt!651736) #b00000000000000000000000000000000) (bvslt (index!51985 lt!651736) (size!48686 lt!651560)))))

(assert (=> b!1495486 (= e!837681 (= (select (arr!48135 lt!651560) (index!51985 lt!651736)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1495487 () Bool)

(assert (=> b!1495487 (and (bvsge (index!51985 lt!651736) #b00000000000000000000000000000000) (bvslt (index!51985 lt!651736) (size!48686 lt!651560)))))

(declare-fun res!1017330 () Bool)

(assert (=> b!1495487 (= res!1017330 (= (select (arr!48135 lt!651560) (index!51985 lt!651736)) lt!651562))))

(assert (=> b!1495487 (=> res!1017330 e!837681)))

(assert (=> b!1495487 (= e!837679 e!837681)))

(declare-fun b!1495488 () Bool)

(assert (=> b!1495488 (= e!837677 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665 #b00000000000000000000000000000001) (nextIndex!0 lt!651565 (bvadd #b00000000000000000000000000000001 x!665) mask!2687) lt!651562 lt!651560 mask!2687))))

(assert (= (and d!157223 c!138611) b!1495482))

(assert (= (and d!157223 (not c!138611)) b!1495485))

(assert (= (and b!1495485 c!138613) b!1495480))

(assert (= (and b!1495485 (not c!138613)) b!1495488))

(assert (= (and d!157223 c!138612) b!1495483))

(assert (= (and d!157223 (not c!138612)) b!1495484))

(assert (= (and b!1495484 res!1017331) b!1495487))

(assert (= (and b!1495487 (not res!1017330)) b!1495481))

(assert (= (and b!1495481 (not res!1017329)) b!1495486))

(declare-fun m!1378989 () Bool)

(assert (=> d!157223 m!1378989))

(assert (=> d!157223 m!1378717))

(declare-fun m!1378991 () Bool)

(assert (=> b!1495486 m!1378991))

(assert (=> b!1495481 m!1378991))

(assert (=> b!1495487 m!1378991))

(assert (=> b!1495488 m!1378811))

(assert (=> b!1495488 m!1378811))

(declare-fun m!1378993 () Bool)

(assert (=> b!1495488 m!1378993))

(assert (=> b!1495072 d!157223))

(declare-fun b!1495489 () Bool)

(declare-fun e!837682 () SeekEntryResult!12398)

(assert (=> b!1495489 (= e!837682 (Intermediate!12398 false index!646 x!665))))

(declare-fun b!1495490 () Bool)

(declare-fun lt!651741 () SeekEntryResult!12398)

(assert (=> b!1495490 (and (bvsge (index!51985 lt!651741) #b00000000000000000000000000000000) (bvslt (index!51985 lt!651741) (size!48686 lt!651560)))))

(declare-fun res!1017332 () Bool)

(assert (=> b!1495490 (= res!1017332 (= (select (arr!48135 lt!651560) (index!51985 lt!651741)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!837686 () Bool)

(assert (=> b!1495490 (=> res!1017332 e!837686)))

(declare-fun b!1495491 () Bool)

(declare-fun e!837683 () SeekEntryResult!12398)

(assert (=> b!1495491 (= e!837683 (Intermediate!12398 true index!646 x!665))))

(declare-fun d!157225 () Bool)

(declare-fun e!837685 () Bool)

(assert (=> d!157225 e!837685))

(declare-fun c!138615 () Bool)

(assert (=> d!157225 (= c!138615 (and (is-Intermediate!12398 lt!651741) (undefined!13210 lt!651741)))))

(assert (=> d!157225 (= lt!651741 e!837683)))

(declare-fun c!138614 () Bool)

(assert (=> d!157225 (= c!138614 (bvsge x!665 #b01111111111111111111111111111110))))

(declare-fun lt!651740 () (_ BitVec 64))

(assert (=> d!157225 (= lt!651740 (select (arr!48135 lt!651560) index!646))))

(assert (=> d!157225 (validMask!0 mask!2687)))

(assert (=> d!157225 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!651562 lt!651560 mask!2687) lt!651741)))

(declare-fun b!1495492 () Bool)

(assert (=> b!1495492 (= e!837685 (bvsge (x!133589 lt!651741) #b01111111111111111111111111111110))))

(declare-fun b!1495493 () Bool)

(declare-fun e!837684 () Bool)

(assert (=> b!1495493 (= e!837685 e!837684)))

(declare-fun res!1017334 () Bool)

(assert (=> b!1495493 (= res!1017334 (and (is-Intermediate!12398 lt!651741) (not (undefined!13210 lt!651741)) (bvslt (x!133589 lt!651741) #b01111111111111111111111111111110) (bvsge (x!133589 lt!651741) #b00000000000000000000000000000000) (bvsge (x!133589 lt!651741) x!665)))))

(assert (=> b!1495493 (=> (not res!1017334) (not e!837684))))

(declare-fun b!1495494 () Bool)

(assert (=> b!1495494 (= e!837683 e!837682)))

(declare-fun c!138616 () Bool)

(assert (=> b!1495494 (= c!138616 (or (= lt!651740 lt!651562) (= (bvadd lt!651740 lt!651740) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1495495 () Bool)

(assert (=> b!1495495 (and (bvsge (index!51985 lt!651741) #b00000000000000000000000000000000) (bvslt (index!51985 lt!651741) (size!48686 lt!651560)))))

(assert (=> b!1495495 (= e!837686 (= (select (arr!48135 lt!651560) (index!51985 lt!651741)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1495496 () Bool)

(assert (=> b!1495496 (and (bvsge (index!51985 lt!651741) #b00000000000000000000000000000000) (bvslt (index!51985 lt!651741) (size!48686 lt!651560)))))

(declare-fun res!1017333 () Bool)

(assert (=> b!1495496 (= res!1017333 (= (select (arr!48135 lt!651560) (index!51985 lt!651741)) lt!651562))))

(assert (=> b!1495496 (=> res!1017333 e!837686)))

(assert (=> b!1495496 (= e!837684 e!837686)))

(declare-fun b!1495497 () Bool)

(assert (=> b!1495497 (= e!837682 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) lt!651562 lt!651560 mask!2687))))

(assert (= (and d!157225 c!138614) b!1495491))

(assert (= (and d!157225 (not c!138614)) b!1495494))

(assert (= (and b!1495494 c!138616) b!1495489))

(assert (= (and b!1495494 (not c!138616)) b!1495497))

(assert (= (and d!157225 c!138615) b!1495492))

(assert (= (and d!157225 (not c!138615)) b!1495493))

(assert (= (and b!1495493 res!1017334) b!1495496))

(assert (= (and b!1495496 (not res!1017333)) b!1495490))

(assert (= (and b!1495490 (not res!1017332)) b!1495495))

(assert (=> d!157225 m!1378837))

(assert (=> d!157225 m!1378717))

(declare-fun m!1378997 () Bool)

(assert (=> b!1495495 m!1378997))

(assert (=> b!1495490 m!1378997))

(assert (=> b!1495496 m!1378997))

(assert (=> b!1495497 m!1378715))

(assert (=> b!1495497 m!1378715))

(declare-fun m!1379005 () Bool)

(assert (=> b!1495497 m!1379005))

(assert (=> b!1495070 d!157225))

(declare-fun bm!68013 () Bool)

(declare-fun call!68016 () Bool)

(assert (=> bm!68013 (= call!68016 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!93 #b00000000000000000000000000000001) a!2862 mask!2687))))

(declare-fun b!1495505 () Bool)

(declare-fun e!837690 () Bool)

(declare-fun e!837691 () Bool)

(assert (=> b!1495505 (= e!837690 e!837691)))

(declare-fun lt!651744 () (_ BitVec 64))

(assert (=> b!1495505 (= lt!651744 (select (arr!48135 a!2862) j!93))))

(declare-fun lt!651746 () Unit!50084)

(assert (=> b!1495505 (= lt!651746 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!651744 j!93))))

(assert (=> b!1495505 (arrayContainsKey!0 a!2862 lt!651744 #b00000000000000000000000000000000)))

(declare-fun lt!651745 () Unit!50084)

(assert (=> b!1495505 (= lt!651745 lt!651746)))

(declare-fun res!1017336 () Bool)

(assert (=> b!1495505 (= res!1017336 (= (seekEntryOrOpen!0 (select (arr!48135 a!2862) j!93) a!2862 mask!2687) (Found!12398 j!93)))))

(assert (=> b!1495505 (=> (not res!1017336) (not e!837691))))

(declare-fun b!1495506 () Bool)

(assert (=> b!1495506 (= e!837691 call!68016)))

(declare-fun b!1495507 () Bool)

(declare-fun e!837692 () Bool)

(assert (=> b!1495507 (= e!837692 e!837690)))

(declare-fun c!138620 () Bool)

(assert (=> b!1495507 (= c!138620 (validKeyInArray!0 (select (arr!48135 a!2862) j!93)))))

(declare-fun b!1495504 () Bool)

(assert (=> b!1495504 (= e!837690 call!68016)))

(declare-fun d!157229 () Bool)

(declare-fun res!1017335 () Bool)

(assert (=> d!157229 (=> res!1017335 e!837692)))

(assert (=> d!157229 (= res!1017335 (bvsge j!93 (size!48686 a!2862)))))

(assert (=> d!157229 (= (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687) e!837692)))

(assert (= (and d!157229 (not res!1017335)) b!1495507))

(assert (= (and b!1495507 c!138620) b!1495505))

(assert (= (and b!1495507 (not c!138620)) b!1495504))

(assert (= (and b!1495505 res!1017336) b!1495506))

(assert (= (or b!1495506 b!1495504) bm!68013))

(declare-fun m!1379007 () Bool)

(assert (=> bm!68013 m!1379007))

(assert (=> b!1495505 m!1378685))

(declare-fun m!1379009 () Bool)

(assert (=> b!1495505 m!1379009))

(declare-fun m!1379011 () Bool)

(assert (=> b!1495505 m!1379011))

(assert (=> b!1495505 m!1378685))

(assert (=> b!1495505 m!1378711))

(assert (=> b!1495507 m!1378685))

(assert (=> b!1495507 m!1378685))

(assert (=> b!1495507 m!1378709))

(assert (=> b!1495060 d!157229))

(declare-fun d!157233 () Bool)

(assert (=> d!157233 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-fun lt!651749 () Unit!50084)

(declare-fun choose!38 (array!99745 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50084)

(assert (=> d!157233 (= lt!651749 (choose!38 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(assert (=> d!157233 (validMask!0 mask!2687)))

(assert (=> d!157233 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93) lt!651749)))

(declare-fun bs!42910 () Bool)

(assert (= bs!42910 d!157233))

(assert (=> bs!42910 m!1378697))

(declare-fun m!1379013 () Bool)

(assert (=> bs!42910 m!1379013))

(assert (=> bs!42910 m!1378717))

(assert (=> b!1495060 d!157233))

(declare-fun lt!651751 () SeekEntryResult!12398)

(declare-fun d!157235 () Bool)

(assert (=> d!157235 (and (or (is-Undefined!12398 lt!651751) (not (is-Found!12398 lt!651751)) (and (bvsge (index!51984 lt!651751) #b00000000000000000000000000000000) (bvslt (index!51984 lt!651751) (size!48686 lt!651560)))) (or (is-Undefined!12398 lt!651751) (is-Found!12398 lt!651751) (not (is-MissingVacant!12398 lt!651751)) (not (= (index!51986 lt!651751) intermediateAfterIndex!19)) (and (bvsge (index!51986 lt!651751) #b00000000000000000000000000000000) (bvslt (index!51986 lt!651751) (size!48686 lt!651560)))) (or (is-Undefined!12398 lt!651751) (ite (is-Found!12398 lt!651751) (= (select (arr!48135 lt!651560) (index!51984 lt!651751)) lt!651562) (and (is-MissingVacant!12398 lt!651751) (= (index!51986 lt!651751) intermediateAfterIndex!19) (= (select (arr!48135 lt!651560) (index!51986 lt!651751)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!837701 () SeekEntryResult!12398)

(assert (=> d!157235 (= lt!651751 e!837701)))

(declare-fun c!138624 () Bool)

(assert (=> d!157235 (= c!138624 (bvsge (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110))))

(declare-fun lt!651750 () (_ BitVec 64))

(assert (=> d!157235 (= lt!651750 (select (arr!48135 lt!651560) lt!651565))))

(assert (=> d!157235 (validMask!0 mask!2687)))

(assert (=> d!157235 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!651565 intermediateAfterIndex!19 lt!651562 lt!651560 mask!2687) lt!651751)))

(declare-fun b!1495518 () Bool)

(declare-fun e!837702 () SeekEntryResult!12398)

(assert (=> b!1495518 (= e!837702 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665 #b00000000000000000000000000000001) (nextIndex!0 lt!651565 (bvadd #b00000000000000000000000000000001 x!665) mask!2687) intermediateAfterIndex!19 lt!651562 lt!651560 mask!2687))))

(declare-fun b!1495519 () Bool)

(assert (=> b!1495519 (= e!837702 (MissingVacant!12398 intermediateAfterIndex!19))))

(declare-fun b!1495520 () Bool)

(declare-fun e!837703 () SeekEntryResult!12398)

(assert (=> b!1495520 (= e!837703 (Found!12398 lt!651565))))

(declare-fun b!1495521 () Bool)

(assert (=> b!1495521 (= e!837701 e!837703)))

(declare-fun c!138625 () Bool)

(assert (=> b!1495521 (= c!138625 (= lt!651750 lt!651562))))

(declare-fun b!1495522 () Bool)

(assert (=> b!1495522 (= e!837701 Undefined!12398)))

(declare-fun b!1495523 () Bool)

(declare-fun c!138623 () Bool)

(assert (=> b!1495523 (= c!138623 (= lt!651750 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1495523 (= e!837703 e!837702)))

(assert (= (and d!157235 c!138624) b!1495522))

(assert (= (and d!157235 (not c!138624)) b!1495521))

(assert (= (and b!1495521 c!138625) b!1495520))

(assert (= (and b!1495521 (not c!138625)) b!1495523))

(assert (= (and b!1495523 c!138623) b!1495519))

(assert (= (and b!1495523 (not c!138623)) b!1495518))

(declare-fun m!1379015 () Bool)

(assert (=> d!157235 m!1379015))

(declare-fun m!1379017 () Bool)

(assert (=> d!157235 m!1379017))

(assert (=> d!157235 m!1378989))

(assert (=> d!157235 m!1378717))

(assert (=> b!1495518 m!1378811))

(assert (=> b!1495518 m!1378811))

(declare-fun m!1379019 () Bool)

(assert (=> b!1495518 m!1379019))

(assert (=> b!1495071 d!157235))

(assert (=> b!1495071 d!157153))

(push 1)

