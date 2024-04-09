; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128570 () Bool)

(assert start!128570)

(declare-fun b!1507010 () Bool)

(declare-fun res!1027408 () Bool)

(declare-fun e!842094 () Bool)

(assert (=> b!1507010 (=> (not res!1027408) (not e!842094))))

(declare-datatypes ((array!100495 0))(
  ( (array!100496 (arr!48486 (Array (_ BitVec 32) (_ BitVec 64))) (size!49037 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100495)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1507010 (= res!1027408 (validKeyInArray!0 (select (arr!48486 a!2804) j!70)))))

(declare-fun b!1507011 () Bool)

(declare-fun res!1027411 () Bool)

(assert (=> b!1507011 (=> (not res!1027411) (not e!842094))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1507011 (= res!1027411 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49037 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49037 a!2804))))))

(declare-fun res!1027407 () Bool)

(assert (=> start!128570 (=> (not res!1027407) (not e!842094))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128570 (= res!1027407 (validMask!0 mask!2512))))

(assert (=> start!128570 e!842094))

(assert (=> start!128570 true))

(declare-fun array_inv!37431 (array!100495) Bool)

(assert (=> start!128570 (array_inv!37431 a!2804)))

(declare-fun b!1507012 () Bool)

(declare-fun e!842095 () Bool)

(assert (=> b!1507012 (= e!842095 (and (bvsge mask!2512 #b00000000000000000000000000000000) (bvsgt mask!2512 #b00111111111111111111111111111111)))))

(declare-fun b!1507013 () Bool)

(assert (=> b!1507013 (= e!842094 e!842095)))

(declare-fun res!1027406 () Bool)

(assert (=> b!1507013 (=> (not res!1027406) (not e!842095))))

(declare-datatypes ((SeekEntryResult!12678 0))(
  ( (MissingZero!12678 (index!53106 (_ BitVec 32))) (Found!12678 (index!53107 (_ BitVec 32))) (Intermediate!12678 (undefined!13490 Bool) (index!53108 (_ BitVec 32)) (x!134865 (_ BitVec 32))) (Undefined!12678) (MissingVacant!12678 (index!53109 (_ BitVec 32))) )
))
(declare-fun lt!654259 () SeekEntryResult!12678)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100495 (_ BitVec 32)) SeekEntryResult!12678)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1507013 (= res!1027406 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48486 a!2804) j!70) mask!2512) (select (arr!48486 a!2804) j!70) a!2804 mask!2512) lt!654259))))

(assert (=> b!1507013 (= lt!654259 (Intermediate!12678 false resIndex!21 resX!21))))

(declare-fun b!1507014 () Bool)

(declare-fun res!1027412 () Bool)

(assert (=> b!1507014 (=> (not res!1027412) (not e!842095))))

(assert (=> b!1507014 (= res!1027412 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48486 a!2804) j!70) a!2804 mask!2512) lt!654259))))

(declare-fun b!1507015 () Bool)

(declare-fun res!1027410 () Bool)

(assert (=> b!1507015 (=> (not res!1027410) (not e!842094))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100495 (_ BitVec 32)) Bool)

