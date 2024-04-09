; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128768 () Bool)

(assert start!128768)

(declare-fun b!1508513 () Bool)

(declare-fun e!842752 () Bool)

(declare-fun e!842751 () Bool)

(assert (=> b!1508513 (= e!842752 e!842751)))

(declare-fun res!1028600 () Bool)

(assert (=> b!1508513 (=> (not res!1028600) (not e!842751))))

(declare-datatypes ((SeekEntryResult!12714 0))(
  ( (MissingZero!12714 (index!53250 (_ BitVec 32))) (Found!12714 (index!53251 (_ BitVec 32))) (Intermediate!12714 (undefined!13526 Bool) (index!53252 (_ BitVec 32)) (x!135015 (_ BitVec 32))) (Undefined!12714) (MissingVacant!12714 (index!53253 (_ BitVec 32))) )
))
(declare-fun lt!654619 () SeekEntryResult!12714)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!100576 0))(
  ( (array!100577 (arr!48522 (Array (_ BitVec 32) (_ BitVec 64))) (size!49073 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100576)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100576 (_ BitVec 32)) SeekEntryResult!12714)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1508513 (= res!1028600 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48522 a!2804) j!70) mask!2512) (select (arr!48522 a!2804) j!70) a!2804 mask!2512) lt!654619))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1508513 (= lt!654619 (Intermediate!12714 false resIndex!21 resX!21))))

(declare-fun b!1508514 () Bool)

(declare-fun res!1028599 () Bool)

(assert (=> b!1508514 (=> (not res!1028599) (not e!842752))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100576 (_ BitVec 32)) Bool)

(assert (=> b!1508514 (= res!1028599 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1508515 () Bool)

(declare-fun res!1028595 () Bool)

(assert (=> b!1508515 (=> (not res!1028595) (not e!842752))))

(declare-datatypes ((List!35185 0))(
  ( (Nil!35182) (Cons!35181 (h!36591 (_ BitVec 64)) (t!49886 List!35185)) )
))
(declare-fun arrayNoDuplicates!0 (array!100576 (_ BitVec 32) List!35185) Bool)

(assert (=> b!1508515 (= res!1028595 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35182))))

(declare-fun res!1028593 () Bool)

(assert (=> start!128768 (=> (not res!1028593) (not e!842752))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128768 (= res!1028593 (validMask!0 mask!2512))))

(assert (=> start!128768 e!842752))

(assert (=> start!128768 true))

(declare-fun array_inv!37467 (array!100576) Bool)

(assert (=> start!128768 (array_inv!37467 a!2804)))

(declare-fun b!1508516 () Bool)

(declare-fun res!1028597 () Bool)

(assert (=> b!1508516 (=> (not res!1028597) (not e!842751))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1508516 (= res!1028597 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48522 a!2804) j!70) a!2804 mask!2512) lt!654619))))

(declare-fun b!1508517 () Bool)

(declare-fun lt!654618 () (_ BitVec 32))

