; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122428 () Bool)

(assert start!122428)

(declare-fun b!1418410 () Bool)

(declare-fun res!954164 () Bool)

(declare-fun e!802693 () Bool)

(assert (=> b!1418410 (=> (not res!954164) (not e!802693))))

(declare-datatypes ((array!96822 0))(
  ( (array!96823 (arr!46729 (Array (_ BitVec 32) (_ BitVec 64))) (size!47280 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96822)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96822 (_ BitVec 32)) Bool)

(assert (=> b!1418410 (= res!954164 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1418411 () Bool)

(declare-fun res!954163 () Bool)

(assert (=> b!1418411 (=> (not res!954163) (not e!802693))))

(declare-datatypes ((List!33419 0))(
  ( (Nil!33416) (Cons!33415 (h!34708 (_ BitVec 64)) (t!48120 List!33419)) )
))
(declare-fun arrayNoDuplicates!0 (array!96822 (_ BitVec 32) List!33419) Bool)

(assert (=> b!1418411 (= res!954163 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33416))))

(declare-fun b!1418412 () Bool)

(declare-fun res!954160 () Bool)

(assert (=> b!1418412 (=> (not res!954160) (not e!802693))))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1418412 (= res!954160 (and (= (size!47280 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47280 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47280 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1418413 () Bool)

(declare-fun res!954161 () Bool)

(assert (=> b!1418413 (=> (not res!954161) (not e!802693))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1418413 (= res!954161 (validKeyInArray!0 (select (arr!46729 a!2831) i!982)))))

(declare-fun b!1418414 () Bool)

(declare-fun lt!625528 () (_ BitVec 32))

(assert (=> b!1418414 (= e!802693 (and (bvsge mask!2608 #b00000000000000000000000000000000) (or (bvslt lt!625528 #b00000000000000000000000000000000) (bvsge lt!625528 (bvadd #b00000000000000000000000000000001 mask!2608)))))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1418414 (= lt!625528 (toIndex!0 (select (arr!46729 a!2831) j!81) mask!2608))))

(declare-fun b!1418415 () Bool)

(declare-fun res!954165 () Bool)

(assert (=> b!1418415 (=> (not res!954165) (not e!802693))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1418415 (= res!954165 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47280 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47280 a!2831))))))

(declare-fun res!954159 () Bool)

(assert (=> start!122428 (=> (not res!954159) (not e!802693))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122428 (= res!954159 (validMask!0 mask!2608))))

(assert (=> start!122428 e!802693))

(assert (=> start!122428 true))

(declare-fun array_inv!35674 (array!96822) Bool)

(assert (=> start!122428 (array_inv!35674 a!2831)))

(declare-fun b!1418416 () Bool)

(declare-fun res!954162 () Bool)

(assert (=> b!1418416 (=> (not res!954162) (not e!802693))))

(assert (=> b!1418416 (= res!954162 (validKeyInArray!0 (select (arr!46729 a!2831) j!81)))))

(assert (= (and start!122428 res!954159) b!1418412))

(assert (= (and b!1418412 res!954160) b!1418413))

(assert (= (and b!1418413 res!954161) b!1418416))

(assert (= (and b!1418416 res!954162) b!1418410))

(assert (= (and b!1418410 res!954164) b!1418411))

(assert (= (and b!1418411 res!954163) b!1418415))

(assert (= (and b!1418415 res!954165) b!1418414))

(declare-fun m!1309145 () Bool)

(assert (=> b!1418414 m!1309145))

(assert (=> b!1418414 m!1309145))

(declare-fun m!1309147 () Bool)

(assert (=> b!1418414 m!1309147))

(declare-fun m!1309149 () Bool)

(assert (=> b!1418410 m!1309149))

(declare-fun m!1309151 () Bool)

(assert (=> b!1418413 m!1309151))

(assert (=> b!1418413 m!1309151))

(declare-fun m!1309153 () Bool)

(assert (=> b!1418413 m!1309153))

(declare-fun m!1309155 () Bool)

(assert (=> start!122428 m!1309155))

(declare-fun m!1309157 () Bool)

(assert (=> start!122428 m!1309157))

(assert (=> b!1418416 m!1309145))

(assert (=> b!1418416 m!1309145))

(declare-fun m!1309159 () Bool)

(assert (=> b!1418416 m!1309159))

(declare-fun m!1309161 () Bool)

(assert (=> b!1418411 m!1309161))

(push 1)

(assert (not b!1418414))

(assert (not b!1418410))

(assert (not b!1418411))

(assert (not b!1418416))

(assert (not b!1418413))

(assert (not start!122428))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!152811 () Bool)

(assert (=> d!152811 (= (validMask!0 mask!2608) (and (or (= mask!2608 #b00000000000000000000000000000111) (= mask!2608 #b00000000000000000000000000001111) (= mask!2608 #b00000000000000000000000000011111) (= mask!2608 #b00000000000000000000000000111111) (= mask!2608 #b00000000000000000000000001111111) (= mask!2608 #b00000000000000000000000011111111) (= mask!2608 #b00000000000000000000000111111111) (= mask!2608 #b00000000000000000000001111111111) (= mask!2608 #b00000000000000000000011111111111) (= mask!2608 #b00000000000000000000111111111111) (= mask!2608 #b00000000000000000001111111111111) (= mask!2608 #b00000000000000000011111111111111) (= mask!2608 #b00000000000000000111111111111111) (= mask!2608 #b00000000000000001111111111111111) (= mask!2608 #b00000000000000011111111111111111) (= mask!2608 #b00000000000000111111111111111111) (= mask!2608 #b00000000000001111111111111111111) (= mask!2608 #b00000000000011111111111111111111) (= mask!2608 #b00000000000111111111111111111111) (= mask!2608 #b00000000001111111111111111111111) (= mask!2608 #b00000000011111111111111111111111) (= mask!2608 #b00000000111111111111111111111111) (= mask!2608 #b00000001111111111111111111111111) (= mask!2608 #b00000011111111111111111111111111) (= mask!2608 #b00000111111111111111111111111111) (= mask!2608 #b00001111111111111111111111111111) (= mask!2608 #b00011111111111111111111111111111) (= mask!2608 #b00111111111111111111111111111111)) (bvsle mask!2608 #b00111111111111111111111111111111)))))

(assert (=> start!122428 d!152811))

(declare-fun d!152815 () Bool)

(assert (=> d!152815 (= (array_inv!35674 a!2831) (bvsge (size!47280 a!2831) #b00000000000000000000000000000000))))

(assert (=> start!122428 d!152815))

(declare-fun d!152817 () Bool)

(assert (=> d!152817 (= (validKeyInArray!0 (select (arr!46729 a!2831) i!982)) (and (not (= (select (arr!46729 a!2831) i!982) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46729 a!2831) i!982) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1418413 d!152817))

(declare-fun b!1418491 () Bool)

(declare-fun e!802733 () Bool)

(declare-fun e!802735 () Bool)

(assert (=> b!1418491 (= e!802733 e!802735)))

(declare-fun res!954226 () Bool)

(assert (=> b!1418491 (=> (not res!954226) (not e!802735))))

(declare-fun e!802732 () Bool)

(assert (=> b!1418491 (= res!954226 (not e!802732))))

(declare-fun res!954228 () Bool)

(assert (=> b!1418491 (=> (not res!954228) (not e!802732))))

(assert (=> b!1418491 (= res!954228 (validKeyInArray!0 (select (arr!46729 a!2831) #b00000000000000000000000000000000)))))

(declare-fun b!1418492 () Bool)

(declare-fun e!802734 () Bool)

(declare-fun call!67274 () Bool)

(assert (=> b!1418492 (= e!802734 call!67274)))

(declare-fun bm!67271 () Bool)

(declare-fun c!131617 () Bool)

(assert (=> bm!67271 (= call!67274 (arrayNoDuplicates!0 a!2831 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!131617 (Cons!33415 (select (arr!46729 a!2831) #b00000000000000000000000000000000) Nil!33416) Nil!33416)))))

(declare-fun b!1418493 () Bool)

(declare-fun contains!9848 (List!33419 (_ BitVec 64)) Bool)

(assert (=> b!1418493 (= e!802732 (contains!9848 Nil!33416 (select (arr!46729 a!2831) #b00000000000000000000000000000000)))))

(declare-fun d!152819 () Bool)

(declare-fun res!954227 () Bool)

(assert (=> d!152819 (=> res!954227 e!802733)))

(assert (=> d!152819 (= res!954227 (bvsge #b00000000000000000000000000000000 (size!47280 a!2831)))))

(assert (=> d!152819 (= (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33416) e!802733)))

(declare-fun b!1418494 () Bool)

(assert (=> b!1418494 (= e!802734 call!67274)))

(declare-fun b!1418495 () Bool)

(assert (=> b!1418495 (= e!802735 e!802734)))

(assert (=> b!1418495 (= c!131617 (validKeyInArray!0 (select (arr!46729 a!2831) #b00000000000000000000000000000000)))))

(assert (= (and d!152819 (not res!954227)) b!1418491))

(assert (= (and b!1418491 res!954228) b!1418493))

(assert (= (and b!1418491 res!954226) b!1418495))

(assert (= (and b!1418495 c!131617) b!1418492))

(assert (= (and b!1418495 (not c!131617)) b!1418494))

(assert (= (or b!1418492 b!1418494) bm!67271))

(declare-fun m!1309211 () Bool)

(assert (=> b!1418491 m!1309211))

(assert (=> b!1418491 m!1309211))

(declare-fun m!1309213 () Bool)

(assert (=> b!1418491 m!1309213))

(assert (=> bm!67271 m!1309211))

(declare-fun m!1309215 () Bool)

(assert (=> bm!67271 m!1309215))

(assert (=> b!1418493 m!1309211))

(assert (=> b!1418493 m!1309211))

(declare-fun m!1309217 () Bool)

(assert (=> b!1418493 m!1309217))

(assert (=> b!1418495 m!1309211))

(assert (=> b!1418495 m!1309211))

(assert (=> b!1418495 m!1309213))

(assert (=> b!1418411 d!152819))

(declare-fun d!152823 () Bool)

(assert (=> d!152823 (= (validKeyInArray!0 (select (arr!46729 a!2831) j!81)) (and (not (= (select (arr!46729 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46729 a!2831) j!81) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1418416 d!152823))

(declare-fun b!1418509 () Bool)

(declare-fun e!802746 () Bool)

(declare-fun e!802747 () Bool)

(assert (=> b!1418509 (= e!802746 e!802747)))

(declare-fun lt!625564 () (_ BitVec 64))

(assert (=> b!1418509 (= lt!625564 (select (arr!46729 a!2831) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!48010 0))(
  ( (Unit!48011) )
))
(declare-fun lt!625563 () Unit!48010)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!96822 (_ BitVec 64) (_ BitVec 32)) Unit!48010)

(assert (=> b!1418509 (= lt!625563 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2831 lt!625564 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!96822 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1418509 (arrayContainsKey!0 a!2831 lt!625564 #b00000000000000000000000000000000)))

(declare-fun lt!625562 () Unit!48010)

(assert (=> b!1418509 (= lt!625562 lt!625563)))

(declare-fun res!954239 () Bool)

(declare-datatypes ((SeekEntryResult!11043 0))(
  ( (MissingZero!11043 (index!46563 (_ BitVec 32))) (Found!11043 (index!46564 (_ BitVec 32))) (Intermediate!11043 (undefined!11855 Bool) (index!46565 (_ BitVec 32)) (x!128220 (_ BitVec 32))) (Undefined!11043) (MissingVacant!11043 (index!46566 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96822 (_ BitVec 32)) SeekEntryResult!11043)

(assert (=> b!1418509 (= res!954239 (= (seekEntryOrOpen!0 (select (arr!46729 a!2831) #b00000000000000000000000000000000) a!2831 mask!2608) (Found!11043 #b00000000000000000000000000000000)))))

(assert (=> b!1418509 (=> (not res!954239) (not e!802747))))

(declare-fun b!1418510 () Bool)

(declare-fun e!802748 () Bool)

(assert (=> b!1418510 (= e!802748 e!802746)))

(declare-fun c!131621 () Bool)

(assert (=> b!1418510 (= c!131621 (validKeyInArray!0 (select (arr!46729 a!2831) #b00000000000000000000000000000000)))))

(declare-fun d!152825 () Bool)

(declare-fun res!954238 () Bool)

(assert (=> d!152825 (=> res!954238 e!802748)))

(assert (=> d!152825 (= res!954238 (bvsge #b00000000000000000000000000000000 (size!47280 a!2831)))))

(assert (=> d!152825 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608) e!802748)))

(declare-fun bm!67275 () Bool)

(declare-fun call!67278 () Bool)

(assert (=> bm!67275 (= call!67278 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2831 mask!2608))))

(declare-fun b!1418511 () Bool)

(assert (=> b!1418511 (= e!802747 call!67278)))

(declare-fun b!1418512 () Bool)

(assert (=> b!1418512 (= e!802746 call!67278)))

(assert (= (and d!152825 (not res!954238)) b!1418510))

(assert (= (and b!1418510 c!131621) b!1418509))

(assert (= (and b!1418510 (not c!131621)) b!1418512))

(assert (= (and b!1418509 res!954239) b!1418511))

(assert (= (or b!1418511 b!1418512) bm!67275))

(assert (=> b!1418509 m!1309211))

(declare-fun m!1309223 () Bool)

(assert (=> b!1418509 m!1309223))

(declare-fun m!1309225 () Bool)

(assert (=> b!1418509 m!1309225))

(assert (=> b!1418509 m!1309211))

(declare-fun m!1309227 () Bool)

(assert (=> b!1418509 m!1309227))

(assert (=> b!1418510 m!1309211))

(assert (=> b!1418510 m!1309211))

(assert (=> b!1418510 m!1309213))

(declare-fun m!1309229 () Bool)

(assert (=> bm!67275 m!1309229))

(assert (=> b!1418410 d!152825))

(declare-fun d!152839 () Bool)

(declare-fun lt!625570 () (_ BitVec 32))

(declare-fun lt!625569 () (_ BitVec 32))

(assert (=> d!152839 (= lt!625570 (bvmul (bvxor lt!625569 (bvlshr lt!625569 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!152839 (= lt!625569 ((_ extract 31 0) (bvand (bvxor (select (arr!46729 a!2831) j!81) (bvlshr (select (arr!46729 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!152839 (and (bvsge mask!2608 #b00000000000000000000000000000000) (let ((res!954246 (let ((h!34713 ((_ extract 31 0) (bvand (bvxor (select (arr!46729 a!2831) j!81) (bvlshr (select (arr!46729 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!128218 (bvmul (bvxor h!34713 (bvlshr h!34713 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!128218 (bvlshr x!128218 #b00000000000000000000000000001101)) mask!2608))))) (and (bvslt res!954246 (bvadd mask!2608 #b00000000000000000000000000000001)) (bvsge res!954246 #b00000000000000000000000000000000))))))

(assert (=> d!152839 (= (toIndex!0 (select (arr!46729 a!2831) j!81) mask!2608) (bvand (bvxor lt!625570 (bvlshr lt!625570 #b00000000000000000000000000001101)) mask!2608))))

(assert (=> b!1418414 d!152839))

(push 1)

(assert (not bm!67275))

(assert (not b!1418493))

(assert (not b!1418510))

(assert (not b!1418495))

(assert (not b!1418491))

(assert (not bm!67271))

(assert (not b!1418509))

(check-sat)

