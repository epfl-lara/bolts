; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128636 () Bool)

(assert start!128636)

(declare-fun b!1507505 () Bool)

(declare-fun e!842307 () Bool)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun lt!654372 () (_ BitVec 32))

(assert (=> b!1507505 (= e!842307 (and (bvsge mask!2512 #b00000000000000000000000000000000) (or (bvslt lt!654372 #b00000000000000000000000000000000) (bvsge lt!654372 (bvadd #b00000000000000000000000000000001 mask!2512)))))))

(declare-fun b!1507506 () Bool)

(declare-fun e!842309 () Bool)

(assert (=> b!1507506 (= e!842309 e!842307)))

(declare-fun res!1027796 () Bool)

(assert (=> b!1507506 (=> (not res!1027796) (not e!842307))))

(declare-fun j!70 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12690 0))(
  ( (MissingZero!12690 (index!53154 (_ BitVec 32))) (Found!12690 (index!53155 (_ BitVec 32))) (Intermediate!12690 (undefined!13502 Bool) (index!53156 (_ BitVec 32)) (x!134915 (_ BitVec 32))) (Undefined!12690) (MissingVacant!12690 (index!53157 (_ BitVec 32))) )
))
(declare-fun lt!654373 () SeekEntryResult!12690)

(declare-datatypes ((array!100522 0))(
  ( (array!100523 (arr!48498 (Array (_ BitVec 32) (_ BitVec 64))) (size!49049 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100522)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100522 (_ BitVec 32)) SeekEntryResult!12690)

(assert (=> b!1507506 (= res!1027796 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!654372 (select (arr!48498 a!2804) j!70) a!2804 mask!2512) lt!654373))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1507506 (= lt!654373 (Intermediate!12690 false resIndex!21 resX!21))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1507506 (= lt!654372 (toIndex!0 (select (arr!48498 a!2804) j!70) mask!2512))))

(declare-fun b!1507507 () Bool)

(declare-fun res!1027799 () Bool)

(assert (=> b!1507507 (=> (not res!1027799) (not e!842309))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1507507 (= res!1027799 (validKeyInArray!0 (select (arr!48498 a!2804) i!961)))))

(declare-fun b!1507508 () Bool)

(declare-fun res!1027800 () Bool)

(assert (=> b!1507508 (=> (not res!1027800) (not e!842307))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1507508 (= res!1027800 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48498 a!2804) j!70) a!2804 mask!2512) lt!654373))))

(declare-fun b!1507509 () Bool)

(declare-fun res!1027795 () Bool)

(assert (=> b!1507509 (=> (not res!1027795) (not e!842309))))

(assert (=> b!1507509 (= res!1027795 (validKeyInArray!0 (select (arr!48498 a!2804) j!70)))))

(declare-fun res!1027803 () Bool)

(assert (=> start!128636 (=> (not res!1027803) (not e!842309))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128636 (= res!1027803 (validMask!0 mask!2512))))

(assert (=> start!128636 e!842309))

(assert (=> start!128636 true))

(declare-fun array_inv!37443 (array!100522) Bool)

(assert (=> start!128636 (array_inv!37443 a!2804)))

(declare-fun b!1507510 () Bool)

(declare-fun res!1027802 () Bool)

(assert (=> b!1507510 (=> (not res!1027802) (not e!842309))))

(declare-datatypes ((List!35161 0))(
  ( (Nil!35158) (Cons!35157 (h!36561 (_ BitVec 64)) (t!49862 List!35161)) )
))
(declare-fun arrayNoDuplicates!0 (array!100522 (_ BitVec 32) List!35161) Bool)

(assert (=> b!1507510 (= res!1027802 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35158))))

(declare-fun b!1507511 () Bool)

(declare-fun res!1027801 () Bool)

(assert (=> b!1507511 (=> (not res!1027801) (not e!842309))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100522 (_ BitVec 32)) Bool)

