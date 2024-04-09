; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119560 () Bool)

(assert start!119560)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95211 0))(
  ( (array!95212 (arr!45961 (Array (_ BitVec 32) (_ BitVec 64))) (size!46512 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95211)

(declare-fun b!1392479 () Bool)

(declare-fun e!788534 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10300 0))(
  ( (MissingZero!10300 (index!43570 (_ BitVec 32))) (Found!10300 (index!43571 (_ BitVec 32))) (Intermediate!10300 (undefined!11112 Bool) (index!43572 (_ BitVec 32)) (x!125261 (_ BitVec 32))) (Undefined!10300) (MissingVacant!10300 (index!43573 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95211 (_ BitVec 32)) SeekEntryResult!10300)

(assert (=> b!1392479 (= e!788534 (= (seekEntryOrOpen!0 (select (arr!45961 a!2901) j!112) a!2901 mask!2840) (Found!10300 j!112)))))

(declare-fun b!1392480 () Bool)

(declare-fun res!932167 () Bool)

(declare-fun e!788537 () Bool)

(assert (=> b!1392480 (=> res!932167 e!788537)))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun lt!611587 () SeekEntryResult!10300)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95211 (_ BitVec 32)) SeekEntryResult!10300)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1392480 (= res!932167 (not (= lt!611587 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!45961 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!45961 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95212 (store (arr!45961 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46512 a!2901)) mask!2840))))))

(declare-fun b!1392481 () Bool)

(declare-fun res!932169 () Bool)

(declare-fun e!788536 () Bool)

(assert (=> b!1392481 (=> (not res!932169) (not e!788536))))

