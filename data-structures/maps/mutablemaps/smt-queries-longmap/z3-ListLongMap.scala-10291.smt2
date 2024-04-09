; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!121002 () Bool)

(assert start!121002)

(declare-fun b!1407023 () Bool)

(declare-fun e!796383 () Bool)

(declare-fun e!796385 () Bool)

(assert (=> b!1407023 (= e!796383 (not e!796385))))

(declare-fun res!945185 () Bool)

(assert (=> b!1407023 (=> res!945185 e!796385)))

(declare-datatypes ((SeekEntryResult!10763 0))(
  ( (MissingZero!10763 (index!45428 (_ BitVec 32))) (Found!10763 (index!45429 (_ BitVec 32))) (Intermediate!10763 (undefined!11575 Bool) (index!45430 (_ BitVec 32)) (x!127035 (_ BitVec 32))) (Undefined!10763) (MissingVacant!10763 (index!45431 (_ BitVec 32))) )
))
(declare-fun lt!619584 () SeekEntryResult!10763)

(get-info :version)

(assert (=> b!1407023 (= res!945185 (or (not ((_ is Intermediate!10763) lt!619584)) (undefined!11575 lt!619584)))))

(declare-fun e!796382 () Bool)

(assert (=> b!1407023 e!796382))

(declare-fun res!945189 () Bool)

(assert (=> b!1407023 (=> (not res!945189) (not e!796382))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96176 0))(
  ( (array!96177 (arr!46430 (Array (_ BitVec 32) (_ BitVec 64))) (size!46981 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96176)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96176 (_ BitVec 32)) Bool)

(assert (=> b!1407023 (= res!945189 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47450 0))(
  ( (Unit!47451) )
))
(declare-fun lt!619583 () Unit!47450)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96176 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47450)

