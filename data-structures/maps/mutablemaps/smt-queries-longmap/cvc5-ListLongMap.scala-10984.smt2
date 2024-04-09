; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128698 () Bool)

(assert start!128698)

(declare-fun b!1507946 () Bool)

(declare-fun e!842503 () Bool)

(declare-fun mask!2512 () (_ BitVec 32))

(assert (=> b!1507946 (= e!842503 (and (bvsge mask!2512 #b00000000000000000000000000000000) (bvsgt mask!2512 #b00111111111111111111111111111111)))))

(declare-fun b!1507947 () Bool)

(declare-fun e!842502 () Bool)

(assert (=> b!1507947 (= e!842502 e!842503)))

(declare-fun res!1028138 () Bool)

(assert (=> b!1507947 (=> (not res!1028138) (not e!842503))))

(declare-datatypes ((SeekEntryResult!12700 0))(
  ( (MissingZero!12700 (index!53194 (_ BitVec 32))) (Found!12700 (index!53195 (_ BitVec 32))) (Intermediate!12700 (undefined!13512 Bool) (index!53196 (_ BitVec 32)) (x!134963 (_ BitVec 32))) (Undefined!12700) (MissingVacant!12700 (index!53197 (_ BitVec 32))) )
))
(declare-fun lt!654472 () SeekEntryResult!12700)

(declare-fun j!70 () (_ BitVec 32))

(declare-datatypes ((array!100545 0))(
  ( (array!100546 (arr!48508 (Array (_ BitVec 32) (_ BitVec 64))) (size!49059 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100545)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100545 (_ BitVec 32)) SeekEntryResult!12700)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1507947 (= res!1028138 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48508 a!2804) j!70) mask!2512) (select (arr!48508 a!2804) j!70) a!2804 mask!2512) lt!654472))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1507947 (= lt!654472 (Intermediate!12700 false resIndex!21 resX!21))))

(declare-fun res!1028135 () Bool)

(assert (=> start!128698 (=> (not res!1028135) (not e!842502))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128698 (= res!1028135 (validMask!0 mask!2512))))

(assert (=> start!128698 e!842502))

(assert (=> start!128698 true))

(declare-fun array_inv!37453 (array!100545) Bool)

(assert (=> start!128698 (array_inv!37453 a!2804)))

(declare-fun b!1507948 () Bool)

(declare-fun res!1028136 () Bool)

(assert (=> b!1507948 (=> (not res!1028136) (not e!842502))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1507948 (= res!1028136 (validKeyInArray!0 (select (arr!48508 a!2804) i!961)))))

(declare-fun b!1507949 () Bool)

(declare-fun res!1028133 () Bool)

(assert (=> b!1507949 (=> (not res!1028133) (not e!842502))))

(declare-datatypes ((List!35171 0))(
  ( (Nil!35168) (Cons!35167 (h!36574 (_ BitVec 64)) (t!49872 List!35171)) )
))
(declare-fun arrayNoDuplicates!0 (array!100545 (_ BitVec 32) List!35171) Bool)

(assert (=> b!1507949 (= res!1028133 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35168))))

(declare-fun b!1507950 () Bool)

(declare-fun res!1028134 () Bool)

(assert (=> b!1507950 (=> (not res!1028134) (not e!842502))))

(assert (=> b!1507950 (= res!1028134 (validKeyInArray!0 (select (arr!48508 a!2804) j!70)))))

(declare-fun b!1507951 () Bool)

(declare-fun res!1028132 () Bool)

(assert (=> b!1507951 (=> (not res!1028132) (not e!842502))))

(assert (=> b!1507951 (= res!1028132 (and (= (size!49059 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49059 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49059 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1507952 () Bool)

(declare-fun res!1028139 () Bool)

(assert (=> b!1507952 (=> (not res!1028139) (not e!842503))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1507952 (= res!1028139 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48508 a!2804) j!70) a!2804 mask!2512) lt!654472))))

(declare-fun b!1507953 () Bool)

(declare-fun res!1028137 () Bool)

(assert (=> b!1507953 (=> (not res!1028137) (not e!842502))))

(assert (=> b!1507953 (= res!1028137 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49059 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49059 a!2804))))))

