; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!128766 () Bool)

(assert start!128766)

(declare-fun b!1508486 () Bool)

(declare-fun res!1028574 () Bool)

(declare-fun e!842743 () Bool)

(assert (=> b!1508486 (=> (not res!1028574) (not e!842743))))

(declare-datatypes ((array!100574 0))(
  ( (array!100575 (arr!48521 (Array (_ BitVec 32) (_ BitVec 64))) (size!49072 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100574)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1508486 (= res!1028574 (validKeyInArray!0 (select (arr!48521 a!2804) j!70)))))

(declare-fun b!1508487 () Bool)

(declare-fun res!1028570 () Bool)

(assert (=> b!1508487 (=> (not res!1028570) (not e!842743))))

(declare-datatypes ((List!35184 0))(
  ( (Nil!35181) (Cons!35180 (h!36590 (_ BitVec 64)) (t!49885 List!35184)) )
))
(declare-fun arrayNoDuplicates!0 (array!100574 (_ BitVec 32) List!35184) Bool)

(assert (=> b!1508487 (= res!1028570 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35181))))

(declare-fun b!1508488 () Bool)

(declare-fun e!842742 () Bool)

(assert (=> b!1508488 (= e!842743 e!842742)))

(declare-fun res!1028568 () Bool)

(assert (=> b!1508488 (=> (not res!1028568) (not e!842742))))

(declare-datatypes ((SeekEntryResult!12713 0))(
  ( (MissingZero!12713 (index!53246 (_ BitVec 32))) (Found!12713 (index!53247 (_ BitVec 32))) (Intermediate!12713 (undefined!13525 Bool) (index!53248 (_ BitVec 32)) (x!135014 (_ BitVec 32))) (Undefined!12713) (MissingVacant!12713 (index!53249 (_ BitVec 32))) )
))
(declare-fun lt!654612 () SeekEntryResult!12713)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100574 (_ BitVec 32)) SeekEntryResult!12713)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1508488 (= res!1028568 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48521 a!2804) j!70) mask!2512) (select (arr!48521 a!2804) j!70) a!2804 mask!2512) lt!654612))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1508488 (= lt!654612 (Intermediate!12713 false resIndex!21 resX!21))))

(declare-fun b!1508489 () Bool)

(declare-fun res!1028573 () Bool)

(assert (=> b!1508489 (=> (not res!1028573) (not e!842743))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1508489 (= res!1028573 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49072 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49072 a!2804))))))

(declare-fun b!1508490 () Bool)

(declare-fun res!1028566 () Bool)

(assert (=> b!1508490 (=> (not res!1028566) (not e!842743))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1508490 (= res!1028566 (and (= (size!49072 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49072 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49072 a!2804)) (not (= i!961 j!70))))))

(declare-fun res!1028569 () Bool)

(assert (=> start!128766 (=> (not res!1028569) (not e!842743))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128766 (= res!1028569 (validMask!0 mask!2512))))

(assert (=> start!128766 e!842743))

(assert (=> start!128766 true))

(declare-fun array_inv!37466 (array!100574) Bool)

(assert (=> start!128766 (array_inv!37466 a!2804)))

(declare-fun b!1508491 () Bool)

(declare-fun res!1028571 () Bool)

(assert (=> b!1508491 (=> (not res!1028571) (not e!842743))))

(assert (=> b!1508491 (= res!1028571 (validKeyInArray!0 (select (arr!48521 a!2804) i!961)))))

(declare-fun b!1508492 () Bool)

(declare-fun res!1028567 () Bool)

(assert (=> b!1508492 (=> (not res!1028567) (not e!842742))))

(assert (=> b!1508492 (= res!1028567 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48521 a!2804) j!70) a!2804 mask!2512) lt!654612))))

(declare-fun b!1508493 () Bool)

(declare-fun lt!654613 () (_ BitVec 32))