(assert (=> b!1407023 (= lt!619583 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!619585 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96176 (_ BitVec 32)) SeekEntryResult!10763)

(assert (=> b!1407023 (= lt!619584 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!619585 (select (arr!46430 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1407023 (= lt!619585 (toIndex!0 (select (arr!46430 a!2901) j!112) mask!2840))))

(declare-fun b!1407024 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96176 (_ BitVec 32)) SeekEntryResult!10763)

(assert (=> b!1407024 (= e!796382 (= (seekEntryOrOpen!0 (select (arr!46430 a!2901) j!112) a!2901 mask!2840) (Found!10763 j!112)))))

(declare-fun res!945192 () Bool)

(assert (=> start!121002 (=> (not res!945192) (not e!796383))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121002 (= res!945192 (validMask!0 mask!2840))))

(assert (=> start!121002 e!796383))

(assert (=> start!121002 true))

(declare-fun array_inv!35375 (array!96176) Bool)

(assert (=> start!121002 (array_inv!35375 a!2901)))

(declare-fun b!1407025 () Bool)

(declare-fun res!945188 () Bool)

(assert (=> b!1407025 (=> (not res!945188) (not e!796383))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1407025 (= res!945188 (validKeyInArray!0 (select (arr!46430 a!2901) i!1037)))))

(declare-fun b!1407026 () Bool)

(declare-fun res!945187 () Bool)

(assert (=> b!1407026 (=> (not res!945187) (not e!796383))))

(assert (=> b!1407026 (= res!945187 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1407027 () Bool)

(declare-fun res!945184 () Bool)

(assert (=> b!1407027 (=> (not res!945184) (not e!796383))))

(assert (=> b!1407027 (= res!945184 (and (= (size!46981 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46981 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46981 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1407028 () Bool)

(assert (=> b!1407028 (= e!796385 (or (bvslt (x!127035 lt!619584) #b00000000000000000000000000000000) (bvsgt (x!127035 lt!619584) #b01111111111111111111111111111110) (and (bvsge lt!619585 #b00000000000000000000000000000000) (bvslt lt!619585 (size!46981 a!2901)))))))

(declare-fun b!1407029 () Bool)

(declare-fun res!945186 () Bool)

(assert (=> b!1407029 (=> res!945186 e!796385)))

(assert (=> b!1407029 (= res!945186 (not (= lt!619584 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46430 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46430 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96177 (store (arr!46430 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46981 a!2901)) mask!2840))))))

(declare-fun b!1407030 () Bool)

(declare-fun res!945190 () Bool)

(assert (=> b!1407030 (=> (not res!945190) (not e!796383))))

(declare-datatypes ((List!33129 0))(
  ( (Nil!33126) (Cons!33125 (h!34382 (_ BitVec 64)) (t!47830 List!33129)) )
))
(declare-fun arrayNoDuplicates!0 (array!96176 (_ BitVec 32) List!33129) Bool)

(assert (=> b!1407030 (= res!945190 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33126))))

(declare-fun b!1407031 () Bool)

(declare-fun res!945191 () Bool)

(assert (=> b!1407031 (=> (not res!945191) (not e!796383))))

(assert (=> b!1407031 (= res!945191 (validKeyInArray!0 (select (arr!46430 a!2901) j!112)))))

(assert (= (and start!121002 res!945192) b!1407027))

(assert (= (and b!1407027 res!945184) b!1407025))

(assert (= (and b!1407025 res!945188) b!1407031))

(assert (= (and b!1407031 res!945191) b!1407026))

(assert (= (and b!1407026 res!945187) b!1407030))

(assert (= (and b!1407030 res!945190) b!1407023))

(assert (= (and b!1407023 res!945189) b!1407024))

(assert (= (and b!1407023 (not res!945185)) b!1407029))

(assert (= (and b!1407029 (not res!945186)) b!1407028))

(declare-fun m!1296273 () Bool)

(assert (=> start!121002 m!1296273))

(declare-fun m!1296275 () Bool)

(assert (=> start!121002 m!1296275))

(declare-fun m!1296277 () Bool)

(assert (=> b!1407026 m!1296277))

(declare-fun m!1296279 () Bool)

(assert (=> b!1407029 m!1296279))

(declare-fun m!1296281 () Bool)

(assert (=> b!1407029 m!1296281))

(assert (=> b!1407029 m!1296281))

(declare-fun m!1296283 () Bool)

(assert (=> b!1407029 m!1296283))

(assert (=> b!1407029 m!1296283))

(assert (=> b!1407029 m!1296281))

(declare-fun m!1296285 () Bool)

(assert (=> b!1407029 m!1296285))

(declare-fun m!1296287 () Bool)

(assert (=> b!1407024 m!1296287))

(assert (=> b!1407024 m!1296287))

(declare-fun m!1296289 () Bool)

(assert (=> b!1407024 m!1296289))

(declare-fun m!1296291 () Bool)

(assert (=> b!1407030 m!1296291))

(assert (=> b!1407031 m!1296287))

(assert (=> b!1407031 m!1296287))

(declare-fun m!1296293 () Bool)

(assert (=> b!1407031 m!1296293))

(declare-fun m!1296295 () Bool)

(assert (=> b!1407025 m!1296295))

(assert (=> b!1407025 m!1296295))

(declare-fun m!1296297 () Bool)

(assert (=> b!1407025 m!1296297))

(assert (=> b!1407023 m!1296287))

(declare-fun m!1296299 () Bool)

(assert (=> b!1407023 m!1296299))

(assert (=> b!1407023 m!1296287))

(assert (=> b!1407023 m!1296287))

(declare-fun m!1296301 () Bool)

(assert (=> b!1407023 m!1296301))

(declare-fun m!1296303 () Bool)

(assert (=> b!1407023 m!1296303))

(declare-fun m!1296305 () Bool)

(assert (=> b!1407023 m!1296305))

(check-sat (not b!1407029) (not b!1407025) (not b!1407024) (not b!1407031) (not b!1407026) (not b!1407030) (not start!121002) (not b!1407023))
(check-sat)
(get-model)

(declare-fun b!1407069 () Bool)

(declare-fun e!796406 () Bool)

(declare-fun contains!9811 (List!33129 (_ BitVec 64)) Bool)

(assert (=> b!1407069 (= e!796406 (contains!9811 Nil!33126 (select (arr!46430 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1407070 () Bool)

(declare-fun e!796408 () Bool)

(declare-fun e!796409 () Bool)

(assert (=> b!1407070 (= e!796408 e!796409)))

(declare-fun res!945228 () Bool)

(assert (=> b!1407070 (=> (not res!945228) (not e!796409))))

(assert (=> b!1407070 (= res!945228 (not e!796406))))

(declare-fun res!945227 () Bool)

(assert (=> b!1407070 (=> (not res!945227) (not e!796406))))

(assert (=> b!1407070 (= res!945227 (validKeyInArray!0 (select (arr!46430 a!2901) #b00000000000000000000000000000000)))))

(declare-fun d!151445 () Bool)

(declare-fun res!945226 () Bool)

(assert (=> d!151445 (=> res!945226 e!796408)))

(assert (=> d!151445 (= res!945226 (bvsge #b00000000000000000000000000000000 (size!46981 a!2901)))))

(assert (=> d!151445 (= (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33126) e!796408)))

(declare-fun b!1407071 () Bool)

(declare-fun e!796407 () Bool)

(declare-fun call!66972 () Bool)

(assert (=> b!1407071 (= e!796407 call!66972)))

(declare-fun b!1407072 () Bool)

(assert (=> b!1407072 (= e!796407 call!66972)))

(declare-fun bm!66969 () Bool)

(declare-fun c!130388 () Bool)

(assert (=> bm!66969 (= call!66972 (arrayNoDuplicates!0 a!2901 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!130388 (Cons!33125 (select (arr!46430 a!2901) #b00000000000000000000000000000000) Nil!33126) Nil!33126)))))

(declare-fun b!1407073 () Bool)

(assert (=> b!1407073 (= e!796409 e!796407)))

(assert (=> b!1407073 (= c!130388 (validKeyInArray!0 (select (arr!46430 a!2901) #b00000000000000000000000000000000)))))

(assert (= (and d!151445 (not res!945226)) b!1407070))

(assert (= (and b!1407070 res!945227) b!1407069))

(assert (= (and b!1407070 res!945228) b!1407073))

(assert (= (and b!1407073 c!130388) b!1407071))

(assert (= (and b!1407073 (not c!130388)) b!1407072))

(assert (= (or b!1407071 b!1407072) bm!66969))

(declare-fun m!1296341 () Bool)

(assert (=> b!1407069 m!1296341))

(assert (=> b!1407069 m!1296341))

(declare-fun m!1296343 () Bool)

(assert (=> b!1407069 m!1296343))

(assert (=> b!1407070 m!1296341))

(assert (=> b!1407070 m!1296341))

(declare-fun m!1296345 () Bool)

(assert (=> b!1407070 m!1296345))

(assert (=> bm!66969 m!1296341))

(declare-fun m!1296347 () Bool)

(assert (=> bm!66969 m!1296347))

(assert (=> b!1407073 m!1296341))

(assert (=> b!1407073 m!1296341))

(assert (=> b!1407073 m!1296345))

(assert (=> b!1407030 d!151445))

(declare-fun lt!619614 () SeekEntryResult!10763)

(declare-fun e!796435 () SeekEntryResult!10763)

(declare-fun b!1407114 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96176 (_ BitVec 32)) SeekEntryResult!10763)

(assert (=> b!1407114 (= e!796435 (seekKeyOrZeroReturnVacant!0 (x!127035 lt!619614) (index!45430 lt!619614) (index!45430 lt!619614) (select (arr!46430 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1407115 () Bool)

(assert (=> b!1407115 (= e!796435 (MissingZero!10763 (index!45430 lt!619614)))))

(declare-fun b!1407116 () Bool)

(declare-fun e!796436 () SeekEntryResult!10763)

(declare-fun e!796437 () SeekEntryResult!10763)

(assert (=> b!1407116 (= e!796436 e!796437)))

(declare-fun lt!619615 () (_ BitVec 64))

(assert (=> b!1407116 (= lt!619615 (select (arr!46430 a!2901) (index!45430 lt!619614)))))

(declare-fun c!130405 () Bool)

(assert (=> b!1407116 (= c!130405 (= lt!619615 (select (arr!46430 a!2901) j!112)))))

(declare-fun d!151447 () Bool)

(declare-fun lt!619616 () SeekEntryResult!10763)

(assert (=> d!151447 (and (or ((_ is Undefined!10763) lt!619616) (not ((_ is Found!10763) lt!619616)) (and (bvsge (index!45429 lt!619616) #b00000000000000000000000000000000) (bvslt (index!45429 lt!619616) (size!46981 a!2901)))) (or ((_ is Undefined!10763) lt!619616) ((_ is Found!10763) lt!619616) (not ((_ is MissingZero!10763) lt!619616)) (and (bvsge (index!45428 lt!619616) #b00000000000000000000000000000000) (bvslt (index!45428 lt!619616) (size!46981 a!2901)))) (or ((_ is Undefined!10763) lt!619616) ((_ is Found!10763) lt!619616) ((_ is MissingZero!10763) lt!619616) (not ((_ is MissingVacant!10763) lt!619616)) (and (bvsge (index!45431 lt!619616) #b00000000000000000000000000000000) (bvslt (index!45431 lt!619616) (size!46981 a!2901)))) (or ((_ is Undefined!10763) lt!619616) (ite ((_ is Found!10763) lt!619616) (= (select (arr!46430 a!2901) (index!45429 lt!619616)) (select (arr!46430 a!2901) j!112)) (ite ((_ is MissingZero!10763) lt!619616) (= (select (arr!46430 a!2901) (index!45428 lt!619616)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!10763) lt!619616) (= (select (arr!46430 a!2901) (index!45431 lt!619616)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!151447 (= lt!619616 e!796436)))

(declare-fun c!130406 () Bool)

(assert (=> d!151447 (= c!130406 (and ((_ is Intermediate!10763) lt!619614) (undefined!11575 lt!619614)))))

(assert (=> d!151447 (= lt!619614 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46430 a!2901) j!112) mask!2840) (select (arr!46430 a!2901) j!112) a!2901 mask!2840))))

(assert (=> d!151447 (validMask!0 mask!2840)))

(assert (=> d!151447 (= (seekEntryOrOpen!0 (select (arr!46430 a!2901) j!112) a!2901 mask!2840) lt!619616)))

(declare-fun b!1407117 () Bool)

(assert (=> b!1407117 (= e!796436 Undefined!10763)))

(declare-fun b!1407118 () Bool)

(declare-fun c!130404 () Bool)

(assert (=> b!1407118 (= c!130404 (= lt!619615 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1407118 (= e!796437 e!796435)))

(declare-fun b!1407119 () Bool)

(assert (=> b!1407119 (= e!796437 (Found!10763 (index!45430 lt!619614)))))

(assert (= (and d!151447 c!130406) b!1407117))

(assert (= (and d!151447 (not c!130406)) b!1407116))

(assert (= (and b!1407116 c!130405) b!1407119))

(assert (= (and b!1407116 (not c!130405)) b!1407118))

(assert (= (and b!1407118 c!130404) b!1407115))

(assert (= (and b!1407118 (not c!130404)) b!1407114))

(assert (=> b!1407114 m!1296287))

(declare-fun m!1296355 () Bool)

(assert (=> b!1407114 m!1296355))

(declare-fun m!1296357 () Bool)

(assert (=> b!1407116 m!1296357))

(declare-fun m!1296359 () Bool)

(assert (=> d!151447 m!1296359))

(assert (=> d!151447 m!1296287))

(assert (=> d!151447 m!1296299))

(declare-fun m!1296361 () Bool)

(assert (=> d!151447 m!1296361))

(assert (=> d!151447 m!1296299))

(assert (=> d!151447 m!1296287))

(declare-fun m!1296363 () Bool)

(assert (=> d!151447 m!1296363))

(declare-fun m!1296365 () Bool)

(assert (=> d!151447 m!1296365))

(assert (=> d!151447 m!1296273))

(assert (=> b!1407024 d!151447))

(declare-fun e!796463 () SeekEntryResult!10763)

(declare-fun b!1407168 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1407168 (= e!796463 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (store (arr!46430 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) #b00000000000000000000000000000000 mask!2840) (select (store (arr!46430 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96177 (store (arr!46430 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46981 a!2901)) mask!2840))))

(declare-fun b!1407169 () Bool)

(declare-fun lt!619637 () SeekEntryResult!10763)

(assert (=> b!1407169 (and (bvsge (index!45430 lt!619637) #b00000000000000000000000000000000) (bvslt (index!45430 lt!619637) (size!46981 (array!96177 (store (arr!46430 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46981 a!2901)))))))

(declare-fun res!945259 () Bool)

(assert (=> b!1407169 (= res!945259 (= (select (arr!46430 (array!96177 (store (arr!46430 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46981 a!2901))) (index!45430 lt!619637)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!796464 () Bool)

(assert (=> b!1407169 (=> res!945259 e!796464)))

(declare-fun e!796467 () SeekEntryResult!10763)

(declare-fun b!1407170 () Bool)

(assert (=> b!1407170 (= e!796467 (Intermediate!10763 true (toIndex!0 (select (store (arr!46430 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1407171 () Bool)

(assert (=> b!1407171 (and (bvsge (index!45430 lt!619637) #b00000000000000000000000000000000) (bvslt (index!45430 lt!619637) (size!46981 (array!96177 (store (arr!46430 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46981 a!2901)))))))

(declare-fun res!945258 () Bool)

(assert (=> b!1407171 (= res!945258 (= (select (arr!46430 (array!96177 (store (arr!46430 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46981 a!2901))) (index!45430 lt!619637)) (select (store (arr!46430 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112)))))

(assert (=> b!1407171 (=> res!945258 e!796464)))

(declare-fun e!796466 () Bool)

(assert (=> b!1407171 (= e!796466 e!796464)))

(declare-fun d!151455 () Bool)

(declare-fun e!796465 () Bool)

(assert (=> d!151455 e!796465))

(declare-fun c!130422 () Bool)

(assert (=> d!151455 (= c!130422 (and ((_ is Intermediate!10763) lt!619637) (undefined!11575 lt!619637)))))

(assert (=> d!151455 (= lt!619637 e!796467)))

(declare-fun c!130423 () Bool)

(assert (=> d!151455 (= c!130423 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!619636 () (_ BitVec 64))

(assert (=> d!151455 (= lt!619636 (select (arr!46430 (array!96177 (store (arr!46430 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46981 a!2901))) (toIndex!0 (select (store (arr!46430 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840)))))

(assert (=> d!151455 (validMask!0 mask!2840)))

(assert (=> d!151455 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46430 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46430 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96177 (store (arr!46430 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46981 a!2901)) mask!2840) lt!619637)))

(declare-fun b!1407167 () Bool)

(assert (=> b!1407167 (= e!796465 e!796466)))

(declare-fun res!945257 () Bool)

(assert (=> b!1407167 (= res!945257 (and ((_ is Intermediate!10763) lt!619637) (not (undefined!11575 lt!619637)) (bvslt (x!127035 lt!619637) #b01111111111111111111111111111110) (bvsge (x!127035 lt!619637) #b00000000000000000000000000000000) (bvsge (x!127035 lt!619637) #b00000000000000000000000000000000)))))

(assert (=> b!1407167 (=> (not res!945257) (not e!796466))))

(declare-fun b!1407172 () Bool)

(assert (=> b!1407172 (and (bvsge (index!45430 lt!619637) #b00000000000000000000000000000000) (bvslt (index!45430 lt!619637) (size!46981 (array!96177 (store (arr!46430 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46981 a!2901)))))))

(assert (=> b!1407172 (= e!796464 (= (select (arr!46430 (array!96177 (store (arr!46430 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46981 a!2901))) (index!45430 lt!619637)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1407173 () Bool)

(assert (=> b!1407173 (= e!796467 e!796463)))

(declare-fun c!130424 () Bool)

(assert (=> b!1407173 (= c!130424 (or (= lt!619636 (select (store (arr!46430 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112)) (= (bvadd lt!619636 lt!619636) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1407174 () Bool)

(assert (=> b!1407174 (= e!796465 (bvsge (x!127035 lt!619637) #b01111111111111111111111111111110))))

(declare-fun b!1407175 () Bool)

(assert (=> b!1407175 (= e!796463 (Intermediate!10763 false (toIndex!0 (select (store (arr!46430 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) #b00000000000000000000000000000000))))

(assert (= (and d!151455 c!130423) b!1407170))

(assert (= (and d!151455 (not c!130423)) b!1407173))

(assert (= (and b!1407173 c!130424) b!1407175))

(assert (= (and b!1407173 (not c!130424)) b!1407168))

(assert (= (and d!151455 c!130422) b!1407174))

(assert (= (and d!151455 (not c!130422)) b!1407167))

(assert (= (and b!1407167 res!945257) b!1407171))

(assert (= (and b!1407171 (not res!945258)) b!1407169))

(assert (= (and b!1407169 (not res!945259)) b!1407172))

(declare-fun m!1296377 () Bool)

(assert (=> b!1407169 m!1296377))

(assert (=> b!1407171 m!1296377))

(assert (=> d!151455 m!1296283))

(declare-fun m!1296379 () Bool)

(assert (=> d!151455 m!1296379))

(assert (=> d!151455 m!1296273))

(assert (=> b!1407172 m!1296377))

(assert (=> b!1407168 m!1296283))

(declare-fun m!1296381 () Bool)

(assert (=> b!1407168 m!1296381))

(assert (=> b!1407168 m!1296381))

(assert (=> b!1407168 m!1296281))

(declare-fun m!1296383 () Bool)

(assert (=> b!1407168 m!1296383))

(assert (=> b!1407029 d!151455))

(declare-fun d!151469 () Bool)

(declare-fun lt!619645 () (_ BitVec 32))

(declare-fun lt!619644 () (_ BitVec 32))

(assert (=> d!151469 (= lt!619645 (bvmul (bvxor lt!619644 (bvlshr lt!619644 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!151469 (= lt!619644 ((_ extract 31 0) (bvand (bvxor (select (store (arr!46430 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (bvlshr (select (store (arr!46430 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!151469 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!945260 (let ((h!34385 ((_ extract 31 0) (bvand (bvxor (select (store (arr!46430 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (bvlshr (select (store (arr!46430 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!127041 (bvmul (bvxor h!34385 (bvlshr h!34385 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!127041 (bvlshr x!127041 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!945260 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!945260 #b00000000000000000000000000000000))))))

(assert (=> d!151469 (= (toIndex!0 (select (store (arr!46430 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (bvand (bvxor lt!619645 (bvlshr lt!619645 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1407029 d!151469))

(declare-fun b!1407203 () Bool)

(declare-fun e!796489 () Bool)

(declare-fun e!796488 () Bool)

(assert (=> b!1407203 (= e!796489 e!796488)))

(declare-fun lt!619664 () (_ BitVec 64))

(assert (=> b!1407203 (= lt!619664 (select (arr!46430 a!2901) #b00000000000000000000000000000000))))

(declare-fun lt!619662 () Unit!47450)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!96176 (_ BitVec 64) (_ BitVec 32)) Unit!47450)

(assert (=> b!1407203 (= lt!619662 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!619664 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!96176 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1407203 (arrayContainsKey!0 a!2901 lt!619664 #b00000000000000000000000000000000)))

(declare-fun lt!619663 () Unit!47450)

(assert (=> b!1407203 (= lt!619663 lt!619662)))

(declare-fun res!945276 () Bool)

(assert (=> b!1407203 (= res!945276 (= (seekEntryOrOpen!0 (select (arr!46430 a!2901) #b00000000000000000000000000000000) a!2901 mask!2840) (Found!10763 #b00000000000000000000000000000000)))))

(assert (=> b!1407203 (=> (not res!945276) (not e!796488))))

(declare-fun b!1407204 () Bool)

(declare-fun call!66980 () Bool)

(assert (=> b!1407204 (= e!796488 call!66980)))

(declare-fun b!1407205 () Bool)

(declare-fun e!796487 () Bool)

(assert (=> b!1407205 (= e!796487 e!796489)))

(declare-fun c!130432 () Bool)

(assert (=> b!1407205 (= c!130432 (validKeyInArray!0 (select (arr!46430 a!2901) #b00000000000000000000000000000000)))))

(declare-fun bm!66977 () Bool)

(assert (=> bm!66977 (= call!66980 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1407206 () Bool)

(assert (=> b!1407206 (= e!796489 call!66980)))

(declare-fun d!151473 () Bool)

(declare-fun res!945275 () Bool)

(assert (=> d!151473 (=> res!945275 e!796487)))

(assert (=> d!151473 (= res!945275 (bvsge #b00000000000000000000000000000000 (size!46981 a!2901)))))

(assert (=> d!151473 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840) e!796487)))

(assert (= (and d!151473 (not res!945275)) b!1407205))

(assert (= (and b!1407205 c!130432) b!1407203))

(assert (= (and b!1407205 (not c!130432)) b!1407206))

(assert (= (and b!1407203 res!945276) b!1407204))

(assert (= (or b!1407204 b!1407206) bm!66977))

(assert (=> b!1407203 m!1296341))

(declare-fun m!1296393 () Bool)

(assert (=> b!1407203 m!1296393))

(declare-fun m!1296395 () Bool)

(assert (=> b!1407203 m!1296395))

(assert (=> b!1407203 m!1296341))

(declare-fun m!1296397 () Bool)

(assert (=> b!1407203 m!1296397))

(assert (=> b!1407205 m!1296341))

(assert (=> b!1407205 m!1296341))

(assert (=> b!1407205 m!1296345))

(declare-fun m!1296401 () Bool)

(assert (=> bm!66977 m!1296401))

(assert (=> b!1407026 d!151473))

(declare-fun d!151477 () Bool)

(assert (=> d!151477 (= (validKeyInArray!0 (select (arr!46430 a!2901) j!112)) (and (not (= (select (arr!46430 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46430 a!2901) j!112) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1407031 d!151477))

(declare-fun d!151481 () Bool)

(assert (=> d!151481 (= (validMask!0 mask!2840) (and (or (= mask!2840 #b00000000000000000000000000000111) (= mask!2840 #b00000000000000000000000000001111) (= mask!2840 #b00000000000000000000000000011111) (= mask!2840 #b00000000000000000000000000111111) (= mask!2840 #b00000000000000000000000001111111) (= mask!2840 #b00000000000000000000000011111111) (= mask!2840 #b00000000000000000000000111111111) (= mask!2840 #b00000000000000000000001111111111) (= mask!2840 #b00000000000000000000011111111111) (= mask!2840 #b00000000000000000000111111111111) (= mask!2840 #b00000000000000000001111111111111) (= mask!2840 #b00000000000000000011111111111111) (= mask!2840 #b00000000000000000111111111111111) (= mask!2840 #b00000000000000001111111111111111) (= mask!2840 #b00000000000000011111111111111111) (= mask!2840 #b00000000000000111111111111111111) (= mask!2840 #b00000000000001111111111111111111) (= mask!2840 #b00000000000011111111111111111111) (= mask!2840 #b00000000000111111111111111111111) (= mask!2840 #b00000000001111111111111111111111) (= mask!2840 #b00000000011111111111111111111111) (= mask!2840 #b00000000111111111111111111111111) (= mask!2840 #b00000001111111111111111111111111) (= mask!2840 #b00000011111111111111111111111111) (= mask!2840 #b00000111111111111111111111111111) (= mask!2840 #b00001111111111111111111111111111) (= mask!2840 #b00011111111111111111111111111111) (= mask!2840 #b00111111111111111111111111111111)) (bvsle mask!2840 #b00111111111111111111111111111111)))))

(assert (=> start!121002 d!151481))

(declare-fun d!151493 () Bool)

(assert (=> d!151493 (= (array_inv!35375 a!2901) (bvsge (size!46981 a!2901) #b00000000000000000000000000000000))))

(assert (=> start!121002 d!151493))

(declare-fun d!151495 () Bool)

(assert (=> d!151495 (= (validKeyInArray!0 (select (arr!46430 a!2901) i!1037)) (and (not (= (select (arr!46430 a!2901) i!1037) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46430 a!2901) i!1037) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1407025 d!151495))

(declare-fun b!1407258 () Bool)

(declare-fun e!796525 () Bool)

(declare-fun e!796524 () Bool)

(assert (=> b!1407258 (= e!796525 e!796524)))

(declare-fun lt!619679 () (_ BitVec 64))

(assert (=> b!1407258 (= lt!619679 (select (arr!46430 a!2901) j!112))))

(declare-fun lt!619677 () Unit!47450)

(assert (=> b!1407258 (= lt!619677 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!619679 j!112))))

(assert (=> b!1407258 (arrayContainsKey!0 a!2901 lt!619679 #b00000000000000000000000000000000)))

(declare-fun lt!619678 () Unit!47450)

(assert (=> b!1407258 (= lt!619678 lt!619677)))

(declare-fun res!945295 () Bool)

(assert (=> b!1407258 (= res!945295 (= (seekEntryOrOpen!0 (select (arr!46430 a!2901) j!112) a!2901 mask!2840) (Found!10763 j!112)))))

(assert (=> b!1407258 (=> (not res!945295) (not e!796524))))

(declare-fun b!1407259 () Bool)

(declare-fun call!66986 () Bool)

(assert (=> b!1407259 (= e!796524 call!66986)))

(declare-fun b!1407260 () Bool)

(declare-fun e!796523 () Bool)

(assert (=> b!1407260 (= e!796523 e!796525)))

(declare-fun c!130450 () Bool)

(assert (=> b!1407260 (= c!130450 (validKeyInArray!0 (select (arr!46430 a!2901) j!112)))))

(declare-fun bm!66983 () Bool)

(assert (=> bm!66983 (= call!66986 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!112 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1407261 () Bool)

(assert (=> b!1407261 (= e!796525 call!66986)))

(declare-fun d!151497 () Bool)

(declare-fun res!945294 () Bool)

(assert (=> d!151497 (=> res!945294 e!796523)))

(assert (=> d!151497 (= res!945294 (bvsge j!112 (size!46981 a!2901)))))

(assert (=> d!151497 (= (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840) e!796523)))

(assert (= (and d!151497 (not res!945294)) b!1407260))

(assert (= (and b!1407260 c!130450) b!1407258))

(assert (= (and b!1407260 (not c!130450)) b!1407261))

(assert (= (and b!1407258 res!945295) b!1407259))

(assert (= (or b!1407259 b!1407261) bm!66983))

(assert (=> b!1407258 m!1296287))

(declare-fun m!1296443 () Bool)

(assert (=> b!1407258 m!1296443))

(declare-fun m!1296445 () Bool)

(assert (=> b!1407258 m!1296445))

(assert (=> b!1407258 m!1296287))

(assert (=> b!1407258 m!1296289))

(assert (=> b!1407260 m!1296287))

(assert (=> b!1407260 m!1296287))

(assert (=> b!1407260 m!1296293))

(declare-fun m!1296449 () Bool)

(assert (=> bm!66983 m!1296449))

(assert (=> b!1407023 d!151497))

(declare-fun d!151501 () Bool)

(assert (=> d!151501 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!619682 () Unit!47450)

(declare-fun choose!38 (array!96176 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47450)

(assert (=> d!151501 (= lt!619682 (choose!38 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> d!151501 (validMask!0 mask!2840)))

(assert (=> d!151501 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112) lt!619682)))

(declare-fun bs!41010 () Bool)

(assert (= bs!41010 d!151501))

(assert (=> bs!41010 m!1296305))

(declare-fun m!1296451 () Bool)

(assert (=> bs!41010 m!1296451))

(assert (=> bs!41010 m!1296273))

(assert (=> b!1407023 d!151501))

(declare-fun b!1407263 () Bool)

(declare-fun e!796526 () SeekEntryResult!10763)

(assert (=> b!1407263 (= e!796526 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!619585 #b00000000000000000000000000000000 mask!2840) (select (arr!46430 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1407264 () Bool)

(declare-fun lt!619684 () SeekEntryResult!10763)

(assert (=> b!1407264 (and (bvsge (index!45430 lt!619684) #b00000000000000000000000000000000) (bvslt (index!45430 lt!619684) (size!46981 a!2901)))))

(declare-fun res!945298 () Bool)

(assert (=> b!1407264 (= res!945298 (= (select (arr!46430 a!2901) (index!45430 lt!619684)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!796527 () Bool)

(assert (=> b!1407264 (=> res!945298 e!796527)))

(declare-fun b!1407265 () Bool)

(declare-fun e!796530 () SeekEntryResult!10763)

(assert (=> b!1407265 (= e!796530 (Intermediate!10763 true lt!619585 #b00000000000000000000000000000000))))

(declare-fun b!1407266 () Bool)

(assert (=> b!1407266 (and (bvsge (index!45430 lt!619684) #b00000000000000000000000000000000) (bvslt (index!45430 lt!619684) (size!46981 a!2901)))))

(declare-fun res!945297 () Bool)

(assert (=> b!1407266 (= res!945297 (= (select (arr!46430 a!2901) (index!45430 lt!619684)) (select (arr!46430 a!2901) j!112)))))

(assert (=> b!1407266 (=> res!945297 e!796527)))

(declare-fun e!796529 () Bool)

(assert (=> b!1407266 (= e!796529 e!796527)))

(declare-fun d!151503 () Bool)

(declare-fun e!796528 () Bool)

(assert (=> d!151503 e!796528))

(declare-fun c!130451 () Bool)

(assert (=> d!151503 (= c!130451 (and ((_ is Intermediate!10763) lt!619684) (undefined!11575 lt!619684)))))

(assert (=> d!151503 (= lt!619684 e!796530)))

(declare-fun c!130452 () Bool)

(assert (=> d!151503 (= c!130452 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!619683 () (_ BitVec 64))

(assert (=> d!151503 (= lt!619683 (select (arr!46430 a!2901) lt!619585))))

(assert (=> d!151503 (validMask!0 mask!2840)))

(assert (=> d!151503 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!619585 (select (arr!46430 a!2901) j!112) a!2901 mask!2840) lt!619684)))

(declare-fun b!1407262 () Bool)

(assert (=> b!1407262 (= e!796528 e!796529)))

(declare-fun res!945296 () Bool)

(assert (=> b!1407262 (= res!945296 (and ((_ is Intermediate!10763) lt!619684) (not (undefined!11575 lt!619684)) (bvslt (x!127035 lt!619684) #b01111111111111111111111111111110) (bvsge (x!127035 lt!619684) #b00000000000000000000000000000000) (bvsge (x!127035 lt!619684) #b00000000000000000000000000000000)))))

(assert (=> b!1407262 (=> (not res!945296) (not e!796529))))

(declare-fun b!1407267 () Bool)

(assert (=> b!1407267 (and (bvsge (index!45430 lt!619684) #b00000000000000000000000000000000) (bvslt (index!45430 lt!619684) (size!46981 a!2901)))))

(assert (=> b!1407267 (= e!796527 (= (select (arr!46430 a!2901) (index!45430 lt!619684)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1407268 () Bool)

(assert (=> b!1407268 (= e!796530 e!796526)))

(declare-fun c!130453 () Bool)

(assert (=> b!1407268 (= c!130453 (or (= lt!619683 (select (arr!46430 a!2901) j!112)) (= (bvadd lt!619683 lt!619683) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1407269 () Bool)

(assert (=> b!1407269 (= e!796528 (bvsge (x!127035 lt!619684) #b01111111111111111111111111111110))))

(declare-fun b!1407270 () Bool)

(assert (=> b!1407270 (= e!796526 (Intermediate!10763 false lt!619585 #b00000000000000000000000000000000))))

(assert (= (and d!151503 c!130452) b!1407265))

(assert (= (and d!151503 (not c!130452)) b!1407268))

(assert (= (and b!1407268 c!130453) b!1407270))

(assert (= (and b!1407268 (not c!130453)) b!1407263))

(assert (= (and d!151503 c!130451) b!1407269))

(assert (= (and d!151503 (not c!130451)) b!1407262))

(assert (= (and b!1407262 res!945296) b!1407266))

(assert (= (and b!1407266 (not res!945297)) b!1407264))

(assert (= (and b!1407264 (not res!945298)) b!1407267))

(declare-fun m!1296453 () Bool)

(assert (=> b!1407264 m!1296453))

(assert (=> b!1407266 m!1296453))

(declare-fun m!1296455 () Bool)

(assert (=> d!151503 m!1296455))

(assert (=> d!151503 m!1296273))

(assert (=> b!1407267 m!1296453))

(declare-fun m!1296457 () Bool)

(assert (=> b!1407263 m!1296457))

(assert (=> b!1407263 m!1296457))

(assert (=> b!1407263 m!1296287))

(declare-fun m!1296459 () Bool)

(assert (=> b!1407263 m!1296459))

(assert (=> b!1407023 d!151503))

(declare-fun d!151505 () Bool)

(declare-fun lt!619690 () (_ BitVec 32))

(declare-fun lt!619689 () (_ BitVec 32))

(assert (=> d!151505 (= lt!619690 (bvmul (bvxor lt!619689 (bvlshr lt!619689 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!151505 (= lt!619689 ((_ extract 31 0) (bvand (bvxor (select (arr!46430 a!2901) j!112) (bvlshr (select (arr!46430 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!151505 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!945260 (let ((h!34385 ((_ extract 31 0) (bvand (bvxor (select (arr!46430 a!2901) j!112) (bvlshr (select (arr!46430 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!127041 (bvmul (bvxor h!34385 (bvlshr h!34385 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!127041 (bvlshr x!127041 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!945260 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!945260 #b00000000000000000000000000000000))))))

(assert (=> d!151505 (= (toIndex!0 (select (arr!46430 a!2901) j!112) mask!2840) (bvand (bvxor lt!619690 (bvlshr lt!619690 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1407023 d!151505))

(check-sat (not b!1407069) (not b!1407073) (not b!1407263) (not d!151503) (not d!151455) (not b!1407205) (not bm!66969) (not b!1407114) (not b!1407260) (not bm!66983) (not b!1407203) (not b!1407258) (not d!151501) (not b!1407070) (not d!151447) (not b!1407168) (not bm!66977))
(check-sat)