(declare-fun b!1507954 () Bool)

(declare-fun res!1028131 () Bool)

(assert (=> b!1507954 (=> (not res!1028131) (not e!842502))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100545 (_ BitVec 32)) Bool)

(assert (=> b!1507954 (= res!1028131 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(assert (= (and start!128698 res!1028135) b!1507951))

(assert (= (and b!1507951 res!1028132) b!1507948))

(assert (= (and b!1507948 res!1028136) b!1507950))

(assert (= (and b!1507950 res!1028134) b!1507954))

(assert (= (and b!1507954 res!1028131) b!1507949))

(assert (= (and b!1507949 res!1028133) b!1507953))

(assert (= (and b!1507953 res!1028137) b!1507947))

(assert (= (and b!1507947 res!1028138) b!1507952))

(assert (= (and b!1507952 res!1028139) b!1507946))

(declare-fun m!1390611 () Bool)

(assert (=> b!1507950 m!1390611))

(assert (=> b!1507950 m!1390611))

(declare-fun m!1390613 () Bool)

(assert (=> b!1507950 m!1390613))

(assert (=> b!1507952 m!1390611))

(assert (=> b!1507952 m!1390611))

(declare-fun m!1390615 () Bool)

(assert (=> b!1507952 m!1390615))

(assert (=> b!1507947 m!1390611))

(assert (=> b!1507947 m!1390611))

(declare-fun m!1390617 () Bool)

(assert (=> b!1507947 m!1390617))

(assert (=> b!1507947 m!1390617))

(assert (=> b!1507947 m!1390611))

(declare-fun m!1390619 () Bool)

(assert (=> b!1507947 m!1390619))

(declare-fun m!1390621 () Bool)

(assert (=> b!1507949 m!1390621))

(declare-fun m!1390623 () Bool)

(assert (=> b!1507948 m!1390623))

(assert (=> b!1507948 m!1390623))

(declare-fun m!1390625 () Bool)

(assert (=> b!1507948 m!1390625))

(declare-fun m!1390627 () Bool)

(assert (=> b!1507954 m!1390627))

(declare-fun m!1390629 () Bool)

(assert (=> start!128698 m!1390629))

(declare-fun m!1390631 () Bool)

(assert (=> start!128698 m!1390631))

(push 1)

(assert (not b!1507948))

(assert (not b!1507952))

(assert (not b!1507949))

(assert (not b!1507947))

(assert (not b!1507950))

(assert (not start!128698))

(assert (not b!1507954))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!158345 () Bool)

(assert (=> d!158345 (= (validMask!0 mask!2512) (and (or (= mask!2512 #b00000000000000000000000000000111) (= mask!2512 #b00000000000000000000000000001111) (= mask!2512 #b00000000000000000000000000011111) (= mask!2512 #b00000000000000000000000000111111) (= mask!2512 #b00000000000000000000000001111111) (= mask!2512 #b00000000000000000000000011111111) (= mask!2512 #b00000000000000000000000111111111) (= mask!2512 #b00000000000000000000001111111111) (= mask!2512 #b00000000000000000000011111111111) (= mask!2512 #b00000000000000000000111111111111) (= mask!2512 #b00000000000000000001111111111111) (= mask!2512 #b00000000000000000011111111111111) (= mask!2512 #b00000000000000000111111111111111) (= mask!2512 #b00000000000000001111111111111111) (= mask!2512 #b00000000000000011111111111111111) (= mask!2512 #b00000000000000111111111111111111) (= mask!2512 #b00000000000001111111111111111111) (= mask!2512 #b00000000000011111111111111111111) (= mask!2512 #b00000000000111111111111111111111) (= mask!2512 #b00000000001111111111111111111111) (= mask!2512 #b00000000011111111111111111111111) (= mask!2512 #b00000000111111111111111111111111) (= mask!2512 #b00000001111111111111111111111111) (= mask!2512 #b00000011111111111111111111111111) (= mask!2512 #b00000111111111111111111111111111) (= mask!2512 #b00001111111111111111111111111111) (= mask!2512 #b00011111111111111111111111111111) (= mask!2512 #b00111111111111111111111111111111)) (bvsle mask!2512 #b00111111111111111111111111111111)))))

(assert (=> start!128698 d!158345))

(declare-fun d!158351 () Bool)

(assert (=> d!158351 (= (array_inv!37453 a!2804) (bvsge (size!49059 a!2804) #b00000000000000000000000000000000))))

(assert (=> start!128698 d!158351))

(declare-fun b!1508117 () Bool)

(declare-fun e!842589 () SeekEntryResult!12700)

(assert (=> b!1508117 (= e!842589 (Intermediate!12700 false index!487 x!534))))

(declare-fun b!1508118 () Bool)

(declare-fun lt!654507 () SeekEntryResult!12700)

(assert (=> b!1508118 (and (bvsge (index!53196 lt!654507) #b00000000000000000000000000000000) (bvslt (index!53196 lt!654507) (size!49059 a!2804)))))

(declare-fun res!1028239 () Bool)

(assert (=> b!1508118 (= res!1028239 (= (select (arr!48508 a!2804) (index!53196 lt!654507)) (select (arr!48508 a!2804) j!70)))))

(declare-fun e!842592 () Bool)

(assert (=> b!1508118 (=> res!1028239 e!842592)))

(declare-fun e!842593 () Bool)

(assert (=> b!1508118 (= e!842593 e!842592)))

(declare-fun b!1508119 () Bool)

(assert (=> b!1508119 (and (bvsge (index!53196 lt!654507) #b00000000000000000000000000000000) (bvslt (index!53196 lt!654507) (size!49059 a!2804)))))

(declare-fun res!1028237 () Bool)

(assert (=> b!1508119 (= res!1028237 (= (select (arr!48508 a!2804) (index!53196 lt!654507)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1508119 (=> res!1028237 e!842592)))

(declare-fun b!1508120 () Bool)

(declare-fun e!842590 () SeekEntryResult!12700)

(assert (=> b!1508120 (= e!842590 (Intermediate!12700 true index!487 x!534))))

(declare-fun b!1508121 () Bool)

(declare-fun e!842591 () Bool)

(assert (=> b!1508121 (= e!842591 (bvsge (x!134963 lt!654507) #b01111111111111111111111111111110))))

(declare-fun d!158353 () Bool)

(assert (=> d!158353 e!842591))

(declare-fun c!139484 () Bool)

(assert (=> d!158353 (= c!139484 (and (is-Intermediate!12700 lt!654507) (undefined!13512 lt!654507)))))

(assert (=> d!158353 (= lt!654507 e!842590)))

(declare-fun c!139483 () Bool)

(assert (=> d!158353 (= c!139483 (bvsge x!534 #b01111111111111111111111111111110))))

(declare-fun lt!654506 () (_ BitVec 64))

(assert (=> d!158353 (= lt!654506 (select (arr!48508 a!2804) index!487))))

(assert (=> d!158353 (validMask!0 mask!2512)))

(assert (=> d!158353 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48508 a!2804) j!70) a!2804 mask!2512) lt!654507)))

(declare-fun b!1508122 () Bool)

(assert (=> b!1508122 (and (bvsge (index!53196 lt!654507) #b00000000000000000000000000000000) (bvslt (index!53196 lt!654507) (size!49059 a!2804)))))

(assert (=> b!1508122 (= e!842592 (= (select (arr!48508 a!2804) (index!53196 lt!654507)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1508123 () Bool)

(assert (=> b!1508123 (= e!842590 e!842589)))

(declare-fun c!139482 () Bool)

(assert (=> b!1508123 (= c!139482 (or (= lt!654506 (select (arr!48508 a!2804) j!70)) (= (bvadd lt!654506 lt!654506) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1508124 () Bool)

(assert (=> b!1508124 (= e!842591 e!842593)))

(declare-fun res!1028238 () Bool)

(assert (=> b!1508124 (= res!1028238 (and (is-Intermediate!12700 lt!654507) (not (undefined!13512 lt!654507)) (bvslt (x!134963 lt!654507) #b01111111111111111111111111111110) (bvsge (x!134963 lt!654507) #b00000000000000000000000000000000) (bvsge (x!134963 lt!654507) x!534)))))

(assert (=> b!1508124 (=> (not res!1028238) (not e!842593))))

(declare-fun b!1508125 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1508125 (= e!842589 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!534 #b00000000000000000000000000000001) (nextIndex!0 index!487 x!534 mask!2512) (select (arr!48508 a!2804) j!70) a!2804 mask!2512))))

(assert (= (and d!158353 c!139483) b!1508120))

(assert (= (and d!158353 (not c!139483)) b!1508123))

(assert (= (and b!1508123 c!139482) b!1508117))

(assert (= (and b!1508123 (not c!139482)) b!1508125))

(assert (= (and d!158353 c!139484) b!1508121))

(assert (= (and d!158353 (not c!139484)) b!1508124))

(assert (= (and b!1508124 res!1028238) b!1508118))

(assert (= (and b!1508118 (not res!1028239)) b!1508119))

(assert (= (and b!1508119 (not res!1028237)) b!1508122))

(declare-fun m!1390721 () Bool)

(assert (=> b!1508122 m!1390721))

(declare-fun m!1390723 () Bool)

(assert (=> b!1508125 m!1390723))

(assert (=> b!1508125 m!1390723))

(assert (=> b!1508125 m!1390611))

(declare-fun m!1390725 () Bool)

(assert (=> b!1508125 m!1390725))

(assert (=> b!1508118 m!1390721))

(assert (=> b!1508119 m!1390721))

(declare-fun m!1390727 () Bool)

(assert (=> d!158353 m!1390727))

(assert (=> d!158353 m!1390629))

(assert (=> b!1507952 d!158353))

(declare-fun e!842594 () SeekEntryResult!12700)

(declare-fun b!1508126 () Bool)

(assert (=> b!1508126 (= e!842594 (Intermediate!12700 false (toIndex!0 (select (arr!48508 a!2804) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1508127 () Bool)

(declare-fun lt!654509 () SeekEntryResult!12700)

(assert (=> b!1508127 (and (bvsge (index!53196 lt!654509) #b00000000000000000000000000000000) (bvslt (index!53196 lt!654509) (size!49059 a!2804)))))

(declare-fun res!1028242 () Bool)

(assert (=> b!1508127 (= res!1028242 (= (select (arr!48508 a!2804) (index!53196 lt!654509)) (select (arr!48508 a!2804) j!70)))))

(declare-fun e!842597 () Bool)

(assert (=> b!1508127 (=> res!1028242 e!842597)))

(declare-fun e!842598 () Bool)

(assert (=> b!1508127 (= e!842598 e!842597)))

(declare-fun b!1508128 () Bool)

(assert (=> b!1508128 (and (bvsge (index!53196 lt!654509) #b00000000000000000000000000000000) (bvslt (index!53196 lt!654509) (size!49059 a!2804)))))

(declare-fun res!1028240 () Bool)

(assert (=> b!1508128 (= res!1028240 (= (select (arr!48508 a!2804) (index!53196 lt!654509)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1508128 (=> res!1028240 e!842597)))

(declare-fun b!1508129 () Bool)

(declare-fun e!842595 () SeekEntryResult!12700)

(assert (=> b!1508129 (= e!842595 (Intermediate!12700 true (toIndex!0 (select (arr!48508 a!2804) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1508130 () Bool)

(declare-fun e!842596 () Bool)

(assert (=> b!1508130 (= e!842596 (bvsge (x!134963 lt!654509) #b01111111111111111111111111111110))))

(declare-fun d!158365 () Bool)

(assert (=> d!158365 e!842596))

(declare-fun c!139487 () Bool)

(assert (=> d!158365 (= c!139487 (and (is-Intermediate!12700 lt!654509) (undefined!13512 lt!654509)))))

(assert (=> d!158365 (= lt!654509 e!842595)))

(declare-fun c!139486 () Bool)

(assert (=> d!158365 (= c!139486 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!654508 () (_ BitVec 64))

(assert (=> d!158365 (= lt!654508 (select (arr!48508 a!2804) (toIndex!0 (select (arr!48508 a!2804) j!70) mask!2512)))))

(assert (=> d!158365 (validMask!0 mask!2512)))

(assert (=> d!158365 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48508 a!2804) j!70) mask!2512) (select (arr!48508 a!2804) j!70) a!2804 mask!2512) lt!654509)))

(declare-fun b!1508131 () Bool)

(assert (=> b!1508131 (and (bvsge (index!53196 lt!654509) #b00000000000000000000000000000000) (bvslt (index!53196 lt!654509) (size!49059 a!2804)))))

(assert (=> b!1508131 (= e!842597 (= (select (arr!48508 a!2804) (index!53196 lt!654509)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1508132 () Bool)

(assert (=> b!1508132 (= e!842595 e!842594)))

(declare-fun c!139485 () Bool)

(assert (=> b!1508132 (= c!139485 (or (= lt!654508 (select (arr!48508 a!2804) j!70)) (= (bvadd lt!654508 lt!654508) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1508133 () Bool)

(assert (=> b!1508133 (= e!842596 e!842598)))

(declare-fun res!1028241 () Bool)

(assert (=> b!1508133 (= res!1028241 (and (is-Intermediate!12700 lt!654509) (not (undefined!13512 lt!654509)) (bvslt (x!134963 lt!654509) #b01111111111111111111111111111110) (bvsge (x!134963 lt!654509) #b00000000000000000000000000000000) (bvsge (x!134963 lt!654509) #b00000000000000000000000000000000)))))

(assert (=> b!1508133 (=> (not res!1028241) (not e!842598))))

(declare-fun b!1508134 () Bool)

(assert (=> b!1508134 (= e!842594 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!48508 a!2804) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512) (select (arr!48508 a!2804) j!70) a!2804 mask!2512))))

(assert (= (and d!158365 c!139486) b!1508129))

(assert (= (and d!158365 (not c!139486)) b!1508132))

(assert (= (and b!1508132 c!139485) b!1508126))

(assert (= (and b!1508132 (not c!139485)) b!1508134))

(assert (= (and d!158365 c!139487) b!1508130))

(assert (= (and d!158365 (not c!139487)) b!1508133))

(assert (= (and b!1508133 res!1028241) b!1508127))

(assert (= (and b!1508127 (not res!1028242)) b!1508128))

(assert (= (and b!1508128 (not res!1028240)) b!1508131))

(declare-fun m!1390729 () Bool)

(assert (=> b!1508131 m!1390729))

(assert (=> b!1508134 m!1390617))

(declare-fun m!1390731 () Bool)

(assert (=> b!1508134 m!1390731))

(assert (=> b!1508134 m!1390731))

(assert (=> b!1508134 m!1390611))

(declare-fun m!1390733 () Bool)

(assert (=> b!1508134 m!1390733))

(assert (=> b!1508127 m!1390729))

(assert (=> b!1508128 m!1390729))

(assert (=> d!158365 m!1390617))

(declare-fun m!1390735 () Bool)

(assert (=> d!158365 m!1390735))

(assert (=> d!158365 m!1390629))

(assert (=> b!1507947 d!158365))

(declare-fun d!158367 () Bool)

(declare-fun lt!654523 () (_ BitVec 32))

(declare-fun lt!654522 () (_ BitVec 32))

(assert (=> d!158367 (= lt!654523 (bvmul (bvxor lt!654522 (bvlshr lt!654522 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!158367 (= lt!654522 ((_ extract 31 0) (bvand (bvxor (select (arr!48508 a!2804) j!70) (bvlshr (select (arr!48508 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!158367 (and (bvsge mask!2512 #b00000000000000000000000000000000) (let ((res!1028243 (let ((h!36578 ((_ extract 31 0) (bvand (bvxor (select (arr!48508 a!2804) j!70) (bvlshr (select (arr!48508 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!134970 (bvmul (bvxor h!36578 (bvlshr h!36578 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!134970 (bvlshr x!134970 #b00000000000000000000000000001101)) mask!2512))))) (and (bvslt res!1028243 (bvadd mask!2512 #b00000000000000000000000000000001)) (bvsge res!1028243 #b00000000000000000000000000000000))))))

(assert (=> d!158367 (= (toIndex!0 (select (arr!48508 a!2804) j!70) mask!2512) (bvand (bvxor lt!654523 (bvlshr lt!654523 #b00000000000000000000000000001101)) mask!2512))))

(assert (=> b!1507947 d!158367))

(declare-fun d!158377 () Bool)

(assert (=> d!158377 (= (validKeyInArray!0 (select (arr!48508 a!2804) i!961)) (and (not (= (select (arr!48508 a!2804) i!961) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48508 a!2804) i!961) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1507948 d!158377))

(declare-fun b!1508174 () Bool)

(declare-fun e!842628 () Bool)

(declare-fun call!68288 () Bool)

(assert (=> b!1508174 (= e!842628 call!68288)))

(declare-fun bm!68285 () Bool)

(assert (=> bm!68285 (= call!68288 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2804 mask!2512))))

(declare-fun b!1508175 () Bool)

(declare-fun e!842629 () Bool)

(assert (=> b!1508175 (= e!842629 e!842628)))

(declare-fun c!139498 () Bool)

(assert (=> b!1508175 (= c!139498 (validKeyInArray!0 (select (arr!48508 a!2804) #b00000000000000000000000000000000)))))

(declare-fun d!158379 () Bool)

(declare-fun res!1028264 () Bool)

(assert (=> d!158379 (=> res!1028264 e!842629)))

(assert (=> d!158379 (= res!1028264 (bvsge #b00000000000000000000000000000000 (size!49059 a!2804)))))

(assert (=> d!158379 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512) e!842629)))

(declare-fun b!1508176 () Bool)

(declare-fun e!842627 () Bool)

(assert (=> b!1508176 (= e!842627 call!68288)))

(declare-fun b!1508177 () Bool)

(assert (=> b!1508177 (= e!842628 e!842627)))

(declare-fun lt!654546 () (_ BitVec 64))

(assert (=> b!1508177 (= lt!654546 (select (arr!48508 a!2804) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!50288 0))(
  ( (Unit!50289) )
))
(declare-fun lt!654545 () Unit!50288)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!100545 (_ BitVec 64) (_ BitVec 32)) Unit!50288)

(assert (=> b!1508177 (= lt!654545 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2804 lt!654546 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!100545 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1508177 (arrayContainsKey!0 a!2804 lt!654546 #b00000000000000000000000000000000)))

(declare-fun lt!654547 () Unit!50288)

(assert (=> b!1508177 (= lt!654547 lt!654545)))

(declare-fun res!1028265 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100545 (_ BitVec 32)) SeekEntryResult!12700)

(assert (=> b!1508177 (= res!1028265 (= (seekEntryOrOpen!0 (select (arr!48508 a!2804) #b00000000000000000000000000000000) a!2804 mask!2512) (Found!12700 #b00000000000000000000000000000000)))))

(assert (=> b!1508177 (=> (not res!1028265) (not e!842627))))

(assert (= (and d!158379 (not res!1028264)) b!1508175))

(assert (= (and b!1508175 c!139498) b!1508177))

(assert (= (and b!1508175 (not c!139498)) b!1508174))

(assert (= (and b!1508177 res!1028265) b!1508176))

(assert (= (or b!1508176 b!1508174) bm!68285))

(declare-fun m!1390753 () Bool)

(assert (=> bm!68285 m!1390753))

(declare-fun m!1390755 () Bool)

(assert (=> b!1508175 m!1390755))

(assert (=> b!1508175 m!1390755))

(declare-fun m!1390757 () Bool)

(assert (=> b!1508175 m!1390757))

(assert (=> b!1508177 m!1390755))

(declare-fun m!1390759 () Bool)

(assert (=> b!1508177 m!1390759))

(declare-fun m!1390761 () Bool)

(assert (=> b!1508177 m!1390761))

(assert (=> b!1508177 m!1390755))

(declare-fun m!1390763 () Bool)

(assert (=> b!1508177 m!1390763))

(assert (=> b!1507954 d!158379))

(declare-fun b!1508193 () Bool)

(declare-fun e!842644 () Bool)

(declare-fun call!68292 () Bool)

(assert (=> b!1508193 (= e!842644 call!68292)))

(declare-fun b!1508194 () Bool)

(assert (=> b!1508194 (= e!842644 call!68292)))

(declare-fun b!1508195 () Bool)

(declare-fun e!842645 () Bool)

(declare-fun e!842642 () Bool)

(assert (=> b!1508195 (= e!842645 e!842642)))

(declare-fun res!1028277 () Bool)

(assert (=> b!1508195 (=> (not res!1028277) (not e!842642))))

(declare-fun e!842643 () Bool)

(assert (=> b!1508195 (= res!1028277 (not e!842643))))

(declare-fun res!1028275 () Bool)

(assert (=> b!1508195 (=> (not res!1028275) (not e!842643))))

(assert (=> b!1508195 (= res!1028275 (validKeyInArray!0 (select (arr!48508 a!2804) #b00000000000000000000000000000000)))))

(declare-fun bm!68289 () Bool)

(declare-fun c!139502 () Bool)

(assert (=> bm!68289 (= call!68292 (arrayNoDuplicates!0 a!2804 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!139502 (Cons!35167 (select (arr!48508 a!2804) #b00000000000000000000000000000000) Nil!35168) Nil!35168)))))

(declare-fun b!1508196 () Bool)

(declare-fun contains!9982 (List!35171 (_ BitVec 64)) Bool)

(assert (=> b!1508196 (= e!842643 (contains!9982 Nil!35168 (select (arr!48508 a!2804) #b00000000000000000000000000000000)))))

(declare-fun b!1508197 () Bool)

(assert (=> b!1508197 (= e!842642 e!842644)))

(assert (=> b!1508197 (= c!139502 (validKeyInArray!0 (select (arr!48508 a!2804) #b00000000000000000000000000000000)))))

(declare-fun d!158389 () Bool)

(declare-fun res!1028276 () Bool)

(assert (=> d!158389 (=> res!1028276 e!842645)))

(assert (=> d!158389 (= res!1028276 (bvsge #b00000000000000000000000000000000 (size!49059 a!2804)))))

(assert (=> d!158389 (= (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35168) e!842645)))

(assert (= (and d!158389 (not res!1028276)) b!1508195))

(assert (= (and b!1508195 res!1028275) b!1508196))

(assert (= (and b!1508195 res!1028277) b!1508197))

(assert (= (and b!1508197 c!139502) b!1508194))

(assert (= (and b!1508197 (not c!139502)) b!1508193))

(assert (= (or b!1508194 b!1508193) bm!68289))

(assert (=> b!1508195 m!1390755))

(assert (=> b!1508195 m!1390755))

(assert (=> b!1508195 m!1390757))

(assert (=> bm!68289 m!1390755))

(declare-fun m!1390769 () Bool)

(assert (=> bm!68289 m!1390769))

(assert (=> b!1508196 m!1390755))

(assert (=> b!1508196 m!1390755))

(declare-fun m!1390771 () Bool)

(assert (=> b!1508196 m!1390771))

(assert (=> b!1508197 m!1390755))

(assert (=> b!1508197 m!1390755))

(assert (=> b!1508197 m!1390757))

(assert (=> b!1507949 d!158389))

(declare-fun d!158391 () Bool)

(assert (=> d!158391 (= (validKeyInArray!0 (select (arr!48508 a!2804) j!70)) (and (not (= (select (arr!48508 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48508 a!2804) j!70) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1507950 d!158391))

(push 1)