(assert (=> b!1508517 (= e!842751 (and (bvsge mask!2512 #b00000000000000000000000000000000) (or (bvslt lt!654618 #b00000000000000000000000000000000) (bvsge lt!654618 (bvadd #b00000000000000000000000000000001 mask!2512)))))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1508517 (= lt!654618 (toIndex!0 (select (store (arr!48522 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512))))

(declare-fun b!1508518 () Bool)

(declare-fun res!1028594 () Bool)

(assert (=> b!1508518 (=> (not res!1028594) (not e!842752))))

(assert (=> b!1508518 (= res!1028594 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49073 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49073 a!2804))))))

(declare-fun b!1508519 () Bool)

(declare-fun res!1028601 () Bool)

(assert (=> b!1508519 (=> (not res!1028601) (not e!842752))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1508519 (= res!1028601 (validKeyInArray!0 (select (arr!48522 a!2804) j!70)))))

(declare-fun b!1508520 () Bool)

(declare-fun res!1028596 () Bool)

(assert (=> b!1508520 (=> (not res!1028596) (not e!842752))))

(assert (=> b!1508520 (= res!1028596 (validKeyInArray!0 (select (arr!48522 a!2804) i!961)))))

(declare-fun b!1508521 () Bool)

(declare-fun res!1028598 () Bool)

(assert (=> b!1508521 (=> (not res!1028598) (not e!842752))))

(assert (=> b!1508521 (= res!1028598 (and (= (size!49073 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49073 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49073 a!2804)) (not (= i!961 j!70))))))

(assert (= (and start!128768 res!1028593) b!1508521))

(assert (= (and b!1508521 res!1028598) b!1508520))

(assert (= (and b!1508520 res!1028596) b!1508519))

(assert (= (and b!1508519 res!1028601) b!1508514))

(assert (= (and b!1508514 res!1028599) b!1508515))

(assert (= (and b!1508515 res!1028595) b!1508518))

(assert (= (and b!1508518 res!1028594) b!1508513))

(assert (= (and b!1508513 res!1028600) b!1508516))

(assert (= (and b!1508516 res!1028597) b!1508517))

(declare-fun m!1391081 () Bool)

(assert (=> b!1508514 m!1391081))

(declare-fun m!1391083 () Bool)

(assert (=> b!1508515 m!1391083))

(declare-fun m!1391085 () Bool)

(assert (=> b!1508517 m!1391085))

(declare-fun m!1391087 () Bool)

(assert (=> b!1508517 m!1391087))

(assert (=> b!1508517 m!1391087))

(declare-fun m!1391089 () Bool)

(assert (=> b!1508517 m!1391089))

(declare-fun m!1391091 () Bool)

(assert (=> b!1508519 m!1391091))

(assert (=> b!1508519 m!1391091))

(declare-fun m!1391093 () Bool)

(assert (=> b!1508519 m!1391093))

(declare-fun m!1391095 () Bool)

(assert (=> start!128768 m!1391095))

(declare-fun m!1391097 () Bool)

(assert (=> start!128768 m!1391097))

(assert (=> b!1508513 m!1391091))

(assert (=> b!1508513 m!1391091))

(declare-fun m!1391099 () Bool)

(assert (=> b!1508513 m!1391099))

(assert (=> b!1508513 m!1391099))

(assert (=> b!1508513 m!1391091))

(declare-fun m!1391101 () Bool)

(assert (=> b!1508513 m!1391101))

(assert (=> b!1508516 m!1391091))

(assert (=> b!1508516 m!1391091))

(declare-fun m!1391103 () Bool)

(assert (=> b!1508516 m!1391103))

(declare-fun m!1391105 () Bool)

(assert (=> b!1508520 m!1391105))

(assert (=> b!1508520 m!1391105))

(declare-fun m!1391107 () Bool)

(assert (=> b!1508520 m!1391107))

(push 1)

(assert (not b!1508515))

(assert (not b!1508514))

(assert (not b!1508517))

(assert (not b!1508519))

(assert (not b!1508516))

(assert (not start!128768))

(assert (not b!1508520))

(assert (not b!1508513))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!158413 () Bool)

(declare-fun lt!654640 () (_ BitVec 32))

(declare-fun lt!654639 () (_ BitVec 32))

(assert (=> d!158413 (= lt!654640 (bvmul (bvxor lt!654639 (bvlshr lt!654639 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!158413 (= lt!654639 ((_ extract 31 0) (bvand (bvxor (select (store (arr!48522 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (bvlshr (select (store (arr!48522 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!158413 (and (bvsge mask!2512 #b00000000000000000000000000000000) (let ((res!1028618 (let ((h!36593 ((_ extract 31 0) (bvand (bvxor (select (store (arr!48522 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (bvlshr (select (store (arr!48522 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!135017 (bvmul (bvxor h!36593 (bvlshr h!36593 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!135017 (bvlshr x!135017 #b00000000000000000000000000001101)) mask!2512))))) (and (bvslt res!1028618 (bvadd mask!2512 #b00000000000000000000000000000001)) (bvsge res!1028618 #b00000000000000000000000000000000))))))

(assert (=> d!158413 (= (toIndex!0 (select (store (arr!48522 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (bvand (bvxor lt!654640 (bvlshr lt!654640 #b00000000000000000000000000001101)) mask!2512))))

(assert (=> b!1508517 d!158413))

(declare-fun d!158421 () Bool)

(assert (=> d!158421 (= (validMask!0 mask!2512) (and (or (= mask!2512 #b00000000000000000000000000000111) (= mask!2512 #b00000000000000000000000000001111) (= mask!2512 #b00000000000000000000000000011111) (= mask!2512 #b00000000000000000000000000111111) (= mask!2512 #b00000000000000000000000001111111) (= mask!2512 #b00000000000000000000000011111111) (= mask!2512 #b00000000000000000000000111111111) (= mask!2512 #b00000000000000000000001111111111) (= mask!2512 #b00000000000000000000011111111111) (= mask!2512 #b00000000000000000000111111111111) (= mask!2512 #b00000000000000000001111111111111) (= mask!2512 #b00000000000000000011111111111111) (= mask!2512 #b00000000000000000111111111111111) (= mask!2512 #b00000000000000001111111111111111) (= mask!2512 #b00000000000000011111111111111111) (= mask!2512 #b00000000000000111111111111111111) (= mask!2512 #b00000000000001111111111111111111) (= mask!2512 #b00000000000011111111111111111111) (= mask!2512 #b00000000000111111111111111111111) (= mask!2512 #b00000000001111111111111111111111) (= mask!2512 #b00000000011111111111111111111111) (= mask!2512 #b00000000111111111111111111111111) (= mask!2512 #b00000001111111111111111111111111) (= mask!2512 #b00000011111111111111111111111111) (= mask!2512 #b00000111111111111111111111111111) (= mask!2512 #b00001111111111111111111111111111) (= mask!2512 #b00011111111111111111111111111111) (= mask!2512 #b00111111111111111111111111111111)) (bvsle mask!2512 #b00111111111111111111111111111111)))))

(assert (=> start!128768 d!158421))

(declare-fun d!158425 () Bool)

(assert (=> d!158425 (= (array_inv!37467 a!2804) (bvsge (size!49073 a!2804) #b00000000000000000000000000000000))))

(assert (=> start!128768 d!158425))

(declare-fun b!1508658 () Bool)

(declare-fun e!842842 () SeekEntryResult!12714)

(assert (=> b!1508658 (= e!842842 (Intermediate!12714 true index!487 x!534))))

(declare-fun b!1508659 () Bool)

(declare-fun e!842841 () Bool)

(declare-fun e!842843 () Bool)

(assert (=> b!1508659 (= e!842841 e!842843)))

(declare-fun res!1028662 () Bool)

(declare-fun lt!654679 () SeekEntryResult!12714)

(assert (=> b!1508659 (= res!1028662 (and (is-Intermediate!12714 lt!654679) (not (undefined!13526 lt!654679)) (bvslt (x!135015 lt!654679) #b01111111111111111111111111111110) (bvsge (x!135015 lt!654679) #b00000000000000000000000000000000) (bvsge (x!135015 lt!654679) x!534)))))

(assert (=> b!1508659 (=> (not res!1028662) (not e!842843))))

(declare-fun b!1508660 () Bool)

(assert (=> b!1508660 (= e!842841 (bvsge (x!135015 lt!654679) #b01111111111111111111111111111110))))

(declare-fun b!1508661 () Bool)

(declare-fun e!842844 () SeekEntryResult!12714)

(assert (=> b!1508661 (= e!842844 (Intermediate!12714 false index!487 x!534))))

(declare-fun b!1508662 () Bool)

(assert (=> b!1508662 (= e!842842 e!842844)))

(declare-fun c!139542 () Bool)

(declare-fun lt!654678 () (_ BitVec 64))

(assert (=> b!1508662 (= c!139542 (or (= lt!654678 (select (arr!48522 a!2804) j!70)) (= (bvadd lt!654678 lt!654678) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1508663 () Bool)

(assert (=> b!1508663 (and (bvsge (index!53252 lt!654679) #b00000000000000000000000000000000) (bvslt (index!53252 lt!654679) (size!49073 a!2804)))))

(declare-fun e!842845 () Bool)

(assert (=> b!1508663 (= e!842845 (= (select (arr!48522 a!2804) (index!53252 lt!654679)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1508657 () Bool)

(assert (=> b!1508657 (and (bvsge (index!53252 lt!654679) #b00000000000000000000000000000000) (bvslt (index!53252 lt!654679) (size!49073 a!2804)))))

(declare-fun res!1028663 () Bool)

(assert (=> b!1508657 (= res!1028663 (= (select (arr!48522 a!2804) (index!53252 lt!654679)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1508657 (=> res!1028663 e!842845)))

(declare-fun d!158427 () Bool)

(assert (=> d!158427 e!842841))

(declare-fun c!139544 () Bool)

(assert (=> d!158427 (= c!139544 (and (is-Intermediate!12714 lt!654679) (undefined!13526 lt!654679)))))

(assert (=> d!158427 (= lt!654679 e!842842)))

(declare-fun c!139543 () Bool)

(assert (=> d!158427 (= c!139543 (bvsge x!534 #b01111111111111111111111111111110))))

(assert (=> d!158427 (= lt!654678 (select (arr!48522 a!2804) index!487))))

(assert (=> d!158427 (validMask!0 mask!2512)))

(assert (=> d!158427 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48522 a!2804) j!70) a!2804 mask!2512) lt!654679)))

(declare-fun b!1508664 () Bool)

(assert (=> b!1508664 (and (bvsge (index!53252 lt!654679) #b00000000000000000000000000000000) (bvslt (index!53252 lt!654679) (size!49073 a!2804)))))

(declare-fun res!1028664 () Bool)

(assert (=> b!1508664 (= res!1028664 (= (select (arr!48522 a!2804) (index!53252 lt!654679)) (select (arr!48522 a!2804) j!70)))))

(assert (=> b!1508664 (=> res!1028664 e!842845)))

(assert (=> b!1508664 (= e!842843 e!842845)))

(declare-fun b!1508665 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1508665 (= e!842844 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!534 #b00000000000000000000000000000001) (nextIndex!0 index!487 x!534 mask!2512) (select (arr!48522 a!2804) j!70) a!2804 mask!2512))))

(assert (= (and d!158427 c!139543) b!1508658))

(assert (= (and d!158427 (not c!139543)) b!1508662))

(assert (= (and b!1508662 c!139542) b!1508661))

(assert (= (and b!1508662 (not c!139542)) b!1508665))

(assert (= (and d!158427 c!139544) b!1508660))

(assert (= (and d!158427 (not c!139544)) b!1508659))

(assert (= (and b!1508659 res!1028662) b!1508664))

(assert (= (and b!1508664 (not res!1028664)) b!1508657))

(assert (= (and b!1508657 (not res!1028663)) b!1508663))

(declare-fun m!1391165 () Bool)

(assert (=> b!1508664 m!1391165))

(declare-fun m!1391167 () Bool)

(assert (=> d!158427 m!1391167))

(assert (=> d!158427 m!1391095))

(declare-fun m!1391169 () Bool)

(assert (=> b!1508665 m!1391169))

(assert (=> b!1508665 m!1391169))

(assert (=> b!1508665 m!1391091))

(declare-fun m!1391171 () Bool)

(assert (=> b!1508665 m!1391171))

(assert (=> b!1508657 m!1391165))

(assert (=> b!1508663 m!1391165))

(assert (=> b!1508516 d!158427))

(declare-fun d!158447 () Bool)

(assert (=> d!158447 (= (validKeyInArray!0 (select (arr!48522 a!2804) i!961)) (and (not (= (select (arr!48522 a!2804) i!961) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48522 a!2804) i!961) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1508520 d!158447))

(declare-fun b!1508685 () Bool)

(declare-fun e!842859 () Bool)

(declare-fun call!68307 () Bool)

(assert (=> b!1508685 (= e!842859 call!68307)))

(declare-fun b!1508686 () Bool)

(declare-fun e!842861 () Bool)

(declare-fun contains!9985 (List!35185 (_ BitVec 64)) Bool)

(assert (=> b!1508686 (= e!842861 (contains!9985 Nil!35182 (select (arr!48522 a!2804) #b00000000000000000000000000000000)))))

(declare-fun b!1508687 () Bool)

(declare-fun e!842860 () Bool)

(declare-fun e!842862 () Bool)

(assert (=> b!1508687 (= e!842860 e!842862)))

(declare-fun res!1028676 () Bool)

(assert (=> b!1508687 (=> (not res!1028676) (not e!842862))))

(assert (=> b!1508687 (= res!1028676 (not e!842861))))

(declare-fun res!1028674 () Bool)

(assert (=> b!1508687 (=> (not res!1028674) (not e!842861))))

(assert (=> b!1508687 (= res!1028674 (validKeyInArray!0 (select (arr!48522 a!2804) #b00000000000000000000000000000000)))))

(declare-fun bm!68304 () Bool)

(declare-fun c!139550 () Bool)

(assert (=> bm!68304 (= call!68307 (arrayNoDuplicates!0 a!2804 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!139550 (Cons!35181 (select (arr!48522 a!2804) #b00000000000000000000000000000000) Nil!35182) Nil!35182)))))

(declare-fun b!1508688 () Bool)

(assert (=> b!1508688 (= e!842859 call!68307)))

(declare-fun b!1508689 () Bool)

(assert (=> b!1508689 (= e!842862 e!842859)))

(assert (=> b!1508689 (= c!139550 (validKeyInArray!0 (select (arr!48522 a!2804) #b00000000000000000000000000000000)))))

(declare-fun d!158451 () Bool)

(declare-fun res!1028675 () Bool)

(assert (=> d!158451 (=> res!1028675 e!842860)))

(assert (=> d!158451 (= res!1028675 (bvsge #b00000000000000000000000000000000 (size!49073 a!2804)))))

(assert (=> d!158451 (= (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35182) e!842860)))

(assert (= (and d!158451 (not res!1028675)) b!1508687))

(assert (= (and b!1508687 res!1028674) b!1508686))

(assert (= (and b!1508687 res!1028676) b!1508689))

(assert (= (and b!1508689 c!139550) b!1508688))

(assert (= (and b!1508689 (not c!139550)) b!1508685))

(assert (= (or b!1508688 b!1508685) bm!68304))

(declare-fun m!1391181 () Bool)

(assert (=> b!1508686 m!1391181))

(assert (=> b!1508686 m!1391181))

(declare-fun m!1391183 () Bool)

(assert (=> b!1508686 m!1391183))

(assert (=> b!1508687 m!1391181))

(assert (=> b!1508687 m!1391181))

(declare-fun m!1391185 () Bool)

(assert (=> b!1508687 m!1391185))

(assert (=> bm!68304 m!1391181))

(declare-fun m!1391187 () Bool)

(assert (=> bm!68304 m!1391187))

(assert (=> b!1508689 m!1391181))

(assert (=> b!1508689 m!1391181))

(assert (=> b!1508689 m!1391185))

(assert (=> b!1508515 d!158451))

(declare-fun e!842864 () SeekEntryResult!12714)

(declare-fun b!1508691 () Bool)

(assert (=> b!1508691 (= e!842864 (Intermediate!12714 true (toIndex!0 (select (arr!48522 a!2804) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1508692 () Bool)

(declare-fun e!842863 () Bool)

(declare-fun e!842865 () Bool)

(assert (=> b!1508692 (= e!842863 e!842865)))

(declare-fun res!1028677 () Bool)

(declare-fun lt!654683 () SeekEntryResult!12714)

(assert (=> b!1508692 (= res!1028677 (and (is-Intermediate!12714 lt!654683) (not (undefined!13526 lt!654683)) (bvslt (x!135015 lt!654683) #b01111111111111111111111111111110) (bvsge (x!135015 lt!654683) #b00000000000000000000000000000000) (bvsge (x!135015 lt!654683) #b00000000000000000000000000000000)))))

(assert (=> b!1508692 (=> (not res!1028677) (not e!842865))))

(declare-fun b!1508693 () Bool)

(assert (=> b!1508693 (= e!842863 (bvsge (x!135015 lt!654683) #b01111111111111111111111111111110))))

(declare-fun e!842866 () SeekEntryResult!12714)

(declare-fun b!1508694 () Bool)

(assert (=> b!1508694 (= e!842866 (Intermediate!12714 false (toIndex!0 (select (arr!48522 a!2804) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1508695 () Bool)

(assert (=> b!1508695 (= e!842864 e!842866)))

(declare-fun lt!654682 () (_ BitVec 64))

(declare-fun c!139551 () Bool)

(assert (=> b!1508695 (= c!139551 (or (= lt!654682 (select (arr!48522 a!2804) j!70)) (= (bvadd lt!654682 lt!654682) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1508696 () Bool)

(assert (=> b!1508696 (and (bvsge (index!53252 lt!654683) #b00000000000000000000000000000000) (bvslt (index!53252 lt!654683) (size!49073 a!2804)))))

(declare-fun e!842867 () Bool)

(assert (=> b!1508696 (= e!842867 (= (select (arr!48522 a!2804) (index!53252 lt!654683)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1508690 () Bool)

(assert (=> b!1508690 (and (bvsge (index!53252 lt!654683) #b00000000000000000000000000000000) (bvslt (index!53252 lt!654683) (size!49073 a!2804)))))

(declare-fun res!1028678 () Bool)

(assert (=> b!1508690 (= res!1028678 (= (select (arr!48522 a!2804) (index!53252 lt!654683)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1508690 (=> res!1028678 e!842867)))

(declare-fun d!158453 () Bool)

(assert (=> d!158453 e!842863))

(declare-fun c!139553 () Bool)

(assert (=> d!158453 (= c!139553 (and (is-Intermediate!12714 lt!654683) (undefined!13526 lt!654683)))))

(assert (=> d!158453 (= lt!654683 e!842864)))

(declare-fun c!139552 () Bool)

(assert (=> d!158453 (= c!139552 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!158453 (= lt!654682 (select (arr!48522 a!2804) (toIndex!0 (select (arr!48522 a!2804) j!70) mask!2512)))))

(assert (=> d!158453 (validMask!0 mask!2512)))

(assert (=> d!158453 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48522 a!2804) j!70) mask!2512) (select (arr!48522 a!2804) j!70) a!2804 mask!2512) lt!654683)))

(declare-fun b!1508697 () Bool)

(assert (=> b!1508697 (and (bvsge (index!53252 lt!654683) #b00000000000000000000000000000000) (bvslt (index!53252 lt!654683) (size!49073 a!2804)))))

(declare-fun res!1028679 () Bool)

(assert (=> b!1508697 (= res!1028679 (= (select (arr!48522 a!2804) (index!53252 lt!654683)) (select (arr!48522 a!2804) j!70)))))

(assert (=> b!1508697 (=> res!1028679 e!842867)))

(assert (=> b!1508697 (= e!842865 e!842867)))

(declare-fun b!1508698 () Bool)

(assert (=> b!1508698 (= e!842866 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!48522 a!2804) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512) (select (arr!48522 a!2804) j!70) a!2804 mask!2512))))

(assert (= (and d!158453 c!139552) b!1508691))

(assert (= (and d!158453 (not c!139552)) b!1508695))

(assert (= (and b!1508695 c!139551) b!1508694))

(assert (= (and b!1508695 (not c!139551)) b!1508698))

(assert (= (and d!158453 c!139553) b!1508693))

(assert (= (and d!158453 (not c!139553)) b!1508692))

(assert (= (and b!1508692 res!1028677) b!1508697))

(assert (= (and b!1508697 (not res!1028679)) b!1508690))

(assert (= (and b!1508690 (not res!1028678)) b!1508696))

(declare-fun m!1391189 () Bool)

(assert (=> b!1508697 m!1391189))

(assert (=> d!158453 m!1391099))

(declare-fun m!1391191 () Bool)

(assert (=> d!158453 m!1391191))

(assert (=> d!158453 m!1391095))

(assert (=> b!1508698 m!1391099))

(declare-fun m!1391193 () Bool)

(assert (=> b!1508698 m!1391193))

(assert (=> b!1508698 m!1391193))

(assert (=> b!1508698 m!1391091))

(declare-fun m!1391195 () Bool)

(assert (=> b!1508698 m!1391195))

(assert (=> b!1508690 m!1391189))

(assert (=> b!1508696 m!1391189))

(assert (=> b!1508513 d!158453))

(declare-fun d!158455 () Bool)

(declare-fun lt!654685 () (_ BitVec 32))

(declare-fun lt!654684 () (_ BitVec 32))

(assert (=> d!158455 (= lt!654685 (bvmul (bvxor lt!654684 (bvlshr lt!654684 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!158455 (= lt!654684 ((_ extract 31 0) (bvand (bvxor (select (arr!48522 a!2804) j!70) (bvlshr (select (arr!48522 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!158455 (and (bvsge mask!2512 #b00000000000000000000000000000000) (let ((res!1028618 (let ((h!36593 ((_ extract 31 0) (bvand (bvxor (select (arr!48522 a!2804) j!70) (bvlshr (select (arr!48522 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!135017 (bvmul (bvxor h!36593 (bvlshr h!36593 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!135017 (bvlshr x!135017 #b00000000000000000000000000001101)) mask!2512))))) (and (bvslt res!1028618 (bvadd mask!2512 #b00000000000000000000000000000001)) (bvsge res!1028618 #b00000000000000000000000000000000))))))

(assert (=> d!158455 (= (toIndex!0 (select (arr!48522 a!2804) j!70) mask!2512) (bvand (bvxor lt!654685 (bvlshr lt!654685 #b00000000000000000000000000001101)) mask!2512))))

(assert (=> b!1508513 d!158455))

(declare-fun b!1508707 () Bool)

(declare-fun e!842874 () Bool)

(declare-fun call!68310 () Bool)

(assert (=> b!1508707 (= e!842874 call!68310)))

(declare-fun b!1508708 () Bool)

(declare-fun e!842876 () Bool)

(assert (=> b!1508708 (= e!842876 e!842874)))

(declare-fun lt!654692 () (_ BitVec 64))

(assert (=> b!1508708 (= lt!654692 (select (arr!48522 a!2804) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!50294 0))(
  ( (Unit!50295) )
))
(declare-fun lt!654693 () Unit!50294)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!100576 (_ BitVec 64) (_ BitVec 32)) Unit!50294)

(assert (=> b!1508708 (= lt!654693 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2804 lt!654692 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!100576 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1508708 (arrayContainsKey!0 a!2804 lt!654692 #b00000000000000000000000000000000)))

(declare-fun lt!654694 () Unit!50294)

(assert (=> b!1508708 (= lt!654694 lt!654693)))

(declare-fun res!1028684 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100576 (_ BitVec 32)) SeekEntryResult!12714)

(assert (=> b!1508708 (= res!1028684 (= (seekEntryOrOpen!0 (select (arr!48522 a!2804) #b00000000000000000000000000000000) a!2804 mask!2512) (Found!12714 #b00000000000000000000000000000000)))))

(assert (=> b!1508708 (=> (not res!1028684) (not e!842874))))

(declare-fun d!158457 () Bool)

(declare-fun res!1028685 () Bool)

(declare-fun e!842875 () Bool)

(assert (=> d!158457 (=> res!1028685 e!842875)))

(assert (=> d!158457 (= res!1028685 (bvsge #b00000000000000000000000000000000 (size!49073 a!2804)))))

(assert (=> d!158457 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512) e!842875)))

(declare-fun b!1508709 () Bool)

(assert (=> b!1508709 (= e!842875 e!842876)))

(declare-fun c!139556 () Bool)

(assert (=> b!1508709 (= c!139556 (validKeyInArray!0 (select (arr!48522 a!2804) #b00000000000000000000000000000000)))))

(declare-fun bm!68307 () Bool)

(assert (=> bm!68307 (= call!68310 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2804 mask!2512))))

(declare-fun b!1508710 () Bool)

(assert (=> b!1508710 (= e!842876 call!68310)))

(assert (= (and d!158457 (not res!1028685)) b!1508709))

(assert (= (and b!1508709 c!139556) b!1508708))

(assert (= (and b!1508709 (not c!139556)) b!1508710))

(assert (= (and b!1508708 res!1028684) b!1508707))

(assert (= (or b!1508707 b!1508710) bm!68307))

(assert (=> b!1508708 m!1391181))

(declare-fun m!1391197 () Bool)

(assert (=> b!1508708 m!1391197))

(declare-fun m!1391199 () Bool)

(assert (=> b!1508708 m!1391199))

(assert (=> b!1508708 m!1391181))

(declare-fun m!1391201 () Bool)

(assert (=> b!1508708 m!1391201))

(assert (=> b!1508709 m!1391181))

(assert (=> b!1508709 m!1391181))

(assert (=> b!1508709 m!1391185))

(declare-fun m!1391203 () Bool)

(assert (=> bm!68307 m!1391203))

(assert (=> b!1508514 d!158457))

(declare-fun d!158459 () Bool)

(assert (=> d!158459 (= (validKeyInArray!0 (select (arr!48522 a!2804) j!70)) (and (not (= (select (arr!48522 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48522 a!2804) j!70) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1508519 d!158459))

(push 1)