(assert (=> b!1508493 (= e!842742 (and (bvsge mask!2512 #b00000000000000000000000000000000) (or (bvslt lt!654613 #b00000000000000000000000000000000) (bvsge lt!654613 (bvadd #b00000000000000000000000000000001 mask!2512)))))))

(assert (=> b!1508493 (= lt!654613 (toIndex!0 (select (store (arr!48521 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512))))

(declare-fun b!1508494 () Bool)

(declare-fun res!1028572 () Bool)

(assert (=> b!1508494 (=> (not res!1028572) (not e!842743))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100574 (_ BitVec 32)) Bool)

(assert (=> b!1508494 (= res!1028572 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(assert (= (and start!128766 res!1028569) b!1508490))

(assert (= (and b!1508490 res!1028566) b!1508491))

(assert (= (and b!1508491 res!1028571) b!1508486))

(assert (= (and b!1508486 res!1028574) b!1508494))

(assert (= (and b!1508494 res!1028572) b!1508487))

(assert (= (and b!1508487 res!1028570) b!1508489))

(assert (= (and b!1508489 res!1028573) b!1508488))

(assert (= (and b!1508488 res!1028568) b!1508492))

(assert (= (and b!1508492 res!1028567) b!1508493))

(declare-fun m!1391053 () Bool)

(assert (=> b!1508492 m!1391053))

(assert (=> b!1508492 m!1391053))

(declare-fun m!1391055 () Bool)

(assert (=> b!1508492 m!1391055))

(assert (=> b!1508488 m!1391053))

(assert (=> b!1508488 m!1391053))

(declare-fun m!1391057 () Bool)

(assert (=> b!1508488 m!1391057))

(assert (=> b!1508488 m!1391057))

(assert (=> b!1508488 m!1391053))

(declare-fun m!1391059 () Bool)

(assert (=> b!1508488 m!1391059))

(declare-fun m!1391061 () Bool)

(assert (=> b!1508487 m!1391061))

(declare-fun m!1391063 () Bool)

(assert (=> b!1508494 m!1391063))

(declare-fun m!1391065 () Bool)

(assert (=> start!128766 m!1391065))

(declare-fun m!1391067 () Bool)

(assert (=> start!128766 m!1391067))

(assert (=> b!1508486 m!1391053))

(assert (=> b!1508486 m!1391053))

(declare-fun m!1391069 () Bool)

(assert (=> b!1508486 m!1391069))

(declare-fun m!1391071 () Bool)

(assert (=> b!1508493 m!1391071))

(declare-fun m!1391073 () Bool)

(assert (=> b!1508493 m!1391073))

(assert (=> b!1508493 m!1391073))

(declare-fun m!1391075 () Bool)

(assert (=> b!1508493 m!1391075))

(declare-fun m!1391077 () Bool)

(assert (=> b!1508491 m!1391077))

(assert (=> b!1508491 m!1391077))

(declare-fun m!1391079 () Bool)

(assert (=> b!1508491 m!1391079))

(check-sat (not b!1508492) (not b!1508486) (not b!1508494) (not b!1508493) (not b!1508488) (not b!1508491) (not start!128766) (not b!1508487))
(check-sat)
(get-model)

(declare-fun d!158401 () Bool)

(declare-fun res!1028606 () Bool)

(declare-fun e!842760 () Bool)

(assert (=> d!158401 (=> res!1028606 e!842760)))

(assert (=> d!158401 (= res!1028606 (bvsge #b00000000000000000000000000000000 (size!49072 a!2804)))))

(assert (=> d!158401 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512) e!842760)))

(declare-fun b!1508530 () Bool)

(declare-fun e!842762 () Bool)

(declare-fun e!842761 () Bool)

(assert (=> b!1508530 (= e!842762 e!842761)))

(declare-fun lt!654626 () (_ BitVec 64))

(assert (=> b!1508530 (= lt!654626 (select (arr!48521 a!2804) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!50290 0))(
  ( (Unit!50291) )
))
(declare-fun lt!654627 () Unit!50290)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!100574 (_ BitVec 64) (_ BitVec 32)) Unit!50290)

(assert (=> b!1508530 (= lt!654627 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2804 lt!654626 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!100574 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1508530 (arrayContainsKey!0 a!2804 lt!654626 #b00000000000000000000000000000000)))

(declare-fun lt!654628 () Unit!50290)

(assert (=> b!1508530 (= lt!654628 lt!654627)))

(declare-fun res!1028607 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100574 (_ BitVec 32)) SeekEntryResult!12713)

(assert (=> b!1508530 (= res!1028607 (= (seekEntryOrOpen!0 (select (arr!48521 a!2804) #b00000000000000000000000000000000) a!2804 mask!2512) (Found!12713 #b00000000000000000000000000000000)))))

(assert (=> b!1508530 (=> (not res!1028607) (not e!842761))))

(declare-fun b!1508531 () Bool)

(declare-fun call!68295 () Bool)

(assert (=> b!1508531 (= e!842761 call!68295)))

(declare-fun b!1508532 () Bool)

(assert (=> b!1508532 (= e!842762 call!68295)))

(declare-fun bm!68292 () Bool)

(assert (=> bm!68292 (= call!68295 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2804 mask!2512))))

(declare-fun b!1508533 () Bool)

(assert (=> b!1508533 (= e!842760 e!842762)))

(declare-fun c!139505 () Bool)

(assert (=> b!1508533 (= c!139505 (validKeyInArray!0 (select (arr!48521 a!2804) #b00000000000000000000000000000000)))))

(assert (= (and d!158401 (not res!1028606)) b!1508533))

(assert (= (and b!1508533 c!139505) b!1508530))

(assert (= (and b!1508533 (not c!139505)) b!1508532))

(assert (= (and b!1508530 res!1028607) b!1508531))

(assert (= (or b!1508531 b!1508532) bm!68292))

(declare-fun m!1391109 () Bool)

(assert (=> b!1508530 m!1391109))

(declare-fun m!1391111 () Bool)

(assert (=> b!1508530 m!1391111))

(declare-fun m!1391113 () Bool)

(assert (=> b!1508530 m!1391113))

(assert (=> b!1508530 m!1391109))

(declare-fun m!1391115 () Bool)

(assert (=> b!1508530 m!1391115))

(declare-fun m!1391117 () Bool)

(assert (=> bm!68292 m!1391117))

(assert (=> b!1508533 m!1391109))

(assert (=> b!1508533 m!1391109))

(declare-fun m!1391119 () Bool)

(assert (=> b!1508533 m!1391119))

(assert (=> b!1508494 d!158401))

(declare-fun d!158403 () Bool)

(assert (=> d!158403 (= (validMask!0 mask!2512) (and (or (= mask!2512 #b00000000000000000000000000000111) (= mask!2512 #b00000000000000000000000000001111) (= mask!2512 #b00000000000000000000000000011111) (= mask!2512 #b00000000000000000000000000111111) (= mask!2512 #b00000000000000000000000001111111) (= mask!2512 #b00000000000000000000000011111111) (= mask!2512 #b00000000000000000000000111111111) (= mask!2512 #b00000000000000000000001111111111) (= mask!2512 #b00000000000000000000011111111111) (= mask!2512 #b00000000000000000000111111111111) (= mask!2512 #b00000000000000000001111111111111) (= mask!2512 #b00000000000000000011111111111111) (= mask!2512 #b00000000000000000111111111111111) (= mask!2512 #b00000000000000001111111111111111) (= mask!2512 #b00000000000000011111111111111111) (= mask!2512 #b00000000000000111111111111111111) (= mask!2512 #b00000000000001111111111111111111) (= mask!2512 #b00000000000011111111111111111111) (= mask!2512 #b00000000000111111111111111111111) (= mask!2512 #b00000000001111111111111111111111) (= mask!2512 #b00000000011111111111111111111111) (= mask!2512 #b00000000111111111111111111111111) (= mask!2512 #b00000001111111111111111111111111) (= mask!2512 #b00000011111111111111111111111111) (= mask!2512 #b00000111111111111111111111111111) (= mask!2512 #b00001111111111111111111111111111) (= mask!2512 #b00011111111111111111111111111111) (= mask!2512 #b00111111111111111111111111111111)) (bvsle mask!2512 #b00111111111111111111111111111111)))))

(assert (=> start!128766 d!158403))

(declare-fun d!158407 () Bool)

(assert (=> d!158407 (= (array_inv!37466 a!2804) (bvsge (size!49072 a!2804) #b00000000000000000000000000000000))))

(assert (=> start!128766 d!158407))

(declare-fun b!1508544 () Bool)

(declare-fun e!842772 () Bool)

(declare-fun e!842773 () Bool)

(assert (=> b!1508544 (= e!842772 e!842773)))

(declare-fun res!1028616 () Bool)

(assert (=> b!1508544 (=> (not res!1028616) (not e!842773))))

(declare-fun e!842774 () Bool)

(assert (=> b!1508544 (= res!1028616 (not e!842774))))

(declare-fun res!1028615 () Bool)

(assert (=> b!1508544 (=> (not res!1028615) (not e!842774))))

(assert (=> b!1508544 (= res!1028615 (validKeyInArray!0 (select (arr!48521 a!2804) #b00000000000000000000000000000000)))))

(declare-fun bm!68295 () Bool)

(declare-fun call!68298 () Bool)

(declare-fun c!139508 () Bool)

(assert (=> bm!68295 (= call!68298 (arrayNoDuplicates!0 a!2804 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!139508 (Cons!35180 (select (arr!48521 a!2804) #b00000000000000000000000000000000) Nil!35181) Nil!35181)))))

(declare-fun d!158409 () Bool)

(declare-fun res!1028617 () Bool)

(assert (=> d!158409 (=> res!1028617 e!842772)))

(assert (=> d!158409 (= res!1028617 (bvsge #b00000000000000000000000000000000 (size!49072 a!2804)))))

(assert (=> d!158409 (= (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35181) e!842772)))

(declare-fun b!1508545 () Bool)

(declare-fun e!842771 () Bool)

(assert (=> b!1508545 (= e!842771 call!68298)))

(declare-fun b!1508546 () Bool)

(declare-fun contains!9983 (List!35184 (_ BitVec 64)) Bool)

(assert (=> b!1508546 (= e!842774 (contains!9983 Nil!35181 (select (arr!48521 a!2804) #b00000000000000000000000000000000)))))

(declare-fun b!1508547 () Bool)

(assert (=> b!1508547 (= e!842771 call!68298)))

(declare-fun b!1508548 () Bool)

(assert (=> b!1508548 (= e!842773 e!842771)))

(assert (=> b!1508548 (= c!139508 (validKeyInArray!0 (select (arr!48521 a!2804) #b00000000000000000000000000000000)))))

(assert (= (and d!158409 (not res!1028617)) b!1508544))

(assert (= (and b!1508544 res!1028615) b!1508546))

(assert (= (and b!1508544 res!1028616) b!1508548))

(assert (= (and b!1508548 c!139508) b!1508547))

(assert (= (and b!1508548 (not c!139508)) b!1508545))

(assert (= (or b!1508547 b!1508545) bm!68295))

(assert (=> b!1508544 m!1391109))

(assert (=> b!1508544 m!1391109))

(assert (=> b!1508544 m!1391119))

(assert (=> bm!68295 m!1391109))

(declare-fun m!1391121 () Bool)

(assert (=> bm!68295 m!1391121))

(assert (=> b!1508546 m!1391109))

(assert (=> b!1508546 m!1391109))

(declare-fun m!1391123 () Bool)

(assert (=> b!1508546 m!1391123))

(assert (=> b!1508548 m!1391109))

(assert (=> b!1508548 m!1391109))

(assert (=> b!1508548 m!1391119))

(assert (=> b!1508487 d!158409))

(declare-fun b!1508582 () Bool)

(declare-fun lt!654649 () SeekEntryResult!12713)

(assert (=> b!1508582 (and (bvsge (index!53248 lt!654649) #b00000000000000000000000000000000) (bvslt (index!53248 lt!654649) (size!49072 a!2804)))))

(declare-fun res!1028636 () Bool)

(assert (=> b!1508582 (= res!1028636 (= (select (arr!48521 a!2804) (index!53248 lt!654649)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!842801 () Bool)

(assert (=> b!1508582 (=> res!1028636 e!842801)))

(declare-fun b!1508584 () Bool)

(declare-fun e!842800 () Bool)

(assert (=> b!1508584 (= e!842800 (bvsge (x!135014 lt!654649) #b01111111111111111111111111111110))))

(declare-fun d!158415 () Bool)

(assert (=> d!158415 e!842800))

(declare-fun c!139519 () Bool)

(get-info :version)

(assert (=> d!158415 (= c!139519 (and ((_ is Intermediate!12713) lt!654649) (undefined!13525 lt!654649)))))

(declare-fun e!842797 () SeekEntryResult!12713)

(assert (=> d!158415 (= lt!654649 e!842797)))

(declare-fun c!139518 () Bool)

(assert (=> d!158415 (= c!139518 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!654650 () (_ BitVec 64))

(assert (=> d!158415 (= lt!654650 (select (arr!48521 a!2804) (toIndex!0 (select (arr!48521 a!2804) j!70) mask!2512)))))

(assert (=> d!158415 (validMask!0 mask!2512)))

(assert (=> d!158415 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48521 a!2804) j!70) mask!2512) (select (arr!48521 a!2804) j!70) a!2804 mask!2512) lt!654649)))

(declare-fun b!1508583 () Bool)

(declare-fun e!842798 () SeekEntryResult!12713)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1508583 (= e!842798 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!48521 a!2804) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512) (select (arr!48521 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1508585 () Bool)

(assert (=> b!1508585 (= e!842798 (Intermediate!12713 false (toIndex!0 (select (arr!48521 a!2804) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1508586 () Bool)

(assert (=> b!1508586 (and (bvsge (index!53248 lt!654649) #b00000000000000000000000000000000) (bvslt (index!53248 lt!654649) (size!49072 a!2804)))))

(assert (=> b!1508586 (= e!842801 (= (select (arr!48521 a!2804) (index!53248 lt!654649)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1508587 () Bool)

(assert (=> b!1508587 (= e!842797 e!842798)))

(declare-fun c!139520 () Bool)

(assert (=> b!1508587 (= c!139520 (or (= lt!654650 (select (arr!48521 a!2804) j!70)) (= (bvadd lt!654650 lt!654650) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1508588 () Bool)

(assert (=> b!1508588 (= e!842797 (Intermediate!12713 true (toIndex!0 (select (arr!48521 a!2804) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1508589 () Bool)

(declare-fun e!842799 () Bool)

(assert (=> b!1508589 (= e!842800 e!842799)))

(declare-fun res!1028634 () Bool)

(assert (=> b!1508589 (= res!1028634 (and ((_ is Intermediate!12713) lt!654649) (not (undefined!13525 lt!654649)) (bvslt (x!135014 lt!654649) #b01111111111111111111111111111110) (bvsge (x!135014 lt!654649) #b00000000000000000000000000000000) (bvsge (x!135014 lt!654649) #b00000000000000000000000000000000)))))

(assert (=> b!1508589 (=> (not res!1028634) (not e!842799))))

(declare-fun b!1508590 () Bool)

(assert (=> b!1508590 (and (bvsge (index!53248 lt!654649) #b00000000000000000000000000000000) (bvslt (index!53248 lt!654649) (size!49072 a!2804)))))

(declare-fun res!1028635 () Bool)

(assert (=> b!1508590 (= res!1028635 (= (select (arr!48521 a!2804) (index!53248 lt!654649)) (select (arr!48521 a!2804) j!70)))))

(assert (=> b!1508590 (=> res!1028635 e!842801)))

(assert (=> b!1508590 (= e!842799 e!842801)))

(assert (= (and d!158415 c!139518) b!1508588))

(assert (= (and d!158415 (not c!139518)) b!1508587))

(assert (= (and b!1508587 c!139520) b!1508585))

(assert (= (and b!1508587 (not c!139520)) b!1508583))

(assert (= (and d!158415 c!139519) b!1508584))

(assert (= (and d!158415 (not c!139519)) b!1508589))

(assert (= (and b!1508589 res!1028634) b!1508590))

(assert (= (and b!1508590 (not res!1028635)) b!1508582))

(assert (= (and b!1508582 (not res!1028636)) b!1508586))

(declare-fun m!1391133 () Bool)

(assert (=> b!1508590 m!1391133))

(assert (=> b!1508583 m!1391057))

(declare-fun m!1391135 () Bool)

(assert (=> b!1508583 m!1391135))

(assert (=> b!1508583 m!1391135))

(assert (=> b!1508583 m!1391053))

(declare-fun m!1391137 () Bool)

(assert (=> b!1508583 m!1391137))

(assert (=> d!158415 m!1391057))

(declare-fun m!1391139 () Bool)

(assert (=> d!158415 m!1391139))

(assert (=> d!158415 m!1391065))

(assert (=> b!1508582 m!1391133))

(assert (=> b!1508586 m!1391133))

(assert (=> b!1508488 d!158415))

(declare-fun d!158423 () Bool)

(declare-fun lt!654658 () (_ BitVec 32))

(declare-fun lt!654657 () (_ BitVec 32))

(assert (=> d!158423 (= lt!654658 (bvmul (bvxor lt!654657 (bvlshr lt!654657 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!158423 (= lt!654657 ((_ extract 31 0) (bvand (bvxor (select (arr!48521 a!2804) j!70) (bvlshr (select (arr!48521 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!158423 (and (bvsge mask!2512 #b00000000000000000000000000000000) (let ((res!1028641 (let ((h!36594 ((_ extract 31 0) (bvand (bvxor (select (arr!48521 a!2804) j!70) (bvlshr (select (arr!48521 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!135020 (bvmul (bvxor h!36594 (bvlshr h!36594 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!135020 (bvlshr x!135020 #b00000000000000000000000000001101)) mask!2512))))) (and (bvslt res!1028641 (bvadd mask!2512 #b00000000000000000000000000000001)) (bvsge res!1028641 #b00000000000000000000000000000000))))))

(assert (=> d!158423 (= (toIndex!0 (select (arr!48521 a!2804) j!70) mask!2512) (bvand (bvxor lt!654658 (bvlshr lt!654658 #b00000000000000000000000000001101)) mask!2512))))

(assert (=> b!1508488 d!158423))

(declare-fun d!158429 () Bool)

(declare-fun lt!654660 () (_ BitVec 32))

(declare-fun lt!654659 () (_ BitVec 32))

(assert (=> d!158429 (= lt!654660 (bvmul (bvxor lt!654659 (bvlshr lt!654659 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!158429 (= lt!654659 ((_ extract 31 0) (bvand (bvxor (select (store (arr!48521 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (bvlshr (select (store (arr!48521 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!158429 (and (bvsge mask!2512 #b00000000000000000000000000000000) (let ((res!1028641 (let ((h!36594 ((_ extract 31 0) (bvand (bvxor (select (store (arr!48521 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (bvlshr (select (store (arr!48521 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!135020 (bvmul (bvxor h!36594 (bvlshr h!36594 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!135020 (bvlshr x!135020 #b00000000000000000000000000001101)) mask!2512))))) (and (bvslt res!1028641 (bvadd mask!2512 #b00000000000000000000000000000001)) (bvsge res!1028641 #b00000000000000000000000000000000))))))

(assert (=> d!158429 (= (toIndex!0 (select (store (arr!48521 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (bvand (bvxor lt!654660 (bvlshr lt!654660 #b00000000000000000000000000001101)) mask!2512))))

(assert (=> b!1508493 d!158429))

(declare-fun d!158431 () Bool)

(assert (=> d!158431 (= (validKeyInArray!0 (select (arr!48521 a!2804) j!70)) (and (not (= (select (arr!48521 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48521 a!2804) j!70) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1508486 d!158431))

(declare-fun d!158437 () Bool)

(assert (=> d!158437 (= (validKeyInArray!0 (select (arr!48521 a!2804) i!961)) (and (not (= (select (arr!48521 a!2804) i!961) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48521 a!2804) i!961) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1508491 d!158437))

(declare-fun b!1508618 () Bool)

(declare-fun lt!654663 () SeekEntryResult!12713)

(assert (=> b!1508618 (and (bvsge (index!53248 lt!654663) #b00000000000000000000000000000000) (bvslt (index!53248 lt!654663) (size!49072 a!2804)))))

(declare-fun res!1028649 () Bool)

(assert (=> b!1508618 (= res!1028649 (= (select (arr!48521 a!2804) (index!53248 lt!654663)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!842821 () Bool)

(assert (=> b!1508618 (=> res!1028649 e!842821)))

(declare-fun b!1508620 () Bool)

(declare-fun e!842820 () Bool)

(assert (=> b!1508620 (= e!842820 (bvsge (x!135014 lt!654663) #b01111111111111111111111111111110))))

(declare-fun d!158439 () Bool)

(assert (=> d!158439 e!842820))

(declare-fun c!139531 () Bool)

(assert (=> d!158439 (= c!139531 (and ((_ is Intermediate!12713) lt!654663) (undefined!13525 lt!654663)))))

(declare-fun e!842817 () SeekEntryResult!12713)

(assert (=> d!158439 (= lt!654663 e!842817)))

(declare-fun c!139530 () Bool)

(assert (=> d!158439 (= c!139530 (bvsge x!534 #b01111111111111111111111111111110))))

(declare-fun lt!654664 () (_ BitVec 64))

(assert (=> d!158439 (= lt!654664 (select (arr!48521 a!2804) index!487))))

(assert (=> d!158439 (validMask!0 mask!2512)))

(assert (=> d!158439 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48521 a!2804) j!70) a!2804 mask!2512) lt!654663)))

(declare-fun b!1508619 () Bool)

(declare-fun e!842818 () SeekEntryResult!12713)

(assert (=> b!1508619 (= e!842818 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!534 #b00000000000000000000000000000001) (nextIndex!0 index!487 x!534 mask!2512) (select (arr!48521 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1508621 () Bool)

(assert (=> b!1508621 (= e!842818 (Intermediate!12713 false index!487 x!534))))

(declare-fun b!1508622 () Bool)

(assert (=> b!1508622 (and (bvsge (index!53248 lt!654663) #b00000000000000000000000000000000) (bvslt (index!53248 lt!654663) (size!49072 a!2804)))))

(assert (=> b!1508622 (= e!842821 (= (select (arr!48521 a!2804) (index!53248 lt!654663)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1508623 () Bool)

(assert (=> b!1508623 (= e!842817 e!842818)))

(declare-fun c!139532 () Bool)

(assert (=> b!1508623 (= c!139532 (or (= lt!654664 (select (arr!48521 a!2804) j!70)) (= (bvadd lt!654664 lt!654664) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1508624 () Bool)

(assert (=> b!1508624 (= e!842817 (Intermediate!12713 true index!487 x!534))))

(declare-fun b!1508625 () Bool)

(declare-fun e!842819 () Bool)

(assert (=> b!1508625 (= e!842820 e!842819)))

(declare-fun res!1028647 () Bool)

(assert (=> b!1508625 (= res!1028647 (and ((_ is Intermediate!12713) lt!654663) (not (undefined!13525 lt!654663)) (bvslt (x!135014 lt!654663) #b01111111111111111111111111111110) (bvsge (x!135014 lt!654663) #b00000000000000000000000000000000) (bvsge (x!135014 lt!654663) x!534)))))

(assert (=> b!1508625 (=> (not res!1028647) (not e!842819))))

(declare-fun b!1508626 () Bool)

(assert (=> b!1508626 (and (bvsge (index!53248 lt!654663) #b00000000000000000000000000000000) (bvslt (index!53248 lt!654663) (size!49072 a!2804)))))

(declare-fun res!1028648 () Bool)

(assert (=> b!1508626 (= res!1028648 (= (select (arr!48521 a!2804) (index!53248 lt!654663)) (select (arr!48521 a!2804) j!70)))))

(assert (=> b!1508626 (=> res!1028648 e!842821)))

(assert (=> b!1508626 (= e!842819 e!842821)))

(assert (= (and d!158439 c!139530) b!1508624))

(assert (= (and d!158439 (not c!139530)) b!1508623))

(assert (= (and b!1508623 c!139532) b!1508621))

(assert (= (and b!1508623 (not c!139532)) b!1508619))

(assert (= (and d!158439 c!139531) b!1508620))

(assert (= (and d!158439 (not c!139531)) b!1508625))

(assert (= (and b!1508625 res!1028647) b!1508626))

(assert (= (and b!1508626 (not res!1028648)) b!1508618))

(assert (= (and b!1508618 (not res!1028649)) b!1508622))

(declare-fun m!1391149 () Bool)

(assert (=> b!1508626 m!1391149))

(declare-fun m!1391151 () Bool)

(assert (=> b!1508619 m!1391151))

(assert (=> b!1508619 m!1391151))

(assert (=> b!1508619 m!1391053))

(declare-fun m!1391153 () Bool)

(assert (=> b!1508619 m!1391153))

(declare-fun m!1391155 () Bool)

(assert (=> d!158439 m!1391155))

(assert (=> d!158439 m!1391065))

(assert (=> b!1508618 m!1391149))

(assert (=> b!1508622 m!1391149))

(assert (=> b!1508492 d!158439))

(check-sat (not b!1508533) (not b!1508619) (not b!1508544) (not d!158439) (not b!1508546) (not b!1508548) (not b!1508583) (not b!1508530) (not d!158415) (not bm!68295) (not bm!68292))
(check-sat)
