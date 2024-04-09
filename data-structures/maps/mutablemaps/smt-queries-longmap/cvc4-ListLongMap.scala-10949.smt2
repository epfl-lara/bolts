; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128120 () Bool)

(assert start!128120)

(declare-fun b!1504304 () Bool)

(declare-fun res!1025167 () Bool)

(declare-fun e!840884 () Bool)

(assert (=> b!1504304 (=> (not res!1025167) (not e!840884))))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(declare-datatypes ((array!100309 0))(
  ( (array!100310 (arr!48405 (Array (_ BitVec 32) (_ BitVec 64))) (size!48956 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100309)

(assert (=> b!1504304 (= res!1025167 (not (= (select (arr!48405 a!2850) index!625) (select (arr!48405 a!2850) j!87))))))

(declare-fun lt!653629 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun b!1504305 () Bool)

(assert (=> b!1504305 (= e!840884 (and (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110) (or (bvslt lt!653629 #b00000000000000000000000000000000) (bvsge lt!653629 (size!48956 a!2850)))))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1504305 (= lt!653629 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1504306 () Bool)

(declare-fun res!1025171 () Bool)

(assert (=> b!1504306 (=> (not res!1025171) (not e!840884))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100309 (_ BitVec 32)) Bool)

(assert (=> b!1504306 (= res!1025171 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun res!1025166 () Bool)

(assert (=> start!128120 (=> (not res!1025166) (not e!840884))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128120 (= res!1025166 (validMask!0 mask!2661))))

(assert (=> start!128120 e!840884))

(assert (=> start!128120 true))

(declare-fun array_inv!37350 (array!100309) Bool)

(assert (=> start!128120 (array_inv!37350 a!2850)))

(declare-fun b!1504307 () Bool)

(declare-fun res!1025172 () Bool)

(assert (=> b!1504307 (=> (not res!1025172) (not e!840884))))

(declare-fun i!996 () (_ BitVec 32))

(assert (=> b!1504307 (= res!1025172 (and (= (size!48956 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48956 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48956 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1504308 () Bool)

(declare-fun res!1025169 () Bool)

(assert (=> b!1504308 (=> (not res!1025169) (not e!840884))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1504308 (= res!1025169 (validKeyInArray!0 (select (arr!48405 a!2850) j!87)))))

(declare-fun b!1504309 () Bool)

(declare-fun res!1025164 () Bool)

(assert (=> b!1504309 (=> (not res!1025164) (not e!840884))))

(declare-datatypes ((List!35077 0))(
  ( (Nil!35074) (Cons!35073 (h!36471 (_ BitVec 64)) (t!49778 List!35077)) )
))
(declare-fun arrayNoDuplicates!0 (array!100309 (_ BitVec 32) List!35077) Bool)

(assert (=> b!1504309 (= res!1025164 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35074))))

(declare-fun b!1504310 () Bool)

(declare-fun res!1025165 () Bool)

(assert (=> b!1504310 (=> (not res!1025165) (not e!840884))))

(assert (=> b!1504310 (= res!1025165 (validKeyInArray!0 (select (arr!48405 a!2850) i!996)))))

(declare-fun b!1504311 () Bool)

(declare-fun res!1025170 () Bool)

(assert (=> b!1504311 (=> (not res!1025170) (not e!840884))))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12622 0))(
  ( (MissingZero!12622 (index!52879 (_ BitVec 32))) (Found!12622 (index!52880 (_ BitVec 32))) (Intermediate!12622 (undefined!13434 Bool) (index!52881 (_ BitVec 32)) (x!134569 (_ BitVec 32))) (Undefined!12622) (MissingVacant!12622 (index!52882 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100309 (_ BitVec 32)) SeekEntryResult!12622)

(assert (=> b!1504311 (= res!1025170 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48405 a!2850) j!87) a!2850 mask!2661) (Found!12622 j!87)))))

(declare-fun b!1504312 () Bool)

(declare-fun res!1025168 () Bool)

(assert (=> b!1504312 (=> (not res!1025168) (not e!840884))))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1504312 (= res!1025168 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48956 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48956 a!2850)) (= (select (arr!48405 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48405 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48956 a!2850))))))

(assert (= (and start!128120 res!1025166) b!1504307))

(assert (= (and b!1504307 res!1025172) b!1504310))

(assert (= (and b!1504310 res!1025165) b!1504308))

(assert (= (and b!1504308 res!1025169) b!1504306))

(assert (= (and b!1504306 res!1025171) b!1504309))

(assert (= (and b!1504309 res!1025164) b!1504312))

(assert (= (and b!1504312 res!1025168) b!1504311))

(assert (= (and b!1504311 res!1025170) b!1504304))

(assert (= (and b!1504304 res!1025167) b!1504305))

(declare-fun m!1387577 () Bool)

(assert (=> b!1504308 m!1387577))

(assert (=> b!1504308 m!1387577))

(declare-fun m!1387579 () Bool)

(assert (=> b!1504308 m!1387579))

(declare-fun m!1387581 () Bool)

(assert (=> start!128120 m!1387581))

(declare-fun m!1387583 () Bool)

(assert (=> start!128120 m!1387583))

(declare-fun m!1387585 () Bool)

(assert (=> b!1504304 m!1387585))

(assert (=> b!1504304 m!1387577))

(declare-fun m!1387587 () Bool)

(assert (=> b!1504309 m!1387587))

(declare-fun m!1387589 () Bool)

(assert (=> b!1504305 m!1387589))

(assert (=> b!1504311 m!1387577))

(assert (=> b!1504311 m!1387577))

(declare-fun m!1387591 () Bool)

(assert (=> b!1504311 m!1387591))

(declare-fun m!1387593 () Bool)

(assert (=> b!1504306 m!1387593))

(declare-fun m!1387595 () Bool)

(assert (=> b!1504312 m!1387595))

(declare-fun m!1387597 () Bool)

(assert (=> b!1504312 m!1387597))

(declare-fun m!1387599 () Bool)

(assert (=> b!1504312 m!1387599))

(declare-fun m!1387601 () Bool)

(assert (=> b!1504310 m!1387601))

(assert (=> b!1504310 m!1387601))

(declare-fun m!1387603 () Bool)

(assert (=> b!1504310 m!1387603))

(push 1)

(assert (not b!1504311))

(assert (not b!1504308))

(assert (not start!128120))

(assert (not b!1504310))

(assert (not b!1504306))

(assert (not b!1504309))

(assert (not b!1504305))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!157805 () Bool)

(assert (=> d!157805 (= (validMask!0 mask!2661) (and (or (= mask!2661 #b00000000000000000000000000000111) (= mask!2661 #b00000000000000000000000000001111) (= mask!2661 #b00000000000000000000000000011111) (= mask!2661 #b00000000000000000000000000111111) (= mask!2661 #b00000000000000000000000001111111) (= mask!2661 #b00000000000000000000000011111111) (= mask!2661 #b00000000000000000000000111111111) (= mask!2661 #b00000000000000000000001111111111) (= mask!2661 #b00000000000000000000011111111111) (= mask!2661 #b00000000000000000000111111111111) (= mask!2661 #b00000000000000000001111111111111) (= mask!2661 #b00000000000000000011111111111111) (= mask!2661 #b00000000000000000111111111111111) (= mask!2661 #b00000000000000001111111111111111) (= mask!2661 #b00000000000000011111111111111111) (= mask!2661 #b00000000000000111111111111111111) (= mask!2661 #b00000000000001111111111111111111) (= mask!2661 #b00000000000011111111111111111111) (= mask!2661 #b00000000000111111111111111111111) (= mask!2661 #b00000000001111111111111111111111) (= mask!2661 #b00000000011111111111111111111111) (= mask!2661 #b00000000111111111111111111111111) (= mask!2661 #b00000001111111111111111111111111) (= mask!2661 #b00000011111111111111111111111111) (= mask!2661 #b00000111111111111111111111111111) (= mask!2661 #b00001111111111111111111111111111) (= mask!2661 #b00011111111111111111111111111111) (= mask!2661 #b00111111111111111111111111111111)) (bvsle mask!2661 #b00111111111111111111111111111111)))))

(assert (=> start!128120 d!157805))

(declare-fun d!157811 () Bool)

(assert (=> d!157811 (= (array_inv!37350 a!2850) (bvsge (size!48956 a!2850) #b00000000000000000000000000000000))))

(assert (=> start!128120 d!157811))

(declare-fun b!1504371 () Bool)

(declare-fun e!840929 () Bool)

(declare-fun call!68130 () Bool)

(assert (=> b!1504371 (= e!840929 call!68130)))

(declare-fun d!157815 () Bool)

(declare-fun res!1025198 () Bool)

(declare-fun e!840927 () Bool)

(assert (=> d!157815 (=> res!1025198 e!840927)))

(assert (=> d!157815 (= res!1025198 (bvsge #b00000000000000000000000000000000 (size!48956 a!2850)))))

(assert (=> d!157815 (= (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35074) e!840927)))

(declare-fun b!1504372 () Bool)

(declare-fun e!840926 () Bool)

(assert (=> b!1504372 (= e!840926 e!840929)))

(declare-fun c!139124 () Bool)

(assert (=> b!1504372 (= c!139124 (validKeyInArray!0 (select (arr!48405 a!2850) #b00000000000000000000000000000000)))))

(declare-fun bm!68127 () Bool)

(assert (=> bm!68127 (= call!68130 (arrayNoDuplicates!0 a!2850 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!139124 (Cons!35073 (select (arr!48405 a!2850) #b00000000000000000000000000000000) Nil!35074) Nil!35074)))))

(declare-fun b!1504373 () Bool)

(assert (=> b!1504373 (= e!840927 e!840926)))

(declare-fun res!1025197 () Bool)

(assert (=> b!1504373 (=> (not res!1025197) (not e!840926))))

(declare-fun e!840928 () Bool)

(assert (=> b!1504373 (= res!1025197 (not e!840928))))

(declare-fun res!1025199 () Bool)

(assert (=> b!1504373 (=> (not res!1025199) (not e!840928))))

(assert (=> b!1504373 (= res!1025199 (validKeyInArray!0 (select (arr!48405 a!2850) #b00000000000000000000000000000000)))))

(declare-fun b!1504374 () Bool)

(assert (=> b!1504374 (= e!840929 call!68130)))

(declare-fun b!1504375 () Bool)

(declare-fun contains!9959 (List!35077 (_ BitVec 64)) Bool)

(assert (=> b!1504375 (= e!840928 (contains!9959 Nil!35074 (select (arr!48405 a!2850) #b00000000000000000000000000000000)))))

(assert (= (and d!157815 (not res!1025198)) b!1504373))

(assert (= (and b!1504373 res!1025199) b!1504375))

(assert (= (and b!1504373 res!1025197) b!1504372))

(assert (= (and b!1504372 c!139124) b!1504371))

(assert (= (and b!1504372 (not c!139124)) b!1504374))

(assert (= (or b!1504371 b!1504374) bm!68127))

(declare-fun m!1387629 () Bool)

(assert (=> b!1504372 m!1387629))

(assert (=> b!1504372 m!1387629))

(declare-fun m!1387631 () Bool)

(assert (=> b!1504372 m!1387631))

(assert (=> bm!68127 m!1387629))

(declare-fun m!1387633 () Bool)

(assert (=> bm!68127 m!1387633))

(assert (=> b!1504373 m!1387629))

(assert (=> b!1504373 m!1387629))

(assert (=> b!1504373 m!1387631))

(assert (=> b!1504375 m!1387629))

(assert (=> b!1504375 m!1387629))

(declare-fun m!1387635 () Bool)

(assert (=> b!1504375 m!1387635))

(assert (=> b!1504309 d!157815))

(declare-fun d!157819 () Bool)

(assert (=> d!157819 (= (validKeyInArray!0 (select (arr!48405 a!2850) j!87)) (and (not (= (select (arr!48405 a!2850) j!87) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48405 a!2850) j!87) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1504308 d!157819))

(declare-fun d!157821 () Bool)

(declare-fun lt!653647 () (_ BitVec 32))

(assert (=> d!157821 (and (bvsge lt!653647 #b00000000000000000000000000000000) (bvslt lt!653647 (bvadd mask!2661 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!157821 (= lt!653647 (choose!52 index!625 x!647 mask!2661))))

(assert (=> d!157821 (validMask!0 mask!2661)))

(assert (=> d!157821 (= (nextIndex!0 index!625 x!647 mask!2661) lt!653647)))

(declare-fun bs!43191 () Bool)

(assert (= bs!43191 d!157821))

(declare-fun m!1387637 () Bool)

(assert (=> bs!43191 m!1387637))

(assert (=> bs!43191 m!1387581))

(assert (=> b!1504305 d!157821))

(declare-fun d!157823 () Bool)

(assert (=> d!157823 (= (validKeyInArray!0 (select (arr!48405 a!2850) i!996)) (and (not (= (select (arr!48405 a!2850) i!996) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48405 a!2850) i!996) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1504310 d!157823))

(declare-fun b!1504396 () Bool)

(declare-fun e!840946 () Bool)

(declare-fun e!840947 () Bool)

(assert (=> b!1504396 (= e!840946 e!840947)))

(declare-fun c!139130 () Bool)

(assert (=> b!1504396 (= c!139130 (validKeyInArray!0 (select (arr!48405 a!2850) #b00000000000000000000000000000000)))))

(declare-fun d!157825 () Bool)

(declare-fun res!1025211 () Bool)

(assert (=> d!157825 (=> res!1025211 e!840946)))

(assert (=> d!157825 (= res!1025211 (bvsge #b00000000000000000000000000000000 (size!48956 a!2850)))))

(assert (=> d!157825 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661) e!840946)))

(declare-fun b!1504397 () Bool)

(declare-fun call!68136 () Bool)

(assert (=> b!1504397 (= e!840947 call!68136)))

(declare-fun b!1504398 () Bool)

(declare-fun e!840945 () Bool)

(assert (=> b!1504398 (= e!840947 e!840945)))

(declare-fun lt!653659 () (_ BitVec 64))

(assert (=> b!1504398 (= lt!653659 (select (arr!48405 a!2850) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!50212 0))(
  ( (Unit!50213) )
))
(declare-fun lt!653657 () Unit!50212)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!100309 (_ BitVec 64) (_ BitVec 32)) Unit!50212)

(assert (=> b!1504398 (= lt!653657 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2850 lt!653659 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!100309 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1504398 (arrayContainsKey!0 a!2850 lt!653659 #b00000000000000000000000000000000)))

(declare-fun lt!653658 () Unit!50212)

(assert (=> b!1504398 (= lt!653658 lt!653657)))

(declare-fun res!1025210 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100309 (_ BitVec 32)) SeekEntryResult!12622)

(assert (=> b!1504398 (= res!1025210 (= (seekEntryOrOpen!0 (select (arr!48405 a!2850) #b00000000000000000000000000000000) a!2850 mask!2661) (Found!12622 #b00000000000000000000000000000000)))))

(assert (=> b!1504398 (=> (not res!1025210) (not e!840945))))

(declare-fun bm!68133 () Bool)

(assert (=> bm!68133 (= call!68136 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2850 mask!2661))))

(declare-fun b!1504399 () Bool)

(assert (=> b!1504399 (= e!840945 call!68136)))

(assert (= (and d!157825 (not res!1025211)) b!1504396))

(assert (= (and b!1504396 c!139130) b!1504398))

(assert (= (and b!1504396 (not c!139130)) b!1504397))

(assert (= (and b!1504398 res!1025210) b!1504399))

(assert (= (or b!1504399 b!1504397) bm!68133))

(assert (=> b!1504396 m!1387629))

(assert (=> b!1504396 m!1387629))

(assert (=> b!1504396 m!1387631))

(assert (=> b!1504398 m!1387629))

(declare-fun m!1387647 () Bool)

(assert (=> b!1504398 m!1387647))

(declare-fun m!1387649 () Bool)

(assert (=> b!1504398 m!1387649))

(assert (=> b!1504398 m!1387629))

(declare-fun m!1387651 () Bool)

(assert (=> b!1504398 m!1387651))

(declare-fun m!1387653 () Bool)

(assert (=> bm!68133 m!1387653))

(assert (=> b!1504306 d!157825))

(declare-fun b!1504424 () Bool)

(declare-fun c!139142 () Bool)

(declare-fun lt!653676 () (_ BitVec 64))

(assert (=> b!1504424 (= c!139142 (= lt!653676 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!840964 () SeekEntryResult!12622)

(declare-fun e!840963 () SeekEntryResult!12622)

(assert (=> b!1504424 (= e!840964 e!840963)))

(declare-fun b!1504425 () Bool)

(declare-fun e!840965 () SeekEntryResult!12622)

(assert (=> b!1504425 (= e!840965 Undefined!12622)))

(declare-fun b!1504426 () Bool)

(assert (=> b!1504426 (= e!840965 e!840964)))

(declare-fun c!139141 () Bool)

(assert (=> b!1504426 (= c!139141 (= lt!653676 (select (arr!48405 a!2850) j!87)))))

(declare-fun b!1504428 () Bool)

(assert (=> b!1504428 (= e!840963 (seekKeyOrZeroReturnVacant!0 (bvadd x!647 #b00000000000000000000000000000001) (nextIndex!0 index!625 x!647 mask!2661) vacantBefore!10 (select (arr!48405 a!2850) j!87) a!2850 mask!2661))))

(declare-fun b!1504429 () Bool)

(assert (=> b!1504429 (= e!840963 (MissingVacant!12622 vacantBefore!10))))

(declare-fun lt!653677 () SeekEntryResult!12622)

(declare-fun d!157833 () Bool)

(assert (=> d!157833 (and (or (is-Undefined!12622 lt!653677) (not (is-Found!12622 lt!653677)) (and (bvsge (index!52880 lt!653677) #b00000000000000000000000000000000) (bvslt (index!52880 lt!653677) (size!48956 a!2850)))) (or (is-Undefined!12622 lt!653677) (is-Found!12622 lt!653677) (not (is-MissingVacant!12622 lt!653677)) (not (= (index!52882 lt!653677) vacantBefore!10)) (and (bvsge (index!52882 lt!653677) #b00000000000000000000000000000000) (bvslt (index!52882 lt!653677) (size!48956 a!2850)))) (or (is-Undefined!12622 lt!653677) (ite (is-Found!12622 lt!653677) (= (select (arr!48405 a!2850) (index!52880 lt!653677)) (select (arr!48405 a!2850) j!87)) (and (is-MissingVacant!12622 lt!653677) (= (index!52882 lt!653677) vacantBefore!10) (= (select (arr!48405 a!2850) (index!52882 lt!653677)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!157833 (= lt!653677 e!840965)))

(declare-fun c!139140 () Bool)

(assert (=> d!157833 (= c!139140 (bvsge x!647 #b01111111111111111111111111111110))))

(assert (=> d!157833 (= lt!653676 (select (arr!48405 a!2850) index!625))))

(assert (=> d!157833 (validMask!0 mask!2661)))

(assert (=> d!157833 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48405 a!2850) j!87) a!2850 mask!2661) lt!653677)))

(declare-fun b!1504427 () Bool)

(assert (=> b!1504427 (= e!840964 (Found!12622 index!625))))

(assert (= (and d!157833 c!139140) b!1504425))

(assert (= (and d!157833 (not c!139140)) b!1504426))

(assert (= (and b!1504426 c!139141) b!1504427))

(assert (= (and b!1504426 (not c!139141)) b!1504424))

(assert (= (and b!1504424 c!139142) b!1504429))

(assert (= (and b!1504424 (not c!139142)) b!1504428))

(assert (=> b!1504428 m!1387589))

(assert (=> b!1504428 m!1387589))

(assert (=> b!1504428 m!1387577))

(declare-fun m!1387665 () Bool)

(assert (=> b!1504428 m!1387665))

(declare-fun m!1387667 () Bool)

(assert (=> d!157833 m!1387667))

(declare-fun m!1387669 () Bool)

(assert (=> d!157833 m!1387669))

(assert (=> d!157833 m!1387585))

(assert (=> d!157833 m!1387581))

(assert (=> b!1504311 d!157833))

(push 1)

(assert (not b!1504373))

(assert (not b!1504396))

(assert (not d!157833))

(assert (not b!1504375))

(assert (not bm!68127))

(assert (not b!1504398))

(assert (not d!157821))

(assert (not b!1504428))

(assert (not b!1504372))

(assert (not bm!68133))

(check-sat)

(pop 1)

(push 1)

(check-sat)