(assert (=> b!1507511 (= res!1027801 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1507512 () Bool)

(declare-fun res!1027797 () Bool)

(assert (=> b!1507512 (=> (not res!1027797) (not e!842309))))

(assert (=> b!1507512 (= res!1027797 (and (= (size!49049 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49049 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49049 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1507513 () Bool)

(declare-fun res!1027798 () Bool)

(assert (=> b!1507513 (=> (not res!1027798) (not e!842309))))

(assert (=> b!1507513 (= res!1027798 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49049 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49049 a!2804))))))

(assert (= (and start!128636 res!1027803) b!1507512))

(assert (= (and b!1507512 res!1027797) b!1507507))

(assert (= (and b!1507507 res!1027799) b!1507509))

(assert (= (and b!1507509 res!1027795) b!1507511))

(assert (= (and b!1507511 res!1027801) b!1507510))

(assert (= (and b!1507510 res!1027802) b!1507513))

(assert (= (and b!1507513 res!1027798) b!1507506))

(assert (= (and b!1507506 res!1027796) b!1507508))

(assert (= (and b!1507508 res!1027800) b!1507505))

(declare-fun m!1390295 () Bool)

(assert (=> b!1507511 m!1390295))

(declare-fun m!1390297 () Bool)

(assert (=> start!128636 m!1390297))

(declare-fun m!1390299 () Bool)

(assert (=> start!128636 m!1390299))

(declare-fun m!1390301 () Bool)

(assert (=> b!1507510 m!1390301))

(declare-fun m!1390303 () Bool)

(assert (=> b!1507507 m!1390303))

(assert (=> b!1507507 m!1390303))

(declare-fun m!1390305 () Bool)

(assert (=> b!1507507 m!1390305))

(declare-fun m!1390307 () Bool)

(assert (=> b!1507506 m!1390307))

(assert (=> b!1507506 m!1390307))

(declare-fun m!1390309 () Bool)

(assert (=> b!1507506 m!1390309))

(assert (=> b!1507506 m!1390307))

(declare-fun m!1390311 () Bool)

(assert (=> b!1507506 m!1390311))

(assert (=> b!1507508 m!1390307))

(assert (=> b!1507508 m!1390307))

(declare-fun m!1390313 () Bool)

(assert (=> b!1507508 m!1390313))

(assert (=> b!1507509 m!1390307))

(assert (=> b!1507509 m!1390307))

(declare-fun m!1390315 () Bool)

(assert (=> b!1507509 m!1390315))

(push 1)

(assert (not start!128636))

(assert (not b!1507511))

(assert (not b!1507506))

(assert (not b!1507507))

(assert (not b!1507509))

(assert (not b!1507508))

(assert (not b!1507510))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!158281 () Bool)

(assert (=> d!158281 (= (validKeyInArray!0 (select (arr!48498 a!2804) j!70)) (and (not (= (select (arr!48498 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48498 a!2804) j!70) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1507509 d!158281))

(declare-fun bm!68259 () Bool)

(declare-fun call!68262 () Bool)

(declare-fun c!139400 () Bool)

(assert (=> bm!68259 (= call!68262 (arrayNoDuplicates!0 a!2804 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!139400 (Cons!35157 (select (arr!48498 a!2804) #b00000000000000000000000000000000) Nil!35158) Nil!35158)))))

(declare-fun b!1507539 () Bool)

(declare-fun e!842330 () Bool)

(declare-fun e!842332 () Bool)

(assert (=> b!1507539 (= e!842330 e!842332)))

(assert (=> b!1507539 (= c!139400 (validKeyInArray!0 (select (arr!48498 a!2804) #b00000000000000000000000000000000)))))

(declare-fun b!1507540 () Bool)

(assert (=> b!1507540 (= e!842332 call!68262)))

(declare-fun b!1507541 () Bool)

(assert (=> b!1507541 (= e!842332 call!68262)))

(declare-fun b!1507542 () Bool)

(declare-fun e!842331 () Bool)

(assert (=> b!1507542 (= e!842331 e!842330)))

(declare-fun res!1027820 () Bool)

(assert (=> b!1507542 (=> (not res!1027820) (not e!842330))))

(declare-fun e!842333 () Bool)

(assert (=> b!1507542 (= res!1027820 (not e!842333))))

(declare-fun res!1027819 () Bool)

(assert (=> b!1507542 (=> (not res!1027819) (not e!842333))))

(assert (=> b!1507542 (= res!1027819 (validKeyInArray!0 (select (arr!48498 a!2804) #b00000000000000000000000000000000)))))

(declare-fun d!158285 () Bool)

(declare-fun res!1027821 () Bool)

(assert (=> d!158285 (=> res!1027821 e!842331)))

(assert (=> d!158285 (= res!1027821 (bvsge #b00000000000000000000000000000000 (size!49049 a!2804)))))

(assert (=> d!158285 (= (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35158) e!842331)))

(declare-fun b!1507543 () Bool)

(declare-fun contains!9980 (List!35161 (_ BitVec 64)) Bool)

(assert (=> b!1507543 (= e!842333 (contains!9980 Nil!35158 (select (arr!48498 a!2804) #b00000000000000000000000000000000)))))

(assert (= (and d!158285 (not res!1027821)) b!1507542))

(assert (= (and b!1507542 res!1027819) b!1507543))

(assert (= (and b!1507542 res!1027820) b!1507539))

(assert (= (and b!1507539 c!139400) b!1507541))

(assert (= (and b!1507539 (not c!139400)) b!1507540))

(assert (= (or b!1507541 b!1507540) bm!68259))

(declare-fun m!1390325 () Bool)

(assert (=> bm!68259 m!1390325))

(declare-fun m!1390327 () Bool)

(assert (=> bm!68259 m!1390327))

(assert (=> b!1507539 m!1390325))

(assert (=> b!1507539 m!1390325))

(declare-fun m!1390329 () Bool)

(assert (=> b!1507539 m!1390329))

(assert (=> b!1507542 m!1390325))

(assert (=> b!1507542 m!1390325))

(assert (=> b!1507542 m!1390329))

(assert (=> b!1507543 m!1390325))

(assert (=> b!1507543 m!1390325))

(declare-fun m!1390331 () Bool)

(assert (=> b!1507543 m!1390331))

(assert (=> b!1507510 d!158285))

(declare-fun b!1507564 () Bool)

(declare-fun e!842349 () Bool)

(declare-fun e!842350 () Bool)

(assert (=> b!1507564 (= e!842349 e!842350)))

(declare-fun c!139406 () Bool)

(assert (=> b!1507564 (= c!139406 (validKeyInArray!0 (select (arr!48498 a!2804) #b00000000000000000000000000000000)))))

(declare-fun bm!68265 () Bool)

(declare-fun call!68268 () Bool)

(assert (=> bm!68265 (= call!68268 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2804 mask!2512))))

(declare-fun b!1507565 () Bool)

(declare-fun e!842351 () Bool)

(assert (=> b!1507565 (= e!842350 e!842351)))

(declare-fun lt!654391 () (_ BitVec 64))

(assert (=> b!1507565 (= lt!654391 (select (arr!48498 a!2804) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!50282 0))(
  ( (Unit!50283) )
))
(declare-fun lt!654389 () Unit!50282)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!100522 (_ BitVec 64) (_ BitVec 32)) Unit!50282)

(assert (=> b!1507565 (= lt!654389 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2804 lt!654391 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!100522 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1507565 (arrayContainsKey!0 a!2804 lt!654391 #b00000000000000000000000000000000)))

(declare-fun lt!654390 () Unit!50282)

(assert (=> b!1507565 (= lt!654390 lt!654389)))

(declare-fun res!1027832 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100522 (_ BitVec 32)) SeekEntryResult!12690)

(assert (=> b!1507565 (= res!1027832 (= (seekEntryOrOpen!0 (select (arr!48498 a!2804) #b00000000000000000000000000000000) a!2804 mask!2512) (Found!12690 #b00000000000000000000000000000000)))))

(assert (=> b!1507565 (=> (not res!1027832) (not e!842351))))

(declare-fun b!1507566 () Bool)

(assert (=> b!1507566 (= e!842350 call!68268)))

(declare-fun b!1507567 () Bool)

(assert (=> b!1507567 (= e!842351 call!68268)))

(declare-fun d!158289 () Bool)

(declare-fun res!1027833 () Bool)

(assert (=> d!158289 (=> res!1027833 e!842349)))

(assert (=> d!158289 (= res!1027833 (bvsge #b00000000000000000000000000000000 (size!49049 a!2804)))))

(assert (=> d!158289 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512) e!842349)))

(assert (= (and d!158289 (not res!1027833)) b!1507564))

(assert (= (and b!1507564 c!139406) b!1507565))

(assert (= (and b!1507564 (not c!139406)) b!1507566))

(assert (= (and b!1507565 res!1027832) b!1507567))

(assert (= (or b!1507567 b!1507566) bm!68265))

(assert (=> b!1507564 m!1390325))

(assert (=> b!1507564 m!1390325))

(assert (=> b!1507564 m!1390329))

(declare-fun m!1390345 () Bool)

(assert (=> bm!68265 m!1390345))

(assert (=> b!1507565 m!1390325))

(declare-fun m!1390347 () Bool)

(assert (=> b!1507565 m!1390347))

(declare-fun m!1390349 () Bool)

(assert (=> b!1507565 m!1390349))

(assert (=> b!1507565 m!1390325))

(declare-fun m!1390351 () Bool)

(assert (=> b!1507565 m!1390351))

(assert (=> b!1507511 d!158289))

(declare-fun b!1507670 () Bool)

(declare-fun e!842415 () SeekEntryResult!12690)

(assert (=> b!1507670 (= e!842415 (Intermediate!12690 true lt!654372 #b00000000000000000000000000000000))))

(declare-fun e!842413 () SeekEntryResult!12690)

(declare-fun b!1507671 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1507671 (= e!842413 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!654372 #b00000000000000000000000000000000 mask!2512) (select (arr!48498 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1507672 () Bool)

(declare-fun lt!654427 () SeekEntryResult!12690)

(assert (=> b!1507672 (and (bvsge (index!53156 lt!654427) #b00000000000000000000000000000000) (bvslt (index!53156 lt!654427) (size!49049 a!2804)))))

(declare-fun e!842411 () Bool)

(assert (=> b!1507672 (= e!842411 (= (select (arr!48498 a!2804) (index!53156 lt!654427)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!158297 () Bool)

(declare-fun e!842412 () Bool)

(assert (=> d!158297 e!842412))

(declare-fun c!139441 () Bool)

(assert (=> d!158297 (= c!139441 (and (is-Intermediate!12690 lt!654427) (undefined!13502 lt!654427)))))

(assert (=> d!158297 (= lt!654427 e!842415)))

(declare-fun c!139440 () Bool)

(assert (=> d!158297 (= c!139440 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!654428 () (_ BitVec 64))

(assert (=> d!158297 (= lt!654428 (select (arr!48498 a!2804) lt!654372))))

(assert (=> d!158297 (validMask!0 mask!2512)))

(assert (=> d!158297 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!654372 (select (arr!48498 a!2804) j!70) a!2804 mask!2512) lt!654427)))

(declare-fun b!1507673 () Bool)

(assert (=> b!1507673 (and (bvsge (index!53156 lt!654427) #b00000000000000000000000000000000) (bvslt (index!53156 lt!654427) (size!49049 a!2804)))))

(declare-fun res!1027872 () Bool)

(assert (=> b!1507673 (= res!1027872 (= (select (arr!48498 a!2804) (index!53156 lt!654427)) (select (arr!48498 a!2804) j!70)))))

(assert (=> b!1507673 (=> res!1027872 e!842411)))

(declare-fun e!842414 () Bool)

(assert (=> b!1507673 (= e!842414 e!842411)))

(declare-fun b!1507674 () Bool)

(assert (=> b!1507674 (= e!842412 e!842414)))

(declare-fun res!1027871 () Bool)

(assert (=> b!1507674 (= res!1027871 (and (is-Intermediate!12690 lt!654427) (not (undefined!13502 lt!654427)) (bvslt (x!134915 lt!654427) #b01111111111111111111111111111110) (bvsge (x!134915 lt!654427) #b00000000000000000000000000000000) (bvsge (x!134915 lt!654427) #b00000000000000000000000000000000)))))

(assert (=> b!1507674 (=> (not res!1027871) (not e!842414))))

(declare-fun b!1507675 () Bool)

(assert (=> b!1507675 (= e!842413 (Intermediate!12690 false lt!654372 #b00000000000000000000000000000000))))

(declare-fun b!1507676 () Bool)

(assert (=> b!1507676 (= e!842415 e!842413)))

(declare-fun c!139442 () Bool)

(assert (=> b!1507676 (= c!139442 (or (= lt!654428 (select (arr!48498 a!2804) j!70)) (= (bvadd lt!654428 lt!654428) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1507677 () Bool)

(assert (=> b!1507677 (= e!842412 (bvsge (x!134915 lt!654427) #b01111111111111111111111111111110))))

(declare-fun b!1507678 () Bool)

(assert (=> b!1507678 (and (bvsge (index!53156 lt!654427) #b00000000000000000000000000000000) (bvslt (index!53156 lt!654427) (size!49049 a!2804)))))