(assert (=> b!1507015 (= res!1027410 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1507016 () Bool)

(declare-fun res!1027413 () Bool)

(assert (=> b!1507016 (=> (not res!1027413) (not e!842094))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1507016 (= res!1027413 (validKeyInArray!0 (select (arr!48486 a!2804) i!961)))))

(declare-fun b!1507017 () Bool)

(declare-fun res!1027405 () Bool)

(assert (=> b!1507017 (=> (not res!1027405) (not e!842094))))

(assert (=> b!1507017 (= res!1027405 (and (= (size!49037 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49037 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49037 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1507018 () Bool)

(declare-fun res!1027409 () Bool)

(assert (=> b!1507018 (=> (not res!1027409) (not e!842094))))

(declare-datatypes ((List!35149 0))(
  ( (Nil!35146) (Cons!35145 (h!36546 (_ BitVec 64)) (t!49850 List!35149)) )
))
(declare-fun arrayNoDuplicates!0 (array!100495 (_ BitVec 32) List!35149) Bool)

(assert (=> b!1507018 (= res!1027409 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35146))))

(assert (= (and start!128570 res!1027407) b!1507017))

(assert (= (and b!1507017 res!1027405) b!1507016))

(assert (= (and b!1507016 res!1027413) b!1507010))

(assert (= (and b!1507010 res!1027408) b!1507015))

(assert (= (and b!1507015 res!1027410) b!1507018))

(assert (= (and b!1507018 res!1027409) b!1507011))

(assert (= (and b!1507011 res!1027411) b!1507013))

(assert (= (and b!1507013 res!1027406) b!1507014))

(assert (= (and b!1507014 res!1027412) b!1507012))

(declare-fun m!1389935 () Bool)

(assert (=> b!1507014 m!1389935))

(assert (=> b!1507014 m!1389935))

(declare-fun m!1389937 () Bool)

(assert (=> b!1507014 m!1389937))

(assert (=> b!1507013 m!1389935))

(assert (=> b!1507013 m!1389935))

(declare-fun m!1389939 () Bool)

(assert (=> b!1507013 m!1389939))

(assert (=> b!1507013 m!1389939))

(assert (=> b!1507013 m!1389935))

(declare-fun m!1389941 () Bool)

(assert (=> b!1507013 m!1389941))

(declare-fun m!1389943 () Bool)

(assert (=> b!1507018 m!1389943))

(declare-fun m!1389945 () Bool)

(assert (=> b!1507016 m!1389945))

(assert (=> b!1507016 m!1389945))

(declare-fun m!1389947 () Bool)

(assert (=> b!1507016 m!1389947))

(declare-fun m!1389949 () Bool)

(assert (=> start!128570 m!1389949))

(declare-fun m!1389951 () Bool)

(assert (=> start!128570 m!1389951))

(declare-fun m!1389953 () Bool)

(assert (=> b!1507015 m!1389953))

(assert (=> b!1507010 m!1389935))

(assert (=> b!1507010 m!1389935))

(declare-fun m!1389955 () Bool)

(assert (=> b!1507010 m!1389955))

(push 1)

(assert (not b!1507010))

(assert (not b!1507018))

(assert (not b!1507015))

(assert (not b!1507014))

(assert (not b!1507013))

(assert (not b!1507016))

(assert (not start!128570))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1507110 () Bool)

(declare-fun e!842153 () SeekEntryResult!12678)

(assert (=> b!1507110 (= e!842153 (Intermediate!12678 true index!487 x!534))))

(declare-fun b!1507111 () Bool)

(declare-fun lt!654285 () SeekEntryResult!12678)

(assert (=> b!1507111 (and (bvsge (index!53108 lt!654285) #b00000000000000000000000000000000) (bvslt (index!53108 lt!654285) (size!49037 a!2804)))))

(declare-fun e!842150 () Bool)

(assert (=> b!1507111 (= e!842150 (= (select (arr!48486 a!2804) (index!53108 lt!654285)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1507112 () Bool)

(declare-fun e!842154 () Bool)

(declare-fun e!842152 () Bool)

(assert (=> b!1507112 (= e!842154 e!842152)))

(declare-fun res!1027448 () Bool)

(assert (=> b!1507112 (= res!1027448 (and (is-Intermediate!12678 lt!654285) (not (undefined!13490 lt!654285)) (bvslt (x!134865 lt!654285) #b01111111111111111111111111111110) (bvsge (x!134865 lt!654285) #b00000000000000000000000000000000) (bvsge (x!134865 lt!654285) x!534)))))

(assert (=> b!1507112 (=> (not res!1027448) (not e!842152))))

(declare-fun b!1507113 () Bool)

(declare-fun e!842151 () SeekEntryResult!12678)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1507113 (= e!842151 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!534 #b00000000000000000000000000000001) (nextIndex!0 index!487 x!534 mask!2512) (select (arr!48486 a!2804) j!70) a!2804 mask!2512))))

(declare-fun d!158223 () Bool)

(assert (=> d!158223 e!842154))

(declare-fun c!139372 () Bool)

(assert (=> d!158223 (= c!139372 (and (is-Intermediate!12678 lt!654285) (undefined!13490 lt!654285)))))

(assert (=> d!158223 (= lt!654285 e!842153)))

(declare-fun c!139370 () Bool)

(assert (=> d!158223 (= c!139370 (bvsge x!534 #b01111111111111111111111111111110))))

(declare-fun lt!654284 () (_ BitVec 64))

(assert (=> d!158223 (= lt!654284 (select (arr!48486 a!2804) index!487))))

(assert (=> d!158223 (validMask!0 mask!2512)))

(assert (=> d!158223 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48486 a!2804) j!70) a!2804 mask!2512) lt!654285)))

(declare-fun b!1507114 () Bool)

(assert (=> b!1507114 (= e!842154 (bvsge (x!134865 lt!654285) #b01111111111111111111111111111110))))

(declare-fun b!1507115 () Bool)

(assert (=> b!1507115 (= e!842153 e!842151)))

(declare-fun c!139371 () Bool)

(assert (=> b!1507115 (= c!139371 (or (= lt!654284 (select (arr!48486 a!2804) j!70)) (= (bvadd lt!654284 lt!654284) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1507116 () Bool)

(assert (=> b!1507116 (= e!842151 (Intermediate!12678 false index!487 x!534))))

(declare-fun b!1507117 () Bool)

(assert (=> b!1507117 (and (bvsge (index!53108 lt!654285) #b00000000000000000000000000000000) (bvslt (index!53108 lt!654285) (size!49037 a!2804)))))

(declare-fun res!1027449 () Bool)

(assert (=> b!1507117 (= res!1027449 (= (select (arr!48486 a!2804) (index!53108 lt!654285)) (select (arr!48486 a!2804) j!70)))))

(assert (=> b!1507117 (=> res!1027449 e!842150)))

(assert (=> b!1507117 (= e!842152 e!842150)))

(declare-fun b!1507118 () Bool)

(assert (=> b!1507118 (and (bvsge (index!53108 lt!654285) #b00000000000000000000000000000000) (bvslt (index!53108 lt!654285) (size!49037 a!2804)))))

(declare-fun res!1027450 () Bool)

(assert (=> b!1507118 (= res!1027450 (= (select (arr!48486 a!2804) (index!53108 lt!654285)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1507118 (=> res!1027450 e!842150)))

(assert (= (and d!158223 c!139370) b!1507110))

(assert (= (and d!158223 (not c!139370)) b!1507115))

(assert (= (and b!1507115 c!139371) b!1507116))

(assert (= (and b!1507115 (not c!139371)) b!1507113))

(assert (= (and d!158223 c!139372) b!1507114))

(assert (= (and d!158223 (not c!139372)) b!1507112))

(assert (= (and b!1507112 res!1027448) b!1507117))

(assert (= (and b!1507117 (not res!1027449)) b!1507118))

(assert (= (and b!1507118 (not res!1027450)) b!1507111))

(declare-fun m!1389981 () Bool)

(assert (=> d!158223 m!1389981))

(assert (=> d!158223 m!1389949))

(declare-fun m!1389983 () Bool)

(assert (=> b!1507117 m!1389983))

(assert (=> b!1507118 m!1389983))

(assert (=> b!1507111 m!1389983))

(declare-fun m!1389985 () Bool)

(assert (=> b!1507113 m!1389985))

(assert (=> b!1507113 m!1389985))

(assert (=> b!1507113 m!1389935))

(declare-fun m!1389987 () Bool)

(assert (=> b!1507113 m!1389987))

(assert (=> b!1507014 d!158223))

(declare-fun d!158237 () Bool)

(declare-fun res!1027466 () Bool)

(declare-fun e!842176 () Bool)

(assert (=> d!158237 (=> res!1027466 e!842176)))

(assert (=> d!158237 (= res!1027466 (bvsge #b00000000000000000000000000000000 (size!49037 a!2804)))))

(assert (=> d!158237 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512) e!842176)))

(declare-fun b!1507149 () Bool)

(declare-fun e!842178 () Bool)

(declare-fun call!68246 () Bool)

(assert (=> b!1507149 (= e!842178 call!68246)))

(declare-fun b!1507150 () Bool)

(declare-fun e!842177 () Bool)

(assert (=> b!1507150 (= e!842177 call!68246)))

(declare-fun bm!68243 () Bool)

(assert (=> bm!68243 (= call!68246 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2804 mask!2512))))

(declare-fun b!1507151 () Bool)

(assert (=> b!1507151 (= e!842176 e!842178)))

(declare-fun c!139381 () Bool)

(assert (=> b!1507151 (= c!139381 (validKeyInArray!0 (select (arr!48486 a!2804) #b00000000000000000000000000000000)))))

(declare-fun b!1507152 () Bool)

(assert (=> b!1507152 (= e!842178 e!842177)))

(declare-fun lt!654307 () (_ BitVec 64))

(assert (=> b!1507152 (= lt!654307 (select (arr!48486 a!2804) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!50274 0))(
  ( (Unit!50275) )
))
(declare-fun lt!654306 () Unit!50274)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!100495 (_ BitVec 64) (_ BitVec 32)) Unit!50274)

(assert (=> b!1507152 (= lt!654306 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2804 lt!654307 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!100495 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1507152 (arrayContainsKey!0 a!2804 lt!654307 #b00000000000000000000000000000000)))

(declare-fun lt!654308 () Unit!50274)

(assert (=> b!1507152 (= lt!654308 lt!654306)))

(declare-fun res!1027467 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100495 (_ BitVec 32)) SeekEntryResult!12678)

(assert (=> b!1507152 (= res!1027467 (= (seekEntryOrOpen!0 (select (arr!48486 a!2804) #b00000000000000000000000000000000) a!2804 mask!2512) (Found!12678 #b00000000000000000000000000000000)))))

(assert (=> b!1507152 (=> (not res!1027467) (not e!842177))))

(assert (= (and d!158237 (not res!1027466)) b!1507151))

(assert (= (and b!1507151 c!139381) b!1507152))

(assert (= (and b!1507151 (not c!139381)) b!1507149))

(assert (= (and b!1507152 res!1027467) b!1507150))

(assert (= (or b!1507150 b!1507149) bm!68243))

(declare-fun m!1390005 () Bool)

(assert (=> bm!68243 m!1390005))

(declare-fun m!1390007 () Bool)

(assert (=> b!1507151 m!1390007))

(assert (=> b!1507151 m!1390007))

(declare-fun m!1390009 () Bool)

(assert (=> b!1507151 m!1390009))

(assert (=> b!1507152 m!1390007))

(declare-fun m!1390011 () Bool)

(assert (=> b!1507152 m!1390011))

(declare-fun m!1390013 () Bool)

(assert (=> b!1507152 m!1390013))

(assert (=> b!1507152 m!1390007))

(declare-fun m!1390015 () Bool)

(assert (=> b!1507152 m!1390015))

(assert (=> b!1507015 d!158237))

(declare-fun d!158245 () Bool)

(declare-fun res!1027484 () Bool)

(declare-fun e!842199 () Bool)

(assert (=> d!158245 (=> res!1027484 e!842199)))

(assert (=> d!158245 (= res!1027484 (bvsge #b00000000000000000000000000000000 (size!49037 a!2804)))))

(assert (=> d!158245 (= (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35146) e!842199)))

(declare-fun b!1507179 () Bool)

(declare-fun e!842202 () Bool)

(assert (=> b!1507179 (= e!842199 e!842202)))

(declare-fun res!1027482 () Bool)

(assert (=> b!1507179 (=> (not res!1027482) (not e!842202))))

(declare-fun e!842201 () Bool)

(assert (=> b!1507179 (= res!1027482 (not e!842201))))

(declare-fun res!1027483 () Bool)

(assert (=> b!1507179 (=> (not res!1027483) (not e!842201))))

(assert (=> b!1507179 (= res!1027483 (validKeyInArray!0 (select (arr!48486 a!2804) #b00000000000000000000000000000000)))))

(declare-fun b!1507180 () Bool)

(declare-fun e!842200 () Bool)

(assert (=> b!1507180 (= e!842202 e!842200)))

(declare-fun c!139388 () Bool)

(assert (=> b!1507180 (= c!139388 (validKeyInArray!0 (select (arr!48486 a!2804) #b00000000000000000000000000000000)))))

(declare-fun bm!68250 () Bool)

(declare-fun call!68253 () Bool)

(assert (=> bm!68250 (= call!68253 (arrayNoDuplicates!0 a!2804 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!139388 (Cons!35145 (select (arr!48486 a!2804) #b00000000000000000000000000000000) Nil!35146) Nil!35146)))))

(declare-fun b!1507181 () Bool)

(declare-fun contains!9978 (List!35149 (_ BitVec 64)) Bool)

(assert (=> b!1507181 (= e!842201 (contains!9978 Nil!35146 (select (arr!48486 a!2804) #b00000000000000000000000000000000)))))

(declare-fun b!1507182 () Bool)

(assert (=> b!1507182 (= e!842200 call!68253)))

(declare-fun b!1507183 () Bool)

(assert (=> b!1507183 (= e!842200 call!68253)))

(assert (= (and d!158245 (not res!1027484)) b!1507179))

(assert (= (and b!1507179 res!1027483) b!1507181))

(assert (= (and b!1507179 res!1027482) b!1507180))

(assert (= (and b!1507180 c!139388) b!1507183))

(assert (= (and b!1507180 (not c!139388)) b!1507182))

(assert (= (or b!1507183 b!1507182) bm!68250))

(assert (=> b!1507179 m!1390007))

(assert (=> b!1507179 m!1390007))

(assert (=> b!1507179 m!1390009))

(assert (=> b!1507180 m!1390007))

(assert (=> b!1507180 m!1390007))

(assert (=> b!1507180 m!1390009))

(assert (=> bm!68250 m!1390007))

(declare-fun m!1390037 () Bool)

(assert (=> bm!68250 m!1390037))

(assert (=> b!1507181 m!1390007))

(assert (=> b!1507181 m!1390007))

(declare-fun m!1390039 () Bool)

(assert (=> b!1507181 m!1390039))

(assert (=> b!1507018 d!158245))

(declare-fun e!842206 () SeekEntryResult!12678)

(declare-fun b!1507184 () Bool)

(assert (=> b!1507184 (= e!842206 (Intermediate!12678 true (toIndex!0 (select (arr!48486 a!2804) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1507185 () Bool)

(declare-fun lt!654322 () SeekEntryResult!12678)

(assert (=> b!1507185 (and (bvsge (index!53108 lt!654322) #b00000000000000000000000000000000) (bvslt (index!53108 lt!654322) (size!49037 a!2804)))))

(declare-fun e!842203 () Bool)

(assert (=> b!1507185 (= e!842203 (= (select (arr!48486 a!2804) (index!53108 lt!654322)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1507186 () Bool)

(declare-fun e!842207 () Bool)

(declare-fun e!842205 () Bool)

(assert (=> b!1507186 (= e!842207 e!842205)))

(declare-fun res!1027485 () Bool)

(assert (=> b!1507186 (= res!1027485 (and (is-Intermediate!12678 lt!654322) (not (undefined!13490 lt!654322)) (bvslt (x!134865 lt!654322) #b01111111111111111111111111111110) (bvsge (x!134865 lt!654322) #b00000000000000000000000000000000) (bvsge (x!134865 lt!654322) #b00000000000000000000000000000000)))))

(assert (=> b!1507186 (=> (not res!1027485) (not e!842205))))

(declare-fun b!1507187 () Bool)

(declare-fun e!842204 () SeekEntryResult!12678)

(assert (=> b!1507187 (= e!842204 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!48486 a!2804) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512) (select (arr!48486 a!2804) j!70) a!2804 mask!2512))))

(declare-fun d!158251 () Bool)

(assert (=> d!158251 e!842207))