(assert (=> b!1392481 (= res!932169 (and (= (size!46512 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46512 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46512 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1392482 () Bool)

(assert (=> b!1392482 (= e!788537 (or (bvslt mask!2840 #b00000000000000000000000000000000) (bvsle mask!2840 #b00111111111111111111111111111111)))))

(declare-fun b!1392483 () Bool)

(declare-fun res!932165 () Bool)

(assert (=> b!1392483 (=> (not res!932165) (not e!788536))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1392483 (= res!932165 (validKeyInArray!0 (select (arr!45961 a!2901) j!112)))))

(declare-fun b!1392484 () Bool)

(declare-fun res!932168 () Bool)

(assert (=> b!1392484 (=> (not res!932168) (not e!788536))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95211 (_ BitVec 32)) Bool)

(assert (=> b!1392484 (= res!932168 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1392485 () Bool)

(assert (=> b!1392485 (= e!788536 (not e!788537))))

(declare-fun res!932161 () Bool)

(assert (=> b!1392485 (=> res!932161 e!788537)))

(assert (=> b!1392485 (= res!932161 (or (not (is-Intermediate!10300 lt!611587)) (undefined!11112 lt!611587)))))

(assert (=> b!1392485 e!788534))

(declare-fun res!932163 () Bool)

(assert (=> b!1392485 (=> (not res!932163) (not e!788534))))

(assert (=> b!1392485 (= res!932163 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46554 0))(
  ( (Unit!46555) )
))
(declare-fun lt!611586 () Unit!46554)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95211 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46554)

(assert (=> b!1392485 (= lt!611586 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1392485 (= lt!611587 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45961 a!2901) j!112) mask!2840) (select (arr!45961 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1392486 () Bool)

(declare-fun res!932166 () Bool)

(assert (=> b!1392486 (=> (not res!932166) (not e!788536))))

(declare-datatypes ((List!32660 0))(
  ( (Nil!32657) (Cons!32656 (h!33886 (_ BitVec 64)) (t!47361 List!32660)) )
))
(declare-fun arrayNoDuplicates!0 (array!95211 (_ BitVec 32) List!32660) Bool)

(assert (=> b!1392486 (= res!932166 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32657))))

(declare-fun res!932164 () Bool)

(assert (=> start!119560 (=> (not res!932164) (not e!788536))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119560 (= res!932164 (validMask!0 mask!2840))))

(assert (=> start!119560 e!788536))

(assert (=> start!119560 true))

(declare-fun array_inv!34906 (array!95211) Bool)

(assert (=> start!119560 (array_inv!34906 a!2901)))

(declare-fun b!1392487 () Bool)

(declare-fun res!932162 () Bool)

(assert (=> b!1392487 (=> (not res!932162) (not e!788536))))

(assert (=> b!1392487 (= res!932162 (validKeyInArray!0 (select (arr!45961 a!2901) i!1037)))))

(assert (= (and start!119560 res!932164) b!1392481))

(assert (= (and b!1392481 res!932169) b!1392487))

(assert (= (and b!1392487 res!932162) b!1392483))

(assert (= (and b!1392483 res!932165) b!1392484))

(assert (= (and b!1392484 res!932168) b!1392486))

(assert (= (and b!1392486 res!932166) b!1392485))

(assert (= (and b!1392485 res!932163) b!1392479))

(assert (= (and b!1392485 (not res!932161)) b!1392480))

(assert (= (and b!1392480 (not res!932167)) b!1392482))

(declare-fun m!1278305 () Bool)

(assert (=> b!1392484 m!1278305))

(declare-fun m!1278307 () Bool)

(assert (=> b!1392483 m!1278307))

(assert (=> b!1392483 m!1278307))

(declare-fun m!1278309 () Bool)

(assert (=> b!1392483 m!1278309))

(assert (=> b!1392479 m!1278307))

(assert (=> b!1392479 m!1278307))

(declare-fun m!1278311 () Bool)

(assert (=> b!1392479 m!1278311))

(declare-fun m!1278313 () Bool)

(assert (=> start!119560 m!1278313))

(declare-fun m!1278315 () Bool)

(assert (=> start!119560 m!1278315))

(assert (=> b!1392485 m!1278307))

(declare-fun m!1278317 () Bool)

(assert (=> b!1392485 m!1278317))

(assert (=> b!1392485 m!1278307))

(declare-fun m!1278319 () Bool)

(assert (=> b!1392485 m!1278319))

(assert (=> b!1392485 m!1278317))

(assert (=> b!1392485 m!1278307))

(declare-fun m!1278321 () Bool)

(assert (=> b!1392485 m!1278321))

(declare-fun m!1278323 () Bool)

(assert (=> b!1392485 m!1278323))

(declare-fun m!1278325 () Bool)

(assert (=> b!1392486 m!1278325))

(declare-fun m!1278327 () Bool)

(assert (=> b!1392480 m!1278327))

(declare-fun m!1278329 () Bool)

(assert (=> b!1392480 m!1278329))

(assert (=> b!1392480 m!1278329))

(declare-fun m!1278331 () Bool)

(assert (=> b!1392480 m!1278331))

(assert (=> b!1392480 m!1278331))

(assert (=> b!1392480 m!1278329))

(declare-fun m!1278333 () Bool)

(assert (=> b!1392480 m!1278333))

(declare-fun m!1278335 () Bool)

(assert (=> b!1392487 m!1278335))

(assert (=> b!1392487 m!1278335))

(declare-fun m!1278337 () Bool)

(assert (=> b!1392487 m!1278337))

(push 1)

(assert (not start!119560))

(assert (not b!1392485))

(assert (not b!1392487))

(assert (not b!1392484))

(assert (not b!1392483))

(assert (not b!1392480))

(assert (not b!1392479))

(assert (not b!1392486))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!150439 () Bool)

(assert (=> d!150439 (= (validKeyInArray!0 (select (arr!45961 a!2901) i!1037)) (and (not (= (select (arr!45961 a!2901) i!1037) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45961 a!2901) i!1037) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1392487 d!150439))

(declare-fun b!1392567 () Bool)

(declare-fun e!788585 () Bool)

(declare-fun call!66786 () Bool)

(assert (=> b!1392567 (= e!788585 call!66786)))

(declare-fun b!1392568 () Bool)

(declare-fun e!788584 () Bool)

(assert (=> b!1392568 (= e!788584 e!788585)))

(declare-fun c!129617 () Bool)

(assert (=> b!1392568 (= c!129617 (validKeyInArray!0 (select (arr!45961 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1392569 () Bool)

(declare-fun e!788583 () Bool)

(declare-fun contains!9785 (List!32660 (_ BitVec 64)) Bool)

(assert (=> b!1392569 (= e!788583 (contains!9785 Nil!32657 (select (arr!45961 a!2901) #b00000000000000000000000000000000)))))

(declare-fun bm!66783 () Bool)

(assert (=> bm!66783 (= call!66786 (arrayNoDuplicates!0 a!2901 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!129617 (Cons!32656 (select (arr!45961 a!2901) #b00000000000000000000000000000000) Nil!32657) Nil!32657)))))

(declare-fun d!150441 () Bool)

(declare-fun res!932241 () Bool)

(declare-fun e!788582 () Bool)

(assert (=> d!150441 (=> res!932241 e!788582)))

(assert (=> d!150441 (= res!932241 (bvsge #b00000000000000000000000000000000 (size!46512 a!2901)))))

(assert (=> d!150441 (= (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32657) e!788582)))

(declare-fun b!1392570 () Bool)

(assert (=> b!1392570 (= e!788582 e!788584)))

(declare-fun res!932240 () Bool)

(assert (=> b!1392570 (=> (not res!932240) (not e!788584))))

(assert (=> b!1392570 (= res!932240 (not e!788583))))

(declare-fun res!932239 () Bool)

(assert (=> b!1392570 (=> (not res!932239) (not e!788583))))

(assert (=> b!1392570 (= res!932239 (validKeyInArray!0 (select (arr!45961 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1392571 () Bool)

(assert (=> b!1392571 (= e!788585 call!66786)))

(assert (= (and d!150441 (not res!932241)) b!1392570))

(assert (= (and b!1392570 res!932239) b!1392569))

(assert (= (and b!1392570 res!932240) b!1392568))

(assert (= (and b!1392568 c!129617) b!1392571))

(assert (= (and b!1392568 (not c!129617)) b!1392567))

(assert (= (or b!1392571 b!1392567) bm!66783))

(declare-fun m!1278415 () Bool)

(assert (=> b!1392568 m!1278415))

(assert (=> b!1392568 m!1278415))

(declare-fun m!1278417 () Bool)

(assert (=> b!1392568 m!1278417))

(assert (=> b!1392569 m!1278415))

(assert (=> b!1392569 m!1278415))

(declare-fun m!1278419 () Bool)

(assert (=> b!1392569 m!1278419))

(assert (=> bm!66783 m!1278415))

(declare-fun m!1278421 () Bool)

(assert (=> bm!66783 m!1278421))

(assert (=> b!1392570 m!1278415))

(assert (=> b!1392570 m!1278415))

(assert (=> b!1392570 m!1278417))

(assert (=> b!1392486 d!150441))

(declare-fun b!1392628 () Bool)

(declare-fun lt!611629 () SeekEntryResult!10300)

(assert (=> b!1392628 (and (bvsge (index!43572 lt!611629) #b00000000000000000000000000000000) (bvslt (index!43572 lt!611629) (size!46512 (array!95212 (store (arr!45961 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46512 a!2901)))))))

(declare-fun res!932258 () Bool)

(assert (=> b!1392628 (= res!932258 (= (select (arr!45961 (array!95212 (store (arr!45961 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46512 a!2901))) (index!43572 lt!611629)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!788622 () Bool)

(assert (=> b!1392628 (=> res!932258 e!788622)))

(declare-fun b!1392629 () Bool)

(declare-fun e!788624 () Bool)

(assert (=> b!1392629 (= e!788624 (bvsge (x!125261 lt!611629) #b01111111111111111111111111111110))))

(declare-fun b!1392630 () Bool)

(assert (=> b!1392630 (and (bvsge (index!43572 lt!611629) #b00000000000000000000000000000000) (bvslt (index!43572 lt!611629) (size!46512 (array!95212 (store (arr!45961 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46512 a!2901)))))))

(assert (=> b!1392630 (= e!788622 (= (select (arr!45961 (array!95212 (store (arr!45961 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46512 a!2901))) (index!43572 lt!611629)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!150445 () Bool)

(assert (=> d!150445 e!788624))

(declare-fun c!129639 () Bool)

(assert (=> d!150445 (= c!129639 (and (is-Intermediate!10300 lt!611629) (undefined!11112 lt!611629)))))

(declare-fun e!788623 () SeekEntryResult!10300)

(assert (=> d!150445 (= lt!611629 e!788623)))

(declare-fun c!129638 () Bool)

(assert (=> d!150445 (= c!129638 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!611628 () (_ BitVec 64))

(assert (=> d!150445 (= lt!611628 (select (arr!45961 (array!95212 (store (arr!45961 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46512 a!2901))) (toIndex!0 (select (store (arr!45961 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840)))))

(assert (=> d!150445 (validMask!0 mask!2840)))

(assert (=> d!150445 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!45961 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!45961 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95212 (store (arr!45961 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46512 a!2901)) mask!2840) lt!611629)))

(declare-fun b!1392631 () Bool)

(declare-fun e!788621 () SeekEntryResult!10300)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1392631 (= e!788621 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (store (arr!45961 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) #b00000000000000000000000000000000 mask!2840) (select (store (arr!45961 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95212 (store (arr!45961 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46512 a!2901)) mask!2840))))

(declare-fun b!1392632 () Bool)

(declare-fun e!788620 () Bool)

(assert (=> b!1392632 (= e!788624 e!788620)))

(declare-fun res!932260 () Bool)

(assert (=> b!1392632 (= res!932260 (and (is-Intermediate!10300 lt!611629) (not (undefined!11112 lt!611629)) (bvslt (x!125261 lt!611629) #b01111111111111111111111111111110) (bvsge (x!125261 lt!611629) #b00000000000000000000000000000000) (bvsge (x!125261 lt!611629) #b00000000000000000000000000000000)))))

(assert (=> b!1392632 (=> (not res!932260) (not e!788620))))

(declare-fun b!1392633 () Bool)

(assert (=> b!1392633 (= e!788621 (Intermediate!10300 false (toIndex!0 (select (store (arr!45961 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1392634 () Bool)

(assert (=> b!1392634 (and (bvsge (index!43572 lt!611629) #b00000000000000000000000000000000) (bvslt (index!43572 lt!611629) (size!46512 (array!95212 (store (arr!45961 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46512 a!2901)))))))

(declare-fun res!932259 () Bool)

(assert (=> b!1392634 (= res!932259 (= (select (arr!45961 (array!95212 (store (arr!45961 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46512 a!2901))) (index!43572 lt!611629)) (select (store (arr!45961 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112)))))

(assert (=> b!1392634 (=> res!932259 e!788622)))

(assert (=> b!1392634 (= e!788620 e!788622)))

(declare-fun b!1392635 () Bool)

(assert (=> b!1392635 (= e!788623 (Intermediate!10300 true (toIndex!0 (select (store (arr!45961 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1392636 () Bool)

(assert (=> b!1392636 (= e!788623 e!788621)))

(declare-fun c!129640 () Bool)

(assert (=> b!1392636 (= c!129640 (or (= lt!611628 (select (store (arr!45961 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112)) (= (bvadd lt!611628 lt!611628) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!150445 c!129638) b!1392635))

(assert (= (and d!150445 (not c!129638)) b!1392636))

(assert (= (and b!1392636 c!129640) b!1392633))

(assert (= (and b!1392636 (not c!129640)) b!1392631))

(assert (= (and d!150445 c!129639) b!1392629))

(assert (= (and d!150445 (not c!129639)) b!1392632))

(assert (= (and b!1392632 res!932260) b!1392634))

(assert (= (and b!1392634 (not res!932259)) b!1392628))

(assert (= (and b!1392628 (not res!932258)) b!1392630))

(assert (=> b!1392631 m!1278331))

(declare-fun m!1278445 () Bool)

(assert (=> b!1392631 m!1278445))

(assert (=> b!1392631 m!1278445))

(assert (=> b!1392631 m!1278329))

(declare-fun m!1278453 () Bool)

(assert (=> b!1392631 m!1278453))

(declare-fun m!1278455 () Bool)

(assert (=> b!1392630 m!1278455))

(assert (=> d!150445 m!1278331))

(declare-fun m!1278457 () Bool)

(assert (=> d!150445 m!1278457))

(assert (=> d!150445 m!1278313))

(assert (=> b!1392628 m!1278455))

(assert (=> b!1392634 m!1278455))

(assert (=> b!1392480 d!150445))

(declare-fun d!150457 () Bool)

(declare-fun lt!611641 () (_ BitVec 32))

(declare-fun lt!611640 () (_ BitVec 32))

(assert (=> d!150457 (= lt!611641 (bvmul (bvxor lt!611640 (bvlshr lt!611640 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!150457 (= lt!611640 ((_ extract 31 0) (bvand (bvxor (select (store (arr!45961 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (bvlshr (select (store (arr!45961 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!150457 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!932263 (let ((h!33889 ((_ extract 31 0) (bvand (bvxor (select (store (arr!45961 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (bvlshr (select (store (arr!45961 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!125265 (bvmul (bvxor h!33889 (bvlshr h!33889 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!125265 (bvlshr x!125265 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!932263 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!932263 #b00000000000000000000000000000000))))))

(assert (=> d!150457 (= (toIndex!0 (select (store (arr!45961 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (bvand (bvxor lt!611641 (bvlshr lt!611641 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1392480 d!150457))

(declare-fun d!150461 () Bool)

(declare-fun res!932278 () Bool)

(declare-fun e!788651 () Bool)

(assert (=> d!150461 (=> res!932278 e!788651)))

(assert (=> d!150461 (= res!932278 (bvsge j!112 (size!46512 a!2901)))))

(assert (=> d!150461 (= (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840) e!788651)))

(declare-fun bm!66792 () Bool)

(declare-fun call!66795 () Bool)

(assert (=> bm!66792 (= call!66795 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!112 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1392676 () Bool)

(declare-fun e!788650 () Bool)

(assert (=> b!1392676 (= e!788651 e!788650)))

(declare-fun c!129653 () Bool)

(assert (=> b!1392676 (= c!129653 (validKeyInArray!0 (select (arr!45961 a!2901) j!112)))))

(declare-fun b!1392677 () Bool)

(assert (=> b!1392677 (= e!788650 call!66795)))

(declare-fun b!1392678 () Bool)

(declare-fun e!788649 () Bool)

(assert (=> b!1392678 (= e!788649 call!66795)))

(declare-fun b!1392679 () Bool)

(assert (=> b!1392679 (= e!788650 e!788649)))

(declare-fun lt!611654 () (_ BitVec 64))

(assert (=> b!1392679 (= lt!611654 (select (arr!45961 a!2901) j!112))))

(declare-fun lt!611655 () Unit!46554)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!95211 (_ BitVec 64) (_ BitVec 32)) Unit!46554)

(assert (=> b!1392679 (= lt!611655 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!611654 j!112))))

(declare-fun arrayContainsKey!0 (array!95211 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1392679 (arrayContainsKey!0 a!2901 lt!611654 #b00000000000000000000000000000000)))

(declare-fun lt!611656 () Unit!46554)

(assert (=> b!1392679 (= lt!611656 lt!611655)))

(declare-fun res!932277 () Bool)

(assert (=> b!1392679 (= res!932277 (= (seekEntryOrOpen!0 (select (arr!45961 a!2901) j!112) a!2901 mask!2840) (Found!10300 j!112)))))

(assert (=> b!1392679 (=> (not res!932277) (not e!788649))))

(assert (= (and d!150461 (not res!932278)) b!1392676))

(assert (= (and b!1392676 c!129653) b!1392679))

(assert (= (and b!1392676 (not c!129653)) b!1392677))

(assert (= (and b!1392679 res!932277) b!1392678))

(assert (= (or b!1392678 b!1392677) bm!66792))

(declare-fun m!1278465 () Bool)

(assert (=> bm!66792 m!1278465))

(assert (=> b!1392676 m!1278307))

(assert (=> b!1392676 m!1278307))

(assert (=> b!1392676 m!1278309))

(assert (=> b!1392679 m!1278307))

(declare-fun m!1278471 () Bool)

(assert (=> b!1392679 m!1278471))

(declare-fun m!1278473 () Bool)

(assert (=> b!1392679 m!1278473))

(assert (=> b!1392679 m!1278307))

(assert (=> b!1392679 m!1278311))

(assert (=> b!1392485 d!150461))

(declare-fun d!150465 () Bool)

(assert (=> d!150465 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!611663 () Unit!46554)

(declare-fun choose!38 (array!95211 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46554)

(assert (=> d!150465 (= lt!611663 (choose!38 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> d!150465 (validMask!0 mask!2840)))

(assert (=> d!150465 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112) lt!611663)))

(declare-fun bs!40509 () Bool)

(assert (= bs!40509 d!150465))

(assert (=> bs!40509 m!1278323))

(declare-fun m!1278475 () Bool)

(assert (=> bs!40509 m!1278475))

(assert (=> bs!40509 m!1278313))

(assert (=> b!1392485 d!150465))

(declare-fun b!1392682 () Bool)

(declare-fun lt!611669 () SeekEntryResult!10300)

(assert (=> b!1392682 (and (bvsge (index!43572 lt!611669) #b00000000000000000000000000000000) (bvslt (index!43572 lt!611669) (size!46512 a!2901)))))

(declare-fun res!932280 () Bool)

(assert (=> b!1392682 (= res!932280 (= (select (arr!45961 a!2901) (index!43572 lt!611669)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!788654 () Bool)

(assert (=> b!1392682 (=> res!932280 e!788654)))

(declare-fun b!1392683 () Bool)

(declare-fun e!788656 () Bool)

(assert (=> b!1392683 (= e!788656 (bvsge (x!125261 lt!611669) #b01111111111111111111111111111110))))

(declare-fun b!1392684 () Bool)

(assert (=> b!1392684 (and (bvsge (index!43572 lt!611669) #b00000000000000000000000000000000) (bvslt (index!43572 lt!611669) (size!46512 a!2901)))))

(assert (=> b!1392684 (= e!788654 (= (select (arr!45961 a!2901) (index!43572 lt!611669)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!150467 () Bool)

(assert (=> d!150467 e!788656))

(declare-fun c!129655 () Bool)

(assert (=> d!150467 (= c!129655 (and (is-Intermediate!10300 lt!611669) (undefined!11112 lt!611669)))))

(declare-fun e!788655 () SeekEntryResult!10300)

(assert (=> d!150467 (= lt!611669 e!788655)))

(declare-fun c!129654 () Bool)

(assert (=> d!150467 (= c!129654 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!611668 () (_ BitVec 64))

(assert (=> d!150467 (= lt!611668 (select (arr!45961 a!2901) (toIndex!0 (select (arr!45961 a!2901) j!112) mask!2840)))))

(assert (=> d!150467 (validMask!0 mask!2840)))

(assert (=> d!150467 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45961 a!2901) j!112) mask!2840) (select (arr!45961 a!2901) j!112) a!2901 mask!2840) lt!611669)))

(declare-fun e!788653 () SeekEntryResult!10300)

(declare-fun b!1392685 () Bool)

(assert (=> b!1392685 (= e!788653 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!45961 a!2901) j!112) mask!2840) #b00000000000000000000000000000000 mask!2840) (select (arr!45961 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1392686 () Bool)

(declare-fun e!788652 () Bool)

(assert (=> b!1392686 (= e!788656 e!788652)))

(declare-fun res!932282 () Bool)

(assert (=> b!1392686 (= res!932282 (and (is-Intermediate!10300 lt!611669) (not (undefined!11112 lt!611669)) (bvslt (x!125261 lt!611669) #b01111111111111111111111111111110) (bvsge (x!125261 lt!611669) #b00000000000000000000000000000000) (bvsge (x!125261 lt!611669) #b00000000000000000000000000000000)))))

(assert (=> b!1392686 (=> (not res!932282) (not e!788652))))

(declare-fun b!1392687 () Bool)

(assert (=> b!1392687 (= e!788653 (Intermediate!10300 false (toIndex!0 (select (arr!45961 a!2901) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1392688 () Bool)

(assert (=> b!1392688 (and (bvsge (index!43572 lt!611669) #b00000000000000000000000000000000) (bvslt (index!43572 lt!611669) (size!46512 a!2901)))))

(declare-fun res!932281 () Bool)

(assert (=> b!1392688 (= res!932281 (= (select (arr!45961 a!2901) (index!43572 lt!611669)) (select (arr!45961 a!2901) j!112)))))

(assert (=> b!1392688 (=> res!932281 e!788654)))

(assert (=> b!1392688 (= e!788652 e!788654)))

(declare-fun b!1392689 () Bool)

(assert (=> b!1392689 (= e!788655 (Intermediate!10300 true (toIndex!0 (select (arr!45961 a!2901) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1392690 () Bool)

(assert (=> b!1392690 (= e!788655 e!788653)))

(declare-fun c!129656 () Bool)

(assert (=> b!1392690 (= c!129656 (or (= lt!611668 (select (arr!45961 a!2901) j!112)) (= (bvadd lt!611668 lt!611668) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!150467 c!129654) b!1392689))

(assert (= (and d!150467 (not c!129654)) b!1392690))

(assert (= (and b!1392690 c!129656) b!1392687))

(assert (= (and b!1392690 (not c!129656)) b!1392685))

(assert (= (and d!150467 c!129655) b!1392683))

(assert (= (and d!150467 (not c!129655)) b!1392686))

(assert (= (and b!1392686 res!932282) b!1392688))

(assert (= (and b!1392688 (not res!932281)) b!1392682))

(assert (= (and b!1392682 (not res!932280)) b!1392684))

(assert (=> b!1392685 m!1278317))

(declare-fun m!1278477 () Bool)

(assert (=> b!1392685 m!1278477))

(assert (=> b!1392685 m!1278477))

(assert (=> b!1392685 m!1278307))

(declare-fun m!1278479 () Bool)

(assert (=> b!1392685 m!1278479))

(declare-fun m!1278481 () Bool)

(assert (=> b!1392684 m!1278481))

(assert (=> d!150467 m!1278317))

(declare-fun m!1278483 () Bool)

(assert (=> d!150467 m!1278483))

(assert (=> d!150467 m!1278313))

(assert (=> b!1392682 m!1278481))

(assert (=> b!1392688 m!1278481))

(assert (=> b!1392485 d!150467))

(declare-fun d!150471 () Bool)

(declare-fun lt!611673 () (_ BitVec 32))

(declare-fun lt!611672 () (_ BitVec 32))

(assert (=> d!150471 (= lt!611673 (bvmul (bvxor lt!611672 (bvlshr lt!611672 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!150471 (= lt!611672 ((_ extract 31 0) (bvand (bvxor (select (arr!45961 a!2901) j!112) (bvlshr (select (arr!45961 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!150471 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!932263 (let ((h!33889 ((_ extract 31 0) (bvand (bvxor (select (arr!45961 a!2901) j!112) (bvlshr (select (arr!45961 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!125265 (bvmul (bvxor h!33889 (bvlshr h!33889 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!125265 (bvlshr x!125265 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!932263 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!932263 #b00000000000000000000000000000000))))))

(assert (=> d!150471 (= (toIndex!0 (select (arr!45961 a!2901) j!112) mask!2840) (bvand (bvxor lt!611673 (bvlshr lt!611673 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1392485 d!150471))

(declare-fun d!150475 () Bool)

(assert (=> d!150475 (= (validMask!0 mask!2840) (and (or (= mask!2840 #b00000000000000000000000000000111) (= mask!2840 #b00000000000000000000000000001111) (= mask!2840 #b00000000000000000000000000011111) (= mask!2840 #b00000000000000000000000000111111) (= mask!2840 #b00000000000000000000000001111111) (= mask!2840 #b00000000000000000000000011111111) (= mask!2840 #b00000000000000000000000111111111) (= mask!2840 #b00000000000000000000001111111111) (= mask!2840 #b00000000000000000000011111111111) (= mask!2840 #b00000000000000000000111111111111) (= mask!2840 #b00000000000000000001111111111111) (= mask!2840 #b00000000000000000011111111111111) (= mask!2840 #b00000000000000000111111111111111) (= mask!2840 #b00000000000000001111111111111111) (= mask!2840 #b00000000000000011111111111111111) (= mask!2840 #b00000000000000111111111111111111) (= mask!2840 #b00000000000001111111111111111111) (= mask!2840 #b00000000000011111111111111111111) (= mask!2840 #b00000000000111111111111111111111) (= mask!2840 #b00000000001111111111111111111111) (= mask!2840 #b00000000011111111111111111111111) (= mask!2840 #b00000000111111111111111111111111) (= mask!2840 #b00000001111111111111111111111111) (= mask!2840 #b00000011111111111111111111111111) (= mask!2840 #b00000111111111111111111111111111) (= mask!2840 #b00001111111111111111111111111111) (= mask!2840 #b00011111111111111111111111111111) (= mask!2840 #b00111111111111111111111111111111)) (bvsle mask!2840 #b00111111111111111111111111111111)))))

(assert (=> start!119560 d!150475))

(declare-fun d!150487 () Bool)

(assert (=> d!150487 (= (array_inv!34906 a!2901) (bvsge (size!46512 a!2901) #b00000000000000000000000000000000))))

(assert (=> start!119560 d!150487))

(declare-fun b!1392782 () Bool)

(declare-fun e!788714 () SeekEntryResult!10300)

(declare-fun e!788713 () SeekEntryResult!10300)

(assert (=> b!1392782 (= e!788714 e!788713)))

(declare-fun lt!611712 () (_ BitVec 64))

(declare-fun lt!611713 () SeekEntryResult!10300)

(assert (=> b!1392782 (= lt!611712 (select (arr!45961 a!2901) (index!43572 lt!611713)))))

(declare-fun c!129689 () Bool)

(assert (=> b!1392782 (= c!129689 (= lt!611712 (select (arr!45961 a!2901) j!112)))))

(declare-fun e!788712 () SeekEntryResult!10300)

(declare-fun b!1392783 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95211 (_ BitVec 32)) SeekEntryResult!10300)

(assert (=> b!1392783 (= e!788712 (seekKeyOrZeroReturnVacant!0 (x!125261 lt!611713) (index!43572 lt!611713) (index!43572 lt!611713) (select (arr!45961 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1392784 () Bool)

(declare-fun c!129690 () Bool)

(assert (=> b!1392784 (= c!129690 (= lt!611712 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1392784 (= e!788713 e!788712)))

(declare-fun b!1392785 () Bool)

(assert (=> b!1392785 (= e!788712 (MissingZero!10300 (index!43572 lt!611713)))))

(declare-fun b!1392786 () Bool)

(assert (=> b!1392786 (= e!788713 (Found!10300 (index!43572 lt!611713)))))

(declare-fun d!150491 () Bool)

(declare-fun lt!611711 () SeekEntryResult!10300)

(assert (=> d!150491 (and (or (is-Undefined!10300 lt!611711) (not (is-Found!10300 lt!611711)) (and (bvsge (index!43571 lt!611711) #b00000000000000000000000000000000) (bvslt (index!43571 lt!611711) (size!46512 a!2901)))) (or (is-Undefined!10300 lt!611711) (is-Found!10300 lt!611711) (not (is-MissingZero!10300 lt!611711)) (and (bvsge (index!43570 lt!611711) #b00000000000000000000000000000000) (bvslt (index!43570 lt!611711) (size!46512 a!2901)))) (or (is-Undefined!10300 lt!611711) (is-Found!10300 lt!611711) (is-MissingZero!10300 lt!611711) (not (is-MissingVacant!10300 lt!611711)) (and (bvsge (index!43573 lt!611711) #b00000000000000000000000000000000) (bvslt (index!43573 lt!611711) (size!46512 a!2901)))) (or (is-Undefined!10300 lt!611711) (ite (is-Found!10300 lt!611711) (= (select (arr!45961 a!2901) (index!43571 lt!611711)) (select (arr!45961 a!2901) j!112)) (ite (is-MissingZero!10300 lt!611711) (= (select (arr!45961 a!2901) (index!43570 lt!611711)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!10300 lt!611711) (= (select (arr!45961 a!2901) (index!43573 lt!611711)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!150491 (= lt!611711 e!788714)))

(declare-fun c!129691 () Bool)

(assert (=> d!150491 (= c!129691 (and (is-Intermediate!10300 lt!611713) (undefined!11112 lt!611713)))))

(assert (=> d!150491 (= lt!611713 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45961 a!2901) j!112) mask!2840) (select (arr!45961 a!2901) j!112) a!2901 mask!2840))))

(assert (=> d!150491 (validMask!0 mask!2840)))

(assert (=> d!150491 (= (seekEntryOrOpen!0 (select (arr!45961 a!2901) j!112) a!2901 mask!2840) lt!611711)))

(declare-fun b!1392781 () Bool)

(assert (=> b!1392781 (= e!788714 Undefined!10300)))

(assert (= (and d!150491 c!129691) b!1392781))

(assert (= (and d!150491 (not c!129691)) b!1392782))

(assert (= (and b!1392782 c!129689) b!1392786))

(assert (= (and b!1392782 (not c!129689)) b!1392784))

(assert (= (and b!1392784 c!129690) b!1392785))

(assert (= (and b!1392784 (not c!129690)) b!1392783))

(declare-fun m!1278529 () Bool)

(assert (=> b!1392782 m!1278529))

(assert (=> b!1392783 m!1278307))

(declare-fun m!1278531 () Bool)

(assert (=> b!1392783 m!1278531))

(declare-fun m!1278533 () Bool)

(assert (=> d!150491 m!1278533))

(declare-fun m!1278535 () Bool)

(assert (=> d!150491 m!1278535))

(declare-fun m!1278537 () Bool)

(assert (=> d!150491 m!1278537))

(assert (=> d!150491 m!1278307))

(assert (=> d!150491 m!1278317))

(assert (=> d!150491 m!1278317))

(assert (=> d!150491 m!1278307))

(assert (=> d!150491 m!1278321))

(assert (=> d!150491 m!1278313))

(assert (=> b!1392479 d!150491))

(declare-fun d!150503 () Bool)

(declare-fun res!932313 () Bool)

(declare-fun e!788717 () Bool)

(assert (=> d!150503 (=> res!932313 e!788717)))

(assert (=> d!150503 (= res!932313 (bvsge #b00000000000000000000000000000000 (size!46512 a!2901)))))

(assert (=> d!150503 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840) e!788717)))

(declare-fun bm!66798 () Bool)

(declare-fun call!66801 () Bool)

(assert (=> bm!66798 (= call!66801 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1392787 () Bool)

(declare-fun e!788716 () Bool)

(assert (=> b!1392787 (= e!788717 e!788716)))

(declare-fun c!129692 () Bool)

(assert (=> b!1392787 (= c!129692 (validKeyInArray!0 (select (arr!45961 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1392788 () Bool)

(assert (=> b!1392788 (= e!788716 call!66801)))

(declare-fun b!1392789 () Bool)

(declare-fun e!788715 () Bool)

(assert (=> b!1392789 (= e!788715 call!66801)))

(declare-fun b!1392790 () Bool)

(assert (=> b!1392790 (= e!788716 e!788715)))

(declare-fun lt!611714 () (_ BitVec 64))

(assert (=> b!1392790 (= lt!611714 (select (arr!45961 a!2901) #b00000000000000000000000000000000))))

(declare-fun lt!611715 () Unit!46554)

(assert (=> b!1392790 (= lt!611715 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!611714 #b00000000000000000000000000000000))))

(assert (=> b!1392790 (arrayContainsKey!0 a!2901 lt!611714 #b00000000000000000000000000000000)))

(declare-fun lt!611716 () Unit!46554)

(assert (=> b!1392790 (= lt!611716 lt!611715)))

(declare-fun res!932312 () Bool)

(assert (=> b!1392790 (= res!932312 (= (seekEntryOrOpen!0 (select (arr!45961 a!2901) #b00000000000000000000000000000000) a!2901 mask!2840) (Found!10300 #b00000000000000000000000000000000)))))

(assert (=> b!1392790 (=> (not res!932312) (not e!788715))))

(assert (= (and d!150503 (not res!932313)) b!1392787))

(assert (= (and b!1392787 c!129692) b!1392790))

(assert (= (and b!1392787 (not c!129692)) b!1392788))

(assert (= (and b!1392790 res!932312) b!1392789))

(assert (= (or b!1392789 b!1392788) bm!66798))

(declare-fun m!1278539 () Bool)

(assert (=> bm!66798 m!1278539))

(assert (=> b!1392787 m!1278415))

(assert (=> b!1392787 m!1278415))

(assert (=> b!1392787 m!1278417))

(assert (=> b!1392790 m!1278415))

(declare-fun m!1278541 () Bool)

(assert (=> b!1392790 m!1278541))

(declare-fun m!1278543 () Bool)

(assert (=> b!1392790 m!1278543))

(assert (=> b!1392790 m!1278415))

(declare-fun m!1278545 () Bool)

(assert (=> b!1392790 m!1278545))

(assert (=> b!1392484 d!150503))

(declare-fun d!150505 () Bool)

(assert (=> d!150505 (= (validKeyInArray!0 (select (arr!45961 a!2901) j!112)) (and (not (= (select (arr!45961 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45961 a!2901) j!112) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1392483 d!150505))

(push 1)

