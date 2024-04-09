; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118686 () Bool)

(assert start!118686)

(declare-fun res!928230 () Bool)

(declare-fun e!785708 () Bool)

(assert (=> start!118686 (=> (not res!928230) (not e!785708))))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118686 (= res!928230 (validMask!0 mask!2987))))

(assert (=> start!118686 e!785708))

(assert (=> start!118686 true))

(declare-datatypes ((array!94880 0))(
  ( (array!94881 (arr!45812 (Array (_ BitVec 32) (_ BitVec 64))) (size!46363 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94880)

(declare-fun array_inv!34757 (array!94880) Bool)

(assert (=> start!118686 (array_inv!34757 a!2938)))

(declare-fun b!1387075 () Bool)

(declare-fun res!928229 () Bool)

(assert (=> b!1387075 (=> (not res!928229) (not e!785708))))

(declare-fun i!1065 () (_ BitVec 32))

(assert (=> b!1387075 (= res!928229 (and (not (= (select (arr!45812 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45812 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1387076 () Bool)

(declare-fun res!928227 () Bool)

(assert (=> b!1387076 (=> (not res!928227) (not e!785708))))

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1387076 (= res!928227 (and (= (size!46363 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46363 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46363 a!2938))))))

(declare-fun b!1387077 () Bool)

(declare-datatypes ((Unit!46330 0))(
  ( (Unit!46331) )
))
(declare-fun e!785707 () Unit!46330)

(declare-fun lt!609668 () Unit!46330)

(assert (=> b!1387077 (= e!785707 lt!609668)))

(declare-fun lt!609666 () Unit!46330)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94880 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46330)

(assert (=> b!1387077 (= lt!609666 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-fun lt!609667 () array!94880)

(declare-datatypes ((SeekEntryResult!10177 0))(
  ( (MissingZero!10177 (index!43078 (_ BitVec 32))) (Found!10177 (index!43079 (_ BitVec 32))) (Intermediate!10177 (undefined!10989 Bool) (index!43080 (_ BitVec 32)) (x!124693 (_ BitVec 32))) (Undefined!10177) (MissingVacant!10177 (index!43081 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94880 (_ BitVec 32)) SeekEntryResult!10177)

(assert (=> b!1387077 (= (seekEntryOrOpen!0 (select (arr!45812 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45812 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) lt!609667 mask!2987))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!94880 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46330)

(assert (=> b!1387077 (= lt!609668 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94880 (_ BitVec 32)) Bool)

(assert (=> b!1387077 (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987)))

(declare-fun b!1387078 () Bool)

(declare-fun res!928226 () Bool)

(assert (=> b!1387078 (=> (not res!928226) (not e!785708))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1387078 (= res!928226 (validKeyInArray!0 (select (arr!45812 a!2938) i!1065)))))

(declare-fun b!1387079 () Bool)

(declare-fun e!785711 () Bool)

(assert (=> b!1387079 (= e!785708 e!785711)))

(declare-fun res!928231 () Bool)

(assert (=> b!1387079 (=> (not res!928231) (not e!785711))))

(assert (=> b!1387079 (= res!928231 (and (bvslt startIndex!16 (bvsub (size!46363 a!2938) #b00000000000000000000000000000001)) (bvsge (bvadd #b00000000000000000000000000000001 startIndex!16) #b00000000000000000000000000000000)))))

(declare-fun lt!609669 () Unit!46330)

(assert (=> b!1387079 (= lt!609669 e!785707)))

(declare-fun c!128867 () Bool)

(declare-fun e!785709 () Bool)

(assert (=> b!1387079 (= c!128867 e!785709)))

(declare-fun res!928233 () Bool)

(assert (=> b!1387079 (=> (not res!928233) (not e!785709))))

(assert (=> b!1387079 (= res!928233 (not (= startIndex!16 i!1065)))))

(assert (=> b!1387079 (= lt!609667 (array!94881 (store (arr!45812 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46363 a!2938)))))

(declare-fun b!1387080 () Bool)

(declare-fun res!928232 () Bool)

(assert (=> b!1387080 (=> (not res!928232) (not e!785708))))

(declare-datatypes ((List!32520 0))(
  ( (Nil!32517) (Cons!32516 (h!33725 (_ BitVec 64)) (t!47221 List!32520)) )
))
(declare-fun arrayNoDuplicates!0 (array!94880 (_ BitVec 32) List!32520) Bool)

(assert (=> b!1387080 (= res!928232 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32517))))

(declare-fun b!1387081 () Bool)

(declare-fun res!928228 () Bool)

(assert (=> b!1387081 (=> (not res!928228) (not e!785708))))

(assert (=> b!1387081 (= res!928228 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1387082 () Bool)

(assert (=> b!1387082 (= e!785709 (validKeyInArray!0 (select (arr!45812 a!2938) startIndex!16)))))

(declare-fun b!1387083 () Bool)

(declare-fun Unit!46332 () Unit!46330)

(assert (=> b!1387083 (= e!785707 Unit!46332)))

(declare-fun b!1387084 () Bool)

(assert (=> b!1387084 (= e!785711 (not (arrayForallSeekEntryOrOpenFound!0 startIndex!16 lt!609667 mask!2987)))))

(assert (=> b!1387084 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!16) lt!609667 mask!2987)))

(declare-fun lt!609670 () Unit!46330)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenStartIndex!0 (array!94880 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46330)

(assert (=> b!1387084 (= lt!609670 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenStartIndex!0 a!2938 i!1065 (bvadd #b00000000000000000000000000000001 startIndex!16) mask!2987))))

(assert (= (and start!118686 res!928230) b!1387076))

(assert (= (and b!1387076 res!928227) b!1387078))

(assert (= (and b!1387078 res!928226) b!1387080))

(assert (= (and b!1387080 res!928232) b!1387081))

(assert (= (and b!1387081 res!928228) b!1387075))

(assert (= (and b!1387075 res!928229) b!1387079))

(assert (= (and b!1387079 res!928233) b!1387082))

(assert (= (and b!1387079 c!128867) b!1387077))

(assert (= (and b!1387079 (not c!128867)) b!1387083))

(assert (= (and b!1387079 res!928231) b!1387084))

(declare-fun m!1272581 () Bool)

(assert (=> b!1387081 m!1272581))

(declare-fun m!1272583 () Bool)

(assert (=> start!118686 m!1272583))

(declare-fun m!1272585 () Bool)

(assert (=> start!118686 m!1272585))

(declare-fun m!1272587 () Bool)

(assert (=> b!1387082 m!1272587))

(assert (=> b!1387082 m!1272587))

(declare-fun m!1272589 () Bool)

(assert (=> b!1387082 m!1272589))

(declare-fun m!1272591 () Bool)

(assert (=> b!1387079 m!1272591))

(declare-fun m!1272593 () Bool)

(assert (=> b!1387075 m!1272593))

(assert (=> b!1387078 m!1272593))

(assert (=> b!1387078 m!1272593))

(declare-fun m!1272595 () Bool)

(assert (=> b!1387078 m!1272595))

(declare-fun m!1272597 () Bool)

(assert (=> b!1387080 m!1272597))

(declare-fun m!1272599 () Bool)

(assert (=> b!1387077 m!1272599))

(assert (=> b!1387077 m!1272591))

(declare-fun m!1272601 () Bool)

(assert (=> b!1387077 m!1272601))

(assert (=> b!1387077 m!1272587))

(declare-fun m!1272603 () Bool)

(assert (=> b!1387077 m!1272603))

(assert (=> b!1387077 m!1272599))

(declare-fun m!1272605 () Bool)

(assert (=> b!1387077 m!1272605))

(declare-fun m!1272607 () Bool)

(assert (=> b!1387077 m!1272607))

(assert (=> b!1387077 m!1272587))

(declare-fun m!1272609 () Bool)

(assert (=> b!1387077 m!1272609))

(declare-fun m!1272611 () Bool)

(assert (=> b!1387084 m!1272611))

(declare-fun m!1272613 () Bool)

(assert (=> b!1387084 m!1272613))

(declare-fun m!1272615 () Bool)

(assert (=> b!1387084 m!1272615))

(check-sat (not b!1387077) (not b!1387084) (not start!118686) (not b!1387078) (not b!1387082) (not b!1387081) (not b!1387080))
(check-sat)
(get-model)

(declare-fun b!1387125 () Bool)

(declare-fun e!785736 () Bool)

(declare-fun contains!9756 (List!32520 (_ BitVec 64)) Bool)

(assert (=> b!1387125 (= e!785736 (contains!9756 Nil!32517 (select (arr!45812 a!2938) #b00000000000000000000000000000000)))))

(declare-fun d!149383 () Bool)

(declare-fun res!928265 () Bool)

(declare-fun e!785735 () Bool)

(assert (=> d!149383 (=> res!928265 e!785735)))

(assert (=> d!149383 (= res!928265 (bvsge #b00000000000000000000000000000000 (size!46363 a!2938)))))

(assert (=> d!149383 (= (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32517) e!785735)))

(declare-fun b!1387126 () Bool)

(declare-fun e!785737 () Bool)

(assert (=> b!1387126 (= e!785735 e!785737)))

(declare-fun res!928266 () Bool)

(assert (=> b!1387126 (=> (not res!928266) (not e!785737))))

(assert (=> b!1387126 (= res!928266 (not e!785736))))

(declare-fun res!928264 () Bool)

(assert (=> b!1387126 (=> (not res!928264) (not e!785736))))

(assert (=> b!1387126 (= res!928264 (validKeyInArray!0 (select (arr!45812 a!2938) #b00000000000000000000000000000000)))))

(declare-fun bm!66552 () Bool)

(declare-fun call!66555 () Bool)

(declare-fun c!128873 () Bool)

(assert (=> bm!66552 (= call!66555 (arrayNoDuplicates!0 a!2938 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!128873 (Cons!32516 (select (arr!45812 a!2938) #b00000000000000000000000000000000) Nil!32517) Nil!32517)))))

(declare-fun b!1387127 () Bool)

(declare-fun e!785738 () Bool)

(assert (=> b!1387127 (= e!785738 call!66555)))

(declare-fun b!1387128 () Bool)

(assert (=> b!1387128 (= e!785738 call!66555)))

(declare-fun b!1387129 () Bool)

(assert (=> b!1387129 (= e!785737 e!785738)))

(assert (=> b!1387129 (= c!128873 (validKeyInArray!0 (select (arr!45812 a!2938) #b00000000000000000000000000000000)))))

(assert (= (and d!149383 (not res!928265)) b!1387126))

(assert (= (and b!1387126 res!928264) b!1387125))

(assert (= (and b!1387126 res!928266) b!1387129))

(assert (= (and b!1387129 c!128873) b!1387128))

(assert (= (and b!1387129 (not c!128873)) b!1387127))

(assert (= (or b!1387128 b!1387127) bm!66552))

(declare-fun m!1272653 () Bool)

(assert (=> b!1387125 m!1272653))

(assert (=> b!1387125 m!1272653))

(declare-fun m!1272655 () Bool)

(assert (=> b!1387125 m!1272655))

(assert (=> b!1387126 m!1272653))

(assert (=> b!1387126 m!1272653))

(declare-fun m!1272657 () Bool)

(assert (=> b!1387126 m!1272657))

(assert (=> bm!66552 m!1272653))

(declare-fun m!1272659 () Bool)

(assert (=> bm!66552 m!1272659))

(assert (=> b!1387129 m!1272653))

(assert (=> b!1387129 m!1272653))

(assert (=> b!1387129 m!1272657))

(assert (=> b!1387080 d!149383))

(declare-fun b!1387138 () Bool)

(declare-fun e!785747 () Bool)

(declare-fun call!66558 () Bool)

(assert (=> b!1387138 (= e!785747 call!66558)))

(declare-fun d!149385 () Bool)

(declare-fun res!928271 () Bool)

(declare-fun e!785745 () Bool)

(assert (=> d!149385 (=> res!928271 e!785745)))

(assert (=> d!149385 (= res!928271 (bvsge startIndex!16 (size!46363 lt!609667)))))

(assert (=> d!149385 (= (arrayForallSeekEntryOrOpenFound!0 startIndex!16 lt!609667 mask!2987) e!785745)))

(declare-fun b!1387139 () Bool)

(declare-fun e!785746 () Bool)

(assert (=> b!1387139 (= e!785745 e!785746)))

(declare-fun c!128876 () Bool)

(assert (=> b!1387139 (= c!128876 (validKeyInArray!0 (select (arr!45812 lt!609667) startIndex!16)))))

(declare-fun b!1387140 () Bool)

(assert (=> b!1387140 (= e!785746 call!66558)))

(declare-fun b!1387141 () Bool)

(assert (=> b!1387141 (= e!785746 e!785747)))

(declare-fun lt!609693 () (_ BitVec 64))

(assert (=> b!1387141 (= lt!609693 (select (arr!45812 lt!609667) startIndex!16))))

(declare-fun lt!609692 () Unit!46330)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!94880 (_ BitVec 64) (_ BitVec 32)) Unit!46330)

(assert (=> b!1387141 (= lt!609692 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!609667 lt!609693 startIndex!16))))

(declare-fun arrayContainsKey!0 (array!94880 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1387141 (arrayContainsKey!0 lt!609667 lt!609693 #b00000000000000000000000000000000)))

(declare-fun lt!609694 () Unit!46330)

(assert (=> b!1387141 (= lt!609694 lt!609692)))

(declare-fun res!928272 () Bool)

(assert (=> b!1387141 (= res!928272 (= (seekEntryOrOpen!0 (select (arr!45812 lt!609667) startIndex!16) lt!609667 mask!2987) (Found!10177 startIndex!16)))))

(assert (=> b!1387141 (=> (not res!928272) (not e!785747))))

(declare-fun bm!66555 () Bool)

(assert (=> bm!66555 (= call!66558 (arrayForallSeekEntryOrOpenFound!0 (bvadd startIndex!16 #b00000000000000000000000000000001) lt!609667 mask!2987))))

(assert (= (and d!149385 (not res!928271)) b!1387139))

(assert (= (and b!1387139 c!128876) b!1387141))

(assert (= (and b!1387139 (not c!128876)) b!1387140))

(assert (= (and b!1387141 res!928272) b!1387138))

(assert (= (or b!1387138 b!1387140) bm!66555))

(declare-fun m!1272661 () Bool)

(assert (=> b!1387139 m!1272661))

(assert (=> b!1387139 m!1272661))

(declare-fun m!1272663 () Bool)

(assert (=> b!1387139 m!1272663))

(assert (=> b!1387141 m!1272661))

(declare-fun m!1272665 () Bool)

(assert (=> b!1387141 m!1272665))

(declare-fun m!1272667 () Bool)

(assert (=> b!1387141 m!1272667))

(assert (=> b!1387141 m!1272661))

(declare-fun m!1272669 () Bool)

(assert (=> b!1387141 m!1272669))

(declare-fun m!1272671 () Bool)

(assert (=> bm!66555 m!1272671))

(assert (=> b!1387084 d!149385))

(declare-fun b!1387142 () Bool)

(declare-fun e!785750 () Bool)

(declare-fun call!66559 () Bool)

(assert (=> b!1387142 (= e!785750 call!66559)))

(declare-fun d!149387 () Bool)

(declare-fun res!928273 () Bool)

(declare-fun e!785748 () Bool)

(assert (=> d!149387 (=> res!928273 e!785748)))

(assert (=> d!149387 (= res!928273 (bvsge (bvadd #b00000000000000000000000000000001 startIndex!16) (size!46363 lt!609667)))))

(assert (=> d!149387 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!16) lt!609667 mask!2987) e!785748)))

(declare-fun b!1387143 () Bool)

(declare-fun e!785749 () Bool)

(assert (=> b!1387143 (= e!785748 e!785749)))

(declare-fun c!128877 () Bool)

(assert (=> b!1387143 (= c!128877 (validKeyInArray!0 (select (arr!45812 lt!609667) (bvadd #b00000000000000000000000000000001 startIndex!16))))))

(declare-fun b!1387144 () Bool)

(assert (=> b!1387144 (= e!785749 call!66559)))

(declare-fun b!1387145 () Bool)

(assert (=> b!1387145 (= e!785749 e!785750)))

(declare-fun lt!609696 () (_ BitVec 64))

(assert (=> b!1387145 (= lt!609696 (select (arr!45812 lt!609667) (bvadd #b00000000000000000000000000000001 startIndex!16)))))

(declare-fun lt!609695 () Unit!46330)

(assert (=> b!1387145 (= lt!609695 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!609667 lt!609696 (bvadd #b00000000000000000000000000000001 startIndex!16)))))

(assert (=> b!1387145 (arrayContainsKey!0 lt!609667 lt!609696 #b00000000000000000000000000000000)))

(declare-fun lt!609697 () Unit!46330)

(assert (=> b!1387145 (= lt!609697 lt!609695)))

(declare-fun res!928274 () Bool)

(assert (=> b!1387145 (= res!928274 (= (seekEntryOrOpen!0 (select (arr!45812 lt!609667) (bvadd #b00000000000000000000000000000001 startIndex!16)) lt!609667 mask!2987) (Found!10177 (bvadd #b00000000000000000000000000000001 startIndex!16))))))

(assert (=> b!1387145 (=> (not res!928274) (not e!785750))))

(declare-fun bm!66556 () Bool)

(assert (=> bm!66556 (= call!66559 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!16 #b00000000000000000000000000000001) lt!609667 mask!2987))))

(assert (= (and d!149387 (not res!928273)) b!1387143))

(assert (= (and b!1387143 c!128877) b!1387145))

(assert (= (and b!1387143 (not c!128877)) b!1387144))

(assert (= (and b!1387145 res!928274) b!1387142))

(assert (= (or b!1387142 b!1387144) bm!66556))

(declare-fun m!1272673 () Bool)

(assert (=> b!1387143 m!1272673))

(assert (=> b!1387143 m!1272673))

(declare-fun m!1272675 () Bool)

(assert (=> b!1387143 m!1272675))

(assert (=> b!1387145 m!1272673))

(declare-fun m!1272677 () Bool)

(assert (=> b!1387145 m!1272677))

(declare-fun m!1272679 () Bool)

(assert (=> b!1387145 m!1272679))

(assert (=> b!1387145 m!1272673))

(declare-fun m!1272681 () Bool)

(assert (=> b!1387145 m!1272681))

(declare-fun m!1272683 () Bool)

(assert (=> bm!66556 m!1272683))

(assert (=> b!1387084 d!149387))

(declare-fun d!149389 () Bool)

(declare-fun e!785753 () Bool)

(assert (=> d!149389 e!785753))

(declare-fun res!928277 () Bool)

(assert (=> d!149389 (=> (not res!928277) (not e!785753))))

(assert (=> d!149389 (= res!928277 (and (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46363 a!2938))))))

(declare-fun lt!609700 () Unit!46330)

(declare-fun choose!23 (array!94880 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46330)

(assert (=> d!149389 (= lt!609700 (choose!23 a!2938 i!1065 (bvadd #b00000000000000000000000000000001 startIndex!16) mask!2987))))

(assert (=> d!149389 (validMask!0 mask!2987)))

(assert (=> d!149389 (= (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenStartIndex!0 a!2938 i!1065 (bvadd #b00000000000000000000000000000001 startIndex!16) mask!2987) lt!609700)))

(declare-fun b!1387148 () Bool)

(assert (=> b!1387148 (= e!785753 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!16) (array!94881 (store (arr!45812 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46363 a!2938)) mask!2987))))

(assert (= (and d!149389 res!928277) b!1387148))

(declare-fun m!1272685 () Bool)

(assert (=> d!149389 m!1272685))

(assert (=> d!149389 m!1272583))

(assert (=> b!1387148 m!1272591))

(declare-fun m!1272687 () Bool)

(assert (=> b!1387148 m!1272687))

(assert (=> b!1387084 d!149389))

(declare-fun d!149391 () Bool)

(assert (=> d!149391 (= (validKeyInArray!0 (select (arr!45812 a!2938) i!1065)) (and (not (= (select (arr!45812 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45812 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1387078 d!149391))

(declare-fun d!149393 () Bool)

(assert (=> d!149393 (= (validMask!0 mask!2987) (and (or (= mask!2987 #b00000000000000000000000000000111) (= mask!2987 #b00000000000000000000000000001111) (= mask!2987 #b00000000000000000000000000011111) (= mask!2987 #b00000000000000000000000000111111) (= mask!2987 #b00000000000000000000000001111111) (= mask!2987 #b00000000000000000000000011111111) (= mask!2987 #b00000000000000000000000111111111) (= mask!2987 #b00000000000000000000001111111111) (= mask!2987 #b00000000000000000000011111111111) (= mask!2987 #b00000000000000000000111111111111) (= mask!2987 #b00000000000000000001111111111111) (= mask!2987 #b00000000000000000011111111111111) (= mask!2987 #b00000000000000000111111111111111) (= mask!2987 #b00000000000000001111111111111111) (= mask!2987 #b00000000000000011111111111111111) (= mask!2987 #b00000000000000111111111111111111) (= mask!2987 #b00000000000001111111111111111111) (= mask!2987 #b00000000000011111111111111111111) (= mask!2987 #b00000000000111111111111111111111) (= mask!2987 #b00000000001111111111111111111111) (= mask!2987 #b00000000011111111111111111111111) (= mask!2987 #b00000000111111111111111111111111) (= mask!2987 #b00000001111111111111111111111111) (= mask!2987 #b00000011111111111111111111111111) (= mask!2987 #b00000111111111111111111111111111) (= mask!2987 #b00001111111111111111111111111111) (= mask!2987 #b00011111111111111111111111111111) (= mask!2987 #b00111111111111111111111111111111)) (bvsle mask!2987 #b00111111111111111111111111111111)))))

(assert (=> start!118686 d!149393))

(declare-fun d!149405 () Bool)

(assert (=> d!149405 (= (array_inv!34757 a!2938) (bvsge (size!46363 a!2938) #b00000000000000000000000000000000))))

(assert (=> start!118686 d!149405))

(declare-fun d!149407 () Bool)

(assert (=> d!149407 (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987)))

(declare-fun lt!609720 () Unit!46330)

(declare-fun choose!38 (array!94880 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46330)

(assert (=> d!149407 (= lt!609720 (choose!38 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16))))

(assert (=> d!149407 (validMask!0 mask!2987)))

(assert (=> d!149407 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16) lt!609720)))

(declare-fun bs!40305 () Bool)

(assert (= bs!40305 d!149407))

(assert (=> bs!40305 m!1272609))

(declare-fun m!1272715 () Bool)

(assert (=> bs!40305 m!1272715))

(assert (=> bs!40305 m!1272583))

(assert (=> b!1387077 d!149407))

(declare-fun b!1387167 () Bool)

(declare-fun e!785770 () Bool)

(declare-fun call!66564 () Bool)

(assert (=> b!1387167 (= e!785770 call!66564)))

(declare-fun d!149413 () Bool)

(declare-fun res!928288 () Bool)

(declare-fun e!785768 () Bool)

(assert (=> d!149413 (=> res!928288 e!785768)))

(assert (=> d!149413 (= res!928288 (bvsge startIndex!16 (size!46363 a!2938)))))

(assert (=> d!149413 (= (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987) e!785768)))

(declare-fun b!1387168 () Bool)

(declare-fun e!785769 () Bool)

(assert (=> b!1387168 (= e!785768 e!785769)))

(declare-fun c!128882 () Bool)

(assert (=> b!1387168 (= c!128882 (validKeyInArray!0 (select (arr!45812 a!2938) startIndex!16)))))

(declare-fun b!1387169 () Bool)

(assert (=> b!1387169 (= e!785769 call!66564)))

(declare-fun b!1387170 () Bool)

(assert (=> b!1387170 (= e!785769 e!785770)))

(declare-fun lt!609722 () (_ BitVec 64))

(assert (=> b!1387170 (= lt!609722 (select (arr!45812 a!2938) startIndex!16))))

(declare-fun lt!609721 () Unit!46330)

(assert (=> b!1387170 (= lt!609721 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2938 lt!609722 startIndex!16))))

(assert (=> b!1387170 (arrayContainsKey!0 a!2938 lt!609722 #b00000000000000000000000000000000)))

(declare-fun lt!609723 () Unit!46330)

(assert (=> b!1387170 (= lt!609723 lt!609721)))

(declare-fun res!928289 () Bool)

(assert (=> b!1387170 (= res!928289 (= (seekEntryOrOpen!0 (select (arr!45812 a!2938) startIndex!16) a!2938 mask!2987) (Found!10177 startIndex!16)))))

(assert (=> b!1387170 (=> (not res!928289) (not e!785770))))

(declare-fun bm!66561 () Bool)

(assert (=> bm!66561 (= call!66564 (arrayForallSeekEntryOrOpenFound!0 (bvadd startIndex!16 #b00000000000000000000000000000001) a!2938 mask!2987))))

(assert (= (and d!149413 (not res!928288)) b!1387168))

(assert (= (and b!1387168 c!128882) b!1387170))

(assert (= (and b!1387168 (not c!128882)) b!1387169))

(assert (= (and b!1387170 res!928289) b!1387167))

(assert (= (or b!1387167 b!1387169) bm!66561))

(assert (=> b!1387168 m!1272587))

(assert (=> b!1387168 m!1272587))

(assert (=> b!1387168 m!1272589))

(assert (=> b!1387170 m!1272587))

(declare-fun m!1272717 () Bool)

(assert (=> b!1387170 m!1272717))

(declare-fun m!1272719 () Bool)

(assert (=> b!1387170 m!1272719))

(assert (=> b!1387170 m!1272587))

(assert (=> b!1387170 m!1272603))

(declare-fun m!1272721 () Bool)

(assert (=> bm!66561 m!1272721))

(assert (=> b!1387077 d!149413))

(declare-fun b!1387237 () Bool)

(declare-fun e!785814 () SeekEntryResult!10177)

(assert (=> b!1387237 (= e!785814 Undefined!10177)))

(declare-fun e!785815 () SeekEntryResult!10177)

(declare-fun b!1387238 () Bool)

(declare-fun lt!609760 () SeekEntryResult!10177)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!94880 (_ BitVec 32)) SeekEntryResult!10177)

(assert (=> b!1387238 (= e!785815 (seekKeyOrZeroReturnVacant!0 (x!124693 lt!609760) (index!43080 lt!609760) (index!43080 lt!609760) (select (store (arr!45812 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) lt!609667 mask!2987))))

(declare-fun d!149415 () Bool)

(declare-fun lt!609759 () SeekEntryResult!10177)

(get-info :version)

(assert (=> d!149415 (and (or ((_ is Undefined!10177) lt!609759) (not ((_ is Found!10177) lt!609759)) (and (bvsge (index!43079 lt!609759) #b00000000000000000000000000000000) (bvslt (index!43079 lt!609759) (size!46363 lt!609667)))) (or ((_ is Undefined!10177) lt!609759) ((_ is Found!10177) lt!609759) (not ((_ is MissingZero!10177) lt!609759)) (and (bvsge (index!43078 lt!609759) #b00000000000000000000000000000000) (bvslt (index!43078 lt!609759) (size!46363 lt!609667)))) (or ((_ is Undefined!10177) lt!609759) ((_ is Found!10177) lt!609759) ((_ is MissingZero!10177) lt!609759) (not ((_ is MissingVacant!10177) lt!609759)) (and (bvsge (index!43081 lt!609759) #b00000000000000000000000000000000) (bvslt (index!43081 lt!609759) (size!46363 lt!609667)))) (or ((_ is Undefined!10177) lt!609759) (ite ((_ is Found!10177) lt!609759) (= (select (arr!45812 lt!609667) (index!43079 lt!609759)) (select (store (arr!45812 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16)) (ite ((_ is MissingZero!10177) lt!609759) (= (select (arr!45812 lt!609667) (index!43078 lt!609759)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!10177) lt!609759) (= (select (arr!45812 lt!609667) (index!43081 lt!609759)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!149415 (= lt!609759 e!785814)))

(declare-fun c!128907 () Bool)

(assert (=> d!149415 (= c!128907 (and ((_ is Intermediate!10177) lt!609760) (undefined!10989 lt!609760)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!94880 (_ BitVec 32)) SeekEntryResult!10177)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!149415 (= lt!609760 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!45812 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) mask!2987) (select (store (arr!45812 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) lt!609667 mask!2987))))

(assert (=> d!149415 (validMask!0 mask!2987)))

(assert (=> d!149415 (= (seekEntryOrOpen!0 (select (store (arr!45812 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) lt!609667 mask!2987) lt!609759)))

(declare-fun b!1387239 () Bool)

(declare-fun c!128909 () Bool)

(declare-fun lt!609758 () (_ BitVec 64))

(assert (=> b!1387239 (= c!128909 (= lt!609758 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!785813 () SeekEntryResult!10177)

(assert (=> b!1387239 (= e!785813 e!785815)))

(declare-fun b!1387240 () Bool)

(assert (=> b!1387240 (= e!785814 e!785813)))

(assert (=> b!1387240 (= lt!609758 (select (arr!45812 lt!609667) (index!43080 lt!609760)))))

(declare-fun c!128908 () Bool)

(assert (=> b!1387240 (= c!128908 (= lt!609758 (select (store (arr!45812 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16)))))

(declare-fun b!1387241 () Bool)

(assert (=> b!1387241 (= e!785813 (Found!10177 (index!43080 lt!609760)))))

(declare-fun b!1387242 () Bool)

(assert (=> b!1387242 (= e!785815 (MissingZero!10177 (index!43080 lt!609760)))))

(assert (= (and d!149415 c!128907) b!1387237))

(assert (= (and d!149415 (not c!128907)) b!1387240))

(assert (= (and b!1387240 c!128908) b!1387241))

(assert (= (and b!1387240 (not c!128908)) b!1387239))

(assert (= (and b!1387239 c!128909) b!1387242))

(assert (= (and b!1387239 (not c!128909)) b!1387238))

(assert (=> b!1387238 m!1272599))

(declare-fun m!1272789 () Bool)

(assert (=> b!1387238 m!1272789))

(assert (=> d!149415 m!1272583))

(declare-fun m!1272791 () Bool)

(assert (=> d!149415 m!1272791))

(declare-fun m!1272793 () Bool)

(assert (=> d!149415 m!1272793))

(assert (=> d!149415 m!1272599))

(declare-fun m!1272795 () Bool)

(assert (=> d!149415 m!1272795))

(declare-fun m!1272797 () Bool)

(assert (=> d!149415 m!1272797))

(assert (=> d!149415 m!1272599))

(assert (=> d!149415 m!1272793))

(declare-fun m!1272799 () Bool)

(assert (=> d!149415 m!1272799))

(declare-fun m!1272803 () Bool)

(assert (=> b!1387240 m!1272803))

(assert (=> b!1387077 d!149415))

(declare-fun d!149435 () Bool)

(declare-fun e!785843 () Bool)

(assert (=> d!149435 e!785843))

(declare-fun res!928330 () Bool)

(assert (=> d!149435 (=> (not res!928330) (not e!785843))))

(assert (=> d!149435 (= res!928330 (and (or (bvslt i!1065 #b00000000000000000000000000000000) (bvsge i!1065 (size!46363 a!2938)) (and (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46363 a!2938)))) (or (bvslt i!1065 #b00000000000000000000000000000000) (bvsge i!1065 (size!46363 a!2938)) (and (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46363 a!2938)))) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46363 a!2938))))))

(declare-fun lt!609781 () Unit!46330)

(declare-fun choose!14 (array!94880 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46330)

(assert (=> d!149435 (= lt!609781 (choose!14 a!2938 i!1065 startIndex!16 mask!2987))))

(assert (=> d!149435 (validMask!0 mask!2987)))

(assert (=> d!149435 (= (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987) lt!609781)))

(declare-fun b!1387273 () Bool)

(assert (=> b!1387273 (= e!785843 (= (seekEntryOrOpen!0 (select (arr!45812 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45812 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94881 (store (arr!45812 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46363 a!2938)) mask!2987)))))

(assert (= (and d!149435 res!928330) b!1387273))

(declare-fun m!1272843 () Bool)

(assert (=> d!149435 m!1272843))

(assert (=> d!149435 m!1272583))

(assert (=> b!1387273 m!1272587))

(assert (=> b!1387273 m!1272603))

(assert (=> b!1387273 m!1272599))

(declare-fun m!1272845 () Bool)

(assert (=> b!1387273 m!1272845))

(assert (=> b!1387273 m!1272599))

(assert (=> b!1387273 m!1272591))

(assert (=> b!1387273 m!1272587))

(assert (=> b!1387077 d!149435))

(declare-fun b!1387280 () Bool)

(declare-fun e!785847 () SeekEntryResult!10177)

(assert (=> b!1387280 (= e!785847 Undefined!10177)))

(declare-fun b!1387281 () Bool)

(declare-fun e!785848 () SeekEntryResult!10177)

(declare-fun lt!609784 () SeekEntryResult!10177)

(assert (=> b!1387281 (= e!785848 (seekKeyOrZeroReturnVacant!0 (x!124693 lt!609784) (index!43080 lt!609784) (index!43080 lt!609784) (select (arr!45812 a!2938) startIndex!16) a!2938 mask!2987))))

(declare-fun d!149455 () Bool)

(declare-fun lt!609783 () SeekEntryResult!10177)

(assert (=> d!149455 (and (or ((_ is Undefined!10177) lt!609783) (not ((_ is Found!10177) lt!609783)) (and (bvsge (index!43079 lt!609783) #b00000000000000000000000000000000) (bvslt (index!43079 lt!609783) (size!46363 a!2938)))) (or ((_ is Undefined!10177) lt!609783) ((_ is Found!10177) lt!609783) (not ((_ is MissingZero!10177) lt!609783)) (and (bvsge (index!43078 lt!609783) #b00000000000000000000000000000000) (bvslt (index!43078 lt!609783) (size!46363 a!2938)))) (or ((_ is Undefined!10177) lt!609783) ((_ is Found!10177) lt!609783) ((_ is MissingZero!10177) lt!609783) (not ((_ is MissingVacant!10177) lt!609783)) (and (bvsge (index!43081 lt!609783) #b00000000000000000000000000000000) (bvslt (index!43081 lt!609783) (size!46363 a!2938)))) (or ((_ is Undefined!10177) lt!609783) (ite ((_ is Found!10177) lt!609783) (= (select (arr!45812 a!2938) (index!43079 lt!609783)) (select (arr!45812 a!2938) startIndex!16)) (ite ((_ is MissingZero!10177) lt!609783) (= (select (arr!45812 a!2938) (index!43078 lt!609783)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!10177) lt!609783) (= (select (arr!45812 a!2938) (index!43081 lt!609783)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!149455 (= lt!609783 e!785847)))

(declare-fun c!128917 () Bool)

(assert (=> d!149455 (= c!128917 (and ((_ is Intermediate!10177) lt!609784) (undefined!10989 lt!609784)))))

(assert (=> d!149455 (= lt!609784 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45812 a!2938) startIndex!16) mask!2987) (select (arr!45812 a!2938) startIndex!16) a!2938 mask!2987))))

(assert (=> d!149455 (validMask!0 mask!2987)))

(assert (=> d!149455 (= (seekEntryOrOpen!0 (select (arr!45812 a!2938) startIndex!16) a!2938 mask!2987) lt!609783)))

(declare-fun b!1387282 () Bool)

(declare-fun c!128919 () Bool)

(declare-fun lt!609782 () (_ BitVec 64))

(assert (=> b!1387282 (= c!128919 (= lt!609782 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!785846 () SeekEntryResult!10177)

(assert (=> b!1387282 (= e!785846 e!785848)))

(declare-fun b!1387283 () Bool)

(assert (=> b!1387283 (= e!785847 e!785846)))

(assert (=> b!1387283 (= lt!609782 (select (arr!45812 a!2938) (index!43080 lt!609784)))))

(declare-fun c!128918 () Bool)

(assert (=> b!1387283 (= c!128918 (= lt!609782 (select (arr!45812 a!2938) startIndex!16)))))

(declare-fun b!1387284 () Bool)

(assert (=> b!1387284 (= e!785846 (Found!10177 (index!43080 lt!609784)))))

(declare-fun b!1387285 () Bool)

(assert (=> b!1387285 (= e!785848 (MissingZero!10177 (index!43080 lt!609784)))))

(assert (= (and d!149455 c!128917) b!1387280))

(assert (= (and d!149455 (not c!128917)) b!1387283))

(assert (= (and b!1387283 c!128918) b!1387284))

(assert (= (and b!1387283 (not c!128918)) b!1387282))

(assert (= (and b!1387282 c!128919) b!1387285))

(assert (= (and b!1387282 (not c!128919)) b!1387281))

(assert (=> b!1387281 m!1272587))

(declare-fun m!1272847 () Bool)

(assert (=> b!1387281 m!1272847))

(assert (=> d!149455 m!1272583))

(declare-fun m!1272849 () Bool)

(assert (=> d!149455 m!1272849))

(declare-fun m!1272851 () Bool)

(assert (=> d!149455 m!1272851))

(assert (=> d!149455 m!1272587))

(declare-fun m!1272853 () Bool)

(assert (=> d!149455 m!1272853))

(declare-fun m!1272855 () Bool)

(assert (=> d!149455 m!1272855))

(assert (=> d!149455 m!1272587))

(assert (=> d!149455 m!1272851))

(declare-fun m!1272857 () Bool)

(assert (=> d!149455 m!1272857))

(declare-fun m!1272859 () Bool)

(assert (=> b!1387283 m!1272859))

(assert (=> b!1387077 d!149455))

(declare-fun d!149457 () Bool)

(assert (=> d!149457 (= (validKeyInArray!0 (select (arr!45812 a!2938) startIndex!16)) (and (not (= (select (arr!45812 a!2938) startIndex!16) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45812 a!2938) startIndex!16) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1387082 d!149457))

(declare-fun b!1387291 () Bool)

(declare-fun e!785855 () Bool)

(declare-fun call!66579 () Bool)

(assert (=> b!1387291 (= e!785855 call!66579)))

(declare-fun d!149459 () Bool)

(declare-fun res!928334 () Bool)

(declare-fun e!785853 () Bool)

(assert (=> d!149459 (=> res!928334 e!785853)))

(assert (=> d!149459 (= res!928334 (bvsge #b00000000000000000000000000000000 (size!46363 a!2938)))))

(assert (=> d!149459 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987) e!785853)))

(declare-fun b!1387292 () Bool)

(declare-fun e!785854 () Bool)

(assert (=> b!1387292 (= e!785853 e!785854)))

(declare-fun c!128921 () Bool)

(assert (=> b!1387292 (= c!128921 (validKeyInArray!0 (select (arr!45812 a!2938) #b00000000000000000000000000000000)))))

(declare-fun b!1387293 () Bool)

(assert (=> b!1387293 (= e!785854 call!66579)))

(declare-fun b!1387294 () Bool)

(assert (=> b!1387294 (= e!785854 e!785855)))

(declare-fun lt!609786 () (_ BitVec 64))

(assert (=> b!1387294 (= lt!609786 (select (arr!45812 a!2938) #b00000000000000000000000000000000))))

(declare-fun lt!609785 () Unit!46330)

(assert (=> b!1387294 (= lt!609785 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2938 lt!609786 #b00000000000000000000000000000000))))

(assert (=> b!1387294 (arrayContainsKey!0 a!2938 lt!609786 #b00000000000000000000000000000000)))

(declare-fun lt!609787 () Unit!46330)

(assert (=> b!1387294 (= lt!609787 lt!609785)))

(declare-fun res!928335 () Bool)

(assert (=> b!1387294 (= res!928335 (= (seekEntryOrOpen!0 (select (arr!45812 a!2938) #b00000000000000000000000000000000) a!2938 mask!2987) (Found!10177 #b00000000000000000000000000000000)))))

(assert (=> b!1387294 (=> (not res!928335) (not e!785855))))

(declare-fun bm!66576 () Bool)

(assert (=> bm!66576 (= call!66579 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2938 mask!2987))))

(assert (= (and d!149459 (not res!928334)) b!1387292))

(assert (= (and b!1387292 c!128921) b!1387294))

(assert (= (and b!1387292 (not c!128921)) b!1387293))

(assert (= (and b!1387294 res!928335) b!1387291))

(assert (= (or b!1387291 b!1387293) bm!66576))

(assert (=> b!1387292 m!1272653))

(assert (=> b!1387292 m!1272653))

(assert (=> b!1387292 m!1272657))

(assert (=> b!1387294 m!1272653))

(declare-fun m!1272865 () Bool)

(assert (=> b!1387294 m!1272865))

(declare-fun m!1272867 () Bool)

(assert (=> b!1387294 m!1272867))

(assert (=> b!1387294 m!1272653))

(declare-fun m!1272869 () Bool)

(assert (=> b!1387294 m!1272869))

(declare-fun m!1272871 () Bool)

(assert (=> bm!66576 m!1272871))

(assert (=> b!1387081 d!149459))

(check-sat (not d!149455) (not b!1387294) (not b!1387168) (not d!149415) (not b!1387292) (not b!1387148) (not bm!66576) (not bm!66552) (not b!1387141) (not b!1387143) (not d!149389) (not b!1387129) (not b!1387170) (not d!149407) (not d!149435) (not b!1387125) (not b!1387238) (not bm!66555) (not bm!66561) (not b!1387126) (not b!1387145) (not bm!66556) (not b!1387139) (not b!1387273) (not b!1387281))
(check-sat)
(get-model)

(declare-fun b!1387322 () Bool)

(declare-fun e!785873 () Bool)

(declare-fun call!66580 () Bool)

(assert (=> b!1387322 (= e!785873 call!66580)))

(declare-fun d!149467 () Bool)

(declare-fun res!928339 () Bool)

(declare-fun e!785871 () Bool)

(assert (=> d!149467 (=> res!928339 e!785871)))

(assert (=> d!149467 (= res!928339 (bvsge (bvadd startIndex!16 #b00000000000000000000000000000001) (size!46363 a!2938)))))

(assert (=> d!149467 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd startIndex!16 #b00000000000000000000000000000001) a!2938 mask!2987) e!785871)))

(declare-fun b!1387323 () Bool)

(declare-fun e!785872 () Bool)

(assert (=> b!1387323 (= e!785871 e!785872)))

(declare-fun c!128934 () Bool)

(assert (=> b!1387323 (= c!128934 (validKeyInArray!0 (select (arr!45812 a!2938) (bvadd startIndex!16 #b00000000000000000000000000000001))))))

(declare-fun b!1387324 () Bool)

(assert (=> b!1387324 (= e!785872 call!66580)))

(declare-fun b!1387325 () Bool)

(assert (=> b!1387325 (= e!785872 e!785873)))

(declare-fun lt!609804 () (_ BitVec 64))

(assert (=> b!1387325 (= lt!609804 (select (arr!45812 a!2938) (bvadd startIndex!16 #b00000000000000000000000000000001)))))

(declare-fun lt!609803 () Unit!46330)

(assert (=> b!1387325 (= lt!609803 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2938 lt!609804 (bvadd startIndex!16 #b00000000000000000000000000000001)))))

(assert (=> b!1387325 (arrayContainsKey!0 a!2938 lt!609804 #b00000000000000000000000000000000)))

(declare-fun lt!609805 () Unit!46330)

(assert (=> b!1387325 (= lt!609805 lt!609803)))

(declare-fun res!928340 () Bool)

(assert (=> b!1387325 (= res!928340 (= (seekEntryOrOpen!0 (select (arr!45812 a!2938) (bvadd startIndex!16 #b00000000000000000000000000000001)) a!2938 mask!2987) (Found!10177 (bvadd startIndex!16 #b00000000000000000000000000000001))))))

(assert (=> b!1387325 (=> (not res!928340) (not e!785873))))

(declare-fun bm!66577 () Bool)

(assert (=> bm!66577 (= call!66580 (arrayForallSeekEntryOrOpenFound!0 (bvadd startIndex!16 #b00000000000000000000000000000001 #b00000000000000000000000000000001) a!2938 mask!2987))))

(assert (= (and d!149467 (not res!928339)) b!1387323))

(assert (= (and b!1387323 c!128934) b!1387325))

(assert (= (and b!1387323 (not c!128934)) b!1387324))

(assert (= (and b!1387325 res!928340) b!1387322))

(assert (= (or b!1387322 b!1387324) bm!66577))

(declare-fun m!1272905 () Bool)

(assert (=> b!1387323 m!1272905))

(assert (=> b!1387323 m!1272905))

(declare-fun m!1272907 () Bool)

(assert (=> b!1387323 m!1272907))

(assert (=> b!1387325 m!1272905))

(declare-fun m!1272909 () Bool)

(assert (=> b!1387325 m!1272909))

(declare-fun m!1272911 () Bool)

(assert (=> b!1387325 m!1272911))

(assert (=> b!1387325 m!1272905))

(declare-fun m!1272913 () Bool)

(assert (=> b!1387325 m!1272913))

(declare-fun m!1272915 () Bool)

(assert (=> bm!66577 m!1272915))

(assert (=> bm!66561 d!149467))

(declare-fun d!149469 () Bool)

(assert (=> d!149469 (arrayContainsKey!0 a!2938 lt!609722 #b00000000000000000000000000000000)))

(declare-fun lt!609808 () Unit!46330)

(declare-fun choose!13 (array!94880 (_ BitVec 64) (_ BitVec 32)) Unit!46330)

(assert (=> d!149469 (= lt!609808 (choose!13 a!2938 lt!609722 startIndex!16))))

(assert (=> d!149469 (bvsge startIndex!16 #b00000000000000000000000000000000)))

(assert (=> d!149469 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2938 lt!609722 startIndex!16) lt!609808)))

(declare-fun bs!40307 () Bool)

(assert (= bs!40307 d!149469))

(assert (=> bs!40307 m!1272719))

(declare-fun m!1272917 () Bool)

(assert (=> bs!40307 m!1272917))

(assert (=> b!1387170 d!149469))

(declare-fun d!149471 () Bool)

(declare-fun res!928345 () Bool)

(declare-fun e!785878 () Bool)

(assert (=> d!149471 (=> res!928345 e!785878)))

(assert (=> d!149471 (= res!928345 (= (select (arr!45812 a!2938) #b00000000000000000000000000000000) lt!609722))))

(assert (=> d!149471 (= (arrayContainsKey!0 a!2938 lt!609722 #b00000000000000000000000000000000) e!785878)))

(declare-fun b!1387330 () Bool)

(declare-fun e!785879 () Bool)

(assert (=> b!1387330 (= e!785878 e!785879)))

(declare-fun res!928346 () Bool)

(assert (=> b!1387330 (=> (not res!928346) (not e!785879))))

(assert (=> b!1387330 (= res!928346 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!46363 a!2938)))))

(declare-fun b!1387331 () Bool)

(assert (=> b!1387331 (= e!785879 (arrayContainsKey!0 a!2938 lt!609722 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!149471 (not res!928345)) b!1387330))

(assert (= (and b!1387330 res!928346) b!1387331))

(assert (=> d!149471 m!1272653))

(declare-fun m!1272919 () Bool)

(assert (=> b!1387331 m!1272919))

(assert (=> b!1387170 d!149471))

(assert (=> b!1387170 d!149455))

(assert (=> b!1387168 d!149457))

(declare-fun b!1387344 () Bool)

(declare-fun e!785886 () SeekEntryResult!10177)

(assert (=> b!1387344 (= e!785886 (MissingVacant!10177 (index!43080 lt!609760)))))

(declare-fun b!1387345 () Bool)

(declare-fun e!785887 () SeekEntryResult!10177)

(assert (=> b!1387345 (= e!785887 Undefined!10177)))

(declare-fun b!1387346 () Bool)

(declare-fun c!128943 () Bool)

(declare-fun lt!609813 () (_ BitVec 64))

(assert (=> b!1387346 (= c!128943 (= lt!609813 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!785888 () SeekEntryResult!10177)

(assert (=> b!1387346 (= e!785888 e!785886)))

(declare-fun d!149473 () Bool)

(declare-fun lt!609814 () SeekEntryResult!10177)

(assert (=> d!149473 (and (or ((_ is Undefined!10177) lt!609814) (not ((_ is Found!10177) lt!609814)) (and (bvsge (index!43079 lt!609814) #b00000000000000000000000000000000) (bvslt (index!43079 lt!609814) (size!46363 lt!609667)))) (or ((_ is Undefined!10177) lt!609814) ((_ is Found!10177) lt!609814) (not ((_ is MissingVacant!10177) lt!609814)) (not (= (index!43081 lt!609814) (index!43080 lt!609760))) (and (bvsge (index!43081 lt!609814) #b00000000000000000000000000000000) (bvslt (index!43081 lt!609814) (size!46363 lt!609667)))) (or ((_ is Undefined!10177) lt!609814) (ite ((_ is Found!10177) lt!609814) (= (select (arr!45812 lt!609667) (index!43079 lt!609814)) (select (store (arr!45812 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16)) (and ((_ is MissingVacant!10177) lt!609814) (= (index!43081 lt!609814) (index!43080 lt!609760)) (= (select (arr!45812 lt!609667) (index!43081 lt!609814)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!149473 (= lt!609814 e!785887)))

(declare-fun c!128941 () Bool)

(assert (=> d!149473 (= c!128941 (bvsge (x!124693 lt!609760) #b01111111111111111111111111111110))))

(assert (=> d!149473 (= lt!609813 (select (arr!45812 lt!609667) (index!43080 lt!609760)))))

(assert (=> d!149473 (validMask!0 mask!2987)))

(assert (=> d!149473 (= (seekKeyOrZeroReturnVacant!0 (x!124693 lt!609760) (index!43080 lt!609760) (index!43080 lt!609760) (select (store (arr!45812 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) lt!609667 mask!2987) lt!609814)))

(declare-fun b!1387347 () Bool)

(assert (=> b!1387347 (= e!785888 (Found!10177 (index!43080 lt!609760)))))

(declare-fun b!1387348 () Bool)

(assert (=> b!1387348 (= e!785887 e!785888)))

(declare-fun c!128942 () Bool)

(assert (=> b!1387348 (= c!128942 (= lt!609813 (select (store (arr!45812 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16)))))

(declare-fun b!1387349 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1387349 (= e!785886 (seekKeyOrZeroReturnVacant!0 (bvadd (x!124693 lt!609760) #b00000000000000000000000000000001) (nextIndex!0 (index!43080 lt!609760) (x!124693 lt!609760) mask!2987) (index!43080 lt!609760) (select (store (arr!45812 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) lt!609667 mask!2987))))

(assert (= (and d!149473 c!128941) b!1387345))

(assert (= (and d!149473 (not c!128941)) b!1387348))

(assert (= (and b!1387348 c!128942) b!1387347))

(assert (= (and b!1387348 (not c!128942)) b!1387346))

(assert (= (and b!1387346 c!128943) b!1387344))

(assert (= (and b!1387346 (not c!128943)) b!1387349))

(declare-fun m!1272921 () Bool)

(assert (=> d!149473 m!1272921))

(declare-fun m!1272923 () Bool)

(assert (=> d!149473 m!1272923))

(assert (=> d!149473 m!1272803))

(assert (=> d!149473 m!1272583))

(declare-fun m!1272925 () Bool)

(assert (=> b!1387349 m!1272925))

(assert (=> b!1387349 m!1272925))

(assert (=> b!1387349 m!1272599))

(declare-fun m!1272927 () Bool)

(assert (=> b!1387349 m!1272927))

(assert (=> b!1387238 d!149473))

(declare-fun d!149475 () Bool)

(assert (=> d!149475 (= (validKeyInArray!0 (select (arr!45812 lt!609667) startIndex!16)) (and (not (= (select (arr!45812 lt!609667) startIndex!16) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45812 lt!609667) startIndex!16) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1387139 d!149475))

(declare-fun b!1387350 () Bool)

(declare-fun e!785891 () Bool)

(declare-fun call!66581 () Bool)

(assert (=> b!1387350 (= e!785891 call!66581)))

(declare-fun d!149477 () Bool)

(declare-fun res!928347 () Bool)

(declare-fun e!785889 () Bool)

(assert (=> d!149477 (=> res!928347 e!785889)))

(assert (=> d!149477 (= res!928347 (bvsge (bvadd #b00000000000000000000000000000001 startIndex!16) (size!46363 (array!94881 (store (arr!45812 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46363 a!2938)))))))

(assert (=> d!149477 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!16) (array!94881 (store (arr!45812 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46363 a!2938)) mask!2987) e!785889)))

(declare-fun b!1387351 () Bool)

(declare-fun e!785890 () Bool)

(assert (=> b!1387351 (= e!785889 e!785890)))

(declare-fun c!128944 () Bool)

(assert (=> b!1387351 (= c!128944 (validKeyInArray!0 (select (arr!45812 (array!94881 (store (arr!45812 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46363 a!2938))) (bvadd #b00000000000000000000000000000001 startIndex!16))))))

(declare-fun b!1387352 () Bool)

(assert (=> b!1387352 (= e!785890 call!66581)))

(declare-fun b!1387353 () Bool)

(assert (=> b!1387353 (= e!785890 e!785891)))

(declare-fun lt!609816 () (_ BitVec 64))

(assert (=> b!1387353 (= lt!609816 (select (arr!45812 (array!94881 (store (arr!45812 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46363 a!2938))) (bvadd #b00000000000000000000000000000001 startIndex!16)))))

(declare-fun lt!609815 () Unit!46330)

(assert (=> b!1387353 (= lt!609815 (lemmaArrayContainsFromImpliesContainsFromZero!0 (array!94881 (store (arr!45812 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46363 a!2938)) lt!609816 (bvadd #b00000000000000000000000000000001 startIndex!16)))))

(assert (=> b!1387353 (arrayContainsKey!0 (array!94881 (store (arr!45812 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46363 a!2938)) lt!609816 #b00000000000000000000000000000000)))

(declare-fun lt!609817 () Unit!46330)

(assert (=> b!1387353 (= lt!609817 lt!609815)))

(declare-fun res!928348 () Bool)

(assert (=> b!1387353 (= res!928348 (= (seekEntryOrOpen!0 (select (arr!45812 (array!94881 (store (arr!45812 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46363 a!2938))) (bvadd #b00000000000000000000000000000001 startIndex!16)) (array!94881 (store (arr!45812 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46363 a!2938)) mask!2987) (Found!10177 (bvadd #b00000000000000000000000000000001 startIndex!16))))))

(assert (=> b!1387353 (=> (not res!928348) (not e!785891))))

(declare-fun bm!66578 () Bool)

(assert (=> bm!66578 (= call!66581 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!16 #b00000000000000000000000000000001) (array!94881 (store (arr!45812 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46363 a!2938)) mask!2987))))

(assert (= (and d!149477 (not res!928347)) b!1387351))

(assert (= (and b!1387351 c!128944) b!1387353))

(assert (= (and b!1387351 (not c!128944)) b!1387352))

(assert (= (and b!1387353 res!928348) b!1387350))

(assert (= (or b!1387350 b!1387352) bm!66578))

(declare-fun m!1272929 () Bool)

(assert (=> b!1387351 m!1272929))

(assert (=> b!1387351 m!1272929))

(declare-fun m!1272931 () Bool)

(assert (=> b!1387351 m!1272931))

(assert (=> b!1387353 m!1272929))

(declare-fun m!1272933 () Bool)

(assert (=> b!1387353 m!1272933))

(declare-fun m!1272935 () Bool)

(assert (=> b!1387353 m!1272935))

(assert (=> b!1387353 m!1272929))

(declare-fun m!1272937 () Bool)

(assert (=> b!1387353 m!1272937))

(declare-fun m!1272939 () Bool)

(assert (=> bm!66578 m!1272939))

(assert (=> b!1387148 d!149477))

(declare-fun b!1387354 () Bool)

(declare-fun e!785892 () SeekEntryResult!10177)

(assert (=> b!1387354 (= e!785892 (MissingVacant!10177 (index!43080 lt!609784)))))

(declare-fun b!1387355 () Bool)

(declare-fun e!785893 () SeekEntryResult!10177)

(assert (=> b!1387355 (= e!785893 Undefined!10177)))

(declare-fun b!1387356 () Bool)

(declare-fun c!128947 () Bool)

(declare-fun lt!609818 () (_ BitVec 64))

(assert (=> b!1387356 (= c!128947 (= lt!609818 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!785894 () SeekEntryResult!10177)

(assert (=> b!1387356 (= e!785894 e!785892)))

(declare-fun lt!609819 () SeekEntryResult!10177)

(declare-fun d!149479 () Bool)

(assert (=> d!149479 (and (or ((_ is Undefined!10177) lt!609819) (not ((_ is Found!10177) lt!609819)) (and (bvsge (index!43079 lt!609819) #b00000000000000000000000000000000) (bvslt (index!43079 lt!609819) (size!46363 a!2938)))) (or ((_ is Undefined!10177) lt!609819) ((_ is Found!10177) lt!609819) (not ((_ is MissingVacant!10177) lt!609819)) (not (= (index!43081 lt!609819) (index!43080 lt!609784))) (and (bvsge (index!43081 lt!609819) #b00000000000000000000000000000000) (bvslt (index!43081 lt!609819) (size!46363 a!2938)))) (or ((_ is Undefined!10177) lt!609819) (ite ((_ is Found!10177) lt!609819) (= (select (arr!45812 a!2938) (index!43079 lt!609819)) (select (arr!45812 a!2938) startIndex!16)) (and ((_ is MissingVacant!10177) lt!609819) (= (index!43081 lt!609819) (index!43080 lt!609784)) (= (select (arr!45812 a!2938) (index!43081 lt!609819)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!149479 (= lt!609819 e!785893)))

(declare-fun c!128945 () Bool)

(assert (=> d!149479 (= c!128945 (bvsge (x!124693 lt!609784) #b01111111111111111111111111111110))))

(assert (=> d!149479 (= lt!609818 (select (arr!45812 a!2938) (index!43080 lt!609784)))))

(assert (=> d!149479 (validMask!0 mask!2987)))

(assert (=> d!149479 (= (seekKeyOrZeroReturnVacant!0 (x!124693 lt!609784) (index!43080 lt!609784) (index!43080 lt!609784) (select (arr!45812 a!2938) startIndex!16) a!2938 mask!2987) lt!609819)))

(declare-fun b!1387357 () Bool)

(assert (=> b!1387357 (= e!785894 (Found!10177 (index!43080 lt!609784)))))

(declare-fun b!1387358 () Bool)

(assert (=> b!1387358 (= e!785893 e!785894)))

(declare-fun c!128946 () Bool)

(assert (=> b!1387358 (= c!128946 (= lt!609818 (select (arr!45812 a!2938) startIndex!16)))))

(declare-fun b!1387359 () Bool)

(assert (=> b!1387359 (= e!785892 (seekKeyOrZeroReturnVacant!0 (bvadd (x!124693 lt!609784) #b00000000000000000000000000000001) (nextIndex!0 (index!43080 lt!609784) (x!124693 lt!609784) mask!2987) (index!43080 lt!609784) (select (arr!45812 a!2938) startIndex!16) a!2938 mask!2987))))

(assert (= (and d!149479 c!128945) b!1387355))

(assert (= (and d!149479 (not c!128945)) b!1387358))

(assert (= (and b!1387358 c!128946) b!1387357))

(assert (= (and b!1387358 (not c!128946)) b!1387356))

(assert (= (and b!1387356 c!128947) b!1387354))

(assert (= (and b!1387356 (not c!128947)) b!1387359))

(declare-fun m!1272941 () Bool)

(assert (=> d!149479 m!1272941))

(declare-fun m!1272943 () Bool)

(assert (=> d!149479 m!1272943))

(assert (=> d!149479 m!1272859))

(assert (=> d!149479 m!1272583))

(declare-fun m!1272945 () Bool)

(assert (=> b!1387359 m!1272945))

(assert (=> b!1387359 m!1272945))

(assert (=> b!1387359 m!1272587))

(declare-fun m!1272947 () Bool)

(assert (=> b!1387359 m!1272947))

(assert (=> b!1387281 d!149479))

(declare-fun d!149481 () Bool)

(assert (=> d!149481 (= (seekEntryOrOpen!0 (select (arr!45812 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45812 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94881 (store (arr!45812 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46363 a!2938)) mask!2987))))

(assert (=> d!149481 true))

(declare-fun _$42!16 () Unit!46330)

(assert (=> d!149481 (= (choose!14 a!2938 i!1065 startIndex!16 mask!2987) _$42!16)))

(declare-fun bs!40308 () Bool)

(assert (= bs!40308 d!149481))

(assert (=> bs!40308 m!1272587))

(assert (=> bs!40308 m!1272591))

(assert (=> bs!40308 m!1272599))

(assert (=> bs!40308 m!1272845))

(assert (=> bs!40308 m!1272587))

(assert (=> bs!40308 m!1272603))

(assert (=> bs!40308 m!1272599))

(assert (=> d!149435 d!149481))

(assert (=> d!149435 d!149393))

(declare-fun b!1387360 () Bool)

(declare-fun e!785896 () Bool)

(assert (=> b!1387360 (= e!785896 (contains!9756 (ite c!128873 (Cons!32516 (select (arr!45812 a!2938) #b00000000000000000000000000000000) Nil!32517) Nil!32517) (select (arr!45812 a!2938) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!149483 () Bool)

(declare-fun res!928350 () Bool)

(declare-fun e!785895 () Bool)

(assert (=> d!149483 (=> res!928350 e!785895)))

(assert (=> d!149483 (= res!928350 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!46363 a!2938)))))

(assert (=> d!149483 (= (arrayNoDuplicates!0 a!2938 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!128873 (Cons!32516 (select (arr!45812 a!2938) #b00000000000000000000000000000000) Nil!32517) Nil!32517)) e!785895)))

(declare-fun b!1387361 () Bool)

(declare-fun e!785897 () Bool)

(assert (=> b!1387361 (= e!785895 e!785897)))

(declare-fun res!928351 () Bool)

(assert (=> b!1387361 (=> (not res!928351) (not e!785897))))

(assert (=> b!1387361 (= res!928351 (not e!785896))))

(declare-fun res!928349 () Bool)

(assert (=> b!1387361 (=> (not res!928349) (not e!785896))))

(assert (=> b!1387361 (= res!928349 (validKeyInArray!0 (select (arr!45812 a!2938) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun call!66582 () Bool)

(declare-fun bm!66579 () Bool)

(declare-fun c!128948 () Bool)

(assert (=> bm!66579 (= call!66582 (arrayNoDuplicates!0 a!2938 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!128948 (Cons!32516 (select (arr!45812 a!2938) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!128873 (Cons!32516 (select (arr!45812 a!2938) #b00000000000000000000000000000000) Nil!32517) Nil!32517)) (ite c!128873 (Cons!32516 (select (arr!45812 a!2938) #b00000000000000000000000000000000) Nil!32517) Nil!32517))))))

(declare-fun b!1387362 () Bool)

(declare-fun e!785898 () Bool)

(assert (=> b!1387362 (= e!785898 call!66582)))

(declare-fun b!1387363 () Bool)

(assert (=> b!1387363 (= e!785898 call!66582)))

(declare-fun b!1387364 () Bool)

(assert (=> b!1387364 (= e!785897 e!785898)))

(assert (=> b!1387364 (= c!128948 (validKeyInArray!0 (select (arr!45812 a!2938) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!149483 (not res!928350)) b!1387361))

(assert (= (and b!1387361 res!928349) b!1387360))

(assert (= (and b!1387361 res!928351) b!1387364))

(assert (= (and b!1387364 c!128948) b!1387363))

(assert (= (and b!1387364 (not c!128948)) b!1387362))

(assert (= (or b!1387363 b!1387362) bm!66579))

(declare-fun m!1272949 () Bool)

(assert (=> b!1387360 m!1272949))

(assert (=> b!1387360 m!1272949))

(declare-fun m!1272951 () Bool)

(assert (=> b!1387360 m!1272951))

(assert (=> b!1387361 m!1272949))

(assert (=> b!1387361 m!1272949))

(declare-fun m!1272953 () Bool)

(assert (=> b!1387361 m!1272953))

(assert (=> bm!66579 m!1272949))

(declare-fun m!1272955 () Bool)

(assert (=> bm!66579 m!1272955))

(assert (=> b!1387364 m!1272949))

(assert (=> b!1387364 m!1272949))

(assert (=> b!1387364 m!1272953))

(assert (=> bm!66552 d!149483))

(declare-fun d!149485 () Bool)

(assert (=> d!149485 (= (validKeyInArray!0 (select (arr!45812 a!2938) #b00000000000000000000000000000000)) (and (not (= (select (arr!45812 a!2938) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45812 a!2938) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1387126 d!149485))

(declare-fun b!1387365 () Bool)

(declare-fun e!785901 () Bool)

(declare-fun call!66583 () Bool)

(assert (=> b!1387365 (= e!785901 call!66583)))

(declare-fun d!149487 () Bool)

(declare-fun res!928352 () Bool)

(declare-fun e!785899 () Bool)

(assert (=> d!149487 (=> res!928352 e!785899)))

(assert (=> d!149487 (= res!928352 (bvsge (bvadd startIndex!16 #b00000000000000000000000000000001) (size!46363 lt!609667)))))

(assert (=> d!149487 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd startIndex!16 #b00000000000000000000000000000001) lt!609667 mask!2987) e!785899)))

(declare-fun b!1387366 () Bool)

(declare-fun e!785900 () Bool)

(assert (=> b!1387366 (= e!785899 e!785900)))

(declare-fun c!128949 () Bool)

(assert (=> b!1387366 (= c!128949 (validKeyInArray!0 (select (arr!45812 lt!609667) (bvadd startIndex!16 #b00000000000000000000000000000001))))))

(declare-fun b!1387367 () Bool)

(assert (=> b!1387367 (= e!785900 call!66583)))

(declare-fun b!1387368 () Bool)

(assert (=> b!1387368 (= e!785900 e!785901)))

(declare-fun lt!609821 () (_ BitVec 64))

(assert (=> b!1387368 (= lt!609821 (select (arr!45812 lt!609667) (bvadd startIndex!16 #b00000000000000000000000000000001)))))

(declare-fun lt!609820 () Unit!46330)

(assert (=> b!1387368 (= lt!609820 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!609667 lt!609821 (bvadd startIndex!16 #b00000000000000000000000000000001)))))

(assert (=> b!1387368 (arrayContainsKey!0 lt!609667 lt!609821 #b00000000000000000000000000000000)))

(declare-fun lt!609822 () Unit!46330)

(assert (=> b!1387368 (= lt!609822 lt!609820)))

(declare-fun res!928353 () Bool)

(assert (=> b!1387368 (= res!928353 (= (seekEntryOrOpen!0 (select (arr!45812 lt!609667) (bvadd startIndex!16 #b00000000000000000000000000000001)) lt!609667 mask!2987) (Found!10177 (bvadd startIndex!16 #b00000000000000000000000000000001))))))

(assert (=> b!1387368 (=> (not res!928353) (not e!785901))))

(declare-fun bm!66580 () Bool)

(assert (=> bm!66580 (= call!66583 (arrayForallSeekEntryOrOpenFound!0 (bvadd startIndex!16 #b00000000000000000000000000000001 #b00000000000000000000000000000001) lt!609667 mask!2987))))

(assert (= (and d!149487 (not res!928352)) b!1387366))

(assert (= (and b!1387366 c!128949) b!1387368))

(assert (= (and b!1387366 (not c!128949)) b!1387367))

(assert (= (and b!1387368 res!928353) b!1387365))

(assert (= (or b!1387365 b!1387367) bm!66580))

(declare-fun m!1272957 () Bool)

(assert (=> b!1387366 m!1272957))

(assert (=> b!1387366 m!1272957))

(declare-fun m!1272959 () Bool)

(assert (=> b!1387366 m!1272959))

(assert (=> b!1387368 m!1272957))

(declare-fun m!1272961 () Bool)

(assert (=> b!1387368 m!1272961))

(declare-fun m!1272963 () Bool)

(assert (=> b!1387368 m!1272963))

(assert (=> b!1387368 m!1272957))

(declare-fun m!1272965 () Bool)

(assert (=> b!1387368 m!1272965))

(declare-fun m!1272967 () Bool)

(assert (=> bm!66580 m!1272967))

(assert (=> bm!66555 d!149487))

(declare-fun d!149489 () Bool)

(assert (=> d!149489 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!16) (array!94881 (store (arr!45812 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46363 a!2938)) mask!2987)))

(assert (=> d!149489 true))

(declare-fun _$43!15 () Unit!46330)

(assert (=> d!149489 (= (choose!23 a!2938 i!1065 (bvadd #b00000000000000000000000000000001 startIndex!16) mask!2987) _$43!15)))

(declare-fun bs!40309 () Bool)

(assert (= bs!40309 d!149489))

(assert (=> bs!40309 m!1272591))

(assert (=> bs!40309 m!1272687))

(assert (=> d!149389 d!149489))

(assert (=> d!149389 d!149393))

(assert (=> d!149407 d!149413))

(declare-fun d!149491 () Bool)

(assert (=> d!149491 (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987)))

(assert (=> d!149491 true))

(declare-fun _$72!125 () Unit!46330)

(assert (=> d!149491 (= (choose!38 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16) _$72!125)))

(declare-fun bs!40310 () Bool)

(assert (= bs!40310 d!149491))

(assert (=> bs!40310 m!1272609))

(assert (=> d!149407 d!149491))

(assert (=> d!149407 d!149393))

(declare-fun d!149493 () Bool)

(declare-fun lt!609825 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!766 (List!32520) (InoxSet (_ BitVec 64)))

(assert (=> d!149493 (= lt!609825 (select (content!766 Nil!32517) (select (arr!45812 a!2938) #b00000000000000000000000000000000)))))

(declare-fun e!785906 () Bool)

(assert (=> d!149493 (= lt!609825 e!785906)))

(declare-fun res!928358 () Bool)

(assert (=> d!149493 (=> (not res!928358) (not e!785906))))

(assert (=> d!149493 (= res!928358 ((_ is Cons!32516) Nil!32517))))

(assert (=> d!149493 (= (contains!9756 Nil!32517 (select (arr!45812 a!2938) #b00000000000000000000000000000000)) lt!609825)))

(declare-fun b!1387373 () Bool)

(declare-fun e!785907 () Bool)

(assert (=> b!1387373 (= e!785906 e!785907)))

(declare-fun res!928359 () Bool)

(assert (=> b!1387373 (=> res!928359 e!785907)))

(assert (=> b!1387373 (= res!928359 (= (h!33725 Nil!32517) (select (arr!45812 a!2938) #b00000000000000000000000000000000)))))

(declare-fun b!1387374 () Bool)

(assert (=> b!1387374 (= e!785907 (contains!9756 (t!47221 Nil!32517) (select (arr!45812 a!2938) #b00000000000000000000000000000000)))))

(assert (= (and d!149493 res!928358) b!1387373))

(assert (= (and b!1387373 (not res!928359)) b!1387374))

(declare-fun m!1272969 () Bool)

(assert (=> d!149493 m!1272969))

(assert (=> d!149493 m!1272653))

(declare-fun m!1272971 () Bool)

(assert (=> d!149493 m!1272971))

(assert (=> b!1387374 m!1272653))

(declare-fun m!1272973 () Bool)

(assert (=> b!1387374 m!1272973))

(assert (=> b!1387125 d!149493))

(declare-fun d!149495 () Bool)

(assert (=> d!149495 (arrayContainsKey!0 lt!609667 lt!609693 #b00000000000000000000000000000000)))

(declare-fun lt!609826 () Unit!46330)

(assert (=> d!149495 (= lt!609826 (choose!13 lt!609667 lt!609693 startIndex!16))))

(assert (=> d!149495 (bvsge startIndex!16 #b00000000000000000000000000000000)))

(assert (=> d!149495 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!609667 lt!609693 startIndex!16) lt!609826)))

(declare-fun bs!40311 () Bool)

(assert (= bs!40311 d!149495))

(assert (=> bs!40311 m!1272667))

(declare-fun m!1272975 () Bool)

(assert (=> bs!40311 m!1272975))

(assert (=> b!1387141 d!149495))

(declare-fun d!149497 () Bool)

(declare-fun res!928360 () Bool)

(declare-fun e!785908 () Bool)

(assert (=> d!149497 (=> res!928360 e!785908)))

(assert (=> d!149497 (= res!928360 (= (select (arr!45812 lt!609667) #b00000000000000000000000000000000) lt!609693))))

(assert (=> d!149497 (= (arrayContainsKey!0 lt!609667 lt!609693 #b00000000000000000000000000000000) e!785908)))

(declare-fun b!1387375 () Bool)

(declare-fun e!785909 () Bool)

(assert (=> b!1387375 (= e!785908 e!785909)))

(declare-fun res!928361 () Bool)

(assert (=> b!1387375 (=> (not res!928361) (not e!785909))))

(assert (=> b!1387375 (= res!928361 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!46363 lt!609667)))))

(declare-fun b!1387376 () Bool)

(assert (=> b!1387376 (= e!785909 (arrayContainsKey!0 lt!609667 lt!609693 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!149497 (not res!928360)) b!1387375))

(assert (= (and b!1387375 res!928361) b!1387376))

(declare-fun m!1272977 () Bool)

(assert (=> d!149497 m!1272977))

(declare-fun m!1272979 () Bool)

(assert (=> b!1387376 m!1272979))

(assert (=> b!1387141 d!149497))

(declare-fun b!1387377 () Bool)

(declare-fun e!785911 () SeekEntryResult!10177)

(assert (=> b!1387377 (= e!785911 Undefined!10177)))

(declare-fun e!785912 () SeekEntryResult!10177)

(declare-fun lt!609829 () SeekEntryResult!10177)

(declare-fun b!1387378 () Bool)

(assert (=> b!1387378 (= e!785912 (seekKeyOrZeroReturnVacant!0 (x!124693 lt!609829) (index!43080 lt!609829) (index!43080 lt!609829) (select (arr!45812 lt!609667) startIndex!16) lt!609667 mask!2987))))

(declare-fun d!149499 () Bool)

(declare-fun lt!609828 () SeekEntryResult!10177)

(assert (=> d!149499 (and (or ((_ is Undefined!10177) lt!609828) (not ((_ is Found!10177) lt!609828)) (and (bvsge (index!43079 lt!609828) #b00000000000000000000000000000000) (bvslt (index!43079 lt!609828) (size!46363 lt!609667)))) (or ((_ is Undefined!10177) lt!609828) ((_ is Found!10177) lt!609828) (not ((_ is MissingZero!10177) lt!609828)) (and (bvsge (index!43078 lt!609828) #b00000000000000000000000000000000) (bvslt (index!43078 lt!609828) (size!46363 lt!609667)))) (or ((_ is Undefined!10177) lt!609828) ((_ is Found!10177) lt!609828) ((_ is MissingZero!10177) lt!609828) (not ((_ is MissingVacant!10177) lt!609828)) (and (bvsge (index!43081 lt!609828) #b00000000000000000000000000000000) (bvslt (index!43081 lt!609828) (size!46363 lt!609667)))) (or ((_ is Undefined!10177) lt!609828) (ite ((_ is Found!10177) lt!609828) (= (select (arr!45812 lt!609667) (index!43079 lt!609828)) (select (arr!45812 lt!609667) startIndex!16)) (ite ((_ is MissingZero!10177) lt!609828) (= (select (arr!45812 lt!609667) (index!43078 lt!609828)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!10177) lt!609828) (= (select (arr!45812 lt!609667) (index!43081 lt!609828)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!149499 (= lt!609828 e!785911)))

(declare-fun c!128950 () Bool)

(assert (=> d!149499 (= c!128950 (and ((_ is Intermediate!10177) lt!609829) (undefined!10989 lt!609829)))))

(assert (=> d!149499 (= lt!609829 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45812 lt!609667) startIndex!16) mask!2987) (select (arr!45812 lt!609667) startIndex!16) lt!609667 mask!2987))))

(assert (=> d!149499 (validMask!0 mask!2987)))

(assert (=> d!149499 (= (seekEntryOrOpen!0 (select (arr!45812 lt!609667) startIndex!16) lt!609667 mask!2987) lt!609828)))

(declare-fun b!1387379 () Bool)

(declare-fun c!128952 () Bool)

(declare-fun lt!609827 () (_ BitVec 64))

(assert (=> b!1387379 (= c!128952 (= lt!609827 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!785910 () SeekEntryResult!10177)

(assert (=> b!1387379 (= e!785910 e!785912)))

(declare-fun b!1387380 () Bool)

(assert (=> b!1387380 (= e!785911 e!785910)))

(assert (=> b!1387380 (= lt!609827 (select (arr!45812 lt!609667) (index!43080 lt!609829)))))

(declare-fun c!128951 () Bool)

(assert (=> b!1387380 (= c!128951 (= lt!609827 (select (arr!45812 lt!609667) startIndex!16)))))

(declare-fun b!1387381 () Bool)

(assert (=> b!1387381 (= e!785910 (Found!10177 (index!43080 lt!609829)))))

(declare-fun b!1387382 () Bool)

(assert (=> b!1387382 (= e!785912 (MissingZero!10177 (index!43080 lt!609829)))))

(assert (= (and d!149499 c!128950) b!1387377))

(assert (= (and d!149499 (not c!128950)) b!1387380))

(assert (= (and b!1387380 c!128951) b!1387381))

(assert (= (and b!1387380 (not c!128951)) b!1387379))

(assert (= (and b!1387379 c!128952) b!1387382))

(assert (= (and b!1387379 (not c!128952)) b!1387378))

(assert (=> b!1387378 m!1272661))

(declare-fun m!1272981 () Bool)

(assert (=> b!1387378 m!1272981))

(assert (=> d!149499 m!1272583))

(declare-fun m!1272983 () Bool)

(assert (=> d!149499 m!1272983))

(declare-fun m!1272985 () Bool)

(assert (=> d!149499 m!1272985))

(assert (=> d!149499 m!1272661))

(declare-fun m!1272987 () Bool)

(assert (=> d!149499 m!1272987))

(declare-fun m!1272989 () Bool)

(assert (=> d!149499 m!1272989))

(assert (=> d!149499 m!1272661))

(assert (=> d!149499 m!1272985))

(declare-fun m!1272991 () Bool)

(assert (=> d!149499 m!1272991))

(declare-fun m!1272993 () Bool)

(assert (=> b!1387380 m!1272993))

(assert (=> b!1387141 d!149499))

(assert (=> b!1387273 d!149455))

(declare-fun b!1387383 () Bool)

(declare-fun e!785914 () SeekEntryResult!10177)

(assert (=> b!1387383 (= e!785914 Undefined!10177)))

(declare-fun e!785915 () SeekEntryResult!10177)

(declare-fun b!1387384 () Bool)

(declare-fun lt!609832 () SeekEntryResult!10177)

(assert (=> b!1387384 (= e!785915 (seekKeyOrZeroReturnVacant!0 (x!124693 lt!609832) (index!43080 lt!609832) (index!43080 lt!609832) (select (store (arr!45812 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94881 (store (arr!45812 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46363 a!2938)) mask!2987))))

(declare-fun lt!609831 () SeekEntryResult!10177)

(declare-fun d!149501 () Bool)

(assert (=> d!149501 (and (or ((_ is Undefined!10177) lt!609831) (not ((_ is Found!10177) lt!609831)) (and (bvsge (index!43079 lt!609831) #b00000000000000000000000000000000) (bvslt (index!43079 lt!609831) (size!46363 (array!94881 (store (arr!45812 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46363 a!2938)))))) (or ((_ is Undefined!10177) lt!609831) ((_ is Found!10177) lt!609831) (not ((_ is MissingZero!10177) lt!609831)) (and (bvsge (index!43078 lt!609831) #b00000000000000000000000000000000) (bvslt (index!43078 lt!609831) (size!46363 (array!94881 (store (arr!45812 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46363 a!2938)))))) (or ((_ is Undefined!10177) lt!609831) ((_ is Found!10177) lt!609831) ((_ is MissingZero!10177) lt!609831) (not ((_ is MissingVacant!10177) lt!609831)) (and (bvsge (index!43081 lt!609831) #b00000000000000000000000000000000) (bvslt (index!43081 lt!609831) (size!46363 (array!94881 (store (arr!45812 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46363 a!2938)))))) (or ((_ is Undefined!10177) lt!609831) (ite ((_ is Found!10177) lt!609831) (= (select (arr!45812 (array!94881 (store (arr!45812 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46363 a!2938))) (index!43079 lt!609831)) (select (store (arr!45812 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16)) (ite ((_ is MissingZero!10177) lt!609831) (= (select (arr!45812 (array!94881 (store (arr!45812 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46363 a!2938))) (index!43078 lt!609831)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!10177) lt!609831) (= (select (arr!45812 (array!94881 (store (arr!45812 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46363 a!2938))) (index!43081 lt!609831)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!149501 (= lt!609831 e!785914)))

(declare-fun c!128953 () Bool)

(assert (=> d!149501 (= c!128953 (and ((_ is Intermediate!10177) lt!609832) (undefined!10989 lt!609832)))))

(assert (=> d!149501 (= lt!609832 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!45812 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) mask!2987) (select (store (arr!45812 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94881 (store (arr!45812 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46363 a!2938)) mask!2987))))

(assert (=> d!149501 (validMask!0 mask!2987)))

(assert (=> d!149501 (= (seekEntryOrOpen!0 (select (store (arr!45812 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94881 (store (arr!45812 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46363 a!2938)) mask!2987) lt!609831)))

(declare-fun b!1387385 () Bool)

(declare-fun c!128955 () Bool)

(declare-fun lt!609830 () (_ BitVec 64))

(assert (=> b!1387385 (= c!128955 (= lt!609830 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!785913 () SeekEntryResult!10177)

(assert (=> b!1387385 (= e!785913 e!785915)))

(declare-fun b!1387386 () Bool)

(assert (=> b!1387386 (= e!785914 e!785913)))

(assert (=> b!1387386 (= lt!609830 (select (arr!45812 (array!94881 (store (arr!45812 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46363 a!2938))) (index!43080 lt!609832)))))

(declare-fun c!128954 () Bool)

(assert (=> b!1387386 (= c!128954 (= lt!609830 (select (store (arr!45812 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16)))))

(declare-fun b!1387387 () Bool)

(assert (=> b!1387387 (= e!785913 (Found!10177 (index!43080 lt!609832)))))

(declare-fun b!1387388 () Bool)

(assert (=> b!1387388 (= e!785915 (MissingZero!10177 (index!43080 lt!609832)))))

(assert (= (and d!149501 c!128953) b!1387383))

(assert (= (and d!149501 (not c!128953)) b!1387386))

(assert (= (and b!1387386 c!128954) b!1387387))

(assert (= (and b!1387386 (not c!128954)) b!1387385))

(assert (= (and b!1387385 c!128955) b!1387388))

(assert (= (and b!1387385 (not c!128955)) b!1387384))

(assert (=> b!1387384 m!1272599))

(declare-fun m!1272995 () Bool)

(assert (=> b!1387384 m!1272995))

(assert (=> d!149501 m!1272583))

(declare-fun m!1272997 () Bool)

(assert (=> d!149501 m!1272997))

(assert (=> d!149501 m!1272793))

(assert (=> d!149501 m!1272599))

(declare-fun m!1272999 () Bool)

(assert (=> d!149501 m!1272999))

(declare-fun m!1273001 () Bool)

(assert (=> d!149501 m!1273001))

(assert (=> d!149501 m!1272599))

(assert (=> d!149501 m!1272793))

(declare-fun m!1273003 () Bool)

(assert (=> d!149501 m!1273003))

(declare-fun m!1273005 () Bool)

(assert (=> b!1387386 m!1273005))

(assert (=> b!1387273 d!149501))

(declare-fun b!1387389 () Bool)

(declare-fun e!785918 () Bool)

(declare-fun call!66584 () Bool)

(assert (=> b!1387389 (= e!785918 call!66584)))

(declare-fun d!149503 () Bool)

(declare-fun res!928362 () Bool)

(declare-fun e!785916 () Bool)

(assert (=> d!149503 (=> res!928362 e!785916)))

(assert (=> d!149503 (= res!928362 (bvsge (bvadd #b00000000000000000000000000000001 startIndex!16 #b00000000000000000000000000000001) (size!46363 lt!609667)))))

(assert (=> d!149503 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!16 #b00000000000000000000000000000001) lt!609667 mask!2987) e!785916)))

(declare-fun b!1387390 () Bool)

(declare-fun e!785917 () Bool)

(assert (=> b!1387390 (= e!785916 e!785917)))

(declare-fun c!128956 () Bool)

(assert (=> b!1387390 (= c!128956 (validKeyInArray!0 (select (arr!45812 lt!609667) (bvadd #b00000000000000000000000000000001 startIndex!16 #b00000000000000000000000000000001))))))

(declare-fun b!1387391 () Bool)

(assert (=> b!1387391 (= e!785917 call!66584)))

(declare-fun b!1387392 () Bool)

(assert (=> b!1387392 (= e!785917 e!785918)))

(declare-fun lt!609834 () (_ BitVec 64))

(assert (=> b!1387392 (= lt!609834 (select (arr!45812 lt!609667) (bvadd #b00000000000000000000000000000001 startIndex!16 #b00000000000000000000000000000001)))))

(declare-fun lt!609833 () Unit!46330)

(assert (=> b!1387392 (= lt!609833 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!609667 lt!609834 (bvadd #b00000000000000000000000000000001 startIndex!16 #b00000000000000000000000000000001)))))

(assert (=> b!1387392 (arrayContainsKey!0 lt!609667 lt!609834 #b00000000000000000000000000000000)))

(declare-fun lt!609835 () Unit!46330)

(assert (=> b!1387392 (= lt!609835 lt!609833)))

(declare-fun res!928363 () Bool)

(assert (=> b!1387392 (= res!928363 (= (seekEntryOrOpen!0 (select (arr!45812 lt!609667) (bvadd #b00000000000000000000000000000001 startIndex!16 #b00000000000000000000000000000001)) lt!609667 mask!2987) (Found!10177 (bvadd #b00000000000000000000000000000001 startIndex!16 #b00000000000000000000000000000001))))))

(assert (=> b!1387392 (=> (not res!928363) (not e!785918))))

(declare-fun bm!66581 () Bool)

(assert (=> bm!66581 (= call!66584 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!16 #b00000000000000000000000000000001 #b00000000000000000000000000000001) lt!609667 mask!2987))))

(assert (= (and d!149503 (not res!928362)) b!1387390))

(assert (= (and b!1387390 c!128956) b!1387392))

(assert (= (and b!1387390 (not c!128956)) b!1387391))

(assert (= (and b!1387392 res!928363) b!1387389))

(assert (= (or b!1387389 b!1387391) bm!66581))

(declare-fun m!1273007 () Bool)

(assert (=> b!1387390 m!1273007))

(assert (=> b!1387390 m!1273007))

(declare-fun m!1273009 () Bool)

(assert (=> b!1387390 m!1273009))

(assert (=> b!1387392 m!1273007))

(declare-fun m!1273011 () Bool)

(assert (=> b!1387392 m!1273011))

(declare-fun m!1273013 () Bool)

(assert (=> b!1387392 m!1273013))

(assert (=> b!1387392 m!1273007))

(declare-fun m!1273015 () Bool)

(assert (=> b!1387392 m!1273015))

(declare-fun m!1273017 () Bool)

(assert (=> bm!66581 m!1273017))

(assert (=> bm!66556 d!149503))

(declare-fun d!149505 () Bool)

(assert (=> d!149505 (arrayContainsKey!0 lt!609667 lt!609696 #b00000000000000000000000000000000)))

(declare-fun lt!609836 () Unit!46330)

(assert (=> d!149505 (= lt!609836 (choose!13 lt!609667 lt!609696 (bvadd #b00000000000000000000000000000001 startIndex!16)))))

(assert (=> d!149505 (bvsge (bvadd #b00000000000000000000000000000001 startIndex!16) #b00000000000000000000000000000000)))

(assert (=> d!149505 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!609667 lt!609696 (bvadd #b00000000000000000000000000000001 startIndex!16)) lt!609836)))

(declare-fun bs!40312 () Bool)

(assert (= bs!40312 d!149505))

(assert (=> bs!40312 m!1272679))

(declare-fun m!1273019 () Bool)

(assert (=> bs!40312 m!1273019))

(assert (=> b!1387145 d!149505))

(declare-fun d!149507 () Bool)

(declare-fun res!928364 () Bool)

(declare-fun e!785919 () Bool)

(assert (=> d!149507 (=> res!928364 e!785919)))

(assert (=> d!149507 (= res!928364 (= (select (arr!45812 lt!609667) #b00000000000000000000000000000000) lt!609696))))

(assert (=> d!149507 (= (arrayContainsKey!0 lt!609667 lt!609696 #b00000000000000000000000000000000) e!785919)))

(declare-fun b!1387393 () Bool)

(declare-fun e!785920 () Bool)

(assert (=> b!1387393 (= e!785919 e!785920)))

(declare-fun res!928365 () Bool)

(assert (=> b!1387393 (=> (not res!928365) (not e!785920))))

(assert (=> b!1387393 (= res!928365 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!46363 lt!609667)))))

(declare-fun b!1387394 () Bool)

(assert (=> b!1387394 (= e!785920 (arrayContainsKey!0 lt!609667 lt!609696 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!149507 (not res!928364)) b!1387393))

(assert (= (and b!1387393 res!928365) b!1387394))

(assert (=> d!149507 m!1272977))

(declare-fun m!1273021 () Bool)

(assert (=> b!1387394 m!1273021))

(assert (=> b!1387145 d!149507))

(declare-fun b!1387395 () Bool)

(declare-fun e!785922 () SeekEntryResult!10177)

(assert (=> b!1387395 (= e!785922 Undefined!10177)))

(declare-fun b!1387396 () Bool)

(declare-fun lt!609839 () SeekEntryResult!10177)

(declare-fun e!785923 () SeekEntryResult!10177)

(assert (=> b!1387396 (= e!785923 (seekKeyOrZeroReturnVacant!0 (x!124693 lt!609839) (index!43080 lt!609839) (index!43080 lt!609839) (select (arr!45812 lt!609667) (bvadd #b00000000000000000000000000000001 startIndex!16)) lt!609667 mask!2987))))

(declare-fun d!149509 () Bool)

(declare-fun lt!609838 () SeekEntryResult!10177)

(assert (=> d!149509 (and (or ((_ is Undefined!10177) lt!609838) (not ((_ is Found!10177) lt!609838)) (and (bvsge (index!43079 lt!609838) #b00000000000000000000000000000000) (bvslt (index!43079 lt!609838) (size!46363 lt!609667)))) (or ((_ is Undefined!10177) lt!609838) ((_ is Found!10177) lt!609838) (not ((_ is MissingZero!10177) lt!609838)) (and (bvsge (index!43078 lt!609838) #b00000000000000000000000000000000) (bvslt (index!43078 lt!609838) (size!46363 lt!609667)))) (or ((_ is Undefined!10177) lt!609838) ((_ is Found!10177) lt!609838) ((_ is MissingZero!10177) lt!609838) (not ((_ is MissingVacant!10177) lt!609838)) (and (bvsge (index!43081 lt!609838) #b00000000000000000000000000000000) (bvslt (index!43081 lt!609838) (size!46363 lt!609667)))) (or ((_ is Undefined!10177) lt!609838) (ite ((_ is Found!10177) lt!609838) (= (select (arr!45812 lt!609667) (index!43079 lt!609838)) (select (arr!45812 lt!609667) (bvadd #b00000000000000000000000000000001 startIndex!16))) (ite ((_ is MissingZero!10177) lt!609838) (= (select (arr!45812 lt!609667) (index!43078 lt!609838)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!10177) lt!609838) (= (select (arr!45812 lt!609667) (index!43081 lt!609838)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!149509 (= lt!609838 e!785922)))

(declare-fun c!128957 () Bool)

(assert (=> d!149509 (= c!128957 (and ((_ is Intermediate!10177) lt!609839) (undefined!10989 lt!609839)))))

(assert (=> d!149509 (= lt!609839 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45812 lt!609667) (bvadd #b00000000000000000000000000000001 startIndex!16)) mask!2987) (select (arr!45812 lt!609667) (bvadd #b00000000000000000000000000000001 startIndex!16)) lt!609667 mask!2987))))

(assert (=> d!149509 (validMask!0 mask!2987)))

(assert (=> d!149509 (= (seekEntryOrOpen!0 (select (arr!45812 lt!609667) (bvadd #b00000000000000000000000000000001 startIndex!16)) lt!609667 mask!2987) lt!609838)))

(declare-fun b!1387397 () Bool)

(declare-fun c!128959 () Bool)

(declare-fun lt!609837 () (_ BitVec 64))

(assert (=> b!1387397 (= c!128959 (= lt!609837 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!785921 () SeekEntryResult!10177)

(assert (=> b!1387397 (= e!785921 e!785923)))

(declare-fun b!1387398 () Bool)

(assert (=> b!1387398 (= e!785922 e!785921)))

(assert (=> b!1387398 (= lt!609837 (select (arr!45812 lt!609667) (index!43080 lt!609839)))))

(declare-fun c!128958 () Bool)

(assert (=> b!1387398 (= c!128958 (= lt!609837 (select (arr!45812 lt!609667) (bvadd #b00000000000000000000000000000001 startIndex!16))))))

(declare-fun b!1387399 () Bool)

(assert (=> b!1387399 (= e!785921 (Found!10177 (index!43080 lt!609839)))))

(declare-fun b!1387400 () Bool)

(assert (=> b!1387400 (= e!785923 (MissingZero!10177 (index!43080 lt!609839)))))

(assert (= (and d!149509 c!128957) b!1387395))

(assert (= (and d!149509 (not c!128957)) b!1387398))

(assert (= (and b!1387398 c!128958) b!1387399))

(assert (= (and b!1387398 (not c!128958)) b!1387397))

(assert (= (and b!1387397 c!128959) b!1387400))

(assert (= (and b!1387397 (not c!128959)) b!1387396))

(assert (=> b!1387396 m!1272673))

(declare-fun m!1273023 () Bool)

(assert (=> b!1387396 m!1273023))

(assert (=> d!149509 m!1272583))

(declare-fun m!1273025 () Bool)

(assert (=> d!149509 m!1273025))

(declare-fun m!1273027 () Bool)

(assert (=> d!149509 m!1273027))

(assert (=> d!149509 m!1272673))

(declare-fun m!1273029 () Bool)

(assert (=> d!149509 m!1273029))

(declare-fun m!1273031 () Bool)

(assert (=> d!149509 m!1273031))

(assert (=> d!149509 m!1272673))

(assert (=> d!149509 m!1273027))

(declare-fun m!1273033 () Bool)

(assert (=> d!149509 m!1273033))

(declare-fun m!1273035 () Bool)

(assert (=> b!1387398 m!1273035))

(assert (=> b!1387145 d!149509))

(declare-fun b!1387401 () Bool)

(declare-fun e!785926 () Bool)

(declare-fun call!66585 () Bool)

(assert (=> b!1387401 (= e!785926 call!66585)))

(declare-fun d!149511 () Bool)

(declare-fun res!928366 () Bool)

(declare-fun e!785924 () Bool)

(assert (=> d!149511 (=> res!928366 e!785924)))

(assert (=> d!149511 (= res!928366 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!46363 a!2938)))))

(assert (=> d!149511 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2938 mask!2987) e!785924)))

(declare-fun b!1387402 () Bool)

(declare-fun e!785925 () Bool)

(assert (=> b!1387402 (= e!785924 e!785925)))

(declare-fun c!128960 () Bool)

(assert (=> b!1387402 (= c!128960 (validKeyInArray!0 (select (arr!45812 a!2938) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1387403 () Bool)

(assert (=> b!1387403 (= e!785925 call!66585)))

(declare-fun b!1387404 () Bool)

(assert (=> b!1387404 (= e!785925 e!785926)))

(declare-fun lt!609841 () (_ BitVec 64))

(assert (=> b!1387404 (= lt!609841 (select (arr!45812 a!2938) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!609840 () Unit!46330)

(assert (=> b!1387404 (= lt!609840 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2938 lt!609841 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!1387404 (arrayContainsKey!0 a!2938 lt!609841 #b00000000000000000000000000000000)))

(declare-fun lt!609842 () Unit!46330)

(assert (=> b!1387404 (= lt!609842 lt!609840)))

(declare-fun res!928367 () Bool)

(assert (=> b!1387404 (= res!928367 (= (seekEntryOrOpen!0 (select (arr!45812 a!2938) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) a!2938 mask!2987) (Found!10177 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!1387404 (=> (not res!928367) (not e!785926))))

(declare-fun bm!66582 () Bool)

(assert (=> bm!66582 (= call!66585 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) a!2938 mask!2987))))

(assert (= (and d!149511 (not res!928366)) b!1387402))

(assert (= (and b!1387402 c!128960) b!1387404))

(assert (= (and b!1387402 (not c!128960)) b!1387403))

(assert (= (and b!1387404 res!928367) b!1387401))

(assert (= (or b!1387401 b!1387403) bm!66582))

(assert (=> b!1387402 m!1272949))

(assert (=> b!1387402 m!1272949))

(assert (=> b!1387402 m!1272953))

(assert (=> b!1387404 m!1272949))

(declare-fun m!1273037 () Bool)

(assert (=> b!1387404 m!1273037))

(declare-fun m!1273039 () Bool)

(assert (=> b!1387404 m!1273039))

(assert (=> b!1387404 m!1272949))

(declare-fun m!1273041 () Bool)

(assert (=> b!1387404 m!1273041))

(declare-fun m!1273043 () Bool)

(assert (=> bm!66582 m!1273043))

(assert (=> bm!66576 d!149511))

(declare-fun e!785937 () SeekEntryResult!10177)

(declare-fun b!1387423 () Bool)

(assert (=> b!1387423 (= e!785937 (Intermediate!10177 false (toIndex!0 (select (arr!45812 a!2938) startIndex!16) mask!2987) #b00000000000000000000000000000000))))

(declare-fun d!149513 () Bool)

(declare-fun e!785938 () Bool)

(assert (=> d!149513 e!785938))

(declare-fun c!128969 () Bool)

(declare-fun lt!609847 () SeekEntryResult!10177)

(assert (=> d!149513 (= c!128969 (and ((_ is Intermediate!10177) lt!609847) (undefined!10989 lt!609847)))))

(declare-fun e!785941 () SeekEntryResult!10177)

(assert (=> d!149513 (= lt!609847 e!785941)))

(declare-fun c!128967 () Bool)

(assert (=> d!149513 (= c!128967 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!609848 () (_ BitVec 64))

(assert (=> d!149513 (= lt!609848 (select (arr!45812 a!2938) (toIndex!0 (select (arr!45812 a!2938) startIndex!16) mask!2987)))))

(assert (=> d!149513 (validMask!0 mask!2987)))

(assert (=> d!149513 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45812 a!2938) startIndex!16) mask!2987) (select (arr!45812 a!2938) startIndex!16) a!2938 mask!2987) lt!609847)))

(declare-fun b!1387424 () Bool)

(declare-fun e!785940 () Bool)

(assert (=> b!1387424 (= e!785938 e!785940)))

(declare-fun res!928374 () Bool)

(assert (=> b!1387424 (= res!928374 (and ((_ is Intermediate!10177) lt!609847) (not (undefined!10989 lt!609847)) (bvslt (x!124693 lt!609847) #b01111111111111111111111111111110) (bvsge (x!124693 lt!609847) #b00000000000000000000000000000000) (bvsge (x!124693 lt!609847) #b00000000000000000000000000000000)))))

(assert (=> b!1387424 (=> (not res!928374) (not e!785940))))

(declare-fun b!1387425 () Bool)

(assert (=> b!1387425 (= e!785938 (bvsge (x!124693 lt!609847) #b01111111111111111111111111111110))))

(declare-fun b!1387426 () Bool)

(assert (=> b!1387426 (and (bvsge (index!43080 lt!609847) #b00000000000000000000000000000000) (bvslt (index!43080 lt!609847) (size!46363 a!2938)))))

(declare-fun res!928376 () Bool)

(assert (=> b!1387426 (= res!928376 (= (select (arr!45812 a!2938) (index!43080 lt!609847)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!785939 () Bool)

(assert (=> b!1387426 (=> res!928376 e!785939)))

(declare-fun b!1387427 () Bool)

(assert (=> b!1387427 (= e!785937 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!45812 a!2938) startIndex!16) mask!2987) #b00000000000000000000000000000000 mask!2987) (select (arr!45812 a!2938) startIndex!16) a!2938 mask!2987))))

(declare-fun b!1387428 () Bool)

(assert (=> b!1387428 (and (bvsge (index!43080 lt!609847) #b00000000000000000000000000000000) (bvslt (index!43080 lt!609847) (size!46363 a!2938)))))

(assert (=> b!1387428 (= e!785939 (= (select (arr!45812 a!2938) (index!43080 lt!609847)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1387429 () Bool)

(assert (=> b!1387429 (= e!785941 (Intermediate!10177 true (toIndex!0 (select (arr!45812 a!2938) startIndex!16) mask!2987) #b00000000000000000000000000000000))))

(declare-fun b!1387430 () Bool)

(assert (=> b!1387430 (= e!785941 e!785937)))

(declare-fun c!128968 () Bool)

(assert (=> b!1387430 (= c!128968 (or (= lt!609848 (select (arr!45812 a!2938) startIndex!16)) (= (bvadd lt!609848 lt!609848) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1387431 () Bool)

(assert (=> b!1387431 (and (bvsge (index!43080 lt!609847) #b00000000000000000000000000000000) (bvslt (index!43080 lt!609847) (size!46363 a!2938)))))

(declare-fun res!928375 () Bool)

(assert (=> b!1387431 (= res!928375 (= (select (arr!45812 a!2938) (index!43080 lt!609847)) (select (arr!45812 a!2938) startIndex!16)))))

(assert (=> b!1387431 (=> res!928375 e!785939)))

(assert (=> b!1387431 (= e!785940 e!785939)))

(assert (= (and d!149513 c!128967) b!1387429))

(assert (= (and d!149513 (not c!128967)) b!1387430))

(assert (= (and b!1387430 c!128968) b!1387423))

(assert (= (and b!1387430 (not c!128968)) b!1387427))

(assert (= (and d!149513 c!128969) b!1387425))

(assert (= (and d!149513 (not c!128969)) b!1387424))

(assert (= (and b!1387424 res!928374) b!1387431))

(assert (= (and b!1387431 (not res!928375)) b!1387426))

(assert (= (and b!1387426 (not res!928376)) b!1387428))

(declare-fun m!1273045 () Bool)

(assert (=> b!1387431 m!1273045))

(assert (=> b!1387427 m!1272851))

(declare-fun m!1273047 () Bool)

(assert (=> b!1387427 m!1273047))

(assert (=> b!1387427 m!1273047))

(assert (=> b!1387427 m!1272587))

(declare-fun m!1273049 () Bool)

(assert (=> b!1387427 m!1273049))

(assert (=> d!149513 m!1272851))

(declare-fun m!1273051 () Bool)

(assert (=> d!149513 m!1273051))

(assert (=> d!149513 m!1272583))

(assert (=> b!1387428 m!1273045))

(assert (=> b!1387426 m!1273045))

(assert (=> d!149455 d!149513))

(declare-fun d!149515 () Bool)

(declare-fun lt!609854 () (_ BitVec 32))

(declare-fun lt!609853 () (_ BitVec 32))

(assert (=> d!149515 (= lt!609854 (bvmul (bvxor lt!609853 (bvlshr lt!609853 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!149515 (= lt!609853 ((_ extract 31 0) (bvand (bvxor (select (arr!45812 a!2938) startIndex!16) (bvlshr (select (arr!45812 a!2938) startIndex!16) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!149515 (and (bvsge mask!2987 #b00000000000000000000000000000000) (let ((res!928377 (let ((h!33727 ((_ extract 31 0) (bvand (bvxor (select (arr!45812 a!2938) startIndex!16) (bvlshr (select (arr!45812 a!2938) startIndex!16) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!124697 (bvmul (bvxor h!33727 (bvlshr h!33727 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!124697 (bvlshr x!124697 #b00000000000000000000000000001101)) mask!2987))))) (and (bvslt res!928377 (bvadd mask!2987 #b00000000000000000000000000000001)) (bvsge res!928377 #b00000000000000000000000000000000))))))

(assert (=> d!149515 (= (toIndex!0 (select (arr!45812 a!2938) startIndex!16) mask!2987) (bvand (bvxor lt!609854 (bvlshr lt!609854 #b00000000000000000000000000001101)) mask!2987))))

(assert (=> d!149455 d!149515))

(assert (=> d!149455 d!149393))

(declare-fun d!149517 () Bool)

(assert (=> d!149517 (arrayContainsKey!0 a!2938 lt!609786 #b00000000000000000000000000000000)))

(declare-fun lt!609855 () Unit!46330)

(assert (=> d!149517 (= lt!609855 (choose!13 a!2938 lt!609786 #b00000000000000000000000000000000))))

(assert (=> d!149517 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!149517 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2938 lt!609786 #b00000000000000000000000000000000) lt!609855)))

(declare-fun bs!40313 () Bool)

(assert (= bs!40313 d!149517))

(assert (=> bs!40313 m!1272867))

(declare-fun m!1273053 () Bool)

(assert (=> bs!40313 m!1273053))

(assert (=> b!1387294 d!149517))

(declare-fun d!149519 () Bool)

(declare-fun res!928378 () Bool)

(declare-fun e!785942 () Bool)

(assert (=> d!149519 (=> res!928378 e!785942)))

(assert (=> d!149519 (= res!928378 (= (select (arr!45812 a!2938) #b00000000000000000000000000000000) lt!609786))))

(assert (=> d!149519 (= (arrayContainsKey!0 a!2938 lt!609786 #b00000000000000000000000000000000) e!785942)))

(declare-fun b!1387432 () Bool)

(declare-fun e!785943 () Bool)

(assert (=> b!1387432 (= e!785942 e!785943)))

(declare-fun res!928379 () Bool)

(assert (=> b!1387432 (=> (not res!928379) (not e!785943))))

(assert (=> b!1387432 (= res!928379 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!46363 a!2938)))))

(declare-fun b!1387433 () Bool)

(assert (=> b!1387433 (= e!785943 (arrayContainsKey!0 a!2938 lt!609786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!149519 (not res!928378)) b!1387432))

(assert (= (and b!1387432 res!928379) b!1387433))

(assert (=> d!149519 m!1272653))

(declare-fun m!1273055 () Bool)

(assert (=> b!1387433 m!1273055))

(assert (=> b!1387294 d!149519))

(declare-fun b!1387434 () Bool)

(declare-fun e!785945 () SeekEntryResult!10177)

(assert (=> b!1387434 (= e!785945 Undefined!10177)))

(declare-fun lt!609858 () SeekEntryResult!10177)

(declare-fun b!1387435 () Bool)

(declare-fun e!785946 () SeekEntryResult!10177)

(assert (=> b!1387435 (= e!785946 (seekKeyOrZeroReturnVacant!0 (x!124693 lt!609858) (index!43080 lt!609858) (index!43080 lt!609858) (select (arr!45812 a!2938) #b00000000000000000000000000000000) a!2938 mask!2987))))

(declare-fun d!149523 () Bool)

(declare-fun lt!609857 () SeekEntryResult!10177)

(assert (=> d!149523 (and (or ((_ is Undefined!10177) lt!609857) (not ((_ is Found!10177) lt!609857)) (and (bvsge (index!43079 lt!609857) #b00000000000000000000000000000000) (bvslt (index!43079 lt!609857) (size!46363 a!2938)))) (or ((_ is Undefined!10177) lt!609857) ((_ is Found!10177) lt!609857) (not ((_ is MissingZero!10177) lt!609857)) (and (bvsge (index!43078 lt!609857) #b00000000000000000000000000000000) (bvslt (index!43078 lt!609857) (size!46363 a!2938)))) (or ((_ is Undefined!10177) lt!609857) ((_ is Found!10177) lt!609857) ((_ is MissingZero!10177) lt!609857) (not ((_ is MissingVacant!10177) lt!609857)) (and (bvsge (index!43081 lt!609857) #b00000000000000000000000000000000) (bvslt (index!43081 lt!609857) (size!46363 a!2938)))) (or ((_ is Undefined!10177) lt!609857) (ite ((_ is Found!10177) lt!609857) (= (select (arr!45812 a!2938) (index!43079 lt!609857)) (select (arr!45812 a!2938) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!10177) lt!609857) (= (select (arr!45812 a!2938) (index!43078 lt!609857)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!10177) lt!609857) (= (select (arr!45812 a!2938) (index!43081 lt!609857)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!149523 (= lt!609857 e!785945)))

(declare-fun c!128970 () Bool)

(assert (=> d!149523 (= c!128970 (and ((_ is Intermediate!10177) lt!609858) (undefined!10989 lt!609858)))))

(assert (=> d!149523 (= lt!609858 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45812 a!2938) #b00000000000000000000000000000000) mask!2987) (select (arr!45812 a!2938) #b00000000000000000000000000000000) a!2938 mask!2987))))

(assert (=> d!149523 (validMask!0 mask!2987)))

(assert (=> d!149523 (= (seekEntryOrOpen!0 (select (arr!45812 a!2938) #b00000000000000000000000000000000) a!2938 mask!2987) lt!609857)))

(declare-fun b!1387436 () Bool)

(declare-fun c!128972 () Bool)

(declare-fun lt!609856 () (_ BitVec 64))

(assert (=> b!1387436 (= c!128972 (= lt!609856 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!785944 () SeekEntryResult!10177)

(assert (=> b!1387436 (= e!785944 e!785946)))

(declare-fun b!1387437 () Bool)

(assert (=> b!1387437 (= e!785945 e!785944)))

(assert (=> b!1387437 (= lt!609856 (select (arr!45812 a!2938) (index!43080 lt!609858)))))

(declare-fun c!128971 () Bool)

(assert (=> b!1387437 (= c!128971 (= lt!609856 (select (arr!45812 a!2938) #b00000000000000000000000000000000)))))

(declare-fun b!1387438 () Bool)

(assert (=> b!1387438 (= e!785944 (Found!10177 (index!43080 lt!609858)))))

(declare-fun b!1387439 () Bool)

(assert (=> b!1387439 (= e!785946 (MissingZero!10177 (index!43080 lt!609858)))))

(assert (= (and d!149523 c!128970) b!1387434))

(assert (= (and d!149523 (not c!128970)) b!1387437))

(assert (= (and b!1387437 c!128971) b!1387438))

(assert (= (and b!1387437 (not c!128971)) b!1387436))

(assert (= (and b!1387436 c!128972) b!1387439))

(assert (= (and b!1387436 (not c!128972)) b!1387435))

(assert (=> b!1387435 m!1272653))

(declare-fun m!1273057 () Bool)

(assert (=> b!1387435 m!1273057))

(assert (=> d!149523 m!1272583))

(declare-fun m!1273059 () Bool)

(assert (=> d!149523 m!1273059))

(declare-fun m!1273061 () Bool)

(assert (=> d!149523 m!1273061))

(assert (=> d!149523 m!1272653))

(declare-fun m!1273063 () Bool)

(assert (=> d!149523 m!1273063))

(declare-fun m!1273065 () Bool)

(assert (=> d!149523 m!1273065))

(assert (=> d!149523 m!1272653))

(assert (=> d!149523 m!1273061))

(declare-fun m!1273067 () Bool)

(assert (=> d!149523 m!1273067))

(declare-fun m!1273069 () Bool)

(assert (=> b!1387437 m!1273069))

(assert (=> b!1387294 d!149523))

(declare-fun d!149525 () Bool)

(assert (=> d!149525 (= (validKeyInArray!0 (select (arr!45812 lt!609667) (bvadd #b00000000000000000000000000000001 startIndex!16))) (and (not (= (select (arr!45812 lt!609667) (bvadd #b00000000000000000000000000000001 startIndex!16)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45812 lt!609667) (bvadd #b00000000000000000000000000000001 startIndex!16)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1387143 d!149525))

(declare-fun b!1387440 () Bool)

(declare-fun e!785947 () SeekEntryResult!10177)

(assert (=> b!1387440 (= e!785947 (Intermediate!10177 false (toIndex!0 (select (store (arr!45812 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) mask!2987) #b00000000000000000000000000000000))))

(declare-fun d!149527 () Bool)

(declare-fun e!785948 () Bool)

(assert (=> d!149527 e!785948))

(declare-fun c!128975 () Bool)

(declare-fun lt!609861 () SeekEntryResult!10177)

(assert (=> d!149527 (= c!128975 (and ((_ is Intermediate!10177) lt!609861) (undefined!10989 lt!609861)))))

(declare-fun e!785951 () SeekEntryResult!10177)

(assert (=> d!149527 (= lt!609861 e!785951)))

(declare-fun c!128973 () Bool)

(assert (=> d!149527 (= c!128973 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!609862 () (_ BitVec 64))

(assert (=> d!149527 (= lt!609862 (select (arr!45812 lt!609667) (toIndex!0 (select (store (arr!45812 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) mask!2987)))))

(assert (=> d!149527 (validMask!0 mask!2987)))

(assert (=> d!149527 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!45812 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) mask!2987) (select (store (arr!45812 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) lt!609667 mask!2987) lt!609861)))

(declare-fun b!1387441 () Bool)

(declare-fun e!785950 () Bool)

(assert (=> b!1387441 (= e!785948 e!785950)))

(declare-fun res!928380 () Bool)

(assert (=> b!1387441 (= res!928380 (and ((_ is Intermediate!10177) lt!609861) (not (undefined!10989 lt!609861)) (bvslt (x!124693 lt!609861) #b01111111111111111111111111111110) (bvsge (x!124693 lt!609861) #b00000000000000000000000000000000) (bvsge (x!124693 lt!609861) #b00000000000000000000000000000000)))))

(assert (=> b!1387441 (=> (not res!928380) (not e!785950))))

(declare-fun b!1387442 () Bool)

(assert (=> b!1387442 (= e!785948 (bvsge (x!124693 lt!609861) #b01111111111111111111111111111110))))

(declare-fun b!1387443 () Bool)

(assert (=> b!1387443 (and (bvsge (index!43080 lt!609861) #b00000000000000000000000000000000) (bvslt (index!43080 lt!609861) (size!46363 lt!609667)))))

(declare-fun res!928382 () Bool)

(assert (=> b!1387443 (= res!928382 (= (select (arr!45812 lt!609667) (index!43080 lt!609861)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!785949 () Bool)

(assert (=> b!1387443 (=> res!928382 e!785949)))

(declare-fun b!1387444 () Bool)

(assert (=> b!1387444 (= e!785947 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (store (arr!45812 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) mask!2987) #b00000000000000000000000000000000 mask!2987) (select (store (arr!45812 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) lt!609667 mask!2987))))

(declare-fun b!1387445 () Bool)

(assert (=> b!1387445 (and (bvsge (index!43080 lt!609861) #b00000000000000000000000000000000) (bvslt (index!43080 lt!609861) (size!46363 lt!609667)))))

(assert (=> b!1387445 (= e!785949 (= (select (arr!45812 lt!609667) (index!43080 lt!609861)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1387446 () Bool)

(assert (=> b!1387446 (= e!785951 (Intermediate!10177 true (toIndex!0 (select (store (arr!45812 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) mask!2987) #b00000000000000000000000000000000))))

(declare-fun b!1387447 () Bool)

(assert (=> b!1387447 (= e!785951 e!785947)))

(declare-fun c!128974 () Bool)

(assert (=> b!1387447 (= c!128974 (or (= lt!609862 (select (store (arr!45812 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16)) (= (bvadd lt!609862 lt!609862) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1387448 () Bool)

(assert (=> b!1387448 (and (bvsge (index!43080 lt!609861) #b00000000000000000000000000000000) (bvslt (index!43080 lt!609861) (size!46363 lt!609667)))))

(declare-fun res!928381 () Bool)

(assert (=> b!1387448 (= res!928381 (= (select (arr!45812 lt!609667) (index!43080 lt!609861)) (select (store (arr!45812 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16)))))

(assert (=> b!1387448 (=> res!928381 e!785949)))

(assert (=> b!1387448 (= e!785950 e!785949)))

(assert (= (and d!149527 c!128973) b!1387446))

(assert (= (and d!149527 (not c!128973)) b!1387447))

(assert (= (and b!1387447 c!128974) b!1387440))

(assert (= (and b!1387447 (not c!128974)) b!1387444))

(assert (= (and d!149527 c!128975) b!1387442))

(assert (= (and d!149527 (not c!128975)) b!1387441))

(assert (= (and b!1387441 res!928380) b!1387448))

(assert (= (and b!1387448 (not res!928381)) b!1387443))

(assert (= (and b!1387443 (not res!928382)) b!1387445))

(declare-fun m!1273073 () Bool)

(assert (=> b!1387448 m!1273073))

(assert (=> b!1387444 m!1272793))

(declare-fun m!1273075 () Bool)

(assert (=> b!1387444 m!1273075))

(assert (=> b!1387444 m!1273075))

(assert (=> b!1387444 m!1272599))

(declare-fun m!1273077 () Bool)

(assert (=> b!1387444 m!1273077))

(assert (=> d!149527 m!1272793))

(declare-fun m!1273079 () Bool)

(assert (=> d!149527 m!1273079))

(assert (=> d!149527 m!1272583))

(assert (=> b!1387445 m!1273073))

(assert (=> b!1387443 m!1273073))

(assert (=> d!149415 d!149527))

(declare-fun d!149531 () Bool)

(declare-fun lt!609865 () (_ BitVec 32))

(declare-fun lt!609864 () (_ BitVec 32))

(assert (=> d!149531 (= lt!609865 (bvmul (bvxor lt!609864 (bvlshr lt!609864 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!149531 (= lt!609864 ((_ extract 31 0) (bvand (bvxor (select (store (arr!45812 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (bvlshr (select (store (arr!45812 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!149531 (and (bvsge mask!2987 #b00000000000000000000000000000000) (let ((res!928377 (let ((h!33727 ((_ extract 31 0) (bvand (bvxor (select (store (arr!45812 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (bvlshr (select (store (arr!45812 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!124697 (bvmul (bvxor h!33727 (bvlshr h!33727 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!124697 (bvlshr x!124697 #b00000000000000000000000000001101)) mask!2987))))) (and (bvslt res!928377 (bvadd mask!2987 #b00000000000000000000000000000001)) (bvsge res!928377 #b00000000000000000000000000000000))))))

(assert (=> d!149531 (= (toIndex!0 (select (store (arr!45812 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) mask!2987) (bvand (bvxor lt!609865 (bvlshr lt!609865 #b00000000000000000000000000001101)) mask!2987))))

(assert (=> d!149415 d!149531))

(assert (=> d!149415 d!149393))

(assert (=> b!1387129 d!149485))

(assert (=> b!1387292 d!149485))

(check-sat (not b!1387433) (not b!1387404) (not b!1387331) (not d!149501) (not b!1387361) (not d!149505) (not bm!66577) (not b!1387359) (not bm!66579) (not d!149469) (not b!1387325) (not d!149473) (not d!149491) (not b!1387435) (not b!1387394) (not b!1387392) (not d!149479) (not b!1387360) (not bm!66580) (not b!1387378) (not b!1387366) (not b!1387323) (not d!149523) (not d!149513) (not d!149509) (not b!1387353) (not d!149481) (not b!1387396) (not d!149517) (not bm!66582) (not bm!66581) (not d!149493) (not bm!66578) (not d!149495) (not b!1387390) (not b!1387368) (not b!1387351) (not b!1387349) (not b!1387364) (not b!1387376) (not b!1387384) (not d!149527) (not d!149489) (not b!1387402) (not b!1387427) (not b!1387374) (not b!1387444) (not d!149499))
(check-sat)
