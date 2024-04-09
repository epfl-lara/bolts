; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127870 () Bool)

(assert start!127870)

(declare-fun b!1502106 () Bool)

(declare-fun res!1023254 () Bool)

(declare-fun e!840187 () Bool)

(assert (=> b!1502106 (=> (not res!1023254) (not e!840187))))

(declare-datatypes ((array!100164 0))(
  ( (array!100165 (arr!48337 (Array (_ BitVec 32) (_ BitVec 64))) (size!48888 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100164)

(declare-datatypes ((List!35009 0))(
  ( (Nil!35006) (Cons!35005 (h!36403 (_ BitVec 64)) (t!49710 List!35009)) )
))
(declare-fun arrayNoDuplicates!0 (array!100164 (_ BitVec 32) List!35009) Bool)

(assert (=> b!1502106 (= res!1023254 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35006))))

(declare-fun b!1502107 () Bool)

(declare-fun res!1023257 () Bool)

(assert (=> b!1502107 (=> (not res!1023257) (not e!840187))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100164 (_ BitVec 32)) Bool)

(assert (=> b!1502107 (= res!1023257 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun b!1502108 () Bool)

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1502108 (= e!840187 (and (= (select (arr!48337 a!2850) index!625) (select (arr!48337 a!2850) j!87)) (not (= j!87 index!625))))))

(declare-fun b!1502109 () Bool)

(declare-fun res!1023255 () Bool)

(assert (=> b!1502109 (=> (not res!1023255) (not e!840187))))

(declare-fun i!996 () (_ BitVec 32))

(assert (=> b!1502109 (= res!1023255 (and (= (size!48888 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48888 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48888 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1502110 () Bool)

(declare-fun res!1023261 () Bool)

(assert (=> b!1502110 (=> (not res!1023261) (not e!840187))))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1502110 (= res!1023261 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48888 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48888 a!2850)) (= (select (arr!48337 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48337 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48888 a!2850))))))

(declare-fun res!1023260 () Bool)

(assert (=> start!127870 (=> (not res!1023260) (not e!840187))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127870 (= res!1023260 (validMask!0 mask!2661))))

(assert (=> start!127870 e!840187))

(assert (=> start!127870 true))

(declare-fun array_inv!37282 (array!100164) Bool)

(assert (=> start!127870 (array_inv!37282 a!2850)))

(declare-fun b!1502111 () Bool)

(declare-fun res!1023259 () Bool)

(assert (=> b!1502111 (=> (not res!1023259) (not e!840187))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1502111 (= res!1023259 (validKeyInArray!0 (select (arr!48337 a!2850) i!996)))))

(declare-fun b!1502112 () Bool)

(declare-fun res!1023258 () Bool)

(assert (=> b!1502112 (=> (not res!1023258) (not e!840187))))

(assert (=> b!1502112 (= res!1023258 (validKeyInArray!0 (select (arr!48337 a!2850) j!87)))))

(declare-fun b!1502113 () Bool)

(declare-fun res!1023256 () Bool)

(assert (=> b!1502113 (=> (not res!1023256) (not e!840187))))

(declare-datatypes ((SeekEntryResult!12554 0))(
  ( (MissingZero!12554 (index!52607 (_ BitVec 32))) (Found!12554 (index!52608 (_ BitVec 32))) (Intermediate!12554 (undefined!13366 Bool) (index!52609 (_ BitVec 32)) (x!134313 (_ BitVec 32))) (Undefined!12554) (MissingVacant!12554 (index!52610 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100164 (_ BitVec 32)) SeekEntryResult!12554)

(assert (=> b!1502113 (= res!1023256 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48337 a!2850) j!87) a!2850 mask!2661) (Found!12554 j!87)))))

(assert (= (and start!127870 res!1023260) b!1502109))

(assert (= (and b!1502109 res!1023255) b!1502111))

(assert (= (and b!1502111 res!1023259) b!1502112))

(assert (= (and b!1502112 res!1023258) b!1502107))

(assert (= (and b!1502107 res!1023257) b!1502106))

(assert (= (and b!1502106 res!1023254) b!1502110))

(assert (= (and b!1502110 res!1023261) b!1502113))

(assert (= (and b!1502113 res!1023256) b!1502108))

(declare-fun m!1385469 () Bool)

(assert (=> start!127870 m!1385469))

(declare-fun m!1385471 () Bool)

(assert (=> start!127870 m!1385471))

(declare-fun m!1385473 () Bool)

(assert (=> b!1502111 m!1385473))

(assert (=> b!1502111 m!1385473))

(declare-fun m!1385475 () Bool)

(assert (=> b!1502111 m!1385475))

(declare-fun m!1385477 () Bool)

(assert (=> b!1502110 m!1385477))

(declare-fun m!1385479 () Bool)

(assert (=> b!1502110 m!1385479))

(declare-fun m!1385481 () Bool)

(assert (=> b!1502110 m!1385481))

(declare-fun m!1385483 () Bool)

(assert (=> b!1502113 m!1385483))

(assert (=> b!1502113 m!1385483))

(declare-fun m!1385485 () Bool)

(assert (=> b!1502113 m!1385485))

(assert (=> b!1502112 m!1385483))

(assert (=> b!1502112 m!1385483))

(declare-fun m!1385487 () Bool)

(assert (=> b!1502112 m!1385487))

(declare-fun m!1385489 () Bool)

(assert (=> b!1502108 m!1385489))

(assert (=> b!1502108 m!1385483))

(declare-fun m!1385491 () Bool)

(assert (=> b!1502107 m!1385491))

(declare-fun m!1385493 () Bool)

(assert (=> b!1502106 m!1385493))

(push 1)

(assert (not b!1502111))

(assert (not b!1502107))

(assert (not start!127870))

(assert (not b!1502106))

(assert (not b!1502113))

(assert (not b!1502112))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1502201 () Bool)

(declare-fun e!840229 () SeekEntryResult!12554)

(declare-fun e!840228 () SeekEntryResult!12554)

(assert (=> b!1502201 (= e!840229 e!840228)))

(declare-fun c!138976 () Bool)

(declare-fun lt!653296 () (_ BitVec 64))

(assert (=> b!1502201 (= c!138976 (= lt!653296 (select (arr!48337 a!2850) j!87)))))

(declare-fun b!1502202 () Bool)

(assert (=> b!1502202 (= e!840229 Undefined!12554)))

(declare-fun e!840230 () SeekEntryResult!12554)

(declare-fun b!1502203 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1502203 (= e!840230 (seekKeyOrZeroReturnVacant!0 (bvadd x!647 #b00000000000000000000000000000001) (nextIndex!0 index!625 x!647 mask!2661) vacantBefore!10 (select (arr!48337 a!2850) j!87) a!2850 mask!2661))))

(declare-fun b!1502204 () Bool)

(declare-fun c!138975 () Bool)

(assert (=> b!1502204 (= c!138975 (= lt!653296 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1502204 (= e!840228 e!840230)))

(declare-fun b!1502205 () Bool)

(assert (=> b!1502205 (= e!840230 (MissingVacant!12554 vacantBefore!10))))

(declare-fun lt!653295 () SeekEntryResult!12554)

(declare-fun d!157619 () Bool)

(assert (=> d!157619 (and (or (is-Undefined!12554 lt!653295) (not (is-Found!12554 lt!653295)) (and (bvsge (index!52608 lt!653295) #b00000000000000000000000000000000) (bvslt (index!52608 lt!653295) (size!48888 a!2850)))) (or (is-Undefined!12554 lt!653295) (is-Found!12554 lt!653295) (not (is-MissingVacant!12554 lt!653295)) (not (= (index!52610 lt!653295) vacantBefore!10)) (and (bvsge (index!52610 lt!653295) #b00000000000000000000000000000000) (bvslt (index!52610 lt!653295) (size!48888 a!2850)))) (or (is-Undefined!12554 lt!653295) (ite (is-Found!12554 lt!653295) (= (select (arr!48337 a!2850) (index!52608 lt!653295)) (select (arr!48337 a!2850) j!87)) (and (is-MissingVacant!12554 lt!653295) (= (index!52610 lt!653295) vacantBefore!10) (= (select (arr!48337 a!2850) (index!52610 lt!653295)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!157619 (= lt!653295 e!840229)))

(declare-fun c!138977 () Bool)

(assert (=> d!157619 (= c!138977 (bvsge x!647 #b01111111111111111111111111111110))))

(assert (=> d!157619 (= lt!653296 (select (arr!48337 a!2850) index!625))))

(assert (=> d!157619 (validMask!0 mask!2661)))

(assert (=> d!157619 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48337 a!2850) j!87) a!2850 mask!2661) lt!653295)))

(declare-fun b!1502206 () Bool)

(assert (=> b!1502206 (= e!840228 (Found!12554 index!625))))

(assert (= (and d!157619 c!138977) b!1502202))

(assert (= (and d!157619 (not c!138977)) b!1502201))

(assert (= (and b!1502201 c!138976) b!1502206))

(assert (= (and b!1502201 (not c!138976)) b!1502204))

(assert (= (and b!1502204 c!138975) b!1502205))

(assert (= (and b!1502204 (not c!138975)) b!1502203))

(declare-fun m!1385563 () Bool)

(assert (=> b!1502203 m!1385563))

(assert (=> b!1502203 m!1385563))

(assert (=> b!1502203 m!1385483))

(declare-fun m!1385565 () Bool)

(assert (=> b!1502203 m!1385565))

(declare-fun m!1385567 () Bool)

(assert (=> d!157619 m!1385567))

(declare-fun m!1385569 () Bool)

(assert (=> d!157619 m!1385569))

(assert (=> d!157619 m!1385489))

(assert (=> d!157619 m!1385469))

(assert (=> b!1502113 d!157619))

(declare-fun d!157633 () Bool)

(assert (=> d!157633 (= (validMask!0 mask!2661) (and (or (= mask!2661 #b00000000000000000000000000000111) (= mask!2661 #b00000000000000000000000000001111) (= mask!2661 #b00000000000000000000000000011111) (= mask!2661 #b00000000000000000000000000111111) (= mask!2661 #b00000000000000000000000001111111) (= mask!2661 #b00000000000000000000000011111111) (= mask!2661 #b00000000000000000000000111111111) (= mask!2661 #b00000000000000000000001111111111) (= mask!2661 #b00000000000000000000011111111111) (= mask!2661 #b00000000000000000000111111111111) (= mask!2661 #b00000000000000000001111111111111) (= mask!2661 #b00000000000000000011111111111111) (= mask!2661 #b00000000000000000111111111111111) (= mask!2661 #b00000000000000001111111111111111) (= mask!2661 #b00000000000000011111111111111111) (= mask!2661 #b00000000000000111111111111111111) (= mask!2661 #b00000000000001111111111111111111) (= mask!2661 #b00000000000011111111111111111111) (= mask!2661 #b00000000000111111111111111111111) (= mask!2661 #b00000000001111111111111111111111) (= mask!2661 #b00000000011111111111111111111111) (= mask!2661 #b00000000111111111111111111111111) (= mask!2661 #b00000001111111111111111111111111) (= mask!2661 #b00000011111111111111111111111111) (= mask!2661 #b00000111111111111111111111111111) (= mask!2661 #b00001111111111111111111111111111) (= mask!2661 #b00011111111111111111111111111111) (= mask!2661 #b00111111111111111111111111111111)) (bvsle mask!2661 #b00111111111111111111111111111111)))))

(assert (=> start!127870 d!157633))

(declare-fun d!157641 () Bool)

(assert (=> d!157641 (= (array_inv!37282 a!2850) (bvsge (size!48888 a!2850) #b00000000000000000000000000000000))))

(assert (=> start!127870 d!157641))

(declare-fun b!1502260 () Bool)

(declare-fun e!840268 () Bool)

(declare-fun call!68082 () Bool)

(assert (=> b!1502260 (= e!840268 call!68082)))

(declare-fun b!1502261 () Bool)

(declare-fun e!840267 () Bool)

(assert (=> b!1502261 (= e!840267 call!68082)))

(declare-fun d!157643 () Bool)

(declare-fun res!1023345 () Bool)

(declare-fun e!840269 () Bool)

(assert (=> d!157643 (=> res!1023345 e!840269)))

(assert (=> d!157643 (= res!1023345 (bvsge #b00000000000000000000000000000000 (size!48888 a!2850)))))

(assert (=> d!157643 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661) e!840269)))

(declare-fun bm!68079 () Bool)

(assert (=> bm!68079 (= call!68082 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2850 mask!2661))))

(declare-fun b!1502262 () Bool)

(assert (=> b!1502262 (= e!840267 e!840268)))

(declare-fun lt!653319 () (_ BitVec 64))

(assert (=> b!1502262 (= lt!653319 (select (arr!48337 a!2850) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!50200 0))(
  ( (Unit!50201) )
))
(declare-fun lt!653320 () Unit!50200)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!100164 (_ BitVec 64) (_ BitVec 32)) Unit!50200)

(assert (=> b!1502262 (= lt!653320 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2850 lt!653319 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!100164 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1502262 (arrayContainsKey!0 a!2850 lt!653319 #b00000000000000000000000000000000)))

(declare-fun lt!653318 () Unit!50200)

(assert (=> b!1502262 (= lt!653318 lt!653320)))

(declare-fun res!1023344 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100164 (_ BitVec 32)) SeekEntryResult!12554)

(assert (=> b!1502262 (= res!1023344 (= (seekEntryOrOpen!0 (select (arr!48337 a!2850) #b00000000000000000000000000000000) a!2850 mask!2661) (Found!12554 #b00000000000000000000000000000000)))))

(assert (=> b!1502262 (=> (not res!1023344) (not e!840268))))

(declare-fun b!1502263 () Bool)

(assert (=> b!1502263 (= e!840269 e!840267)))

(declare-fun c!138995 () Bool)

(assert (=> b!1502263 (= c!138995 (validKeyInArray!0 (select (arr!48337 a!2850) #b00000000000000000000000000000000)))))

